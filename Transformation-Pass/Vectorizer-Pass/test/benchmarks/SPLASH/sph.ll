; ModuleID = 'sph.c'
source_filename = "sph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.sphere = type { [4 x double], double, double }
%struct.irecord = type { double, ptr, double, double, double }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }

@.str = private unnamed_addr constant [7 x i8] c"sphere\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"\09Sphere object\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09\09center  %f %f %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09\09        radius %f %f\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sph.c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%lf %lf %lf %lf\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error in SphRead: sphere %ld.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @SphName() local_unnamed_addr #0 !dbg !28 {
entry:
  ret ptr @.str, !dbg !32
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @SphPrint(ptr nocapture noundef readonly %po) local_unnamed_addr #1 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !107, metadata !DIExpression()), !dbg !111
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !112
  %0 = load ptr, ptr %pelem, align 8, !dbg !112
  call void @llvm.dbg.value(metadata ptr %0, metadata !110, metadata !DIExpression()), !dbg !111
  %1 = load ptr, ptr @stderr, align 8, !dbg !113
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %1) #15, !dbg !114
  call void @llvm.dbg.value(metadata i64 0, metadata !108, metadata !DIExpression()), !dbg !111
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 0, metadata !108, metadata !DIExpression()), !dbg !111
  %3 = load i64, ptr %numelements, align 8, !dbg !115
  %cmp14 = icmp sgt i64 %3, 0, !dbg !118
  br i1 %cmp14, label %for.body, label %for.end, !dbg !119

for.body:                                         ; preds = %entry, %for.body
  %pe.016 = phi ptr [ %incdec.ptr, %for.body ], [ %0, %entry ]
  %i.015 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %pe.016, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %i.015, metadata !108, metadata !DIExpression()), !dbg !111
  %data = getelementptr inbounds %struct.element, ptr %pe.016, i64 0, i32 2, !dbg !120
  %4 = load ptr, ptr %data, align 8, !dbg !120
  call void @llvm.dbg.value(metadata ptr %4, metadata !109, metadata !DIExpression()), !dbg !111
  %5 = load ptr, ptr @stderr, align 8, !dbg !122
  %6 = load double, ptr %4, align 8, !dbg !123
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 1, !dbg !124
  %7 = load double, ptr %arrayidx2, align 8, !dbg !124
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 2, !dbg !125
  %8 = load double, ptr %arrayidx4, align 8, !dbg !125
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2, double noundef %6, double noundef %7, double noundef %8) #15, !dbg !126
  %9 = load ptr, ptr @stderr, align 8, !dbg !127
  %rad = getelementptr inbounds %struct.sphere, ptr %4, i64 0, i32 1, !dbg !128
  %10 = load double, ptr %rad, align 8, !dbg !128
  %rad2 = getelementptr inbounds %struct.sphere, ptr %4, i64 0, i32 2, !dbg !129
  %11 = load double, ptr %rad2, align 8, !dbg !129
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.3, double noundef %10, double noundef %11) #15, !dbg !130
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.016, i64 1, !dbg !131
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !110, metadata !DIExpression()), !dbg !111
  %inc = add nuw nsw i64 %i.015, 1, !dbg !132
  call void @llvm.dbg.value(metadata i64 %inc, metadata !108, metadata !DIExpression()), !dbg !111
  %12 = load i64, ptr %numelements, align 8, !dbg !115
  %cmp = icmp slt i64 %inc, %12, !dbg !118
  br i1 %cmp, label %for.body, label %for.end, !dbg !119, !llvm.loop !133

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !137
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @SphElementBoundBox(ptr nocapture noundef writeonly %pe, ptr nocapture noundef readonly %ps) local_unnamed_addr #5 !dbg !138 {
entry:
  call void @llvm.dbg.value(metadata ptr %pe, metadata !142, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata ptr %ps, metadata !143, metadata !DIExpression()), !dbg !146
  %bv = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, !dbg !147
  call void @llvm.dbg.value(metadata ptr %bv, metadata !144, metadata !DIExpression()), !dbg !146
  %0 = load double, ptr %ps, align 8, !dbg !148
  %rad = getelementptr inbounds %struct.sphere, ptr %ps, i64 0, i32 1, !dbg !149
  %1 = load double, ptr %rad, align 8, !dbg !149
  %sub = fsub double %0, %1, !dbg !150
  store double %sub, ptr %bv, align 8, !dbg !151
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %ps, i64 0, i64 1, !dbg !152
  %2 = load double, ptr %arrayidx3, align 8, !dbg !152
  %3 = load double, ptr %rad, align 8, !dbg !153
  %sub5 = fsub double %2, %3, !dbg !154
  %arrayidx7 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !155
  store double %sub5, ptr %arrayidx7, align 8, !dbg !156
  %arrayidx9 = getelementptr inbounds [4 x double], ptr %ps, i64 0, i64 2, !dbg !157
  %4 = load double, ptr %arrayidx9, align 8, !dbg !157
  %5 = load double, ptr %rad, align 8, !dbg !158
  %sub11 = fsub double %4, %5, !dbg !159
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !160
  store double %sub11, ptr %arrayidx13, align 8, !dbg !161
  %6 = load double, ptr %ps, align 8, !dbg !162
  %7 = load double, ptr %rad, align 8, !dbg !163
  %add = fadd double %6, %7, !dbg !164
  %dfar = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, !dbg !165
  store double %add, ptr %dfar, align 8, !dbg !166
  %8 = load double, ptr %arrayidx3, align 8, !dbg !167
  %9 = load double, ptr %rad, align 8, !dbg !168
  %add21 = fadd double %8, %9, !dbg !169
  %arrayidx23 = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, i64 1, !dbg !170
  store double %add21, ptr %arrayidx23, align 8, !dbg !171
  %10 = load double, ptr %arrayidx9, align 8, !dbg !172
  %11 = load double, ptr %rad, align 8, !dbg !173
  %add27 = fadd double %10, %11, !dbg !174
  %arrayidx29 = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, i64 2, !dbg !175
  store double %add27, ptr %arrayidx29, align 8, !dbg !176
  ret void, !dbg !177
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @SphBoundBox(ptr nocapture noundef %po) local_unnamed_addr #6 !dbg !178 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !180, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr undef, metadata !183, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr %po, metadata !184, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !191
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !185, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 0, metadata !181, metadata !DIExpression()), !dbg !191
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !185, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 0, metadata !181, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr undef, metadata !183, metadata !DIExpression()), !dbg !191
  %0 = load i64, ptr %numelements, align 8, !dbg !192
  %cmp111 = icmp sgt i64 %0, 0, !dbg !195
  br i1 %cmp111, label %for.body.preheader, label %for.end, !dbg !196

for.body.preheader:                               ; preds = %entry
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !197
  %1 = load ptr, ptr %pelem, align 8, !dbg !197
  call void @llvm.dbg.value(metadata ptr %1, metadata !183, metadata !DIExpression()), !dbg !191
  br label %for.body, !dbg !196

for.body:                                         ; preds = %for.body.preheader, %cond.end63
  %maxz.0119 = phi double [ %cond64, %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %minz.0118 = phi double [ %minz.0., %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %maxy.0117 = phi double [ %maxy.0., %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %miny.0116 = phi double [ %cond17, %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %maxx.0115 = phi double [ %cond40, %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %minx.0114 = phi double [ %minx.0., %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %i.0113 = phi i64 [ %inc, %cond.end63 ], [ 0, %for.body.preheader ]
  %pe.0112 = phi ptr [ %incdec.ptr, %cond.end63 ], [ %1, %for.body.preheader ]
  call void @llvm.dbg.value(metadata double %maxz.0119, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %minz.0118, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %maxy.0117, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %miny.0116, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %maxx.0115, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %minx.0114, metadata !185, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 %i.0113, metadata !181, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr %pe.0112, metadata !183, metadata !DIExpression()), !dbg !191
  %data = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 2, !dbg !198
  %2 = load ptr, ptr %data, align 8, !dbg !198
  call void @llvm.dbg.value(metadata ptr %2, metadata !182, metadata !DIExpression()), !dbg !191
  tail call void @SphElementBoundBox(ptr noundef %pe.0112, ptr noundef %2), !dbg !200
  %bv1 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, !dbg !201
  %3 = load double, ptr %bv1, align 8, !dbg !201
  %sub = fsub double %minx.0114, %3, !dbg !201
  %cmp2 = fcmp olt double %sub, 0.000000e+00, !dbg !201
  %minx.0. = select i1 %cmp2, double %minx.0114, double %3, !dbg !201
  call void @llvm.dbg.value(metadata double %minx.0., metadata !185, metadata !DIExpression()), !dbg !191
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %bv1, i64 0, i64 1, !dbg !202
  %4 = load double, ptr %arrayidx8, align 8, !dbg !202
  %sub9 = fsub double %miny.0116, %4, !dbg !202
  %cmp10 = fcmp olt double %sub9, 0.000000e+00, !dbg !202
  br i1 %cmp10, label %cond.end16, label %cond.false12, !dbg !202

cond.false12:                                     ; preds = %for.body
  br label %cond.end16, !dbg !202

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %4, %cond.false12 ], [ %miny.0116, %for.body ], !dbg !202
  call void @llvm.dbg.value(metadata double %cond17, metadata !187, metadata !DIExpression()), !dbg !191
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %bv1, i64 0, i64 2, !dbg !203
  %5 = load double, ptr %arrayidx20, align 8, !dbg !203
  %sub21 = fsub double %minz.0118, %5, !dbg !203
  %cmp22 = fcmp olt double %sub21, 0.000000e+00, !dbg !203
  %minz.0. = select i1 %cmp22, double %minz.0118, double %5, !dbg !203
  call void @llvm.dbg.value(metadata double %minz.0., metadata !189, metadata !DIExpression()), !dbg !191
  %dfar = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, !dbg !204
  %6 = load double, ptr %dfar, align 8, !dbg !204
  %sub32 = fsub double %maxx.0115, %6, !dbg !204
  %cmp33 = fcmp ogt double %sub32, 0.000000e+00, !dbg !204
  br i1 %cmp33, label %cond.end39, label %cond.false35, !dbg !204

cond.false35:                                     ; preds = %cond.end16
  br label %cond.end39, !dbg !204

cond.end39:                                       ; preds = %cond.end16, %cond.false35
  %cond40 = phi double [ %6, %cond.false35 ], [ %maxx.0115, %cond.end16 ], !dbg !204
  call void @llvm.dbg.value(metadata double %cond40, metadata !186, metadata !DIExpression()), !dbg !191
  %arrayidx43 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, i64 1, !dbg !205
  %7 = load double, ptr %arrayidx43, align 8, !dbg !205
  %sub44 = fsub double %maxy.0117, %7, !dbg !205
  %cmp45 = fcmp ogt double %sub44, 0.000000e+00, !dbg !205
  %maxy.0. = select i1 %cmp45, double %maxy.0117, double %7, !dbg !205
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !188, metadata !DIExpression()), !dbg !191
  %arrayidx55 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, i64 2, !dbg !206
  %8 = load double, ptr %arrayidx55, align 8, !dbg !206
  %sub56 = fsub double %maxz.0119, %8, !dbg !206
  %cmp57 = fcmp ogt double %sub56, 0.000000e+00, !dbg !206
  br i1 %cmp57, label %cond.end63, label %cond.false59, !dbg !206

cond.false59:                                     ; preds = %cond.end39
  br label %cond.end63, !dbg !206

cond.end63:                                       ; preds = %cond.end39, %cond.false59
  %cond64 = phi double [ %8, %cond.false59 ], [ %maxz.0119, %cond.end39 ], !dbg !206
  call void @llvm.dbg.value(metadata double %cond64, metadata !190, metadata !DIExpression()), !dbg !191
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.0112, i64 1, !dbg !207
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !183, metadata !DIExpression()), !dbg !191
  %inc = add nuw nsw i64 %i.0113, 1, !dbg !208
  call void @llvm.dbg.value(metadata double %minz.0., metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %cond17, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %cond40, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %minx.0., metadata !185, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 %inc, metadata !181, metadata !DIExpression()), !dbg !191
  %9 = load i64, ptr %numelements, align 8, !dbg !192
  %cmp = icmp slt i64 %inc, %9, !dbg !195
  br i1 %cmp, label %for.body, label %for.end, !dbg !196, !llvm.loop !209

for.end:                                          ; preds = %cond.end63, %entry
  %minx.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minx.0., %cond.end63 ], !dbg !191
  %maxx.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond40, %cond.end63 ], !dbg !191
  %miny.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %cond17, %cond.end63 ], !dbg !191
  %maxy.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %maxy.0., %cond.end63 ], !dbg !191
  %minz.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minz.0., %cond.end63 ], !dbg !191
  %maxz.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond64, %cond.end63 ], !dbg !191
  %bv = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, !dbg !211
  call void @llvm.dbg.value(metadata ptr %bv, metadata !184, metadata !DIExpression()), !dbg !191
  store double %minx.0.lcssa, ptr %bv, align 8, !dbg !212
  %arrayidx68 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !213
  store double %miny.0.lcssa, ptr %arrayidx68, align 8, !dbg !214
  %arrayidx70 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !215
  store double %minz.0.lcssa, ptr %arrayidx70, align 8, !dbg !216
  %dfar71 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, !dbg !217
  store double %maxx.0.lcssa, ptr %dfar71, align 8, !dbg !218
  %arrayidx74 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, i64 1, !dbg !219
  store double %maxy.0.lcssa, ptr %arrayidx74, align 8, !dbg !220
  %arrayidx76 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, i64 2, !dbg !221
  store double %maxz.0.lcssa, ptr %arrayidx76, align 8, !dbg !222
  ret void, !dbg !223
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @SphNormal(ptr nocapture noundef readonly %hit, ptr nocapture noundef readonly %Pi, ptr nocapture noundef %Ni) local_unnamed_addr #7 !dbg !224 {
entry:
  call void @llvm.dbg.value(metadata ptr %hit, metadata !238, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata ptr %Pi, metadata !239, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata ptr %Ni, metadata !240, metadata !DIExpression()), !dbg !243
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !244
  %0 = load ptr, ptr %pelem, align 8, !dbg !244
  call void @llvm.dbg.value(metadata ptr %0, metadata !241, metadata !DIExpression()), !dbg !243
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !245
  %1 = load ptr, ptr %data, align 8, !dbg !245
  call void @llvm.dbg.value(metadata ptr %1, metadata !242, metadata !DIExpression()), !dbg !243
  %2 = load double, ptr %Pi, align 8, !dbg !246
  %3 = load double, ptr %1, align 8, !dbg !246
  %sub = fsub double %2, %3, !dbg !246
  store double %sub, ptr %Ni, align 8, !dbg !246
  %arrayidx3 = getelementptr inbounds double, ptr %Pi, i64 1, !dbg !246
  %4 = load double, ptr %arrayidx3, align 8, !dbg !246
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 1, !dbg !246
  %5 = load double, ptr %arrayidx5, align 8, !dbg !246
  %sub6 = fsub double %4, %5, !dbg !246
  %arrayidx7 = getelementptr inbounds double, ptr %Ni, i64 1, !dbg !246
  store double %sub6, ptr %arrayidx7, align 8, !dbg !246
  %arrayidx8 = getelementptr inbounds double, ptr %Pi, i64 2, !dbg !246
  %6 = load double, ptr %arrayidx8, align 8, !dbg !246
  %arrayidx10 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 2, !dbg !246
  %7 = load double, ptr %arrayidx10, align 8, !dbg !246
  %sub11 = fsub double %6, %7, !dbg !246
  %arrayidx12 = getelementptr inbounds double, ptr %Ni, i64 2, !dbg !246
  store double %sub11, ptr %arrayidx12, align 8, !dbg !246
  %rad = getelementptr inbounds %struct.sphere, ptr %1, i64 0, i32 1, !dbg !248
  %8 = load double, ptr %rad, align 8, !dbg !248
  %div = fdiv double %sub, %8, !dbg !249
  store double %div, ptr %Ni, align 8, !dbg !249
  %9 = load double, ptr %rad, align 8, !dbg !250
  %div16 = fdiv double %sub6, %9, !dbg !251
  store double %div16, ptr %arrayidx7, align 8, !dbg !251
  %10 = load double, ptr %rad, align 8, !dbg !252
  %div19 = fdiv double %sub11, %10, !dbg !253
  store double %div19, ptr %arrayidx12, align 8, !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SphDataNormalize(ptr noundef %po, ptr noundef %normMat) local_unnamed_addr #8 !dbg !255 {
entry:
  %surf_point = alloca [4 x double], align 16
  %center_point = alloca [4 x double], align 16
  call void @llvm.dbg.declare(metadata ptr undef, metadata !267, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !268
  call void @llvm.dbg.value(metadata ptr %po, metadata !260, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata ptr %normMat, metadata !261, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %surf_point) #16, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %surf_point, metadata !265, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %center_point) #16, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %center_point, metadata !266, metadata !DIExpression()), !dbg !273
  %bv = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, !dbg !274
  tail call void @NormalizeBoundBox(ptr noundef nonnull %bv, ptr noundef %normMat) #16, !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !264, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !269
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata ptr undef, metadata !264, metadata !DIExpression()), !dbg !269
  %0 = load i64, ptr %numelements, align 8, !dbg !276
  %cmp77 = icmp sgt i64 %0, 0, !dbg !279
  br i1 %cmp77, label %for.body.lr.ph, label %for.end, !dbg !280

for.body.lr.ph:                                   ; preds = %entry
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !281
  %1 = load ptr, ptr %pelem, align 8, !dbg !281
  call void @llvm.dbg.value(metadata ptr %1, metadata !264, metadata !DIExpression()), !dbg !269
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %surf_point, i64 0, i64 1
  %arrayidx8 = getelementptr inbounds [4 x double], ptr %surf_point, i64 0, i64 2
  %arrayidx9 = getelementptr inbounds [4 x double], ptr %surf_point, i64 0, i64 3
  %arrayidx15 = getelementptr inbounds [4 x double], ptr %center_point, i64 0, i64 1
  %arrayidx18 = getelementptr inbounds [4 x double], ptr %center_point, i64 0, i64 2
  %arrayidx19 = getelementptr inbounds [4 x double], ptr %center_point, i64 0, i64 3
  br label %for.body, !dbg !280

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.079 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %pe.078 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.079, metadata !262, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata ptr %pe.078, metadata !264, metadata !DIExpression()), !dbg !269
  %data = getelementptr inbounds %struct.element, ptr %pe.078, i64 0, i32 2, !dbg !282
  %2 = load ptr, ptr %data, align 8, !dbg !282
  call void @llvm.dbg.value(metadata ptr %2, metadata !263, metadata !DIExpression()), !dbg !269
  %bv1 = getelementptr inbounds %struct.element, ptr %pe.078, i64 0, i32 3, !dbg !284
  call void @NormalizeBoundBox(ptr noundef nonnull %bv1, ptr noundef %normMat) #16, !dbg !285
  %3 = load double, ptr %2, align 8, !dbg !286
  %rad = getelementptr inbounds %struct.sphere, ptr %2, i64 0, i32 1, !dbg !287
  %4 = load double, ptr %rad, align 8, !dbg !287
  %add = fadd double %3, %4, !dbg !288
  store double %add, ptr %surf_point, align 16, !dbg !289
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %2, i64 0, i64 1, !dbg !290
  %5 = load double, ptr %arrayidx4, align 8, !dbg !290
  store double %5, ptr %arrayidx5, align 8, !dbg !291
  %arrayidx7 = getelementptr inbounds [4 x double], ptr %2, i64 0, i64 2, !dbg !292
  %6 = load double, ptr %arrayidx7, align 8, !dbg !292
  store double %6, ptr %arrayidx8, align 16, !dbg !293
  store double 1.000000e+00, ptr %arrayidx9, align 8, !dbg !294
  %7 = load double, ptr %2, align 8, !dbg !295
  store double %7, ptr %center_point, align 16, !dbg !296
  %8 = load double, ptr %arrayidx4, align 8, !dbg !297
  store double %8, ptr %arrayidx15, align 8, !dbg !298
  %9 = load double, ptr %arrayidx7, align 8, !dbg !299
  store double %9, ptr %arrayidx18, align 16, !dbg !300
  store double 1.000000e+00, ptr %arrayidx19, align 8, !dbg !301
  call void @VecMatMult(ptr noundef nonnull %center_point, ptr noundef %normMat, ptr noundef nonnull %center_point) #16, !dbg !302
  call void @VecMatMult(ptr noundef nonnull %surf_point, ptr noundef %normMat, ptr noundef nonnull %surf_point) #16, !dbg !303
  %10 = load double, ptr %surf_point, align 16, !dbg !304
  %11 = load double, ptr %center_point, align 16, !dbg !304
  %sub = fsub double %10, %11, !dbg !304
  call void @llvm.dbg.value(metadata double %sub, metadata !267, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !269
  %12 = load double, ptr %arrayidx5, align 8, !dbg !304
  %13 = load double, ptr %arrayidx15, align 8, !dbg !304
  %sub28 = fsub double %12, %13, !dbg !304
  call void @llvm.dbg.value(metadata double %sub28, metadata !267, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !269
  %14 = load double, ptr %arrayidx8, align 16, !dbg !304
  %15 = load double, ptr %arrayidx18, align 16, !dbg !304
  %sub32 = fsub double %14, %15, !dbg !304
  call void @llvm.dbg.value(metadata double %sub32, metadata !267, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !269
  store double %11, ptr %2, align 8, !dbg !306
  %16 = load double, ptr %arrayidx15, align 8, !dbg !306
  store double %16, ptr %arrayidx4, align 8, !dbg !306
  %17 = load double, ptr %arrayidx18, align 16, !dbg !306
  store double %17, ptr %arrayidx7, align 8, !dbg !306
  %mul47 = fmul double %sub28, %sub28, !dbg !308
  %18 = call double @llvm.fmuladd.f64(double %sub, double %sub, double %mul47), !dbg !308
  %19 = call double @llvm.fmuladd.f64(double %sub32, double %sub32, double %18), !dbg !308
  %call = call double @sqrt(double noundef %19) #16, !dbg !308
  store double %call, ptr %rad, align 8, !dbg !309
  %mul = fmul double %call, %call, !dbg !310
  %rad2 = getelementptr inbounds %struct.sphere, ptr %2, i64 0, i32 2, !dbg !311
  store double %mul, ptr %rad2, align 8, !dbg !312
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.078, i64 1, !dbg !313
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !264, metadata !DIExpression()), !dbg !269
  %inc = add nuw nsw i64 %i.079, 1, !dbg !314
  call void @llvm.dbg.value(metadata i64 %inc, metadata !262, metadata !DIExpression()), !dbg !269
  %20 = load i64, ptr %numelements, align 8, !dbg !276
  %cmp = icmp slt i64 %inc, %20, !dbg !279
  br i1 %cmp, label %for.body, label %for.end, !dbg !280, !llvm.loop !315

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %center_point) #16, !dbg !317
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %surf_point) #16, !dbg !317
  ret void, !dbg !317
}

declare !dbg !318 void @NormalizeBoundBox(ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !321 void @VecMatMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local i64 @SphPeIntersect(ptr nocapture noundef readonly %pr, ptr noundef %pe, ptr nocapture noundef writeonly %hit) local_unnamed_addr #11 !dbg !324 {
entry:
  call void @llvm.dbg.declare(metadata ptr undef, metadata !429, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !431
  call void @llvm.dbg.value(metadata ptr %pr, metadata !419, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %pe, metadata !420, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %hit, metadata !421, metadata !DIExpression()), !dbg !432
  %data = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 2, !dbg !433
  %0 = load ptr, ptr %data, align 8, !dbg !433
  call void @llvm.dbg.value(metadata ptr %0, metadata !428, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %hit, metadata !430, metadata !DIExpression()), !dbg !432
  %1 = load double, ptr %0, align 8, !dbg !434
  %P = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, !dbg !434
  %2 = load double, ptr %P, align 8, !dbg !434
  %sub = fsub double %1, %2, !dbg !434
  call void @llvm.dbg.value(metadata double %sub, metadata !429, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !432
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 1, !dbg !434
  %3 = load double, ptr %arrayidx4, align 8, !dbg !434
  %arrayidx6 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, i64 1, !dbg !434
  %4 = load double, ptr %arrayidx6, align 8, !dbg !434
  %sub7 = fsub double %3, %4, !dbg !434
  call void @llvm.dbg.value(metadata double %sub7, metadata !429, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !432
  %arrayidx10 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 2, !dbg !434
  %5 = load double, ptr %arrayidx10, align 8, !dbg !434
  %arrayidx12 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, i64 2, !dbg !434
  %6 = load double, ptr %arrayidx12, align 8, !dbg !434
  %sub13 = fsub double %5, %6, !dbg !434
  call void @llvm.dbg.value(metadata double %sub13, metadata !429, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !432
  %mul19 = fmul double %sub7, %sub7, !dbg !436
  %7 = tail call double @llvm.fmuladd.f64(double %sub, double %sub, double %mul19), !dbg !436
  %8 = tail call double @llvm.fmuladd.f64(double %sub13, double %sub13, double %7), !dbg !436
  call void @llvm.dbg.value(metadata double %8, metadata !427, metadata !DIExpression()), !dbg !432
  %D = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, !dbg !437
  %9 = load double, ptr %D, align 8, !dbg !437
  %arrayidx26 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, i64 1, !dbg !437
  %10 = load double, ptr %arrayidx26, align 8, !dbg !437
  %mul27 = fmul double %sub7, %10, !dbg !437
  %11 = tail call double @llvm.fmuladd.f64(double %sub, double %9, double %mul27), !dbg !437
  %arrayidx30 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, i64 2, !dbg !437
  %12 = load double, ptr %arrayidx30, align 8, !dbg !437
  %13 = tail call double @llvm.fmuladd.f64(double %sub13, double %12, double %11), !dbg !437
  call void @llvm.dbg.value(metadata double %13, metadata !423, metadata !DIExpression()), !dbg !432
  %rad2 = getelementptr inbounds %struct.sphere, ptr %0, i64 0, i32 2, !dbg !438
  %14 = load double, ptr %rad2, align 8, !dbg !438
  %cmp = fcmp ogt double %8, %14, !dbg !440
  %cmp31 = fcmp olt double %13, 0x3E7AD7F29ABCAF48
  %or.cond = select i1 %cmp, i1 %cmp31, i1 false, !dbg !441
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !441

if.end:                                           ; preds = %entry
  %neg = fneg double %8, !dbg !442
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %neg), !dbg !442
  %add = fadd double %14, %15, !dbg !443
  call void @llvm.dbg.value(metadata double %add, metadata !424, metadata !DIExpression()), !dbg !432
  %cmp33 = fcmp olt double %add, 0.000000e+00, !dbg !444
  br i1 %cmp33, label %cleanup, label %if.end35, !dbg !446

if.end35:                                         ; preds = %if.end
  %call = tail call double @sqrt(double noundef %add) #16, !dbg !447
  call void @llvm.dbg.value(metadata double %call, metadata !424, metadata !DIExpression()), !dbg !432
  %add36 = fadd double %13, %call, !dbg !448
  call void @llvm.dbg.value(metadata double %add36, metadata !426, metadata !DIExpression()), !dbg !432
  %sub37 = fsub double %13, %call, !dbg !449
  call void @llvm.dbg.value(metadata double %sub37, metadata !425, metadata !DIExpression()), !dbg !432
  %cmp38 = fcmp ugt double %add36, 0x3E7AD7F29ABCAF48, !dbg !450
  br i1 %cmp38, label %if.end40, label %cleanup, !dbg !452

if.end40:                                         ; preds = %if.end35
  call void @llvm.dbg.value(metadata i64 0, metadata !422, metadata !DIExpression()), !dbg !432
  %cmp41 = fcmp ogt double %sub37, 0x3E7AD7F29ABCAF48, !dbg !453
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !455

if.then42:                                        ; preds = %if.end40
  store double %sub37, ptr %hit, align 8, !dbg !456
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !456
  store ptr %pe, ptr %pelem, align 8, !dbg !456
  %incdec.ptr = getelementptr inbounds %struct.irecord, ptr %hit, i64 1, !dbg !459
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !430, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i64 1, metadata !422, metadata !DIExpression()), !dbg !432
  br label %if.end43, !dbg !460

if.end43:                                         ; preds = %if.then42, %if.end40
  %nhits.0 = phi i64 [ 2, %if.then42 ], [ 1, %if.end40 ]
  %sphhit.0 = phi ptr [ %incdec.ptr, %if.then42 ], [ %hit, %if.end40 ], !dbg !432
  call void @llvm.dbg.value(metadata ptr %sphhit.0, metadata !430, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i64 undef, metadata !422, metadata !DIExpression()), !dbg !432
  store double %add36, ptr %sphhit.0, align 8, !dbg !461
  %pelem45 = getelementptr inbounds %struct.irecord, ptr %sphhit.0, i64 0, i32 1, !dbg !461
  store ptr %pe, ptr %pelem45, align 8, !dbg !461
  call void @llvm.dbg.value(metadata i64 %nhits.0, metadata !422, metadata !DIExpression()), !dbg !432
  br label %cleanup, !dbg !463

cleanup:                                          ; preds = %if.end35, %if.end, %entry, %if.end43
  %retval.0 = phi i64 [ %nhits.0, %if.end43 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end35 ], !dbg !432
  ret i64 %retval.0, !dbg !464
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @SphIntersect(ptr nocapture noundef readonly %pr, ptr nocapture noundef readonly %po, ptr nocapture noundef %hit) local_unnamed_addr #1 !dbg !465 {
entry:
  %newhit = alloca [2 x %struct.irecord], align 16
  call void @llvm.dbg.value(metadata ptr %pr, metadata !469, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata ptr %po, metadata !470, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata ptr %hit, metadata !471, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newhit) #16, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 0, metadata !473, metadata !DIExpression()), !dbg !477
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !480
  %0 = load ptr, ptr %pelem, align 8, !dbg !480
  call void @llvm.dbg.value(metadata ptr %0, metadata !474, metadata !DIExpression()), !dbg !477
  store double 1.000000e+32, ptr %hit, align 8, !dbg !481
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !477
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64 0, metadata !473, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !477
  %1 = load i64, ptr %numelements, align 8, !dbg !482
  %cmp24 = icmp sgt i64 %1, 0, !dbg !485
  br i1 %cmp24, label %for.body.lr.ph, label %for.end, !dbg !486

for.body.lr.ph:                                   ; preds = %entry
  %pelem12 = getelementptr inbounds %struct.irecord, ptr %newhit, i64 0, i32 1
  %pelem14 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1
  br label %for.body, !dbg !486

for.body:                                         ; preds = %for.body.lr.ph, %if.end15
  %pe.027 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr, %if.end15 ]
  %nhits.026 = phi i64 [ 0, %for.body.lr.ph ], [ %nhits.1, %if.end15 ]
  %i.025 = phi i64 [ 0, %for.body.lr.ph ], [ %inc16, %if.end15 ]
  call void @llvm.dbg.value(metadata ptr %pe.027, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64 %nhits.026, metadata !473, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64 %i.025, metadata !472, metadata !DIExpression()), !dbg !477
  %call = call i64 @SphPeIntersect(ptr noundef %pr, ptr noundef %pe.027, ptr noundef nonnull %newhit), !dbg !487
  %tobool.not = icmp eq i64 %call, 0, !dbg !487
  br i1 %tobool.not, label %if.end15, label %if.then, !dbg !490

if.then:                                          ; preds = %for.body
  %2 = load double, ptr %newhit, align 16, !dbg !491
  %3 = load double, ptr %hit, align 8, !dbg !493
  %cmp5 = fcmp olt double %2, %3, !dbg !494
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !495

if.then6:                                         ; preds = %if.then
  %inc = add nsw i64 %nhits.026, 1, !dbg !496
  call void @llvm.dbg.value(metadata i64 %inc, metadata !473, metadata !DIExpression()), !dbg !477
  store double %2, ptr %hit, align 8, !dbg !498
  %4 = load ptr, ptr %pelem12, align 8, !dbg !499
  store ptr %4, ptr %pelem14, align 8, !dbg !500
  br label %if.end15, !dbg !501

if.end15:                                         ; preds = %if.then, %if.then6, %for.body
  %nhits.1 = phi i64 [ %inc, %if.then6 ], [ %nhits.026, %if.then ], [ %nhits.026, %for.body ], !dbg !477
  call void @llvm.dbg.value(metadata i64 %nhits.1, metadata !473, metadata !DIExpression()), !dbg !477
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.027, i64 1, !dbg !502
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !474, metadata !DIExpression()), !dbg !477
  %inc16 = add nuw nsw i64 %i.025, 1, !dbg !503
  call void @llvm.dbg.value(metadata i64 %inc16, metadata !472, metadata !DIExpression()), !dbg !477
  %5 = load i64, ptr %numelements, align 8, !dbg !482
  %cmp = icmp slt i64 %inc16, %5, !dbg !485
  br i1 %cmp, label %for.body, label %for.end, !dbg !486, !llvm.loop !504

for.end:                                          ; preds = %if.end15, %entry
  %nhits.0.lcssa = phi i64 [ 0, %entry ], [ %nhits.1, %if.end15 ], !dbg !477
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newhit) #16, !dbg !506
  ret i64 %nhits.0.lcssa, !dbg !507
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SphTransform(ptr nocapture noundef readonly %po, ptr noundef %xtrans, ptr nocapture noundef readnone %xinvT) local_unnamed_addr #8 !dbg !508 {
entry:
  %surf_point = alloca [4 x double], align 16
  %center_point = alloca [4 x double], align 16
  call void @llvm.dbg.declare(metadata ptr undef, metadata !522, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !523
  call void @llvm.dbg.value(metadata ptr %po, metadata !512, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata ptr %xtrans, metadata !513, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata ptr %xinvT, metadata !514, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %surf_point) #16, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %surf_point, metadata !520, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %center_point) #16, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %center_point, metadata !521, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.value(metadata ptr undef, metadata !519, metadata !DIExpression()), !dbg !524
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !529
  %0 = load i64, ptr %numelements, align 8, !dbg !529
  call void @llvm.dbg.value(metadata i64 %0, metadata !516, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i64 0, metadata !515, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata ptr undef, metadata !519, metadata !DIExpression()), !dbg !524
  %cmp76 = icmp sgt i64 %0, 0, !dbg !530
  br i1 %cmp76, label %for.body.lr.ph, label %for.end, !dbg !533

for.body.lr.ph:                                   ; preds = %entry
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !534
  %1 = load ptr, ptr %pelem, align 8, !dbg !534
  call void @llvm.dbg.value(metadata ptr %1, metadata !519, metadata !DIExpression()), !dbg !524
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %surf_point, i64 0, i64 1
  %arrayidx7 = getelementptr inbounds [4 x double], ptr %surf_point, i64 0, i64 2
  %arrayidx8 = getelementptr inbounds [4 x double], ptr %surf_point, i64 0, i64 3
  %arrayidx14 = getelementptr inbounds [4 x double], ptr %center_point, i64 0, i64 1
  %arrayidx17 = getelementptr inbounds [4 x double], ptr %center_point, i64 0, i64 2
  %arrayidx18 = getelementptr inbounds [4 x double], ptr %center_point, i64 0, i64 3
  br label %for.body, !dbg !533

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %i.078 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %pe.077 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.078, metadata !515, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata ptr %pe.077, metadata !519, metadata !DIExpression()), !dbg !524
  %data = getelementptr inbounds %struct.element, ptr %pe.077, i64 0, i32 2, !dbg !535
  %2 = load ptr, ptr %data, align 8, !dbg !535
  call void @llvm.dbg.value(metadata ptr %2, metadata !518, metadata !DIExpression()), !dbg !524
  %3 = load double, ptr %2, align 8, !dbg !537
  %rad = getelementptr inbounds %struct.sphere, ptr %2, i64 0, i32 1, !dbg !538
  %4 = load double, ptr %rad, align 8, !dbg !538
  %add = fadd double %3, %4, !dbg !539
  store double %add, ptr %surf_point, align 16, !dbg !540
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %2, i64 0, i64 1, !dbg !541
  %5 = load double, ptr %arrayidx3, align 8, !dbg !541
  store double %5, ptr %arrayidx4, align 8, !dbg !542
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %2, i64 0, i64 2, !dbg !543
  %6 = load double, ptr %arrayidx6, align 8, !dbg !543
  store double %6, ptr %arrayidx7, align 16, !dbg !544
  store double 1.000000e+00, ptr %arrayidx8, align 8, !dbg !545
  %7 = load double, ptr %2, align 8, !dbg !546
  store double %7, ptr %center_point, align 16, !dbg !547
  %8 = load double, ptr %arrayidx3, align 8, !dbg !548
  store double %8, ptr %arrayidx14, align 8, !dbg !549
  %9 = load double, ptr %arrayidx6, align 8, !dbg !550
  store double %9, ptr %arrayidx17, align 16, !dbg !551
  store double 1.000000e+00, ptr %arrayidx18, align 8, !dbg !552
  call void @VecMatMult(ptr noundef nonnull %center_point, ptr noundef %xtrans, ptr noundef nonnull %center_point) #16, !dbg !553
  call void @VecMatMult(ptr noundef nonnull %surf_point, ptr noundef %xtrans, ptr noundef nonnull %surf_point) #16, !dbg !554
  %10 = load double, ptr %surf_point, align 16, !dbg !555
  %11 = load double, ptr %center_point, align 16, !dbg !555
  %sub = fsub double %10, %11, !dbg !555
  call void @llvm.dbg.value(metadata double %sub, metadata !522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !524
  %12 = load double, ptr %arrayidx4, align 8, !dbg !555
  %13 = load double, ptr %arrayidx14, align 8, !dbg !555
  %sub27 = fsub double %12, %13, !dbg !555
  call void @llvm.dbg.value(metadata double %sub27, metadata !522, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !524
  %14 = load double, ptr %arrayidx7, align 16, !dbg !555
  %15 = load double, ptr %arrayidx17, align 16, !dbg !555
  %sub31 = fsub double %14, %15, !dbg !555
  call void @llvm.dbg.value(metadata double %sub31, metadata !522, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !524
  store double %11, ptr %2, align 8, !dbg !557
  %16 = load double, ptr %arrayidx14, align 8, !dbg !557
  store double %16, ptr %arrayidx3, align 8, !dbg !557
  %17 = load double, ptr %arrayidx17, align 16, !dbg !557
  store double %17, ptr %arrayidx6, align 8, !dbg !557
  %mul46 = fmul double %sub27, %sub27, !dbg !559
  %18 = call double @llvm.fmuladd.f64(double %sub, double %sub, double %mul46), !dbg !559
  %19 = call double @llvm.fmuladd.f64(double %sub31, double %sub31, double %18), !dbg !559
  %call = call double @sqrt(double noundef %19) #16, !dbg !559
  call void @llvm.dbg.value(metadata double %call, metadata !517, metadata !DIExpression()), !dbg !524
  %20 = load double, ptr %rad, align 8, !dbg !560
  %cmp50 = fcmp une double %call, %20, !dbg !562
  br i1 %cmp50, label %if.then, label %if.end, !dbg !563

if.then:                                          ; preds = %for.body
  store double %call, ptr %rad, align 8, !dbg !564
  %mul = fmul double %call, %call, !dbg !566
  %rad2 = getelementptr inbounds %struct.sphere, ptr %2, i64 0, i32 2, !dbg !567
  store double %mul, ptr %rad2, align 8, !dbg !568
  br label %if.end, !dbg !569

if.end:                                           ; preds = %if.then, %for.body
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.077, i64 1, !dbg !570
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !519, metadata !DIExpression()), !dbg !524
  %inc = add nuw nsw i64 %i.078, 1, !dbg !571
  call void @llvm.dbg.value(metadata i64 %inc, metadata !515, metadata !DIExpression()), !dbg !524
  %exitcond.not = icmp eq i64 %inc, %0, !dbg !530
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !533, !llvm.loop !572

for.end:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %center_point) #16, !dbg !574
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %surf_point) #16, !dbg !574
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SphRead(ptr noundef %po, ptr noundef %pf) local_unnamed_addr #8 !dbg !575 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !639, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %pf, metadata !640, metadata !DIExpression()), !dbg !645
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !646
  %0 = load ptr, ptr %pelem, align 8, !dbg !646
  call void @llvm.dbg.value(metadata ptr %0, metadata !644, metadata !DIExpression()), !dbg !645
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !647
  %1 = load i64, ptr %numelements, align 8, !dbg !647
  %mul = mul i64 %1, 48, !dbg !648
  %call = tail call ptr @GlobalMalloc(i64 noundef %mul, ptr noundef nonnull @.str.4) #16, !dbg !649
  call void @llvm.dbg.value(metadata ptr %call, metadata !643, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 0, metadata !641, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %0, metadata !644, metadata !DIExpression()), !dbg !645
  %2 = load i64, ptr %numelements, align 8, !dbg !650
  %cmp35 = icmp sgt i64 %2, 0, !dbg !653
  br i1 %cmp35, label %for.body, label %for.end, !dbg !654

for.body:                                         ; preds = %entry, %if.end
  %pe.038 = phi ptr [ %incdec.ptr15, %if.end ], [ %0, %entry ]
  %ps.037 = phi ptr [ %incdec.ptr, %if.end ], [ %call, %entry ]
  %i.036 = phi i64 [ %inc, %if.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %pe.038, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %ps.037, metadata !643, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 %i.036, metadata !641, metadata !DIExpression()), !dbg !645
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %ps.037, i64 0, i64 1, !dbg !655
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %ps.037, i64 0, i64 2, !dbg !657
  %rad = getelementptr inbounds %struct.sphere, ptr %ps.037, i64 0, i32 1, !dbg !658
  %call6 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.5, ptr noundef %ps.037, ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %rad) #16, !dbg !659
  call void @llvm.dbg.value(metadata i32 %call6, metadata !642, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !645
  %cmp7.not = icmp eq i32 %call6, 4, !dbg !660
  br i1 %cmp7.not, label %if.end, label %if.then, !dbg !662

if.then:                                          ; preds = %for.body
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %i.036), !dbg !663
  tail call void @exit(i32 noundef 1) #17, !dbg !665
  unreachable, !dbg !665

if.end:                                           ; preds = %for.body
  %arrayidx11 = getelementptr inbounds [4 x double], ptr %ps.037, i64 0, i64 3, !dbg !666
  store double 1.000000e+00, ptr %arrayidx11, align 8, !dbg !667
  %3 = load double, ptr %rad, align 8, !dbg !668
  %mul14 = fmul double %3, %3, !dbg !669
  %rad2 = getelementptr inbounds %struct.sphere, ptr %ps.037, i64 0, i32 2, !dbg !670
  store double %mul14, ptr %rad2, align 8, !dbg !671
  %data = getelementptr inbounds %struct.element, ptr %pe.038, i64 0, i32 2, !dbg !672
  store ptr %ps.037, ptr %data, align 8, !dbg !673
  %parent = getelementptr inbounds %struct.element, ptr %pe.038, i64 0, i32 1, !dbg !674
  store ptr %po, ptr %parent, align 8, !dbg !675
  tail call void @SphElementBoundBox(ptr noundef %pe.038, ptr noundef %ps.037), !dbg !676
  %incdec.ptr = getelementptr inbounds %struct.sphere, ptr %ps.037, i64 1, !dbg !677
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !643, metadata !DIExpression()), !dbg !645
  %incdec.ptr15 = getelementptr inbounds %struct.element, ptr %pe.038, i64 1, !dbg !678
  call void @llvm.dbg.value(metadata ptr %incdec.ptr15, metadata !644, metadata !DIExpression()), !dbg !645
  %inc = add nuw nsw i64 %i.036, 1, !dbg !679
  call void @llvm.dbg.value(metadata i64 %inc, metadata !641, metadata !DIExpression()), !dbg !645
  %4 = load i64, ptr %numelements, align 8, !dbg !650
  %cmp = icmp slt i64 %inc, %4, !dbg !653
  br i1 %cmp, label %for.body, label %for.end, !dbg !654, !llvm.loop !680

for.end:                                          ; preds = %if.end, %entry
  ret void, !dbg !682
}

declare !dbg !683 ptr @GlobalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sph.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "55705f70870336795b10c84653947b9f")
!2 = !{!3, !18}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPHERE", file: !5, line: 727, baseType: !6)
!5 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sphere", file: !5, line: 721, size: 384, elements: !7)
!7 = !{!8, !16, !17}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !6, file: !5, line: 723, baseType: !9, size: 256)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !5, line: 318, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !5, line: 315, baseType: !11)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !5, line: 310, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DISubrange(count: 4)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !6, file: !5, line: 724, baseType: !12, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "rad2", scope: !6, file: !5, line: 725, baseType: !12, size: 64, offset: 320)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !5, line: 287, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!28 = distinct !DISubprogram(name: "SphName", scope: !1, file: !1, line: 47, type: !29, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!18}
!31 = !{}
!32 = !DILocation(line: 49, column: 2, scope: !28)
!33 = distinct !DISubprogram(name: "SphPrint", scope: !1, file: !1, line: 66, type: !34, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !5, line: 499, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !5, line: 488, size: 1024, elements: !39)
!39 = !{!40, !43, !47, !56, !66, !67, !91, !105}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !38, file: !5, line: 490, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !5, line: 297, baseType: !42)
!42 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !5, line: 491, baseType: !44, size: 256, offset: 64)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !38, file: !5, line: 492, baseType: !48, size: 384, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !5, line: 418, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !5, line: 413, size: 384, elements: !50)
!50 = !{!51, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !49, file: !5, line: 415, baseType: !52, size: 192)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 3)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !49, file: !5, line: 416, baseType: !52, size: 192, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !38, file: !5, line: 493, baseType: !57, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !5, line: 481, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !5, line: 474, size: 576, elements: !60)
!60 = !{!61, !62, !64, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !59, file: !5, line: 476, baseType: !41, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !59, file: !5, line: 477, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !59, file: !5, line: 478, baseType: !18, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !59, file: !5, line: 479, baseType: !48, size: 384, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !38, file: !5, line: 494, baseType: !41, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !38, file: !5, line: 495, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !5, line: 340, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !5, line: 327, size: 640, elements: !71)
!71 = !{!72, !76, !80, !81, !82, !83, !87, !88, !89, !90}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !5, line: 329, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!18, null}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !70, file: !5, line: 330, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, null}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !70, file: !5, line: 331, baseType: !77, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !70, file: !5, line: 332, baseType: !77, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !70, file: !5, line: 333, baseType: !77, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !70, file: !5, line: 334, baseType: !84, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!41, null}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !70, file: !5, line: 335, baseType: !84, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !70, file: !5, line: 336, baseType: !77, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !70, file: !5, line: 337, baseType: !77, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !70, file: !5, line: 338, baseType: !77, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !38, file: !5, line: 496, baseType: !92, size: 64, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !5, line: 357, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !5, line: 347, size: 704, elements: !95)
!95 = !{!96, !99, !100, !101, !102, !103, !104}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !94, file: !5, line: 349, baseType: !97, size: 192)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !5, line: 319, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !5, line: 314, baseType: !52)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !94, file: !5, line: 350, baseType: !97, size: 192, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !94, file: !5, line: 351, baseType: !12, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !94, file: !5, line: 352, baseType: !12, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !94, file: !5, line: 353, baseType: !12, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !94, file: !5, line: 354, baseType: !12, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !94, file: !5, line: 355, baseType: !12, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !5, line: 497, baseType: !63, size: 64, offset: 960)
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: "po", arg: 1, scope: !33, file: !1, line: 66, type: !36)
!108 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 68, type: !41)
!109 = !DILocalVariable(name: "ps", scope: !33, file: !1, line: 69, type: !3)
!110 = !DILocalVariable(name: "pe", scope: !33, file: !1, line: 70, type: !57)
!111 = !DILocation(line: 0, scope: !33)
!112 = !DILocation(line: 72, column: 11, scope: !33)
!113 = !DILocation(line: 73, column: 10, scope: !33)
!114 = !DILocation(line: 73, column: 2, scope: !33)
!115 = !DILocation(line: 75, column: 22, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 75, column: 2)
!117 = distinct !DILexicalBlock(scope: !33, file: !1, line: 75, column: 2)
!118 = !DILocation(line: 75, column: 16, scope: !116)
!119 = !DILocation(line: 75, column: 2, scope: !117)
!120 = !DILocation(line: 77, column: 23, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 76, column: 3)
!122 = !DILocation(line: 78, column: 11, scope: !121)
!123 = !DILocation(line: 78, column: 44, scope: !121)
!124 = !DILocation(line: 78, column: 59, scope: !121)
!125 = !DILocation(line: 78, column: 74, scope: !121)
!126 = !DILocation(line: 78, column: 3, scope: !121)
!127 = !DILocation(line: 79, column: 11, scope: !121)
!128 = !DILocation(line: 79, column: 54, scope: !121)
!129 = !DILocation(line: 79, column: 63, scope: !121)
!130 = !DILocation(line: 79, column: 3, scope: !121)
!131 = !DILocation(line: 80, column: 5, scope: !121)
!132 = !DILocation(line: 75, column: 36, scope: !116)
!133 = distinct !{!133, !119, !134, !135, !136}
!134 = !DILocation(line: 81, column: 3, scope: !117)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !DILocation(line: 82, column: 2, scope: !33)
!138 = distinct !DISubprogram(name: "SphElementBoundBox", scope: !1, file: !1, line: 99, type: !139, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !57, !3}
!141 = !{!142, !143, !144}
!142 = !DILocalVariable(name: "pe", arg: 1, scope: !138, file: !1, line: 99, type: !57)
!143 = !DILocalVariable(name: "ps", arg: 2, scope: !138, file: !1, line: 99, type: !3)
!144 = !DILocalVariable(name: "pbb", scope: !138, file: !1, line: 101, type: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!146 = !DILocation(line: 0, scope: !138)
!147 = !DILocation(line: 103, column: 14, scope: !138)
!148 = !DILocation(line: 105, column: 18, scope: !138)
!149 = !DILocation(line: 105, column: 38, scope: !138)
!150 = !DILocation(line: 105, column: 32, scope: !138)
!151 = !DILocation(line: 105, column: 16, scope: !138)
!152 = !DILocation(line: 106, column: 18, scope: !138)
!153 = !DILocation(line: 106, column: 38, scope: !138)
!154 = !DILocation(line: 106, column: 32, scope: !138)
!155 = !DILocation(line: 106, column: 2, scope: !138)
!156 = !DILocation(line: 106, column: 16, scope: !138)
!157 = !DILocation(line: 107, column: 18, scope: !138)
!158 = !DILocation(line: 107, column: 38, scope: !138)
!159 = !DILocation(line: 107, column: 32, scope: !138)
!160 = !DILocation(line: 107, column: 2, scope: !138)
!161 = !DILocation(line: 107, column: 16, scope: !138)
!162 = !DILocation(line: 109, column: 18, scope: !138)
!163 = !DILocation(line: 109, column: 38, scope: !138)
!164 = !DILocation(line: 109, column: 32, scope: !138)
!165 = !DILocation(line: 109, column: 7, scope: !138)
!166 = !DILocation(line: 109, column: 16, scope: !138)
!167 = !DILocation(line: 110, column: 18, scope: !138)
!168 = !DILocation(line: 110, column: 38, scope: !138)
!169 = !DILocation(line: 110, column: 32, scope: !138)
!170 = !DILocation(line: 110, column: 2, scope: !138)
!171 = !DILocation(line: 110, column: 16, scope: !138)
!172 = !DILocation(line: 111, column: 18, scope: !138)
!173 = !DILocation(line: 111, column: 38, scope: !138)
!174 = !DILocation(line: 111, column: 32, scope: !138)
!175 = !DILocation(line: 111, column: 2, scope: !138)
!176 = !DILocation(line: 111, column: 16, scope: !138)
!177 = !DILocation(line: 112, column: 2, scope: !138)
!178 = distinct !DISubprogram(name: "SphBoundBox", scope: !1, file: !1, line: 128, type: !34, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!180 = !DILocalVariable(name: "po", arg: 1, scope: !178, file: !1, line: 128, type: !36)
!181 = !DILocalVariable(name: "i", scope: !178, file: !1, line: 130, type: !41)
!182 = !DILocalVariable(name: "ps", scope: !178, file: !1, line: 131, type: !3)
!183 = !DILocalVariable(name: "pe", scope: !178, file: !1, line: 132, type: !57)
!184 = !DILocalVariable(name: "pbb", scope: !178, file: !1, line: 133, type: !145)
!185 = !DILocalVariable(name: "minx", scope: !178, file: !1, line: 134, type: !12)
!186 = !DILocalVariable(name: "maxx", scope: !178, file: !1, line: 134, type: !12)
!187 = !DILocalVariable(name: "miny", scope: !178, file: !1, line: 135, type: !12)
!188 = !DILocalVariable(name: "maxy", scope: !178, file: !1, line: 135, type: !12)
!189 = !DILocalVariable(name: "minz", scope: !178, file: !1, line: 136, type: !12)
!190 = !DILocalVariable(name: "maxz", scope: !178, file: !1, line: 136, type: !12)
!191 = !DILocation(line: 0, scope: !178)
!192 = !DILocation(line: 144, column: 22, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 144, column: 2)
!194 = distinct !DILexicalBlock(scope: !178, file: !1, line: 144, column: 2)
!195 = !DILocation(line: 144, column: 16, scope: !193)
!196 = !DILocation(line: 144, column: 2, scope: !194)
!197 = !DILocation(line: 138, column: 13, scope: !178)
!198 = !DILocation(line: 146, column: 23, scope: !199)
!199 = distinct !DILexicalBlock(scope: !193, file: !1, line: 145, column: 3)
!200 = !DILocation(line: 147, column: 3, scope: !199)
!201 = !DILocation(line: 149, column: 10, scope: !199)
!202 = !DILocation(line: 150, column: 10, scope: !199)
!203 = !DILocation(line: 151, column: 10, scope: !199)
!204 = !DILocation(line: 153, column: 10, scope: !199)
!205 = !DILocation(line: 154, column: 10, scope: !199)
!206 = !DILocation(line: 155, column: 10, scope: !199)
!207 = !DILocation(line: 157, column: 5, scope: !199)
!208 = !DILocation(line: 144, column: 36, scope: !193)
!209 = distinct !{!209, !196, !210, !135, !136}
!210 = !DILocation(line: 158, column: 3, scope: !194)
!211 = !DILocation(line: 139, column: 15, scope: !178)
!212 = !DILocation(line: 160, column: 16, scope: !178)
!213 = !DILocation(line: 161, column: 2, scope: !178)
!214 = !DILocation(line: 161, column: 16, scope: !178)
!215 = !DILocation(line: 162, column: 2, scope: !178)
!216 = !DILocation(line: 162, column: 16, scope: !178)
!217 = !DILocation(line: 164, column: 7, scope: !178)
!218 = !DILocation(line: 164, column: 16, scope: !178)
!219 = !DILocation(line: 165, column: 2, scope: !178)
!220 = !DILocation(line: 165, column: 16, scope: !178)
!221 = !DILocation(line: 166, column: 2, scope: !178)
!222 = !DILocation(line: 166, column: 16, scope: !178)
!223 = !DILocation(line: 167, column: 2, scope: !178)
!224 = distinct !DISubprogram(name: "SphNormal", scope: !1, file: !1, line: 189, type: !225, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227, !236, !236}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !5, line: 514, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !5, line: 506, size: 320, elements: !230)
!230 = !{!231, !232, !233, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !229, file: !5, line: 508, baseType: !12, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !229, file: !5, line: 509, baseType: !57, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !229, file: !5, line: 510, baseType: !12, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !229, file: !5, line: 511, baseType: !12, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !229, file: !5, line: 512, baseType: !12, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!237 = !{!238, !239, !240, !241, !242}
!238 = !DILocalVariable(name: "hit", arg: 1, scope: !224, file: !1, line: 189, type: !227)
!239 = !DILocalVariable(name: "Pi", arg: 2, scope: !224, file: !1, line: 189, type: !236)
!240 = !DILocalVariable(name: "Ni", arg: 3, scope: !224, file: !1, line: 189, type: !236)
!241 = !DILocalVariable(name: "pe", scope: !224, file: !1, line: 191, type: !57)
!242 = !DILocalVariable(name: "ps", scope: !224, file: !1, line: 192, type: !3)
!243 = !DILocation(line: 0, scope: !224)
!244 = !DILocation(line: 196, column: 12, scope: !224)
!245 = !DILocation(line: 197, column: 21, scope: !224)
!246 = !DILocation(line: 198, column: 2, scope: !247)
!247 = distinct !DILexicalBlock(scope: !224, file: !1, line: 198, column: 2)
!248 = !DILocation(line: 200, column: 15, scope: !224)
!249 = !DILocation(line: 200, column: 8, scope: !224)
!250 = !DILocation(line: 201, column: 15, scope: !224)
!251 = !DILocation(line: 201, column: 8, scope: !224)
!252 = !DILocation(line: 202, column: 15, scope: !224)
!253 = !DILocation(line: 202, column: 8, scope: !224)
!254 = !DILocation(line: 203, column: 2, scope: !224)
!255 = distinct !DISubprogram(name: "SphDataNormalize", scope: !1, file: !1, line: 220, type: !256, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !36, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267}
!260 = !DILocalVariable(name: "po", arg: 1, scope: !255, file: !1, line: 220, type: !36)
!261 = !DILocalVariable(name: "normMat", arg: 2, scope: !255, file: !1, line: 220, type: !258)
!262 = !DILocalVariable(name: "i", scope: !255, file: !1, line: 222, type: !41)
!263 = !DILocalVariable(name: "ps", scope: !255, file: !1, line: 223, type: !3)
!264 = !DILocalVariable(name: "pe", scope: !255, file: !1, line: 224, type: !57)
!265 = !DILocalVariable(name: "surf_point", scope: !255, file: !1, line: 225, type: !9)
!266 = !DILocalVariable(name: "center_point", scope: !255, file: !1, line: 226, type: !9)
!267 = !DILocalVariable(name: "rad_vector", scope: !255, file: !1, line: 227, type: !9)
!268 = !DILocation(line: 227, column: 8, scope: !255)
!269 = !DILocation(line: 0, scope: !255)
!270 = !DILocation(line: 225, column: 2, scope: !255)
!271 = !DILocation(line: 225, column: 8, scope: !255)
!272 = !DILocation(line: 226, column: 2, scope: !255)
!273 = !DILocation(line: 226, column: 8, scope: !255)
!274 = !DILocation(line: 229, column: 25, scope: !255)
!275 = !DILocation(line: 229, column: 2, scope: !255)
!276 = !DILocation(line: 233, column: 22, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 233, column: 2)
!278 = distinct !DILexicalBlock(scope: !255, file: !1, line: 233, column: 2)
!279 = !DILocation(line: 233, column: 16, scope: !277)
!280 = !DILocation(line: 233, column: 2, scope: !278)
!281 = !DILocation(line: 231, column: 11, scope: !255)
!282 = !DILocation(line: 235, column: 22, scope: !283)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 234, column: 3)
!284 = !DILocation(line: 237, column: 26, scope: !283)
!285 = !DILocation(line: 237, column: 3, scope: !283)
!286 = !DILocation(line: 239, column: 19, scope: !283)
!287 = !DILocation(line: 239, column: 39, scope: !283)
!288 = !DILocation(line: 239, column: 33, scope: !283)
!289 = !DILocation(line: 239, column: 17, scope: !283)
!290 = !DILocation(line: 240, column: 19, scope: !283)
!291 = !DILocation(line: 240, column: 17, scope: !283)
!292 = !DILocation(line: 241, column: 19, scope: !283)
!293 = !DILocation(line: 241, column: 17, scope: !283)
!294 = !DILocation(line: 242, column: 17, scope: !283)
!295 = !DILocation(line: 244, column: 21, scope: !283)
!296 = !DILocation(line: 244, column: 19, scope: !283)
!297 = !DILocation(line: 245, column: 21, scope: !283)
!298 = !DILocation(line: 245, column: 19, scope: !283)
!299 = !DILocation(line: 246, column: 21, scope: !283)
!300 = !DILocation(line: 246, column: 19, scope: !283)
!301 = !DILocation(line: 247, column: 19, scope: !283)
!302 = !DILocation(line: 252, column: 3, scope: !283)
!303 = !DILocation(line: 253, column: 3, scope: !283)
!304 = !DILocation(line: 258, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !283, file: !1, line: 258, column: 3)
!306 = !DILocation(line: 259, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !283, file: !1, line: 259, column: 3)
!308 = !DILocation(line: 261, column: 14, scope: !283)
!309 = !DILocation(line: 261, column: 12, scope: !283)
!310 = !DILocation(line: 262, column: 22, scope: !283)
!311 = !DILocation(line: 262, column: 7, scope: !283)
!312 = !DILocation(line: 262, column: 12, scope: !283)
!313 = !DILocation(line: 264, column: 5, scope: !283)
!314 = !DILocation(line: 233, column: 36, scope: !277)
!315 = distinct !{!315, !280, !316, !135, !136}
!316 = !DILocation(line: 265, column: 3, scope: !278)
!317 = !DILocation(line: 266, column: 2, scope: !255)
!318 = !DISubprogram(name: "NormalizeBoundBox", scope: !5, file: !5, line: 808, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !145, !258}
!321 = !DISubprogram(name: "VecMatMult", scope: !5, file: !5, line: 893, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !236, !258, !236}
!324 = distinct !DISubprogram(name: "SphPeIntersect", scope: !1, file: !1, line: 291, type: !325, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!325 = !DISubroutineType(types: !326)
!326 = !{!41, !327, !57, !227}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !5, line: 625, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !5, line: 611, size: 7104, elements: !330)
!330 = !{!331, !333, !334, !335, !336, !337, !338, !408, !409, !410, !414, !417}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !329, file: !5, line: 613, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !5, line: 301, baseType: !42)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !329, file: !5, line: 614, baseType: !41, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !329, file: !5, line: 614, baseType: !41, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !329, file: !5, line: 615, baseType: !98, size: 192, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !329, file: !5, line: 616, baseType: !98, size: 192, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !329, file: !5, line: 617, baseType: !41, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !329, file: !5, line: 618, baseType: !339, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !5, line: 603, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !5, line: 582, size: 1216, elements: !342)
!342 = !{!343, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !341, file: !5, line: 584, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !5, line: 572, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !5, line: 539, size: 1152, elements: !347)
!347 = !{!348, !349, !365, !369, !371, !372, !374, !375, !376, !377, !378, !395}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !346, file: !5, line: 541, baseType: !41, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !346, file: !5, line: 542, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !5, line: 405, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !5, line: 394, size: 320, elements: !354)
!354 = !{!355, !356, !357, !359, !360, !361}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !353, file: !5, line: 396, baseType: !41, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !353, file: !5, line: 397, baseType: !41, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !5, line: 398, baseType: !358, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !353, file: !5, line: 399, baseType: !18, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !353, file: !5, line: 400, baseType: !19, size: 8, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !353, file: !5, line: 403, baseType: !362, size: 56, offset: 264)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 56, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 7)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !346, file: !5, line: 548, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !5, line: 298, baseType: !368)
!368 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !346, file: !5, line: 555, baseType: !370, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !346, file: !5, line: 556, baseType: !41, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !346, file: !5, line: 558, baseType: !373, size: 192, offset: 320)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !53)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !346, file: !5, line: 562, baseType: !41, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !346, file: !5, line: 563, baseType: !52, size: 192, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !346, file: !5, line: 564, baseType: !52, size: 192, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !346, file: !5, line: 566, baseType: !41, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !346, file: !5, line: 569, baseType: !379, size: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !5, line: 535, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !5, line: 522, size: 960, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !381, file: !5, line: 524, baseType: !370, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !381, file: !5, line: 525, baseType: !52, size: 192, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !381, file: !5, line: 527, baseType: !41, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !381, file: !5, line: 528, baseType: !373, size: 192, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !381, file: !5, line: 529, baseType: !373, size: 192, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !381, file: !5, line: 531, baseType: !41, size: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !381, file: !5, line: 532, baseType: !41, size: 64, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !381, file: !5, line: 533, baseType: !391, size: 128, offset: 832)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, elements: !393)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!393 = !{!394}
!394 = !DISubrange(count: 2)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !5, line: 570, baseType: !396, size: 64, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !341, file: !5, line: 585, baseType: !52, size: 192, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !341, file: !5, line: 587, baseType: !41, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !341, file: !5, line: 589, baseType: !12, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !341, file: !5, line: 591, baseType: !41, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !341, file: !5, line: 593, baseType: !12, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !341, file: !5, line: 595, baseType: !52, size: 192, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !341, file: !5, line: 596, baseType: !373, size: 192, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !341, file: !5, line: 597, baseType: !41, size: 64, offset: 896)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !341, file: !5, line: 600, baseType: !373, size: 192, offset: 960)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !5, line: 601, baseType: !407, size: 64, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !329, file: !5, line: 619, baseType: !41, size: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !329, file: !5, line: 620, baseType: !373, size: 192, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !329, file: !5, line: 621, baseType: !411, size: 6080, offset: 960)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 6080, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 5)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !329, file: !5, line: 622, baseType: !415, size: 32, offset: 7040)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !5, line: 307, baseType: !416)
!416 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !329, file: !5, line: 623, baseType: !415, size: 32, offset: 7072)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!419 = !DILocalVariable(name: "pr", arg: 1, scope: !324, file: !1, line: 291, type: !327)
!420 = !DILocalVariable(name: "pe", arg: 2, scope: !324, file: !1, line: 291, type: !57)
!421 = !DILocalVariable(name: "hit", arg: 3, scope: !324, file: !1, line: 291, type: !227)
!422 = !DILocalVariable(name: "nhits", scope: !324, file: !1, line: 293, type: !41)
!423 = !DILocalVariable(name: "b", scope: !324, file: !1, line: 294, type: !12)
!424 = !DILocalVariable(name: "disc", scope: !324, file: !1, line: 294, type: !12)
!425 = !DILocalVariable(name: "t1", scope: !324, file: !1, line: 294, type: !12)
!426 = !DILocalVariable(name: "t2", scope: !324, file: !1, line: 294, type: !12)
!427 = !DILocalVariable(name: "vsq", scope: !324, file: !1, line: 294, type: !12)
!428 = !DILocalVariable(name: "ps", scope: !324, file: !1, line: 295, type: !3)
!429 = !DILocalVariable(name: "V", scope: !324, file: !1, line: 296, type: !9)
!430 = !DILocalVariable(name: "sphhit", scope: !324, file: !1, line: 297, type: !227)
!431 = !DILocation(line: 296, column: 8, scope: !324)
!432 = !DILocation(line: 0, scope: !324)
!433 = !DILocation(line: 299, column: 23, scope: !324)
!434 = !DILocation(line: 302, column: 2, scope: !435)
!435 = distinct !DILexicalBlock(scope: !324, file: !1, line: 302, column: 2)
!436 = !DILocation(line: 303, column: 8, scope: !324)
!437 = !DILocation(line: 304, column: 8, scope: !324)
!438 = !DILocation(line: 306, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !324, file: !1, line: 306, column: 6)
!440 = !DILocation(line: 306, column: 10, scope: !439)
!441 = !DILocation(line: 306, column: 22, scope: !439)
!442 = !DILocation(line: 309, column: 13, scope: !324)
!443 = !DILocation(line: 309, column: 19, scope: !324)
!444 = !DILocation(line: 310, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !324, file: !1, line: 310, column: 6)
!446 = !DILocation(line: 310, column: 6, scope: !324)
!447 = !DILocation(line: 313, column: 9, scope: !324)
!448 = !DILocation(line: 314, column: 11, scope: !324)
!449 = !DILocation(line: 315, column: 11, scope: !324)
!450 = !DILocation(line: 317, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !324, file: !1, line: 317, column: 6)
!452 = !DILocation(line: 317, column: 6, scope: !324)
!453 = !DILocation(line: 321, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !324, file: !1, line: 321, column: 6)
!455 = !DILocation(line: 321, column: 6, scope: !324)
!456 = !DILocation(line: 323, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 323, column: 3)
!458 = distinct !DILexicalBlock(scope: !454, file: !1, line: 322, column: 3)
!459 = !DILocation(line: 324, column: 9, scope: !458)
!460 = !DILocation(line: 326, column: 3, scope: !458)
!461 = !DILocation(line: 328, column: 2, scope: !462)
!462 = distinct !DILexicalBlock(scope: !324, file: !1, line: 328, column: 2)
!463 = !DILocation(line: 331, column: 2, scope: !324)
!464 = !DILocation(line: 332, column: 2, scope: !324)
!465 = distinct !DISubprogram(name: "SphIntersect", scope: !1, file: !1, line: 350, type: !466, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!41, !327, !36, !227}
!468 = !{!469, !470, !471, !472, !473, !474, !475}
!469 = !DILocalVariable(name: "pr", arg: 1, scope: !465, file: !1, line: 350, type: !327)
!470 = !DILocalVariable(name: "po", arg: 2, scope: !465, file: !1, line: 350, type: !36)
!471 = !DILocalVariable(name: "hit", arg: 3, scope: !465, file: !1, line: 350, type: !227)
!472 = !DILocalVariable(name: "i", scope: !465, file: !1, line: 352, type: !41)
!473 = !DILocalVariable(name: "nhits", scope: !465, file: !1, line: 353, type: !41)
!474 = !DILocalVariable(name: "pe", scope: !465, file: !1, line: 354, type: !57)
!475 = !DILocalVariable(name: "newhit", scope: !465, file: !1, line: 355, type: !476)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 640, elements: !393)
!477 = !DILocation(line: 0, scope: !465)
!478 = !DILocation(line: 355, column: 2, scope: !465)
!479 = !DILocation(line: 355, column: 10, scope: !465)
!480 = !DILocation(line: 360, column: 12, scope: !465)
!481 = !DILocation(line: 361, column: 11, scope: !465)
!482 = !DILocation(line: 363, column: 22, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 363, column: 2)
!484 = distinct !DILexicalBlock(scope: !465, file: !1, line: 363, column: 2)
!485 = !DILocation(line: 363, column: 16, scope: !483)
!486 = !DILocation(line: 363, column: 2, scope: !484)
!487 = !DILocation(line: 365, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 365, column: 7)
!489 = distinct !DILexicalBlock(scope: !483, file: !1, line: 364, column: 3)
!490 = !DILocation(line: 365, column: 7, scope: !489)
!491 = !DILocation(line: 366, column: 18, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !1, line: 366, column: 8)
!493 = !DILocation(line: 366, column: 29, scope: !492)
!494 = !DILocation(line: 366, column: 20, scope: !492)
!495 = !DILocation(line: 366, column: 8, scope: !488)
!496 = !DILocation(line: 368, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !1, line: 367, column: 5)
!498 = !DILocation(line: 369, column: 18, scope: !497)
!499 = !DILocation(line: 370, column: 30, scope: !497)
!500 = !DILocation(line: 370, column: 18, scope: !497)
!501 = !DILocation(line: 371, column: 5, scope: !497)
!502 = !DILocation(line: 372, column: 5, scope: !489)
!503 = !DILocation(line: 363, column: 36, scope: !483)
!504 = distinct !{!504, !486, !505, !135, !136}
!505 = !DILocation(line: 373, column: 3, scope: !484)
!506 = !DILocation(line: 376, column: 2, scope: !465)
!507 = !DILocation(line: 375, column: 2, scope: !465)
!508 = distinct !DISubprogram(name: "SphTransform", scope: !1, file: !1, line: 394, type: !509, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !36, !258, !258}
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!512 = !DILocalVariable(name: "po", arg: 1, scope: !508, file: !1, line: 394, type: !36)
!513 = !DILocalVariable(name: "xtrans", arg: 2, scope: !508, file: !1, line: 394, type: !258)
!514 = !DILocalVariable(name: "xinvT", arg: 3, scope: !508, file: !1, line: 394, type: !258)
!515 = !DILocalVariable(name: "i", scope: !508, file: !1, line: 396, type: !41)
!516 = !DILocalVariable(name: "numelems", scope: !508, file: !1, line: 397, type: !41)
!517 = !DILocalVariable(name: "new_rad", scope: !508, file: !1, line: 398, type: !12)
!518 = !DILocalVariable(name: "ps", scope: !508, file: !1, line: 399, type: !3)
!519 = !DILocalVariable(name: "pe", scope: !508, file: !1, line: 400, type: !57)
!520 = !DILocalVariable(name: "surf_point", scope: !508, file: !1, line: 401, type: !9)
!521 = !DILocalVariable(name: "center_point", scope: !508, file: !1, line: 402, type: !9)
!522 = !DILocalVariable(name: "rad_vector", scope: !508, file: !1, line: 403, type: !9)
!523 = !DILocation(line: 403, column: 8, scope: !508)
!524 = !DILocation(line: 0, scope: !508)
!525 = !DILocation(line: 401, column: 2, scope: !508)
!526 = !DILocation(line: 401, column: 8, scope: !508)
!527 = !DILocation(line: 402, column: 2, scope: !508)
!528 = !DILocation(line: 402, column: 8, scope: !508)
!529 = !DILocation(line: 406, column: 17, scope: !508)
!530 = !DILocation(line: 408, column: 16, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 408, column: 2)
!532 = distinct !DILexicalBlock(scope: !508, file: !1, line: 408, column: 2)
!533 = !DILocation(line: 408, column: 2, scope: !532)
!534 = !DILocation(line: 405, column: 12, scope: !508)
!535 = !DILocation(line: 410, column: 22, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !1, line: 409, column: 3)
!537 = !DILocation(line: 414, column: 19, scope: !536)
!538 = !DILocation(line: 414, column: 39, scope: !536)
!539 = !DILocation(line: 414, column: 33, scope: !536)
!540 = !DILocation(line: 414, column: 17, scope: !536)
!541 = !DILocation(line: 415, column: 19, scope: !536)
!542 = !DILocation(line: 415, column: 17, scope: !536)
!543 = !DILocation(line: 416, column: 19, scope: !536)
!544 = !DILocation(line: 416, column: 17, scope: !536)
!545 = !DILocation(line: 417, column: 17, scope: !536)
!546 = !DILocation(line: 419, column: 21, scope: !536)
!547 = !DILocation(line: 419, column: 19, scope: !536)
!548 = !DILocation(line: 420, column: 21, scope: !536)
!549 = !DILocation(line: 420, column: 19, scope: !536)
!550 = !DILocation(line: 421, column: 21, scope: !536)
!551 = !DILocation(line: 421, column: 19, scope: !536)
!552 = !DILocation(line: 422, column: 19, scope: !536)
!553 = !DILocation(line: 426, column: 3, scope: !536)
!554 = !DILocation(line: 427, column: 3, scope: !536)
!555 = !DILocation(line: 431, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !536, file: !1, line: 431, column: 3)
!557 = !DILocation(line: 432, column: 3, scope: !558)
!558 = distinct !DILexicalBlock(scope: !536, file: !1, line: 432, column: 3)
!559 = !DILocation(line: 434, column: 13, scope: !536)
!560 = !DILocation(line: 436, column: 22, scope: !561)
!561 = distinct !DILexicalBlock(scope: !536, file: !1, line: 436, column: 7)
!562 = !DILocation(line: 436, column: 15, scope: !561)
!563 = !DILocation(line: 436, column: 7, scope: !536)
!564 = !DILocation(line: 438, column: 13, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 437, column: 4)
!566 = !DILocation(line: 439, column: 23, scope: !565)
!567 = !DILocation(line: 439, column: 8, scope: !565)
!568 = !DILocation(line: 439, column: 13, scope: !565)
!569 = !DILocation(line: 440, column: 4, scope: !565)
!570 = !DILocation(line: 442, column: 5, scope: !536)
!571 = !DILocation(line: 408, column: 29, scope: !531)
!572 = distinct !{!572, !533, !573, !135, !136}
!573 = !DILocation(line: 443, column: 3, scope: !532)
!574 = !DILocation(line: 444, column: 2, scope: !508)
!575 = distinct !DISubprogram(name: "SphRead", scope: !1, file: !1, line: 461, type: !576, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !36, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !580, line: 7, baseType: !581)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !582, line: 49, size: 1728, elements: !583)
!582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!583 = !{!584, !586, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !601, !603, !604, !605, !608, !610, !612, !616, !619, !621, !624, !627, !628, !630, !633, !634}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !581, file: !582, line: 51, baseType: !585, size: 32)
!585 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !581, file: !582, line: 54, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !581, file: !582, line: 55, baseType: !587, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !581, file: !582, line: 56, baseType: !587, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !581, file: !582, line: 57, baseType: !587, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !581, file: !582, line: 58, baseType: !587, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !581, file: !582, line: 59, baseType: !587, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !581, file: !582, line: 60, baseType: !587, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !581, file: !582, line: 61, baseType: !587, size: 64, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !581, file: !582, line: 64, baseType: !587, size: 64, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !581, file: !582, line: 65, baseType: !587, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !581, file: !582, line: 66, baseType: !587, size: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !581, file: !582, line: 68, baseType: !599, size: 64, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !582, line: 36, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !581, file: !582, line: 70, baseType: !602, size: 64, offset: 832)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !581, file: !582, line: 72, baseType: !585, size: 32, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !581, file: !582, line: 73, baseType: !585, size: 32, offset: 928)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !581, file: !582, line: 74, baseType: !606, size: 64, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !607, line: 152, baseType: !42)
!607 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !581, file: !582, line: 77, baseType: !609, size: 16, offset: 1024)
!609 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !581, file: !582, line: 78, baseType: !611, size: 8, offset: 1040)
!611 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !581, file: !582, line: 79, baseType: !613, size: 8, offset: 1048)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 1)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !581, file: !582, line: 81, baseType: !617, size: 64, offset: 1088)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !582, line: 43, baseType: null)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !581, file: !582, line: 89, baseType: !620, size: 64, offset: 1152)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !607, line: 153, baseType: !42)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !581, file: !582, line: 91, baseType: !622, size: 64, offset: 1216)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !582, line: 37, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !581, file: !582, line: 92, baseType: !625, size: 64, offset: 1280)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !582, line: 38, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !581, file: !582, line: 93, baseType: !602, size: 64, offset: 1344)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !581, file: !582, line: 94, baseType: !629, size: 64, offset: 1408)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !581, file: !582, line: 95, baseType: !631, size: 64, offset: 1472)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !632, line: 46, baseType: !368)
!632 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !581, file: !582, line: 96, baseType: !585, size: 32, offset: 1536)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !581, file: !582, line: 98, baseType: !635, size: 160, offset: 1568)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 20)
!638 = !{!639, !640, !641, !642, !643, !644}
!639 = !DILocalVariable(name: "po", arg: 1, scope: !575, file: !1, line: 461, type: !36)
!640 = !DILocalVariable(name: "pf", arg: 2, scope: !575, file: !1, line: 461, type: !578)
!641 = !DILocalVariable(name: "i", scope: !575, file: !1, line: 463, type: !41)
!642 = !DILocalVariable(name: "instat", scope: !575, file: !1, line: 464, type: !41)
!643 = !DILocalVariable(name: "ps", scope: !575, file: !1, line: 465, type: !3)
!644 = !DILocalVariable(name: "pe", scope: !575, file: !1, line: 466, type: !57)
!645 = !DILocation(line: 0, scope: !575)
!646 = !DILocation(line: 468, column: 11, scope: !575)
!647 = !DILocation(line: 469, column: 39, scope: !575)
!648 = !DILocation(line: 469, column: 34, scope: !575)
!649 = !DILocation(line: 469, column: 7, scope: !575)
!650 = !DILocation(line: 471, column: 22, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 471, column: 2)
!652 = distinct !DILexicalBlock(scope: !575, file: !1, line: 471, column: 2)
!653 = !DILocation(line: 471, column: 16, scope: !651)
!654 = !DILocation(line: 471, column: 2, scope: !652)
!655 = !DILocation(line: 473, column: 61, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !1, line: 472, column: 3)
!657 = !DILocation(line: 473, column: 79, scope: !656)
!658 = !DILocation(line: 473, column: 101, scope: !656)
!659 = !DILocation(line: 473, column: 12, scope: !656)
!660 = !DILocation(line: 475, column: 14, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !1, line: 475, column: 7)
!662 = !DILocation(line: 475, column: 7, scope: !656)
!663 = !DILocation(line: 477, column: 4, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !1, line: 476, column: 4)
!665 = !DILocation(line: 478, column: 4, scope: !664)
!666 = !DILocation(line: 481, column: 3, scope: !656)
!667 = !DILocation(line: 481, column: 18, scope: !656)
!668 = !DILocation(line: 482, column: 24, scope: !656)
!669 = !DILocation(line: 482, column: 27, scope: !656)
!670 = !DILocation(line: 482, column: 7, scope: !656)
!671 = !DILocation(line: 482, column: 18, scope: !656)
!672 = !DILocation(line: 484, column: 7, scope: !656)
!673 = !DILocation(line: 484, column: 18, scope: !656)
!674 = !DILocation(line: 485, column: 7, scope: !656)
!675 = !DILocation(line: 485, column: 18, scope: !656)
!676 = !DILocation(line: 487, column: 3, scope: !656)
!677 = !DILocation(line: 489, column: 5, scope: !656)
!678 = !DILocation(line: 490, column: 5, scope: !656)
!679 = !DILocation(line: 471, column: 36, scope: !651)
!680 = distinct !{!680, !654, !681, !135, !136}
!681 = !DILocation(line: 491, column: 3, scope: !652)
!682 = !DILocation(line: 492, column: 2, scope: !575)
!683 = !DISubprogram(name: "GlobalMalloc", scope: !5, file: !5, line: 909, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!684 = !DISubroutineType(types: !685)
!685 = !{!629, !367, !18}
