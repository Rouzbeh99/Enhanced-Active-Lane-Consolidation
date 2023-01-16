; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/select_atoms.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/select_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"setpoint: %s: no atoms selected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"select_atoms: atom-expr too complicated\0A\00", align 1
@aexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [42 x i8] c"atom_in_aexpr: atom-expr too complicated\0A\00", align 1
@spart = internal unnamed_addr global ptr null, align 8, !dbg !26
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal unnamed_addr global ptr null, align 8, !dbg !31
@apart = internal unnamed_addr global ptr null, align 8, !dbg !33
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !35
@expbuf = internal global %struct.regex_t zeroinitializer, align 8, !dbg !40

; Function Attrs: nounwind uwtable
define dso_local i32 @setpoint(ptr noundef %mol, ptr noundef %aexpr, ptr nocapture noundef writeonly %point) local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata ptr %mol, metadata !281, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %aexpr, metadata !282, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %point, metadata !283, metadata !DIExpression()), !dbg !293
  %call = tail call i32 @select_atoms(ptr noundef %mol, ptr noundef %aexpr), !dbg !294
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !286, metadata !DIExpression()), !dbg !293
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !295
  call void @llvm.dbg.value(metadata ptr undef, metadata !287, metadata !DIExpression()), !dbg !293
  %sp.092 = load ptr, ptr %m_strands, align 8, !dbg !297, !tbaa !298
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %sp.092, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !286, metadata !DIExpression()), !dbg !293
  %tobool.not93 = icmp eq ptr %sp.092, null, !dbg !302
  br i1 %tobool.not93, label %if.then31, label %for.body, !dbg !302

for.body:                                         ; preds = %entry, %for.inc28
  %sp.098 = phi ptr [ %sp.0, %for.inc28 ], [ %sp.092, %entry ]
  %z.097 = phi double [ %z.5, %for.inc28 ], [ 0.000000e+00, %entry ]
  %y.096 = phi double [ %y.5, %for.inc28 ], [ 0.000000e+00, %entry ]
  %x.095 = phi double [ %x.5, %for.inc28 ], [ 0.000000e+00, %entry ]
  %ta.094 = phi i32 [ %ta.5, %for.inc28 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata double %z.097, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.096, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.095, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.094, metadata !286, metadata !DIExpression()), !dbg !293
  %s_attr = getelementptr inbounds %struct.strand_t, ptr %sp.098, i64 0, i32 2, !dbg !303
  %0 = load i32, ptr %s_attr, align 4, !dbg !303, !tbaa !307
  %and = and i32 %0, 1, !dbg !310
  %tobool1.not = icmp eq i32 %and, 0, !dbg !310
  br i1 %tobool1.not, label %for.inc28, label %for.cond2.preheader, !dbg !311

for.cond2.preheader:                              ; preds = %for.body
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %sp.098, i64 0, i32 5
  %1 = load i32, ptr %s_nresidues, align 8, !tbaa !312
  call void @llvm.dbg.value(metadata double %z.097, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.096, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.095, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.094, metadata !286, metadata !DIExpression()), !dbg !293
  %cmp82 = icmp sgt i32 %1, 0, !dbg !313
  br i1 %cmp82, label %for.body3.lr.ph, label %for.inc28, !dbg !317

for.body3.lr.ph:                                  ; preds = %for.cond2.preheader
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %sp.098, i64 0, i32 7
  %2 = load ptr, ptr %s_residues, align 8, !tbaa !318
  %wide.trip.count107 = zext i32 %1 to i64, !dbg !313
  br label %for.body3, !dbg !317

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc24
  %indvars.iv104 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next105, %for.inc24 ]
  %z.187 = phi double [ %z.097, %for.body3.lr.ph ], [ %z.4, %for.inc24 ]
  %y.186 = phi double [ %y.096, %for.body3.lr.ph ], [ %y.4, %for.inc24 ]
  %x.185 = phi double [ %x.095, %for.body3.lr.ph ], [ %x.4, %for.inc24 ]
  %ta.183 = phi i32 [ %ta.094, %for.body3.lr.ph ], [ %ta.4, %for.inc24 ]
  call void @llvm.dbg.value(metadata double %z.187, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.186, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.185, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 %indvars.iv104, metadata !284, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.183, metadata !286, metadata !DIExpression()), !dbg !293
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv104, !dbg !319
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !319, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %3, metadata !288, metadata !DIExpression()), !dbg !293
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 6, !dbg !321
  %4 = load i32, ptr %r_attr, align 8, !dbg !321, !tbaa !323
  %and4 = and i32 %4, 1, !dbg !325
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !325
  br i1 %tobool5.not, label %for.inc24, label %for.cond7.preheader, !dbg !326

for.cond7.preheader:                              ; preds = %for.body3
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %r_natoms, align 8, !tbaa !327
  call void @llvm.dbg.value(metadata double %z.187, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.186, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.185, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.183, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !285, metadata !DIExpression()), !dbg !293
  %cmp873 = icmp sgt i32 %5, 0, !dbg !328
  br i1 %cmp873, label %for.body9.lr.ph, label %for.inc24, !dbg !332

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 17
  %6 = load ptr, ptr %r_atoms, align 8, !tbaa !333
  %wide.trip.count = zext i32 %5 to i64, !dbg !328
  br label %for.body9, !dbg !332

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %z.278 = phi double [ %z.187, %for.body9.lr.ph ], [ %z.3, %for.inc ]
  %y.277 = phi double [ %y.186, %for.body9.lr.ph ], [ %y.3, %for.inc ]
  %x.276 = phi double [ %x.185, %for.body9.lr.ph ], [ %x.3, %for.inc ]
  %ta.275 = phi i32 [ %ta.183, %for.body9.lr.ph ], [ %ta.3, %for.inc ]
  call void @llvm.dbg.value(metadata double %z.278, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.277, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.276, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.275, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !285, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata !DIArgList(ptr %6, i64 %indvars.iv), metadata !289, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !293
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv, i32 2, !dbg !334
  %7 = load i32, ptr %a_attr, align 8, !dbg !334, !tbaa !337
  %and12 = and i32 %7, 1, !dbg !340
  %tobool13.not = icmp eq i32 %and12, 0, !dbg !340
  br i1 %tobool13.not, label %for.inc, label %if.then14, !dbg !341

if.then14:                                        ; preds = %for.body9
  call void @llvm.dbg.value(metadata !DIArgList(ptr %6, i64 %indvars.iv), metadata !289, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !293
  %a_pos = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv, i32 17, !dbg !342
  %8 = load double, ptr %a_pos, align 8, !dbg !344, !tbaa !345
  %add = fadd double %x.276, %8, !dbg !346
  call void @llvm.dbg.value(metadata double %add, metadata !290, metadata !DIExpression()), !dbg !293
  %arrayidx17 = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv, i32 17, i64 1, !dbg !347
  %9 = load double, ptr %arrayidx17, align 8, !dbg !347, !tbaa !345
  %add18 = fadd double %y.277, %9, !dbg !348
  call void @llvm.dbg.value(metadata double %add18, metadata !291, metadata !DIExpression()), !dbg !293
  %arrayidx20 = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv, i32 17, i64 2, !dbg !349
  %10 = load double, ptr %arrayidx20, align 8, !dbg !349, !tbaa !345
  %add21 = fadd double %z.278, %10, !dbg !350
  call void @llvm.dbg.value(metadata double %add21, metadata !292, metadata !DIExpression()), !dbg !293
  %inc = add nsw i32 %ta.275, 1, !dbg !351
  call void @llvm.dbg.value(metadata i32 %inc, metadata !286, metadata !DIExpression()), !dbg !293
  br label %for.inc, !dbg !352

for.inc:                                          ; preds = %for.body9, %if.then14
  %ta.3 = phi i32 [ %inc, %if.then14 ], [ %ta.275, %for.body9 ], !dbg !297
  %x.3 = phi double [ %add, %if.then14 ], [ %x.276, %for.body9 ], !dbg !293
  %y.3 = phi double [ %add18, %if.then14 ], [ %y.277, %for.body9 ], !dbg !293
  %z.3 = phi double [ %add21, %if.then14 ], [ %z.278, %for.body9 ], !dbg !293
  call void @llvm.dbg.value(metadata double %z.3, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.3, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.3, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.3, metadata !286, metadata !DIExpression()), !dbg !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !353
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !285, metadata !DIExpression()), !dbg !293
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !328
  br i1 %exitcond.not, label %for.inc24, label %for.body9, !dbg !332, !llvm.loop !354

for.inc24:                                        ; preds = %for.inc, %for.cond7.preheader, %for.body3
  %ta.4 = phi i32 [ %ta.183, %for.body3 ], [ %ta.183, %for.cond7.preheader ], [ %ta.3, %for.inc ], !dbg !358
  %x.4 = phi double [ %x.185, %for.body3 ], [ %x.185, %for.cond7.preheader ], [ %x.3, %for.inc ], !dbg !359
  %y.4 = phi double [ %y.186, %for.body3 ], [ %y.186, %for.cond7.preheader ], [ %y.3, %for.inc ], !dbg !360
  %z.4 = phi double [ %z.187, %for.body3 ], [ %z.187, %for.cond7.preheader ], [ %z.3, %for.inc ], !dbg !361
  call void @llvm.dbg.value(metadata double %z.4, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.4, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.4, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.4, metadata !286, metadata !DIExpression()), !dbg !293
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1, !dbg !362
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next105, metadata !284, metadata !DIExpression()), !dbg !293
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107, !dbg !313
  br i1 %exitcond108.not, label %for.inc28, label %for.body3, !dbg !317, !llvm.loop !363

for.inc28:                                        ; preds = %for.inc24, %for.cond2.preheader, %for.body
  %ta.5 = phi i32 [ %ta.094, %for.body ], [ %ta.094, %for.cond2.preheader ], [ %ta.4, %for.inc24 ], !dbg !358
  %x.5 = phi double [ %x.095, %for.body ], [ %x.095, %for.cond2.preheader ], [ %x.4, %for.inc24 ], !dbg !359
  %y.5 = phi double [ %y.096, %for.body ], [ %y.096, %for.cond2.preheader ], [ %y.4, %for.inc24 ], !dbg !360
  %z.5 = phi double [ %z.097, %for.body ], [ %z.097, %for.cond2.preheader ], [ %z.4, %for.inc24 ], !dbg !361
  call void @llvm.dbg.value(metadata double %z.5, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %y.5, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata double %x.5, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %ta.5, metadata !286, metadata !DIExpression()), !dbg !293
  %s_next = getelementptr inbounds %struct.strand_t, ptr %sp.098, i64 0, i32 4, !dbg !365
  call void @llvm.dbg.value(metadata ptr undef, metadata !287, metadata !DIExpression()), !dbg !293
  %sp.0 = load ptr, ptr %s_next, align 8, !dbg !297, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !287, metadata !DIExpression()), !dbg !293
  %tobool.not = icmp eq ptr %sp.0, null, !dbg !302
  br i1 %tobool.not, label %for.end29, label %for.body, !dbg !302, !llvm.loop !366

for.end29:                                        ; preds = %for.inc28
  %cmp30 = icmp eq i32 %ta.5, 0, !dbg !368
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !370

if.then31:                                        ; preds = %entry, %for.end29
  %11 = load ptr, ptr @stderr, align 8, !dbg !371, !tbaa !298
  %call32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %aexpr) #12, !dbg !373
  br label %cleanup, !dbg !374

if.else:                                          ; preds = %for.end29
  %conv = sitofp i32 %ta.5 to double, !dbg !375
  %div = fdiv double %x.5, %conv, !dbg !377
  store double %div, ptr %point, align 8, !dbg !378, !tbaa !345
  %div35 = fdiv double %y.5, %conv, !dbg !379
  %arrayidx36 = getelementptr inbounds double, ptr %point, i64 1, !dbg !380
  store double %div35, ptr %arrayidx36, align 8, !dbg !381, !tbaa !345
  %div38 = fdiv double %z.5, %conv, !dbg !382
  %arrayidx39 = getelementptr inbounds double, ptr %point, i64 2, !dbg !383
  store double %div38, ptr %arrayidx39, align 8, !dbg !384, !tbaa !345
  br label %cleanup, !dbg !385

cleanup:                                          ; preds = %if.else, %if.then31
  %retval.0 = phi i32 [ 1, %if.then31 ], [ 0, %if.else ], !dbg !293
  ret i32 %retval.0, !dbg !386
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(ptr noundef readonly %mol, ptr noundef %aex) local_unnamed_addr #0 !dbg !387 {
entry:
  %lo.i = alloca i32, align 4
  %hi.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %mol, metadata !391, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %aex, metadata !392, metadata !DIExpression()), !dbg !396
  %cmp = icmp eq ptr %aex, null, !dbg !397
  %m_strands.i = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !396
  %sp.029.i = load ptr, ptr %m_strands.i, align 8, !dbg !396, !tbaa !298
  %tobool.not30.i = icmp eq ptr %sp.029.i, null, !dbg !396
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %mol, metadata !400, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata ptr undef, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata ptr %sp.029.i, metadata !407, metadata !DIExpression()), !dbg !409
  br i1 %tobool.not30.i, label %cleanup, label %for.body.i, !dbg !412

for.body.i:                                       ; preds = %if.then, %for.inc13.i
  %sp.031.i = phi ptr [ %sp.0.i, %for.inc13.i ], [ %sp.029.i, %if.then ]
  %s_attr.i = getelementptr inbounds %struct.strand_t, ptr %sp.031.i, i64 0, i32 2, !dbg !414
  %0 = load i32, ptr %s_attr.i, align 4, !dbg !417, !tbaa !307
  %or.i = or i32 %0, 1, !dbg !417
  store i32 %or.i, ptr %s_attr.i, align 4, !dbg !417, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !409
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, ptr %sp.031.i, i64 0, i32 5
  %1 = load i32, ptr %s_nresidues.i, align 8, !tbaa !312
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !409
  %cmp27.i = icmp sgt i32 %1, 0, !dbg !418
  br i1 %cmp27.i, label %for.body2.lr.ph.i, label %for.inc13.i, !dbg !421

for.body2.lr.ph.i:                                ; preds = %for.body.i
  %s_residues.i = getelementptr inbounds %struct.strand_t, ptr %sp.031.i, i64 0, i32 7
  %2 = load ptr, ptr %s_residues.i, align 8, !tbaa !318
  %wide.trip.count36.i = zext i32 %1 to i64, !dbg !418
  br label %for.body2.i, !dbg !421

for.body2.i:                                      ; preds = %for.inc10.i, %for.body2.lr.ph.i
  %indvars.iv33.i = phi i64 [ 0, %for.body2.lr.ph.i ], [ %indvars.iv.next34.i, %for.inc10.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv33.i, metadata !406, metadata !DIExpression()), !dbg !409
  %arrayidx.i = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv33.i, !dbg !422
  %3 = load ptr, ptr %arrayidx.i, align 8, !dbg !422, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %3, metadata !408, metadata !DIExpression()), !dbg !409
  %r_attr.i = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 6, !dbg !424
  %4 = load i32, ptr %r_attr.i, align 8, !dbg !425, !tbaa !323
  %or3.i = or i32 %4, 1, !dbg !425
  store i32 %or3.i, ptr %r_attr.i, align 8, !dbg !425, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !405, metadata !DIExpression()), !dbg !409
  %r_natoms.i = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %r_natoms.i, align 8, !tbaa !327
  call void @llvm.dbg.value(metadata i32 0, metadata !405, metadata !DIExpression()), !dbg !409
  %cmp525.i = icmp sgt i32 %5, 0, !dbg !426
  br i1 %cmp525.i, label %for.body6.lr.ph.i, label %for.inc10.i, !dbg !429

for.body6.lr.ph.i:                                ; preds = %for.body2.i
  %r_atoms.i = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 17
  %6 = load ptr, ptr %r_atoms.i, align 8, !tbaa !333
  %wide.trip.count.i = zext i32 %5 to i64, !dbg !426
  br label %for.body6.i, !dbg !429

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i, %for.body6.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !405, metadata !DIExpression()), !dbg !409
  %a_attr.i = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv.i, i32 2, !dbg !430
  %7 = load i32, ptr %a_attr.i, align 8, !dbg !431, !tbaa !337
  %or9.i = or i32 %7, 1, !dbg !431
  store i32 %or9.i, ptr %a_attr.i, align 8, !dbg !431, !tbaa !337
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !432
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !405, metadata !DIExpression()), !dbg !409
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !426
  br i1 %exitcond.not.i, label %for.inc10.i, label %for.body6.i, !dbg !429, !llvm.loop !433

for.inc10.i:                                      ; preds = %for.body6.i, %for.body2.i
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1, !dbg !435
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next34.i, metadata !406, metadata !DIExpression()), !dbg !409
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count36.i, !dbg !418
  br i1 %exitcond37.not.i, label %for.inc13.i, label %for.body2.i, !dbg !421, !llvm.loop !436

for.inc13.i:                                      ; preds = %for.inc10.i, %for.body.i
  %s_next.i = getelementptr inbounds %struct.strand_t, ptr %sp.031.i, i64 0, i32 4, !dbg !438
  call void @llvm.dbg.value(metadata ptr undef, metadata !407, metadata !DIExpression()), !dbg !409
  %sp.0.i = load ptr, ptr %s_next.i, align 8, !dbg !439, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i, metadata !407, metadata !DIExpression()), !dbg !409
  %tobool.not.i = icmp eq ptr %sp.0.i, null, !dbg !412
  br i1 %tobool.not.i, label %cleanup, label %for.body.i, !dbg !412, !llvm.loop !440

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %mol, metadata !442, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr undef, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %sp.029.i, metadata !447, metadata !DIExpression()), !dbg !449
  br i1 %tobool.not30.i, label %for.body.lr.ph, label %for.body.i45, !dbg !451

for.body.i45:                                     ; preds = %if.end, %for.inc13.i69
  %sp.031.i41 = phi ptr [ %sp.0.i67, %for.inc13.i69 ], [ %sp.029.i, %if.end ]
  %s_attr.i42 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i41, i64 0, i32 2, !dbg !453
  %8 = load i32, ptr %s_attr.i42, align 4, !dbg !456, !tbaa !307
  %and.i = and i32 %8, -129, !dbg !456
  store i32 %and.i, ptr %s_attr.i42, align 4, !dbg !456, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !446, metadata !DIExpression()), !dbg !449
  %s_nresidues.i43 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i41, i64 0, i32 5
  %9 = load i32, ptr %s_nresidues.i43, align 8, !tbaa !312
  %cmp27.i44 = icmp sgt i32 %9, 0, !dbg !457
  br i1 %cmp27.i44, label %for.body2.lr.ph.i48, label %for.inc13.i69, !dbg !460

for.body2.lr.ph.i48:                              ; preds = %for.body.i45
  %s_residues.i46 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i41, i64 0, i32 7
  %10 = load ptr, ptr %s_residues.i46, align 8, !tbaa !318
  %wide.trip.count36.i47 = zext i32 %9 to i64, !dbg !457
  br label %for.body2.i54, !dbg !460

for.body2.i54:                                    ; preds = %for.inc10.i65, %for.body2.lr.ph.i48
  %indvars.iv33.i49 = phi i64 [ 0, %for.body2.lr.ph.i48 ], [ %indvars.iv.next34.i63, %for.inc10.i65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv33.i49, metadata !446, metadata !DIExpression()), !dbg !449
  %arrayidx.i50 = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv33.i49, !dbg !461
  %11 = load ptr, ptr %arrayidx.i50, align 8, !dbg !461, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %11, metadata !448, metadata !DIExpression()), !dbg !449
  %r_attr.i51 = getelementptr inbounds %struct.residue_t, ptr %11, i64 0, i32 6, !dbg !463
  %12 = load i32, ptr %r_attr.i51, align 8, !dbg !464, !tbaa !323
  %and3.i = and i32 %12, -129, !dbg !464
  store i32 %and3.i, ptr %r_attr.i51, align 8, !dbg !464, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !449
  %r_natoms.i52 = getelementptr inbounds %struct.residue_t, ptr %11, i64 0, i32 15
  %13 = load i32, ptr %r_natoms.i52, align 8, !tbaa !327
  %cmp525.i53 = icmp sgt i32 %13, 0, !dbg !465
  br i1 %cmp525.i53, label %for.body6.lr.ph.i57, label %for.inc10.i65, !dbg !468

for.body6.lr.ph.i57:                              ; preds = %for.body2.i54
  %r_atoms.i55 = getelementptr inbounds %struct.residue_t, ptr %11, i64 0, i32 17
  %14 = load ptr, ptr %r_atoms.i55, align 8, !tbaa !333
  %wide.trip.count.i56 = zext i32 %13 to i64, !dbg !465
  br label %for.body6.i62, !dbg !468

for.body6.i62:                                    ; preds = %for.body6.i62, %for.body6.lr.ph.i57
  %indvars.iv.i58 = phi i64 [ 0, %for.body6.lr.ph.i57 ], [ %indvars.iv.next.i60, %for.body6.i62 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i58, metadata !445, metadata !DIExpression()), !dbg !449
  %a_attr.i59 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv.i58, i32 2, !dbg !469
  %15 = load i32, ptr %a_attr.i59, align 8, !dbg !470, !tbaa !337
  %and9.i = and i32 %15, -129, !dbg !470
  store i32 %and9.i, ptr %a_attr.i59, align 8, !dbg !470, !tbaa !337
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i58, 1, !dbg !471
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i60, metadata !445, metadata !DIExpression()), !dbg !449
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i56, !dbg !465
  br i1 %exitcond.not.i61, label %for.inc10.i65, label %for.body6.i62, !dbg !468, !llvm.loop !472

for.inc10.i65:                                    ; preds = %for.body6.i62, %for.body2.i54
  %indvars.iv.next34.i63 = add nuw nsw i64 %indvars.iv33.i49, 1, !dbg !474
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next34.i63, metadata !446, metadata !DIExpression()), !dbg !449
  %exitcond37.not.i64 = icmp eq i64 %indvars.iv.next34.i63, %wide.trip.count36.i47, !dbg !457
  br i1 %exitcond37.not.i64, label %for.inc13.i69, label %for.body2.i54, !dbg !460, !llvm.loop !475

for.inc13.i69:                                    ; preds = %for.inc10.i65, %for.body.i45
  %s_next.i66 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i41, i64 0, i32 4, !dbg !477
  call void @llvm.dbg.value(metadata ptr undef, metadata !447, metadata !DIExpression()), !dbg !449
  %sp.0.i67 = load ptr, ptr %s_next.i66, align 8, !dbg !478, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i67, metadata !447, metadata !DIExpression()), !dbg !449
  %tobool.not.i68 = icmp eq ptr %sp.0.i67, null, !dbg !451
  br i1 %tobool.not.i68, label %for.body.i78, label %for.body.i45, !dbg !451, !llvm.loop !479

for.body.i78:                                     ; preds = %for.inc13.i69, %for.inc13.i104
  %sp.031.i73 = phi ptr [ %sp.0.i102, %for.inc13.i104 ], [ %sp.029.i, %for.inc13.i69 ]
  %s_attr.i74 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i73, i64 0, i32 2, !dbg !481
  %16 = load i32, ptr %s_attr.i74, align 4, !dbg !493, !tbaa !307
  %and.i75 = and i32 %16, -2, !dbg !493
  store i32 %and.i75, ptr %s_attr.i74, align 4, !dbg !493, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !494
  %s_nresidues.i76 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i73, i64 0, i32 5
  %17 = load i32, ptr %s_nresidues.i76, align 8, !tbaa !312
  %cmp27.i77 = icmp sgt i32 %17, 0, !dbg !495
  br i1 %cmp27.i77, label %for.body2.lr.ph.i81, label %for.inc13.i104, !dbg !498

for.body2.lr.ph.i81:                              ; preds = %for.body.i78
  %s_residues.i79 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i73, i64 0, i32 7
  %18 = load ptr, ptr %s_residues.i79, align 8, !tbaa !318
  %wide.trip.count36.i80 = zext i32 %17 to i64, !dbg !495
  br label %for.body2.i88, !dbg !498

for.body2.i88:                                    ; preds = %for.inc10.i100, %for.body2.lr.ph.i81
  %indvars.iv33.i82 = phi i64 [ 0, %for.body2.lr.ph.i81 ], [ %indvars.iv.next34.i98, %for.inc10.i100 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv33.i82, metadata !489, metadata !DIExpression()), !dbg !494
  %arrayidx.i83 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv33.i82, !dbg !499
  %19 = load ptr, ptr %arrayidx.i83, align 8, !dbg !499, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %19, metadata !491, metadata !DIExpression()), !dbg !494
  %r_attr.i84 = getelementptr inbounds %struct.residue_t, ptr %19, i64 0, i32 6, !dbg !501
  %20 = load i32, ptr %r_attr.i84, align 8, !dbg !502, !tbaa !323
  %and3.i85 = and i32 %20, -2, !dbg !502
  store i32 %and3.i85, ptr %r_attr.i84, align 8, !dbg !502, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !488, metadata !DIExpression()), !dbg !494
  %r_natoms.i86 = getelementptr inbounds %struct.residue_t, ptr %19, i64 0, i32 15
  %21 = load i32, ptr %r_natoms.i86, align 8, !tbaa !327
  %cmp525.i87 = icmp sgt i32 %21, 0, !dbg !503
  br i1 %cmp525.i87, label %for.body6.lr.ph.i91, label %for.inc10.i100, !dbg !506

for.body6.lr.ph.i91:                              ; preds = %for.body2.i88
  %r_atoms.i89 = getelementptr inbounds %struct.residue_t, ptr %19, i64 0, i32 17
  %22 = load ptr, ptr %r_atoms.i89, align 8, !tbaa !333
  %wide.trip.count.i90 = zext i32 %21 to i64, !dbg !503
  br label %for.body6.i97, !dbg !506

for.body6.i97:                                    ; preds = %for.body6.i97, %for.body6.lr.ph.i91
  %indvars.iv.i92 = phi i64 [ 0, %for.body6.lr.ph.i91 ], [ %indvars.iv.next.i95, %for.body6.i97 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i92, metadata !488, metadata !DIExpression()), !dbg !494
  %a_attr.i93 = getelementptr inbounds %struct.atom_t, ptr %22, i64 %indvars.iv.i92, i32 2, !dbg !507
  %23 = load i32, ptr %a_attr.i93, align 8, !dbg !508, !tbaa !337
  %and9.i94 = and i32 %23, -2, !dbg !508
  store i32 %and9.i94, ptr %a_attr.i93, align 8, !dbg !508, !tbaa !337
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i92, 1, !dbg !509
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i95, metadata !488, metadata !DIExpression()), !dbg !494
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %wide.trip.count.i90, !dbg !503
  br i1 %exitcond.not.i96, label %for.inc10.i100, label %for.body6.i97, !dbg !506, !llvm.loop !510

for.inc10.i100:                                   ; preds = %for.body6.i97, %for.body2.i88
  %indvars.iv.next34.i98 = add nuw nsw i64 %indvars.iv33.i82, 1, !dbg !512
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next34.i98, metadata !489, metadata !DIExpression()), !dbg !494
  %exitcond37.not.i99 = icmp eq i64 %indvars.iv.next34.i98, %wide.trip.count36.i80, !dbg !495
  br i1 %exitcond37.not.i99, label %for.inc13.i104, label %for.body2.i88, !dbg !498, !llvm.loop !513

for.inc13.i104:                                   ; preds = %for.inc10.i100, %for.body.i78
  %s_next.i101 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i73, i64 0, i32 4, !dbg !515
  call void @llvm.dbg.value(metadata ptr undef, metadata !490, metadata !DIExpression()), !dbg !494
  %sp.0.i102 = load ptr, ptr %s_next.i101, align 8, !dbg !516, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i102, metadata !490, metadata !DIExpression()), !dbg !494
  %tobool.not.i103 = icmp eq ptr %sp.0.i102, null, !dbg !517
  br i1 %tobool.not.i103, label %for.body.lr.ph, label %for.body.i78, !dbg !517, !llvm.loop !518

for.body.lr.ph:                                   ; preds = %for.inc13.i104, %if.end
  call void @llvm.dbg.value(metadata ptr undef, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %aex, metadata !393, metadata !DIExpression()), !dbg !396
  %call = tail call ptr @strchr(ptr noundef nonnull %aex, i32 noundef 124) #13, !dbg !520
  call void @llvm.dbg.value(metadata ptr %call, metadata !394, metadata !DIExpression()), !dbg !396
  %m_nstrands.i.i = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 1
  br label %for.body, !dbg !522

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph
  %n_aep.0484 = phi ptr [ %call, %for.body.lr.ph ], [ %n_aep.2, %for.body.backedge ]
  %aep.0482 = phi ptr [ %aex, %for.body.lr.ph ], [ %n_aep.1, %for.body.backedge ]
  call void @llvm.dbg.value(metadata ptr %n_aep.0484, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %aep.0482, metadata !393, metadata !DIExpression()), !dbg !396
  %tobool1.not = icmp eq ptr %n_aep.0484, null, !dbg !523
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !527

if.then2:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %n_aep.0484 to i64, !dbg !528
  %sub.ptr.rhs.cast = ptrtoint ptr %aep.0482 to i64, !dbg !528
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !528
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !395, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !396
  %incdec.ptr = getelementptr inbounds i8, ptr %n_aep.0484, i64 1, !dbg !530
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !394, metadata !DIExpression()), !dbg !396
  br label %if.end5, !dbg !531

if.else:                                          ; preds = %for.body
  %call3 = tail call i64 @strlen(ptr noundef nonnull %aep.0482) #13, !dbg !532
  call void @llvm.dbg.value(metadata i64 %call3, metadata !395, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !396
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %n_aep.1 = phi ptr [ %incdec.ptr, %if.then2 ], [ null, %if.else ], !dbg !533
  %ael.0.in = phi i64 [ %sub.ptr.sub, %if.then2 ], [ %call3, %if.else ]
  %ael.0 = trunc i64 %ael.0.in to i32, !dbg !534
  call void @llvm.dbg.value(metadata i32 %ael.0, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !394, metadata !DIExpression()), !dbg !396
  %cmp6 = icmp sgt i32 %ael.0, 999, !dbg !535
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !537

if.then8:                                         ; preds = %if.end5
  %24 = load ptr, ptr @stderr, align 8, !dbg !538, !tbaa !298
  %25 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 40, i64 1, ptr %24) #12, !dbg !540
  br label %cleanup, !dbg !541

if.end10:                                         ; preds = %if.end5
  %sext = shl i64 %ael.0.in, 32, !dbg !542
  %conv11 = ashr exact i64 %sext, 32, !dbg !542
  %call12 = tail call ptr @strncpy(ptr noundef nonnull @aexpr, ptr noundef nonnull %aep.0482, i64 noundef %conv11) #14, !dbg !543
  %arrayidx = getelementptr inbounds [1000 x i8], ptr @aexpr, i64 0, i64 %conv11, !dbg !544
  store i8 0, ptr %arrayidx, align 1, !dbg !545, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %mol, metadata !547, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr @aexpr, metadata !550, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo.i) #14, !dbg !557
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi.i) #14, !dbg !557
  call void @llvm.dbg.value(metadata ptr @aexpr, metadata !551, metadata !DIExpression()) #14, !dbg !555
  %26 = load i8, ptr @aexpr, align 16, !dbg !558, !tbaa !546
  %cmp.i = icmp eq i8 %26, 58, !dbg !560
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !561

if.then.i:                                        ; preds = %if.end10
  store ptr null, ptr @spart, align 8, !dbg !562, !tbaa !298
  br label %if.end.i, !dbg !564

if.else.i:                                        ; preds = %if.end10
  %call.i = tail call ptr @strtok(ptr noundef nonnull @aexpr, ptr noundef nonnull @.str.3) #14, !dbg !565
  store ptr %call.i, ptr @spart, align 8, !dbg !567, !tbaa !298
  %call2.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call.i) #13, !dbg !568
  %add.i = add i64 %call2.i, 1, !dbg !569
  %add.ptr.i = getelementptr inbounds i8, ptr @aexpr, i64 %add.i, !dbg !570
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !551, metadata !DIExpression()) #14, !dbg !555
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %aep.0.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), %if.then.i ], [ %add.ptr.i, %if.else.i ], !dbg !571
  call void @llvm.dbg.value(metadata ptr %aep.0.i, metadata !551, metadata !DIExpression()) #14, !dbg !555
  %27 = load i8, ptr %aep.0.i, align 1, !dbg !572, !tbaa !546
  %cmp4.i = icmp eq i8 %27, 58, !dbg !574
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i, !dbg !575

if.then6.i:                                       ; preds = %if.end.i
  store ptr null, ptr @rpart, align 8, !dbg !576, !tbaa !298
  call void @llvm.dbg.value(metadata ptr undef, metadata !551, metadata !DIExpression()) #14, !dbg !555
  br label %if.end13.i, !dbg !578

if.else8.i:                                       ; preds = %if.end.i
  %call9.i = tail call ptr @strtok(ptr noundef nonnull %aep.0.i, ptr noundef nonnull @.str.3) #14, !dbg !579
  store ptr %call9.i, ptr @rpart, align 8, !dbg !581, !tbaa !298
  %call10.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call9.i) #13, !dbg !582
  %add11.i = add i64 %call10.i, 1, !dbg !583
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else8.i, %if.then6.i
  %add11.sink.i = phi i64 [ %add11.i, %if.else8.i ], [ 1, %if.then6.i ]
  %add.ptr12.i = getelementptr inbounds i8, ptr %aep.0.i, i64 %add11.sink.i, !dbg !584
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !551, metadata !DIExpression()) #14, !dbg !555
  %call14.i = tail call ptr @strtok(ptr noundef nonnull %add.ptr12.i, ptr noundef nonnull @.str.3) #14, !dbg !585
  store ptr %call14.i, ptr @apart, align 8, !dbg !586, !tbaa !298
  %28 = load ptr, ptr @spart, align 8, !dbg !587, !tbaa !298
  %tobool.not.i105 = icmp eq ptr %28, null, !dbg !587
  br i1 %tobool.not.i105, label %if.else29.i, label %if.then15.i, !dbg !589

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call ptr @strtok(ptr noundef nonnull %28, ptr noundef nonnull @.str.4) #14, !dbg !590
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !553, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !554, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  %call17.i = call fastcc i32 @is_pattern(ptr noundef %call16.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !592
  %tobool18.not.i = icmp eq i32 %call17.i, 0, !dbg !592
  br i1 %tobool18.not.i, label %if.else20.i, label %if.then19.i, !dbg !594

if.then19.i:                                      ; preds = %if.then15.i
  call void @llvm.dbg.value(metadata ptr %mol, metadata !595, metadata !DIExpression()) #14, !dbg !602
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !600, metadata !DIExpression()) #14, !dbg !602
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !604, metadata !DIExpression()) #14, !dbg !612
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !612
  store i8 94, ptr @rexpr, align 16, !dbg !614, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !610, metadata !DIExpression()) #14, !dbg !612
  br label %for.cond.i.i.i, !dbg !615

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then19.i
  %aep.0.i.i.i = phi ptr [ %call16.i, %if.then19.i ], [ %incdec.ptr12.i.i.i, %for.inc.i.i.i ], !dbg !617
  %rep.0.i.i.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then19.i ], [ %rep.1.i.i.i, %for.inc.i.i.i ], !dbg !612
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i.i, metadata !610, metadata !DIExpression()) #14, !dbg !612
  %29 = load i8, ptr %aep.0.i.i.i, align 1, !dbg !618, !tbaa !546
  switch i8 %29, label %if.else9.i.i.i [
    i8 0, label %aexpr2rexpr.exit.i.i
    i8 42, label %if.then.i.i.i
    i8 63, label %if.then7.i.i.i
  ], !dbg !620

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !621
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  store i8 46, ptr %rep.0.i.i.i, align 1, !dbg !625, !tbaa !546
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 2, !dbg !626
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  store i8 42, ptr %incdec.ptr2.i.i.i, align 1, !dbg !627, !tbaa !546
  br label %for.inc.i.i.i, !dbg !628

if.then7.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !629
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  store i8 46, ptr %rep.0.i.i.i, align 1, !dbg !631, !tbaa !546
  br label %for.inc.i.i.i, !dbg !632

if.else9.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr10.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !633
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  store i8 %29, ptr %rep.0.i.i.i, align 1, !dbg !634, !tbaa !546
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rep.1.i.i.i = phi ptr [ %incdec.ptr3.i.i.i, %if.then.i.i.i ], [ %incdec.ptr8.i.i.i, %if.then7.i.i.i ], [ %incdec.ptr10.i.i.i, %if.else9.i.i.i ], !dbg !635
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, ptr %aep.0.i.i.i, i64 1, !dbg !636
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i.i, metadata !610, metadata !DIExpression()) #14, !dbg !612
  br label %for.cond.i.i.i, !dbg !637, !llvm.loop !638

aexpr2rexpr.exit.i.i:                             ; preds = %for.cond.i.i.i
  %incdec.ptr13.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !640
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !612
  store i8 36, ptr %rep.0.i.i.i, align 1, !dbg !641, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i.i, align 1, !dbg !642, !tbaa !546
  %call.i.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !643
  call void @llvm.dbg.value(metadata ptr undef, metadata !601, metadata !DIExpression()) #14, !dbg !602
  %sp.05.i.i = load ptr, ptr %m_strands.i, align 8, !dbg !644, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.05.i.i, metadata !601, metadata !DIExpression()) #14, !dbg !602
  %tobool.not6.i.i = icmp eq ptr %sp.05.i.i, null, !dbg !646
  br i1 %tobool.not6.i.i, label %if.end21.i, label %for.body.i.i, !dbg !646

for.body.i.i:                                     ; preds = %aexpr2rexpr.exit.i.i, %for.body.i.i
  %sp.07.i.i = phi ptr [ %sp.0.i.i, %for.body.i.i ], [ %sp.05.i.i, %aexpr2rexpr.exit.i.i ]
  %30 = load ptr, ptr %sp.07.i.i, align 8, !dbg !647, !tbaa !650
  %call1.i.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %30, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !651
  %cmp.i.i = icmp eq i32 %call1.i.i, 0, !dbg !652
  %cond.i.i = zext i1 %cmp.i.i to i32, !dbg !651
  %s_attr.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.07.i.i, i64 0, i32 2, !dbg !653
  %31 = load i32, ptr %s_attr.i.i, align 4, !dbg !654, !tbaa !307
  %or.i.i = or i32 %31, %cond.i.i, !dbg !654
  store i32 %or.i.i, ptr %s_attr.i.i, align 4, !dbg !654, !tbaa !307
  %s_next.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.07.i.i, i64 0, i32 4, !dbg !655
  call void @llvm.dbg.value(metadata ptr undef, metadata !601, metadata !DIExpression()) #14, !dbg !602
  %sp.0.i.i = load ptr, ptr %s_next.i.i, align 8, !dbg !644, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i.i, metadata !601, metadata !DIExpression()) #14, !dbg !602
  %tobool.not.i.i = icmp eq ptr %sp.0.i.i, null, !dbg !646
  br i1 %tobool.not.i.i, label %if.end21.i, label %for.body.i.i, !dbg !646, !llvm.loop !656

if.else20.i:                                      ; preds = %if.then15.i
  %32 = load i32, ptr %lo.i, align 4, !dbg !658, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %32, metadata !553, metadata !DIExpression()) #14, !dbg !555
  %33 = load i32, ptr %hi.i, align 4, !dbg !660, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %33, metadata !554, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %mol, metadata !661, metadata !DIExpression()) #14, !dbg !670
  call void @llvm.dbg.value(metadata i32 %32, metadata !666, metadata !DIExpression()) #14, !dbg !670
  call void @llvm.dbg.value(metadata i32 %33, metadata !667, metadata !DIExpression()) #14, !dbg !670
  %cmp.i1.i = icmp eq i32 %33, -1, !dbg !672
  %34 = load i32, ptr %m_nstrands.i.i, align 8, !tbaa !674
  %.hi.i.i = select i1 %cmp.i1.i, i32 %34, i32 %33, !dbg !670
  call void @llvm.dbg.value(metadata i32 %.hi.i.i, metadata !667, metadata !DIExpression()) #14, !dbg !670
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #14, !dbg !670
  call void @llvm.dbg.value(metadata i32 1, metadata !668, metadata !DIExpression()) #14, !dbg !670
  %cmp2.not15.i.i = icmp slt i32 %34, 1, !dbg !676
  br i1 %cmp2.not15.i.i, label %if.end21.i, label %for.body.i3.i, !dbg !679

for.body.i3.i:                                    ; preds = %if.else20.i, %for.inc.i.i
  %sp.017.in.i.i = phi ptr [ %s_next.i6.i, %for.inc.i.i ], [ %m_strands.i, %if.else20.i ]
  %m.016.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 1, %if.else20.i ]
  %sp.017.i.i = load ptr, ptr %sp.017.in.i.i, align 8, !dbg !680, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %m.016.i.i, metadata !668, metadata !DIExpression()) #14, !dbg !670
  %cmp3.not.i.i = icmp slt i32 %m.016.i.i, %32, !dbg !681
  %cmp4.not.i.i = icmp sgt i32 %m.016.i.i, %.hi.i.i
  %or.cond.i.i = select i1 %cmp3.not.i.i, i1 true, i1 %cmp4.not.i.i, !dbg !684
  br i1 %or.cond.i.i, label %for.inc.i.i, label %if.then5.i.i, !dbg !684

if.then5.i.i:                                     ; preds = %for.body.i3.i
  %s_attr.i4.i = getelementptr inbounds %struct.strand_t, ptr %sp.017.i.i, i64 0, i32 2, !dbg !685
  %35 = load i32, ptr %s_attr.i4.i, align 4, !dbg !686, !tbaa !307
  %or.i5.i = or i32 %35, 1, !dbg !686
  store i32 %or.i5.i, ptr %s_attr.i4.i, align 4, !dbg !686, !tbaa !307
  br label %for.inc.i.i, !dbg !687

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i3.i
  %inc.i.i = add nuw i32 %m.016.i.i, 1, !dbg !688
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !668, metadata !DIExpression()) #14, !dbg !670
  %s_next.i6.i = getelementptr inbounds %struct.strand_t, ptr %sp.017.i.i, i64 0, i32 4, !dbg !689
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #14, !dbg !670
  %exitcond.not.i.i = icmp eq i32 %m.016.i.i, %34, !dbg !676
  br i1 %exitcond.not.i.i, label %if.end21.i, label %for.body.i3.i, !dbg !679, !llvm.loop !690

if.end21.i:                                       ; preds = %for.body.i.i, %for.inc.i.i, %if.else20.i, %aexpr2rexpr.exit.i.i
  %call22185.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !692
  call void @llvm.dbg.value(metadata ptr %call22185.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  %tobool23.not186.i = icmp eq ptr %call22185.i, null, !dbg !693
  br i1 %tobool23.not186.i, label %if.end30.i, label %while.body.lr.ph.i, !dbg !693

while.body.lr.ph.i:                               ; preds = %if.end21.i
  %call.i379 = tail call ptr @__ctype_b_loc() #15, !dbg !396
  br label %while.body.i, !dbg !693

while.body.i:                                     ; preds = %if.end28.i, %while.body.lr.ph.i
  %call22187.i = phi ptr [ %call22185.i, %while.body.lr.ph.i ], [ %call22.i, %if.end28.i ]
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !553, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !554, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %call22187.i, metadata !694, metadata !DIExpression()) #14, !dbg !704
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !700, metadata !DIExpression()) #14, !dbg !704
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !701, metadata !DIExpression()) #14, !dbg !704
  %36 = load ptr, ptr %call.i379, align 8, !dbg !708, !tbaa !298
  %37 = load i8, ptr %call22187.i, align 1, !dbg !708, !tbaa !546
  %idxprom.i380 = sext i8 %37 to i64, !dbg !708
  %arrayidx.i381 = getelementptr inbounds i16, ptr %36, i64 %idxprom.i380, !dbg !708
  %38 = load i16, ptr %arrayidx.i381, align 2, !dbg !708, !tbaa !710
  %39 = and i16 %38, 2048, !dbg !708
  %tobool.not.i382 = icmp ne i16 %39, 0, !dbg !708
  %cmp.not.i383 = icmp eq i8 %37, 45
  %or.cond.i384 = select i1 %tobool.not.i382, i1 true, i1 %cmp.not.i383, !dbg !712
  br i1 %or.cond.i384, label %if.end.i386, label %if.then26.i, !dbg !712

if.end.i386:                                      ; preds = %while.body.i
  %tobool10.not.i385 = icmp eq i16 %39, 0, !dbg !713
  br i1 %tobool10.not.i385, label %if.else59.i426, label %for.body.i397, !dbg !715

for.body.i397:                                    ; preds = %if.end.i386, %for.body.i397
  %40 = phi i8 [ %41, %for.body.i397 ], [ %37, %if.end.i386 ]
  %ip.0131.i387 = phi ptr [ %incdec.ptr.i393, %for.body.i397 ], [ %call22187.i, %if.end.i386 ]
  %val.0130.i388 = phi i32 [ %sub.i392, %for.body.i397 ], [ 0, %if.end.i386 ]
  call void @llvm.dbg.value(metadata ptr %ip.0131.i387, metadata !703, metadata !DIExpression()) #14, !dbg !704
  call void @llvm.dbg.value(metadata i32 %val.0130.i388, metadata !702, metadata !DIExpression()) #14, !dbg !704
  %conv13.i389 = sext i8 %40 to i32, !dbg !716
  %mul.i390 = mul nsw i32 %val.0130.i388, 10, !dbg !720
  %add.i391 = add nsw i32 %conv13.i389, -48, !dbg !721
  %sub.i392 = add i32 %add.i391, %mul.i390, !dbg !722
  call void @llvm.dbg.value(metadata i32 %sub.i392, metadata !702, metadata !DIExpression()) #14, !dbg !704
  %incdec.ptr.i393 = getelementptr inbounds i8, ptr %ip.0131.i387, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i393, metadata !703, metadata !DIExpression()) #14, !dbg !704
  %41 = load i8, ptr %incdec.ptr.i393, align 1, !dbg !716, !tbaa !546
  %idxprom14.i394 = sext i8 %41 to i64, !dbg !716
  %arrayidx15.i395 = getelementptr inbounds i16, ptr %36, i64 %idxprom14.i394, !dbg !716
  %42 = load i16, ptr %arrayidx15.i395, align 2, !dbg !716, !tbaa !710
  %43 = and i16 %42, 2048, !dbg !716
  %tobool18.not.i396 = icmp eq i16 %43, 0, !dbg !724
  br i1 %tobool18.not.i396, label %for.end.i398, label %for.body.i397, !dbg !724, !llvm.loop !725

for.end.i398:                                     ; preds = %for.body.i397
  store i32 %sub.i392, ptr %lo.i, align 4, !dbg !727, !tbaa !659
  switch i8 %41, label %if.end28.i405 [
    i8 0, label %if.then21.i399
    i8 45, label %if.then25.i402
  ], !dbg !728

if.then21.i399:                                   ; preds = %for.end.i398
  store i32 %sub.i392, ptr %hi.i, align 4, !dbg !729, !tbaa !659
  br label %if.else27.i, !dbg !732

if.then25.i402:                                   ; preds = %for.end.i398
  %incdec.ptr26.i400 = getelementptr inbounds i8, ptr %ip.0131.i387, i64 2, !dbg !733
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26.i400, metadata !703, metadata !DIExpression()) #14, !dbg !704
  %.pr.i401 = load i8, ptr %incdec.ptr26.i400, align 1, !dbg !735, !tbaa !546
  br label %if.end28.i405, !dbg !737

if.end28.i405:                                    ; preds = %if.then25.i402, %for.end.i398
  %44 = phi i8 [ %41, %for.end.i398 ], [ %.pr.i401, %if.then25.i402 ], !dbg !735
  %ip.1.i403 = phi ptr [ %incdec.ptr.i393, %for.end.i398 ], [ %incdec.ptr26.i400, %if.then25.i402 ], !dbg !738
  call void @llvm.dbg.value(metadata ptr %ip.1.i403, metadata !703, metadata !DIExpression()) #14, !dbg !704
  %tobool29.not.i404 = icmp eq i8 %44, 0, !dbg !735
  br i1 %tobool29.not.i404, label %if.else27.i.thread, label %if.else31.i410, !dbg !739

if.else31.i410:                                   ; preds = %if.end28.i405
  %idxprom34.i407 = sext i8 %44 to i64, !dbg !740
  %arrayidx35.i408 = getelementptr inbounds i16, ptr %36, i64 %idxprom34.i407, !dbg !740
  %45 = load i16, ptr %arrayidx35.i408, align 2, !dbg !740, !tbaa !710
  %46 = and i16 %45, 2048, !dbg !740
  %tobool38.not.i409 = icmp eq i16 %46, 0, !dbg !740
  br i1 %tobool38.not.i409, label %if.then26.i, label %for.body50.i421, !dbg !742

for.body50.i421:                                  ; preds = %if.else31.i410, %for.body50.i421
  %47 = phi i8 [ %48, %for.body50.i421 ], [ %44, %if.else31.i410 ]
  %ip.2137.i411 = phi ptr [ %incdec.ptr56.i417, %for.body50.i421 ], [ %ip.1.i403, %if.else31.i410 ]
  %val.1136.i412 = phi i32 [ %sub54.i416, %for.body50.i421 ], [ 0, %if.else31.i410 ]
  call void @llvm.dbg.value(metadata ptr %ip.2137.i411, metadata !703, metadata !DIExpression()) #14, !dbg !704
  call void @llvm.dbg.value(metadata i32 %val.1136.i412, metadata !702, metadata !DIExpression()) #14, !dbg !704
  %conv44.i413 = sext i8 %47 to i32, !dbg !743
  %mul51.i414 = mul nsw i32 %val.1136.i412, 10, !dbg !746
  %add53.i415 = add nsw i32 %conv44.i413, -48, !dbg !747
  %sub54.i416 = add i32 %add53.i415, %mul51.i414, !dbg !748
  call void @llvm.dbg.value(metadata i32 %sub54.i416, metadata !702, metadata !DIExpression()) #14, !dbg !704
  %incdec.ptr56.i417 = getelementptr inbounds i8, ptr %ip.2137.i411, i64 1, !dbg !749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56.i417, metadata !703, metadata !DIExpression()) #14, !dbg !704
  %48 = load i8, ptr %incdec.ptr56.i417, align 1, !dbg !743, !tbaa !546
  %idxprom45.i418 = sext i8 %48 to i64, !dbg !743
  %arrayidx46.i419 = getelementptr inbounds i16, ptr %36, i64 %idxprom45.i418, !dbg !743
  %49 = load i16, ptr %arrayidx46.i419, align 2, !dbg !743, !tbaa !710
  %50 = and i16 %49, 2048, !dbg !743
  %tobool49.not.i420 = icmp eq i16 %50, 0, !dbg !750
  br i1 %tobool49.not.i420, label %is_pattern.exit446, label %for.body50.i421, !dbg !750, !llvm.loop !751

if.else59.i426:                                   ; preds = %if.end.i386
  store i32 1, ptr %lo.i, align 4, !dbg !753, !tbaa !659
  %arrayidx60.i424 = getelementptr inbounds i8, ptr %call22187.i, i64 1, !dbg !755
  call void @llvm.dbg.value(metadata ptr %arrayidx60.i424, metadata !703, metadata !DIExpression()) #14, !dbg !704
  %51 = load i8, ptr %arrayidx60.i424, align 1, !dbg !756, !tbaa !546
  %tobool62.not.i425 = icmp eq i8 %51, 0, !dbg !756
  br i1 %tobool62.not.i425, label %if.else27.i.thread, label %if.else64.i431, !dbg !758

if.else64.i431:                                   ; preds = %if.else59.i426
  %idxprom67.i428 = sext i8 %51 to i64, !dbg !759
  %arrayidx68.i429 = getelementptr inbounds i16, ptr %36, i64 %idxprom67.i428, !dbg !759
  %52 = load i16, ptr %arrayidx68.i429, align 2, !dbg !759, !tbaa !710
  %53 = and i16 %52, 2048, !dbg !759
  %tobool71.not.i430 = icmp eq i16 %53, 0, !dbg !759
  br i1 %tobool71.not.i430, label %if.else64.i431.if.else27.i_crit_edge, label %for.body81.i442, !dbg !761

if.else64.i431.if.else27.i_crit_edge:             ; preds = %if.else64.i431
  %.pre = load i32, ptr %hi.i, align 4, !dbg !762, !tbaa !659
  br label %if.else27.i, !dbg !761

for.body81.i442:                                  ; preds = %if.else64.i431, %for.body81.i442
  %54 = phi i8 [ %55, %for.body81.i442 ], [ %51, %if.else64.i431 ]
  %ip.3144.i432 = phi ptr [ %incdec.ptr87.i438, %for.body81.i442 ], [ %arrayidx60.i424, %if.else64.i431 ]
  %val.2143.i433 = phi i32 [ %sub85.i437, %for.body81.i442 ], [ 0, %if.else64.i431 ]
  call void @llvm.dbg.value(metadata ptr %ip.3144.i432, metadata !703, metadata !DIExpression()) #14, !dbg !704
  call void @llvm.dbg.value(metadata i32 %val.2143.i433, metadata !702, metadata !DIExpression()) #14, !dbg !704
  %conv75.i434 = sext i8 %54 to i32, !dbg !763
  %mul82.i435 = mul nsw i32 %val.2143.i433, 10, !dbg !767
  %add84.i436 = add nsw i32 %conv75.i434, -48, !dbg !768
  %sub85.i437 = add i32 %add84.i436, %mul82.i435, !dbg !769
  call void @llvm.dbg.value(metadata i32 %sub85.i437, metadata !702, metadata !DIExpression()) #14, !dbg !704
  %incdec.ptr87.i438 = getelementptr inbounds i8, ptr %ip.3144.i432, i64 1, !dbg !770
  call void @llvm.dbg.value(metadata ptr %incdec.ptr87.i438, metadata !703, metadata !DIExpression()) #14, !dbg !704
  %55 = load i8, ptr %incdec.ptr87.i438, align 1, !dbg !763, !tbaa !546
  %idxprom76.i439 = sext i8 %55 to i64, !dbg !763
  %arrayidx77.i440 = getelementptr inbounds i16, ptr %36, i64 %idxprom76.i439, !dbg !763
  %56 = load i16, ptr %arrayidx77.i440, align 2, !dbg !763, !tbaa !710
  %57 = and i16 %56, 2048, !dbg !763
  %tobool80.not.i441 = icmp eq i16 %57, 0, !dbg !771
  br i1 %tobool80.not.i441, label %is_pattern.exit446, label %for.body81.i442, !dbg !771, !llvm.loop !772

is_pattern.exit446:                               ; preds = %for.body50.i421, %for.body81.i442
  %58 = phi i32 [ 1, %for.body81.i442 ], [ %sub.i392, %for.body50.i421 ]
  %storemerge466 = phi i32 [ %sub85.i437, %for.body81.i442 ], [ %sub54.i416, %for.body50.i421 ], !dbg !704
  %retval.0.i445.in.in = phi ptr [ %incdec.ptr87.i438, %for.body81.i442 ], [ %incdec.ptr56.i417, %for.body50.i421 ]
  store i32 %storemerge466, ptr %hi.i, align 4, !dbg !704, !tbaa !659
  %retval.0.i445.in = load i8, ptr %retval.0.i445.in.in, align 1, !dbg !704, !tbaa !546
  %tobool25.not.i = icmp eq i8 %retval.0.i445.in, 0, !dbg !774
  br i1 %tobool25.not.i, label %if.else27.i, label %if.then26.i, !dbg !775

if.then26.i:                                      ; preds = %if.else31.i410, %while.body.i, %is_pattern.exit446
  call void @llvm.dbg.value(metadata ptr %mol, metadata !595, metadata !DIExpression()) #14, !dbg !776
  call void @llvm.dbg.value(metadata ptr %call22187.i, metadata !600, metadata !DIExpression()) #14, !dbg !776
  call void @llvm.dbg.value(metadata ptr %call22187.i, metadata !604, metadata !DIExpression()) #14, !dbg !778
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !778
  store i8 94, ptr @rexpr, align 16, !dbg !780, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call22187.i, metadata !610, metadata !DIExpression()) #14, !dbg !778
  br label %for.cond.i.i9.i, !dbg !781

for.cond.i.i9.i:                                  ; preds = %for.inc.i.i19.i, %if.then26.i
  %aep.0.i.i7.i = phi ptr [ %call22187.i, %if.then26.i ], [ %incdec.ptr12.i.i18.i, %for.inc.i.i19.i ], !dbg !782
  %rep.0.i.i8.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then26.i ], [ %rep.1.i.i17.i, %for.inc.i.i19.i ], !dbg !778
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i8.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i7.i, metadata !610, metadata !DIExpression()) #14, !dbg !778
  %59 = load i8, ptr %aep.0.i.i7.i, align 1, !dbg !783, !tbaa !546
  switch i8 %59, label %if.else9.i.i16.i [
    i8 0, label %aexpr2rexpr.exit.i25.i
    i8 42, label %if.then.i.i12.i
    i8 63, label %if.then7.i.i14.i
  ], !dbg !784

if.then.i.i12.i:                                  ; preds = %for.cond.i.i9.i
  %incdec.ptr2.i.i10.i = getelementptr inbounds i8, ptr %rep.0.i.i8.i, i64 1, !dbg !785
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i10.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  store i8 46, ptr %rep.0.i.i8.i, align 1, !dbg !786, !tbaa !546
  %incdec.ptr3.i.i11.i = getelementptr inbounds i8, ptr %rep.0.i.i8.i, i64 2, !dbg !787
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i11.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  store i8 42, ptr %incdec.ptr2.i.i10.i, align 1, !dbg !788, !tbaa !546
  br label %for.inc.i.i19.i, !dbg !789

if.then7.i.i14.i:                                 ; preds = %for.cond.i.i9.i
  %incdec.ptr8.i.i13.i = getelementptr inbounds i8, ptr %rep.0.i.i8.i, i64 1, !dbg !790
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i13.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  store i8 46, ptr %rep.0.i.i8.i, align 1, !dbg !791, !tbaa !546
  br label %for.inc.i.i19.i, !dbg !792

if.else9.i.i16.i:                                 ; preds = %for.cond.i.i9.i
  %incdec.ptr10.i.i15.i = getelementptr inbounds i8, ptr %rep.0.i.i8.i, i64 1, !dbg !793
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i15.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  store i8 %59, ptr %rep.0.i.i8.i, align 1, !dbg !794, !tbaa !546
  br label %for.inc.i.i19.i

for.inc.i.i19.i:                                  ; preds = %if.else9.i.i16.i, %if.then7.i.i14.i, %if.then.i.i12.i
  %rep.1.i.i17.i = phi ptr [ %incdec.ptr3.i.i11.i, %if.then.i.i12.i ], [ %incdec.ptr8.i.i13.i, %if.then7.i.i14.i ], [ %incdec.ptr10.i.i15.i, %if.else9.i.i16.i ], !dbg !795
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i17.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  %incdec.ptr12.i.i18.i = getelementptr inbounds i8, ptr %aep.0.i.i7.i, i64 1, !dbg !796
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i18.i, metadata !610, metadata !DIExpression()) #14, !dbg !778
  br label %for.cond.i.i9.i, !dbg !797, !llvm.loop !798

aexpr2rexpr.exit.i25.i:                           ; preds = %for.cond.i.i9.i
  %incdec.ptr13.i.i20.i = getelementptr inbounds i8, ptr %rep.0.i.i8.i, i64 1, !dbg !800
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i20.i, metadata !611, metadata !DIExpression()) #14, !dbg !778
  store i8 36, ptr %rep.0.i.i8.i, align 1, !dbg !801, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i20.i, align 1, !dbg !802, !tbaa !546
  %call.i21.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !803
  call void @llvm.dbg.value(metadata ptr undef, metadata !601, metadata !DIExpression()) #14, !dbg !776
  %sp.05.i23.i = load ptr, ptr %m_strands.i, align 8, !dbg !804, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.05.i23.i, metadata !601, metadata !DIExpression()) #14, !dbg !776
  %tobool.not6.i24.i = icmp eq ptr %sp.05.i23.i, null, !dbg !805
  br i1 %tobool.not6.i24.i, label %if.end28.i, label %for.body.i35.i, !dbg !805

for.body.i35.i:                                   ; preds = %aexpr2rexpr.exit.i25.i, %for.body.i35.i
  %sp.07.i26.i = phi ptr [ %sp.0.i33.i, %for.body.i35.i ], [ %sp.05.i23.i, %aexpr2rexpr.exit.i25.i ]
  %60 = load ptr, ptr %sp.07.i26.i, align 8, !dbg !806, !tbaa !650
  %call1.i27.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %60, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !807
  %cmp.i28.i = icmp eq i32 %call1.i27.i, 0, !dbg !808
  %cond.i29.i = zext i1 %cmp.i28.i to i32, !dbg !807
  %s_attr.i30.i = getelementptr inbounds %struct.strand_t, ptr %sp.07.i26.i, i64 0, i32 2, !dbg !809
  %61 = load i32, ptr %s_attr.i30.i, align 4, !dbg !810, !tbaa !307
  %or.i31.i = or i32 %61, %cond.i29.i, !dbg !810
  store i32 %or.i31.i, ptr %s_attr.i30.i, align 4, !dbg !810, !tbaa !307
  %s_next.i32.i = getelementptr inbounds %struct.strand_t, ptr %sp.07.i26.i, i64 0, i32 4, !dbg !811
  call void @llvm.dbg.value(metadata ptr undef, metadata !601, metadata !DIExpression()) #14, !dbg !776
  %sp.0.i33.i = load ptr, ptr %s_next.i32.i, align 8, !dbg !804, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i33.i, metadata !601, metadata !DIExpression()) #14, !dbg !776
  %tobool.not.i34.i = icmp eq ptr %sp.0.i33.i, null, !dbg !805
  br i1 %tobool.not.i34.i, label %if.end28.i, label %for.body.i35.i, !dbg !805, !llvm.loop !812

if.else27.i.thread:                               ; preds = %if.else59.i426, %if.end28.i405
  %.ph = phi i32 [ %sub.i392, %if.end28.i405 ], [ 1, %if.else59.i426 ]
  store i32 -1, ptr %hi.i, align 4, !dbg !704, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %64, metadata !553, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata i32 %63, metadata !554, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %mol, metadata !661, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 %64, metadata !666, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 %63, metadata !667, metadata !DIExpression()) #14, !dbg !814
  %62 = load i32, ptr %m_nstrands.i.i, align 8, !tbaa !674
  br label %66, !dbg !814

if.else27.i:                                      ; preds = %if.else64.i431.if.else27.i_crit_edge, %if.then21.i399, %is_pattern.exit446
  %63 = phi i32 [ %.pre, %if.else64.i431.if.else27.i_crit_edge ], [ %sub.i392, %if.then21.i399 ], [ %storemerge466, %is_pattern.exit446 ], !dbg !762
  %64 = phi i32 [ 1, %if.else64.i431.if.else27.i_crit_edge ], [ %sub.i392, %if.then21.i399 ], [ %58, %is_pattern.exit446 ], !dbg !816
  call void @llvm.dbg.value(metadata i32 %64, metadata !553, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata i32 %63, metadata !554, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %mol, metadata !661, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 %64, metadata !666, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 %63, metadata !667, metadata !DIExpression()) #14, !dbg !814
  %cmp.i37.i = icmp eq i32 %63, -1, !dbg !817
  %65 = load i32, ptr %m_nstrands.i.i, align 8, !tbaa !674
  br i1 %cmp.i37.i, label %66, label %69, !dbg !814

66:                                               ; preds = %if.else27.i.thread, %if.else27.i
  %67 = phi i32 [ %62, %if.else27.i.thread ], [ %65, %if.else27.i ]
  %68 = phi i32 [ %.ph, %if.else27.i.thread ], [ %64, %if.else27.i ]
  br label %69, !dbg !814

69:                                               ; preds = %if.else27.i, %66
  %70 = phi i32 [ %67, %66 ], [ %65, %if.else27.i ]
  %71 = phi i32 [ %68, %66 ], [ %64, %if.else27.i ]
  %72 = phi i32 [ %67, %66 ], [ %63, %if.else27.i ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !667, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 1, metadata !668, metadata !DIExpression()) #14, !dbg !814
  %cmp2.not15.i40.i = icmp slt i32 %70, 1, !dbg !818
  br i1 %cmp2.not15.i40.i, label %if.end28.i, label %for.body.i49.i, !dbg !819

for.body.i49.i:                                   ; preds = %69, %for.inc.i56.i
  %sp.017.in.i43.i = phi ptr [ %s_next.i54.i, %for.inc.i56.i ], [ %m_strands.i, %69 ]
  %m.016.i44.i = phi i32 [ %inc.i53.i, %for.inc.i56.i ], [ 1, %69 ]
  %sp.017.i45.i = load ptr, ptr %sp.017.in.i43.i, align 8, !dbg !820, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %m.016.i44.i, metadata !668, metadata !DIExpression()) #14, !dbg !814
  %cmp3.not.i46.i = icmp slt i32 %m.016.i44.i, %71, !dbg !821
  %cmp4.not.i47.i = icmp sgt i32 %m.016.i44.i, %72
  %or.cond.i48.i = select i1 %cmp3.not.i46.i, i1 true, i1 %cmp4.not.i47.i, !dbg !822
  br i1 %or.cond.i48.i, label %for.inc.i56.i, label %if.then5.i52.i, !dbg !822

if.then5.i52.i:                                   ; preds = %for.body.i49.i
  %s_attr.i50.i = getelementptr inbounds %struct.strand_t, ptr %sp.017.i45.i, i64 0, i32 2, !dbg !823
  %73 = load i32, ptr %s_attr.i50.i, align 4, !dbg !824, !tbaa !307
  %or.i51.i = or i32 %73, 1, !dbg !824
  store i32 %or.i51.i, ptr %s_attr.i50.i, align 4, !dbg !824, !tbaa !307
  br label %for.inc.i56.i, !dbg !825

for.inc.i56.i:                                    ; preds = %if.then5.i52.i, %for.body.i49.i
  %inc.i53.i = add nuw i32 %m.016.i44.i, 1, !dbg !826
  call void @llvm.dbg.value(metadata i32 %inc.i53.i, metadata !668, metadata !DIExpression()) #14, !dbg !814
  %s_next.i54.i = getelementptr inbounds %struct.strand_t, ptr %sp.017.i45.i, i64 0, i32 4, !dbg !827
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #14, !dbg !814
  %exitcond.not.i55.i = icmp eq i32 %m.016.i44.i, %70, !dbg !818
  br i1 %exitcond.not.i55.i, label %if.end28.i, label %for.body.i49.i, !dbg !819, !llvm.loop !828

if.end28.i:                                       ; preds = %for.body.i35.i, %for.inc.i56.i, %69, %aexpr2rexpr.exit.i25.i
  %call22.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !692
  call void @llvm.dbg.value(metadata ptr %call22.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  %tobool23.not.i = icmp eq ptr %call22.i, null, !dbg !693
  br i1 %tobool23.not.i, label %if.end30.i, label %while.body.i, !dbg !693, !llvm.loop !830

if.else29.i:                                      ; preds = %if.end13.i
  call void @llvm.dbg.value(metadata ptr %mol, metadata !661, metadata !DIExpression()) #14, !dbg !832
  call void @llvm.dbg.value(metadata i32 1, metadata !666, metadata !DIExpression()) #14, !dbg !832
  call void @llvm.dbg.value(metadata i32 -1, metadata !667, metadata !DIExpression()) #14, !dbg !832
  %74 = load i32, ptr %m_nstrands.i.i, align 8, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %74, metadata !667, metadata !DIExpression()) #14, !dbg !832
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #14, !dbg !832
  call void @llvm.dbg.value(metadata i32 1, metadata !668, metadata !DIExpression()) #14, !dbg !832
  %cmp2.not15.i59.i = icmp slt i32 %74, 1, !dbg !834
  br i1 %cmp2.not15.i59.i, label %if.end30.i, label %for.body.i68.i, !dbg !835

for.body.i68.i:                                   ; preds = %if.else29.i, %for.inc.i75.i
  %sp.017.in.i62.i = phi ptr [ %s_next.i73.i, %for.inc.i75.i ], [ %m_strands.i, %if.else29.i ]
  %m.016.i63.i = phi i32 [ %inc.i72.i, %for.inc.i75.i ], [ 1, %if.else29.i ]
  %sp.017.i64.i = load ptr, ptr %sp.017.in.i62.i, align 8, !dbg !836, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %m.016.i63.i, metadata !668, metadata !DIExpression()) #14, !dbg !832
  %cmp4.not.i66.i = icmp sgt i32 %m.016.i63.i, %74
  br i1 %cmp4.not.i66.i, label %for.inc.i75.i, label %if.then5.i71.i, !dbg !837

if.then5.i71.i:                                   ; preds = %for.body.i68.i
  %s_attr.i69.i = getelementptr inbounds %struct.strand_t, ptr %sp.017.i64.i, i64 0, i32 2, !dbg !838
  %75 = load i32, ptr %s_attr.i69.i, align 4, !dbg !839, !tbaa !307
  %or.i70.i = or i32 %75, 1, !dbg !839
  store i32 %or.i70.i, ptr %s_attr.i69.i, align 4, !dbg !839, !tbaa !307
  br label %for.inc.i75.i, !dbg !840

for.inc.i75.i:                                    ; preds = %if.then5.i71.i, %for.body.i68.i
  %inc.i72.i = add nuw i32 %m.016.i63.i, 1, !dbg !841
  call void @llvm.dbg.value(metadata i32 %inc.i72.i, metadata !668, metadata !DIExpression()) #14, !dbg !832
  %s_next.i73.i = getelementptr inbounds %struct.strand_t, ptr %sp.017.i64.i, i64 0, i32 4, !dbg !842
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #14, !dbg !832
  %exitcond.not.i74.i = icmp eq i32 %m.016.i63.i, %74, !dbg !834
  br i1 %exitcond.not.i74.i, label %if.end30.i, label %for.body.i68.i, !dbg !835, !llvm.loop !843

if.end30.i:                                       ; preds = %if.end28.i, %for.inc.i75.i, %if.else29.i, %if.end21.i
  %76 = load ptr, ptr @rpart, align 8, !dbg !845, !tbaa !298
  %tobool31.not.i = icmp eq ptr %76, null, !dbg !845
  br i1 %tobool31.not.i, label %if.else49.i, label %if.then32.i, !dbg !847

if.then32.i:                                      ; preds = %if.end30.i
  %call33.i = tail call ptr @strtok(ptr noundef nonnull %76, ptr noundef nonnull @.str.4) #14, !dbg !848
  call void @llvm.dbg.value(metadata ptr %call33.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !553, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !554, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  %call34.i = call fastcc i32 @is_pattern(ptr noundef %call33.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !850
  %tobool35.not.i = icmp eq i32 %call34.i, 0, !dbg !850
  br i1 %tobool35.not.i, label %if.else37.i, label %if.then36.i, !dbg !852

if.then36.i:                                      ; preds = %if.then32.i
  call void @llvm.dbg.value(metadata ptr %mol, metadata !853, metadata !DIExpression()) #14, !dbg !860
  call void @llvm.dbg.value(metadata ptr %call33.i, metadata !856, metadata !DIExpression()) #14, !dbg !860
  call void @llvm.dbg.value(metadata ptr %call33.i, metadata !604, metadata !DIExpression()) #14, !dbg !862
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !862
  store i8 94, ptr @rexpr, align 16, !dbg !864, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call33.i, metadata !610, metadata !DIExpression()) #14, !dbg !862
  br label %for.cond.i.i336, !dbg !865

for.cond.i.i336:                                  ; preds = %for.inc.i.i346, %if.then36.i
  %aep.0.i.i334 = phi ptr [ %call33.i, %if.then36.i ], [ %incdec.ptr12.i.i345, %for.inc.i.i346 ], !dbg !866
  %rep.0.i.i335 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then36.i ], [ %rep.1.i.i344, %for.inc.i.i346 ], !dbg !862
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i335, metadata !611, metadata !DIExpression()) #14, !dbg !862
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i334, metadata !610, metadata !DIExpression()) #14, !dbg !862
  %77 = load i8, ptr %aep.0.i.i334, align 1, !dbg !867, !tbaa !546
  switch i8 %77, label %if.else9.i.i343 [
    i8 0, label %aexpr2rexpr.exit.i352
    i8 42, label %if.then.i.i339
    i8 63, label %if.then7.i.i341
  ], !dbg !868

if.then.i.i339:                                   ; preds = %for.cond.i.i336
  %incdec.ptr2.i.i337 = getelementptr inbounds i8, ptr %rep.0.i.i335, i64 1, !dbg !869
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i337, metadata !611, metadata !DIExpression()) #14, !dbg !862
  store i8 46, ptr %rep.0.i.i335, align 1, !dbg !870, !tbaa !546
  %incdec.ptr3.i.i338 = getelementptr inbounds i8, ptr %rep.0.i.i335, i64 2, !dbg !871
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i338, metadata !611, metadata !DIExpression()) #14, !dbg !862
  store i8 42, ptr %incdec.ptr2.i.i337, align 1, !dbg !872, !tbaa !546
  br label %for.inc.i.i346, !dbg !873

if.then7.i.i341:                                  ; preds = %for.cond.i.i336
  %incdec.ptr8.i.i340 = getelementptr inbounds i8, ptr %rep.0.i.i335, i64 1, !dbg !874
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i340, metadata !611, metadata !DIExpression()) #14, !dbg !862
  store i8 46, ptr %rep.0.i.i335, align 1, !dbg !875, !tbaa !546
  br label %for.inc.i.i346, !dbg !876

if.else9.i.i343:                                  ; preds = %for.cond.i.i336
  %incdec.ptr10.i.i342 = getelementptr inbounds i8, ptr %rep.0.i.i335, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i342, metadata !611, metadata !DIExpression()) #14, !dbg !862
  store i8 %77, ptr %rep.0.i.i335, align 1, !dbg !878, !tbaa !546
  br label %for.inc.i.i346

for.inc.i.i346:                                   ; preds = %if.else9.i.i343, %if.then7.i.i341, %if.then.i.i339
  %rep.1.i.i344 = phi ptr [ %incdec.ptr3.i.i338, %if.then.i.i339 ], [ %incdec.ptr8.i.i340, %if.then7.i.i341 ], [ %incdec.ptr10.i.i342, %if.else9.i.i343 ], !dbg !879
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i344, metadata !611, metadata !DIExpression()) #14, !dbg !862
  %incdec.ptr12.i.i345 = getelementptr inbounds i8, ptr %aep.0.i.i334, i64 1, !dbg !880
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i345, metadata !610, metadata !DIExpression()) #14, !dbg !862
  br label %for.cond.i.i336, !dbg !881, !llvm.loop !882

aexpr2rexpr.exit.i352:                            ; preds = %for.cond.i.i336
  %incdec.ptr13.i.i347 = getelementptr inbounds i8, ptr %rep.0.i.i335, i64 1, !dbg !884
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i347, metadata !611, metadata !DIExpression()) #14, !dbg !862
  store i8 36, ptr %rep.0.i.i335, align 1, !dbg !885, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i347, align 1, !dbg !886, !tbaa !546
  %call.i348 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !887
  call void @llvm.dbg.value(metadata ptr undef, metadata !858, metadata !DIExpression()) #14, !dbg !860
  %sp.017.i350 = load ptr, ptr %m_strands.i, align 8, !dbg !888, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.017.i350, metadata !858, metadata !DIExpression()) #14, !dbg !860
  %tobool.not18.i351 = icmp eq ptr %sp.017.i350, null, !dbg !890
  br i1 %tobool.not18.i351, label %if.end38.i, label %for.body.i357, !dbg !890

for.body.i357:                                    ; preds = %aexpr2rexpr.exit.i352, %for.inc6.i377
  %sp.019.i353 = phi ptr [ %sp.0.i375, %for.inc6.i377 ], [ %sp.017.i350, %aexpr2rexpr.exit.i352 ]
  %s_attr.i354 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i353, i64 0, i32 2, !dbg !891
  %78 = load i32, ptr %s_attr.i354, align 4, !dbg !891, !tbaa !307
  %and.i355 = and i32 %78, 1, !dbg !895
  %tobool1.not.i356 = icmp eq i32 %and.i355, 0, !dbg !895
  br i1 %tobool1.not.i356, label %for.inc6.i377, label %for.cond2.preheader.i360, !dbg !896

for.cond2.preheader.i360:                         ; preds = %for.body.i357
  %s_nresidues.i358 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i353, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 0, metadata !857, metadata !DIExpression()) #14, !dbg !860
  %79 = load i32, ptr %s_nresidues.i358, align 8, !dbg !897, !tbaa !312
  %cmp15.i359 = icmp sgt i32 %79, 0, !dbg !901
  br i1 %cmp15.i359, label %for.body3.lr.ph.i362, label %for.inc6.i377, !dbg !902

for.body3.lr.ph.i362:                             ; preds = %for.cond2.preheader.i360
  %s_residues.i361 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i353, i64 0, i32 7
  br label %for.body3.i373, !dbg !902

for.body3.i373:                                   ; preds = %for.body3.i373, %for.body3.lr.ph.i362
  %indvars.iv.i363 = phi i64 [ 0, %for.body3.lr.ph.i362 ], [ %indvars.iv.next.i371, %for.body3.i373 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i363, metadata !857, metadata !DIExpression()) #14, !dbg !860
  %80 = load ptr, ptr %s_residues.i361, align 8, !dbg !903, !tbaa !318
  %arrayidx.i364 = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv.i363, !dbg !905
  %81 = load ptr, ptr %arrayidx.i364, align 8, !dbg !905, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %81, metadata !859, metadata !DIExpression()) #14, !dbg !860
  %r_resname.i365 = getelementptr inbounds %struct.residue_t, ptr %81, i64 0, i32 4, !dbg !906
  %82 = load ptr, ptr %r_resname.i365, align 8, !dbg !906, !tbaa !907
  %call4.i366 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %82, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !908
  %cmp5.i367 = icmp eq i32 %call4.i366, 0, !dbg !909
  %cond.i368 = zext i1 %cmp5.i367 to i32, !dbg !908
  %r_attr.i369 = getelementptr inbounds %struct.residue_t, ptr %81, i64 0, i32 6, !dbg !910
  %83 = load i32, ptr %r_attr.i369, align 8, !dbg !911, !tbaa !323
  %or.i370 = or i32 %83, %cond.i368, !dbg !911
  store i32 %or.i370, ptr %r_attr.i369, align 8, !dbg !911, !tbaa !323
  %indvars.iv.next.i371 = add nuw nsw i64 %indvars.iv.i363, 1, !dbg !912
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i371, metadata !857, metadata !DIExpression()) #14, !dbg !860
  %84 = load i32, ptr %s_nresidues.i358, align 8, !dbg !897, !tbaa !312
  %85 = sext i32 %84 to i64, !dbg !901
  %cmp.i372 = icmp slt i64 %indvars.iv.next.i371, %85, !dbg !901
  br i1 %cmp.i372, label %for.body3.i373, label %for.inc6.i377, !dbg !902, !llvm.loop !913

for.inc6.i377:                                    ; preds = %for.body3.i373, %for.cond2.preheader.i360, %for.body.i357
  %s_next.i374 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i353, i64 0, i32 4, !dbg !915
  call void @llvm.dbg.value(metadata ptr undef, metadata !858, metadata !DIExpression()) #14, !dbg !860
  %sp.0.i375 = load ptr, ptr %s_next.i374, align 8, !dbg !888, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i375, metadata !858, metadata !DIExpression()) #14, !dbg !860
  %tobool.not.i376 = icmp eq ptr %sp.0.i375, null, !dbg !890
  br i1 %tobool.not.i376, label %if.end38.i, label %for.body.i357, !dbg !890, !llvm.loop !916

if.else37.i:                                      ; preds = %if.then32.i
  %86 = load i32, ptr %lo.i, align 4, !dbg !918, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %86, metadata !553, metadata !DIExpression()) #14, !dbg !555
  %87 = load i32, ptr %hi.i, align 4, !dbg !919, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %87, metadata !554, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %mol, metadata !920, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata i32 %86, metadata !923, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata i32 %87, metadata !924, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !929
  %sp.025.i.i = load ptr, ptr %m_strands.i, align 8, !dbg !931, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.025.i.i, metadata !927, metadata !DIExpression()) #14, !dbg !929
  %tobool.not26.i.i = icmp eq ptr %sp.025.i.i, null, !dbg !933
  br i1 %tobool.not26.i.i, label %if.end38.i, label %for.body.lr.ph.i.i, !dbg !933

for.body.lr.ph.i.i:                               ; preds = %if.else37.i
  %cmp.i78.i = icmp eq i32 %87, -1
  br i1 %cmp.i78.i, label %for.body.us.preheader.i.i, label %for.body.preheader.i79.i, !dbg !934

for.body.preheader.i79.i:                         ; preds = %for.body.lr.ph.i.i
  %88 = sext i32 %87 to i64, !dbg !933
  %89 = sext i32 %86 to i64, !dbg !933
  br label %for.body.i81.i, !dbg !933

for.body.us.preheader.i.i:                        ; preds = %for.body.lr.ph.i.i
  %90 = sext i32 %86 to i64, !dbg !933
  br label %for.body.us.i.i, !dbg !933

for.body.us.i.i:                                  ; preds = %for.inc11.us.i.i, %for.body.us.preheader.i.i
  %sp.027.us.i.i = phi ptr [ %sp.0.us.i.i, %for.inc11.us.i.i ], [ %sp.025.i.i, %for.body.us.preheader.i.i ]
  %s_attr.us.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i.i, i64 0, i32 2, !dbg !939
  %91 = load i32, ptr %s_attr.us.i.i, align 4, !dbg !939, !tbaa !307
  %and.us.i.i = and i32 %91, 1, !dbg !940
  %tobool1.not.us.i.i = icmp eq i32 %and.us.i.i, 0, !dbg !940
  br i1 %tobool1.not.us.i.i, label %for.inc11.us.i.i, label %if.then.us.i.i, !dbg !941

if.then.us.i.i:                                   ; preds = %for.body.us.i.i
  %s_nresidues.us.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i.i, i64 0, i32 5, !dbg !942
  %92 = load i32, ptr %s_nresidues.us.i.i, align 8, !dbg !942, !tbaa !312
  call void @llvm.dbg.value(metadata i32 undef, metadata !926, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata i32 0, metadata !925, metadata !DIExpression()) #14, !dbg !929
  %cmp423.us.i.i = icmp sgt i32 %92, 0, !dbg !943
  br i1 %cmp423.us.i.i, label %for.body5.lr.ph.us.i.i, label %for.inc11.us.i.i, !dbg !946

for.body5.us.i.i:                                 ; preds = %for.body5.lr.ph.us.i.i, %for.inc.us.i.i
  %indvars.iv30.i.i = phi i64 [ 0, %for.body5.lr.ph.us.i.i ], [ %indvars.iv.next31.i.i, %for.inc.us.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv30.i.i, metadata !925, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata ptr undef, metadata !928, metadata !DIExpression()) #14, !dbg !929
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1, !dbg !947
  %cmp6.not.us.not.i.i = icmp slt i64 %indvars.iv.next31.i.i, %90, !dbg !950
  br i1 %cmp6.not.us.not.i.i, label %for.inc.us.i.i, label %if.then9.us.i.i, !dbg !951

if.then9.us.i.i:                                  ; preds = %for.body5.us.i.i
  %93 = load ptr, ptr %s_residues.us.i.i, align 8, !dbg !952, !tbaa !318
  %arrayidx.us.i.i = getelementptr inbounds ptr, ptr %93, i64 %indvars.iv30.i.i, !dbg !953
  %94 = load ptr, ptr %arrayidx.us.i.i, align 8, !dbg !953, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %94, metadata !928, metadata !DIExpression()) #14, !dbg !929
  %r_attr.us.i.i = getelementptr inbounds %struct.residue_t, ptr %94, i64 0, i32 6, !dbg !954
  %95 = load i32, ptr %r_attr.us.i.i, align 8, !dbg !955, !tbaa !323
  %or.us.i.i = or i32 %95, 1, !dbg !955
  store i32 %or.us.i.i, ptr %r_attr.us.i.i, align 8, !dbg !955, !tbaa !323
  br label %for.inc.us.i.i, !dbg !956

for.inc.us.i.i:                                   ; preds = %if.then9.us.i.i, %for.body5.us.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next31.i.i, metadata !925, metadata !DIExpression()) #14, !dbg !929
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count33.i.i, !dbg !943
  br i1 %exitcond34.not.i.i, label %for.inc11.us.i.i, label %for.body5.us.i.i, !dbg !946, !llvm.loop !957

for.inc11.us.i.i:                                 ; preds = %for.inc.us.i.i, %if.then.us.i.i, %for.body.us.i.i
  %s_next.us.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i.i, i64 0, i32 4, !dbg !959
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !929
  %sp.0.us.i.i = load ptr, ptr %s_next.us.i.i, align 8, !dbg !931, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.us.i.i, metadata !927, metadata !DIExpression()) #14, !dbg !929
  %tobool.not.us.i.i = icmp eq ptr %sp.0.us.i.i, null, !dbg !933
  br i1 %tobool.not.us.i.i, label %if.end38.i, label %for.body.us.i.i, !dbg !933, !llvm.loop !960

for.body5.lr.ph.us.i.i:                           ; preds = %if.then.us.i.i
  %s_residues.us.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i.i, i64 0, i32 7
  %wide.trip.count33.i.i = zext i32 %92 to i64, !dbg !943
  br label %for.body5.us.i.i, !dbg !946

for.body.i81.i:                                   ; preds = %for.inc11.i.i, %for.body.preheader.i79.i
  %sp.027.i.i = phi ptr [ %sp.0.i87.i, %for.inc11.i.i ], [ %sp.025.i.i, %for.body.preheader.i79.i ]
  %s_attr.i80.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i.i, i64 0, i32 2, !dbg !939
  %96 = load i32, ptr %s_attr.i80.i, align 4, !dbg !939, !tbaa !307
  %and.i.i = and i32 %96, 1, !dbg !940
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !940
  br i1 %tobool1.not.i.i, label %for.inc11.i.i, label %if.then.i.i, !dbg !941

if.then.i.i:                                      ; preds = %for.body.i81.i
  call void @llvm.dbg.value(metadata i32 %87, metadata !926, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata i32 0, metadata !925, metadata !DIExpression()) #14, !dbg !929
  %s_nresidues3.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i.i, i64 0, i32 5
  %97 = load i32, ptr %s_nresidues3.i.i, align 8, !tbaa !312
  %cmp423.i.i = icmp sgt i32 %97, 0, !dbg !943
  br i1 %cmp423.i.i, label %for.body5.lr.ph.i.i, label %for.inc11.i.i, !dbg !946

for.body5.lr.ph.i.i:                              ; preds = %if.then.i.i
  %s_residues.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i.i, i64 0, i32 7
  %wide.trip.count.i.i = zext i32 %97 to i64, !dbg !943
  br label %for.body5.i.i, !dbg !946

for.body5.i.i:                                    ; preds = %for.inc.i85.i, %for.body5.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body5.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i85.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !925, metadata !DIExpression()) #14, !dbg !929
  call void @llvm.dbg.value(metadata ptr undef, metadata !928, metadata !DIExpression()) #14, !dbg !929
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !947
  %cmp6.not.i.i = icmp sge i64 %indvars.iv.next.i.i, %89, !dbg !950
  %cmp8.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %88
  %or.cond.i82.i = and i1 %cmp8.not.not.i.i, %cmp6.not.i.i, !dbg !951
  br i1 %or.cond.i82.i, label %if.then9.i.i, label %for.inc.i85.i, !dbg !951

if.then9.i.i:                                     ; preds = %for.body5.i.i
  %98 = load ptr, ptr %s_residues.i.i, align 8, !dbg !952, !tbaa !318
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %98, i64 %indvars.iv.i.i, !dbg !953
  %99 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !953, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %99, metadata !928, metadata !DIExpression()) #14, !dbg !929
  %r_attr.i.i = getelementptr inbounds %struct.residue_t, ptr %99, i64 0, i32 6, !dbg !954
  %100 = load i32, ptr %r_attr.i.i, align 8, !dbg !955, !tbaa !323
  %or.i83.i = or i32 %100, 1, !dbg !955
  store i32 %or.i83.i, ptr %r_attr.i.i, align 8, !dbg !955, !tbaa !323
  br label %for.inc.i85.i, !dbg !956

for.inc.i85.i:                                    ; preds = %if.then9.i.i, %for.body5.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !925, metadata !DIExpression()) #14, !dbg !929
  %exitcond.not.i84.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !943
  br i1 %exitcond.not.i84.i, label %for.inc11.i.i, label %for.body5.i.i, !dbg !946, !llvm.loop !962

for.inc11.i.i:                                    ; preds = %for.inc.i85.i, %if.then.i.i, %for.body.i81.i
  %s_next.i86.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i.i, i64 0, i32 4, !dbg !959
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !929
  %sp.0.i87.i = load ptr, ptr %s_next.i86.i, align 8, !dbg !931, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i87.i, metadata !927, metadata !DIExpression()) #14, !dbg !929
  %tobool.not.i88.i = icmp eq ptr %sp.0.i87.i, null, !dbg !933
  br i1 %tobool.not.i88.i, label %if.end38.i, label %for.body.i81.i, !dbg !933, !llvm.loop !963

if.end38.i:                                       ; preds = %for.inc6.i377, %for.inc11.i.i, %for.inc11.us.i.i, %aexpr2rexpr.exit.i352, %if.else37.i
  %call40188.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !964
  call void @llvm.dbg.value(metadata ptr %call40188.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  %tobool41.not189.i = icmp eq ptr %call40188.i, null, !dbg !965
  br i1 %tobool41.not189.i, label %if.end50.i, label %while.body42.i.preheader, !dbg !965

while.body42.i.preheader:                         ; preds = %if.end38.i
  %call.i266 = tail call ptr @__ctype_b_loc() #15, !dbg !396
  br label %while.body42.i, !dbg !965

while.body42.i:                                   ; preds = %while.body42.i.preheader, %if.end47.i
  %call40190.i = phi ptr [ %call40.i, %if.end47.i ], [ %call40188.i, %while.body42.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !553, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !554, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %call40190.i, metadata !694, metadata !DIExpression()) #14, !dbg !966
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !700, metadata !DIExpression()) #14, !dbg !966
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !701, metadata !DIExpression()) #14, !dbg !966
  %101 = load ptr, ptr %call.i266, align 8, !dbg !970, !tbaa !298
  %102 = load i8, ptr %call40190.i, align 1, !dbg !970, !tbaa !546
  %idxprom.i267 = sext i8 %102 to i64, !dbg !970
  %arrayidx.i268 = getelementptr inbounds i16, ptr %101, i64 %idxprom.i267, !dbg !970
  %103 = load i16, ptr %arrayidx.i268, align 2, !dbg !970, !tbaa !710
  %104 = and i16 %103, 2048, !dbg !970
  %tobool.not.i269 = icmp ne i16 %104, 0, !dbg !970
  %cmp.not.i270 = icmp eq i8 %102, 45
  %or.cond.i271 = select i1 %tobool.not.i269, i1 true, i1 %cmp.not.i270, !dbg !971
  br i1 %or.cond.i271, label %if.end.i273, label %if.then45.i, !dbg !971

if.end.i273:                                      ; preds = %while.body42.i
  %tobool10.not.i272 = icmp eq i16 %104, 0, !dbg !972
  br i1 %tobool10.not.i272, label %if.else59.i313, label %for.body.i284, !dbg !973

for.body.i284:                                    ; preds = %if.end.i273, %for.body.i284
  %105 = phi i8 [ %106, %for.body.i284 ], [ %102, %if.end.i273 ]
  %ip.0131.i274 = phi ptr [ %incdec.ptr.i280, %for.body.i284 ], [ %call40190.i, %if.end.i273 ]
  %val.0130.i275 = phi i32 [ %sub.i279, %for.body.i284 ], [ 0, %if.end.i273 ]
  call void @llvm.dbg.value(metadata ptr %ip.0131.i274, metadata !703, metadata !DIExpression()) #14, !dbg !966
  call void @llvm.dbg.value(metadata i32 %val.0130.i275, metadata !702, metadata !DIExpression()) #14, !dbg !966
  %conv13.i276 = sext i8 %105 to i32, !dbg !974
  %mul.i277 = mul nsw i32 %val.0130.i275, 10, !dbg !975
  %add.i278 = add nsw i32 %conv13.i276, -48, !dbg !976
  %sub.i279 = add i32 %add.i278, %mul.i277, !dbg !977
  call void @llvm.dbg.value(metadata i32 %sub.i279, metadata !702, metadata !DIExpression()) #14, !dbg !966
  %incdec.ptr.i280 = getelementptr inbounds i8, ptr %ip.0131.i274, i64 1, !dbg !978
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i280, metadata !703, metadata !DIExpression()) #14, !dbg !966
  %106 = load i8, ptr %incdec.ptr.i280, align 1, !dbg !974, !tbaa !546
  %idxprom14.i281 = sext i8 %106 to i64, !dbg !974
  %arrayidx15.i282 = getelementptr inbounds i16, ptr %101, i64 %idxprom14.i281, !dbg !974
  %107 = load i16, ptr %arrayidx15.i282, align 2, !dbg !974, !tbaa !710
  %108 = and i16 %107, 2048, !dbg !974
  %tobool18.not.i283 = icmp eq i16 %108, 0, !dbg !979
  br i1 %tobool18.not.i283, label %for.end.i285, label %for.body.i284, !dbg !979, !llvm.loop !980

for.end.i285:                                     ; preds = %for.body.i284
  store i32 %sub.i279, ptr %lo.i, align 4, !dbg !982, !tbaa !659
  switch i8 %106, label %if.end28.i292 [
    i8 0, label %if.then21.i286
    i8 45, label %if.then25.i289
  ], !dbg !983

if.then21.i286:                                   ; preds = %for.end.i285
  store i32 %sub.i279, ptr %hi.i, align 4, !dbg !984, !tbaa !659
  br label %if.else46.i, !dbg !985

if.then25.i289:                                   ; preds = %for.end.i285
  %incdec.ptr26.i287 = getelementptr inbounds i8, ptr %ip.0131.i274, i64 2, !dbg !986
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26.i287, metadata !703, metadata !DIExpression()) #14, !dbg !966
  %.pr.i288 = load i8, ptr %incdec.ptr26.i287, align 1, !dbg !987, !tbaa !546
  br label %if.end28.i292, !dbg !988

if.end28.i292:                                    ; preds = %if.then25.i289, %for.end.i285
  %109 = phi i8 [ %106, %for.end.i285 ], [ %.pr.i288, %if.then25.i289 ], !dbg !987
  %ip.1.i290 = phi ptr [ %incdec.ptr.i280, %for.end.i285 ], [ %incdec.ptr26.i287, %if.then25.i289 ], !dbg !989
  call void @llvm.dbg.value(metadata ptr %ip.1.i290, metadata !703, metadata !DIExpression()) #14, !dbg !966
  %tobool29.not.i291 = icmp eq i8 %109, 0, !dbg !987
  br i1 %tobool29.not.i291, label %if.then30.i293, label %if.else31.i297, !dbg !990

if.then30.i293:                                   ; preds = %if.end28.i292
  store i32 -1, ptr %hi.i, align 4, !dbg !991, !tbaa !659
  br label %if.else46.i, !dbg !993

if.else31.i297:                                   ; preds = %if.end28.i292
  %idxprom34.i294 = sext i8 %109 to i64, !dbg !994
  %arrayidx35.i295 = getelementptr inbounds i16, ptr %101, i64 %idxprom34.i294, !dbg !994
  %110 = load i16, ptr %arrayidx35.i295, align 2, !dbg !994, !tbaa !710
  %111 = and i16 %110, 2048, !dbg !994
  %tobool38.not.i296 = icmp eq i16 %111, 0, !dbg !994
  br i1 %tobool38.not.i296, label %if.then45.i, label %for.body50.i308, !dbg !995

for.body50.i308:                                  ; preds = %if.else31.i297, %for.body50.i308
  %112 = phi i8 [ %113, %for.body50.i308 ], [ %109, %if.else31.i297 ]
  %ip.2137.i298 = phi ptr [ %incdec.ptr56.i304, %for.body50.i308 ], [ %ip.1.i290, %if.else31.i297 ]
  %val.1136.i299 = phi i32 [ %sub54.i303, %for.body50.i308 ], [ 0, %if.else31.i297 ]
  call void @llvm.dbg.value(metadata ptr %ip.2137.i298, metadata !703, metadata !DIExpression()) #14, !dbg !966
  call void @llvm.dbg.value(metadata i32 %val.1136.i299, metadata !702, metadata !DIExpression()) #14, !dbg !966
  %conv44.i300 = sext i8 %112 to i32, !dbg !996
  %mul51.i301 = mul nsw i32 %val.1136.i299, 10, !dbg !997
  %add53.i302 = add nsw i32 %conv44.i300, -48, !dbg !998
  %sub54.i303 = add i32 %add53.i302, %mul51.i301, !dbg !999
  call void @llvm.dbg.value(metadata i32 %sub54.i303, metadata !702, metadata !DIExpression()) #14, !dbg !966
  %incdec.ptr56.i304 = getelementptr inbounds i8, ptr %ip.2137.i298, i64 1, !dbg !1000
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56.i304, metadata !703, metadata !DIExpression()) #14, !dbg !966
  %113 = load i8, ptr %incdec.ptr56.i304, align 1, !dbg !996, !tbaa !546
  %idxprom45.i305 = sext i8 %113 to i64, !dbg !996
  %arrayidx46.i306 = getelementptr inbounds i16, ptr %101, i64 %idxprom45.i305, !dbg !996
  %114 = load i16, ptr %arrayidx46.i306, align 2, !dbg !996, !tbaa !710
  %115 = and i16 %114, 2048, !dbg !996
  %tobool49.not.i307 = icmp eq i16 %115, 0, !dbg !1001
  br i1 %tobool49.not.i307, label %is_pattern.exit333, label %for.body50.i308, !dbg !1001, !llvm.loop !1002

if.else59.i313:                                   ; preds = %if.end.i273
  store i32 1, ptr %lo.i, align 4, !dbg !1004, !tbaa !659
  %arrayidx60.i311 = getelementptr inbounds i8, ptr %call40190.i, i64 1, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %arrayidx60.i311, metadata !703, metadata !DIExpression()) #14, !dbg !966
  %116 = load i8, ptr %arrayidx60.i311, align 1, !dbg !1006, !tbaa !546
  %tobool62.not.i312 = icmp eq i8 %116, 0, !dbg !1006
  br i1 %tobool62.not.i312, label %if.then63.i314, label %if.else64.i318, !dbg !1007

if.then63.i314:                                   ; preds = %if.else59.i313
  store i32 -1, ptr %hi.i, align 4, !dbg !1008, !tbaa !659
  br label %if.else46.i, !dbg !1010

if.else64.i318:                                   ; preds = %if.else59.i313
  %idxprom67.i315 = sext i8 %116 to i64, !dbg !1011
  %arrayidx68.i316 = getelementptr inbounds i16, ptr %101, i64 %idxprom67.i315, !dbg !1011
  %117 = load i16, ptr %arrayidx68.i316, align 2, !dbg !1011, !tbaa !710
  %118 = and i16 %117, 2048, !dbg !1011
  %tobool71.not.i317 = icmp eq i16 %118, 0, !dbg !1011
  br i1 %tobool71.not.i317, label %if.else64.i318.if.else46.ithread-pre-split_crit_edge, label %for.body81.i329, !dbg !1012

if.else64.i318.if.else46.ithread-pre-split_crit_edge: ; preds = %if.else64.i318
  %.pr.pre = load i32, ptr %hi.i, align 4, !dbg !1013, !tbaa !659
  br label %if.else46.i, !dbg !1012

for.body81.i329:                                  ; preds = %if.else64.i318, %for.body81.i329
  %119 = phi i8 [ %120, %for.body81.i329 ], [ %116, %if.else64.i318 ]
  %ip.3144.i319 = phi ptr [ %incdec.ptr87.i325, %for.body81.i329 ], [ %arrayidx60.i311, %if.else64.i318 ]
  %val.2143.i320 = phi i32 [ %sub85.i324, %for.body81.i329 ], [ 0, %if.else64.i318 ]
  call void @llvm.dbg.value(metadata ptr %ip.3144.i319, metadata !703, metadata !DIExpression()) #14, !dbg !966
  call void @llvm.dbg.value(metadata i32 %val.2143.i320, metadata !702, metadata !DIExpression()) #14, !dbg !966
  %conv75.i321 = sext i8 %119 to i32, !dbg !1014
  %mul82.i322 = mul nsw i32 %val.2143.i320, 10, !dbg !1015
  %add84.i323 = add nsw i32 %conv75.i321, -48, !dbg !1016
  %sub85.i324 = add i32 %add84.i323, %mul82.i322, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %sub85.i324, metadata !702, metadata !DIExpression()) #14, !dbg !966
  %incdec.ptr87.i325 = getelementptr inbounds i8, ptr %ip.3144.i319, i64 1, !dbg !1018
  call void @llvm.dbg.value(metadata ptr %incdec.ptr87.i325, metadata !703, metadata !DIExpression()) #14, !dbg !966
  %120 = load i8, ptr %incdec.ptr87.i325, align 1, !dbg !1014, !tbaa !546
  %idxprom76.i326 = sext i8 %120 to i64, !dbg !1014
  %arrayidx77.i327 = getelementptr inbounds i16, ptr %101, i64 %idxprom76.i326, !dbg !1014
  %121 = load i16, ptr %arrayidx77.i327, align 2, !dbg !1014, !tbaa !710
  %122 = and i16 %121, 2048, !dbg !1014
  %tobool80.not.i328 = icmp eq i16 %122, 0, !dbg !1019
  br i1 %tobool80.not.i328, label %is_pattern.exit333, label %for.body81.i329, !dbg !1019, !llvm.loop !1020

is_pattern.exit333:                               ; preds = %for.body50.i308, %for.body81.i329
  %123 = phi i32 [ 1, %for.body81.i329 ], [ %sub.i279, %for.body50.i308 ]
  %storemerge465 = phi i32 [ %sub85.i324, %for.body81.i329 ], [ %sub54.i303, %for.body50.i308 ], !dbg !966
  %retval.0.i332.in.in = phi ptr [ %incdec.ptr87.i325, %for.body81.i329 ], [ %incdec.ptr56.i304, %for.body50.i308 ]
  store i32 %storemerge465, ptr %hi.i, align 4, !dbg !966, !tbaa !659
  %retval.0.i332.in = load i8, ptr %retval.0.i332.in.in, align 1, !dbg !966, !tbaa !546
  %tobool44.not.i = icmp eq i8 %retval.0.i332.in, 0, !dbg !1022
  br i1 %tobool44.not.i, label %if.else46.i, label %if.then45.i, !dbg !1023

if.then45.i:                                      ; preds = %if.else31.i297, %while.body42.i, %is_pattern.exit333
  call void @llvm.dbg.value(metadata ptr %mol, metadata !853, metadata !DIExpression()) #14, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %call40190.i, metadata !856, metadata !DIExpression()) #14, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %call40190.i, metadata !604, metadata !DIExpression()) #14, !dbg !1026
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1026
  store i8 94, ptr @rexpr, align 16, !dbg !1028, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call40190.i, metadata !610, metadata !DIExpression()) #14, !dbg !1026
  br label %for.cond.i.i232, !dbg !1029

for.cond.i.i232:                                  ; preds = %for.inc.i.i242, %if.then45.i
  %aep.0.i.i230 = phi ptr [ %call40190.i, %if.then45.i ], [ %incdec.ptr12.i.i241, %for.inc.i.i242 ], !dbg !1030
  %rep.0.i.i231 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then45.i ], [ %rep.1.i.i240, %for.inc.i.i242 ], !dbg !1026
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i231, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i230, metadata !610, metadata !DIExpression()) #14, !dbg !1026
  %124 = load i8, ptr %aep.0.i.i230, align 1, !dbg !1031, !tbaa !546
  switch i8 %124, label %if.else9.i.i239 [
    i8 0, label %aexpr2rexpr.exit.i246
    i8 42, label %if.then.i.i235
    i8 63, label %if.then7.i.i237
  ], !dbg !1032

if.then.i.i235:                                   ; preds = %for.cond.i.i232
  %incdec.ptr2.i.i233 = getelementptr inbounds i8, ptr %rep.0.i.i231, i64 1, !dbg !1033
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i233, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  store i8 46, ptr %rep.0.i.i231, align 1, !dbg !1034, !tbaa !546
  %incdec.ptr3.i.i234 = getelementptr inbounds i8, ptr %rep.0.i.i231, i64 2, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i234, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  store i8 42, ptr %incdec.ptr2.i.i233, align 1, !dbg !1036, !tbaa !546
  br label %for.inc.i.i242, !dbg !1037

if.then7.i.i237:                                  ; preds = %for.cond.i.i232
  %incdec.ptr8.i.i236 = getelementptr inbounds i8, ptr %rep.0.i.i231, i64 1, !dbg !1038
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i236, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  store i8 46, ptr %rep.0.i.i231, align 1, !dbg !1039, !tbaa !546
  br label %for.inc.i.i242, !dbg !1040

if.else9.i.i239:                                  ; preds = %for.cond.i.i232
  %incdec.ptr10.i.i238 = getelementptr inbounds i8, ptr %rep.0.i.i231, i64 1, !dbg !1041
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i238, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  store i8 %124, ptr %rep.0.i.i231, align 1, !dbg !1042, !tbaa !546
  br label %for.inc.i.i242

for.inc.i.i242:                                   ; preds = %if.else9.i.i239, %if.then7.i.i237, %if.then.i.i235
  %rep.1.i.i240 = phi ptr [ %incdec.ptr3.i.i234, %if.then.i.i235 ], [ %incdec.ptr8.i.i236, %if.then7.i.i237 ], [ %incdec.ptr10.i.i238, %if.else9.i.i239 ], !dbg !1043
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i240, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  %incdec.ptr12.i.i241 = getelementptr inbounds i8, ptr %aep.0.i.i230, i64 1, !dbg !1044
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i241, metadata !610, metadata !DIExpression()) #14, !dbg !1026
  br label %for.cond.i.i232, !dbg !1045, !llvm.loop !1046

aexpr2rexpr.exit.i246:                            ; preds = %for.cond.i.i232
  %incdec.ptr13.i.i243 = getelementptr inbounds i8, ptr %rep.0.i.i231, i64 1, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i243, metadata !611, metadata !DIExpression()) #14, !dbg !1026
  store i8 36, ptr %rep.0.i.i231, align 1, !dbg !1049, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i243, align 1, !dbg !1050, !tbaa !546
  %call.i244 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1051
  call void @llvm.dbg.value(metadata ptr undef, metadata !858, metadata !DIExpression()) #14, !dbg !1024
  %sp.017.i = load ptr, ptr %m_strands.i, align 8, !dbg !1052, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.017.i, metadata !858, metadata !DIExpression()) #14, !dbg !1024
  %tobool.not18.i = icmp eq ptr %sp.017.i, null, !dbg !1053
  br i1 %tobool.not18.i, label %if.end47.i, label %for.body.i250, !dbg !1053

for.body.i250:                                    ; preds = %aexpr2rexpr.exit.i246, %for.inc6.i
  %sp.019.i = phi ptr [ %sp.0.i264, %for.inc6.i ], [ %sp.017.i, %aexpr2rexpr.exit.i246 ]
  %s_attr.i247 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i, i64 0, i32 2, !dbg !1054
  %125 = load i32, ptr %s_attr.i247, align 4, !dbg !1054, !tbaa !307
  %and.i248 = and i32 %125, 1, !dbg !1055
  %tobool1.not.i249 = icmp eq i32 %and.i248, 0, !dbg !1055
  br i1 %tobool1.not.i249, label %for.inc6.i, label %for.cond2.preheader.i252, !dbg !1056

for.cond2.preheader.i252:                         ; preds = %for.body.i250
  %s_nresidues.i251 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 0, metadata !857, metadata !DIExpression()) #14, !dbg !1024
  %126 = load i32, ptr %s_nresidues.i251, align 8, !dbg !1057, !tbaa !312
  %cmp15.i = icmp sgt i32 %126, 0, !dbg !1058
  br i1 %cmp15.i, label %for.body3.lr.ph.i254, label %for.inc6.i, !dbg !1059

for.body3.lr.ph.i254:                             ; preds = %for.cond2.preheader.i252
  %s_residues.i253 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i, i64 0, i32 7
  br label %for.body3.i262, !dbg !1059

for.body3.i262:                                   ; preds = %for.body3.i262, %for.body3.lr.ph.i254
  %indvars.iv.i255 = phi i64 [ 0, %for.body3.lr.ph.i254 ], [ %indvars.iv.next.i260, %for.body3.i262 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i255, metadata !857, metadata !DIExpression()) #14, !dbg !1024
  %127 = load ptr, ptr %s_residues.i253, align 8, !dbg !1060, !tbaa !318
  %arrayidx.i256 = getelementptr inbounds ptr, ptr %127, i64 %indvars.iv.i255, !dbg !1061
  %128 = load ptr, ptr %arrayidx.i256, align 8, !dbg !1061, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %128, metadata !859, metadata !DIExpression()) #14, !dbg !1024
  %r_resname.i = getelementptr inbounds %struct.residue_t, ptr %128, i64 0, i32 4, !dbg !1062
  %129 = load ptr, ptr %r_resname.i, align 8, !dbg !1062, !tbaa !907
  %call4.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %129, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1063
  %cmp5.i = icmp eq i32 %call4.i, 0, !dbg !1064
  %cond.i257 = zext i1 %cmp5.i to i32, !dbg !1063
  %r_attr.i258 = getelementptr inbounds %struct.residue_t, ptr %128, i64 0, i32 6, !dbg !1065
  %130 = load i32, ptr %r_attr.i258, align 8, !dbg !1066, !tbaa !323
  %or.i259 = or i32 %130, %cond.i257, !dbg !1066
  store i32 %or.i259, ptr %r_attr.i258, align 8, !dbg !1066, !tbaa !323
  %indvars.iv.next.i260 = add nuw nsw i64 %indvars.iv.i255, 1, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i260, metadata !857, metadata !DIExpression()) #14, !dbg !1024
  %131 = load i32, ptr %s_nresidues.i251, align 8, !dbg !1057, !tbaa !312
  %132 = sext i32 %131 to i64, !dbg !1058
  %cmp.i261 = icmp slt i64 %indvars.iv.next.i260, %132, !dbg !1058
  br i1 %cmp.i261, label %for.body3.i262, label %for.inc6.i, !dbg !1059, !llvm.loop !1068

for.inc6.i:                                       ; preds = %for.body3.i262, %for.cond2.preheader.i252, %for.body.i250
  %s_next.i263 = getelementptr inbounds %struct.strand_t, ptr %sp.019.i, i64 0, i32 4, !dbg !1070
  call void @llvm.dbg.value(metadata ptr undef, metadata !858, metadata !DIExpression()) #14, !dbg !1024
  %sp.0.i264 = load ptr, ptr %s_next.i263, align 8, !dbg !1052, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i264, metadata !858, metadata !DIExpression()) #14, !dbg !1024
  %tobool.not.i265 = icmp eq ptr %sp.0.i264, null, !dbg !1053
  br i1 %tobool.not.i265, label %if.end47.i, label %for.body.i250, !dbg !1053, !llvm.loop !1071

if.else46.i:                                      ; preds = %is_pattern.exit333, %if.else64.i318.if.else46.ithread-pre-split_crit_edge, %if.then63.i314, %if.then21.i286, %if.then30.i293
  %133 = phi i32 [ 1, %if.then63.i314 ], [ %sub.i279, %if.then21.i286 ], [ %sub.i279, %if.then30.i293 ], [ 1, %if.else64.i318.if.else46.ithread-pre-split_crit_edge ], [ %123, %is_pattern.exit333 ], !dbg !1073
  %134 = phi i32 [ -1, %if.then63.i314 ], [ %sub.i279, %if.then21.i286 ], [ -1, %if.then30.i293 ], [ %.pr.pre, %if.else64.i318.if.else46.ithread-pre-split_crit_edge ], [ %storemerge465, %is_pattern.exit333 ], !dbg !1013
  call void @llvm.dbg.value(metadata i32 %133, metadata !553, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata i32 %134, metadata !554, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %mol, metadata !920, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %133, metadata !923, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %134, metadata !924, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !1074
  %sp.025.i90.i = load ptr, ptr %m_strands.i, align 8, !dbg !1076, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.025.i90.i, metadata !927, metadata !DIExpression()) #14, !dbg !1074
  %tobool.not26.i91.i = icmp eq ptr %sp.025.i90.i, null, !dbg !1077
  br i1 %tobool.not26.i91.i, label %if.end47.i, label %for.body.lr.ph.i93.i, !dbg !1077

for.body.lr.ph.i93.i:                             ; preds = %if.else46.i
  %cmp.i92.i = icmp eq i32 %134, -1
  br i1 %cmp.i92.i, label %for.body.us.preheader.i95.i, label %for.body.preheader.i94.i, !dbg !1078

for.body.preheader.i94.i:                         ; preds = %for.body.lr.ph.i93.i
  %135 = sext i32 %134 to i64, !dbg !1077
  %136 = sext i32 %133 to i64, !dbg !1077
  br label %for.body.i125.i, !dbg !1077

for.body.us.preheader.i95.i:                      ; preds = %for.body.lr.ph.i93.i
  %137 = sext i32 %133 to i64, !dbg !1077
  br label %for.body.us.i100.i, !dbg !1077

for.body.us.i100.i:                               ; preds = %for.inc11.us.i117.i, %for.body.us.preheader.i95.i
  %sp.027.us.i96.i = phi ptr [ %sp.0.us.i115.i, %for.inc11.us.i117.i ], [ %sp.025.i90.i, %for.body.us.preheader.i95.i ]
  %s_attr.us.i97.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i96.i, i64 0, i32 2, !dbg !1079
  %138 = load i32, ptr %s_attr.us.i97.i, align 4, !dbg !1079, !tbaa !307
  %and.us.i98.i = and i32 %138, 1, !dbg !1080
  %tobool1.not.us.i99.i = icmp eq i32 %and.us.i98.i, 0, !dbg !1080
  br i1 %tobool1.not.us.i99.i, label %for.inc11.us.i117.i, label %if.then.us.i103.i, !dbg !1081

if.then.us.i103.i:                                ; preds = %for.body.us.i100.i
  %s_nresidues.us.i101.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i96.i, i64 0, i32 5, !dbg !1082
  %139 = load i32, ptr %s_nresidues.us.i101.i, align 8, !dbg !1082, !tbaa !312
  call void @llvm.dbg.value(metadata i32 undef, metadata !926, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata i32 0, metadata !925, metadata !DIExpression()) #14, !dbg !1074
  %cmp423.us.i102.i = icmp sgt i32 %139, 0, !dbg !1083
  br i1 %cmp423.us.i102.i, label %for.body5.lr.ph.us.i120.i, label %for.inc11.us.i117.i, !dbg !1084

for.body5.us.i107.i:                              ; preds = %for.body5.lr.ph.us.i120.i, %for.inc.us.i113.i
  %indvars.iv30.i104.i = phi i64 [ 0, %for.body5.lr.ph.us.i120.i ], [ %indvars.iv.next31.i105.i, %for.inc.us.i113.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv30.i104.i, metadata !925, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata ptr undef, metadata !928, metadata !DIExpression()) #14, !dbg !1074
  %indvars.iv.next31.i105.i = add nuw nsw i64 %indvars.iv30.i104.i, 1, !dbg !1085
  %cmp6.not.us.not.i106.i = icmp slt i64 %indvars.iv.next31.i105.i, %137, !dbg !1086
  br i1 %cmp6.not.us.not.i106.i, label %for.inc.us.i113.i, label %if.then9.us.i111.i, !dbg !1087

if.then9.us.i111.i:                               ; preds = %for.body5.us.i107.i
  %140 = load ptr, ptr %s_residues.us.i118.i, align 8, !dbg !1088, !tbaa !318
  %arrayidx.us.i108.i = getelementptr inbounds ptr, ptr %140, i64 %indvars.iv30.i104.i, !dbg !1089
  %141 = load ptr, ptr %arrayidx.us.i108.i, align 8, !dbg !1089, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %141, metadata !928, metadata !DIExpression()) #14, !dbg !1074
  %r_attr.us.i109.i = getelementptr inbounds %struct.residue_t, ptr %141, i64 0, i32 6, !dbg !1090
  %142 = load i32, ptr %r_attr.us.i109.i, align 8, !dbg !1091, !tbaa !323
  %or.us.i110.i = or i32 %142, 1, !dbg !1091
  store i32 %or.us.i110.i, ptr %r_attr.us.i109.i, align 8, !dbg !1091, !tbaa !323
  br label %for.inc.us.i113.i, !dbg !1092

for.inc.us.i113.i:                                ; preds = %if.then9.us.i111.i, %for.body5.us.i107.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next31.i105.i, metadata !925, metadata !DIExpression()) #14, !dbg !1074
  %exitcond34.not.i112.i = icmp eq i64 %indvars.iv.next31.i105.i, %wide.trip.count33.i119.i, !dbg !1083
  br i1 %exitcond34.not.i112.i, label %for.inc11.us.i117.i, label %for.body5.us.i107.i, !dbg !1084, !llvm.loop !1093

for.inc11.us.i117.i:                              ; preds = %for.inc.us.i113.i, %if.then.us.i103.i, %for.body.us.i100.i
  %s_next.us.i114.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i96.i, i64 0, i32 4, !dbg !1095
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !1074
  %sp.0.us.i115.i = load ptr, ptr %s_next.us.i114.i, align 8, !dbg !1076, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.us.i115.i, metadata !927, metadata !DIExpression()) #14, !dbg !1074
  %tobool.not.us.i116.i = icmp eq ptr %sp.0.us.i115.i, null, !dbg !1077
  br i1 %tobool.not.us.i116.i, label %if.end47.i, label %for.body.us.i100.i, !dbg !1077, !llvm.loop !1096

for.body5.lr.ph.us.i120.i:                        ; preds = %if.then.us.i103.i
  %s_residues.us.i118.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i96.i, i64 0, i32 7
  %wide.trip.count33.i119.i = zext i32 %139 to i64, !dbg !1083
  br label %for.body5.us.i107.i, !dbg !1084

for.body.i125.i:                                  ; preds = %for.inc11.i147.i, %for.body.preheader.i94.i
  %sp.027.i121.i = phi ptr [ %sp.0.i145.i, %for.inc11.i147.i ], [ %sp.025.i90.i, %for.body.preheader.i94.i ]
  %s_attr.i122.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i121.i, i64 0, i32 2, !dbg !1079
  %143 = load i32, ptr %s_attr.i122.i, align 4, !dbg !1079, !tbaa !307
  %and.i123.i = and i32 %143, 1, !dbg !1080
  %tobool1.not.i124.i = icmp eq i32 %and.i123.i, 0, !dbg !1080
  br i1 %tobool1.not.i124.i, label %for.inc11.i147.i, label %if.then.i128.i, !dbg !1081

if.then.i128.i:                                   ; preds = %for.body.i125.i
  call void @llvm.dbg.value(metadata i32 %134, metadata !926, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata i32 0, metadata !925, metadata !DIExpression()) #14, !dbg !1074
  %s_nresidues3.i126.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i121.i, i64 0, i32 5
  %144 = load i32, ptr %s_nresidues3.i126.i, align 8, !tbaa !312
  %cmp423.i127.i = icmp sgt i32 %144, 0, !dbg !1083
  br i1 %cmp423.i127.i, label %for.body5.lr.ph.i131.i, label %for.inc11.i147.i, !dbg !1084

for.body5.lr.ph.i131.i:                           ; preds = %if.then.i128.i
  %s_residues.i129.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i121.i, i64 0, i32 7
  %wide.trip.count.i130.i = zext i32 %144 to i64, !dbg !1083
  br label %for.body5.i137.i, !dbg !1084

for.body5.i137.i:                                 ; preds = %for.inc.i143.i, %for.body5.lr.ph.i131.i
  %indvars.iv.i132.i = phi i64 [ 0, %for.body5.lr.ph.i131.i ], [ %indvars.iv.next.i133.i, %for.inc.i143.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i132.i, metadata !925, metadata !DIExpression()) #14, !dbg !1074
  call void @llvm.dbg.value(metadata ptr undef, metadata !928, metadata !DIExpression()) #14, !dbg !1074
  %indvars.iv.next.i133.i = add nuw nsw i64 %indvars.iv.i132.i, 1, !dbg !1085
  %cmp6.not.i134.i = icmp sge i64 %indvars.iv.next.i133.i, %136, !dbg !1086
  %cmp8.not.not.i135.i = icmp slt i64 %indvars.iv.i132.i, %135
  %or.cond.i136.i = and i1 %cmp8.not.not.i135.i, %cmp6.not.i134.i, !dbg !1087
  br i1 %or.cond.i136.i, label %if.then9.i141.i, label %for.inc.i143.i, !dbg !1087

if.then9.i141.i:                                  ; preds = %for.body5.i137.i
  %145 = load ptr, ptr %s_residues.i129.i, align 8, !dbg !1088, !tbaa !318
  %arrayidx.i138.i = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv.i132.i, !dbg !1089
  %146 = load ptr, ptr %arrayidx.i138.i, align 8, !dbg !1089, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %146, metadata !928, metadata !DIExpression()) #14, !dbg !1074
  %r_attr.i139.i = getelementptr inbounds %struct.residue_t, ptr %146, i64 0, i32 6, !dbg !1090
  %147 = load i32, ptr %r_attr.i139.i, align 8, !dbg !1091, !tbaa !323
  %or.i140.i = or i32 %147, 1, !dbg !1091
  store i32 %or.i140.i, ptr %r_attr.i139.i, align 8, !dbg !1091, !tbaa !323
  br label %for.inc.i143.i, !dbg !1092

for.inc.i143.i:                                   ; preds = %if.then9.i141.i, %for.body5.i137.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i133.i, metadata !925, metadata !DIExpression()) #14, !dbg !1074
  %exitcond.not.i142.i = icmp eq i64 %indvars.iv.next.i133.i, %wide.trip.count.i130.i, !dbg !1083
  br i1 %exitcond.not.i142.i, label %for.inc11.i147.i, label %for.body5.i137.i, !dbg !1084, !llvm.loop !1098

for.inc11.i147.i:                                 ; preds = %for.inc.i143.i, %if.then.i128.i, %for.body.i125.i
  %s_next.i144.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.i121.i, i64 0, i32 4, !dbg !1095
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !1074
  %sp.0.i145.i = load ptr, ptr %s_next.i144.i, align 8, !dbg !1076, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i145.i, metadata !927, metadata !DIExpression()) #14, !dbg !1074
  %tobool.not.i146.i = icmp eq ptr %sp.0.i145.i, null, !dbg !1077
  br i1 %tobool.not.i146.i, label %if.end47.i, label %for.body.i125.i, !dbg !1077, !llvm.loop !1099

if.end47.i:                                       ; preds = %for.inc6.i, %for.inc11.i147.i, %for.inc11.us.i117.i, %aexpr2rexpr.exit.i246, %if.else46.i
  %call40.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !964
  call void @llvm.dbg.value(metadata ptr %call40.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  %tobool41.not.i = icmp eq ptr %call40.i, null, !dbg !965
  br i1 %tobool41.not.i, label %if.end50.i, label %while.body42.i, !dbg !965, !llvm.loop !1100

if.else49.i:                                      ; preds = %if.end30.i
  call void @llvm.dbg.value(metadata ptr %mol, metadata !920, metadata !DIExpression()) #14, !dbg !1102
  call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()) #14, !dbg !1102
  call void @llvm.dbg.value(metadata i32 -1, metadata !924, metadata !DIExpression()) #14, !dbg !1102
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !1102
  %sp.025.i150.i = load ptr, ptr %m_strands.i, align 8, !dbg !1104, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.025.i150.i, metadata !927, metadata !DIExpression()) #14, !dbg !1102
  %tobool.not26.i151.i = icmp eq ptr %sp.025.i150.i, null, !dbg !1105
  br i1 %tobool.not26.i151.i, label %if.end50.i, label %for.body.us.i158.i, !dbg !1105

for.body.us.i158.i:                               ; preds = %if.else49.i, %for.inc11.us.i174.i
  %sp.027.us.i154.i = phi ptr [ %sp.0.us.i172.i, %for.inc11.us.i174.i ], [ %sp.025.i150.i, %if.else49.i ]
  %s_attr.us.i155.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i154.i, i64 0, i32 2, !dbg !1106
  %148 = load i32, ptr %s_attr.us.i155.i, align 4, !dbg !1106, !tbaa !307
  %and.us.i156.i = and i32 %148, 1, !dbg !1107
  %tobool1.not.us.i157.i = icmp eq i32 %and.us.i156.i, 0, !dbg !1107
  br i1 %tobool1.not.us.i157.i, label %for.inc11.us.i174.i, label %if.then.us.i161.i, !dbg !1108

if.then.us.i161.i:                                ; preds = %for.body.us.i158.i
  %s_nresidues.us.i159.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i154.i, i64 0, i32 5, !dbg !1109
  %149 = load i32, ptr %s_nresidues.us.i159.i, align 8, !dbg !1109, !tbaa !312
  call void @llvm.dbg.value(metadata i32 undef, metadata !926, metadata !DIExpression()) #14, !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, metadata !925, metadata !DIExpression()) #14, !dbg !1102
  %cmp423.us.i160.i = icmp sgt i32 %149, 0, !dbg !1110
  br i1 %cmp423.us.i160.i, label %for.body5.lr.ph.us.i177.i, label %for.inc11.us.i174.i, !dbg !1111

for.body5.us.i164.i:                              ; preds = %for.body5.lr.ph.us.i177.i, %for.body5.us.i164.i
  %indvars.iv30.i162.i = phi i64 [ 0, %for.body5.lr.ph.us.i177.i ], [ %indvars.iv.next31.i163.i, %for.body5.us.i164.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv30.i162.i, metadata !925, metadata !DIExpression()) #14, !dbg !1102
  call void @llvm.dbg.value(metadata ptr undef, metadata !928, metadata !DIExpression()) #14, !dbg !1102
  %indvars.iv.next31.i163.i = add nuw nsw i64 %indvars.iv30.i162.i, 1, !dbg !1112
  %arrayidx.us.i165.i = getelementptr inbounds ptr, ptr %152, i64 %indvars.iv30.i162.i, !dbg !1113
  %150 = load ptr, ptr %arrayidx.us.i165.i, align 8, !dbg !1113, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %150, metadata !928, metadata !DIExpression()) #14, !dbg !1102
  %r_attr.us.i166.i = getelementptr inbounds %struct.residue_t, ptr %150, i64 0, i32 6, !dbg !1114
  %151 = load i32, ptr %r_attr.us.i166.i, align 8, !dbg !1115, !tbaa !323
  %or.us.i167.i = or i32 %151, 1, !dbg !1115
  store i32 %or.us.i167.i, ptr %r_attr.us.i166.i, align 8, !dbg !1115, !tbaa !323
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next31.i163.i, metadata !925, metadata !DIExpression()) #14, !dbg !1102
  %exitcond34.not.i169.i = icmp eq i64 %indvars.iv.next31.i163.i, %wide.trip.count33.i176.i, !dbg !1110
  br i1 %exitcond34.not.i169.i, label %for.inc11.us.i174.i, label %for.body5.us.i164.i, !dbg !1111, !llvm.loop !1116

for.inc11.us.i174.i:                              ; preds = %for.body5.us.i164.i, %if.then.us.i161.i, %for.body.us.i158.i
  %s_next.us.i171.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i154.i, i64 0, i32 4, !dbg !1118
  call void @llvm.dbg.value(metadata ptr undef, metadata !927, metadata !DIExpression()) #14, !dbg !1102
  %sp.0.us.i172.i = load ptr, ptr %s_next.us.i171.i, align 8, !dbg !1104, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.us.i172.i, metadata !927, metadata !DIExpression()) #14, !dbg !1102
  %tobool.not.us.i173.i = icmp eq ptr %sp.0.us.i172.i, null, !dbg !1105
  br i1 %tobool.not.us.i173.i, label %if.end50.i, label %for.body.us.i158.i, !dbg !1105, !llvm.loop !1119

for.body5.lr.ph.us.i177.i:                        ; preds = %if.then.us.i161.i
  %s_residues.us.i175.i = getelementptr inbounds %struct.strand_t, ptr %sp.027.us.i154.i, i64 0, i32 7
  %wide.trip.count33.i176.i = zext i32 %149 to i64, !dbg !1110
  %152 = load ptr, ptr %s_residues.us.i175.i, align 8, !tbaa !318
  br label %for.body5.us.i164.i, !dbg !1111

if.end50.i:                                       ; preds = %if.end47.i, %for.inc11.us.i174.i, %if.else49.i, %if.end38.i
  %153 = load ptr, ptr @apart, align 8, !dbg !1121, !tbaa !298
  %tobool51.not.i = icmp eq ptr %153, null, !dbg !1121
  br i1 %tobool51.not.i, label %if.else71.i, label %if.then52.i, !dbg !1123

if.then52.i:                                      ; preds = %if.end50.i
  %call53.i = tail call ptr @strtok(ptr noundef nonnull %153, ptr noundef nonnull @.str.4) #14, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %call53.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !553, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !554, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  %call54.i = call fastcc i32 @is_pattern(ptr noundef %call53.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1126
  %tobool55.not.i = icmp eq i32 %call54.i, 0, !dbg !1126
  br i1 %tobool55.not.i, label %if.else57.i, label %if.then56.i, !dbg !1128

if.then56.i:                                      ; preds = %if.then52.i
  tail call fastcc void @match_atom_pat(ptr noundef %mol, ptr noundef %call53.i) #14, !dbg !1129
  br label %if.end59.i, !dbg !1129

if.else57.i:                                      ; preds = %if.then52.i
  %154 = load ptr, ptr @stderr, align 8, !dbg !1130, !tbaa !298
  %155 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %154) #16, !dbg !1132
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else57.i, %if.then56.i
  %call61191.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1133
  call void @llvm.dbg.value(metadata ptr %call61191.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  %tobool62.not192.i = icmp eq ptr %call61191.i, null, !dbg !1134
  br i1 %tobool62.not192.i, label %eval_1_aexpr.exit, label %while.body63.i.preheader, !dbg !1134

while.body63.i.preheader:                         ; preds = %if.end59.i
  %call.i221 = tail call ptr @__ctype_b_loc() #15, !dbg !396
  br label %while.body63.i, !dbg !1134

while.body63.i:                                   ; preds = %while.body63.i.preheader, %if.end69.i
  %call61193.i = phi ptr [ %call61.i, %if.end69.i ], [ %call61191.i, %while.body63.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !553, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !554, metadata !DIExpression(DW_OP_deref)) #14, !dbg !555
  call void @llvm.dbg.value(metadata ptr %call61193.i, metadata !694, metadata !DIExpression()) #14, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !700, metadata !DIExpression()) #14, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !701, metadata !DIExpression()) #14, !dbg !1135
  %156 = load ptr, ptr %call.i221, align 8, !dbg !1139, !tbaa !298
  %157 = load i8, ptr %call61193.i, align 1, !dbg !1139, !tbaa !546
  %idxprom.i = sext i8 %157 to i64, !dbg !1139
  %arrayidx.i222 = getelementptr inbounds i16, ptr %156, i64 %idxprom.i, !dbg !1139
  %158 = load i16, ptr %arrayidx.i222, align 2, !dbg !1139, !tbaa !710
  %159 = and i16 %158, 2048, !dbg !1139
  %tobool.not.i223 = icmp ne i16 %159, 0, !dbg !1139
  %cmp.not.i = icmp eq i8 %157, 45
  %or.cond.i = select i1 %tobool.not.i223, i1 true, i1 %cmp.not.i, !dbg !1140
  br i1 %or.cond.i, label %if.end.i224, label %if.then66.i, !dbg !1140

if.end.i224:                                      ; preds = %while.body63.i
  %tobool10.not.i = icmp eq i16 %159, 0, !dbg !1141
  br i1 %tobool10.not.i, label %if.else59.i, label %for.body.i227, !dbg !1142

for.body.i227:                                    ; preds = %if.end.i224, %for.body.i227
  %160 = phi i8 [ %161, %for.body.i227 ], [ %157, %if.end.i224 ]
  %ip.0131.i = phi ptr [ %incdec.ptr.i, %for.body.i227 ], [ %call61193.i, %if.end.i224 ]
  %val.0130.i = phi i32 [ %sub.i, %for.body.i227 ], [ 0, %if.end.i224 ]
  call void @llvm.dbg.value(metadata ptr %ip.0131.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %val.0130.i, metadata !702, metadata !DIExpression()) #14, !dbg !1135
  %conv13.i = sext i8 %160 to i32, !dbg !1143
  %mul.i = mul nsw i32 %val.0130.i, 10, !dbg !1144
  %add.i225 = add nsw i32 %conv13.i, -48, !dbg !1145
  %sub.i = add i32 %add.i225, %mul.i, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !702, metadata !DIExpression()) #14, !dbg !1135
  %incdec.ptr.i = getelementptr inbounds i8, ptr %ip.0131.i, i64 1, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  %161 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1143, !tbaa !546
  %idxprom14.i = sext i8 %161 to i64, !dbg !1143
  %arrayidx15.i = getelementptr inbounds i16, ptr %156, i64 %idxprom14.i, !dbg !1143
  %162 = load i16, ptr %arrayidx15.i, align 2, !dbg !1143, !tbaa !710
  %163 = and i16 %162, 2048, !dbg !1143
  %tobool18.not.i226 = icmp eq i16 %163, 0, !dbg !1148
  br i1 %tobool18.not.i226, label %for.end.i, label %for.body.i227, !dbg !1148, !llvm.loop !1149

for.end.i:                                        ; preds = %for.body.i227
  store i32 %sub.i, ptr %lo.i, align 4, !dbg !1151, !tbaa !659
  switch i8 %161, label %if.end28.i228 [
    i8 0, label %if.then21.i
    i8 45, label %if.then25.i
  ], !dbg !1152

if.then21.i:                                      ; preds = %for.end.i
  store i32 %sub.i, ptr %hi.i, align 4, !dbg !1153, !tbaa !659
  br label %if.else67.i, !dbg !1154

if.then25.i:                                      ; preds = %for.end.i
  %incdec.ptr26.i = getelementptr inbounds i8, ptr %ip.0131.i, i64 2, !dbg !1155
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  %.pr.i = load i8, ptr %incdec.ptr26.i, align 1, !dbg !1156, !tbaa !546
  br label %if.end28.i228, !dbg !1157

if.end28.i228:                                    ; preds = %if.then25.i, %for.end.i
  %164 = phi i8 [ %161, %for.end.i ], [ %.pr.i, %if.then25.i ], !dbg !1156
  %ip.1.i = phi ptr [ %incdec.ptr.i, %for.end.i ], [ %incdec.ptr26.i, %if.then25.i ], !dbg !1158
  call void @llvm.dbg.value(metadata ptr %ip.1.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  %tobool29.not.i = icmp eq i8 %164, 0, !dbg !1156
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else31.i, !dbg !1159

if.then30.i:                                      ; preds = %if.end28.i228
  store i32 -1, ptr %hi.i, align 4, !dbg !1160, !tbaa !659
  br label %if.else67.i, !dbg !1161

if.else31.i:                                      ; preds = %if.end28.i228
  %idxprom34.i = sext i8 %164 to i64, !dbg !1162
  %arrayidx35.i = getelementptr inbounds i16, ptr %156, i64 %idxprom34.i, !dbg !1162
  %165 = load i16, ptr %arrayidx35.i, align 2, !dbg !1162, !tbaa !710
  %166 = and i16 %165, 2048, !dbg !1162
  %tobool38.not.i = icmp eq i16 %166, 0, !dbg !1162
  br i1 %tobool38.not.i, label %if.then66.i, label %for.body50.i, !dbg !1163

for.body50.i:                                     ; preds = %if.else31.i, %for.body50.i
  %167 = phi i8 [ %168, %for.body50.i ], [ %164, %if.else31.i ]
  %ip.2137.i = phi ptr [ %incdec.ptr56.i, %for.body50.i ], [ %ip.1.i, %if.else31.i ]
  %val.1136.i = phi i32 [ %sub54.i, %for.body50.i ], [ 0, %if.else31.i ]
  call void @llvm.dbg.value(metadata ptr %ip.2137.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %val.1136.i, metadata !702, metadata !DIExpression()) #14, !dbg !1135
  %conv44.i = sext i8 %167 to i32, !dbg !1164
  %mul51.i = mul nsw i32 %val.1136.i, 10, !dbg !1165
  %add53.i = add nsw i32 %conv44.i, -48, !dbg !1166
  %sub54.i = add i32 %add53.i, %mul51.i, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %sub54.i, metadata !702, metadata !DIExpression()) #14, !dbg !1135
  %incdec.ptr56.i = getelementptr inbounds i8, ptr %ip.2137.i, i64 1, !dbg !1168
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  %168 = load i8, ptr %incdec.ptr56.i, align 1, !dbg !1164, !tbaa !546
  %idxprom45.i = sext i8 %168 to i64, !dbg !1164
  %arrayidx46.i = getelementptr inbounds i16, ptr %156, i64 %idxprom45.i, !dbg !1164
  %169 = load i16, ptr %arrayidx46.i, align 2, !dbg !1164, !tbaa !710
  %170 = and i16 %169, 2048, !dbg !1164
  %tobool49.not.i = icmp eq i16 %170, 0, !dbg !1169
  br i1 %tobool49.not.i, label %is_pattern.exit, label %for.body50.i, !dbg !1169, !llvm.loop !1170

if.else59.i:                                      ; preds = %if.end.i224
  store i32 1, ptr %lo.i, align 4, !dbg !1172, !tbaa !659
  %arrayidx60.i = getelementptr inbounds i8, ptr %call61193.i, i64 1, !dbg !1173
  call void @llvm.dbg.value(metadata ptr %arrayidx60.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  %171 = load i8, ptr %arrayidx60.i, align 1, !dbg !1174, !tbaa !546
  %tobool62.not.i229 = icmp eq i8 %171, 0, !dbg !1174
  br i1 %tobool62.not.i229, label %if.then63.i, label %if.else64.i, !dbg !1175

if.then63.i:                                      ; preds = %if.else59.i
  store i32 -1, ptr %hi.i, align 4, !dbg !1176, !tbaa !659
  br label %if.else67.i, !dbg !1177

if.else64.i:                                      ; preds = %if.else59.i
  %idxprom67.i = sext i8 %171 to i64, !dbg !1178
  %arrayidx68.i = getelementptr inbounds i16, ptr %156, i64 %idxprom67.i, !dbg !1178
  %172 = load i16, ptr %arrayidx68.i, align 2, !dbg !1178, !tbaa !710
  %173 = and i16 %172, 2048, !dbg !1178
  %tobool71.not.i = icmp eq i16 %173, 0, !dbg !1178
  br i1 %tobool71.not.i, label %if.else67.i, label %for.body81.i, !dbg !1179

for.body81.i:                                     ; preds = %if.else64.i, %for.body81.i
  %174 = phi i8 [ %175, %for.body81.i ], [ %171, %if.else64.i ]
  %ip.3144.i = phi ptr [ %incdec.ptr87.i, %for.body81.i ], [ %arrayidx60.i, %if.else64.i ]
  %val.2143.i = phi i32 [ %sub85.i, %for.body81.i ], [ 0, %if.else64.i ]
  call void @llvm.dbg.value(metadata ptr %ip.3144.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %val.2143.i, metadata !702, metadata !DIExpression()) #14, !dbg !1135
  %conv75.i = sext i8 %174 to i32, !dbg !1180
  %mul82.i = mul nsw i32 %val.2143.i, 10, !dbg !1181
  %add84.i = add nsw i32 %conv75.i, -48, !dbg !1182
  %sub85.i = add i32 %add84.i, %mul82.i, !dbg !1183
  call void @llvm.dbg.value(metadata i32 %sub85.i, metadata !702, metadata !DIExpression()) #14, !dbg !1135
  %incdec.ptr87.i = getelementptr inbounds i8, ptr %ip.3144.i, i64 1, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %incdec.ptr87.i, metadata !703, metadata !DIExpression()) #14, !dbg !1135
  %175 = load i8, ptr %incdec.ptr87.i, align 1, !dbg !1180, !tbaa !546
  %idxprom76.i = sext i8 %175 to i64, !dbg !1180
  %arrayidx77.i = getelementptr inbounds i16, ptr %156, i64 %idxprom76.i, !dbg !1180
  %176 = load i16, ptr %arrayidx77.i, align 2, !dbg !1180, !tbaa !710
  %177 = and i16 %176, 2048, !dbg !1180
  %tobool80.not.i = icmp eq i16 %177, 0, !dbg !1185
  br i1 %tobool80.not.i, label %is_pattern.exit, label %for.body81.i, !dbg !1185, !llvm.loop !1186

is_pattern.exit:                                  ; preds = %for.body50.i, %for.body81.i
  %storemerge = phi i32 [ %sub85.i, %for.body81.i ], [ %sub54.i, %for.body50.i ], !dbg !1135
  %retval.0.i.in.in = phi ptr [ %incdec.ptr87.i, %for.body81.i ], [ %incdec.ptr56.i, %for.body50.i ]
  store i32 %storemerge, ptr %hi.i, align 4, !dbg !1135, !tbaa !659
  %retval.0.i.in = load i8, ptr %retval.0.i.in.in, align 1, !dbg !1135, !tbaa !546
  %tobool65.not.i = icmp eq i8 %retval.0.i.in, 0, !dbg !1188
  br i1 %tobool65.not.i, label %if.else67.i, label %if.then66.i, !dbg !1189

if.then66.i:                                      ; preds = %if.else31.i, %while.body63.i, %is_pattern.exit
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1190, metadata !DIExpression()) #14, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call61193.i, metadata !1193, metadata !DIExpression()) #14, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call61193.i, metadata !604, metadata !DIExpression()) #14, !dbg !1201
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1201
  store i8 94, ptr @rexpr, align 16, !dbg !1203, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call61193.i, metadata !610, metadata !DIExpression()) #14, !dbg !1201
  br label %for.cond.i.i, !dbg !1204

for.cond.i.i:                                     ; preds = %for.inc.i.i201, %if.then66.i
  %aep.0.i.i = phi ptr [ %call61193.i, %if.then66.i ], [ %incdec.ptr12.i.i, %for.inc.i.i201 ], !dbg !1205
  %rep.0.i.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then66.i ], [ %rep.1.i.i, %for.inc.i.i201 ], !dbg !1201
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i, metadata !610, metadata !DIExpression()) #14, !dbg !1201
  %178 = load i8, ptr %aep.0.i.i, align 1, !dbg !1206, !tbaa !546
  switch i8 %178, label %if.else9.i.i [
    i8 0, label %aexpr2rexpr.exit.i
    i8 42, label %if.then.i.i200
    i8 63, label %if.then7.i.i
  ], !dbg !1207

if.then.i.i200:                                   ; preds = %for.cond.i.i
  %incdec.ptr2.i.i = getelementptr inbounds i8, ptr %rep.0.i.i, i64 1, !dbg !1208
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  store i8 46, ptr %rep.0.i.i, align 1, !dbg !1209, !tbaa !546
  %incdec.ptr3.i.i = getelementptr inbounds i8, ptr %rep.0.i.i, i64 2, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  store i8 42, ptr %incdec.ptr2.i.i, align 1, !dbg !1211, !tbaa !546
  br label %for.inc.i.i201, !dbg !1212

if.then7.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr8.i.i = getelementptr inbounds i8, ptr %rep.0.i.i, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  store i8 46, ptr %rep.0.i.i, align 1, !dbg !1214, !tbaa !546
  br label %for.inc.i.i201, !dbg !1215

if.else9.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr10.i.i = getelementptr inbounds i8, ptr %rep.0.i.i, i64 1, !dbg !1216
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  store i8 %178, ptr %rep.0.i.i, align 1, !dbg !1217, !tbaa !546
  br label %for.inc.i.i201

for.inc.i.i201:                                   ; preds = %if.else9.i.i, %if.then7.i.i, %if.then.i.i200
  %rep.1.i.i = phi ptr [ %incdec.ptr3.i.i, %if.then.i.i200 ], [ %incdec.ptr8.i.i, %if.then7.i.i ], [ %incdec.ptr10.i.i, %if.else9.i.i ], !dbg !1218
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  %incdec.ptr12.i.i = getelementptr inbounds i8, ptr %aep.0.i.i, i64 1, !dbg !1219
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i, metadata !610, metadata !DIExpression()) #14, !dbg !1201
  br label %for.cond.i.i, !dbg !1220, !llvm.loop !1221

aexpr2rexpr.exit.i:                               ; preds = %for.cond.i.i
  %incdec.ptr13.i.i = getelementptr inbounds i8, ptr %rep.0.i.i, i64 1, !dbg !1223
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1201
  store i8 36, ptr %rep.0.i.i, align 1, !dbg !1224, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i, align 1, !dbg !1225, !tbaa !546
  %call.i202 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1226
  call void @llvm.dbg.value(metadata ptr undef, metadata !1196, metadata !DIExpression()) #14, !dbg !1199
  %sp.035.i = load ptr, ptr %m_strands.i, align 8, !dbg !1227, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.035.i, metadata !1196, metadata !DIExpression()) #14, !dbg !1199
  %tobool.not36.i = icmp eq ptr %sp.035.i, null, !dbg !1229
  br i1 %tobool.not36.i, label %if.end69.i, label %for.body.i206, !dbg !1229

for.body.i206:                                    ; preds = %aexpr2rexpr.exit.i, %for.inc18.i
  %sp.037.i = phi ptr [ %sp.0.i219, %for.inc18.i ], [ %sp.035.i, %aexpr2rexpr.exit.i ]
  %s_attr.i204 = getelementptr inbounds %struct.strand_t, ptr %sp.037.i, i64 0, i32 2, !dbg !1230
  %179 = load i32, ptr %s_attr.i204, align 4, !dbg !1230, !tbaa !307
  %and.i205 = and i32 %179, 1, !dbg !1234
  %tobool1.not.i = icmp eq i32 %and.i205, 0, !dbg !1234
  br i1 %tobool1.not.i, label %for.inc18.i, label %for.cond2.preheader.i, !dbg !1235

for.cond2.preheader.i:                            ; preds = %for.body.i206
  %s_nresidues.i207 = getelementptr inbounds %struct.strand_t, ptr %sp.037.i, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()) #14, !dbg !1199
  %180 = load i32, ptr %s_nresidues.i207, align 8, !dbg !1236, !tbaa !312
  %cmp33.i = icmp sgt i32 %180, 0, !dbg !1240
  br i1 %cmp33.i, label %for.body3.lr.ph.i, label %for.inc18.i, !dbg !1241

for.body3.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %s_residues.i208 = getelementptr inbounds %struct.strand_t, ptr %sp.037.i, i64 0, i32 7
  br label %for.body3.i, !dbg !1241

for.body3.i:                                      ; preds = %for.inc14.i, %for.body3.lr.ph.i
  %181 = phi i32 [ %180, %for.body3.lr.ph.i ], [ %191, %for.inc14.i ]
  %indvars.iv39.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next40.i, %for.inc14.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv39.i, metadata !1194, metadata !DIExpression()) #14, !dbg !1199
  %182 = load ptr, ptr %s_residues.i208, align 8, !dbg !1242, !tbaa !318
  %arrayidx.i209 = getelementptr inbounds ptr, ptr %182, i64 %indvars.iv39.i, !dbg !1244
  %183 = load ptr, ptr %arrayidx.i209, align 8, !dbg !1244, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %183, metadata !1197, metadata !DIExpression()) #14, !dbg !1199
  %r_attr.i210 = getelementptr inbounds %struct.residue_t, ptr %183, i64 0, i32 6, !dbg !1245
  %184 = load i32, ptr %r_attr.i210, align 8, !dbg !1245, !tbaa !323
  %and4.i = and i32 %184, 1, !dbg !1247
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !1247
  br i1 %tobool5.not.i, label %for.inc14.i, label %for.cond7.preheader.i, !dbg !1248

for.cond7.preheader.i:                            ; preds = %for.body3.i
  %r_natoms.i211 = getelementptr inbounds %struct.residue_t, ptr %183, i64 0, i32 15
  call void @llvm.dbg.value(metadata i32 0, metadata !1195, metadata !DIExpression()) #14, !dbg !1199
  %185 = load i32, ptr %r_natoms.i211, align 8, !dbg !1249, !tbaa !327
  %cmp831.i = icmp sgt i32 %185, 0, !dbg !1253
  br i1 %cmp831.i, label %for.body9.lr.ph.i, label %for.inc14.i, !dbg !1254

for.body9.lr.ph.i:                                ; preds = %for.cond7.preheader.i
  %r_atoms.i212 = getelementptr inbounds %struct.residue_t, ptr %183, i64 0, i32 17
  br label %for.body9.i, !dbg !1254

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i213 = phi i64 [ 0, %for.body9.lr.ph.i ], [ %indvars.iv.next.i216, %for.body9.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i213, metadata !1195, metadata !DIExpression()) #14, !dbg !1199
  %186 = load ptr, ptr %r_atoms.i212, align 8, !dbg !1255, !tbaa !333
  %arrayidx11.i = getelementptr inbounds %struct.atom_t, ptr %186, i64 %indvars.iv.i213, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %arrayidx11.i, metadata !1198, metadata !DIExpression()) #14, !dbg !1199
  %187 = load ptr, ptr %arrayidx11.i, align 8, !dbg !1258, !tbaa !1259
  %call12.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %187, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1260
  %cmp13.i = icmp eq i32 %call12.i, 0, !dbg !1261
  %cond.i = zext i1 %cmp13.i to i32, !dbg !1260
  %a_attr.i214 = getelementptr inbounds %struct.atom_t, ptr %186, i64 %indvars.iv.i213, i32 2, !dbg !1262
  %188 = load i32, ptr %a_attr.i214, align 8, !dbg !1263, !tbaa !337
  %or.i215 = or i32 %188, %cond.i, !dbg !1263
  store i32 %or.i215, ptr %a_attr.i214, align 8, !dbg !1263, !tbaa !337
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i213, 1, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i216, metadata !1195, metadata !DIExpression()) #14, !dbg !1199
  %189 = load i32, ptr %r_natoms.i211, align 8, !dbg !1249, !tbaa !327
  %190 = sext i32 %189 to i64, !dbg !1253
  %cmp8.i = icmp slt i64 %indvars.iv.next.i216, %190, !dbg !1253
  br i1 %cmp8.i, label %for.body9.i, label %for.inc14.loopexit.i, !dbg !1254, !llvm.loop !1265

for.inc14.loopexit.i:                             ; preds = %for.body9.i
  %.pre.i = load i32, ptr %s_nresidues.i207, align 8, !dbg !1236, !tbaa !312
  br label %for.inc14.i, !dbg !1267

for.inc14.i:                                      ; preds = %for.inc14.loopexit.i, %for.cond7.preheader.i, %for.body3.i
  %191 = phi i32 [ %.pre.i, %for.inc14.loopexit.i ], [ %181, %for.cond7.preheader.i ], [ %181, %for.body3.i ], !dbg !1236
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next40.i, metadata !1194, metadata !DIExpression()) #14, !dbg !1199
  %192 = sext i32 %191 to i64, !dbg !1240
  %cmp.i217 = icmp slt i64 %indvars.iv.next40.i, %192, !dbg !1240
  br i1 %cmp.i217, label %for.body3.i, label %for.inc18.i, !dbg !1241, !llvm.loop !1268

for.inc18.i:                                      ; preds = %for.inc14.i, %for.cond2.preheader.i, %for.body.i206
  %s_next.i218 = getelementptr inbounds %struct.strand_t, ptr %sp.037.i, i64 0, i32 4, !dbg !1270
  call void @llvm.dbg.value(metadata ptr undef, metadata !1196, metadata !DIExpression()) #14, !dbg !1199
  %sp.0.i219 = load ptr, ptr %s_next.i218, align 8, !dbg !1227, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i219, metadata !1196, metadata !DIExpression()) #14, !dbg !1199
  %tobool.not.i220 = icmp eq ptr %sp.0.i219, null, !dbg !1229
  br i1 %tobool.not.i220, label %if.end69.i, label %for.body.i206, !dbg !1229, !llvm.loop !1271

if.else67.i:                                      ; preds = %if.else64.i, %if.then63.i, %if.then21.i, %if.then30.i, %is_pattern.exit
  %193 = load ptr, ptr @stderr, align 8, !dbg !1273, !tbaa !298
  %194 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %193) #16, !dbg !1275
  br label %if.end69.i

if.end69.i:                                       ; preds = %for.inc18.i, %aexpr2rexpr.exit.i, %if.else67.i
  %call61.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1133
  call void @llvm.dbg.value(metadata ptr %call61.i, metadata !552, metadata !DIExpression()) #14, !dbg !555
  %tobool62.not.i = icmp eq ptr %call61.i, null, !dbg !1134
  br i1 %tobool62.not.i, label %eval_1_aexpr.exit, label %while.body63.i, !dbg !1134, !llvm.loop !1276

if.else71.i:                                      ; preds = %if.end50.i
  tail call fastcc void @match_atom_pat(ptr noundef %mol, ptr noundef nonnull @.str.6) #14, !dbg !1278
  br label %eval_1_aexpr.exit

eval_1_aexpr.exit:                                ; preds = %if.end69.i, %if.end59.i, %if.else71.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi.i) #14, !dbg !1279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo.i) #14, !dbg !1279
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1280, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr undef, metadata !1285, metadata !DIExpression()), !dbg !1288
  %sp.042.i = load ptr, ptr %m_strands.i, align 8, !dbg !1290, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.042.i, metadata !1285, metadata !DIExpression()), !dbg !1288
  %tobool.not43.i = icmp eq ptr %sp.042.i, null, !dbg !1292
  br i1 %tobool.not43.i, label %or_select.exit, label %for.body.i111, !dbg !1292

for.body.i111:                                    ; preds = %eval_1_aexpr.exit, %for.inc23.i
  %sp.044.i = phi ptr [ %sp.0.i124, %for.inc23.i ], [ %sp.042.i, %eval_1_aexpr.exit ]
  %s_attr.i107 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i, i64 0, i32 2, !dbg !1293
  %195 = load i32, ptr %s_attr.i107, align 4, !dbg !1293, !tbaa !307
  %and.i108 = shl i32 %195, 7, !dbg !1296
  %196 = and i32 %and.i108, 128, !dbg !1296
  %or.i109 = or i32 %196, %195, !dbg !1297
  store i32 %or.i109, ptr %s_attr.i107, align 4, !dbg !1297, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !1284, metadata !DIExpression()), !dbg !1288
  %s_nresidues.i110 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i, i64 0, i32 5
  %197 = load i32, ptr %s_nresidues.i110, align 8, !tbaa !312
  %cmp40.i = icmp sgt i32 %197, 0, !dbg !1298
  br i1 %cmp40.i, label %for.body4.lr.ph.i, label %for.inc23.i, !dbg !1301

for.body4.lr.ph.i:                                ; preds = %for.body.i111
  %s_residues.i112 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i, i64 0, i32 7
  %198 = load ptr, ptr %s_residues.i112, align 8, !tbaa !318
  %wide.trip.count49.i = zext i32 %197 to i64, !dbg !1298
  br label %for.body4.i, !dbg !1301

for.body4.i:                                      ; preds = %for.inc20.i, %for.body4.lr.ph.i
  %indvars.iv46.i = phi i64 [ 0, %for.body4.lr.ph.i ], [ %indvars.iv.next47.i, %for.inc20.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46.i, metadata !1284, metadata !DIExpression()), !dbg !1288
  %arrayidx.i113 = getelementptr inbounds ptr, ptr %198, i64 %indvars.iv46.i, !dbg !1302
  %199 = load ptr, ptr %arrayidx.i113, align 8, !dbg !1302, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %199, metadata !1286, metadata !DIExpression()), !dbg !1288
  %r_attr.i114 = getelementptr inbounds %struct.residue_t, ptr %199, i64 0, i32 6, !dbg !1304
  %200 = load i32, ptr %r_attr.i114, align 8, !dbg !1304, !tbaa !323
  %and5.i = shl i32 %200, 7, !dbg !1305
  %201 = and i32 %and5.i, 128, !dbg !1305
  %or9.i115 = or i32 %201, %200, !dbg !1306
  store i32 %or9.i115, ptr %r_attr.i114, align 8, !dbg !1306, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !1283, metadata !DIExpression()), !dbg !1288
  %r_natoms.i116 = getelementptr inbounds %struct.residue_t, ptr %199, i64 0, i32 15
  %202 = load i32, ptr %r_natoms.i116, align 8, !tbaa !327
  %cmp1138.i = icmp sgt i32 %202, 0, !dbg !1307
  br i1 %cmp1138.i, label %for.body12.lr.ph.i, label %for.inc20.i, !dbg !1310

for.body12.lr.ph.i:                               ; preds = %for.body4.i
  %r_atoms.i117 = getelementptr inbounds %struct.residue_t, ptr %199, i64 0, i32 17
  %203 = load ptr, ptr %r_atoms.i117, align 8, !tbaa !333
  %wide.trip.count.i118 = zext i32 %202 to i64, !dbg !1307
  br label %for.body12.i, !dbg !1310

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv.i119 = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next.i121, %for.body12.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i119, metadata !1283, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata !DIArgList(ptr %203, i64 %indvars.iv.i119), metadata !1287, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1288
  %a_attr.i120 = getelementptr inbounds %struct.atom_t, ptr %203, i64 %indvars.iv.i119, i32 2, !dbg !1311
  %204 = load i32, ptr %a_attr.i120, align 8, !dbg !1311, !tbaa !337
  %and15.i = shl i32 %204, 7, !dbg !1313
  %205 = and i32 %and15.i, 128, !dbg !1313
  %or19.i = or i32 %205, %204, !dbg !1314
  store i32 %or19.i, ptr %a_attr.i120, align 8, !dbg !1314, !tbaa !337
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i119, 1, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i121, metadata !1283, metadata !DIExpression()), !dbg !1288
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i118, !dbg !1307
  br i1 %exitcond.not.i122, label %for.inc20.i, label %for.body12.i, !dbg !1310, !llvm.loop !1316

for.inc20.i:                                      ; preds = %for.body12.i, %for.body4.i
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47.i, metadata !1284, metadata !DIExpression()), !dbg !1288
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count49.i, !dbg !1298
  br i1 %exitcond50.not.i, label %for.inc23.i, label %for.body4.i, !dbg !1301, !llvm.loop !1319

for.inc23.i:                                      ; preds = %for.inc20.i, %for.body.i111
  %s_next.i123 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i, i64 0, i32 4, !dbg !1321
  call void @llvm.dbg.value(metadata ptr undef, metadata !1285, metadata !DIExpression()), !dbg !1288
  %sp.0.i124 = load ptr, ptr %s_next.i123, align 8, !dbg !1290, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i124, metadata !1285, metadata !DIExpression()), !dbg !1288
  %tobool.not.i125 = icmp eq ptr %sp.0.i124, null, !dbg !1292
  br i1 %tobool.not.i125, label %or_select.exit, label %for.body.i111, !dbg !1292, !llvm.loop !1322

or_select.exit:                                   ; preds = %for.inc23.i, %eval_1_aexpr.exit
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !393, metadata !DIExpression()), !dbg !396
  %tobool14.not = icmp eq ptr %n_aep.1, null, !dbg !1324
  br i1 %tobool14.not, label %if.end17, label %if.then15, !dbg !1326

if.then15:                                        ; preds = %or_select.exit
  %call16 = tail call ptr @strchr(ptr noundef nonnull %n_aep.1, i32 noundef 124) #13, !dbg !1327
  call void @llvm.dbg.value(metadata ptr %call16, metadata !394, metadata !DIExpression()), !dbg !396
  br label %if.end17, !dbg !1328

if.end17:                                         ; preds = %if.then15, %or_select.exit
  %n_aep.2 = phi ptr [ %call16, %if.then15 ], [ null, %or_select.exit ], !dbg !1329
  call void @llvm.dbg.value(metadata ptr %n_aep.2, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %mol, metadata !487, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %sp.042.i, metadata !490, metadata !DIExpression()), !dbg !1330
  br i1 %tobool.not43.i, label %clear_select.exit161.thread, label %for.body.i134, !dbg !1332

for.body.i134:                                    ; preds = %if.end17, %for.inc13.i160
  %sp.031.i129 = phi ptr [ %sp.0.i158, %for.inc13.i160 ], [ %sp.042.i, %if.end17 ]
  %s_attr.i130 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i129, i64 0, i32 2, !dbg !1333
  %206 = load i32, ptr %s_attr.i130, align 4, !dbg !1334, !tbaa !307
  %and.i131 = and i32 %206, -2, !dbg !1334
  store i32 %and.i131, ptr %s_attr.i130, align 4, !dbg !1334, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !1330
  %s_nresidues.i132 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i129, i64 0, i32 5
  %207 = load i32, ptr %s_nresidues.i132, align 8, !tbaa !312
  %cmp27.i133 = icmp sgt i32 %207, 0, !dbg !1335
  br i1 %cmp27.i133, label %for.body2.lr.ph.i137, label %for.inc13.i160, !dbg !1336

for.body2.lr.ph.i137:                             ; preds = %for.body.i134
  %s_residues.i135 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i129, i64 0, i32 7
  %208 = load ptr, ptr %s_residues.i135, align 8, !tbaa !318
  %wide.trip.count36.i136 = zext i32 %207 to i64, !dbg !1335
  br label %for.body2.i144, !dbg !1336

for.body2.i144:                                   ; preds = %for.inc10.i156, %for.body2.lr.ph.i137
  %indvars.iv33.i138 = phi i64 [ 0, %for.body2.lr.ph.i137 ], [ %indvars.iv.next34.i154, %for.inc10.i156 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv33.i138, metadata !489, metadata !DIExpression()), !dbg !1330
  %arrayidx.i139 = getelementptr inbounds ptr, ptr %208, i64 %indvars.iv33.i138, !dbg !1337
  %209 = load ptr, ptr %arrayidx.i139, align 8, !dbg !1337, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %209, metadata !491, metadata !DIExpression()), !dbg !1330
  %r_attr.i140 = getelementptr inbounds %struct.residue_t, ptr %209, i64 0, i32 6, !dbg !1338
  %210 = load i32, ptr %r_attr.i140, align 8, !dbg !1339, !tbaa !323
  %and3.i141 = and i32 %210, -2, !dbg !1339
  store i32 %and3.i141, ptr %r_attr.i140, align 8, !dbg !1339, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !488, metadata !DIExpression()), !dbg !1330
  %r_natoms.i142 = getelementptr inbounds %struct.residue_t, ptr %209, i64 0, i32 15
  %211 = load i32, ptr %r_natoms.i142, align 8, !tbaa !327
  %cmp525.i143 = icmp sgt i32 %211, 0, !dbg !1340
  br i1 %cmp525.i143, label %for.body6.lr.ph.i147, label %for.inc10.i156, !dbg !1341

for.body6.lr.ph.i147:                             ; preds = %for.body2.i144
  %r_atoms.i145 = getelementptr inbounds %struct.residue_t, ptr %209, i64 0, i32 17
  %212 = load ptr, ptr %r_atoms.i145, align 8, !tbaa !333
  %wide.trip.count.i146 = zext i32 %211 to i64, !dbg !1340
  br label %for.body6.i153, !dbg !1341

for.body6.i153:                                   ; preds = %for.body6.i153, %for.body6.lr.ph.i147
  %indvars.iv.i148 = phi i64 [ 0, %for.body6.lr.ph.i147 ], [ %indvars.iv.next.i151, %for.body6.i153 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i148, metadata !488, metadata !DIExpression()), !dbg !1330
  %a_attr.i149 = getelementptr inbounds %struct.atom_t, ptr %212, i64 %indvars.iv.i148, i32 2, !dbg !1342
  %213 = load i32, ptr %a_attr.i149, align 8, !dbg !1343, !tbaa !337
  %and9.i150 = and i32 %213, -2, !dbg !1343
  store i32 %and9.i150, ptr %a_attr.i149, align 8, !dbg !1343, !tbaa !337
  %indvars.iv.next.i151 = add nuw nsw i64 %indvars.iv.i148, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i151, metadata !488, metadata !DIExpression()), !dbg !1330
  %exitcond.not.i152 = icmp eq i64 %indvars.iv.next.i151, %wide.trip.count.i146, !dbg !1340
  br i1 %exitcond.not.i152, label %for.inc10.i156, label %for.body6.i153, !dbg !1341, !llvm.loop !1345

for.inc10.i156:                                   ; preds = %for.body6.i153, %for.body2.i144
  %indvars.iv.next34.i154 = add nuw nsw i64 %indvars.iv33.i138, 1, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next34.i154, metadata !489, metadata !DIExpression()), !dbg !1330
  %exitcond37.not.i155 = icmp eq i64 %indvars.iv.next34.i154, %wide.trip.count36.i136, !dbg !1335
  br i1 %exitcond37.not.i155, label %for.inc13.i160, label %for.body2.i144, !dbg !1336, !llvm.loop !1348

for.inc13.i160:                                   ; preds = %for.inc10.i156, %for.body.i134
  %s_next.i157 = getelementptr inbounds %struct.strand_t, ptr %sp.031.i129, i64 0, i32 4, !dbg !1350
  call void @llvm.dbg.value(metadata ptr undef, metadata !490, metadata !DIExpression()), !dbg !1330
  %sp.0.i158 = load ptr, ptr %s_next.i157, align 8, !dbg !1351, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i158, metadata !490, metadata !DIExpression()), !dbg !1330
  %tobool.not.i159 = icmp eq ptr %sp.0.i158, null, !dbg !1332
  br i1 %tobool.not.i159, label %clear_select.exit161, label %for.body.i134, !dbg !1332, !llvm.loop !1352

clear_select.exit161:                             ; preds = %for.inc13.i160
  call void @llvm.dbg.value(metadata ptr %n_aep.2, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !393, metadata !DIExpression()), !dbg !396
  br i1 %tobool14.not, label %for.body.i171, label %for.body.backedge, !dbg !522

for.body.backedge:                                ; preds = %clear_select.exit161, %clear_select.exit161.thread
  br label %for.body, !dbg !396, !llvm.loop !1354

clear_select.exit161.thread:                      ; preds = %if.end17
  call void @llvm.dbg.value(metadata ptr %n_aep.2, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !393, metadata !DIExpression()), !dbg !396
  br i1 %tobool14.not, label %cleanup, label %for.body.backedge, !dbg !522

for.body.i171:                                    ; preds = %clear_select.exit161, %for.inc23.i199
  %sp.044.i165 = phi ptr [ %sp.0.i197, %for.inc23.i199 ], [ %sp.042.i, %clear_select.exit161 ]
  %s_attr.i166 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i165, i64 0, i32 2, !dbg !1356
  %214 = load i32, ptr %s_attr.i166, align 4, !dbg !1356, !tbaa !307
  %and.i167 = lshr i32 %214, 7, !dbg !1369
  %and.lobit.i = and i32 %and.i167, 1, !dbg !1369
  %or.i168 = or i32 %and.lobit.i, %214, !dbg !1370
  store i32 %or.i168, ptr %s_attr.i166, align 4, !dbg !1370, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !1364, metadata !DIExpression()), !dbg !1371
  %s_nresidues.i169 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i165, i64 0, i32 5
  %215 = load i32, ptr %s_nresidues.i169, align 8, !tbaa !312
  %cmp40.i170 = icmp sgt i32 %215, 0, !dbg !1372
  br i1 %cmp40.i170, label %for.body4.lr.ph.i174, label %for.inc23.i199, !dbg !1375

for.body4.lr.ph.i174:                             ; preds = %for.body.i171
  %s_residues.i172 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i165, i64 0, i32 7
  %216 = load ptr, ptr %s_residues.i172, align 8, !tbaa !318
  %wide.trip.count49.i173 = zext i32 %215 to i64, !dbg !1372
  br label %for.body4.i182, !dbg !1375

for.body4.i182:                                   ; preds = %for.inc20.i195, %for.body4.lr.ph.i174
  %indvars.iv46.i175 = phi i64 [ 0, %for.body4.lr.ph.i174 ], [ %indvars.iv.next47.i193, %for.inc20.i195 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46.i175, metadata !1364, metadata !DIExpression()), !dbg !1371
  %arrayidx.i176 = getelementptr inbounds ptr, ptr %216, i64 %indvars.iv46.i175, !dbg !1376
  %217 = load ptr, ptr %arrayidx.i176, align 8, !dbg !1376, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %217, metadata !1366, metadata !DIExpression()), !dbg !1371
  %r_attr.i177 = getelementptr inbounds %struct.residue_t, ptr %217, i64 0, i32 6, !dbg !1378
  %218 = load i32, ptr %r_attr.i177, align 8, !dbg !1378, !tbaa !323
  %and5.i178 = lshr i32 %218, 7, !dbg !1379
  %and5.lobit.i = and i32 %and5.i178, 1, !dbg !1379
  %or9.i179 = or i32 %and5.lobit.i, %218, !dbg !1380
  store i32 %or9.i179, ptr %r_attr.i177, align 8, !dbg !1380, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()), !dbg !1371
  %r_natoms.i180 = getelementptr inbounds %struct.residue_t, ptr %217, i64 0, i32 15
  %219 = load i32, ptr %r_natoms.i180, align 8, !tbaa !327
  %cmp1138.i181 = icmp sgt i32 %219, 0, !dbg !1381
  br i1 %cmp1138.i181, label %for.body12.lr.ph.i185, label %for.inc20.i195, !dbg !1384

for.body12.lr.ph.i185:                            ; preds = %for.body4.i182
  %r_atoms.i183 = getelementptr inbounds %struct.residue_t, ptr %217, i64 0, i32 17
  %220 = load ptr, ptr %r_atoms.i183, align 8, !tbaa !333
  %wide.trip.count.i184 = zext i32 %219 to i64, !dbg !1381
  br label %for.body12.i192, !dbg !1384

for.body12.i192:                                  ; preds = %for.body12.i192, %for.body12.lr.ph.i185
  %indvars.iv.i186 = phi i64 [ 0, %for.body12.lr.ph.i185 ], [ %indvars.iv.next.i190, %for.body12.i192 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i186, metadata !1363, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata !DIArgList(ptr %220, i64 %indvars.iv.i186), metadata !1367, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1371
  %a_attr.i187 = getelementptr inbounds %struct.atom_t, ptr %220, i64 %indvars.iv.i186, i32 2, !dbg !1385
  %221 = load i32, ptr %a_attr.i187, align 8, !dbg !1385, !tbaa !337
  %and15.i188 = lshr i32 %221, 7, !dbg !1387
  %and15.lobit.i = and i32 %and15.i188, 1, !dbg !1387
  %or19.i189 = or i32 %and15.lobit.i, %221, !dbg !1388
  store i32 %or19.i189, ptr %a_attr.i187, align 8, !dbg !1388, !tbaa !337
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i186, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i190, metadata !1363, metadata !DIExpression()), !dbg !1371
  %exitcond.not.i191 = icmp eq i64 %indvars.iv.next.i190, %wide.trip.count.i184, !dbg !1381
  br i1 %exitcond.not.i191, label %for.inc20.i195, label %for.body12.i192, !dbg !1384, !llvm.loop !1390

for.inc20.i195:                                   ; preds = %for.body12.i192, %for.body4.i182
  %indvars.iv.next47.i193 = add nuw nsw i64 %indvars.iv46.i175, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47.i193, metadata !1364, metadata !DIExpression()), !dbg !1371
  %exitcond50.not.i194 = icmp eq i64 %indvars.iv.next47.i193, %wide.trip.count49.i173, !dbg !1372
  br i1 %exitcond50.not.i194, label %for.inc23.i199, label %for.body4.i182, !dbg !1375, !llvm.loop !1393

for.inc23.i199:                                   ; preds = %for.inc20.i195, %for.body.i171
  %s_next.i196 = getelementptr inbounds %struct.strand_t, ptr %sp.044.i165, i64 0, i32 4, !dbg !1395
  call void @llvm.dbg.value(metadata ptr undef, metadata !1365, metadata !DIExpression()), !dbg !1371
  %sp.0.i197 = load ptr, ptr %s_next.i196, align 8, !dbg !1396, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0.i197, metadata !1365, metadata !DIExpression()), !dbg !1371
  %tobool.not.i198 = icmp eq ptr %sp.0.i197, null, !dbg !1397
  br i1 %tobool.not.i198, label %cleanup, label %for.body.i171, !dbg !1397, !llvm.loop !1398

cleanup:                                          ; preds = %clear_select.exit161.thread, %for.inc23.i199, %for.inc13.i, %if.then, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %if.then ], [ 0, %for.inc13.i ], [ 0, %for.inc23.i199 ], [ 0, %clear_select.exit161.thread ], !dbg !396
  ret i32 %retval.0, !dbg !1400
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @atom_in_aexpr(ptr nocapture noundef readonly %ap, ptr noundef %aex) local_unnamed_addr #0 !dbg !1401 {
entry:
  %lo.i = alloca i32, align 4
  %hi.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %ap, metadata !1405, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %aex, metadata !1406, metadata !DIExpression()), !dbg !1410
  %cmp = icmp eq ptr %aex, null, !dbg !1411
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1413

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %aex, metadata !1407, metadata !DIExpression()), !dbg !1410
  %call = tail call ptr @strchr(ptr noundef nonnull %aex, i32 noundef 124) #13, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %call, metadata !1408, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %aex, metadata !1407, metadata !DIExpression()), !dbg !1410
  %0 = getelementptr i8, ptr %ap, i64 56
  br label %for.body, !dbg !1416

for.body:                                         ; preds = %if.end20, %if.end
  %n_aep.047 = phi ptr [ %call, %if.end ], [ %call19, %if.end20 ]
  %aep.045 = phi ptr [ %aex, %if.end ], [ %n_aep.1, %if.end20 ]
  call void @llvm.dbg.value(metadata ptr %n_aep.047, metadata !1408, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %aep.045, metadata !1407, metadata !DIExpression()), !dbg !1410
  %tobool1.not = icmp eq ptr %n_aep.047, null, !dbg !1417
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !1421

if.then2:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %n_aep.047 to i64, !dbg !1422
  %sub.ptr.rhs.cast = ptrtoint ptr %aep.045 to i64, !dbg !1422
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1410
  %incdec.ptr = getelementptr inbounds i8, ptr %n_aep.047, i64 1, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1408, metadata !DIExpression()), !dbg !1410
  br label %if.end5, !dbg !1425

if.else:                                          ; preds = %for.body
  %call3 = tail call i64 @strlen(ptr noundef nonnull %aep.045) #13, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %call3, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1410
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %n_aep.1 = phi ptr [ %incdec.ptr, %if.then2 ], [ null, %if.else ], !dbg !1427
  %ael.0.in = phi i64 [ %sub.ptr.sub, %if.then2 ], [ %call3, %if.else ]
  %ael.0 = trunc i64 %ael.0.in to i32, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %ael.0, metadata !1409, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !1408, metadata !DIExpression()), !dbg !1410
  %cmp6 = icmp sgt i32 %ael.0, 999, !dbg !1429
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !1431

if.then8:                                         ; preds = %if.end5
  %1 = load ptr, ptr @stderr, align 8, !dbg !1432, !tbaa !298
  %2 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 41, i64 1, ptr %1) #12, !dbg !1434
  br label %cleanup, !dbg !1435

if.end10:                                         ; preds = %if.end5
  %sext = shl i64 %ael.0.in, 32, !dbg !1436
  %conv11 = ashr exact i64 %sext, 32, !dbg !1436
  %call12 = tail call ptr @strncpy(ptr noundef nonnull @aexpr, ptr noundef nonnull %aep.045, i64 noundef %conv11) #14, !dbg !1437
  %arrayidx = getelementptr inbounds [1000 x i8], ptr @aexpr, i64 0, i64 %conv11, !dbg !1438
  store i8 0, ptr %arrayidx, align 1, !dbg !1439, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %ap, metadata !1440, metadata !DIExpression()) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr @aexpr, metadata !1443, metadata !DIExpression()) #14, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo.i) #14, !dbg !1453
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi.i) #14, !dbg !1453
  call void @llvm.dbg.value(metadata ptr @aexpr, metadata !1444, metadata !DIExpression()) #14, !dbg !1450
  %3 = load i8, ptr @aexpr, align 16, !dbg !1454, !tbaa !546
  %cmp.i = icmp eq i8 %3, 58, !dbg !1456
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1457

if.then.i:                                        ; preds = %if.end10
  store ptr null, ptr @spart, align 8, !dbg !1458, !tbaa !298
  br label %if.end.i, !dbg !1460

if.else.i:                                        ; preds = %if.end10
  %call.i = tail call ptr @strtok(ptr noundef nonnull @aexpr, ptr noundef nonnull @.str.3) #14, !dbg !1461
  store ptr %call.i, ptr @spart, align 8, !dbg !1463, !tbaa !298
  %call2.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call.i) #13, !dbg !1464
  %add.i = add i64 %call2.i, 1, !dbg !1465
  %add.ptr.i = getelementptr inbounds i8, ptr @aexpr, i64 %add.i, !dbg !1466
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1444, metadata !DIExpression()) #14, !dbg !1450
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %aep.0.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), %if.then.i ], [ %add.ptr.i, %if.else.i ], !dbg !1467
  call void @llvm.dbg.value(metadata ptr %aep.0.i, metadata !1444, metadata !DIExpression()) #14, !dbg !1450
  %4 = load i8, ptr %aep.0.i, align 1, !dbg !1468, !tbaa !546
  %cmp4.i = icmp eq i8 %4, 58, !dbg !1470
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i, !dbg !1471

if.then6.i:                                       ; preds = %if.end.i
  store ptr null, ptr @rpart, align 8, !dbg !1472, !tbaa !298
  call void @llvm.dbg.value(metadata ptr undef, metadata !1444, metadata !DIExpression()) #14, !dbg !1450
  br label %if.end13.i, !dbg !1474

if.else8.i:                                       ; preds = %if.end.i
  %call9.i = tail call ptr @strtok(ptr noundef nonnull %aep.0.i, ptr noundef nonnull @.str.3) #14, !dbg !1475
  store ptr %call9.i, ptr @rpart, align 8, !dbg !1477, !tbaa !298
  %call10.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call9.i) #13, !dbg !1478
  %add11.i = add i64 %call10.i, 1, !dbg !1479
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else8.i, %if.then6.i
  %add11.sink.i = phi i64 [ %add11.i, %if.else8.i ], [ 1, %if.then6.i ]
  %add.ptr12.i = getelementptr inbounds i8, ptr %aep.0.i, i64 %add11.sink.i, !dbg !1480
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !1444, metadata !DIExpression()) #14, !dbg !1450
  %call14.i = tail call ptr @strtok(ptr noundef nonnull %add.ptr12.i, ptr noundef nonnull @.str.3) #14, !dbg !1481
  store ptr %call14.i, ptr @apart, align 8, !dbg !1482, !tbaa !298
  %5 = load ptr, ptr @spart, align 8, !dbg !1483, !tbaa !298
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1483
  br i1 %tobool.not.i, label %RPART.i, label %if.then15.i, !dbg !1485

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call ptr @strtok(ptr noundef nonnull %5, ptr noundef nonnull @.str.4) #14, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !1446, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !1447, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  %call17.i = call fastcc i32 @is_pattern(ptr noundef %call16.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1488
  %tobool18.not.i = icmp eq i32 %call17.i, 0, !dbg !1488
  br i1 %tobool18.not.i, label %if.else24.i, label %if.then19.i, !dbg !1490

if.then19.i:                                      ; preds = %if.then15.i
  %ap.val1.i = load ptr, ptr %0, align 8, !dbg !1491, !tbaa !1494
  %6 = getelementptr i8, ptr %ap.val1.i, i64 56, !dbg !1491
  %ap.val1.val.i = load ptr, ptr %6, align 8, !dbg !1491, !tbaa !1495
  call void @llvm.dbg.value(metadata ptr undef, metadata !1496, metadata !DIExpression()) #14, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !1499, metadata !DIExpression()) #14, !dbg !1502
  call void @llvm.dbg.value(metadata ptr undef, metadata !1500, metadata !DIExpression()) #14, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %ap.val1.val.i, metadata !1501, metadata !DIExpression()) #14, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !604, metadata !DIExpression()) #14, !dbg !1504
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1504
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  store i8 94, ptr @rexpr, align 16, !dbg !1506, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !610, metadata !DIExpression()) #14, !dbg !1504
  br label %for.cond.i.i.i, !dbg !1507

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then19.i
  %aep.0.i.i.i = phi ptr [ %call16.i, %if.then19.i ], [ %incdec.ptr12.i.i.i, %for.inc.i.i.i ], !dbg !1508
  %rep.0.i.i.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then19.i ], [ %rep.1.i.i.i, %for.inc.i.i.i ], !dbg !1504
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i.i, metadata !610, metadata !DIExpression()) #14, !dbg !1504
  %7 = load i8, ptr %aep.0.i.i.i, align 1, !dbg !1509, !tbaa !546
  switch i8 %7, label %if.else9.i.i.i [
    i8 0, label %atom_in_str_pat.exit.i
    i8 42, label %if.then.i.i.i
    i8 63, label %if.then7.i.i.i
  ], !dbg !1510

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !1511
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  store i8 46, ptr %rep.0.i.i.i, align 1, !dbg !1512, !tbaa !546
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 2, !dbg !1513
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  store i8 42, ptr %incdec.ptr2.i.i.i, align 1, !dbg !1514, !tbaa !546
  br label %for.inc.i.i.i, !dbg !1515

if.then7.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  store i8 46, ptr %rep.0.i.i.i, align 1, !dbg !1517, !tbaa !546
  br label %for.inc.i.i.i, !dbg !1518

if.else9.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr10.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  store i8 %7, ptr %rep.0.i.i.i, align 1, !dbg !1520, !tbaa !546
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rep.1.i.i.i = phi ptr [ %incdec.ptr3.i.i.i, %if.then.i.i.i ], [ %incdec.ptr8.i.i.i, %if.then7.i.i.i ], [ %incdec.ptr10.i.i.i, %if.else9.i.i.i ], !dbg !1521
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, ptr %aep.0.i.i.i, i64 1, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i.i, metadata !610, metadata !DIExpression()) #14, !dbg !1504
  br label %for.cond.i.i.i, !dbg !1523, !llvm.loop !1524

atom_in_str_pat.exit.i:                           ; preds = %for.cond.i.i.i
  %incdec.ptr13.i.i.i = getelementptr inbounds i8, ptr %rep.0.i.i.i, i64 1, !dbg !1526
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i.i, metadata !611, metadata !DIExpression()) #14, !dbg !1504
  store i8 36, ptr %rep.0.i.i.i, align 1, !dbg !1527, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i.i, align 1, !dbg !1528, !tbaa !546
  %call.i.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1529
  %8 = load ptr, ptr %ap.val1.val.i, align 8, !dbg !1530, !tbaa !650
  %call1.i.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %8, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1531
  %cmp.i.not.i = icmp eq i32 %call1.i.i, 0, !dbg !1532
  br i1 %cmp.i.not.i, label %RPART.i, label %if.end29.i, !dbg !1533

if.else24.i:                                      ; preds = %if.then15.i
  %9 = load i32, ptr %lo.i, align 4, !dbg !1534, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %9, metadata !1446, metadata !DIExpression()) #14, !dbg !1450
  %10 = load i32, ptr %hi.i, align 4, !dbg !1536, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %10, metadata !1447, metadata !DIExpression()) #14, !dbg !1450
  %ap.val3.i = load ptr, ptr %0, align 8, !dbg !1537, !tbaa !1494
  %11 = getelementptr i8, ptr %ap.val3.i, i64 56, !dbg !1537
  %ap.val3.val.i = load ptr, ptr %11, align 8, !dbg !1537, !tbaa !1495
  call void @llvm.dbg.value(metadata ptr undef, metadata !1538, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %9, metadata !1543, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %10, metadata !1544, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata ptr undef, metadata !1546, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %ap.val3.val.i, metadata !1547, metadata !DIExpression()) #14, !dbg !1550
  %s_molecule.i.i = getelementptr inbounds %struct.strand_t, ptr %ap.val3.val.i, i64 0, i32 3, !dbg !1552
  %12 = load ptr, ptr %s_molecule.i.i, align 8, !dbg !1552, !tbaa !1553
  call void @llvm.dbg.value(metadata ptr %12, metadata !1549, metadata !DIExpression()) #14, !dbg !1550
  %cmp.i8.i = icmp eq i32 %10, -1, !dbg !1554
  %m_nstrands.i.i = getelementptr inbounds %struct.molecule_t, ptr %12, i64 0, i32 1
  %13 = load i32, ptr %m_nstrands.i.i, align 8, !tbaa !674
  %.hi.i.i = select i1 %cmp.i8.i, i32 %13, i32 %10, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %.hi.i.i, metadata !1544, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata ptr undef, metadata !1548, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata ptr undef, metadata !1548, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()) #14, !dbg !1550
  %cmp2.not2.i.i = icmp slt i32 %13, 1, !dbg !1556
  br i1 %cmp2.not2.i.i, label %if.end29.i, label %for.body.preheader.i.i, !dbg !1559

for.body.preheader.i.i:                           ; preds = %if.else24.i
  %m_strands.i.i = getelementptr inbounds %struct.molecule_t, ptr %12, i64 0, i32 2, !dbg !1560
  br label %for.body.i.i, !dbg !1559

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.preheader.i.i
  %sp1.04.in.i.i = phi ptr [ %s_next.i.i, %for.inc.i.i ], [ %m_strands.i.i, %for.body.preheader.i.i ]
  %m.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 1, %for.body.preheader.i.i ]
  %sp1.04.i.i = load ptr, ptr %sp1.04.in.i.i, align 8, !dbg !1561, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %m.03.i.i, metadata !1545, metadata !DIExpression()) #14, !dbg !1550
  %cmp3.i.i = icmp ne ptr %sp1.04.i.i, %ap.val3.val.i, !dbg !1562
  %cmp5.not.i.i = icmp slt i32 %m.03.i.i, %9
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %cmp5.not.i.i, !dbg !1565
  %cmp6.not.i.i = icmp sgt i32 %m.03.i.i, %.hi.i.i
  %or.cond22.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp6.not.i.i, !dbg !1565
  br i1 %or.cond22.i.i, label %for.inc.i.i, label %RPART.i, !dbg !1565

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %m.03.i.i, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !1545, metadata !DIExpression()) #14, !dbg !1550
  %s_next.i.i = getelementptr inbounds %struct.strand_t, ptr %sp1.04.i.i, i64 0, i32 4, !dbg !1567
  call void @llvm.dbg.value(metadata ptr undef, metadata !1548, metadata !DIExpression()) #14, !dbg !1550
  call void @llvm.dbg.value(metadata ptr undef, metadata !1548, metadata !DIExpression()) #14, !dbg !1550
  %exitcond.not.i.i = icmp eq i32 %m.03.i.i, %13, !dbg !1556
  br i1 %exitcond.not.i.i, label %if.end29.i, label %for.body.i.i, !dbg !1559, !llvm.loop !1568

if.end29.i:                                       ; preds = %for.inc.i.i, %if.else24.i, %atom_in_str_pat.exit.i
  %call30166.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %call30166.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  %tobool31.not167.i = icmp eq ptr %call30166.i, null, !dbg !1571
  br i1 %tobool31.not167.i, label %if.end16, label %while.body.i, !dbg !1571

while.body.i:                                     ; preds = %if.end29.i, %if.end44.i
  %call30168.i = phi ptr [ %call30.i, %if.end44.i ], [ %call30166.i, %if.end29.i ]
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !1446, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !1447, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  %call32.i = call fastcc i32 @is_pattern(ptr noundef nonnull %call30168.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1572
  %tobool33.not.i = icmp eq i32 %call32.i, 0, !dbg !1572
  br i1 %tobool33.not.i, label %if.else39.i, label %if.then34.i, !dbg !1575

if.then34.i:                                      ; preds = %while.body.i
  %ap.val.i = load ptr, ptr %0, align 8, !dbg !1576, !tbaa !1494
  %14 = getelementptr i8, ptr %ap.val.i, i64 56, !dbg !1576
  %ap.val.val.i = load ptr, ptr %14, align 8, !dbg !1576, !tbaa !1495
  call void @llvm.dbg.value(metadata ptr undef, metadata !1496, metadata !DIExpression()) #14, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %call30168.i, metadata !1499, metadata !DIExpression()) #14, !dbg !1579
  call void @llvm.dbg.value(metadata ptr undef, metadata !1500, metadata !DIExpression()) #14, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %ap.val.val.i, metadata !1501, metadata !DIExpression()) #14, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %call30168.i, metadata !604, metadata !DIExpression()) #14, !dbg !1581
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1581
  store i8 94, ptr @rexpr, align 16, !dbg !1583, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call30168.i, metadata !610, metadata !DIExpression()) #14, !dbg !1581
  br label %for.cond.i.i11.i, !dbg !1584

for.cond.i.i11.i:                                 ; preds = %for.inc.i.i21.i, %if.then34.i
  %aep.0.i.i9.i = phi ptr [ %call30168.i, %if.then34.i ], [ %incdec.ptr12.i.i20.i, %for.inc.i.i21.i ], !dbg !1585
  %rep.0.i.i10.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then34.i ], [ %rep.1.i.i19.i, %for.inc.i.i21.i ], !dbg !1581
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i10.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i9.i, metadata !610, metadata !DIExpression()) #14, !dbg !1581
  %15 = load i8, ptr %aep.0.i.i9.i, align 1, !dbg !1586, !tbaa !546
  switch i8 %15, label %if.else9.i.i18.i [
    i8 0, label %atom_in_str_pat.exit27.i
    i8 42, label %if.then.i.i14.i
    i8 63, label %if.then7.i.i16.i
  ], !dbg !1587

if.then.i.i14.i:                                  ; preds = %for.cond.i.i11.i
  %incdec.ptr2.i.i12.i = getelementptr inbounds i8, ptr %rep.0.i.i10.i, i64 1, !dbg !1588
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i12.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  store i8 46, ptr %rep.0.i.i10.i, align 1, !dbg !1589, !tbaa !546
  %incdec.ptr3.i.i13.i = getelementptr inbounds i8, ptr %rep.0.i.i10.i, i64 2, !dbg !1590
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i13.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  store i8 42, ptr %incdec.ptr2.i.i12.i, align 1, !dbg !1591, !tbaa !546
  br label %for.inc.i.i21.i, !dbg !1592

if.then7.i.i16.i:                                 ; preds = %for.cond.i.i11.i
  %incdec.ptr8.i.i15.i = getelementptr inbounds i8, ptr %rep.0.i.i10.i, i64 1, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i15.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  store i8 46, ptr %rep.0.i.i10.i, align 1, !dbg !1594, !tbaa !546
  br label %for.inc.i.i21.i, !dbg !1595

if.else9.i.i18.i:                                 ; preds = %for.cond.i.i11.i
  %incdec.ptr10.i.i17.i = getelementptr inbounds i8, ptr %rep.0.i.i10.i, i64 1, !dbg !1596
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i17.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  store i8 %15, ptr %rep.0.i.i10.i, align 1, !dbg !1597, !tbaa !546
  br label %for.inc.i.i21.i

for.inc.i.i21.i:                                  ; preds = %if.else9.i.i18.i, %if.then7.i.i16.i, %if.then.i.i14.i
  %rep.1.i.i19.i = phi ptr [ %incdec.ptr3.i.i13.i, %if.then.i.i14.i ], [ %incdec.ptr8.i.i15.i, %if.then7.i.i16.i ], [ %incdec.ptr10.i.i17.i, %if.else9.i.i18.i ], !dbg !1598
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i19.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  %incdec.ptr12.i.i20.i = getelementptr inbounds i8, ptr %aep.0.i.i9.i, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i20.i, metadata !610, metadata !DIExpression()) #14, !dbg !1581
  br label %for.cond.i.i11.i, !dbg !1600, !llvm.loop !1601

atom_in_str_pat.exit27.i:                         ; preds = %for.cond.i.i11.i
  %incdec.ptr13.i.i22.i = getelementptr inbounds i8, ptr %rep.0.i.i10.i, i64 1, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i22.i, metadata !611, metadata !DIExpression()) #14, !dbg !1581
  store i8 36, ptr %rep.0.i.i10.i, align 1, !dbg !1604, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i22.i, align 1, !dbg !1605, !tbaa !546
  %call.i23.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1606
  %16 = load ptr, ptr %ap.val.val.i, align 8, !dbg !1607, !tbaa !650
  %call1.i24.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %16, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1608
  %cmp.i25.not.i = icmp eq i32 %call1.i24.i, 0, !dbg !1609
  br i1 %cmp.i25.not.i, label %RPART.i, label %if.end44.i, !dbg !1610

if.else39.i:                                      ; preds = %while.body.i
  %17 = load i32, ptr %lo.i, align 4, !dbg !1611, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %17, metadata !1446, metadata !DIExpression()) #14, !dbg !1450
  %18 = load i32, ptr %hi.i, align 4, !dbg !1613, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %18, metadata !1447, metadata !DIExpression()) #14, !dbg !1450
  %ap.val2.i = load ptr, ptr %0, align 8, !dbg !1614, !tbaa !1494
  %19 = getelementptr i8, ptr %ap.val2.i, i64 56, !dbg !1614
  %ap.val2.val.i = load ptr, ptr %19, align 8, !dbg !1614, !tbaa !1495
  call void @llvm.dbg.value(metadata ptr undef, metadata !1538, metadata !DIExpression()) #14, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %17, metadata !1543, metadata !DIExpression()) #14, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %18, metadata !1544, metadata !DIExpression()) #14, !dbg !1615
  call void @llvm.dbg.value(metadata ptr undef, metadata !1546, metadata !DIExpression()) #14, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %ap.val2.val.i, metadata !1547, metadata !DIExpression()) #14, !dbg !1615
  %s_molecule.i28.i = getelementptr inbounds %struct.strand_t, ptr %ap.val2.val.i, i64 0, i32 3, !dbg !1617
  %20 = load ptr, ptr %s_molecule.i28.i, align 8, !dbg !1617, !tbaa !1553
  call void @llvm.dbg.value(metadata ptr %20, metadata !1549, metadata !DIExpression()) #14, !dbg !1615
  %cmp.i29.i = icmp eq i32 %18, -1, !dbg !1618
  %m_nstrands.i30.i = getelementptr inbounds %struct.molecule_t, ptr %20, i64 0, i32 1
  %21 = load i32, ptr %m_nstrands.i30.i, align 8, !tbaa !674
  %.hi.i31.i = select i1 %cmp.i29.i, i32 %21, i32 %18, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %.hi.i31.i, metadata !1544, metadata !DIExpression()) #14, !dbg !1615
  call void @llvm.dbg.value(metadata ptr undef, metadata !1548, metadata !DIExpression()) #14, !dbg !1615
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()) #14, !dbg !1615
  %cmp2.not2.i32.i = icmp slt i32 %21, 1, !dbg !1619
  br i1 %cmp2.not2.i32.i, label %if.end44.i, label %for.body.preheader.i34.i, !dbg !1620

for.body.preheader.i34.i:                         ; preds = %if.else39.i
  %m_strands.i33.i = getelementptr inbounds %struct.molecule_t, ptr %20, i64 0, i32 2, !dbg !1621
  br label %for.body.i43.i, !dbg !1620

for.body.i43.i:                                   ; preds = %for.inc.i47.i, %for.body.preheader.i34.i
  %sp1.04.in.i35.i = phi ptr [ %s_next.i45.i, %for.inc.i47.i ], [ %m_strands.i33.i, %for.body.preheader.i34.i ]
  %m.03.i36.i = phi i32 [ %inc.i44.i, %for.inc.i47.i ], [ 1, %for.body.preheader.i34.i ]
  %sp1.04.i37.i = load ptr, ptr %sp1.04.in.i35.i, align 8, !dbg !1622, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %m.03.i36.i, metadata !1545, metadata !DIExpression()) #14, !dbg !1615
  %cmp3.i38.i = icmp ne ptr %sp1.04.i37.i, %ap.val2.val.i, !dbg !1623
  %cmp5.not.i39.i = icmp slt i32 %m.03.i36.i, %17
  %or.cond.i40.i = select i1 %cmp3.i38.i, i1 true, i1 %cmp5.not.i39.i, !dbg !1624
  %cmp6.not.i41.i = icmp sgt i32 %m.03.i36.i, %.hi.i31.i
  %or.cond22.i42.i = select i1 %or.cond.i40.i, i1 true, i1 %cmp6.not.i41.i, !dbg !1624
  br i1 %or.cond22.i42.i, label %for.inc.i47.i, label %RPART.i, !dbg !1624

for.inc.i47.i:                                    ; preds = %for.body.i43.i
  %inc.i44.i = add nuw i32 %m.03.i36.i, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %inc.i44.i, metadata !1545, metadata !DIExpression()) #14, !dbg !1615
  %s_next.i45.i = getelementptr inbounds %struct.strand_t, ptr %sp1.04.i37.i, i64 0, i32 4, !dbg !1626
  call void @llvm.dbg.value(metadata ptr undef, metadata !1548, metadata !DIExpression()) #14, !dbg !1615
  %exitcond.not.i46.i = icmp eq i32 %m.03.i36.i, %21, !dbg !1619
  br i1 %exitcond.not.i46.i, label %if.end44.i, label %for.body.i43.i, !dbg !1620, !llvm.loop !1627

if.end44.i:                                       ; preds = %for.inc.i47.i, %if.else39.i, %atom_in_str_pat.exit27.i
  %call30.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %call30.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  %tobool31.not.i = icmp eq ptr %call30.i, null, !dbg !1571
  br i1 %tobool31.not.i, label %if.end16, label %while.body.i, !dbg !1571, !llvm.loop !1629

RPART.i:                                          ; preds = %for.body.i.i, %atom_in_str_pat.exit27.i, %for.body.i43.i, %atom_in_str_pat.exit.i, %if.end13.i
  call void @llvm.dbg.label(metadata !1448) #14, !dbg !1631
  %22 = load ptr, ptr @rpart, align 8, !dbg !1632, !tbaa !298
  %tobool46.not.i = icmp eq ptr %22, null, !dbg !1632
  br i1 %tobool46.not.i, label %APART.i, label %if.then47.i, !dbg !1634

if.then47.i:                                      ; preds = %RPART.i
  %call48.i = tail call ptr @strtok(ptr noundef nonnull %22, ptr noundef nonnull @.str.4) #14, !dbg !1635
  call void @llvm.dbg.value(metadata ptr %call48.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !1446, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !1447, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  %call49.i = call fastcc i32 @is_pattern(ptr noundef %call48.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1637
  %tobool50.not.i = icmp eq i32 %call49.i, 0, !dbg !1637
  br i1 %tobool50.not.i, label %if.else56.i, label %if.then51.i, !dbg !1639

if.then51.i:                                      ; preds = %if.then47.i
  %ap.val5.i = load ptr, ptr %0, align 8, !dbg !1640, !tbaa !1494
  call void @llvm.dbg.value(metadata ptr undef, metadata !1643, metadata !DIExpression()) #14, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %call48.i, metadata !1646, metadata !DIExpression()) #14, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %ap.val5.i, metadata !1647, metadata !DIExpression()) #14, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %call48.i, metadata !604, metadata !DIExpression()) #14, !dbg !1650
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1650
  store i8 94, ptr @rexpr, align 16, !dbg !1652, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call48.i, metadata !610, metadata !DIExpression()) #14, !dbg !1650
  br label %for.cond.i.i52.i, !dbg !1653

for.cond.i.i52.i:                                 ; preds = %for.inc.i.i62.i, %if.then51.i
  %aep.0.i.i50.i = phi ptr [ %call48.i, %if.then51.i ], [ %incdec.ptr12.i.i61.i, %for.inc.i.i62.i ], !dbg !1654
  %rep.0.i.i51.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then51.i ], [ %rep.1.i.i60.i, %for.inc.i.i62.i ], !dbg !1650
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i51.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i50.i, metadata !610, metadata !DIExpression()) #14, !dbg !1650
  %23 = load i8, ptr %aep.0.i.i50.i, align 1, !dbg !1655, !tbaa !546
  switch i8 %23, label %if.else9.i.i59.i [
    i8 0, label %atom_in_res_pat.exit.i
    i8 42, label %if.then.i.i55.i
    i8 63, label %if.then7.i.i57.i
  ], !dbg !1656

if.then.i.i55.i:                                  ; preds = %for.cond.i.i52.i
  %incdec.ptr2.i.i53.i = getelementptr inbounds i8, ptr %rep.0.i.i51.i, i64 1, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i53.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  store i8 46, ptr %rep.0.i.i51.i, align 1, !dbg !1658, !tbaa !546
  %incdec.ptr3.i.i54.i = getelementptr inbounds i8, ptr %rep.0.i.i51.i, i64 2, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i54.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  store i8 42, ptr %incdec.ptr2.i.i53.i, align 1, !dbg !1660, !tbaa !546
  br label %for.inc.i.i62.i, !dbg !1661

if.then7.i.i57.i:                                 ; preds = %for.cond.i.i52.i
  %incdec.ptr8.i.i56.i = getelementptr inbounds i8, ptr %rep.0.i.i51.i, i64 1, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i56.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  store i8 46, ptr %rep.0.i.i51.i, align 1, !dbg !1663, !tbaa !546
  br label %for.inc.i.i62.i, !dbg !1664

if.else9.i.i59.i:                                 ; preds = %for.cond.i.i52.i
  %incdec.ptr10.i.i58.i = getelementptr inbounds i8, ptr %rep.0.i.i51.i, i64 1, !dbg !1665
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i58.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  store i8 %23, ptr %rep.0.i.i51.i, align 1, !dbg !1666, !tbaa !546
  br label %for.inc.i.i62.i

for.inc.i.i62.i:                                  ; preds = %if.else9.i.i59.i, %if.then7.i.i57.i, %if.then.i.i55.i
  %rep.1.i.i60.i = phi ptr [ %incdec.ptr3.i.i54.i, %if.then.i.i55.i ], [ %incdec.ptr8.i.i56.i, %if.then7.i.i57.i ], [ %incdec.ptr10.i.i58.i, %if.else9.i.i59.i ], !dbg !1667
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i60.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  %incdec.ptr12.i.i61.i = getelementptr inbounds i8, ptr %aep.0.i.i50.i, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i61.i, metadata !610, metadata !DIExpression()) #14, !dbg !1650
  br label %for.cond.i.i52.i, !dbg !1669, !llvm.loop !1670

atom_in_res_pat.exit.i:                           ; preds = %for.cond.i.i52.i
  %incdec.ptr13.i.i63.i = getelementptr inbounds i8, ptr %rep.0.i.i51.i, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i63.i, metadata !611, metadata !DIExpression()) #14, !dbg !1650
  store i8 36, ptr %rep.0.i.i51.i, align 1, !dbg !1673, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i63.i, align 1, !dbg !1674, !tbaa !546
  %call.i64.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1675
  %r_resname.i.i = getelementptr inbounds %struct.residue_t, ptr %ap.val5.i, i64 0, i32 4, !dbg !1676
  %24 = load ptr, ptr %r_resname.i.i, align 8, !dbg !1676, !tbaa !907
  %call1.i65.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %24, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1677
  %cmp.i66.not.i = icmp eq i32 %call1.i65.i, 0, !dbg !1678
  br i1 %cmp.i66.not.i, label %APART.i, label %if.end61.i, !dbg !1679

if.else56.i:                                      ; preds = %if.then47.i
  %25 = load i32, ptr %lo.i, align 4, !dbg !1680, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %25, metadata !1446, metadata !DIExpression()) #14, !dbg !1450
  %26 = load i32, ptr %hi.i, align 4, !dbg !1682, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %26, metadata !1447, metadata !DIExpression()) #14, !dbg !1450
  %ap.val7.i = load ptr, ptr %0, align 8, !dbg !1683, !tbaa !1494
  call void @llvm.dbg.value(metadata ptr undef, metadata !1684, metadata !DIExpression()) #14, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %25, metadata !1687, metadata !DIExpression()) #14, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %26, metadata !1688, metadata !DIExpression()) #14, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %ap.val7.i, metadata !1692, metadata !DIExpression()) #14, !dbg !1694
  %r_strand.i.i = getelementptr inbounds %struct.residue_t, ptr %ap.val7.i, i64 0, i32 9, !dbg !1696
  %27 = load ptr, ptr %r_strand.i.i, align 8, !dbg !1696, !tbaa !1495
  call void @llvm.dbg.value(metadata ptr %27, metadata !1691, metadata !DIExpression()) #14, !dbg !1694
  %cmp.i68.i = icmp eq i32 %26, -1, !dbg !1697
  %s_nresidues.i.i = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 5
  %28 = load i32, ptr %s_nresidues.i.i, align 8, !tbaa !312
  %.hi.i69.i = select i1 %cmp.i68.i, i32 %28, i32 %26, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %.hi.i69.i, metadata !1690, metadata !DIExpression()) #14, !dbg !1694
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()) #14, !dbg !1694
  %s_residues.i.i = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %29 = sext i32 %.hi.i69.i to i64, !dbg !1699
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #14, !dbg !1699
  %wide.trip.count.i.i = zext i32 %smax.i.i to i64, !dbg !1701
  br label %for.cond.i.i, !dbg !1699

for.cond.i.i:                                     ; preds = %for.body.i73.i, %if.else56.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i73.i ], [ 0, %if.else56.i ], !dbg !1703
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1689, metadata !DIExpression()) #14, !dbg !1694
  %exitcond.not.i70.i = icmp eq i64 %indvars.iv.i.i, %wide.trip.count.i.i, !dbg !1701
  br i1 %exitcond.not.i70.i, label %if.end61.i, label %for.body.i73.i, !dbg !1704

for.body.i73.i:                                   ; preds = %for.cond.i.i
  %30 = load ptr, ptr %s_residues.i.i, align 8, !dbg !1705, !tbaa !318
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %30, i64 %indvars.iv.i.i, !dbg !1707
  %31 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !1707, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %31, metadata !1693, metadata !DIExpression()) #14, !dbg !1694
  %cmp3.i71.i = icmp eq ptr %31, %ap.val7.i, !dbg !1708
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %32 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp4.not.i.i = icmp sle i32 %25, %32
  %or.cond.i72.i = select i1 %cmp3.i71.i, i1 %cmp4.not.i.i, i1 false, !dbg !1710
  %cmp6.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %29
  %or.cond21.i.i = select i1 %or.cond.i72.i, i1 %cmp6.not.not.i.i, i1 false, !dbg !1710
  br i1 %or.cond21.i.i, label %APART.i, label %for.cond.i.i, !dbg !1710, !llvm.loop !1711

if.end61.i:                                       ; preds = %for.cond.i.i, %atom_in_res_pat.exit.i
  %call63169.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %call63169.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  %tobool64.not170.i = icmp eq ptr %call63169.i, null, !dbg !1714
  br i1 %tobool64.not170.i, label %if.end16, label %while.body65.i, !dbg !1714

while.body65.i:                                   ; preds = %if.end61.i, %if.end78.i
  %call63171.i = phi ptr [ %call63.i, %if.end78.i ], [ %call63169.i, %if.end61.i ]
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !1446, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !1447, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  %call66.i = call fastcc i32 @is_pattern(ptr noundef nonnull %call63171.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1715
  %tobool67.not.i = icmp eq i32 %call66.i, 0, !dbg !1715
  br i1 %tobool67.not.i, label %if.else73.i, label %if.then68.i, !dbg !1718

if.then68.i:                                      ; preds = %while.body65.i
  %ap.val4.i = load ptr, ptr %0, align 8, !dbg !1719, !tbaa !1494
  call void @llvm.dbg.value(metadata ptr undef, metadata !1643, metadata !DIExpression()) #14, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %call63171.i, metadata !1646, metadata !DIExpression()) #14, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %ap.val4.i, metadata !1647, metadata !DIExpression()) #14, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %call63171.i, metadata !604, metadata !DIExpression()) #14, !dbg !1724
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1724
  store i8 94, ptr @rexpr, align 16, !dbg !1726, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call63171.i, metadata !610, metadata !DIExpression()) #14, !dbg !1724
  br label %for.cond.i.i77.i, !dbg !1727

for.cond.i.i77.i:                                 ; preds = %for.inc.i.i87.i, %if.then68.i
  %aep.0.i.i75.i = phi ptr [ %call63171.i, %if.then68.i ], [ %incdec.ptr12.i.i86.i, %for.inc.i.i87.i ], !dbg !1728
  %rep.0.i.i76.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then68.i ], [ %rep.1.i.i85.i, %for.inc.i.i87.i ], !dbg !1724
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i76.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i75.i, metadata !610, metadata !DIExpression()) #14, !dbg !1724
  %33 = load i8, ptr %aep.0.i.i75.i, align 1, !dbg !1729, !tbaa !546
  switch i8 %33, label %if.else9.i.i84.i [
    i8 0, label %atom_in_res_pat.exit94.i
    i8 42, label %if.then.i.i80.i
    i8 63, label %if.then7.i.i82.i
  ], !dbg !1730

if.then.i.i80.i:                                  ; preds = %for.cond.i.i77.i
  %incdec.ptr2.i.i78.i = getelementptr inbounds i8, ptr %rep.0.i.i76.i, i64 1, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i78.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  store i8 46, ptr %rep.0.i.i76.i, align 1, !dbg !1732, !tbaa !546
  %incdec.ptr3.i.i79.i = getelementptr inbounds i8, ptr %rep.0.i.i76.i, i64 2, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i79.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  store i8 42, ptr %incdec.ptr2.i.i78.i, align 1, !dbg !1734, !tbaa !546
  br label %for.inc.i.i87.i, !dbg !1735

if.then7.i.i82.i:                                 ; preds = %for.cond.i.i77.i
  %incdec.ptr8.i.i81.i = getelementptr inbounds i8, ptr %rep.0.i.i76.i, i64 1, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i81.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  store i8 46, ptr %rep.0.i.i76.i, align 1, !dbg !1737, !tbaa !546
  br label %for.inc.i.i87.i, !dbg !1738

if.else9.i.i84.i:                                 ; preds = %for.cond.i.i77.i
  %incdec.ptr10.i.i83.i = getelementptr inbounds i8, ptr %rep.0.i.i76.i, i64 1, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i83.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  store i8 %33, ptr %rep.0.i.i76.i, align 1, !dbg !1740, !tbaa !546
  br label %for.inc.i.i87.i

for.inc.i.i87.i:                                  ; preds = %if.else9.i.i84.i, %if.then7.i.i82.i, %if.then.i.i80.i
  %rep.1.i.i85.i = phi ptr [ %incdec.ptr3.i.i79.i, %if.then.i.i80.i ], [ %incdec.ptr8.i.i81.i, %if.then7.i.i82.i ], [ %incdec.ptr10.i.i83.i, %if.else9.i.i84.i ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i85.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  %incdec.ptr12.i.i86.i = getelementptr inbounds i8, ptr %aep.0.i.i75.i, i64 1, !dbg !1742
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i86.i, metadata !610, metadata !DIExpression()) #14, !dbg !1724
  br label %for.cond.i.i77.i, !dbg !1743, !llvm.loop !1744

atom_in_res_pat.exit94.i:                         ; preds = %for.cond.i.i77.i
  %incdec.ptr13.i.i88.i = getelementptr inbounds i8, ptr %rep.0.i.i76.i, i64 1, !dbg !1746
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i88.i, metadata !611, metadata !DIExpression()) #14, !dbg !1724
  store i8 36, ptr %rep.0.i.i76.i, align 1, !dbg !1747, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i88.i, align 1, !dbg !1748, !tbaa !546
  %call.i89.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1749
  %r_resname.i90.i = getelementptr inbounds %struct.residue_t, ptr %ap.val4.i, i64 0, i32 4, !dbg !1750
  %34 = load ptr, ptr %r_resname.i90.i, align 8, !dbg !1750, !tbaa !907
  %call1.i91.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %34, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1751
  %cmp.i92.not.i = icmp eq i32 %call1.i91.i, 0, !dbg !1752
  br i1 %cmp.i92.not.i, label %APART.i, label %if.end78.i, !dbg !1753

if.else73.i:                                      ; preds = %while.body65.i
  %35 = load i32, ptr %lo.i, align 4, !dbg !1754, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %35, metadata !1446, metadata !DIExpression()) #14, !dbg !1450
  %36 = load i32, ptr %hi.i, align 4, !dbg !1756, !tbaa !659
  call void @llvm.dbg.value(metadata i32 %36, metadata !1447, metadata !DIExpression()) #14, !dbg !1450
  %ap.val6.i = load ptr, ptr %0, align 8, !dbg !1757, !tbaa !1494
  call void @llvm.dbg.value(metadata ptr undef, metadata !1684, metadata !DIExpression()) #14, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %35, metadata !1687, metadata !DIExpression()) #14, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %36, metadata !1688, metadata !DIExpression()) #14, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %ap.val6.i, metadata !1692, metadata !DIExpression()) #14, !dbg !1758
  %r_strand.i95.i = getelementptr inbounds %struct.residue_t, ptr %ap.val6.i, i64 0, i32 9, !dbg !1760
  %37 = load ptr, ptr %r_strand.i95.i, align 8, !dbg !1760, !tbaa !1495
  call void @llvm.dbg.value(metadata ptr %37, metadata !1691, metadata !DIExpression()) #14, !dbg !1758
  %cmp.i96.i = icmp eq i32 %36, -1, !dbg !1761
  %s_nresidues.i97.i = getelementptr inbounds %struct.strand_t, ptr %37, i64 0, i32 5
  %38 = load i32, ptr %s_nresidues.i97.i, align 8, !tbaa !312
  %.hi.i98.i = select i1 %cmp.i96.i, i32 %38, i32 %36, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %.hi.i98.i, metadata !1690, metadata !DIExpression()) #14, !dbg !1758
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()) #14, !dbg !1758
  %s_residues.i99.i = getelementptr inbounds %struct.strand_t, ptr %37, i64 0, i32 7
  %39 = sext i32 %.hi.i98.i to i64, !dbg !1763
  %smax.i100.i = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #14, !dbg !1763
  %wide.trip.count.i101.i = zext i32 %smax.i100.i to i64, !dbg !1764
  br label %for.cond.i104.i, !dbg !1763

for.cond.i104.i:                                  ; preds = %for.body.i112.i, %if.else73.i
  %indvars.iv.i102.i = phi i64 [ %indvars.iv.next.i107.i, %for.body.i112.i ], [ 0, %if.else73.i ], !dbg !1765
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i102.i, metadata !1689, metadata !DIExpression()) #14, !dbg !1758
  %exitcond.not.i103.i = icmp eq i64 %indvars.iv.i102.i, %wide.trip.count.i101.i, !dbg !1764
  br i1 %exitcond.not.i103.i, label %if.end78.i, label %for.body.i112.i, !dbg !1766

for.body.i112.i:                                  ; preds = %for.cond.i104.i
  %40 = load ptr, ptr %s_residues.i99.i, align 8, !dbg !1767, !tbaa !318
  %arrayidx.i105.i = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv.i102.i, !dbg !1768
  %41 = load ptr, ptr %arrayidx.i105.i, align 8, !dbg !1768, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %41, metadata !1693, metadata !DIExpression()) #14, !dbg !1758
  %cmp3.i106.i = icmp eq ptr %41, %ap.val6.i, !dbg !1769
  %indvars.iv.next.i107.i = add nuw nsw i64 %indvars.iv.i102.i, 1
  %42 = trunc i64 %indvars.iv.next.i107.i to i32
  %cmp4.not.i108.i = icmp sle i32 %35, %42
  %or.cond.i109.i = select i1 %cmp3.i106.i, i1 %cmp4.not.i108.i, i1 false, !dbg !1770
  %cmp6.not.not.i110.i = icmp slt i64 %indvars.iv.i102.i, %39
  %or.cond21.i111.i = select i1 %or.cond.i109.i, i1 %cmp6.not.not.i110.i, i1 false, !dbg !1770
  br i1 %or.cond21.i111.i, label %APART.i, label %for.cond.i104.i, !dbg !1770, !llvm.loop !1771

if.end78.i:                                       ; preds = %for.cond.i104.i, %atom_in_res_pat.exit94.i
  %call63.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %call63.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  %tobool64.not.i = icmp eq ptr %call63.i, null, !dbg !1714
  br i1 %tobool64.not.i, label %if.end16, label %while.body65.i, !dbg !1714, !llvm.loop !1773

APART.i:                                          ; preds = %for.body.i73.i, %atom_in_res_pat.exit94.i, %for.body.i112.i, %atom_in_res_pat.exit.i, %RPART.i
  call void @llvm.dbg.label(metadata !1449) #14, !dbg !1775
  %43 = load ptr, ptr @apart, align 8, !dbg !1776, !tbaa !298
  %tobool81.not.i = icmp eq ptr %43, null, !dbg !1776
  br i1 %tobool81.not.i, label %atom_in_1_aexpr.exit, label %if.then82.i, !dbg !1778

if.then82.i:                                      ; preds = %APART.i
  %call83.i = tail call ptr @strtok(ptr noundef nonnull %43, ptr noundef nonnull @.str.4) #14, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %call83.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !1446, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !1447, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  %call84.i = call fastcc i32 @is_pattern(ptr noundef %call83.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1781
  %tobool85.not.i = icmp eq i32 %call84.i, 0, !dbg !1781
  br i1 %tobool85.not.i, label %cleanup.sink.split.i, label %if.then86.i, !dbg !1783

if.then86.i:                                      ; preds = %if.then82.i
  call void @llvm.dbg.value(metadata ptr %ap, metadata !1784, metadata !DIExpression()) #14, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call83.i, metadata !1787, metadata !DIExpression()) #14, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call83.i, metadata !604, metadata !DIExpression()) #14, !dbg !1792
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1792
  store i8 94, ptr @rexpr, align 16, !dbg !1794, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call83.i, metadata !610, metadata !DIExpression()) #14, !dbg !1792
  br label %for.cond.i.i117.i, !dbg !1795

for.cond.i.i117.i:                                ; preds = %for.inc.i.i127.i, %if.then86.i
  %aep.0.i.i115.i = phi ptr [ %call83.i, %if.then86.i ], [ %incdec.ptr12.i.i126.i, %for.inc.i.i127.i ], !dbg !1796
  %rep.0.i.i116.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then86.i ], [ %rep.1.i.i125.i, %for.inc.i.i127.i ], !dbg !1792
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i116.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i115.i, metadata !610, metadata !DIExpression()) #14, !dbg !1792
  %44 = load i8, ptr %aep.0.i.i115.i, align 1, !dbg !1797, !tbaa !546
  switch i8 %44, label %if.else9.i.i124.i [
    i8 0, label %atom_in_atom_pat.exit.i
    i8 42, label %if.then.i.i120.i
    i8 63, label %if.then7.i.i122.i
  ], !dbg !1798

if.then.i.i120.i:                                 ; preds = %for.cond.i.i117.i
  %incdec.ptr2.i.i118.i = getelementptr inbounds i8, ptr %rep.0.i.i116.i, i64 1, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i118.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  store i8 46, ptr %rep.0.i.i116.i, align 1, !dbg !1800, !tbaa !546
  %incdec.ptr3.i.i119.i = getelementptr inbounds i8, ptr %rep.0.i.i116.i, i64 2, !dbg !1801
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i119.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  store i8 42, ptr %incdec.ptr2.i.i118.i, align 1, !dbg !1802, !tbaa !546
  br label %for.inc.i.i127.i, !dbg !1803

if.then7.i.i122.i:                                ; preds = %for.cond.i.i117.i
  %incdec.ptr8.i.i121.i = getelementptr inbounds i8, ptr %rep.0.i.i116.i, i64 1, !dbg !1804
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i121.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  store i8 46, ptr %rep.0.i.i116.i, align 1, !dbg !1805, !tbaa !546
  br label %for.inc.i.i127.i, !dbg !1806

if.else9.i.i124.i:                                ; preds = %for.cond.i.i117.i
  %incdec.ptr10.i.i123.i = getelementptr inbounds i8, ptr %rep.0.i.i116.i, i64 1, !dbg !1807
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i123.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  store i8 %44, ptr %rep.0.i.i116.i, align 1, !dbg !1808, !tbaa !546
  br label %for.inc.i.i127.i

for.inc.i.i127.i:                                 ; preds = %if.else9.i.i124.i, %if.then7.i.i122.i, %if.then.i.i120.i
  %rep.1.i.i125.i = phi ptr [ %incdec.ptr3.i.i119.i, %if.then.i.i120.i ], [ %incdec.ptr8.i.i121.i, %if.then7.i.i122.i ], [ %incdec.ptr10.i.i123.i, %if.else9.i.i124.i ], !dbg !1809
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i125.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  %incdec.ptr12.i.i126.i = getelementptr inbounds i8, ptr %aep.0.i.i115.i, i64 1, !dbg !1810
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i126.i, metadata !610, metadata !DIExpression()) #14, !dbg !1792
  br label %for.cond.i.i117.i, !dbg !1811, !llvm.loop !1812

atom_in_atom_pat.exit.i:                          ; preds = %for.cond.i.i117.i
  %incdec.ptr13.i.i128.i = getelementptr inbounds i8, ptr %rep.0.i.i116.i, i64 1, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i128.i, metadata !611, metadata !DIExpression()) #14, !dbg !1792
  store i8 36, ptr %rep.0.i.i116.i, align 1, !dbg !1815, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i128.i, align 1, !dbg !1816, !tbaa !546
  %call.i129.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1817
  %45 = load ptr, ptr %ap, align 8, !dbg !1818, !tbaa !1259
  %call1.i130.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %45, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1819
  %cmp.i131.not.i = icmp eq i32 %call1.i130.i, 0, !dbg !1820
  br i1 %cmp.i131.not.i, label %atom_in_1_aexpr.exit, label %while.cond94.i, !dbg !1821

while.cond94.i:                                   ; preds = %atom_in_atom_pat.exit.i, %atom_in_atom_pat.exit151.i
  %call95.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #14, !dbg !1822
  call void @llvm.dbg.value(metadata ptr %call95.i, metadata !1445, metadata !DIExpression()) #14, !dbg !1450
  %tobool96.not.i = icmp eq ptr %call95.i, null, !dbg !1823
  br i1 %tobool96.not.i, label %if.end16, label %while.body97.i, !dbg !1823

while.body97.i:                                   ; preds = %while.cond94.i
  call void @llvm.dbg.value(metadata ptr %lo.i, metadata !1446, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %hi.i, metadata !1447, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1450
  %call98.i = call fastcc i32 @is_pattern(ptr noundef nonnull %call95.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i) #14, !dbg !1824
  %tobool99.not.i = icmp eq i32 %call98.i, 0, !dbg !1824
  br i1 %tobool99.not.i, label %cleanup.sink.split.i, label %if.then100.i, !dbg !1827

if.then100.i:                                     ; preds = %while.body97.i
  call void @llvm.dbg.value(metadata ptr %ap, metadata !1784, metadata !DIExpression()) #14, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %call95.i, metadata !1787, metadata !DIExpression()) #14, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %call95.i, metadata !604, metadata !DIExpression()) #14, !dbg !1832
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()) #14, !dbg !1832
  store i8 94, ptr @rexpr, align 16, !dbg !1834, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %call95.i, metadata !610, metadata !DIExpression()) #14, !dbg !1832
  br label %for.cond.i.i135.i, !dbg !1835

for.cond.i.i135.i:                                ; preds = %for.inc.i.i145.i, %if.then100.i
  %aep.0.i.i133.i = phi ptr [ %call95.i, %if.then100.i ], [ %incdec.ptr12.i.i144.i, %for.inc.i.i145.i ], !dbg !1836
  %rep.0.i.i134.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %if.then100.i ], [ %rep.1.i.i143.i, %for.inc.i.i145.i ], !dbg !1832
  call void @llvm.dbg.value(metadata ptr %rep.0.i.i134.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  call void @llvm.dbg.value(metadata ptr %aep.0.i.i133.i, metadata !610, metadata !DIExpression()) #14, !dbg !1832
  %46 = load i8, ptr %aep.0.i.i133.i, align 1, !dbg !1837, !tbaa !546
  switch i8 %46, label %if.else9.i.i142.i [
    i8 0, label %atom_in_atom_pat.exit151.i
    i8 42, label %if.then.i.i138.i
    i8 63, label %if.then7.i.i140.i
  ], !dbg !1838

if.then.i.i138.i:                                 ; preds = %for.cond.i.i135.i
  %incdec.ptr2.i.i136.i = getelementptr inbounds i8, ptr %rep.0.i.i134.i, i64 1, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i.i136.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  store i8 46, ptr %rep.0.i.i134.i, align 1, !dbg !1840, !tbaa !546
  %incdec.ptr3.i.i137.i = getelementptr inbounds i8, ptr %rep.0.i.i134.i, i64 2, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i.i137.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  store i8 42, ptr %incdec.ptr2.i.i136.i, align 1, !dbg !1842, !tbaa !546
  br label %for.inc.i.i145.i, !dbg !1843

if.then7.i.i140.i:                                ; preds = %for.cond.i.i135.i
  %incdec.ptr8.i.i139.i = getelementptr inbounds i8, ptr %rep.0.i.i134.i, i64 1, !dbg !1844
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i.i139.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  store i8 46, ptr %rep.0.i.i134.i, align 1, !dbg !1845, !tbaa !546
  br label %for.inc.i.i145.i, !dbg !1846

if.else9.i.i142.i:                                ; preds = %for.cond.i.i135.i
  %incdec.ptr10.i.i141.i = getelementptr inbounds i8, ptr %rep.0.i.i134.i, i64 1, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i.i141.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  store i8 %46, ptr %rep.0.i.i134.i, align 1, !dbg !1848, !tbaa !546
  br label %for.inc.i.i145.i

for.inc.i.i145.i:                                 ; preds = %if.else9.i.i142.i, %if.then7.i.i140.i, %if.then.i.i138.i
  %rep.1.i.i143.i = phi ptr [ %incdec.ptr3.i.i137.i, %if.then.i.i138.i ], [ %incdec.ptr8.i.i139.i, %if.then7.i.i140.i ], [ %incdec.ptr10.i.i141.i, %if.else9.i.i142.i ], !dbg !1849
  call void @llvm.dbg.value(metadata ptr %rep.1.i.i143.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  %incdec.ptr12.i.i144.i = getelementptr inbounds i8, ptr %aep.0.i.i133.i, i64 1, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i.i144.i, metadata !610, metadata !DIExpression()) #14, !dbg !1832
  br label %for.cond.i.i135.i, !dbg !1851, !llvm.loop !1852

atom_in_atom_pat.exit151.i:                       ; preds = %for.cond.i.i135.i
  %incdec.ptr13.i.i146.i = getelementptr inbounds i8, ptr %rep.0.i.i134.i, i64 1, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i.i146.i, metadata !611, metadata !DIExpression()) #14, !dbg !1832
  store i8 36, ptr %rep.0.i.i134.i, align 1, !dbg !1855, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i.i146.i, align 1, !dbg !1856, !tbaa !546
  %call.i147.i = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !1857
  %47 = load ptr, ptr %ap, align 8, !dbg !1858, !tbaa !1259
  %call1.i148.i = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %47, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !1859
  %cmp.i149.not.i = icmp eq i32 %call1.i148.i, 0, !dbg !1860
  br i1 %cmp.i149.not.i, label %atom_in_1_aexpr.exit, label %while.cond94.i, !dbg !1861, !llvm.loop !1862

cleanup.sink.split.i:                             ; preds = %while.body97.i, %if.then82.i
  %48 = load ptr, ptr @stderr, align 8, !dbg !1864, !tbaa !298
  %49 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %48) #16, !dbg !1864
  br label %if.end16, !dbg !1865

atom_in_1_aexpr.exit:                             ; preds = %APART.i, %atom_in_atom_pat.exit.i, %atom_in_atom_pat.exit151.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi.i) #14, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo.i) #14, !dbg !1865
  br label %cleanup, !dbg !1866

if.end16:                                         ; preds = %if.end44.i, %if.end78.i, %while.cond94.i, %if.end61.i, %if.end29.i, %cleanup.sink.split.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi.i) #14, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo.i) #14, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !1407, metadata !DIExpression()), !dbg !1410
  %tobool17.not = icmp eq ptr %n_aep.1, null, !dbg !1867
  br i1 %tobool17.not, label %cleanup, label %if.end20, !dbg !1869

if.end20:                                         ; preds = %if.end16
  %call19 = tail call ptr @strchr(ptr noundef nonnull %n_aep.1, i32 noundef 124) #13, !dbg !1870
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1408, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %n_aep.1, metadata !1407, metadata !DIExpression()), !dbg !1410
  br label %for.body, !dbg !1416

cleanup:                                          ; preds = %if.end16, %atom_in_1_aexpr.exit, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry ], [ 1, %atom_in_1_aexpr.exit ], [ 0, %if.end16 ], !dbg !1410
  ret i32 %retval.0, !dbg !1871
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @set_attr_if(ptr nocapture noundef readonly %mol, i32 noundef %attr, i32 noundef %i_attr) local_unnamed_addr #5 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1874, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %attr, metadata !1875, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %i_attr, metadata !1876, metadata !DIExpression()), !dbg !1882
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1883
  call void @llvm.dbg.value(metadata ptr undef, metadata !1879, metadata !DIExpression()), !dbg !1882
  %sp.054 = load ptr, ptr %m_strands, align 8, !dbg !1885, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.054, metadata !1879, metadata !DIExpression()), !dbg !1882
  %tobool.not55 = icmp eq ptr %sp.054, null, !dbg !1886
  br i1 %tobool.not55, label %for.end30, label %for.body, !dbg !1886

for.body:                                         ; preds = %entry, %for.inc29
  %sp.056 = phi ptr [ %sp.0, %for.inc29 ], [ %sp.054, %entry ]
  %s_attr = getelementptr inbounds %struct.strand_t, ptr %sp.056, i64 0, i32 2, !dbg !1887
  %0 = load i32, ptr %s_attr, align 4, !dbg !1887, !tbaa !307
  %and = and i32 %0, %i_attr, !dbg !1890
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1890
  %spec.select = select i1 %tobool1.not, i32 0, i32 %attr, !dbg !1891
  %or = or i32 %spec.select, %0, !dbg !1892
  store i32 %or, ptr %s_attr, align 4, !dbg !1892, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1882
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %sp.056, i64 0, i32 5
  %1 = load i32, ptr %s_nresidues, align 8, !tbaa !312
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1882
  %cmp52 = icmp sgt i32 %1, 0, !dbg !1893
  br i1 %cmp52, label %for.body4.lr.ph, label %for.inc29, !dbg !1896

for.body4.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %sp.056, i64 0, i32 7
  %2 = load ptr, ptr %s_residues, align 8, !tbaa !318
  %wide.trip.count61 = zext i32 %1 to i64, !dbg !1893
  br label %for.body4, !dbg !1896

for.body4:                                        ; preds = %for.body4.lr.ph, %for.inc26
  %indvars.iv58 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next59, %for.inc26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv58, metadata !1878, metadata !DIExpression()), !dbg !1882
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv58, !dbg !1897
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1897, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %3, metadata !1880, metadata !DIExpression()), !dbg !1882
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 6, !dbg !1899
  %4 = load i32, ptr %r_attr, align 8, !dbg !1899, !tbaa !323
  %and5 = and i32 %4, %i_attr, !dbg !1900
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !1900
  %spec.select31 = select i1 %tobool6.not, i32 0, i32 %attr, !dbg !1901
  %or12 = or i32 %spec.select31, %4, !dbg !1902
  store i32 %or12, ptr %r_attr, align 8, !dbg !1902, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1882
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %r_natoms, align 8, !tbaa !327
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1882
  %cmp1450 = icmp sgt i32 %5, 0, !dbg !1903
  br i1 %cmp1450, label %for.body15.lr.ph, label %for.inc26, !dbg !1906

for.body15.lr.ph:                                 ; preds = %for.body4
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 17
  %6 = load ptr, ptr %r_atoms, align 8, !tbaa !333
  %wide.trip.count = zext i32 %5 to i64, !dbg !1903
  br label %for.body15, !dbg !1906

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1877, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata !DIArgList(ptr %6, i64 %indvars.iv), metadata !1881, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1882
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv, i32 2, !dbg !1907
  %7 = load i32, ptr %a_attr, align 8, !dbg !1907, !tbaa !337
  %and18 = and i32 %7, %i_attr, !dbg !1909
  %tobool19.not = icmp eq i32 %and18, 0, !dbg !1909
  %spec.select32 = select i1 %tobool19.not, i32 0, i32 %attr, !dbg !1910
  %or25 = or i32 %spec.select32, %7, !dbg !1911
  store i32 %or25, ptr %a_attr, align 8, !dbg !1911, !tbaa !337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1877, metadata !DIExpression()), !dbg !1882
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1903
  br i1 %exitcond.not, label %for.inc26, label %for.body15, !dbg !1906, !llvm.loop !1913

for.inc26:                                        ; preds = %for.body15, %for.body4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next59, metadata !1878, metadata !DIExpression()), !dbg !1882
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61, !dbg !1893
  br i1 %exitcond62.not, label %for.inc29, label %for.body4, !dbg !1896, !llvm.loop !1916

for.inc29:                                        ; preds = %for.inc26, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, ptr %sp.056, i64 0, i32 4, !dbg !1918
  call void @llvm.dbg.value(metadata ptr undef, metadata !1879, metadata !DIExpression()), !dbg !1882
  %sp.0 = load ptr, ptr %s_next, align 8, !dbg !1885, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1879, metadata !DIExpression()), !dbg !1882
  %tobool.not = icmp eq ptr %sp.0, null, !dbg !1886
  br i1 %tobool.not, label %for.end30, label %for.body, !dbg !1886, !llvm.loop !1919

for.end30:                                        ; preds = %for.inc29, %entry
  ret void, !dbg !1921
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @clear_attr(ptr nocapture noundef readonly %mol, i32 noundef %attr) local_unnamed_addr #5 !dbg !1922 {
entry:
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %attr, metadata !1927, metadata !DIExpression()), !dbg !1932
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1933
  call void @llvm.dbg.value(metadata ptr undef, metadata !1930, metadata !DIExpression()), !dbg !1932
  %sp.033 = load ptr, ptr %m_strands, align 8, !dbg !1935, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.033, metadata !1930, metadata !DIExpression()), !dbg !1932
  %tobool.not34 = icmp eq ptr %sp.033, null, !dbg !1936
  br i1 %tobool.not34, label %for.end16, label %for.body.lr.ph, !dbg !1936

for.body.lr.ph:                                   ; preds = %entry
  %neg = xor i32 %attr, -1
  br label %for.body, !dbg !1936

for.body:                                         ; preds = %for.body.lr.ph, %for.inc15
  %sp.035 = phi ptr [ %sp.033, %for.body.lr.ph ], [ %sp.0, %for.inc15 ]
  %s_attr = getelementptr inbounds %struct.strand_t, ptr %sp.035, i64 0, i32 2, !dbg !1937
  %0 = load i32, ptr %s_attr, align 4, !dbg !1940, !tbaa !307
  %and = and i32 %0, %neg, !dbg !1940
  store i32 %and, ptr %s_attr, align 4, !dbg !1940, !tbaa !307
  call void @llvm.dbg.value(metadata i32 0, metadata !1929, metadata !DIExpression()), !dbg !1932
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %sp.035, i64 0, i32 5
  %1 = load i32, ptr %s_nresidues, align 8, !tbaa !312
  call void @llvm.dbg.value(metadata i32 0, metadata !1929, metadata !DIExpression()), !dbg !1932
  %cmp31 = icmp sgt i32 %1, 0, !dbg !1941
  br i1 %cmp31, label %for.body2.lr.ph, label %for.inc15, !dbg !1944

for.body2.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %sp.035, i64 0, i32 7
  %2 = load ptr, ptr %s_residues, align 8, !tbaa !318
  %wide.trip.count40 = zext i32 %1 to i64, !dbg !1941
  br label %for.body2, !dbg !1944

for.body2:                                        ; preds = %for.body2.lr.ph, %for.inc12
  %indvars.iv37 = phi i64 [ 0, %for.body2.lr.ph ], [ %indvars.iv.next38, %for.inc12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !1929, metadata !DIExpression()), !dbg !1932
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv37, !dbg !1945
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1945, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !1932
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 6, !dbg !1947
  %4 = load i32, ptr %r_attr, align 8, !dbg !1948, !tbaa !323
  %and4 = and i32 %4, %neg, !dbg !1948
  store i32 %and4, ptr %r_attr, align 8, !dbg !1948, !tbaa !323
  call void @llvm.dbg.value(metadata i32 0, metadata !1928, metadata !DIExpression()), !dbg !1932
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %r_natoms, align 8, !tbaa !327
  call void @llvm.dbg.value(metadata i32 0, metadata !1928, metadata !DIExpression()), !dbg !1932
  %cmp629 = icmp sgt i32 %5, 0, !dbg !1949
  br i1 %cmp629, label %for.body7.lr.ph, label %for.inc12, !dbg !1952

for.body7.lr.ph:                                  ; preds = %for.body2
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %3, i64 0, i32 17
  %6 = load ptr, ptr %r_atoms, align 8, !tbaa !333
  %wide.trip.count = zext i32 %5 to i64, !dbg !1949
  br label %for.body7, !dbg !1952

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1928, metadata !DIExpression()), !dbg !1932
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %6, i64 %indvars.iv, i32 2, !dbg !1953
  %7 = load i32, ptr %a_attr, align 8, !dbg !1954, !tbaa !337
  %and11 = and i32 %7, %neg, !dbg !1954
  store i32 %and11, ptr %a_attr, align 8, !dbg !1954, !tbaa !337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1928, metadata !DIExpression()), !dbg !1932
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1949
  br i1 %exitcond.not, label %for.inc12, label %for.body7, !dbg !1952, !llvm.loop !1956

for.inc12:                                        ; preds = %for.body7, %for.body2
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !1929, metadata !DIExpression()), !dbg !1932
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40, !dbg !1941
  br i1 %exitcond41.not, label %for.inc15, label %for.body2, !dbg !1944, !llvm.loop !1959

for.inc15:                                        ; preds = %for.inc12, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, ptr %sp.035, i64 0, i32 4, !dbg !1961
  call void @llvm.dbg.value(metadata ptr undef, metadata !1930, metadata !DIExpression()), !dbg !1932
  %sp.0 = load ptr, ptr %s_next, align 8, !dbg !1935, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1930, metadata !DIExpression()), !dbg !1932
  %tobool.not = icmp eq ptr %sp.0, null, !dbg !1936
  br i1 %tobool.not, label %for.end16, label %for.body, !dbg !1936, !llvm.loop !1962

for.end16:                                        ; preds = %for.inc15, %entry
  ret void, !dbg !1964
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc i32 @is_pattern(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %lo, ptr nocapture noundef writeonly %hi) unnamed_addr #7 !dbg !695 {
entry:
  call void @llvm.dbg.value(metadata ptr %item, metadata !694, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata ptr %lo, metadata !700, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata ptr %hi, metadata !701, metadata !DIExpression()), !dbg !1965
  %call = tail call ptr @__ctype_b_loc() #15, !dbg !1966
  %0 = load ptr, ptr %call, align 8, !dbg !1966, !tbaa !298
  %1 = load i8, ptr %item, align 1, !dbg !1966, !tbaa !546
  %idxprom = sext i8 %1 to i64, !dbg !1966
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom, !dbg !1966
  %2 = load i16, ptr %arrayidx, align 2, !dbg !1966, !tbaa !710
  %3 = and i16 %2, 2048, !dbg !1966
  %tobool.not = icmp ne i16 %3, 0, !dbg !1966
  %cmp.not = icmp eq i8 %1, 45
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not, !dbg !1967
  br i1 %or.cond, label %if.end, label %cleanup, !dbg !1967

if.end:                                           ; preds = %entry
  %tobool10.not = icmp eq i16 %3, 0, !dbg !1968
  br i1 %tobool10.not, label %if.else59, label %for.body, !dbg !1969

for.body:                                         ; preds = %if.end, %for.body
  %4 = phi i8 [ %5, %for.body ], [ %1, %if.end ]
  %ip.0131 = phi ptr [ %incdec.ptr, %for.body ], [ %item, %if.end ]
  %val.0130 = phi i32 [ %sub, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata ptr %ip.0131, metadata !703, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %val.0130, metadata !702, metadata !DIExpression()), !dbg !1965
  %conv13 = sext i8 %4 to i32, !dbg !1970
  %mul = mul nsw i32 %val.0130, 10, !dbg !1971
  %add = add i32 %mul, -48, !dbg !1972
  %sub = add i32 %add, %conv13, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %sub, metadata !702, metadata !DIExpression()), !dbg !1965
  %incdec.ptr = getelementptr inbounds i8, ptr %ip.0131, i64 1, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !703, metadata !DIExpression()), !dbg !1965
  %5 = load i8, ptr %incdec.ptr, align 1, !dbg !1970, !tbaa !546
  %idxprom14 = sext i8 %5 to i64, !dbg !1970
  %arrayidx15 = getelementptr inbounds i16, ptr %0, i64 %idxprom14, !dbg !1970
  %6 = load i16, ptr %arrayidx15, align 2, !dbg !1970, !tbaa !710
  %7 = and i16 %6, 2048, !dbg !1970
  %tobool18.not = icmp eq i16 %7, 0, !dbg !1975
  br i1 %tobool18.not, label %for.end, label %for.body, !dbg !1975, !llvm.loop !1976

for.end:                                          ; preds = %for.body
  store i32 %sub, ptr %lo, align 4, !dbg !1978, !tbaa !659
  %8 = load i8, ptr %incdec.ptr, align 1, !dbg !1979, !tbaa !546
  switch i8 %8, label %if.end28 [
    i8 0, label %if.then21
    i8 45, label %if.then25
  ], !dbg !1980

if.then21:                                        ; preds = %for.end
  store i32 %sub, ptr %hi, align 4, !dbg !1981, !tbaa !659
  br label %cleanup, !dbg !1982

if.then25:                                        ; preds = %for.end
  %incdec.ptr26 = getelementptr inbounds i8, ptr %ip.0131, i64 2, !dbg !1983
  call void @llvm.dbg.value(metadata ptr %incdec.ptr26, metadata !703, metadata !DIExpression()), !dbg !1965
  %.pr = load i8, ptr %incdec.ptr26, align 1, !dbg !1984, !tbaa !546
  br label %if.end28, !dbg !1985

if.end28:                                         ; preds = %for.end, %if.then25
  %9 = phi i8 [ %8, %for.end ], [ %.pr, %if.then25 ], !dbg !1984
  %ip.1 = phi ptr [ %incdec.ptr, %for.end ], [ %incdec.ptr26, %if.then25 ], !dbg !1986
  call void @llvm.dbg.value(metadata ptr %ip.1, metadata !703, metadata !DIExpression()), !dbg !1965
  %tobool29.not = icmp eq i8 %9, 0, !dbg !1984
  br i1 %tobool29.not, label %if.then30, label %if.else31, !dbg !1987

if.then30:                                        ; preds = %if.end28
  store i32 -1, ptr %hi, align 4, !dbg !1988, !tbaa !659
  br label %cleanup, !dbg !1989

if.else31:                                        ; preds = %if.end28
  %idxprom34 = sext i8 %9 to i64, !dbg !1990
  %arrayidx35 = getelementptr inbounds i16, ptr %0, i64 %idxprom34, !dbg !1990
  %10 = load i16, ptr %arrayidx35, align 2, !dbg !1990, !tbaa !710
  %11 = and i16 %10, 2048, !dbg !1990
  %tobool38.not = icmp eq i16 %11, 0, !dbg !1990
  br i1 %tobool38.not, label %cleanup, label %for.body50, !dbg !1991

for.body50:                                       ; preds = %if.else31, %for.body50
  %12 = phi i8 [ %13, %for.body50 ], [ %9, %if.else31 ]
  %ip.2137 = phi ptr [ %incdec.ptr56, %for.body50 ], [ %ip.1, %if.else31 ]
  %val.1136 = phi i32 [ %sub54, %for.body50 ], [ 0, %if.else31 ]
  call void @llvm.dbg.value(metadata ptr %ip.2137, metadata !703, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %val.1136, metadata !702, metadata !DIExpression()), !dbg !1965
  %conv44 = sext i8 %12 to i32, !dbg !1992
  %mul51 = mul nsw i32 %val.1136, 10, !dbg !1993
  %add53 = add i32 %mul51, -48, !dbg !1994
  %sub54 = add i32 %add53, %conv44, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %sub54, metadata !702, metadata !DIExpression()), !dbg !1965
  %incdec.ptr56 = getelementptr inbounds i8, ptr %ip.2137, i64 1, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56, metadata !703, metadata !DIExpression()), !dbg !1965
  %13 = load i8, ptr %incdec.ptr56, align 1, !dbg !1992, !tbaa !546
  %idxprom45 = sext i8 %13 to i64, !dbg !1992
  %arrayidx46 = getelementptr inbounds i16, ptr %0, i64 %idxprom45, !dbg !1992
  %14 = load i16, ptr %arrayidx46, align 2, !dbg !1992, !tbaa !710
  %15 = and i16 %14, 2048, !dbg !1992
  %tobool49.not = icmp eq i16 %15, 0, !dbg !1997
  br i1 %tobool49.not, label %for.end57, label %for.body50, !dbg !1997, !llvm.loop !1998

for.end57:                                        ; preds = %for.body50
  store i32 %sub54, ptr %hi, align 4, !dbg !2000, !tbaa !659
  %16 = load i8, ptr %incdec.ptr56, align 1, !dbg !2001, !tbaa !546
  %conv58 = sext i8 %16 to i32, !dbg !2002
  br label %cleanup, !dbg !2003

if.else59:                                        ; preds = %if.end
  store i32 1, ptr %lo, align 4, !dbg !2004, !tbaa !659
  %arrayidx60 = getelementptr inbounds i8, ptr %item, i64 1, !dbg !2005
  call void @llvm.dbg.value(metadata ptr %arrayidx60, metadata !703, metadata !DIExpression()), !dbg !1965
  %17 = load i8, ptr %arrayidx60, align 1, !dbg !2006, !tbaa !546
  %tobool62.not = icmp eq i8 %17, 0, !dbg !2006
  br i1 %tobool62.not, label %if.then63, label %if.else64, !dbg !2007

if.then63:                                        ; preds = %if.else59
  store i32 -1, ptr %hi, align 4, !dbg !2008, !tbaa !659
  br label %cleanup, !dbg !2009

if.else64:                                        ; preds = %if.else59
  %idxprom67 = sext i8 %17 to i64, !dbg !2010
  %arrayidx68 = getelementptr inbounds i16, ptr %0, i64 %idxprom67, !dbg !2010
  %18 = load i16, ptr %arrayidx68, align 2, !dbg !2010, !tbaa !710
  %19 = and i16 %18, 2048, !dbg !2010
  %tobool71.not = icmp eq i16 %19, 0, !dbg !2010
  br i1 %tobool71.not, label %cleanup, label %for.body81, !dbg !2011

for.body81:                                       ; preds = %if.else64, %for.body81
  %20 = phi i8 [ %21, %for.body81 ], [ %17, %if.else64 ]
  %ip.3144 = phi ptr [ %incdec.ptr87, %for.body81 ], [ %arrayidx60, %if.else64 ]
  %val.2143 = phi i32 [ %sub85, %for.body81 ], [ 0, %if.else64 ]
  call void @llvm.dbg.value(metadata ptr %ip.3144, metadata !703, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %val.2143, metadata !702, metadata !DIExpression()), !dbg !1965
  %conv75 = sext i8 %20 to i32, !dbg !2012
  %mul82 = mul nsw i32 %val.2143, 10, !dbg !2013
  %add84 = add i32 %mul82, -48, !dbg !2014
  %sub85 = add i32 %add84, %conv75, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %sub85, metadata !702, metadata !DIExpression()), !dbg !1965
  %incdec.ptr87 = getelementptr inbounds i8, ptr %ip.3144, i64 1, !dbg !2016
  call void @llvm.dbg.value(metadata ptr %incdec.ptr87, metadata !703, metadata !DIExpression()), !dbg !1965
  %21 = load i8, ptr %incdec.ptr87, align 1, !dbg !2012, !tbaa !546
  %idxprom76 = sext i8 %21 to i64, !dbg !2012
  %arrayidx77 = getelementptr inbounds i16, ptr %0, i64 %idxprom76, !dbg !2012
  %22 = load i16, ptr %arrayidx77, align 2, !dbg !2012, !tbaa !710
  %23 = and i16 %22, 2048, !dbg !2012
  %tobool80.not = icmp eq i16 %23, 0, !dbg !2017
  br i1 %tobool80.not, label %for.end88, label %for.body81, !dbg !2017, !llvm.loop !2018

for.end88:                                        ; preds = %for.body81
  store i32 %sub85, ptr %hi, align 4, !dbg !2020, !tbaa !659
  %24 = load i8, ptr %incdec.ptr87, align 1, !dbg !2021, !tbaa !546
  %conv89 = sext i8 %24 to i32, !dbg !2022
  br label %cleanup, !dbg !2023

cleanup:                                          ; preds = %if.else64, %if.else31, %entry, %for.end88, %if.then63, %for.end57, %if.then30, %if.then21
  %retval.0 = phi i32 [ %conv58, %for.end57 ], [ 0, %if.then30 ], [ 0, %if.then21 ], [ %conv89, %for.end88 ], [ 0, %if.then63 ], [ 1, %entry ], [ 1, %if.else31 ], [ 0, %if.else64 ], !dbg !1965
  ret i32 %retval.0, !dbg !2024
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(ptr nocapture noundef readonly %mol, ptr nocapture noundef readonly %pat) unnamed_addr #0 !dbg !1191 {
entry:
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1190, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %pat, metadata !1193, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %pat, metadata !604, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !609, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata ptr @rexpr, metadata !611, metadata !DIExpression()), !dbg !2026
  store i8 94, ptr @rexpr, align 16, !dbg !2028, !tbaa !546
  call void @llvm.dbg.value(metadata ptr %pat, metadata !610, metadata !DIExpression()), !dbg !2026
  br label %for.cond.i, !dbg !2029

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %aep.0.i = phi ptr [ %pat, %entry ], [ %incdec.ptr12.i, %for.inc.i ], !dbg !2030
  %rep.0.i = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %entry ], [ %rep.1.i, %for.inc.i ], !dbg !2026
  call void @llvm.dbg.value(metadata ptr %rep.0.i, metadata !611, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata ptr %aep.0.i, metadata !610, metadata !DIExpression()), !dbg !2026
  %0 = load i8, ptr %aep.0.i, align 1, !dbg !2031, !tbaa !546
  switch i8 %0, label %if.else9.i [
    i8 0, label %aexpr2rexpr.exit
    i8 42, label %if.then.i
    i8 63, label %if.then7.i
  ], !dbg !2032

if.then.i:                                        ; preds = %for.cond.i
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %rep.0.i, i64 1, !dbg !2033
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !611, metadata !DIExpression()), !dbg !2026
  store i8 46, ptr %rep.0.i, align 1, !dbg !2034, !tbaa !546
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %rep.0.i, i64 2, !dbg !2035
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i, metadata !611, metadata !DIExpression()), !dbg !2026
  store i8 42, ptr %incdec.ptr2.i, align 1, !dbg !2036, !tbaa !546
  br label %for.inc.i, !dbg !2037

if.then7.i:                                       ; preds = %for.cond.i
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %rep.0.i, i64 1, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8.i, metadata !611, metadata !DIExpression()), !dbg !2026
  store i8 46, ptr %rep.0.i, align 1, !dbg !2039, !tbaa !546
  br label %for.inc.i, !dbg !2040

if.else9.i:                                       ; preds = %for.cond.i
  %incdec.ptr10.i = getelementptr inbounds i8, ptr %rep.0.i, i64 1, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10.i, metadata !611, metadata !DIExpression()), !dbg !2026
  store i8 %0, ptr %rep.0.i, align 1, !dbg !2042, !tbaa !546
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else9.i, %if.then7.i, %if.then.i
  %rep.1.i = phi ptr [ %incdec.ptr3.i, %if.then.i ], [ %incdec.ptr8.i, %if.then7.i ], [ %incdec.ptr10.i, %if.else9.i ], !dbg !2043
  call void @llvm.dbg.value(metadata ptr %rep.1.i, metadata !611, metadata !DIExpression()), !dbg !2026
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %aep.0.i, i64 1, !dbg !2044
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.i, metadata !610, metadata !DIExpression()), !dbg !2026
  br label %for.cond.i, !dbg !2045, !llvm.loop !2046

aexpr2rexpr.exit:                                 ; preds = %for.cond.i
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %rep.0.i, i64 1, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13.i, metadata !611, metadata !DIExpression()), !dbg !2026
  store i8 36, ptr %rep.0.i, align 1, !dbg !2049, !tbaa !546
  store i8 0, ptr %incdec.ptr13.i, align 1, !dbg !2050, !tbaa !546
  %call = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #14, !dbg !2051
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !2052
  call void @llvm.dbg.value(metadata ptr undef, metadata !1196, metadata !DIExpression()), !dbg !2025
  %sp.035 = load ptr, ptr %m_strands, align 8, !dbg !2053, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.035, metadata !1196, metadata !DIExpression()), !dbg !2025
  %tobool.not36 = icmp eq ptr %sp.035, null, !dbg !2054
  br i1 %tobool.not36, label %for.end19, label %for.body, !dbg !2054

for.body:                                         ; preds = %aexpr2rexpr.exit, %for.inc18
  %sp.037 = phi ptr [ %sp.0, %for.inc18 ], [ %sp.035, %aexpr2rexpr.exit ]
  %s_attr = getelementptr inbounds %struct.strand_t, ptr %sp.037, i64 0, i32 2, !dbg !2055
  %1 = load i32, ptr %s_attr, align 4, !dbg !2055, !tbaa !307
  %and = and i32 %1, 1, !dbg !2056
  %tobool1.not = icmp eq i32 %and, 0, !dbg !2056
  br i1 %tobool1.not, label %for.inc18, label %for.cond2.preheader, !dbg !2057

for.cond2.preheader:                              ; preds = %for.body
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %sp.037, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !2025
  %2 = load i32, ptr %s_nresidues, align 8, !dbg !2058, !tbaa !312
  %cmp33 = icmp sgt i32 %2, 0, !dbg !2059
  br i1 %cmp33, label %for.body3.lr.ph, label %for.inc18, !dbg !2060

for.body3.lr.ph:                                  ; preds = %for.cond2.preheader
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %sp.037, i64 0, i32 7
  br label %for.body3, !dbg !2060

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc14
  %3 = phi i32 [ %2, %for.body3.lr.ph ], [ %13, %for.inc14 ]
  %indvars.iv39 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next40, %for.inc14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !1194, metadata !DIExpression()), !dbg !2025
  %4 = load ptr, ptr %s_residues, align 8, !dbg !2061, !tbaa !318
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv39, !dbg !2062
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !2062, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %5, metadata !1197, metadata !DIExpression()), !dbg !2025
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 6, !dbg !2063
  %6 = load i32, ptr %r_attr, align 8, !dbg !2063, !tbaa !323
  %and4 = and i32 %6, 1, !dbg !2064
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !2064
  br i1 %tobool5.not, label %for.inc14, label %for.cond7.preheader, !dbg !2065

for.cond7.preheader:                              ; preds = %for.body3
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 15
  call void @llvm.dbg.value(metadata i32 0, metadata !1195, metadata !DIExpression()), !dbg !2025
  %7 = load i32, ptr %r_natoms, align 8, !dbg !2066, !tbaa !327
  %cmp831 = icmp sgt i32 %7, 0, !dbg !2067
  br i1 %cmp831, label %for.body9.lr.ph, label %for.inc14, !dbg !2068

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 17
  br label %for.body9, !dbg !2068

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1195, metadata !DIExpression()), !dbg !2025
  %8 = load ptr, ptr %r_atoms, align 8, !dbg !2069, !tbaa !333
  %arrayidx11 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %indvars.iv, !dbg !2070
  call void @llvm.dbg.value(metadata ptr %arrayidx11, metadata !1198, metadata !DIExpression()), !dbg !2025
  %9 = load ptr, ptr %arrayidx11, align 8, !dbg !2071, !tbaa !1259
  %call12 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %9, i64 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !2072
  %cmp13 = icmp eq i32 %call12, 0, !dbg !2073
  %cond = zext i1 %cmp13 to i32, !dbg !2072
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %8, i64 %indvars.iv, i32 2, !dbg !2074
  %10 = load i32, ptr %a_attr, align 8, !dbg !2075, !tbaa !337
  %or = or i32 %10, %cond, !dbg !2075
  store i32 %or, ptr %a_attr, align 8, !dbg !2075, !tbaa !337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1195, metadata !DIExpression()), !dbg !2025
  %11 = load i32, ptr %r_natoms, align 8, !dbg !2066, !tbaa !327
  %12 = sext i32 %11 to i64, !dbg !2067
  %cmp8 = icmp slt i64 %indvars.iv.next, %12, !dbg !2067
  br i1 %cmp8, label %for.body9, label %for.inc14.loopexit, !dbg !2068, !llvm.loop !2077

for.inc14.loopexit:                               ; preds = %for.body9
  %.pre = load i32, ptr %s_nresidues, align 8, !dbg !2058, !tbaa !312
  br label %for.inc14, !dbg !2079

for.inc14:                                        ; preds = %for.inc14.loopexit, %for.cond7.preheader, %for.body3
  %13 = phi i32 [ %.pre, %for.inc14.loopexit ], [ %3, %for.cond7.preheader ], [ %3, %for.body3 ], !dbg !2058
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next40, metadata !1194, metadata !DIExpression()), !dbg !2025
  %14 = sext i32 %13 to i64, !dbg !2059
  %cmp = icmp slt i64 %indvars.iv.next40, %14, !dbg !2059
  br i1 %cmp, label %for.body3, label %for.inc18, !dbg !2060, !llvm.loop !2080

for.inc18:                                        ; preds = %for.inc14, %for.cond2.preheader, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, ptr %sp.037, i64 0, i32 4, !dbg !2082
  call void @llvm.dbg.value(metadata ptr undef, metadata !1196, metadata !DIExpression()), !dbg !2025
  %sp.0 = load ptr, ptr %s_next, align 8, !dbg !2053, !tbaa !298
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1196, metadata !DIExpression()), !dbg !2025
  %tobool.not = icmp eq ptr %sp.0, null, !dbg !2054
  br i1 %tobool.not, label %for.end19, label %for.body, !dbg !2054, !llvm.loop !2083

for.end19:                                        ; preds = %for.inc18, %aexpr2rexpr.exit
  ret void, !dbg !2085
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

declare !dbg !2086 i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare !dbg !2091 i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aexpr", scope: !2, file: !28, line: 14, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "657eaa27113f1d60ac67ba476813e238")
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
!28 = !DIFile(filename: "apps/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "657eaa27113f1d60ac67ba476813e238")
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
!41 = distinct !DIGlobalVariable(name: "expbuf", scope: !2, file: !28, line: 23, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !43, line: 18, baseType: !44)
!43 = !DIFile(filename: "apps/544.nab_r/src/regex-alpha/regex.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3dfdf22bda36daab9c4172b7982f8eb3")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 13, size: 256, elements: !45)
!45 = !{!46, !47, !51, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "re_magic", scope: !44, file: !43, line: 14, baseType: !23, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !44, file: !43, line: 15, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "re_endp", scope: !44, file: !43, line: 16, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "re_g", scope: !44, file: !43, line: 17, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_guts", file: !43, line: 17, flags: DIFlagFwdDecl)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 7, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!64 = distinct !DISubprogram(name: "setpoint", scope: !28, file: !28, line: 54, type: !65, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!65 = !DISubroutineType(types: !66)
!66 = !{!23, !67, !29, !223}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !69, line: 126, baseType: !70)
!69 = !DIFile(filename: "apps/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !69, line: 118, size: 1088, elements: !71)
!71 = !{!72, !79, !81, !174, !175, !176, !177}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !70, file: !69, line: 119, baseType: !73, size: 768)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !69, line: 13, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 768, elements: !76)
!75 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!76 = !{!77, !78}
!77 = !DISubrange(count: 4)
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !70, file: !69, line: 120, baseType: !80, size: 32, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !69, line: 6, baseType: !23)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !70, file: !69, line: 121, baseType: !82, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !69, line: 93, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !69, line: 84, size: 384, elements: !85)
!85 = !{!86, !89, !90, !91, !93, !95, !96, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !84, file: !69, line: 85, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !69, line: 17, baseType: !30)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !84, file: !69, line: 86, baseType: !80, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !84, file: !69, line: 87, baseType: !80, size: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !84, file: !69, line: 88, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !84, file: !69, line: 89, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !84, file: !69, line: 90, baseType: !80, size: 32, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !84, file: !69, line: 91, baseType: !80, size: 32, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !84, file: !69, line: 92, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !69, line: 82, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !69, line: 63, size: 1024, elements: !102)
!102 = !{!103, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !124, !125, !131, !132, !141, !142, !144}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !101, file: !69, line: 64, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !101, file: !69, line: 65, baseType: !80, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !101, file: !69, line: 66, baseType: !80, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !101, file: !69, line: 67, baseType: !80, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !101, file: !69, line: 68, baseType: !87, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !101, file: !69, line: 69, baseType: !87, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !101, file: !69, line: 70, baseType: !80, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !101, file: !69, line: 71, baseType: !80, size: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !101, file: !69, line: 72, baseType: !80, size: 32, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !101, file: !69, line: 73, baseType: !94, size: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !101, file: !69, line: 74, baseType: !115, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !69, line: 52, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !69, line: 47, size: 192, elements: !118)
!118 = !{!119, !121, !122, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !117, file: !69, line: 48, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !117, file: !69, line: 49, baseType: !80, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !117, file: !69, line: 50, baseType: !80, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !117, file: !69, line: 51, baseType: !80, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !101, file: !69, line: 75, baseType: !80, size: 32, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !101, file: !69, line: 76, baseType: !126, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !69, line: 54, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 2)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !101, file: !69, line: 77, baseType: !80, size: 32, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !101, file: !69, line: 78, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !69, line: 61, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !69, line: 58, size: 192, elements: !136)
!136 = !{!137, !140}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !135, file: !69, line: 59, baseType: !138, size: 128)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !139)
!139 = !{!77}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !135, file: !69, line: 60, baseType: !75, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !101, file: !69, line: 79, baseType: !80, size: 32, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !101, file: !69, line: 80, baseType: !143, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !101, file: !69, line: 81, baseType: !145, size: 64, offset: 960)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !69, line: 45, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !69, line: 25, size: 1408, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !173}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !147, file: !69, line: 26, baseType: !87, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !147, file: !69, line: 27, baseType: !87, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !147, file: !69, line: 28, baseType: !80, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !147, file: !69, line: 29, baseType: !80, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !147, file: !69, line: 30, baseType: !154, size: 256, offset: 192)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !147, file: !69, line: 31, baseType: !104, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !147, file: !69, line: 32, baseType: !75, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !147, file: !69, line: 33, baseType: !75, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !147, file: !69, line: 34, baseType: !75, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !147, file: !69, line: 35, baseType: !75, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !147, file: !69, line: 36, baseType: !87, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !147, file: !69, line: 37, baseType: !80, size: 32, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !147, file: !69, line: 38, baseType: !75, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !147, file: !69, line: 39, baseType: !75, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !147, file: !69, line: 40, baseType: !80, size: 32, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !147, file: !69, line: 41, baseType: !80, size: 32, offset: 1056)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !147, file: !69, line: 42, baseType: !87, size: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !147, file: !69, line: 43, baseType: !170, size: 192, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !69, line: 12, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, elements: !172)
!172 = !{!78}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !147, file: !69, line: 44, baseType: !75, size: 64, offset: 1344)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !70, file: !69, line: 122, baseType: !80, size: 32, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !70, file: !69, line: 123, baseType: !80, size: 32, offset: 928)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !70, file: !69, line: 124, baseType: !80, size: 32, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !70, file: !69, line: 125, baseType: !178, size: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !69, line: 115, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !69, line: 95, size: 5760, elements: !181)
!181 = !{!182, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !180, file: !69, line: 96, baseType: !183, size: 648)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 648, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 81)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !180, file: !69, line: 97, baseType: !80, size: 32, offset: 672)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !180, file: !69, line: 97, baseType: !80, size: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !180, file: !69, line: 97, baseType: !80, size: 32, offset: 736)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !180, file: !69, line: 98, baseType: !80, size: 32, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !180, file: !69, line: 98, baseType: !80, size: 32, offset: 800)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !180, file: !69, line: 98, baseType: !80, size: 32, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !180, file: !69, line: 98, baseType: !80, size: 32, offset: 864)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !180, file: !69, line: 98, baseType: !80, size: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !180, file: !69, line: 98, baseType: !80, size: 32, offset: 928)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !180, file: !69, line: 99, baseType: !80, size: 32, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !180, file: !69, line: 99, baseType: !80, size: 32, offset: 992)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !180, file: !69, line: 99, baseType: !80, size: 32, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !180, file: !69, line: 99, baseType: !80, size: 32, offset: 1056)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !180, file: !69, line: 99, baseType: !80, size: 32, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !180, file: !69, line: 99, baseType: !80, size: 32, offset: 1120)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !180, file: !69, line: 100, baseType: !80, size: 32, offset: 1152)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !180, file: !69, line: 100, baseType: !80, size: 32, offset: 1184)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !180, file: !69, line: 100, baseType: !80, size: 32, offset: 1216)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !180, file: !69, line: 100, baseType: !80, size: 32, offset: 1248)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !180, file: !69, line: 100, baseType: !80, size: 32, offset: 1280)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !180, file: !69, line: 100, baseType: !80, size: 32, offset: 1312)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1344)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1376)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1408)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1440)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1472)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1504)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1536)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !180, file: !69, line: 101, baseType: !80, size: 32, offset: 1568)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !180, file: !69, line: 102, baseType: !80, size: 32, offset: 1600)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !180, file: !69, line: 102, baseType: !80, size: 32, offset: 1632)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !180, file: !69, line: 102, baseType: !80, size: 32, offset: 1664)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !180, file: !69, line: 103, baseType: !87, size: 64, offset: 1728)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !180, file: !69, line: 103, baseType: !87, size: 64, offset: 1792)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !180, file: !69, line: 103, baseType: !87, size: 64, offset: 1856)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !180, file: !69, line: 103, baseType: !87, size: 64, offset: 1920)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 1984)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2048)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2112)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2176)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2240)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2304)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2368)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2432)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !180, file: !69, line: 104, baseType: !223, size: 64, offset: 2496)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2560)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2624)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2688)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2752)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2816)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2880)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !180, file: !69, line: 105, baseType: !223, size: 64, offset: 2944)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !180, file: !69, line: 106, baseType: !171, size: 192, offset: 3008)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !180, file: !69, line: 106, baseType: !75, size: 64, offset: 3200)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !180, file: !69, line: 106, baseType: !75, size: 64, offset: 3264)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !180, file: !69, line: 106, baseType: !75, size: 64, offset: 3328)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !180, file: !69, line: 106, baseType: !75, size: 64, offset: 3392)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !180, file: !69, line: 106, baseType: !75, size: 64, offset: 3456)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !180, file: !69, line: 107, baseType: !143, size: 64, offset: 3520)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !180, file: !69, line: 107, baseType: !143, size: 64, offset: 3584)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !180, file: !69, line: 107, baseType: !143, size: 64, offset: 3648)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !180, file: !69, line: 107, baseType: !143, size: 64, offset: 3712)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !180, file: !69, line: 107, baseType: !143, size: 64, offset: 3776)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !180, file: !69, line: 107, baseType: !143, size: 64, offset: 3840)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !180, file: !69, line: 108, baseType: !143, size: 64, offset: 3904)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !180, file: !69, line: 108, baseType: !143, size: 64, offset: 3968)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !180, file: !69, line: 108, baseType: !143, size: 64, offset: 4032)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !180, file: !69, line: 108, baseType: !143, size: 64, offset: 4096)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !180, file: !69, line: 108, baseType: !143, size: 64, offset: 4160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !180, file: !69, line: 108, baseType: !143, size: 64, offset: 4224)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !180, file: !69, line: 109, baseType: !143, size: 64, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !180, file: !69, line: 109, baseType: !143, size: 64, offset: 4352)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !180, file: !69, line: 109, baseType: !143, size: 64, offset: 4416)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !180, file: !69, line: 109, baseType: !143, size: 64, offset: 4480)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !180, file: !69, line: 109, baseType: !143, size: 64, offset: 4544)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !180, file: !69, line: 110, baseType: !143, size: 64, offset: 4608)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !180, file: !69, line: 110, baseType: !143, size: 64, offset: 4672)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !180, file: !69, line: 110, baseType: !143, size: 64, offset: 4736)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !180, file: !69, line: 110, baseType: !143, size: 64, offset: 4800)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !180, file: !69, line: 110, baseType: !143, size: 64, offset: 4864)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !180, file: !69, line: 111, baseType: !143, size: 64, offset: 4928)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !180, file: !69, line: 111, baseType: !143, size: 64, offset: 4992)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !180, file: !69, line: 111, baseType: !143, size: 64, offset: 5056)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !180, file: !69, line: 111, baseType: !143, size: 64, offset: 5120)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !180, file: !69, line: 111, baseType: !143, size: 64, offset: 5184)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !180, file: !69, line: 111, baseType: !143, size: 64, offset: 5248)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !180, file: !69, line: 112, baseType: !143, size: 64, offset: 5312)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !180, file: !69, line: 112, baseType: !143, size: 64, offset: 5376)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !180, file: !69, line: 112, baseType: !143, size: 64, offset: 5440)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !180, file: !69, line: 112, baseType: !143, size: 64, offset: 5504)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !180, file: !69, line: 113, baseType: !143, size: 64, offset: 5568)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !180, file: !69, line: 113, baseType: !143, size: 64, offset: 5632)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !180, file: !69, line: 114, baseType: !223, size: 64, offset: 5696)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!281 = !DILocalVariable(name: "mol", arg: 1, scope: !64, file: !28, line: 54, type: !67)
!282 = !DILocalVariable(name: "aexpr", arg: 2, scope: !64, file: !28, line: 54, type: !29)
!283 = !DILocalVariable(name: "point", arg: 3, scope: !64, file: !28, line: 54, type: !223)
!284 = !DILocalVariable(name: "r", scope: !64, file: !28, line: 56, type: !23)
!285 = !DILocalVariable(name: "a", scope: !64, file: !28, line: 56, type: !23)
!286 = !DILocalVariable(name: "ta", scope: !64, file: !28, line: 56, type: !23)
!287 = !DILocalVariable(name: "sp", scope: !64, file: !28, line: 57, type: !82)
!288 = !DILocalVariable(name: "res", scope: !64, file: !28, line: 58, type: !99)
!289 = !DILocalVariable(name: "ap", scope: !64, file: !28, line: 59, type: !145)
!290 = !DILocalVariable(name: "x", scope: !64, file: !28, line: 60, type: !75)
!291 = !DILocalVariable(name: "y", scope: !64, file: !28, line: 60, type: !75)
!292 = !DILocalVariable(name: "z", scope: !64, file: !28, line: 60, type: !75)
!293 = !DILocation(line: 0, scope: !64)
!294 = !DILocation(line: 62, column: 2, scope: !64)
!295 = !DILocation(line: 66, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !64, file: !28, line: 66, column: 2)
!297 = !DILocation(line: 0, scope: !296)
!298 = !{!299, !299, i64 0}
!299 = !{!"any pointer", !300, i64 0}
!300 = !{!"omnipotent char", !301, i64 0}
!301 = !{!"Simple C/C++ TBAA"}
!302 = !DILocation(line: 66, column: 2, scope: !296)
!303 = !DILocation(line: 67, column: 23, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !28, line: 67, column: 7)
!305 = distinct !DILexicalBlock(scope: !306, file: !28, line: 66, column: 57)
!306 = distinct !DILexicalBlock(scope: !296, file: !28, line: 66, column: 2)
!307 = !{!308, !309, i64 12}
!308 = !{!"strand_t", !299, i64 0, !309, i64 8, !309, i64 12, !299, i64 16, !299, i64 24, !309, i64 32, !309, i64 36, !299, i64 40}
!309 = !{!"int", !300, i64 0}
!310 = !DILocation(line: 67, column: 17, scope: !304)
!311 = !DILocation(line: 67, column: 7, scope: !305)
!312 = !{!308, !309, i64 32}
!313 = !DILocation(line: 68, column: 18, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !28, line: 68, column: 4)
!315 = distinct !DILexicalBlock(scope: !316, file: !28, line: 68, column: 4)
!316 = distinct !DILexicalBlock(scope: !304, file: !28, line: 67, column: 31)
!317 = !DILocation(line: 68, column: 4, scope: !315)
!318 = !{!308, !299, i64 40}
!319 = !DILocation(line: 69, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !314, file: !28, line: 68, column: 42)
!321 = !DILocation(line: 70, column: 26, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !28, line: 70, column: 9)
!323 = !{!324, !309, i64 40}
!324 = !{!"residue_t", !299, i64 0, !309, i64 8, !309, i64 12, !309, i64 16, !299, i64 24, !299, i64 32, !309, i64 40, !309, i64 44, !309, i64 48, !299, i64 56, !299, i64 64, !309, i64 72, !299, i64 80, !309, i64 88, !299, i64 96, !309, i64 104, !299, i64 112, !299, i64 120}
!325 = !DILocation(line: 70, column: 19, scope: !322)
!326 = !DILocation(line: 70, column: 9, scope: !320)
!327 = !{!324, !309, i64 104}
!328 = !DILocation(line: 71, column: 20, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !28, line: 71, column: 6)
!330 = distinct !DILexicalBlock(scope: !331, file: !28, line: 71, column: 6)
!331 = distinct !DILexicalBlock(scope: !322, file: !28, line: 70, column: 34)
!332 = !DILocation(line: 71, column: 6, scope: !330)
!333 = !{!324, !299, i64 120}
!334 = !DILocation(line: 73, column: 27, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !28, line: 73, column: 11)
!336 = distinct !DILexicalBlock(scope: !329, file: !28, line: 71, column: 42)
!337 = !{!338, !309, i64 16}
!338 = !{!"atom_t", !299, i64 0, !299, i64 8, !309, i64 16, !309, i64 20, !300, i64 24, !299, i64 56, !339, i64 64, !339, i64 72, !339, i64 80, !339, i64 88, !299, i64 96, !309, i64 104, !339, i64 112, !339, i64 120, !309, i64 128, !309, i64 132, !299, i64 136, !300, i64 144, !339, i64 168}
!339 = !{!"double", !300, i64 0}
!340 = !DILocation(line: 73, column: 21, scope: !335)
!341 = !DILocation(line: 73, column: 11, scope: !336)
!342 = !DILocation(line: 74, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !28, line: 73, column: 35)
!344 = !DILocation(line: 74, column: 13, scope: !343)
!345 = !{!339, !339, i64 0}
!346 = !DILocation(line: 74, column: 10, scope: !343)
!347 = !DILocation(line: 75, column: 13, scope: !343)
!348 = !DILocation(line: 75, column: 10, scope: !343)
!349 = !DILocation(line: 76, column: 13, scope: !343)
!350 = !DILocation(line: 76, column: 10, scope: !343)
!351 = !DILocation(line: 77, column: 10, scope: !343)
!352 = !DILocation(line: 78, column: 7, scope: !343)
!353 = !DILocation(line: 71, column: 38, scope: !329)
!354 = distinct !{!354, !332, !355, !356, !357}
!355 = !DILocation(line: 79, column: 6, scope: !330)
!356 = !{!"llvm.loop.mustprogress"}
!357 = !{!"llvm.loop.unroll.disable"}
!358 = !DILocation(line: 66, column: 10, scope: !296)
!359 = !DILocation(line: 65, column: 4, scope: !64)
!360 = !DILocation(line: 65, column: 8, scope: !64)
!361 = !DILocation(line: 65, column: 12, scope: !64)
!362 = !DILocation(line: 68, column: 38, scope: !314)
!363 = distinct !{!363, !317, !364, !356, !357}
!364 = !DILocation(line: 81, column: 4, scope: !315)
!365 = !DILocation(line: 66, column: 49, scope: !306)
!366 = distinct !{!366, !302, !367, !356, !357}
!367 = !DILocation(line: 83, column: 2, scope: !296)
!368 = !DILocation(line: 85, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !64, file: !28, line: 85, column: 6)
!370 = !DILocation(line: 85, column: 6, scope: !64)
!371 = !DILocation(line: 86, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !28, line: 85, column: 15)
!373 = !DILocation(line: 86, column: 3, scope: !372)
!374 = !DILocation(line: 87, column: 3, scope: !372)
!375 = !DILocation(line: 89, column: 20, scope: !376)
!376 = distinct !DILexicalBlock(scope: !369, file: !28, line: 88, column: 7)
!377 = !DILocation(line: 89, column: 18, scope: !376)
!378 = !DILocation(line: 89, column: 14, scope: !376)
!379 = !DILocation(line: 90, column: 18, scope: !376)
!380 = !DILocation(line: 90, column: 3, scope: !376)
!381 = !DILocation(line: 90, column: 14, scope: !376)
!382 = !DILocation(line: 91, column: 18, scope: !376)
!383 = !DILocation(line: 91, column: 3, scope: !376)
!384 = !DILocation(line: 91, column: 14, scope: !376)
!385 = !DILocation(line: 94, column: 2, scope: !64)
!386 = !DILocation(line: 95, column: 1, scope: !64)
!387 = distinct !DISubprogram(name: "select_atoms", scope: !28, file: !28, line: 97, type: !388, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!23, !67, !29}
!390 = !{!391, !392, !393, !394, !395}
!391 = !DILocalVariable(name: "mol", arg: 1, scope: !387, file: !28, line: 97, type: !67)
!392 = !DILocalVariable(name: "aex", arg: 2, scope: !387, file: !28, line: 97, type: !29)
!393 = !DILocalVariable(name: "aep", scope: !387, file: !28, line: 99, type: !29)
!394 = !DILocalVariable(name: "n_aep", scope: !387, file: !28, line: 99, type: !29)
!395 = !DILocalVariable(name: "ael", scope: !387, file: !28, line: 100, type: !23)
!396 = !DILocation(line: 0, scope: !387)
!397 = !DILocation(line: 102, column: 10, scope: !398)
!398 = distinct !DILexicalBlock(scope: !387, file: !28, line: 102, column: 6)
!399 = !DILocation(line: 102, column: 6, scope: !387)
!400 = !DILocalVariable(name: "mol", arg: 1, scope: !401, file: !28, line: 398, type: !67)
!401 = distinct !DISubprogram(name: "select_all", scope: !28, file: !28, line: 398, type: !402, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !67}
!404 = !{!400, !405, !406, !407, !408}
!405 = !DILocalVariable(name: "a", scope: !401, file: !28, line: 400, type: !23)
!406 = !DILocalVariable(name: "r", scope: !401, file: !28, line: 400, type: !23)
!407 = !DILocalVariable(name: "sp", scope: !401, file: !28, line: 401, type: !82)
!408 = !DILocalVariable(name: "res", scope: !401, file: !28, line: 402, type: !99)
!409 = !DILocation(line: 0, scope: !401, inlinedAt: !410)
!410 = distinct !DILocation(line: 103, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !398, file: !28, line: 102, column: 19)
!412 = !DILocation(line: 404, column: 2, scope: !413, inlinedAt: !410)
!413 = distinct !DILexicalBlock(scope: !401, file: !28, line: 404, column: 2)
!414 = !DILocation(line: 405, column: 7, scope: !415, inlinedAt: !410)
!415 = distinct !DILexicalBlock(scope: !416, file: !28, line: 404, column: 49)
!416 = distinct !DILexicalBlock(scope: !413, file: !28, line: 404, column: 2)
!417 = !DILocation(line: 405, column: 14, scope: !415, inlinedAt: !410)
!418 = !DILocation(line: 406, column: 17, scope: !419, inlinedAt: !410)
!419 = distinct !DILexicalBlock(scope: !420, file: !28, line: 406, column: 3)
!420 = distinct !DILexicalBlock(scope: !415, file: !28, line: 406, column: 3)
!421 = !DILocation(line: 406, column: 3, scope: !420, inlinedAt: !410)
!422 = !DILocation(line: 407, column: 10, scope: !423, inlinedAt: !410)
!423 = distinct !DILexicalBlock(scope: !419, file: !28, line: 406, column: 41)
!424 = !DILocation(line: 408, column: 9, scope: !423, inlinedAt: !410)
!425 = !DILocation(line: 408, column: 16, scope: !423, inlinedAt: !410)
!426 = !DILocation(line: 409, column: 18, scope: !427, inlinedAt: !410)
!427 = distinct !DILexicalBlock(scope: !428, file: !28, line: 409, column: 4)
!428 = distinct !DILexicalBlock(scope: !423, file: !28, line: 409, column: 4)
!429 = !DILocation(line: 409, column: 4, scope: !428, inlinedAt: !410)
!430 = !DILocation(line: 410, column: 23, scope: !427, inlinedAt: !410)
!431 = !DILocation(line: 410, column: 30, scope: !427, inlinedAt: !410)
!432 = !DILocation(line: 409, column: 36, scope: !427, inlinedAt: !410)
!433 = distinct !{!433, !429, !434, !356, !357}
!434 = !DILocation(line: 410, column: 33, scope: !428, inlinedAt: !410)
!435 = !DILocation(line: 406, column: 37, scope: !419, inlinedAt: !410)
!436 = distinct !{!436, !421, !437, !356, !357}
!437 = !DILocation(line: 411, column: 3, scope: !420, inlinedAt: !410)
!438 = !DILocation(line: 404, column: 41, scope: !416, inlinedAt: !410)
!439 = !DILocation(line: 0, scope: !413, inlinedAt: !410)
!440 = distinct !{!440, !412, !441, !356, !357}
!441 = !DILocation(line: 412, column: 2, scope: !413, inlinedAt: !410)
!442 = !DILocalVariable(name: "mol", arg: 1, scope: !443, file: !28, line: 432, type: !67)
!443 = distinct !DISubprogram(name: "clear_work", scope: !28, file: !28, line: 432, type: !402, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!444 = !{!442, !445, !446, !447, !448}
!445 = !DILocalVariable(name: "a", scope: !443, file: !28, line: 434, type: !23)
!446 = !DILocalVariable(name: "r", scope: !443, file: !28, line: 434, type: !23)
!447 = !DILocalVariable(name: "sp", scope: !443, file: !28, line: 435, type: !82)
!448 = !DILocalVariable(name: "res", scope: !443, file: !28, line: 436, type: !99)
!449 = !DILocation(line: 0, scope: !443, inlinedAt: !450)
!450 = distinct !DILocation(line: 107, column: 2, scope: !387)
!451 = !DILocation(line: 438, column: 2, scope: !452, inlinedAt: !450)
!452 = distinct !DILexicalBlock(scope: !443, file: !28, line: 438, column: 2)
!453 = !DILocation(line: 439, column: 7, scope: !454, inlinedAt: !450)
!454 = distinct !DILexicalBlock(scope: !455, file: !28, line: 438, column: 49)
!455 = distinct !DILexicalBlock(scope: !452, file: !28, line: 438, column: 2)
!456 = !DILocation(line: 439, column: 14, scope: !454, inlinedAt: !450)
!457 = !DILocation(line: 440, column: 17, scope: !458, inlinedAt: !450)
!458 = distinct !DILexicalBlock(scope: !459, file: !28, line: 440, column: 3)
!459 = distinct !DILexicalBlock(scope: !454, file: !28, line: 440, column: 3)
!460 = !DILocation(line: 440, column: 3, scope: !459, inlinedAt: !450)
!461 = !DILocation(line: 441, column: 10, scope: !462, inlinedAt: !450)
!462 = distinct !DILexicalBlock(scope: !458, file: !28, line: 440, column: 41)
!463 = !DILocation(line: 442, column: 9, scope: !462, inlinedAt: !450)
!464 = !DILocation(line: 442, column: 16, scope: !462, inlinedAt: !450)
!465 = !DILocation(line: 443, column: 18, scope: !466, inlinedAt: !450)
!466 = distinct !DILexicalBlock(scope: !467, file: !28, line: 443, column: 4)
!467 = distinct !DILexicalBlock(scope: !462, file: !28, line: 443, column: 4)
!468 = !DILocation(line: 443, column: 4, scope: !467, inlinedAt: !450)
!469 = !DILocation(line: 444, column: 23, scope: !466, inlinedAt: !450)
!470 = !DILocation(line: 444, column: 30, scope: !466, inlinedAt: !450)
!471 = !DILocation(line: 443, column: 36, scope: !466, inlinedAt: !450)
!472 = distinct !{!472, !468, !473, !356, !357}
!473 = !DILocation(line: 444, column: 34, scope: !467, inlinedAt: !450)
!474 = !DILocation(line: 440, column: 37, scope: !458, inlinedAt: !450)
!475 = distinct !{!475, !460, !476, !356, !357}
!476 = !DILocation(line: 445, column: 3, scope: !459, inlinedAt: !450)
!477 = !DILocation(line: 438, column: 41, scope: !455, inlinedAt: !450)
!478 = !DILocation(line: 0, scope: !452, inlinedAt: !450)
!479 = distinct !{!479, !451, !480, !356, !357}
!480 = !DILocation(line: 446, column: 2, scope: !452, inlinedAt: !450)
!481 = !DILocation(line: 422, column: 7, scope: !482, inlinedAt: !492)
!482 = distinct !DILexicalBlock(scope: !483, file: !28, line: 421, column: 49)
!483 = distinct !DILexicalBlock(scope: !484, file: !28, line: 421, column: 2)
!484 = distinct !DILexicalBlock(scope: !485, file: !28, line: 421, column: 2)
!485 = distinct !DISubprogram(name: "clear_select", scope: !28, file: !28, line: 415, type: !402, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !486)
!486 = !{!487, !488, !489, !490, !491}
!487 = !DILocalVariable(name: "mol", arg: 1, scope: !485, file: !28, line: 415, type: !67)
!488 = !DILocalVariable(name: "a", scope: !485, file: !28, line: 417, type: !23)
!489 = !DILocalVariable(name: "r", scope: !485, file: !28, line: 417, type: !23)
!490 = !DILocalVariable(name: "sp", scope: !485, file: !28, line: 418, type: !82)
!491 = !DILocalVariable(name: "res", scope: !485, file: !28, line: 419, type: !99)
!492 = distinct !DILocation(line: 108, column: 2, scope: !387)
!493 = !DILocation(line: 422, column: 14, scope: !482, inlinedAt: !492)
!494 = !DILocation(line: 0, scope: !485, inlinedAt: !492)
!495 = !DILocation(line: 423, column: 17, scope: !496, inlinedAt: !492)
!496 = distinct !DILexicalBlock(scope: !497, file: !28, line: 423, column: 3)
!497 = distinct !DILexicalBlock(scope: !482, file: !28, line: 423, column: 3)
!498 = !DILocation(line: 423, column: 3, scope: !497, inlinedAt: !492)
!499 = !DILocation(line: 424, column: 10, scope: !500, inlinedAt: !492)
!500 = distinct !DILexicalBlock(scope: !496, file: !28, line: 423, column: 41)
!501 = !DILocation(line: 425, column: 9, scope: !500, inlinedAt: !492)
!502 = !DILocation(line: 425, column: 16, scope: !500, inlinedAt: !492)
!503 = !DILocation(line: 426, column: 18, scope: !504, inlinedAt: !492)
!504 = distinct !DILexicalBlock(scope: !505, file: !28, line: 426, column: 4)
!505 = distinct !DILexicalBlock(scope: !500, file: !28, line: 426, column: 4)
!506 = !DILocation(line: 426, column: 4, scope: !505, inlinedAt: !492)
!507 = !DILocation(line: 427, column: 23, scope: !504, inlinedAt: !492)
!508 = !DILocation(line: 427, column: 30, scope: !504, inlinedAt: !492)
!509 = !DILocation(line: 426, column: 36, scope: !504, inlinedAt: !492)
!510 = distinct !{!510, !506, !511, !356, !357}
!511 = !DILocation(line: 427, column: 34, scope: !505, inlinedAt: !492)
!512 = !DILocation(line: 423, column: 37, scope: !496, inlinedAt: !492)
!513 = distinct !{!513, !498, !514, !356, !357}
!514 = !DILocation(line: 428, column: 3, scope: !497, inlinedAt: !492)
!515 = !DILocation(line: 421, column: 41, scope: !483, inlinedAt: !492)
!516 = !DILocation(line: 0, scope: !484, inlinedAt: !492)
!517 = !DILocation(line: 421, column: 2, scope: !484, inlinedAt: !492)
!518 = distinct !{!518, !517, !519, !356, !357}
!519 = !DILocation(line: 429, column: 2, scope: !484, inlinedAt: !492)
!520 = !DILocation(line: 110, column: 26, scope: !521)
!521 = distinct !DILexicalBlock(scope: !387, file: !28, line: 110, column: 2)
!522 = !DILocation(line: 110, column: 2, scope: !521)
!523 = !DILocation(line: 111, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !28, line: 111, column: 7)
!525 = distinct !DILexicalBlock(scope: !526, file: !28, line: 110, column: 52)
!526 = distinct !DILexicalBlock(scope: !521, file: !28, line: 110, column: 2)
!527 = !DILocation(line: 111, column: 7, scope: !525)
!528 = !DILocation(line: 112, column: 16, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !28, line: 111, column: 14)
!530 = !DILocation(line: 113, column: 9, scope: !529)
!531 = !DILocation(line: 114, column: 3, scope: !529)
!532 = !DILocation(line: 115, column: 10, scope: !524)
!533 = !DILocation(line: 0, scope: !521)
!534 = !DILocation(line: 0, scope: !524)
!535 = !DILocation(line: 116, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !525, file: !28, line: 116, column: 7)
!537 = !DILocation(line: 116, column: 7, scope: !525)
!538 = !DILocation(line: 117, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !28, line: 116, column: 26)
!540 = !DILocation(line: 117, column: 4, scope: !539)
!541 = !DILocation(line: 119, column: 4, scope: !539)
!542 = !DILocation(line: 121, column: 24, scope: !525)
!543 = !DILocation(line: 121, column: 3, scope: !525)
!544 = !DILocation(line: 122, column: 3, scope: !525)
!545 = !DILocation(line: 122, column: 16, scope: !525)
!546 = !{!300, !300, i64 0}
!547 = !DILocalVariable(name: "mol", arg: 1, scope: !548, file: !28, line: 204, type: !67)
!548 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !28, file: !28, line: 204, type: !388, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!549 = !{!547, !550, !551, !552, !553, !554}
!550 = !DILocalVariable(name: "aex", arg: 2, scope: !548, file: !28, line: 204, type: !29)
!551 = !DILocalVariable(name: "aep", scope: !548, file: !28, line: 206, type: !29)
!552 = !DILocalVariable(name: "wp", scope: !548, file: !28, line: 207, type: !29)
!553 = !DILocalVariable(name: "lo", scope: !548, file: !28, line: 208, type: !23)
!554 = !DILocalVariable(name: "hi", scope: !548, file: !28, line: 208, type: !23)
!555 = !DILocation(line: 0, scope: !548, inlinedAt: !556)
!556 = distinct !DILocation(line: 123, column: 3, scope: !525)
!557 = !DILocation(line: 208, column: 2, scope: !548, inlinedAt: !556)
!558 = !DILocation(line: 211, column: 6, scope: !559, inlinedAt: !556)
!559 = distinct !DILexicalBlock(scope: !548, file: !28, line: 211, column: 6)
!560 = !DILocation(line: 211, column: 11, scope: !559, inlinedAt: !556)
!561 = !DILocation(line: 211, column: 6, scope: !548, inlinedAt: !556)
!562 = !DILocation(line: 212, column: 9, scope: !563, inlinedAt: !556)
!563 = distinct !DILexicalBlock(scope: !559, file: !28, line: 211, column: 19)
!564 = !DILocation(line: 214, column: 2, scope: !563, inlinedAt: !556)
!565 = !DILocation(line: 215, column: 11, scope: !566, inlinedAt: !556)
!566 = distinct !DILexicalBlock(scope: !559, file: !28, line: 214, column: 7)
!567 = !DILocation(line: 215, column: 9, scope: !566, inlinedAt: !556)
!568 = !DILocation(line: 216, column: 10, scope: !566, inlinedAt: !556)
!569 = !DILocation(line: 216, column: 26, scope: !566, inlinedAt: !556)
!570 = !DILocation(line: 216, column: 7, scope: !566, inlinedAt: !556)
!571 = !DILocation(line: 0, scope: !559, inlinedAt: !556)
!572 = !DILocation(line: 218, column: 6, scope: !573, inlinedAt: !556)
!573 = distinct !DILexicalBlock(scope: !548, file: !28, line: 218, column: 6)
!574 = !DILocation(line: 218, column: 11, scope: !573, inlinedAt: !556)
!575 = !DILocation(line: 218, column: 6, scope: !548, inlinedAt: !556)
!576 = !DILocation(line: 219, column: 9, scope: !577, inlinedAt: !556)
!577 = distinct !DILexicalBlock(scope: !573, file: !28, line: 218, column: 19)
!578 = !DILocation(line: 221, column: 2, scope: !577, inlinedAt: !556)
!579 = !DILocation(line: 222, column: 11, scope: !580, inlinedAt: !556)
!580 = distinct !DILexicalBlock(scope: !573, file: !28, line: 221, column: 7)
!581 = !DILocation(line: 222, column: 9, scope: !580, inlinedAt: !556)
!582 = !DILocation(line: 223, column: 10, scope: !580, inlinedAt: !556)
!583 = !DILocation(line: 223, column: 26, scope: !580, inlinedAt: !556)
!584 = !DILocation(line: 0, scope: !573, inlinedAt: !556)
!585 = !DILocation(line: 225, column: 10, scope: !548, inlinedAt: !556)
!586 = !DILocation(line: 225, column: 8, scope: !548, inlinedAt: !556)
!587 = !DILocation(line: 227, column: 6, scope: !588, inlinedAt: !556)
!588 = distinct !DILexicalBlock(scope: !548, file: !28, line: 227, column: 6)
!589 = !DILocation(line: 227, column: 6, scope: !548, inlinedAt: !556)
!590 = !DILocation(line: 228, column: 8, scope: !591, inlinedAt: !556)
!591 = distinct !DILexicalBlock(scope: !588, file: !28, line: 227, column: 13)
!592 = !DILocation(line: 229, column: 7, scope: !593, inlinedAt: !556)
!593 = distinct !DILexicalBlock(scope: !591, file: !28, line: 229, column: 7)
!594 = !DILocation(line: 229, column: 7, scope: !591, inlinedAt: !556)
!595 = !DILocalVariable(name: "mol", arg: 1, scope: !596, file: !28, line: 493, type: !67)
!596 = distinct !DISubprogram(name: "match_str_pat", scope: !28, file: !28, line: 493, type: !597, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !67, !29}
!599 = !{!595, !600, !601}
!600 = !DILocalVariable(name: "pat", arg: 2, scope: !596, file: !28, line: 493, type: !29)
!601 = !DILocalVariable(name: "sp", scope: !596, file: !28, line: 495, type: !82)
!602 = !DILocation(line: 0, scope: !596, inlinedAt: !603)
!603 = distinct !DILocation(line: 230, column: 4, scope: !593, inlinedAt: !556)
!604 = !DILocalVariable(name: "aexpr", arg: 1, scope: !605, file: !28, line: 695, type: !29)
!605 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !28, file: !28, line: 695, type: !606, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !29, !29}
!608 = !{!604, !609, !610, !611}
!609 = !DILocalVariable(name: "rexpr", arg: 2, scope: !605, file: !28, line: 695, type: !29)
!610 = !DILocalVariable(name: "aep", scope: !605, file: !28, line: 697, type: !29)
!611 = !DILocalVariable(name: "rep", scope: !605, file: !28, line: 697, type: !29)
!612 = !DILocation(line: 0, scope: !605, inlinedAt: !613)
!613 = distinct !DILocation(line: 497, column: 2, scope: !596, inlinedAt: !603)
!614 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !613)
!615 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !613)
!616 = distinct !DILexicalBlock(scope: !605, file: !28, line: 701, column: 2)
!617 = !DILocation(line: 0, scope: !616, inlinedAt: !613)
!618 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !613)
!619 = distinct !DILexicalBlock(scope: !616, file: !28, line: 701, column: 2)
!620 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !613)
!621 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !613)
!622 = distinct !DILexicalBlock(scope: !623, file: !28, line: 702, column: 20)
!623 = distinct !DILexicalBlock(scope: !624, file: !28, line: 702, column: 7)
!624 = distinct !DILexicalBlock(scope: !619, file: !28, line: 701, column: 33)
!625 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !613)
!626 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !613)
!627 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !613)
!628 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !613)
!629 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !613)
!630 = distinct !DILexicalBlock(scope: !623, file: !28, line: 705, column: 13)
!631 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !613)
!632 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !613)
!633 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !613)
!634 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !613)
!635 = !DILocation(line: 0, scope: !623, inlinedAt: !613)
!636 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !613)
!637 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !613)
!638 = distinct !{!638, !620, !639, !356, !357}
!639 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !613)
!640 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !613)
!641 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !613)
!642 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !613)
!643 = !DILocation(line: 499, column: 2, scope: !596, inlinedAt: !603)
!644 = !DILocation(line: 0, scope: !645, inlinedAt: !603)
!645 = distinct !DILexicalBlock(scope: !596, file: !28, line: 503, column: 2)
!646 = !DILocation(line: 503, column: 2, scope: !645, inlinedAt: !603)
!647 = !DILocation(line: 505, column: 39, scope: !648, inlinedAt: !603)
!648 = distinct !DILexicalBlock(scope: !649, file: !28, line: 503, column: 49)
!649 = distinct !DILexicalBlock(scope: !645, file: !28, line: 503, column: 2)
!650 = !{!308, !299, i64 0}
!651 = !DILocation(line: 505, column: 17, scope: !648, inlinedAt: !603)
!652 = !DILocation(line: 505, column: 66, scope: !648, inlinedAt: !603)
!653 = !DILocation(line: 505, column: 7, scope: !648, inlinedAt: !603)
!654 = !DILocation(line: 505, column: 14, scope: !648, inlinedAt: !603)
!655 = !DILocation(line: 503, column: 41, scope: !649, inlinedAt: !603)
!656 = distinct !{!656, !646, !657, !356, !357}
!657 = !DILocation(line: 509, column: 2, scope: !645, inlinedAt: !603)
!658 = !DILocation(line: 232, column: 26, scope: !593, inlinedAt: !556)
!659 = !{!309, !309, i64 0}
!660 = !DILocation(line: 232, column: 30, scope: !593, inlinedAt: !556)
!661 = !DILocalVariable(name: "mol", arg: 1, scope: !662, file: !28, line: 529, type: !67)
!662 = distinct !DISubprogram(name: "match_str_range", scope: !28, file: !28, line: 529, type: !663, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !67, !23, !23}
!665 = !{!661, !666, !667, !668, !669}
!666 = !DILocalVariable(name: "lo", arg: 2, scope: !662, file: !28, line: 529, type: !23)
!667 = !DILocalVariable(name: "hi", arg: 3, scope: !662, file: !28, line: 529, type: !23)
!668 = !DILocalVariable(name: "m", scope: !662, file: !28, line: 531, type: !23)
!669 = !DILocalVariable(name: "sp", scope: !662, file: !28, line: 532, type: !82)
!670 = !DILocation(line: 0, scope: !662, inlinedAt: !671)
!671 = distinct !DILocation(line: 232, column: 4, scope: !593, inlinedAt: !556)
!672 = !DILocation(line: 534, column: 9, scope: !673, inlinedAt: !671)
!673 = distinct !DILexicalBlock(scope: !662, file: !28, line: 534, column: 6)
!674 = !{!675, !309, i64 96}
!675 = !{!"molecule_t", !300, i64 0, !309, i64 96, !299, i64 104, !309, i64 112, !309, i64 116, !309, i64 120, !299, i64 128}
!676 = !DILocation(line: 536, column: 37, scope: !677, inlinedAt: !671)
!677 = distinct !DILexicalBlock(scope: !678, file: !28, line: 536, column: 2)
!678 = distinct !DILexicalBlock(scope: !662, file: !28, line: 536, column: 2)
!679 = !DILocation(line: 536, column: 2, scope: !678, inlinedAt: !671)
!680 = !DILocation(line: 0, scope: !678, inlinedAt: !671)
!681 = !DILocation(line: 538, column: 10, scope: !682, inlinedAt: !671)
!682 = distinct !DILexicalBlock(scope: !683, file: !28, line: 538, column: 7)
!683 = distinct !DILexicalBlock(scope: !677, file: !28, line: 537, column: 25)
!684 = !DILocation(line: 538, column: 15, scope: !682, inlinedAt: !671)
!685 = !DILocation(line: 539, column: 8, scope: !682, inlinedAt: !671)
!686 = !DILocation(line: 539, column: 15, scope: !682, inlinedAt: !671)
!687 = !DILocation(line: 539, column: 4, scope: !682, inlinedAt: !671)
!688 = !DILocation(line: 537, column: 4, scope: !677, inlinedAt: !671)
!689 = !DILocation(line: 537, column: 17, scope: !677, inlinedAt: !671)
!690 = distinct !{!690, !679, !691, !356, !357}
!691 = !DILocation(line: 540, column: 2, scope: !678, inlinedAt: !671)
!692 = !DILocation(line: 233, column: 16, scope: !591, inlinedAt: !556)
!693 = !DILocation(line: 233, column: 3, scope: !591, inlinedAt: !556)
!694 = !DILocalVariable(name: "item", arg: 1, scope: !695, file: !28, line: 357, type: !29)
!695 = distinct !DISubprogram(name: "is_pattern", scope: !28, file: !28, line: 357, type: !696, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !699)
!696 = !DISubroutineType(types: !697)
!697 = !{!23, !29, !698, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!699 = !{!694, !700, !701, !702, !703}
!700 = !DILocalVariable(name: "lo", arg: 2, scope: !695, file: !28, line: 357, type: !698)
!701 = !DILocalVariable(name: "hi", arg: 3, scope: !695, file: !28, line: 357, type: !698)
!702 = !DILocalVariable(name: "val", scope: !695, file: !28, line: 359, type: !23)
!703 = !DILocalVariable(name: "ip", scope: !695, file: !28, line: 360, type: !29)
!704 = !DILocation(line: 0, scope: !695, inlinedAt: !705)
!705 = distinct !DILocation(line: 234, column: 8, scope: !706, inlinedAt: !556)
!706 = distinct !DILexicalBlock(scope: !707, file: !28, line: 234, column: 8)
!707 = distinct !DILexicalBlock(scope: !591, file: !28, line: 233, column: 38)
!708 = !DILocation(line: 362, column: 7, scope: !709, inlinedAt: !705)
!709 = distinct !DILexicalBlock(scope: !695, file: !28, line: 362, column: 6)
!710 = !{!711, !711, i64 0}
!711 = !{!"short", !300, i64 0}
!712 = !DILocation(line: 362, column: 24, scope: !709, inlinedAt: !705)
!713 = !DILocation(line: 364, column: 6, scope: !714, inlinedAt: !705)
!714 = distinct !DILexicalBlock(scope: !695, file: !28, line: 364, column: 6)
!715 = !DILocation(line: 364, column: 6, scope: !695, inlinedAt: !705)
!716 = !DILocation(line: 365, column: 28, scope: !717, inlinedAt: !705)
!717 = distinct !DILexicalBlock(scope: !718, file: !28, line: 365, column: 3)
!718 = distinct !DILexicalBlock(scope: !719, file: !28, line: 365, column: 3)
!719 = distinct !DILexicalBlock(scope: !714, file: !28, line: 364, column: 24)
!720 = !DILocation(line: 366, column: 13, scope: !717, inlinedAt: !705)
!721 = !DILocation(line: 366, column: 19, scope: !717, inlinedAt: !705)
!722 = !DILocation(line: 366, column: 25, scope: !717, inlinedAt: !705)
!723 = !DILocation(line: 365, column: 46, scope: !717, inlinedAt: !705)
!724 = !DILocation(line: 365, column: 3, scope: !718, inlinedAt: !705)
!725 = distinct !{!725, !724, !726, !356, !357}
!726 = !DILocation(line: 366, column: 27, scope: !718, inlinedAt: !705)
!727 = !DILocation(line: 367, column: 7, scope: !719, inlinedAt: !705)
!728 = !DILocation(line: 368, column: 7, scope: !719, inlinedAt: !705)
!729 = !DILocation(line: 369, column: 8, scope: !730, inlinedAt: !705)
!730 = distinct !DILexicalBlock(scope: !731, file: !28, line: 368, column: 13)
!731 = distinct !DILexicalBlock(scope: !719, file: !28, line: 368, column: 7)
!732 = !DILocation(line: 370, column: 4, scope: !730, inlinedAt: !705)
!733 = !DILocation(line: 372, column: 6, scope: !734, inlinedAt: !705)
!734 = distinct !DILexicalBlock(scope: !731, file: !28, line: 371, column: 13)
!735 = !DILocation(line: 373, column: 8, scope: !736, inlinedAt: !705)
!736 = distinct !DILexicalBlock(scope: !719, file: !28, line: 373, column: 7)
!737 = !DILocation(line: 372, column: 4, scope: !734, inlinedAt: !705)
!738 = !DILocation(line: 0, scope: !719, inlinedAt: !705)
!739 = !DILocation(line: 373, column: 7, scope: !719, inlinedAt: !705)
!740 = !DILocation(line: 376, column: 14, scope: !741, inlinedAt: !705)
!741 = distinct !DILexicalBlock(scope: !736, file: !28, line: 376, column: 13)
!742 = !DILocation(line: 376, column: 13, scope: !736, inlinedAt: !705)
!743 = !DILocation(line: 378, column: 17, scope: !744, inlinedAt: !705)
!744 = distinct !DILexicalBlock(scope: !745, file: !28, line: 378, column: 3)
!745 = distinct !DILexicalBlock(scope: !719, file: !28, line: 378, column: 3)
!746 = !DILocation(line: 379, column: 13, scope: !744, inlinedAt: !705)
!747 = !DILocation(line: 379, column: 19, scope: !744, inlinedAt: !705)
!748 = !DILocation(line: 379, column: 25, scope: !744, inlinedAt: !705)
!749 = !DILocation(line: 378, column: 35, scope: !744, inlinedAt: !705)
!750 = !DILocation(line: 378, column: 3, scope: !745, inlinedAt: !705)
!751 = distinct !{!751, !750, !752, !356, !357}
!752 = !DILocation(line: 379, column: 27, scope: !745, inlinedAt: !705)
!753 = !DILocation(line: 383, column: 7, scope: !754, inlinedAt: !705)
!754 = distinct !DILexicalBlock(scope: !714, file: !28, line: 382, column: 7)
!755 = !DILocation(line: 384, column: 9, scope: !754, inlinedAt: !705)
!756 = !DILocation(line: 386, column: 7, scope: !757, inlinedAt: !705)
!757 = distinct !DILexicalBlock(scope: !695, file: !28, line: 386, column: 6)
!758 = !DILocation(line: 386, column: 6, scope: !695, inlinedAt: !705)
!759 = !DILocation(line: 389, column: 12, scope: !760, inlinedAt: !705)
!760 = distinct !DILexicalBlock(scope: !757, file: !28, line: 389, column: 12)
!761 = !DILocation(line: 389, column: 12, scope: !757, inlinedAt: !705)
!762 = !DILocation(line: 237, column: 31, scope: !706, inlinedAt: !556)
!763 = !DILocation(line: 390, column: 17, scope: !764, inlinedAt: !705)
!764 = distinct !DILexicalBlock(scope: !765, file: !28, line: 390, column: 3)
!765 = distinct !DILexicalBlock(scope: !766, file: !28, line: 390, column: 3)
!766 = distinct !DILexicalBlock(scope: !760, file: !28, line: 389, column: 28)
!767 = !DILocation(line: 391, column: 13, scope: !764, inlinedAt: !705)
!768 = !DILocation(line: 391, column: 19, scope: !764, inlinedAt: !705)
!769 = !DILocation(line: 391, column: 25, scope: !764, inlinedAt: !705)
!770 = !DILocation(line: 390, column: 35, scope: !764, inlinedAt: !705)
!771 = !DILocation(line: 390, column: 3, scope: !765, inlinedAt: !705)
!772 = distinct !{!772, !771, !773, !356, !357}
!773 = !DILocation(line: 391, column: 27, scope: !765, inlinedAt: !705)
!774 = !DILocation(line: 234, column: 8, scope: !706, inlinedAt: !556)
!775 = !DILocation(line: 234, column: 8, scope: !707, inlinedAt: !556)
!776 = !DILocation(line: 0, scope: !596, inlinedAt: !777)
!777 = distinct !DILocation(line: 235, column: 5, scope: !706, inlinedAt: !556)
!778 = !DILocation(line: 0, scope: !605, inlinedAt: !779)
!779 = distinct !DILocation(line: 497, column: 2, scope: !596, inlinedAt: !777)
!780 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !779)
!781 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !779)
!782 = !DILocation(line: 0, scope: !616, inlinedAt: !779)
!783 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !779)
!784 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !779)
!785 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !779)
!786 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !779)
!787 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !779)
!788 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !779)
!789 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !779)
!790 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !779)
!791 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !779)
!792 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !779)
!793 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !779)
!794 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !779)
!795 = !DILocation(line: 0, scope: !623, inlinedAt: !779)
!796 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !779)
!797 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !779)
!798 = distinct !{!798, !784, !799, !356, !357}
!799 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !779)
!800 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !779)
!801 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !779)
!802 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !779)
!803 = !DILocation(line: 499, column: 2, scope: !596, inlinedAt: !777)
!804 = !DILocation(line: 0, scope: !645, inlinedAt: !777)
!805 = !DILocation(line: 503, column: 2, scope: !645, inlinedAt: !777)
!806 = !DILocation(line: 505, column: 39, scope: !648, inlinedAt: !777)
!807 = !DILocation(line: 505, column: 17, scope: !648, inlinedAt: !777)
!808 = !DILocation(line: 505, column: 66, scope: !648, inlinedAt: !777)
!809 = !DILocation(line: 505, column: 7, scope: !648, inlinedAt: !777)
!810 = !DILocation(line: 505, column: 14, scope: !648, inlinedAt: !777)
!811 = !DILocation(line: 503, column: 41, scope: !649, inlinedAt: !777)
!812 = distinct !{!812, !805, !813, !356, !357}
!813 = !DILocation(line: 509, column: 2, scope: !645, inlinedAt: !777)
!814 = !DILocation(line: 0, scope: !662, inlinedAt: !815)
!815 = distinct !DILocation(line: 237, column: 5, scope: !706, inlinedAt: !556)
!816 = !DILocation(line: 237, column: 27, scope: !706, inlinedAt: !556)
!817 = !DILocation(line: 534, column: 9, scope: !673, inlinedAt: !815)
!818 = !DILocation(line: 536, column: 37, scope: !677, inlinedAt: !815)
!819 = !DILocation(line: 536, column: 2, scope: !678, inlinedAt: !815)
!820 = !DILocation(line: 0, scope: !678, inlinedAt: !815)
!821 = !DILocation(line: 538, column: 10, scope: !682, inlinedAt: !815)
!822 = !DILocation(line: 538, column: 15, scope: !682, inlinedAt: !815)
!823 = !DILocation(line: 539, column: 8, scope: !682, inlinedAt: !815)
!824 = !DILocation(line: 539, column: 15, scope: !682, inlinedAt: !815)
!825 = !DILocation(line: 539, column: 4, scope: !682, inlinedAt: !815)
!826 = !DILocation(line: 537, column: 4, scope: !677, inlinedAt: !815)
!827 = !DILocation(line: 537, column: 17, scope: !677, inlinedAt: !815)
!828 = distinct !{!828, !819, !829, !356, !357}
!829 = !DILocation(line: 540, column: 2, scope: !678, inlinedAt: !815)
!830 = distinct !{!830, !693, !831, !356, !357}
!831 = !DILocation(line: 238, column: 3, scope: !591, inlinedAt: !556)
!832 = !DILocation(line: 0, scope: !662, inlinedAt: !833)
!833 = distinct !DILocation(line: 240, column: 3, scope: !588, inlinedAt: !556)
!834 = !DILocation(line: 536, column: 37, scope: !677, inlinedAt: !833)
!835 = !DILocation(line: 536, column: 2, scope: !678, inlinedAt: !833)
!836 = !DILocation(line: 0, scope: !678, inlinedAt: !833)
!837 = !DILocation(line: 538, column: 15, scope: !682, inlinedAt: !833)
!838 = !DILocation(line: 539, column: 8, scope: !682, inlinedAt: !833)
!839 = !DILocation(line: 539, column: 15, scope: !682, inlinedAt: !833)
!840 = !DILocation(line: 539, column: 4, scope: !682, inlinedAt: !833)
!841 = !DILocation(line: 537, column: 4, scope: !677, inlinedAt: !833)
!842 = !DILocation(line: 537, column: 17, scope: !677, inlinedAt: !833)
!843 = distinct !{!843, !835, !844, !356, !357}
!844 = !DILocation(line: 540, column: 2, scope: !678, inlinedAt: !833)
!845 = !DILocation(line: 242, column: 6, scope: !846, inlinedAt: !556)
!846 = distinct !DILexicalBlock(scope: !548, file: !28, line: 242, column: 6)
!847 = !DILocation(line: 242, column: 6, scope: !548, inlinedAt: !556)
!848 = !DILocation(line: 243, column: 8, scope: !849, inlinedAt: !556)
!849 = distinct !DILexicalBlock(scope: !846, file: !28, line: 242, column: 13)
!850 = !DILocation(line: 244, column: 7, scope: !851, inlinedAt: !556)
!851 = distinct !DILexicalBlock(scope: !849, file: !28, line: 244, column: 7)
!852 = !DILocation(line: 244, column: 7, scope: !849, inlinedAt: !556)
!853 = !DILocalVariable(name: "mol", arg: 1, scope: !854, file: !28, line: 565, type: !67)
!854 = distinct !DISubprogram(name: "match_res_pat", scope: !28, file: !28, line: 565, type: !597, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!853, !856, !857, !858, !859}
!856 = !DILocalVariable(name: "pat", arg: 2, scope: !854, file: !28, line: 565, type: !29)
!857 = !DILocalVariable(name: "r", scope: !854, file: !28, line: 567, type: !23)
!858 = !DILocalVariable(name: "sp", scope: !854, file: !28, line: 568, type: !82)
!859 = !DILocalVariable(name: "res", scope: !854, file: !28, line: 569, type: !99)
!860 = !DILocation(line: 0, scope: !854, inlinedAt: !861)
!861 = distinct !DILocation(line: 245, column: 4, scope: !851, inlinedAt: !556)
!862 = !DILocation(line: 0, scope: !605, inlinedAt: !863)
!863 = distinct !DILocation(line: 571, column: 2, scope: !854, inlinedAt: !861)
!864 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !863)
!865 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !863)
!866 = !DILocation(line: 0, scope: !616, inlinedAt: !863)
!867 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !863)
!868 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !863)
!869 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !863)
!870 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !863)
!871 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !863)
!872 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !863)
!873 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !863)
!874 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !863)
!875 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !863)
!876 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !863)
!877 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !863)
!878 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !863)
!879 = !DILocation(line: 0, scope: !623, inlinedAt: !863)
!880 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !863)
!881 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !863)
!882 = distinct !{!882, !868, !883, !356, !357}
!883 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !863)
!884 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !863)
!885 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !863)
!886 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !863)
!887 = !DILocation(line: 573, column: 2, scope: !854, inlinedAt: !861)
!888 = !DILocation(line: 0, scope: !889, inlinedAt: !861)
!889 = distinct !DILexicalBlock(scope: !854, file: !28, line: 577, column: 2)
!890 = !DILocation(line: 577, column: 2, scope: !889, inlinedAt: !861)
!891 = !DILocation(line: 578, column: 23, scope: !892, inlinedAt: !861)
!892 = distinct !DILexicalBlock(scope: !893, file: !28, line: 578, column: 7)
!893 = distinct !DILexicalBlock(scope: !894, file: !28, line: 577, column: 49)
!894 = distinct !DILexicalBlock(scope: !889, file: !28, line: 577, column: 2)
!895 = !DILocation(line: 578, column: 17, scope: !892, inlinedAt: !861)
!896 = !DILocation(line: 578, column: 7, scope: !893, inlinedAt: !861)
!897 = !DILocation(line: 579, column: 24, scope: !898, inlinedAt: !861)
!898 = distinct !DILexicalBlock(scope: !899, file: !28, line: 579, column: 4)
!899 = distinct !DILexicalBlock(scope: !900, file: !28, line: 579, column: 4)
!900 = distinct !DILexicalBlock(scope: !892, file: !28, line: 578, column: 31)
!901 = !DILocation(line: 579, column: 18, scope: !898, inlinedAt: !861)
!902 = !DILocation(line: 579, column: 4, scope: !899, inlinedAt: !861)
!903 = !DILocation(line: 580, column: 15, scope: !904, inlinedAt: !861)
!904 = distinct !DILexicalBlock(scope: !898, file: !28, line: 579, column: 42)
!905 = !DILocation(line: 580, column: 11, scope: !904, inlinedAt: !861)
!906 = !DILocation(line: 582, column: 43, scope: !904, inlinedAt: !861)
!907 = !{!324, !299, i64 24}
!908 = !DILocation(line: 582, column: 20, scope: !904, inlinedAt: !861)
!909 = !DILocation(line: 582, column: 67, scope: !904, inlinedAt: !861)
!910 = !DILocation(line: 582, column: 10, scope: !904, inlinedAt: !861)
!911 = !DILocation(line: 582, column: 17, scope: !904, inlinedAt: !861)
!912 = !DILocation(line: 579, column: 38, scope: !898, inlinedAt: !861)
!913 = distinct !{!913, !902, !914, !356, !357}
!914 = !DILocation(line: 588, column: 4, scope: !899, inlinedAt: !861)
!915 = !DILocation(line: 577, column: 41, scope: !894, inlinedAt: !861)
!916 = distinct !{!916, !890, !917, !356, !357}
!917 = !DILocation(line: 590, column: 2, scope: !889, inlinedAt: !861)
!918 = !DILocation(line: 247, column: 26, scope: !851, inlinedAt: !556)
!919 = !DILocation(line: 247, column: 30, scope: !851, inlinedAt: !556)
!920 = !DILocalVariable(name: "mol", arg: 1, scope: !921, file: !28, line: 608, type: !67)
!921 = distinct !DISubprogram(name: "match_res_range", scope: !28, file: !28, line: 608, type: !663, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !922)
!922 = !{!920, !923, !924, !925, !926, !927, !928}
!923 = !DILocalVariable(name: "lo", arg: 2, scope: !921, file: !28, line: 608, type: !23)
!924 = !DILocalVariable(name: "hi", arg: 3, scope: !921, file: !28, line: 608, type: !23)
!925 = !DILocalVariable(name: "r", scope: !921, file: !28, line: 610, type: !23)
!926 = !DILocalVariable(name: "rhi", scope: !921, file: !28, line: 610, type: !23)
!927 = !DILocalVariable(name: "sp", scope: !921, file: !28, line: 611, type: !82)
!928 = !DILocalVariable(name: "res", scope: !921, file: !28, line: 612, type: !99)
!929 = !DILocation(line: 0, scope: !921, inlinedAt: !930)
!930 = distinct !DILocation(line: 247, column: 4, scope: !851, inlinedAt: !556)
!931 = !DILocation(line: 0, scope: !932, inlinedAt: !930)
!932 = distinct !DILexicalBlock(scope: !921, file: !28, line: 614, column: 2)
!933 = !DILocation(line: 614, column: 2, scope: !932, inlinedAt: !930)
!934 = !DILocation(line: 616, column: 10, scope: !935, inlinedAt: !930)
!935 = distinct !DILexicalBlock(scope: !936, file: !28, line: 615, column: 31)
!936 = distinct !DILexicalBlock(scope: !937, file: !28, line: 615, column: 7)
!937 = distinct !DILexicalBlock(scope: !938, file: !28, line: 614, column: 49)
!938 = distinct !DILexicalBlock(scope: !932, file: !28, line: 614, column: 2)
!939 = !DILocation(line: 615, column: 23, scope: !936, inlinedAt: !930)
!940 = !DILocation(line: 615, column: 17, scope: !936, inlinedAt: !930)
!941 = !DILocation(line: 615, column: 7, scope: !937, inlinedAt: !930)
!942 = !DILocation(line: 616, column: 32, scope: !935, inlinedAt: !930)
!943 = !DILocation(line: 617, column: 18, scope: !944, inlinedAt: !930)
!944 = distinct !DILexicalBlock(scope: !945, file: !28, line: 617, column: 4)
!945 = distinct !DILexicalBlock(scope: !935, file: !28, line: 617, column: 4)
!946 = !DILocation(line: 617, column: 4, scope: !945, inlinedAt: !930)
!947 = !DILocation(line: 619, column: 17, scope: !948, inlinedAt: !930)
!948 = distinct !DILexicalBlock(scope: !949, file: !28, line: 619, column: 9)
!949 = distinct !DILexicalBlock(scope: !944, file: !28, line: 617, column: 42)
!950 = !DILocation(line: 619, column: 12, scope: !948, inlinedAt: !930)
!951 = !DILocation(line: 619, column: 21, scope: !948, inlinedAt: !930)
!952 = !DILocation(line: 618, column: 15, scope: !949, inlinedAt: !930)
!953 = !DILocation(line: 618, column: 11, scope: !949, inlinedAt: !930)
!954 = !DILocation(line: 620, column: 11, scope: !948, inlinedAt: !930)
!955 = !DILocation(line: 620, column: 18, scope: !948, inlinedAt: !930)
!956 = !DILocation(line: 620, column: 6, scope: !948, inlinedAt: !930)
!957 = distinct !{!957, !946, !958, !356, !357}
!958 = !DILocation(line: 621, column: 4, scope: !945, inlinedAt: !930)
!959 = !DILocation(line: 614, column: 41, scope: !938, inlinedAt: !930)
!960 = distinct !{!960, !933, !961, !356, !357}
!961 = !DILocation(line: 623, column: 2, scope: !932, inlinedAt: !930)
!962 = distinct !{!962, !946, !958, !356, !357}
!963 = distinct !{!963, !933, !961, !356, !357}
!964 = !DILocation(line: 248, column: 16, scope: !849, inlinedAt: !556)
!965 = !DILocation(line: 248, column: 3, scope: !849, inlinedAt: !556)
!966 = !DILocation(line: 0, scope: !695, inlinedAt: !967)
!967 = distinct !DILocation(line: 249, column: 8, scope: !968, inlinedAt: !556)
!968 = distinct !DILexicalBlock(scope: !969, file: !28, line: 249, column: 8)
!969 = distinct !DILexicalBlock(scope: !849, file: !28, line: 248, column: 38)
!970 = !DILocation(line: 362, column: 7, scope: !709, inlinedAt: !967)
!971 = !DILocation(line: 362, column: 24, scope: !709, inlinedAt: !967)
!972 = !DILocation(line: 364, column: 6, scope: !714, inlinedAt: !967)
!973 = !DILocation(line: 364, column: 6, scope: !695, inlinedAt: !967)
!974 = !DILocation(line: 365, column: 28, scope: !717, inlinedAt: !967)
!975 = !DILocation(line: 366, column: 13, scope: !717, inlinedAt: !967)
!976 = !DILocation(line: 366, column: 19, scope: !717, inlinedAt: !967)
!977 = !DILocation(line: 366, column: 25, scope: !717, inlinedAt: !967)
!978 = !DILocation(line: 365, column: 46, scope: !717, inlinedAt: !967)
!979 = !DILocation(line: 365, column: 3, scope: !718, inlinedAt: !967)
!980 = distinct !{!980, !979, !981, !356, !357}
!981 = !DILocation(line: 366, column: 27, scope: !718, inlinedAt: !967)
!982 = !DILocation(line: 367, column: 7, scope: !719, inlinedAt: !967)
!983 = !DILocation(line: 368, column: 7, scope: !719, inlinedAt: !967)
!984 = !DILocation(line: 369, column: 8, scope: !730, inlinedAt: !967)
!985 = !DILocation(line: 370, column: 4, scope: !730, inlinedAt: !967)
!986 = !DILocation(line: 372, column: 6, scope: !734, inlinedAt: !967)
!987 = !DILocation(line: 373, column: 8, scope: !736, inlinedAt: !967)
!988 = !DILocation(line: 372, column: 4, scope: !734, inlinedAt: !967)
!989 = !DILocation(line: 0, scope: !719, inlinedAt: !967)
!990 = !DILocation(line: 373, column: 7, scope: !719, inlinedAt: !967)
!991 = !DILocation(line: 374, column: 8, scope: !992, inlinedAt: !967)
!992 = distinct !DILexicalBlock(scope: !736, file: !28, line: 373, column: 13)
!993 = !DILocation(line: 375, column: 4, scope: !992, inlinedAt: !967)
!994 = !DILocation(line: 376, column: 14, scope: !741, inlinedAt: !967)
!995 = !DILocation(line: 376, column: 13, scope: !736, inlinedAt: !967)
!996 = !DILocation(line: 378, column: 17, scope: !744, inlinedAt: !967)
!997 = !DILocation(line: 379, column: 13, scope: !744, inlinedAt: !967)
!998 = !DILocation(line: 379, column: 19, scope: !744, inlinedAt: !967)
!999 = !DILocation(line: 379, column: 25, scope: !744, inlinedAt: !967)
!1000 = !DILocation(line: 378, column: 35, scope: !744, inlinedAt: !967)
!1001 = !DILocation(line: 378, column: 3, scope: !745, inlinedAt: !967)
!1002 = distinct !{!1002, !1001, !1003, !356, !357}
!1003 = !DILocation(line: 379, column: 27, scope: !745, inlinedAt: !967)
!1004 = !DILocation(line: 383, column: 7, scope: !754, inlinedAt: !967)
!1005 = !DILocation(line: 384, column: 9, scope: !754, inlinedAt: !967)
!1006 = !DILocation(line: 386, column: 7, scope: !757, inlinedAt: !967)
!1007 = !DILocation(line: 386, column: 6, scope: !695, inlinedAt: !967)
!1008 = !DILocation(line: 387, column: 7, scope: !1009, inlinedAt: !967)
!1009 = distinct !DILexicalBlock(scope: !757, file: !28, line: 386, column: 12)
!1010 = !DILocation(line: 388, column: 3, scope: !1009, inlinedAt: !967)
!1011 = !DILocation(line: 389, column: 12, scope: !760, inlinedAt: !967)
!1012 = !DILocation(line: 389, column: 12, scope: !757, inlinedAt: !967)
!1013 = !DILocation(line: 252, column: 31, scope: !968, inlinedAt: !556)
!1014 = !DILocation(line: 390, column: 17, scope: !764, inlinedAt: !967)
!1015 = !DILocation(line: 391, column: 13, scope: !764, inlinedAt: !967)
!1016 = !DILocation(line: 391, column: 19, scope: !764, inlinedAt: !967)
!1017 = !DILocation(line: 391, column: 25, scope: !764, inlinedAt: !967)
!1018 = !DILocation(line: 390, column: 35, scope: !764, inlinedAt: !967)
!1019 = !DILocation(line: 390, column: 3, scope: !765, inlinedAt: !967)
!1020 = distinct !{!1020, !1019, !1021, !356, !357}
!1021 = !DILocation(line: 391, column: 27, scope: !765, inlinedAt: !967)
!1022 = !DILocation(line: 249, column: 8, scope: !968, inlinedAt: !556)
!1023 = !DILocation(line: 249, column: 8, scope: !969, inlinedAt: !556)
!1024 = !DILocation(line: 0, scope: !854, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 250, column: 5, scope: !968, inlinedAt: !556)
!1026 = !DILocation(line: 0, scope: !605, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 571, column: 2, scope: !854, inlinedAt: !1025)
!1028 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1027)
!1029 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1027)
!1030 = !DILocation(line: 0, scope: !616, inlinedAt: !1027)
!1031 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1027)
!1032 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1027)
!1033 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1027)
!1034 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1027)
!1035 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1027)
!1036 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1027)
!1037 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1027)
!1038 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1027)
!1039 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1027)
!1040 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1027)
!1041 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1027)
!1042 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1027)
!1043 = !DILocation(line: 0, scope: !623, inlinedAt: !1027)
!1044 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1027)
!1045 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1027)
!1046 = distinct !{!1046, !1032, !1047, !356, !357}
!1047 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1027)
!1048 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1027)
!1049 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1027)
!1050 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1027)
!1051 = !DILocation(line: 573, column: 2, scope: !854, inlinedAt: !1025)
!1052 = !DILocation(line: 0, scope: !889, inlinedAt: !1025)
!1053 = !DILocation(line: 577, column: 2, scope: !889, inlinedAt: !1025)
!1054 = !DILocation(line: 578, column: 23, scope: !892, inlinedAt: !1025)
!1055 = !DILocation(line: 578, column: 17, scope: !892, inlinedAt: !1025)
!1056 = !DILocation(line: 578, column: 7, scope: !893, inlinedAt: !1025)
!1057 = !DILocation(line: 579, column: 24, scope: !898, inlinedAt: !1025)
!1058 = !DILocation(line: 579, column: 18, scope: !898, inlinedAt: !1025)
!1059 = !DILocation(line: 579, column: 4, scope: !899, inlinedAt: !1025)
!1060 = !DILocation(line: 580, column: 15, scope: !904, inlinedAt: !1025)
!1061 = !DILocation(line: 580, column: 11, scope: !904, inlinedAt: !1025)
!1062 = !DILocation(line: 582, column: 43, scope: !904, inlinedAt: !1025)
!1063 = !DILocation(line: 582, column: 20, scope: !904, inlinedAt: !1025)
!1064 = !DILocation(line: 582, column: 67, scope: !904, inlinedAt: !1025)
!1065 = !DILocation(line: 582, column: 10, scope: !904, inlinedAt: !1025)
!1066 = !DILocation(line: 582, column: 17, scope: !904, inlinedAt: !1025)
!1067 = !DILocation(line: 579, column: 38, scope: !898, inlinedAt: !1025)
!1068 = distinct !{!1068, !1059, !1069, !356, !357}
!1069 = !DILocation(line: 588, column: 4, scope: !899, inlinedAt: !1025)
!1070 = !DILocation(line: 577, column: 41, scope: !894, inlinedAt: !1025)
!1071 = distinct !{!1071, !1053, !1072, !356, !357}
!1072 = !DILocation(line: 590, column: 2, scope: !889, inlinedAt: !1025)
!1073 = !DILocation(line: 252, column: 27, scope: !968, inlinedAt: !556)
!1074 = !DILocation(line: 0, scope: !921, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 252, column: 5, scope: !968, inlinedAt: !556)
!1076 = !DILocation(line: 0, scope: !932, inlinedAt: !1075)
!1077 = !DILocation(line: 614, column: 2, scope: !932, inlinedAt: !1075)
!1078 = !DILocation(line: 616, column: 10, scope: !935, inlinedAt: !1075)
!1079 = !DILocation(line: 615, column: 23, scope: !936, inlinedAt: !1075)
!1080 = !DILocation(line: 615, column: 17, scope: !936, inlinedAt: !1075)
!1081 = !DILocation(line: 615, column: 7, scope: !937, inlinedAt: !1075)
!1082 = !DILocation(line: 616, column: 32, scope: !935, inlinedAt: !1075)
!1083 = !DILocation(line: 617, column: 18, scope: !944, inlinedAt: !1075)
!1084 = !DILocation(line: 617, column: 4, scope: !945, inlinedAt: !1075)
!1085 = !DILocation(line: 619, column: 17, scope: !948, inlinedAt: !1075)
!1086 = !DILocation(line: 619, column: 12, scope: !948, inlinedAt: !1075)
!1087 = !DILocation(line: 619, column: 21, scope: !948, inlinedAt: !1075)
!1088 = !DILocation(line: 618, column: 15, scope: !949, inlinedAt: !1075)
!1089 = !DILocation(line: 618, column: 11, scope: !949, inlinedAt: !1075)
!1090 = !DILocation(line: 620, column: 11, scope: !948, inlinedAt: !1075)
!1091 = !DILocation(line: 620, column: 18, scope: !948, inlinedAt: !1075)
!1092 = !DILocation(line: 620, column: 6, scope: !948, inlinedAt: !1075)
!1093 = distinct !{!1093, !1084, !1094, !356, !357}
!1094 = !DILocation(line: 621, column: 4, scope: !945, inlinedAt: !1075)
!1095 = !DILocation(line: 614, column: 41, scope: !938, inlinedAt: !1075)
!1096 = distinct !{!1096, !1077, !1097, !356, !357}
!1097 = !DILocation(line: 623, column: 2, scope: !932, inlinedAt: !1075)
!1098 = distinct !{!1098, !1084, !1094, !356, !357}
!1099 = distinct !{!1099, !1077, !1097, !356, !357}
!1100 = distinct !{!1100, !965, !1101, !356, !357}
!1101 = !DILocation(line: 253, column: 3, scope: !849, inlinedAt: !556)
!1102 = !DILocation(line: 0, scope: !921, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 255, column: 3, scope: !846, inlinedAt: !556)
!1104 = !DILocation(line: 0, scope: !932, inlinedAt: !1103)
!1105 = !DILocation(line: 614, column: 2, scope: !932, inlinedAt: !1103)
!1106 = !DILocation(line: 615, column: 23, scope: !936, inlinedAt: !1103)
!1107 = !DILocation(line: 615, column: 17, scope: !936, inlinedAt: !1103)
!1108 = !DILocation(line: 615, column: 7, scope: !937, inlinedAt: !1103)
!1109 = !DILocation(line: 616, column: 32, scope: !935, inlinedAt: !1103)
!1110 = !DILocation(line: 617, column: 18, scope: !944, inlinedAt: !1103)
!1111 = !DILocation(line: 617, column: 4, scope: !945, inlinedAt: !1103)
!1112 = !DILocation(line: 619, column: 17, scope: !948, inlinedAt: !1103)
!1113 = !DILocation(line: 618, column: 11, scope: !949, inlinedAt: !1103)
!1114 = !DILocation(line: 620, column: 11, scope: !948, inlinedAt: !1103)
!1115 = !DILocation(line: 620, column: 18, scope: !948, inlinedAt: !1103)
!1116 = distinct !{!1116, !1111, !1117, !356, !357}
!1117 = !DILocation(line: 621, column: 4, scope: !945, inlinedAt: !1103)
!1118 = !DILocation(line: 614, column: 41, scope: !938, inlinedAt: !1103)
!1119 = distinct !{!1119, !1105, !1120, !356, !357}
!1120 = !DILocation(line: 623, column: 2, scope: !932, inlinedAt: !1103)
!1121 = !DILocation(line: 257, column: 6, scope: !1122, inlinedAt: !556)
!1122 = distinct !DILexicalBlock(scope: !548, file: !28, line: 257, column: 6)
!1123 = !DILocation(line: 257, column: 6, scope: !548, inlinedAt: !556)
!1124 = !DILocation(line: 258, column: 8, scope: !1125, inlinedAt: !556)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !28, line: 257, column: 13)
!1126 = !DILocation(line: 259, column: 7, scope: !1127, inlinedAt: !556)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !28, line: 259, column: 7)
!1128 = !DILocation(line: 259, column: 7, scope: !1125, inlinedAt: !556)
!1129 = !DILocation(line: 260, column: 4, scope: !1127, inlinedAt: !556)
!1130 = !DILocation(line: 262, column: 13, scope: !1131, inlinedAt: !556)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !28, line: 261, column: 7)
!1132 = !DILocation(line: 262, column: 4, scope: !1131, inlinedAt: !556)
!1133 = !DILocation(line: 264, column: 16, scope: !1125, inlinedAt: !556)
!1134 = !DILocation(line: 264, column: 3, scope: !1125, inlinedAt: !556)
!1135 = !DILocation(line: 0, scope: !695, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 265, column: 8, scope: !1137, inlinedAt: !556)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !28, line: 265, column: 8)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !28, line: 264, column: 38)
!1139 = !DILocation(line: 362, column: 7, scope: !709, inlinedAt: !1136)
!1140 = !DILocation(line: 362, column: 24, scope: !709, inlinedAt: !1136)
!1141 = !DILocation(line: 364, column: 6, scope: !714, inlinedAt: !1136)
!1142 = !DILocation(line: 364, column: 6, scope: !695, inlinedAt: !1136)
!1143 = !DILocation(line: 365, column: 28, scope: !717, inlinedAt: !1136)
!1144 = !DILocation(line: 366, column: 13, scope: !717, inlinedAt: !1136)
!1145 = !DILocation(line: 366, column: 19, scope: !717, inlinedAt: !1136)
!1146 = !DILocation(line: 366, column: 25, scope: !717, inlinedAt: !1136)
!1147 = !DILocation(line: 365, column: 46, scope: !717, inlinedAt: !1136)
!1148 = !DILocation(line: 365, column: 3, scope: !718, inlinedAt: !1136)
!1149 = distinct !{!1149, !1148, !1150, !356, !357}
!1150 = !DILocation(line: 366, column: 27, scope: !718, inlinedAt: !1136)
!1151 = !DILocation(line: 367, column: 7, scope: !719, inlinedAt: !1136)
!1152 = !DILocation(line: 368, column: 7, scope: !719, inlinedAt: !1136)
!1153 = !DILocation(line: 369, column: 8, scope: !730, inlinedAt: !1136)
!1154 = !DILocation(line: 370, column: 4, scope: !730, inlinedAt: !1136)
!1155 = !DILocation(line: 372, column: 6, scope: !734, inlinedAt: !1136)
!1156 = !DILocation(line: 373, column: 8, scope: !736, inlinedAt: !1136)
!1157 = !DILocation(line: 372, column: 4, scope: !734, inlinedAt: !1136)
!1158 = !DILocation(line: 0, scope: !719, inlinedAt: !1136)
!1159 = !DILocation(line: 373, column: 7, scope: !719, inlinedAt: !1136)
!1160 = !DILocation(line: 374, column: 8, scope: !992, inlinedAt: !1136)
!1161 = !DILocation(line: 375, column: 4, scope: !992, inlinedAt: !1136)
!1162 = !DILocation(line: 376, column: 14, scope: !741, inlinedAt: !1136)
!1163 = !DILocation(line: 376, column: 13, scope: !736, inlinedAt: !1136)
!1164 = !DILocation(line: 378, column: 17, scope: !744, inlinedAt: !1136)
!1165 = !DILocation(line: 379, column: 13, scope: !744, inlinedAt: !1136)
!1166 = !DILocation(line: 379, column: 19, scope: !744, inlinedAt: !1136)
!1167 = !DILocation(line: 379, column: 25, scope: !744, inlinedAt: !1136)
!1168 = !DILocation(line: 378, column: 35, scope: !744, inlinedAt: !1136)
!1169 = !DILocation(line: 378, column: 3, scope: !745, inlinedAt: !1136)
!1170 = distinct !{!1170, !1169, !1171, !356, !357}
!1171 = !DILocation(line: 379, column: 27, scope: !745, inlinedAt: !1136)
!1172 = !DILocation(line: 383, column: 7, scope: !754, inlinedAt: !1136)
!1173 = !DILocation(line: 384, column: 9, scope: !754, inlinedAt: !1136)
!1174 = !DILocation(line: 386, column: 7, scope: !757, inlinedAt: !1136)
!1175 = !DILocation(line: 386, column: 6, scope: !695, inlinedAt: !1136)
!1176 = !DILocation(line: 387, column: 7, scope: !1009, inlinedAt: !1136)
!1177 = !DILocation(line: 388, column: 3, scope: !1009, inlinedAt: !1136)
!1178 = !DILocation(line: 389, column: 12, scope: !760, inlinedAt: !1136)
!1179 = !DILocation(line: 389, column: 12, scope: !757, inlinedAt: !1136)
!1180 = !DILocation(line: 390, column: 17, scope: !764, inlinedAt: !1136)
!1181 = !DILocation(line: 391, column: 13, scope: !764, inlinedAt: !1136)
!1182 = !DILocation(line: 391, column: 19, scope: !764, inlinedAt: !1136)
!1183 = !DILocation(line: 391, column: 25, scope: !764, inlinedAt: !1136)
!1184 = !DILocation(line: 390, column: 35, scope: !764, inlinedAt: !1136)
!1185 = !DILocation(line: 390, column: 3, scope: !765, inlinedAt: !1136)
!1186 = distinct !{!1186, !1185, !1187, !356, !357}
!1187 = !DILocation(line: 391, column: 27, scope: !765, inlinedAt: !1136)
!1188 = !DILocation(line: 265, column: 8, scope: !1137, inlinedAt: !556)
!1189 = !DILocation(line: 265, column: 8, scope: !1138, inlinedAt: !556)
!1190 = !DILocalVariable(name: "mol", arg: 1, scope: !1191, file: !28, line: 646, type: !67)
!1191 = distinct !DISubprogram(name: "match_atom_pat", scope: !28, file: !28, line: 646, type: !597, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1192)
!1192 = !{!1190, !1193, !1194, !1195, !1196, !1197, !1198}
!1193 = !DILocalVariable(name: "pat", arg: 2, scope: !1191, file: !28, line: 646, type: !29)
!1194 = !DILocalVariable(name: "r", scope: !1191, file: !28, line: 648, type: !23)
!1195 = !DILocalVariable(name: "a", scope: !1191, file: !28, line: 648, type: !23)
!1196 = !DILocalVariable(name: "sp", scope: !1191, file: !28, line: 649, type: !82)
!1197 = !DILocalVariable(name: "res", scope: !1191, file: !28, line: 650, type: !99)
!1198 = !DILocalVariable(name: "ap", scope: !1191, file: !28, line: 651, type: !145)
!1199 = !DILocation(line: 0, scope: !1191, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 266, column: 5, scope: !1137, inlinedAt: !556)
!1201 = !DILocation(line: 0, scope: !605, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 653, column: 2, scope: !1191, inlinedAt: !1200)
!1203 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1202)
!1204 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1202)
!1205 = !DILocation(line: 0, scope: !616, inlinedAt: !1202)
!1206 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1202)
!1207 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1202)
!1208 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1202)
!1209 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1202)
!1210 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1202)
!1211 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1202)
!1212 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1202)
!1213 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1202)
!1214 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1202)
!1215 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1202)
!1216 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1202)
!1217 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1202)
!1218 = !DILocation(line: 0, scope: !623, inlinedAt: !1202)
!1219 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1202)
!1220 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1202)
!1221 = distinct !{!1221, !1207, !1222, !356, !357}
!1222 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1202)
!1223 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1202)
!1224 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1202)
!1225 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1202)
!1226 = !DILocation(line: 655, column: 2, scope: !1191, inlinedAt: !1200)
!1227 = !DILocation(line: 0, scope: !1228, inlinedAt: !1200)
!1228 = distinct !DILexicalBlock(scope: !1191, file: !28, line: 659, column: 2)
!1229 = !DILocation(line: 659, column: 2, scope: !1228, inlinedAt: !1200)
!1230 = !DILocation(line: 660, column: 23, scope: !1231, inlinedAt: !1200)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !28, line: 660, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !28, line: 659, column: 49)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !28, line: 659, column: 2)
!1234 = !DILocation(line: 660, column: 17, scope: !1231, inlinedAt: !1200)
!1235 = !DILocation(line: 660, column: 7, scope: !1232, inlinedAt: !1200)
!1236 = !DILocation(line: 661, column: 24, scope: !1237, inlinedAt: !1200)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !28, line: 661, column: 4)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !28, line: 661, column: 4)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !28, line: 660, column: 31)
!1240 = !DILocation(line: 661, column: 18, scope: !1237, inlinedAt: !1200)
!1241 = !DILocation(line: 661, column: 4, scope: !1238, inlinedAt: !1200)
!1242 = !DILocation(line: 662, column: 15, scope: !1243, inlinedAt: !1200)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !28, line: 661, column: 42)
!1244 = !DILocation(line: 662, column: 11, scope: !1243, inlinedAt: !1200)
!1245 = !DILocation(line: 663, column: 26, scope: !1246, inlinedAt: !1200)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !28, line: 663, column: 9)
!1247 = !DILocation(line: 663, column: 19, scope: !1246, inlinedAt: !1200)
!1248 = !DILocation(line: 663, column: 9, scope: !1243, inlinedAt: !1200)
!1249 = !DILocation(line: 664, column: 27, scope: !1250, inlinedAt: !1200)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !28, line: 664, column: 6)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !28, line: 664, column: 6)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !28, line: 663, column: 34)
!1253 = !DILocation(line: 664, column: 20, scope: !1250, inlinedAt: !1200)
!1254 = !DILocation(line: 664, column: 6, scope: !1251, inlinedAt: !1200)
!1255 = !DILocation(line: 665, column: 18, scope: !1256, inlinedAt: !1200)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !28, line: 664, column: 42)
!1257 = !DILocation(line: 665, column: 13, scope: !1256, inlinedAt: !1200)
!1258 = !DILocation(line: 668, column: 33, scope: !1256, inlinedAt: !1200)
!1259 = !{!338, !299, i64 0}
!1260 = !DILocation(line: 668, column: 11, scope: !1256, inlinedAt: !1200)
!1261 = !DILocation(line: 668, column: 58, scope: !1256, inlinedAt: !1200)
!1262 = !DILocation(line: 667, column: 11, scope: !1256, inlinedAt: !1200)
!1263 = !DILocation(line: 667, column: 18, scope: !1256, inlinedAt: !1200)
!1264 = !DILocation(line: 664, column: 38, scope: !1250, inlinedAt: !1200)
!1265 = distinct !{!1265, !1254, !1266, !356, !357}
!1266 = !DILocation(line: 675, column: 6, scope: !1251, inlinedAt: !1200)
!1267 = !DILocation(line: 661, column: 38, scope: !1237, inlinedAt: !1200)
!1268 = distinct !{!1268, !1241, !1269, !356, !357}
!1269 = !DILocation(line: 677, column: 4, scope: !1238, inlinedAt: !1200)
!1270 = !DILocation(line: 659, column: 41, scope: !1233, inlinedAt: !1200)
!1271 = distinct !{!1271, !1229, !1272, !356, !357}
!1272 = !DILocation(line: 679, column: 2, scope: !1228, inlinedAt: !1200)
!1273 = !DILocation(line: 268, column: 14, scope: !1274, inlinedAt: !556)
!1274 = distinct !DILexicalBlock(scope: !1137, file: !28, line: 267, column: 8)
!1275 = !DILocation(line: 268, column: 5, scope: !1274, inlinedAt: !556)
!1276 = distinct !{!1276, !1134, !1277, !356, !357}
!1277 = !DILocation(line: 270, column: 3, scope: !1125, inlinedAt: !556)
!1278 = !DILocation(line: 272, column: 3, scope: !1122, inlinedAt: !556)
!1279 = !DILocation(line: 274, column: 1, scope: !548, inlinedAt: !556)
!1280 = !DILocalVariable(name: "mol", arg: 1, scope: !1281, file: !28, line: 449, type: !67)
!1281 = distinct !DISubprogram(name: "or_select", scope: !28, file: !28, line: 449, type: !402, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1282)
!1282 = !{!1280, !1283, !1284, !1285, !1286, !1287}
!1283 = !DILocalVariable(name: "a", scope: !1281, file: !28, line: 451, type: !23)
!1284 = !DILocalVariable(name: "r", scope: !1281, file: !28, line: 451, type: !23)
!1285 = !DILocalVariable(name: "sp", scope: !1281, file: !28, line: 452, type: !82)
!1286 = !DILocalVariable(name: "res", scope: !1281, file: !28, line: 453, type: !99)
!1287 = !DILocalVariable(name: "ap", scope: !1281, file: !28, line: 454, type: !145)
!1288 = !DILocation(line: 0, scope: !1281, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 124, column: 3, scope: !525)
!1290 = !DILocation(line: 0, scope: !1291, inlinedAt: !1289)
!1291 = distinct !DILexicalBlock(scope: !1281, file: !28, line: 456, column: 2)
!1292 = !DILocation(line: 456, column: 2, scope: !1291, inlinedAt: !1289)
!1293 = !DILocation(line: 457, column: 23, scope: !1294, inlinedAt: !1289)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !28, line: 456, column: 49)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !28, line: 456, column: 2)
!1296 = !DILocation(line: 457, column: 17, scope: !1294, inlinedAt: !1289)
!1297 = !DILocation(line: 457, column: 14, scope: !1294, inlinedAt: !1289)
!1298 = !DILocation(line: 458, column: 17, scope: !1299, inlinedAt: !1289)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !28, line: 458, column: 3)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !28, line: 458, column: 3)
!1301 = !DILocation(line: 458, column: 3, scope: !1300, inlinedAt: !1289)
!1302 = !DILocation(line: 459, column: 10, scope: !1303, inlinedAt: !1289)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !28, line: 458, column: 41)
!1304 = !DILocation(line: 460, column: 26, scope: !1303, inlinedAt: !1289)
!1305 = !DILocation(line: 460, column: 19, scope: !1303, inlinedAt: !1289)
!1306 = !DILocation(line: 460, column: 16, scope: !1303, inlinedAt: !1289)
!1307 = !DILocation(line: 462, column: 18, scope: !1308, inlinedAt: !1289)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !28, line: 462, column: 4)
!1309 = distinct !DILexicalBlock(scope: !1303, file: !28, line: 462, column: 4)
!1310 = !DILocation(line: 462, column: 4, scope: !1309, inlinedAt: !1289)
!1311 = !DILocation(line: 464, column: 25, scope: !1312, inlinedAt: !1289)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !28, line: 462, column: 40)
!1313 = !DILocation(line: 464, column: 19, scope: !1312, inlinedAt: !1289)
!1314 = !DILocation(line: 464, column: 16, scope: !1312, inlinedAt: !1289)
!1315 = !DILocation(line: 462, column: 36, scope: !1308, inlinedAt: !1289)
!1316 = distinct !{!1316, !1310, !1317, !356, !357}
!1317 = !DILocation(line: 466, column: 4, scope: !1309, inlinedAt: !1289)
!1318 = !DILocation(line: 458, column: 37, scope: !1299, inlinedAt: !1289)
!1319 = distinct !{!1319, !1301, !1320, !356, !357}
!1320 = !DILocation(line: 467, column: 3, scope: !1300, inlinedAt: !1289)
!1321 = !DILocation(line: 456, column: 41, scope: !1295, inlinedAt: !1289)
!1322 = distinct !{!1322, !1292, !1323, !356, !357}
!1323 = !DILocation(line: 468, column: 2, scope: !1291, inlinedAt: !1289)
!1324 = !DILocation(line: 126, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !525, file: !28, line: 126, column: 7)
!1326 = !DILocation(line: 126, column: 7, scope: !525)
!1327 = !DILocation(line: 127, column: 12, scope: !1325)
!1328 = !DILocation(line: 127, column: 4, scope: !1325)
!1329 = !DILocation(line: 0, scope: !525)
!1330 = !DILocation(line: 0, scope: !485, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 128, column: 3, scope: !525)
!1332 = !DILocation(line: 421, column: 2, scope: !484, inlinedAt: !1331)
!1333 = !DILocation(line: 422, column: 7, scope: !482, inlinedAt: !1331)
!1334 = !DILocation(line: 422, column: 14, scope: !482, inlinedAt: !1331)
!1335 = !DILocation(line: 423, column: 17, scope: !496, inlinedAt: !1331)
!1336 = !DILocation(line: 423, column: 3, scope: !497, inlinedAt: !1331)
!1337 = !DILocation(line: 424, column: 10, scope: !500, inlinedAt: !1331)
!1338 = !DILocation(line: 425, column: 9, scope: !500, inlinedAt: !1331)
!1339 = !DILocation(line: 425, column: 16, scope: !500, inlinedAt: !1331)
!1340 = !DILocation(line: 426, column: 18, scope: !504, inlinedAt: !1331)
!1341 = !DILocation(line: 426, column: 4, scope: !505, inlinedAt: !1331)
!1342 = !DILocation(line: 427, column: 23, scope: !504, inlinedAt: !1331)
!1343 = !DILocation(line: 427, column: 30, scope: !504, inlinedAt: !1331)
!1344 = !DILocation(line: 426, column: 36, scope: !504, inlinedAt: !1331)
!1345 = distinct !{!1345, !1341, !1346, !356, !357}
!1346 = !DILocation(line: 427, column: 34, scope: !505, inlinedAt: !1331)
!1347 = !DILocation(line: 423, column: 37, scope: !496, inlinedAt: !1331)
!1348 = distinct !{!1348, !1336, !1349, !356, !357}
!1349 = !DILocation(line: 428, column: 3, scope: !497, inlinedAt: !1331)
!1350 = !DILocation(line: 421, column: 41, scope: !483, inlinedAt: !1331)
!1351 = !DILocation(line: 0, scope: !484, inlinedAt: !1331)
!1352 = distinct !{!1352, !1332, !1353, !356, !357}
!1353 = !DILocation(line: 429, column: 2, scope: !484, inlinedAt: !1331)
!1354 = distinct !{!1354, !522, !1355, !356, !357}
!1355 = !DILocation(line: 129, column: 2, scope: !521)
!1356 = !DILocation(line: 479, column: 23, scope: !1357, inlinedAt: !1368)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !28, line: 478, column: 49)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !28, line: 478, column: 2)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !28, line: 478, column: 2)
!1360 = distinct !DISubprogram(name: "set_select", scope: !28, file: !28, line: 471, type: !402, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367}
!1362 = !DILocalVariable(name: "mol", arg: 1, scope: !1360, file: !28, line: 471, type: !67)
!1363 = !DILocalVariable(name: "a", scope: !1360, file: !28, line: 473, type: !23)
!1364 = !DILocalVariable(name: "r", scope: !1360, file: !28, line: 473, type: !23)
!1365 = !DILocalVariable(name: "sp", scope: !1360, file: !28, line: 474, type: !82)
!1366 = !DILocalVariable(name: "res", scope: !1360, file: !28, line: 475, type: !99)
!1367 = !DILocalVariable(name: "ap", scope: !1360, file: !28, line: 476, type: !145)
!1368 = distinct !DILocation(line: 130, column: 2, scope: !387)
!1369 = !DILocation(line: 479, column: 17, scope: !1357, inlinedAt: !1368)
!1370 = !DILocation(line: 479, column: 14, scope: !1357, inlinedAt: !1368)
!1371 = !DILocation(line: 0, scope: !1360, inlinedAt: !1368)
!1372 = !DILocation(line: 480, column: 17, scope: !1373, inlinedAt: !1368)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !28, line: 480, column: 3)
!1374 = distinct !DILexicalBlock(scope: !1357, file: !28, line: 480, column: 3)
!1375 = !DILocation(line: 480, column: 3, scope: !1374, inlinedAt: !1368)
!1376 = !DILocation(line: 481, column: 10, scope: !1377, inlinedAt: !1368)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !28, line: 480, column: 41)
!1378 = !DILocation(line: 482, column: 26, scope: !1377, inlinedAt: !1368)
!1379 = !DILocation(line: 482, column: 19, scope: !1377, inlinedAt: !1368)
!1380 = !DILocation(line: 482, column: 16, scope: !1377, inlinedAt: !1368)
!1381 = !DILocation(line: 484, column: 18, scope: !1382, inlinedAt: !1368)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !28, line: 484, column: 4)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !28, line: 484, column: 4)
!1384 = !DILocation(line: 484, column: 4, scope: !1383, inlinedAt: !1368)
!1385 = !DILocation(line: 486, column: 25, scope: !1386, inlinedAt: !1368)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !28, line: 484, column: 40)
!1387 = !DILocation(line: 486, column: 19, scope: !1386, inlinedAt: !1368)
!1388 = !DILocation(line: 486, column: 16, scope: !1386, inlinedAt: !1368)
!1389 = !DILocation(line: 484, column: 36, scope: !1382, inlinedAt: !1368)
!1390 = distinct !{!1390, !1384, !1391, !356, !357}
!1391 = !DILocation(line: 488, column: 4, scope: !1383, inlinedAt: !1368)
!1392 = !DILocation(line: 480, column: 37, scope: !1373, inlinedAt: !1368)
!1393 = distinct !{!1393, !1375, !1394, !356, !357}
!1394 = !DILocation(line: 489, column: 3, scope: !1374, inlinedAt: !1368)
!1395 = !DILocation(line: 478, column: 41, scope: !1358, inlinedAt: !1368)
!1396 = !DILocation(line: 0, scope: !1359, inlinedAt: !1368)
!1397 = !DILocation(line: 478, column: 2, scope: !1359, inlinedAt: !1368)
!1398 = distinct !{!1398, !1397, !1399, !356, !357}
!1399 = !DILocation(line: 490, column: 2, scope: !1359, inlinedAt: !1368)
!1400 = !DILocation(line: 133, column: 1, scope: !387)
!1401 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !28, file: !28, line: 135, type: !1402, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!23, !145, !29}
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DILocalVariable(name: "ap", arg: 1, scope: !1401, file: !28, line: 135, type: !145)
!1406 = !DILocalVariable(name: "aex", arg: 2, scope: !1401, file: !28, line: 135, type: !29)
!1407 = !DILocalVariable(name: "aep", scope: !1401, file: !28, line: 137, type: !29)
!1408 = !DILocalVariable(name: "n_aep", scope: !1401, file: !28, line: 137, type: !29)
!1409 = !DILocalVariable(name: "ael", scope: !1401, file: !28, line: 138, type: !23)
!1410 = !DILocation(line: 0, scope: !1401)
!1411 = !DILocation(line: 140, column: 10, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1401, file: !28, line: 140, column: 6)
!1413 = !DILocation(line: 140, column: 6, scope: !1401)
!1414 = !DILocation(line: 143, column: 26, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1401, file: !28, line: 143, column: 2)
!1416 = !DILocation(line: 143, column: 2, scope: !1415)
!1417 = !DILocation(line: 144, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !28, line: 144, column: 7)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !28, line: 143, column: 52)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !28, line: 143, column: 2)
!1421 = !DILocation(line: 144, column: 7, scope: !1419)
!1422 = !DILocation(line: 145, column: 16, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !28, line: 144, column: 14)
!1424 = !DILocation(line: 146, column: 9, scope: !1423)
!1425 = !DILocation(line: 147, column: 3, scope: !1423)
!1426 = !DILocation(line: 148, column: 10, scope: !1418)
!1427 = !DILocation(line: 0, scope: !1415)
!1428 = !DILocation(line: 0, scope: !1418)
!1429 = !DILocation(line: 149, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1419, file: !28, line: 149, column: 7)
!1431 = !DILocation(line: 149, column: 7, scope: !1419)
!1432 = !DILocation(line: 150, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !28, line: 149, column: 26)
!1434 = !DILocation(line: 150, column: 4, scope: !1433)
!1435 = !DILocation(line: 152, column: 4, scope: !1433)
!1436 = !DILocation(line: 154, column: 24, scope: !1419)
!1437 = !DILocation(line: 154, column: 3, scope: !1419)
!1438 = !DILocation(line: 155, column: 3, scope: !1419)
!1439 = !DILocation(line: 155, column: 16, scope: !1419)
!1440 = !DILocalVariable(name: "ap", arg: 1, scope: !1441, file: !28, line: 276, type: !145)
!1441 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !28, file: !28, line: 276, type: !1402, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1442)
!1442 = !{!1440, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1443 = !DILocalVariable(name: "aex", arg: 2, scope: !1441, file: !28, line: 276, type: !29)
!1444 = !DILocalVariable(name: "aep", scope: !1441, file: !28, line: 278, type: !29)
!1445 = !DILocalVariable(name: "wp", scope: !1441, file: !28, line: 279, type: !29)
!1446 = !DILocalVariable(name: "lo", scope: !1441, file: !28, line: 280, type: !23)
!1447 = !DILocalVariable(name: "hi", scope: !1441, file: !28, line: 280, type: !23)
!1448 = !DILabel(scope: !1441, name: "RPART", file: !28, line: 316)
!1449 = !DILabel(scope: !1441, name: "APART", file: !28, line: 333)
!1450 = !DILocation(line: 0, scope: !1441, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 156, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1419, file: !28, line: 156, column: 7)
!1453 = !DILocation(line: 280, column: 2, scope: !1441, inlinedAt: !1451)
!1454 = !DILocation(line: 283, column: 6, scope: !1455, inlinedAt: !1451)
!1455 = distinct !DILexicalBlock(scope: !1441, file: !28, line: 283, column: 6)
!1456 = !DILocation(line: 283, column: 11, scope: !1455, inlinedAt: !1451)
!1457 = !DILocation(line: 283, column: 6, scope: !1441, inlinedAt: !1451)
!1458 = !DILocation(line: 284, column: 9, scope: !1459, inlinedAt: !1451)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !28, line: 283, column: 19)
!1460 = !DILocation(line: 286, column: 2, scope: !1459, inlinedAt: !1451)
!1461 = !DILocation(line: 287, column: 11, scope: !1462, inlinedAt: !1451)
!1462 = distinct !DILexicalBlock(scope: !1455, file: !28, line: 286, column: 7)
!1463 = !DILocation(line: 287, column: 9, scope: !1462, inlinedAt: !1451)
!1464 = !DILocation(line: 288, column: 10, scope: !1462, inlinedAt: !1451)
!1465 = !DILocation(line: 288, column: 26, scope: !1462, inlinedAt: !1451)
!1466 = !DILocation(line: 288, column: 7, scope: !1462, inlinedAt: !1451)
!1467 = !DILocation(line: 0, scope: !1455, inlinedAt: !1451)
!1468 = !DILocation(line: 290, column: 6, scope: !1469, inlinedAt: !1451)
!1469 = distinct !DILexicalBlock(scope: !1441, file: !28, line: 290, column: 6)
!1470 = !DILocation(line: 290, column: 11, scope: !1469, inlinedAt: !1451)
!1471 = !DILocation(line: 290, column: 6, scope: !1441, inlinedAt: !1451)
!1472 = !DILocation(line: 291, column: 9, scope: !1473, inlinedAt: !1451)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !28, line: 290, column: 19)
!1474 = !DILocation(line: 293, column: 2, scope: !1473, inlinedAt: !1451)
!1475 = !DILocation(line: 294, column: 11, scope: !1476, inlinedAt: !1451)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !28, line: 293, column: 7)
!1477 = !DILocation(line: 294, column: 9, scope: !1476, inlinedAt: !1451)
!1478 = !DILocation(line: 295, column: 10, scope: !1476, inlinedAt: !1451)
!1479 = !DILocation(line: 295, column: 26, scope: !1476, inlinedAt: !1451)
!1480 = !DILocation(line: 0, scope: !1469, inlinedAt: !1451)
!1481 = !DILocation(line: 297, column: 10, scope: !1441, inlinedAt: !1451)
!1482 = !DILocation(line: 297, column: 8, scope: !1441, inlinedAt: !1451)
!1483 = !DILocation(line: 299, column: 6, scope: !1484, inlinedAt: !1451)
!1484 = distinct !DILexicalBlock(scope: !1441, file: !28, line: 299, column: 6)
!1485 = !DILocation(line: 299, column: 6, scope: !1441, inlinedAt: !1451)
!1486 = !DILocation(line: 300, column: 8, scope: !1487, inlinedAt: !1451)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !28, line: 299, column: 13)
!1488 = !DILocation(line: 301, column: 7, scope: !1489, inlinedAt: !1451)
!1489 = distinct !DILexicalBlock(scope: !1487, file: !28, line: 301, column: 7)
!1490 = !DILocation(line: 301, column: 7, scope: !1487, inlinedAt: !1451)
!1491 = !DILocation(line: 302, column: 8, scope: !1492, inlinedAt: !1451)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !28, line: 302, column: 8)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !28, line: 301, column: 35)
!1494 = !{!338, !299, i64 56}
!1495 = !{!324, !299, i64 56}
!1496 = !DILocalVariable(name: "ap", arg: 1, scope: !1497, file: !28, line: 512, type: !145)
!1497 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !28, file: !28, line: 512, type: !1402, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1498 = !{!1496, !1499, !1500, !1501}
!1499 = !DILocalVariable(name: "pat", arg: 2, scope: !1497, file: !28, line: 512, type: !29)
!1500 = !DILocalVariable(name: "res", scope: !1497, file: !28, line: 514, type: !99)
!1501 = !DILocalVariable(name: "sp", scope: !1497, file: !28, line: 515, type: !82)
!1502 = !DILocation(line: 0, scope: !1497, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 302, column: 8, scope: !1492, inlinedAt: !1451)
!1504 = !DILocation(line: 0, scope: !605, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 519, column: 2, scope: !1497, inlinedAt: !1503)
!1506 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1505)
!1507 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1505)
!1508 = !DILocation(line: 0, scope: !616, inlinedAt: !1505)
!1509 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1505)
!1510 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1505)
!1511 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1505)
!1512 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1505)
!1513 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1505)
!1514 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1505)
!1515 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1505)
!1516 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1505)
!1517 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1505)
!1518 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1505)
!1519 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1505)
!1520 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1505)
!1521 = !DILocation(line: 0, scope: !623, inlinedAt: !1505)
!1522 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1505)
!1523 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1505)
!1524 = distinct !{!1524, !1510, !1525, !356, !357}
!1525 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1505)
!1526 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1505)
!1527 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1505)
!1528 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1505)
!1529 = !DILocation(line: 521, column: 2, scope: !1497, inlinedAt: !1503)
!1530 = !DILocation(line: 522, column: 32, scope: !1497, inlinedAt: !1503)
!1531 = !DILocation(line: 522, column: 10, scope: !1497, inlinedAt: !1503)
!1532 = !DILocation(line: 522, column: 59, scope: !1497, inlinedAt: !1503)
!1533 = !DILocation(line: 302, column: 8, scope: !1493, inlinedAt: !1451)
!1534 = !DILocation(line: 304, column: 36, scope: !1535, inlinedAt: !1451)
!1535 = distinct !DILexicalBlock(scope: !1489, file: !28, line: 304, column: 13)
!1536 = !DILocation(line: 304, column: 40, scope: !1535, inlinedAt: !1451)
!1537 = !DILocation(line: 304, column: 13, scope: !1535, inlinedAt: !1451)
!1538 = !DILocalVariable(name: "ap", arg: 1, scope: !1539, file: !28, line: 543, type: !145)
!1539 = distinct !DISubprogram(name: "atom_in_str_range", scope: !28, file: !28, line: 543, type: !1540, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!23, !145, !23, !23}
!1542 = !{!1538, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1543 = !DILocalVariable(name: "lo", arg: 2, scope: !1539, file: !28, line: 543, type: !23)
!1544 = !DILocalVariable(name: "hi", arg: 3, scope: !1539, file: !28, line: 543, type: !23)
!1545 = !DILocalVariable(name: "m", scope: !1539, file: !28, line: 545, type: !23)
!1546 = !DILocalVariable(name: "res", scope: !1539, file: !28, line: 546, type: !99)
!1547 = !DILocalVariable(name: "sp", scope: !1539, file: !28, line: 547, type: !82)
!1548 = !DILocalVariable(name: "sp1", scope: !1539, file: !28, line: 547, type: !82)
!1549 = !DILocalVariable(name: "mol", scope: !1539, file: !28, line: 548, type: !67)
!1550 = !DILocation(line: 0, scope: !1539, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 304, column: 13, scope: !1535, inlinedAt: !1451)
!1552 = !DILocation(line: 552, column: 12, scope: !1539, inlinedAt: !1551)
!1553 = !{!308, !299, i64 16}
!1554 = !DILocation(line: 553, column: 9, scope: !1555, inlinedAt: !1551)
!1555 = distinct !DILexicalBlock(scope: !1539, file: !28, line: 553, column: 6)
!1556 = !DILocation(line: 555, column: 38, scope: !1557, inlinedAt: !1551)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !28, line: 555, column: 2)
!1558 = distinct !DILexicalBlock(scope: !1539, file: !28, line: 555, column: 2)
!1559 = !DILocation(line: 555, column: 2, scope: !1558, inlinedAt: !1551)
!1560 = !DILocation(line: 555, column: 25, scope: !1558, inlinedAt: !1551)
!1561 = !DILocation(line: 0, scope: !1558, inlinedAt: !1551)
!1562 = !DILocation(line: 557, column: 10, scope: !1563, inlinedAt: !1551)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !28, line: 557, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1557, file: !28, line: 556, column: 27)
!1565 = !DILocation(line: 557, column: 7, scope: !1564, inlinedAt: !1551)
!1566 = !DILocation(line: 556, column: 4, scope: !1557, inlinedAt: !1551)
!1567 = !DILocation(line: 556, column: 19, scope: !1557, inlinedAt: !1551)
!1568 = distinct !{!1568, !1559, !1569, !356, !357}
!1569 = !DILocation(line: 561, column: 2, scope: !1558, inlinedAt: !1551)
!1570 = !DILocation(line: 306, column: 16, scope: !1487, inlinedAt: !1451)
!1571 = !DILocation(line: 306, column: 3, scope: !1487, inlinedAt: !1451)
!1572 = !DILocation(line: 307, column: 8, scope: !1573, inlinedAt: !1451)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !28, line: 307, column: 8)
!1574 = distinct !DILexicalBlock(scope: !1487, file: !28, line: 306, column: 38)
!1575 = !DILocation(line: 307, column: 8, scope: !1574, inlinedAt: !1451)
!1576 = !DILocation(line: 308, column: 9, scope: !1577, inlinedAt: !1451)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !28, line: 308, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !28, line: 307, column: 36)
!1579 = !DILocation(line: 0, scope: !1497, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 308, column: 9, scope: !1577, inlinedAt: !1451)
!1581 = !DILocation(line: 0, scope: !605, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 519, column: 2, scope: !1497, inlinedAt: !1580)
!1583 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1582)
!1584 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1582)
!1585 = !DILocation(line: 0, scope: !616, inlinedAt: !1582)
!1586 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1582)
!1587 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1582)
!1588 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1582)
!1589 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1582)
!1590 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1582)
!1591 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1582)
!1592 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1582)
!1593 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1582)
!1594 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1582)
!1595 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1582)
!1596 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1582)
!1597 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1582)
!1598 = !DILocation(line: 0, scope: !623, inlinedAt: !1582)
!1599 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1582)
!1600 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1582)
!1601 = distinct !{!1601, !1587, !1602, !356, !357}
!1602 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1582)
!1603 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1582)
!1604 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1582)
!1605 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1582)
!1606 = !DILocation(line: 521, column: 2, scope: !1497, inlinedAt: !1580)
!1607 = !DILocation(line: 522, column: 32, scope: !1497, inlinedAt: !1580)
!1608 = !DILocation(line: 522, column: 10, scope: !1497, inlinedAt: !1580)
!1609 = !DILocation(line: 522, column: 59, scope: !1497, inlinedAt: !1580)
!1610 = !DILocation(line: 308, column: 9, scope: !1578, inlinedAt: !1451)
!1611 = !DILocation(line: 310, column: 37, scope: !1612, inlinedAt: !1451)
!1612 = distinct !DILexicalBlock(scope: !1573, file: !28, line: 310, column: 14)
!1613 = !DILocation(line: 310, column: 41, scope: !1612, inlinedAt: !1451)
!1614 = !DILocation(line: 310, column: 14, scope: !1612, inlinedAt: !1451)
!1615 = !DILocation(line: 0, scope: !1539, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 310, column: 14, scope: !1612, inlinedAt: !1451)
!1617 = !DILocation(line: 552, column: 12, scope: !1539, inlinedAt: !1616)
!1618 = !DILocation(line: 553, column: 9, scope: !1555, inlinedAt: !1616)
!1619 = !DILocation(line: 555, column: 38, scope: !1557, inlinedAt: !1616)
!1620 = !DILocation(line: 555, column: 2, scope: !1558, inlinedAt: !1616)
!1621 = !DILocation(line: 555, column: 25, scope: !1558, inlinedAt: !1616)
!1622 = !DILocation(line: 0, scope: !1558, inlinedAt: !1616)
!1623 = !DILocation(line: 557, column: 10, scope: !1563, inlinedAt: !1616)
!1624 = !DILocation(line: 557, column: 7, scope: !1564, inlinedAt: !1616)
!1625 = !DILocation(line: 556, column: 4, scope: !1557, inlinedAt: !1616)
!1626 = !DILocation(line: 556, column: 19, scope: !1557, inlinedAt: !1616)
!1627 = distinct !{!1627, !1620, !1628, !356, !357}
!1628 = !DILocation(line: 561, column: 2, scope: !1558, inlinedAt: !1616)
!1629 = distinct !{!1629, !1571, !1630, !356, !357}
!1630 = !DILocation(line: 312, column: 3, scope: !1487, inlinedAt: !1451)
!1631 = !DILocation(line: 316, column: 1, scope: !1441, inlinedAt: !1451)
!1632 = !DILocation(line: 316, column: 13, scope: !1633, inlinedAt: !1451)
!1633 = distinct !DILexicalBlock(scope: !1441, file: !28, line: 316, column: 13)
!1634 = !DILocation(line: 316, column: 13, scope: !1441, inlinedAt: !1451)
!1635 = !DILocation(line: 317, column: 8, scope: !1636, inlinedAt: !1451)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !28, line: 316, column: 20)
!1637 = !DILocation(line: 318, column: 7, scope: !1638, inlinedAt: !1451)
!1638 = distinct !DILexicalBlock(scope: !1636, file: !28, line: 318, column: 7)
!1639 = !DILocation(line: 318, column: 7, scope: !1636, inlinedAt: !1451)
!1640 = !DILocation(line: 319, column: 8, scope: !1641, inlinedAt: !1451)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !28, line: 319, column: 8)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !28, line: 318, column: 35)
!1643 = !DILocalVariable(name: "ap", arg: 1, scope: !1644, file: !28, line: 593, type: !145)
!1644 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !28, file: !28, line: 593, type: !1402, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1645)
!1645 = !{!1643, !1646, !1647}
!1646 = !DILocalVariable(name: "pat", arg: 2, scope: !1644, file: !28, line: 593, type: !29)
!1647 = !DILocalVariable(name: "res", scope: !1644, file: !28, line: 595, type: !99)
!1648 = !DILocation(line: 0, scope: !1644, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 319, column: 8, scope: !1641, inlinedAt: !1451)
!1650 = !DILocation(line: 0, scope: !605, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 598, column: 2, scope: !1644, inlinedAt: !1649)
!1652 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1651)
!1653 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1651)
!1654 = !DILocation(line: 0, scope: !616, inlinedAt: !1651)
!1655 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1651)
!1656 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1651)
!1657 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1651)
!1658 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1651)
!1659 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1651)
!1660 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1651)
!1661 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1651)
!1662 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1651)
!1663 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1651)
!1664 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1651)
!1665 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1651)
!1666 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1651)
!1667 = !DILocation(line: 0, scope: !623, inlinedAt: !1651)
!1668 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1651)
!1669 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1651)
!1670 = distinct !{!1670, !1656, !1671, !356, !357}
!1671 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1651)
!1672 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1651)
!1673 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1651)
!1674 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1651)
!1675 = !DILocation(line: 600, column: 2, scope: !1644, inlinedAt: !1649)
!1676 = !DILocation(line: 601, column: 33, scope: !1644, inlinedAt: !1649)
!1677 = !DILocation(line: 601, column: 10, scope: !1644, inlinedAt: !1649)
!1678 = !DILocation(line: 601, column: 57, scope: !1644, inlinedAt: !1649)
!1679 = !DILocation(line: 319, column: 8, scope: !1642, inlinedAt: !1451)
!1680 = !DILocation(line: 321, column: 36, scope: !1681, inlinedAt: !1451)
!1681 = distinct !DILexicalBlock(scope: !1638, file: !28, line: 321, column: 13)
!1682 = !DILocation(line: 321, column: 40, scope: !1681, inlinedAt: !1451)
!1683 = !DILocation(line: 321, column: 13, scope: !1681, inlinedAt: !1451)
!1684 = !DILocalVariable(name: "ap", arg: 1, scope: !1685, file: !28, line: 626, type: !145)
!1685 = distinct !DISubprogram(name: "atom_in_res_range", scope: !28, file: !28, line: 626, type: !1540, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1686)
!1686 = !{!1684, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!1687 = !DILocalVariable(name: "lo", arg: 2, scope: !1685, file: !28, line: 626, type: !23)
!1688 = !DILocalVariable(name: "hi", arg: 3, scope: !1685, file: !28, line: 626, type: !23)
!1689 = !DILocalVariable(name: "r", scope: !1685, file: !28, line: 628, type: !23)
!1690 = !DILocalVariable(name: "rhi", scope: !1685, file: !28, line: 628, type: !23)
!1691 = !DILocalVariable(name: "sp", scope: !1685, file: !28, line: 629, type: !82)
!1692 = !DILocalVariable(name: "res", scope: !1685, file: !28, line: 630, type: !99)
!1693 = !DILocalVariable(name: "res1", scope: !1685, file: !28, line: 630, type: !99)
!1694 = !DILocation(line: 0, scope: !1685, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 321, column: 13, scope: !1681, inlinedAt: !1451)
!1696 = !DILocation(line: 633, column: 12, scope: !1685, inlinedAt: !1695)
!1697 = !DILocation(line: 635, column: 13, scope: !1685, inlinedAt: !1695)
!1698 = !DILocation(line: 635, column: 8, scope: !1685, inlinedAt: !1695)
!1699 = !DILocation(line: 636, column: 7, scope: !1700, inlinedAt: !1695)
!1700 = distinct !DILexicalBlock(scope: !1685, file: !28, line: 636, column: 2)
!1701 = !DILocation(line: 636, column: 16, scope: !1702, inlinedAt: !1695)
!1702 = distinct !DILexicalBlock(scope: !1700, file: !28, line: 636, column: 2)
!1703 = !DILocation(line: 0, scope: !1700, inlinedAt: !1695)
!1704 = !DILocation(line: 636, column: 2, scope: !1700, inlinedAt: !1695)
!1705 = !DILocation(line: 637, column: 14, scope: !1706, inlinedAt: !1695)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !28, line: 636, column: 40)
!1707 = !DILocation(line: 637, column: 10, scope: !1706, inlinedAt: !1695)
!1708 = !DILocation(line: 638, column: 11, scope: !1709, inlinedAt: !1695)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !28, line: 638, column: 7)
!1710 = !DILocation(line: 638, column: 7, scope: !1706, inlinedAt: !1695)
!1711 = distinct !{!1711, !1704, !1712, !356, !357}
!1712 = !DILocation(line: 642, column: 2, scope: !1700, inlinedAt: !1695)
!1713 = !DILocation(line: 323, column: 16, scope: !1636, inlinedAt: !1451)
!1714 = !DILocation(line: 323, column: 3, scope: !1636, inlinedAt: !1451)
!1715 = !DILocation(line: 324, column: 8, scope: !1716, inlinedAt: !1451)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !28, line: 324, column: 8)
!1717 = distinct !DILexicalBlock(scope: !1636, file: !28, line: 323, column: 38)
!1718 = !DILocation(line: 324, column: 8, scope: !1717, inlinedAt: !1451)
!1719 = !DILocation(line: 325, column: 9, scope: !1720, inlinedAt: !1451)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !28, line: 325, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !28, line: 324, column: 36)
!1722 = !DILocation(line: 0, scope: !1644, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 325, column: 9, scope: !1720, inlinedAt: !1451)
!1724 = !DILocation(line: 0, scope: !605, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 598, column: 2, scope: !1644, inlinedAt: !1723)
!1726 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1725)
!1727 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1725)
!1728 = !DILocation(line: 0, scope: !616, inlinedAt: !1725)
!1729 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1725)
!1730 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1725)
!1731 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1725)
!1732 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1725)
!1733 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1725)
!1734 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1725)
!1735 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1725)
!1736 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1725)
!1737 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1725)
!1738 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1725)
!1739 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1725)
!1740 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1725)
!1741 = !DILocation(line: 0, scope: !623, inlinedAt: !1725)
!1742 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1725)
!1743 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1725)
!1744 = distinct !{!1744, !1730, !1745, !356, !357}
!1745 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1725)
!1746 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1725)
!1747 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1725)
!1748 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1725)
!1749 = !DILocation(line: 600, column: 2, scope: !1644, inlinedAt: !1723)
!1750 = !DILocation(line: 601, column: 33, scope: !1644, inlinedAt: !1723)
!1751 = !DILocation(line: 601, column: 10, scope: !1644, inlinedAt: !1723)
!1752 = !DILocation(line: 601, column: 57, scope: !1644, inlinedAt: !1723)
!1753 = !DILocation(line: 325, column: 9, scope: !1721, inlinedAt: !1451)
!1754 = !DILocation(line: 327, column: 37, scope: !1755, inlinedAt: !1451)
!1755 = distinct !DILexicalBlock(scope: !1716, file: !28, line: 327, column: 14)
!1756 = !DILocation(line: 327, column: 41, scope: !1755, inlinedAt: !1451)
!1757 = !DILocation(line: 327, column: 14, scope: !1755, inlinedAt: !1451)
!1758 = !DILocation(line: 0, scope: !1685, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 327, column: 14, scope: !1755, inlinedAt: !1451)
!1760 = !DILocation(line: 633, column: 12, scope: !1685, inlinedAt: !1759)
!1761 = !DILocation(line: 635, column: 13, scope: !1685, inlinedAt: !1759)
!1762 = !DILocation(line: 635, column: 8, scope: !1685, inlinedAt: !1759)
!1763 = !DILocation(line: 636, column: 7, scope: !1700, inlinedAt: !1759)
!1764 = !DILocation(line: 636, column: 16, scope: !1702, inlinedAt: !1759)
!1765 = !DILocation(line: 0, scope: !1700, inlinedAt: !1759)
!1766 = !DILocation(line: 636, column: 2, scope: !1700, inlinedAt: !1759)
!1767 = !DILocation(line: 637, column: 14, scope: !1706, inlinedAt: !1759)
!1768 = !DILocation(line: 637, column: 10, scope: !1706, inlinedAt: !1759)
!1769 = !DILocation(line: 638, column: 11, scope: !1709, inlinedAt: !1759)
!1770 = !DILocation(line: 638, column: 7, scope: !1706, inlinedAt: !1759)
!1771 = distinct !{!1771, !1766, !1772, !356, !357}
!1772 = !DILocation(line: 642, column: 2, scope: !1700, inlinedAt: !1759)
!1773 = distinct !{!1773, !1714, !1774, !356, !357}
!1774 = !DILocation(line: 329, column: 3, scope: !1636, inlinedAt: !1451)
!1775 = !DILocation(line: 333, column: 1, scope: !1441, inlinedAt: !1451)
!1776 = !DILocation(line: 333, column: 13, scope: !1777, inlinedAt: !1451)
!1777 = distinct !DILexicalBlock(scope: !1441, file: !28, line: 333, column: 13)
!1778 = !DILocation(line: 333, column: 13, scope: !1441, inlinedAt: !1451)
!1779 = !DILocation(line: 334, column: 8, scope: !1780, inlinedAt: !1451)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !28, line: 333, column: 20)
!1781 = !DILocation(line: 335, column: 7, scope: !1782, inlinedAt: !1451)
!1782 = distinct !DILexicalBlock(scope: !1780, file: !28, line: 335, column: 7)
!1783 = !DILocation(line: 335, column: 7, scope: !1780, inlinedAt: !1451)
!1784 = !DILocalVariable(name: "ap", arg: 1, scope: !1785, file: !28, line: 682, type: !145)
!1785 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !28, file: !28, line: 682, type: !1402, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1786 = !{!1784, !1787}
!1787 = !DILocalVariable(name: "pat", arg: 2, scope: !1785, file: !28, line: 682, type: !29)
!1788 = !DILocation(line: 0, scope: !1785, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 336, column: 8, scope: !1790, inlinedAt: !1451)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !28, line: 336, column: 8)
!1791 = distinct !DILexicalBlock(scope: !1782, file: !28, line: 335, column: 35)
!1792 = !DILocation(line: 0, scope: !605, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 685, column: 2, scope: !1785, inlinedAt: !1789)
!1794 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1793)
!1795 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1793)
!1796 = !DILocation(line: 0, scope: !616, inlinedAt: !1793)
!1797 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1793)
!1798 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1793)
!1799 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1793)
!1800 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1793)
!1801 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1793)
!1802 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1793)
!1803 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1793)
!1804 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1793)
!1805 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1793)
!1806 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1793)
!1807 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1793)
!1808 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1793)
!1809 = !DILocation(line: 0, scope: !623, inlinedAt: !1793)
!1810 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1793)
!1811 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1793)
!1812 = distinct !{!1812, !1798, !1813, !356, !357}
!1813 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1793)
!1814 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1793)
!1815 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1793)
!1816 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1793)
!1817 = !DILocation(line: 687, column: 2, scope: !1785, inlinedAt: !1789)
!1818 = !DILocation(line: 688, column: 32, scope: !1785, inlinedAt: !1789)
!1819 = !DILocation(line: 688, column: 10, scope: !1785, inlinedAt: !1789)
!1820 = !DILocation(line: 688, column: 57, scope: !1785, inlinedAt: !1789)
!1821 = !DILocation(line: 336, column: 8, scope: !1791, inlinedAt: !1451)
!1822 = !DILocation(line: 342, column: 16, scope: !1780, inlinedAt: !1451)
!1823 = !DILocation(line: 342, column: 3, scope: !1780, inlinedAt: !1451)
!1824 = !DILocation(line: 343, column: 8, scope: !1825, inlinedAt: !1451)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !28, line: 343, column: 8)
!1826 = distinct !DILexicalBlock(scope: !1780, file: !28, line: 342, column: 38)
!1827 = !DILocation(line: 343, column: 8, scope: !1826, inlinedAt: !1451)
!1828 = !DILocation(line: 0, scope: !1785, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 344, column: 9, scope: !1830, inlinedAt: !1451)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !28, line: 344, column: 9)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !28, line: 343, column: 36)
!1832 = !DILocation(line: 0, scope: !605, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 685, column: 2, scope: !1785, inlinedAt: !1829)
!1834 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !1833)
!1835 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !1833)
!1836 = !DILocation(line: 0, scope: !616, inlinedAt: !1833)
!1837 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !1833)
!1838 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !1833)
!1839 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !1833)
!1840 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !1833)
!1841 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !1833)
!1842 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !1833)
!1843 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !1833)
!1844 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !1833)
!1845 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !1833)
!1846 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !1833)
!1847 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !1833)
!1848 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !1833)
!1849 = !DILocation(line: 0, scope: !623, inlinedAt: !1833)
!1850 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !1833)
!1851 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !1833)
!1852 = distinct !{!1852, !1838, !1853, !356, !357}
!1853 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !1833)
!1854 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !1833)
!1855 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !1833)
!1856 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !1833)
!1857 = !DILocation(line: 687, column: 2, scope: !1785, inlinedAt: !1829)
!1858 = !DILocation(line: 688, column: 32, scope: !1785, inlinedAt: !1829)
!1859 = !DILocation(line: 688, column: 10, scope: !1785, inlinedAt: !1829)
!1860 = !DILocation(line: 688, column: 57, scope: !1785, inlinedAt: !1829)
!1861 = !DILocation(line: 344, column: 9, scope: !1831, inlinedAt: !1451)
!1862 = distinct !{!1862, !1823, !1863, !356, !357}
!1863 = !DILocation(line: 350, column: 3, scope: !1780, inlinedAt: !1451)
!1864 = !DILocation(line: 0, scope: !1780, inlinedAt: !1451)
!1865 = !DILocation(line: 355, column: 1, scope: !1441, inlinedAt: !1451)
!1866 = !DILocation(line: 156, column: 7, scope: !1419)
!1867 = !DILocation(line: 159, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1419, file: !28, line: 159, column: 7)
!1869 = !DILocation(line: 159, column: 7, scope: !1419)
!1870 = !DILocation(line: 160, column: 12, scope: !1868)
!1871 = !DILocation(line: 163, column: 1, scope: !1401)
!1872 = distinct !DISubprogram(name: "set_attr_if", scope: !28, file: !28, line: 165, type: !663, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1874 = !DILocalVariable(name: "mol", arg: 1, scope: !1872, file: !28, line: 165, type: !67)
!1875 = !DILocalVariable(name: "attr", arg: 2, scope: !1872, file: !28, line: 165, type: !23)
!1876 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1872, file: !28, line: 165, type: !23)
!1877 = !DILocalVariable(name: "a", scope: !1872, file: !28, line: 167, type: !23)
!1878 = !DILocalVariable(name: "r", scope: !1872, file: !28, line: 167, type: !23)
!1879 = !DILocalVariable(name: "sp", scope: !1872, file: !28, line: 168, type: !82)
!1880 = !DILocalVariable(name: "res", scope: !1872, file: !28, line: 169, type: !99)
!1881 = !DILocalVariable(name: "ap", scope: !1872, file: !28, line: 170, type: !145)
!1882 = !DILocation(line: 0, scope: !1872)
!1883 = !DILocation(line: 172, column: 17, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1872, file: !28, line: 172, column: 2)
!1885 = !DILocation(line: 0, scope: !1884)
!1886 = !DILocation(line: 172, column: 2, scope: !1884)
!1887 = !DILocation(line: 173, column: 23, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !28, line: 172, column: 49)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !28, line: 172, column: 2)
!1890 = !DILocation(line: 173, column: 30, scope: !1888)
!1891 = !DILocation(line: 173, column: 17, scope: !1888)
!1892 = !DILocation(line: 173, column: 14, scope: !1888)
!1893 = !DILocation(line: 174, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !28, line: 174, column: 3)
!1895 = distinct !DILexicalBlock(scope: !1888, file: !28, line: 174, column: 3)
!1896 = !DILocation(line: 174, column: 3, scope: !1895)
!1897 = !DILocation(line: 175, column: 10, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !28, line: 174, column: 41)
!1899 = !DILocation(line: 176, column: 26, scope: !1898)
!1900 = !DILocation(line: 176, column: 33, scope: !1898)
!1901 = !DILocation(line: 176, column: 19, scope: !1898)
!1902 = !DILocation(line: 176, column: 16, scope: !1898)
!1903 = !DILocation(line: 178, column: 18, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !28, line: 178, column: 4)
!1905 = distinct !DILexicalBlock(scope: !1898, file: !28, line: 178, column: 4)
!1906 = !DILocation(line: 178, column: 4, scope: !1905)
!1907 = !DILocation(line: 180, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !28, line: 178, column: 40)
!1909 = !DILocation(line: 180, column: 32, scope: !1908)
!1910 = !DILocation(line: 180, column: 19, scope: !1908)
!1911 = !DILocation(line: 180, column: 16, scope: !1908)
!1912 = !DILocation(line: 178, column: 36, scope: !1904)
!1913 = distinct !{!1913, !1906, !1914, !356, !357}
!1914 = !DILocation(line: 182, column: 4, scope: !1905)
!1915 = !DILocation(line: 174, column: 37, scope: !1894)
!1916 = distinct !{!1916, !1896, !1917, !356, !357}
!1917 = !DILocation(line: 183, column: 3, scope: !1895)
!1918 = !DILocation(line: 172, column: 41, scope: !1889)
!1919 = distinct !{!1919, !1886, !1920, !356, !357}
!1920 = !DILocation(line: 184, column: 2, scope: !1884)
!1921 = !DILocation(line: 185, column: 1, scope: !1872)
!1922 = distinct !DISubprogram(name: "clear_attr", scope: !28, file: !28, line: 187, type: !1923, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !67, !23}
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931}
!1926 = !DILocalVariable(name: "mol", arg: 1, scope: !1922, file: !28, line: 187, type: !67)
!1927 = !DILocalVariable(name: "attr", arg: 2, scope: !1922, file: !28, line: 187, type: !23)
!1928 = !DILocalVariable(name: "a", scope: !1922, file: !28, line: 189, type: !23)
!1929 = !DILocalVariable(name: "r", scope: !1922, file: !28, line: 189, type: !23)
!1930 = !DILocalVariable(name: "sp", scope: !1922, file: !28, line: 190, type: !82)
!1931 = !DILocalVariable(name: "res", scope: !1922, file: !28, line: 191, type: !99)
!1932 = !DILocation(line: 0, scope: !1922)
!1933 = !DILocation(line: 193, column: 17, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !28, line: 193, column: 2)
!1935 = !DILocation(line: 0, scope: !1934)
!1936 = !DILocation(line: 193, column: 2, scope: !1934)
!1937 = !DILocation(line: 194, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !28, line: 193, column: 49)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !28, line: 193, column: 2)
!1940 = !DILocation(line: 194, column: 14, scope: !1938)
!1941 = !DILocation(line: 195, column: 17, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !28, line: 195, column: 3)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !28, line: 195, column: 3)
!1944 = !DILocation(line: 195, column: 3, scope: !1943)
!1945 = !DILocation(line: 196, column: 10, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !28, line: 195, column: 41)
!1947 = !DILocation(line: 197, column: 9, scope: !1946)
!1948 = !DILocation(line: 197, column: 16, scope: !1946)
!1949 = !DILocation(line: 198, column: 18, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !28, line: 198, column: 4)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !28, line: 198, column: 4)
!1952 = !DILocation(line: 198, column: 4, scope: !1951)
!1953 = !DILocation(line: 199, column: 23, scope: !1950)
!1954 = !DILocation(line: 199, column: 30, scope: !1950)
!1955 = !DILocation(line: 198, column: 36, scope: !1950)
!1956 = distinct !{!1956, !1952, !1957, !356, !357}
!1957 = !DILocation(line: 199, column: 34, scope: !1951)
!1958 = !DILocation(line: 195, column: 37, scope: !1942)
!1959 = distinct !{!1959, !1944, !1960, !356, !357}
!1960 = !DILocation(line: 200, column: 3, scope: !1943)
!1961 = !DILocation(line: 193, column: 41, scope: !1939)
!1962 = distinct !{!1962, !1936, !1963, !356, !357}
!1963 = !DILocation(line: 201, column: 2, scope: !1934)
!1964 = !DILocation(line: 202, column: 1, scope: !1922)
!1965 = !DILocation(line: 0, scope: !695)
!1966 = !DILocation(line: 362, column: 7, scope: !709)
!1967 = !DILocation(line: 362, column: 24, scope: !709)
!1968 = !DILocation(line: 364, column: 6, scope: !714)
!1969 = !DILocation(line: 364, column: 6, scope: !695)
!1970 = !DILocation(line: 365, column: 28, scope: !717)
!1971 = !DILocation(line: 366, column: 13, scope: !717)
!1972 = !DILocation(line: 366, column: 19, scope: !717)
!1973 = !DILocation(line: 366, column: 25, scope: !717)
!1974 = !DILocation(line: 365, column: 46, scope: !717)
!1975 = !DILocation(line: 365, column: 3, scope: !718)
!1976 = distinct !{!1976, !1975, !1977, !356, !357}
!1977 = !DILocation(line: 366, column: 27, scope: !718)
!1978 = !DILocation(line: 367, column: 7, scope: !719)
!1979 = !DILocation(line: 368, column: 8, scope: !731)
!1980 = !DILocation(line: 368, column: 7, scope: !719)
!1981 = !DILocation(line: 369, column: 8, scope: !730)
!1982 = !DILocation(line: 370, column: 4, scope: !730)
!1983 = !DILocation(line: 372, column: 6, scope: !734)
!1984 = !DILocation(line: 373, column: 8, scope: !736)
!1985 = !DILocation(line: 372, column: 4, scope: !734)
!1986 = !DILocation(line: 0, scope: !719)
!1987 = !DILocation(line: 373, column: 7, scope: !719)
!1988 = !DILocation(line: 374, column: 8, scope: !992)
!1989 = !DILocation(line: 375, column: 4, scope: !992)
!1990 = !DILocation(line: 376, column: 14, scope: !741)
!1991 = !DILocation(line: 376, column: 13, scope: !736)
!1992 = !DILocation(line: 378, column: 17, scope: !744)
!1993 = !DILocation(line: 379, column: 13, scope: !744)
!1994 = !DILocation(line: 379, column: 19, scope: !744)
!1995 = !DILocation(line: 379, column: 25, scope: !744)
!1996 = !DILocation(line: 378, column: 35, scope: !744)
!1997 = !DILocation(line: 378, column: 3, scope: !745)
!1998 = distinct !{!1998, !1997, !1999, !356, !357}
!1999 = !DILocation(line: 379, column: 27, scope: !745)
!2000 = !DILocation(line: 380, column: 7, scope: !719)
!2001 = !DILocation(line: 381, column: 11, scope: !719)
!2002 = !DILocation(line: 381, column: 9, scope: !719)
!2003 = !DILocation(line: 381, column: 3, scope: !719)
!2004 = !DILocation(line: 383, column: 7, scope: !754)
!2005 = !DILocation(line: 384, column: 9, scope: !754)
!2006 = !DILocation(line: 386, column: 7, scope: !757)
!2007 = !DILocation(line: 386, column: 6, scope: !695)
!2008 = !DILocation(line: 387, column: 7, scope: !1009)
!2009 = !DILocation(line: 388, column: 3, scope: !1009)
!2010 = !DILocation(line: 389, column: 12, scope: !760)
!2011 = !DILocation(line: 389, column: 12, scope: !757)
!2012 = !DILocation(line: 390, column: 17, scope: !764)
!2013 = !DILocation(line: 391, column: 13, scope: !764)
!2014 = !DILocation(line: 391, column: 19, scope: !764)
!2015 = !DILocation(line: 391, column: 25, scope: !764)
!2016 = !DILocation(line: 390, column: 35, scope: !764)
!2017 = !DILocation(line: 390, column: 3, scope: !765)
!2018 = distinct !{!2018, !2017, !2019, !356, !357}
!2019 = !DILocation(line: 391, column: 27, scope: !765)
!2020 = !DILocation(line: 392, column: 7, scope: !766)
!2021 = !DILocation(line: 393, column: 11, scope: !766)
!2022 = !DILocation(line: 393, column: 9, scope: !766)
!2023 = !DILocation(line: 393, column: 3, scope: !766)
!2024 = !DILocation(line: 396, column: 1, scope: !695)
!2025 = !DILocation(line: 0, scope: !1191)
!2026 = !DILocation(line: 0, scope: !605, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 653, column: 2, scope: !1191)
!2028 = !DILocation(line: 700, column: 9, scope: !605, inlinedAt: !2027)
!2029 = !DILocation(line: 701, column: 7, scope: !616, inlinedAt: !2027)
!2030 = !DILocation(line: 0, scope: !616, inlinedAt: !2027)
!2031 = !DILocation(line: 701, column: 20, scope: !619, inlinedAt: !2027)
!2032 = !DILocation(line: 701, column: 2, scope: !616, inlinedAt: !2027)
!2033 = !DILocation(line: 703, column: 8, scope: !622, inlinedAt: !2027)
!2034 = !DILocation(line: 703, column: 11, scope: !622, inlinedAt: !2027)
!2035 = !DILocation(line: 704, column: 8, scope: !622, inlinedAt: !2027)
!2036 = !DILocation(line: 704, column: 11, scope: !622, inlinedAt: !2027)
!2037 = !DILocation(line: 705, column: 3, scope: !622, inlinedAt: !2027)
!2038 = !DILocation(line: 706, column: 8, scope: !630, inlinedAt: !2027)
!2039 = !DILocation(line: 706, column: 11, scope: !630, inlinedAt: !2027)
!2040 = !DILocation(line: 706, column: 4, scope: !630, inlinedAt: !2027)
!2041 = !DILocation(line: 708, column: 8, scope: !630, inlinedAt: !2027)
!2042 = !DILocation(line: 708, column: 11, scope: !630, inlinedAt: !2027)
!2043 = !DILocation(line: 0, scope: !623, inlinedAt: !2027)
!2044 = !DILocation(line: 701, column: 29, scope: !619, inlinedAt: !2027)
!2045 = !DILocation(line: 701, column: 2, scope: !619, inlinedAt: !2027)
!2046 = distinct !{!2046, !2032, !2047, !356, !357}
!2047 = !DILocation(line: 709, column: 2, scope: !616, inlinedAt: !2027)
!2048 = !DILocation(line: 710, column: 6, scope: !605, inlinedAt: !2027)
!2049 = !DILocation(line: 710, column: 9, scope: !605, inlinedAt: !2027)
!2050 = !DILocation(line: 711, column: 7, scope: !605, inlinedAt: !2027)
!2051 = !DILocation(line: 655, column: 2, scope: !1191)
!2052 = !DILocation(line: 659, column: 17, scope: !1228)
!2053 = !DILocation(line: 0, scope: !1228)
!2054 = !DILocation(line: 659, column: 2, scope: !1228)
!2055 = !DILocation(line: 660, column: 23, scope: !1231)
!2056 = !DILocation(line: 660, column: 17, scope: !1231)
!2057 = !DILocation(line: 660, column: 7, scope: !1232)
!2058 = !DILocation(line: 661, column: 24, scope: !1237)
!2059 = !DILocation(line: 661, column: 18, scope: !1237)
!2060 = !DILocation(line: 661, column: 4, scope: !1238)
!2061 = !DILocation(line: 662, column: 15, scope: !1243)
!2062 = !DILocation(line: 662, column: 11, scope: !1243)
!2063 = !DILocation(line: 663, column: 26, scope: !1246)
!2064 = !DILocation(line: 663, column: 19, scope: !1246)
!2065 = !DILocation(line: 663, column: 9, scope: !1243)
!2066 = !DILocation(line: 664, column: 27, scope: !1250)
!2067 = !DILocation(line: 664, column: 20, scope: !1250)
!2068 = !DILocation(line: 664, column: 6, scope: !1251)
!2069 = !DILocation(line: 665, column: 18, scope: !1256)
!2070 = !DILocation(line: 665, column: 13, scope: !1256)
!2071 = !DILocation(line: 668, column: 33, scope: !1256)
!2072 = !DILocation(line: 668, column: 11, scope: !1256)
!2073 = !DILocation(line: 668, column: 58, scope: !1256)
!2074 = !DILocation(line: 667, column: 11, scope: !1256)
!2075 = !DILocation(line: 667, column: 18, scope: !1256)
!2076 = !DILocation(line: 664, column: 38, scope: !1250)
!2077 = distinct !{!2077, !2068, !2078, !356, !357}
!2078 = !DILocation(line: 675, column: 6, scope: !1251)
!2079 = !DILocation(line: 661, column: 38, scope: !1237)
!2080 = distinct !{!2080, !2060, !2081, !356, !357}
!2081 = !DILocation(line: 677, column: 4, scope: !1238)
!2082 = !DILocation(line: 659, column: 41, scope: !1233)
!2083 = distinct !{!2083, !2054, !2084, !356, !357}
!2084 = !DILocation(line: 679, column: 2, scope: !1228)
!2085 = !DILocation(line: 680, column: 1, scope: !1191)
!2086 = !DISubprogram(name: "regcomp", scope: !43, file: !43, line: 26, type: !2087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2090)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!23, !2089, !52, !23}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2090 = !{}
!2091 = !DISubprogram(name: "regexec", scope: !43, file: !43, line: 61, type: !2092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2090)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!23, !2094, !52, !48, !2096, !23}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmatch_t", file: !43, line: 22, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 19, size: 128, elements: !2099)
!2099 = !{!2100, !2107}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rm_so", scope: !2098, file: !43, line: 20, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !43, line: 12, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2103, line: 63, baseType: !2104)
!2103 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2105, line: 152, baseType: !2106)
!2105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!2106 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rm_eo", scope: !2098, file: !43, line: 21, baseType: !2101, size: 64, offset: 64)
