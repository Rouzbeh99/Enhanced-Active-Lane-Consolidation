; ModuleID = 'tri.c'
source_filename = "tri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.tri = type { [3 x double], double, ptr, ptr, [3 x i64], i64, i64, i64 }
%struct.irecord = type { double, ptr, double, double, double }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }

@.str = private unnamed_addr constant [5 x i8] c"poly\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"\09triangle: %ld triangles.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\09\09Vertices: 3   Plane eq: %f %f %f %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09\09%f %f %f \0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"tri.c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Error in TriRead: vertex %ld.\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Error in TriRead: vertex normal %ld.\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c" %lf %lf %lf\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Error in TriRead: face normal %ld.\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Error in TriRead: vertex index %ld.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Error in TriRead: vertex normal indicator.\00", align 1
@str.17 = private unnamed_addr constant [41 x i8] c"Error in TriRead: face normal indicator.\00", align 1
@str.18 = private unnamed_addr constant [30 x i8] c"Error in TriRead: totalverts.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @TriName() local_unnamed_addr #0 !dbg !38 {
entry:
  ret ptr @.str, !dbg !42
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @TriPrint(ptr nocapture noundef readonly %po) local_unnamed_addr #1 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !111, metadata !DIExpression()), !dbg !120
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !121
  %0 = load ptr, ptr %pelem, align 8, !dbg !121
  call void @llvm.dbg.value(metadata ptr %0, metadata !119, metadata !DIExpression()), !dbg !120
  %1 = load ptr, ptr @stderr, align 8, !dbg !122
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !123
  %2 = load i64, ptr %numelements, align 8, !dbg !123
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef %2) #14, !dbg !124
  call void @llvm.dbg.value(metadata i64 0, metadata !112, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata ptr %0, metadata !119, metadata !DIExpression()), !dbg !120
  %3 = load i64, ptr %numelements, align 8, !dbg !125
  %cmp35 = icmp sgt i64 %3, 0, !dbg !128
  br i1 %cmp35, label %for.body, label %for.end19, !dbg !129

for.body:                                         ; preds = %entry, %for.end
  %pe.037 = phi ptr [ %incdec.ptr16, %for.end ], [ %0, %entry ]
  %i.036 = phi i64 [ %inc18, %for.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %pe.037, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 %i.036, metadata !112, metadata !DIExpression()), !dbg !120
  %data = getelementptr inbounds %struct.element, ptr %pe.037, i64 0, i32 2, !dbg !130
  %4 = load ptr, ptr %data, align 8, !dbg !130
  call void @llvm.dbg.value(metadata ptr %4, metadata !118, metadata !DIExpression()), !dbg !120
  %5 = load ptr, ptr @stderr, align 8, !dbg !132
  %6 = load double, ptr %4, align 8, !dbg !133
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1, !dbg !134
  %7 = load double, ptr %arrayidx3, align 8, !dbg !134
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2, !dbg !135
  %8 = load double, ptr %arrayidx5, align 8, !dbg !135
  %d = getelementptr inbounds %struct.tri, ptr %4, i64 0, i32 1, !dbg !136
  %9 = load double, ptr %d, align 8, !dbg !136
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2, double noundef %6, double noundef %7, double noundef %8, double noundef %9) #14, !dbg !137
  %vptr7 = getelementptr inbounds %struct.tri, ptr %4, i64 0, i32 2, !dbg !138
  %10 = load ptr, ptr %vptr7, align 8, !dbg !138
  call void @llvm.dbg.value(metadata ptr %10, metadata !116, metadata !DIExpression()), !dbg !120
  %vindex8 = getelementptr inbounds %struct.tri, ptr %4, i64 0, i32 4, !dbg !139
  call void @llvm.dbg.value(metadata ptr %vindex8, metadata !114, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 0, metadata !113, metadata !DIExpression()), !dbg !120
  br label %for.body11, !dbg !140

for.body11:                                       ; preds = %for.body, %for.body11
  %j.034 = phi i64 [ 0, %for.body ], [ %inc, %for.body11 ]
  %vindex.033 = phi ptr [ %vindex8, %for.body ], [ %incdec.ptr, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %j.034, metadata !113, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata ptr %vindex.033, metadata !114, metadata !DIExpression()), !dbg !120
  %11 = load i64, ptr %vindex.033, align 8, !dbg !142
  %add.ptr = getelementptr inbounds [3 x double], ptr %10, i64 %11, !dbg !145
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !117, metadata !DIExpression()), !dbg !120
  %12 = load ptr, ptr @stderr, align 8, !dbg !146
  %13 = load double, ptr %add.ptr, align 8, !dbg !147
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %10, i64 %11, i64 1, !dbg !148
  %14 = load double, ptr %arrayidx13, align 8, !dbg !148
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %10, i64 %11, i64 2, !dbg !149
  %15 = load double, ptr %arrayidx14, align 8, !dbg !149
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.3, double noundef %13, double noundef %14, double noundef %15) #14, !dbg !150
  %incdec.ptr = getelementptr inbounds i64, ptr %vindex.033, i64 1, !dbg !151
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !114, metadata !DIExpression()), !dbg !120
  %inc = add nuw nsw i64 %j.034, 1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %inc, metadata !113, metadata !DIExpression()), !dbg !120
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !153
  br i1 %exitcond.not, label %for.end, label %for.body11, !dbg !140, !llvm.loop !154

for.end:                                          ; preds = %for.body11
  %incdec.ptr16 = getelementptr inbounds %struct.element, ptr %pe.037, i64 1, !dbg !158
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16, metadata !119, metadata !DIExpression()), !dbg !120
  %inc18 = add nuw nsw i64 %i.036, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !112, metadata !DIExpression()), !dbg !120
  %16 = load i64, ptr %numelements, align 8, !dbg !125
  %cmp = icmp slt i64 %inc18, %16, !dbg !128
  br i1 %cmp, label %for.body, label %for.end19, !dbg !129, !llvm.loop !160

for.end19:                                        ; preds = %for.end, %entry
  ret void, !dbg !162
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @TriElementBoundBox(ptr nocapture noundef writeonly %pe, ptr nocapture noundef readonly %pt) local_unnamed_addr #5 !dbg !163 {
entry:
  call void @llvm.dbg.value(metadata ptr %pe, metadata !167, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %pt, metadata !168, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %pe, metadata !171, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !176, metadata !DIExpression()), !dbg !181
  %vptr1 = getelementptr inbounds %struct.tri, ptr %pt, i64 0, i32 2, !dbg !182
  %0 = load ptr, ptr %vptr1, align 8, !dbg !182
  call void @llvm.dbg.value(metadata ptr %0, metadata !173, metadata !DIExpression()), !dbg !181
  %vindex2 = getelementptr inbounds %struct.tri, ptr %pt, i64 0, i32 4, !dbg !183
  call void @llvm.dbg.value(metadata ptr %vindex2, metadata !170, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i64 0, metadata !169, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !175, metadata !DIExpression()), !dbg !181
  br label %for.body, !dbg !184

for.body:                                         ; preds = %entry, %cond.end43
  %maxz.093 = phi double [ -1.000000e+32, %entry ], [ %cond44, %cond.end43 ]
  %minz.092 = phi double [ 1.000000e+32, %entry ], [ %minz.0., %cond.end43 ]
  %maxy.091 = phi double [ -1.000000e+32, %entry ], [ %maxy.0., %cond.end43 ]
  %miny.090 = phi double [ 1.000000e+32, %entry ], [ %cond12, %cond.end43 ]
  %maxx.089 = phi double [ -1.000000e+32, %entry ], [ %cond28, %cond.end43 ]
  %minx.088 = phi double [ 1.000000e+32, %entry ], [ %minx.0., %cond.end43 ]
  %i.087 = phi i64 [ 0, %entry ], [ %inc, %cond.end43 ]
  %vindex.086 = phi ptr [ %vindex2, %entry ], [ %incdec.ptr, %cond.end43 ]
  call void @llvm.dbg.value(metadata double %maxz.093, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %minz.092, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %maxy.091, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %miny.090, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %maxx.089, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %minx.088, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i64 %i.087, metadata !169, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %vindex.086, metadata !170, metadata !DIExpression()), !dbg !181
  %1 = load i64, ptr %vindex.086, align 8, !dbg !186
  %add.ptr = getelementptr inbounds [3 x double], ptr %0, i64 %1, !dbg !189
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !174, metadata !DIExpression()), !dbg !181
  %2 = load double, ptr %add.ptr, align 8, !dbg !190
  %sub = fsub double %minx.088, %2, !dbg !190
  %cmp3 = fcmp olt double %sub, 0.000000e+00, !dbg !190
  %minx.0. = select i1 %cmp3, double %minx.088, double %2, !dbg !190
  call void @llvm.dbg.value(metadata double %minx.0., metadata !175, metadata !DIExpression()), !dbg !181
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %0, i64 %1, i64 1, !dbg !191
  %3 = load double, ptr %arrayidx5, align 8, !dbg !191
  %sub6 = fsub double %miny.090, %3, !dbg !191
  %cmp7 = fcmp olt double %sub6, 0.000000e+00, !dbg !191
  br i1 %cmp7, label %cond.end11, label %cond.false9, !dbg !191

cond.false9:                                      ; preds = %for.body
  br label %cond.end11, !dbg !191

cond.end11:                                       ; preds = %for.body, %cond.false9
  %cond12 = phi double [ %3, %cond.false9 ], [ %miny.090, %for.body ], !dbg !191
  call void @llvm.dbg.value(metadata double %cond12, metadata !177, metadata !DIExpression()), !dbg !181
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %0, i64 %1, i64 2, !dbg !192
  %4 = load double, ptr %arrayidx13, align 8, !dbg !192
  %sub14 = fsub double %minz.092, %4, !dbg !192
  %cmp15 = fcmp olt double %sub14, 0.000000e+00, !dbg !192
  %minz.0. = select i1 %cmp15, double %minz.092, double %4, !dbg !192
  call void @llvm.dbg.value(metadata double %minz.0., metadata !179, metadata !DIExpression()), !dbg !181
  %sub22 = fsub double %maxx.089, %2, !dbg !193
  %cmp23 = fcmp ogt double %sub22, 0.000000e+00, !dbg !193
  br i1 %cmp23, label %cond.end27, label %cond.false25, !dbg !193

cond.false25:                                     ; preds = %cond.end11
  br label %cond.end27, !dbg !193

cond.end27:                                       ; preds = %cond.end11, %cond.false25
  %cond28 = phi double [ %2, %cond.false25 ], [ %maxx.089, %cond.end11 ], !dbg !193
  call void @llvm.dbg.value(metadata double %cond28, metadata !176, metadata !DIExpression()), !dbg !181
  %sub30 = fsub double %maxy.091, %3, !dbg !194
  %cmp31 = fcmp ogt double %sub30, 0.000000e+00, !dbg !194
  %maxy.0. = select i1 %cmp31, double %maxy.091, double %3, !dbg !194
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !178, metadata !DIExpression()), !dbg !181
  %sub38 = fsub double %maxz.093, %4, !dbg !195
  %cmp39 = fcmp ogt double %sub38, 0.000000e+00, !dbg !195
  br i1 %cmp39, label %cond.end43, label %cond.false41, !dbg !195

cond.false41:                                     ; preds = %cond.end27
  br label %cond.end43, !dbg !195

cond.end43:                                       ; preds = %cond.end27, %cond.false41
  %cond44 = phi double [ %4, %cond.false41 ], [ %maxz.093, %cond.end27 ], !dbg !195
  call void @llvm.dbg.value(metadata double %cond44, metadata !180, metadata !DIExpression()), !dbg !181
  %incdec.ptr = getelementptr inbounds i64, ptr %vindex.086, i64 1, !dbg !196
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !170, metadata !DIExpression()), !dbg !181
  %inc = add nuw nsw i64 %i.087, 1, !dbg !197
  call void @llvm.dbg.value(metadata double %minz.0., metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %cond12, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %cond28, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %minx.0., metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i64 %inc, metadata !169, metadata !DIExpression()), !dbg !181
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !198
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !184, !llvm.loop !199

for.end:                                          ; preds = %cond.end43
  %bv = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, !dbg !201
  call void @llvm.dbg.value(metadata ptr %bv, metadata !171, metadata !DIExpression()), !dbg !181
  store double %minx.0., ptr %bv, align 8, !dbg !202
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !203
  store double %cond12, ptr %arrayidx47, align 8, !dbg !204
  %arrayidx49 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !205
  store double %minz.0., ptr %arrayidx49, align 8, !dbg !206
  %dfar = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, !dbg !207
  store double %cond28, ptr %dfar, align 8, !dbg !208
  %arrayidx52 = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, i64 1, !dbg !209
  store double %maxy.0., ptr %arrayidx52, align 8, !dbg !210
  %arrayidx54 = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, i64 2, !dbg !211
  store double %cond44, ptr %arrayidx54, align 8, !dbg !212
  ret void, !dbg !213
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @TriBoundBox(ptr nocapture noundef %po) local_unnamed_addr #5 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !216, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata ptr undef, metadata !219, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata ptr %po, metadata !220, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !225, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !223, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !221, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !224, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !217, metadata !DIExpression()), !dbg !227
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !225, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !224, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !223, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !221, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !217, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata ptr undef, metadata !219, metadata !DIExpression()), !dbg !227
  %0 = load i64, ptr %numelements, align 8, !dbg !228
  %cmp111 = icmp sgt i64 %0, 0, !dbg !231
  br i1 %cmp111, label %for.body.preheader, label %for.end, !dbg !232

for.body.preheader:                               ; preds = %entry
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !233
  %1 = load ptr, ptr %pelem, align 8, !dbg !233
  call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !227
  br label %for.body, !dbg !232

for.body:                                         ; preds = %for.body.preheader, %cond.end63
  %maxz.0119 = phi double [ %cond64, %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %minz.0118 = phi double [ %minz.0., %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %maxy.0117 = phi double [ %maxy.0., %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %miny.0116 = phi double [ %cond17, %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %maxx.0115 = phi double [ %cond40, %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %minx.0114 = phi double [ %minx.0., %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %i.0113 = phi i64 [ %inc, %cond.end63 ], [ 0, %for.body.preheader ]
  %pe.0112 = phi ptr [ %incdec.ptr, %cond.end63 ], [ %1, %for.body.preheader ]
  call void @llvm.dbg.value(metadata double %maxz.0119, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %minz.0118, metadata !225, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %maxy.0117, metadata !224, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %miny.0116, metadata !223, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %maxx.0115, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %minx.0114, metadata !221, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %i.0113, metadata !217, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata ptr %pe.0112, metadata !219, metadata !DIExpression()), !dbg !227
  %data = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 2, !dbg !234
  %2 = load ptr, ptr %data, align 8, !dbg !234
  call void @llvm.dbg.value(metadata ptr %2, metadata !218, metadata !DIExpression()), !dbg !227
  tail call void @TriElementBoundBox(ptr noundef %pe.0112, ptr noundef %2), !dbg !236
  %bv1 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, !dbg !237
  %3 = load double, ptr %bv1, align 8, !dbg !237
  %sub = fsub double %minx.0114, %3, !dbg !237
  %cmp2 = fcmp olt double %sub, 0.000000e+00, !dbg !237
  %minx.0. = select i1 %cmp2, double %minx.0114, double %3, !dbg !237
  call void @llvm.dbg.value(metadata double %minx.0., metadata !221, metadata !DIExpression()), !dbg !227
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %bv1, i64 0, i64 1, !dbg !238
  %4 = load double, ptr %arrayidx8, align 8, !dbg !238
  %sub9 = fsub double %miny.0116, %4, !dbg !238
  %cmp10 = fcmp olt double %sub9, 0.000000e+00, !dbg !238
  br i1 %cmp10, label %cond.end16, label %cond.false12, !dbg !238

cond.false12:                                     ; preds = %for.body
  br label %cond.end16, !dbg !238

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %4, %cond.false12 ], [ %miny.0116, %for.body ], !dbg !238
  call void @llvm.dbg.value(metadata double %cond17, metadata !223, metadata !DIExpression()), !dbg !227
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %bv1, i64 0, i64 2, !dbg !239
  %5 = load double, ptr %arrayidx20, align 8, !dbg !239
  %sub21 = fsub double %minz.0118, %5, !dbg !239
  %cmp22 = fcmp olt double %sub21, 0.000000e+00, !dbg !239
  %minz.0. = select i1 %cmp22, double %minz.0118, double %5, !dbg !239
  call void @llvm.dbg.value(metadata double %minz.0., metadata !225, metadata !DIExpression()), !dbg !227
  %dfar = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, !dbg !240
  %6 = load double, ptr %dfar, align 8, !dbg !240
  %sub32 = fsub double %maxx.0115, %6, !dbg !240
  %cmp33 = fcmp ogt double %sub32, 0.000000e+00, !dbg !240
  br i1 %cmp33, label %cond.end39, label %cond.false35, !dbg !240

cond.false35:                                     ; preds = %cond.end16
  br label %cond.end39, !dbg !240

cond.end39:                                       ; preds = %cond.end16, %cond.false35
  %cond40 = phi double [ %6, %cond.false35 ], [ %maxx.0115, %cond.end16 ], !dbg !240
  call void @llvm.dbg.value(metadata double %cond40, metadata !222, metadata !DIExpression()), !dbg !227
  %arrayidx43 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, i64 1, !dbg !241
  %7 = load double, ptr %arrayidx43, align 8, !dbg !241
  %sub44 = fsub double %maxy.0117, %7, !dbg !241
  %cmp45 = fcmp ogt double %sub44, 0.000000e+00, !dbg !241
  %maxy.0. = select i1 %cmp45, double %maxy.0117, double %7, !dbg !241
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !224, metadata !DIExpression()), !dbg !227
  %arrayidx55 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, i64 2, !dbg !242
  %8 = load double, ptr %arrayidx55, align 8, !dbg !242
  %sub56 = fsub double %maxz.0119, %8, !dbg !242
  %cmp57 = fcmp ogt double %sub56, 0.000000e+00, !dbg !242
  br i1 %cmp57, label %cond.end63, label %cond.false59, !dbg !242

cond.false59:                                     ; preds = %cond.end39
  br label %cond.end63, !dbg !242

cond.end63:                                       ; preds = %cond.end39, %cond.false59
  %cond64 = phi double [ %8, %cond.false59 ], [ %maxz.0119, %cond.end39 ], !dbg !242
  call void @llvm.dbg.value(metadata double %cond64, metadata !226, metadata !DIExpression()), !dbg !227
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.0112, i64 1, !dbg !243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !219, metadata !DIExpression()), !dbg !227
  %inc = add nuw nsw i64 %i.0113, 1, !dbg !244
  call void @llvm.dbg.value(metadata double %minz.0., metadata !225, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !224, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %cond17, metadata !223, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %cond40, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %minx.0., metadata !221, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %inc, metadata !217, metadata !DIExpression()), !dbg !227
  %9 = load i64, ptr %numelements, align 8, !dbg !228
  %cmp = icmp slt i64 %inc, %9, !dbg !231
  br i1 %cmp, label %for.body, label %for.end, !dbg !232, !llvm.loop !245

for.end:                                          ; preds = %cond.end63, %entry
  %minx.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minx.0., %cond.end63 ], !dbg !227
  %maxx.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond40, %cond.end63 ], !dbg !227
  %miny.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %cond17, %cond.end63 ], !dbg !227
  %maxy.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %maxy.0., %cond.end63 ], !dbg !227
  %minz.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minz.0., %cond.end63 ], !dbg !227
  %maxz.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond64, %cond.end63 ], !dbg !227
  %bv = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, !dbg !247
  call void @llvm.dbg.value(metadata ptr %bv, metadata !220, metadata !DIExpression()), !dbg !227
  store double %minx.0.lcssa, ptr %bv, align 8, !dbg !248
  %arrayidx68 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !249
  store double %miny.0.lcssa, ptr %arrayidx68, align 8, !dbg !250
  %arrayidx70 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !251
  store double %minz.0.lcssa, ptr %arrayidx70, align 8, !dbg !252
  %dfar71 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, !dbg !253
  store double %maxx.0.lcssa, ptr %dfar71, align 8, !dbg !254
  %arrayidx74 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, i64 1, !dbg !255
  store double %maxy.0.lcssa, ptr %arrayidx74, align 8, !dbg !256
  %arrayidx76 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, i64 2, !dbg !257
  store double %maxz.0.lcssa, ptr %arrayidx76, align 8, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TriNormal(ptr nocapture noundef %hit, ptr nocapture noundef readnone %Pi, ptr noundef %Ni) local_unnamed_addr #6 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata ptr %hit, metadata !274, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr %Pi, metadata !275, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr %Ni, metadata !276, metadata !DIExpression()), !dbg !283
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !284
  %0 = load ptr, ptr %pelem, align 8, !dbg !284
  call void @llvm.dbg.value(metadata ptr %0, metadata !277, metadata !DIExpression()), !dbg !283
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !285
  %1 = load ptr, ptr %data, align 8, !dbg !285
  call void @llvm.dbg.value(metadata ptr %1, metadata !278, metadata !DIExpression()), !dbg !283
  %nptr = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 3, !dbg !286
  %2 = load ptr, ptr %nptr, align 8, !dbg !286
  call void @llvm.dbg.value(metadata ptr %2, metadata !279, metadata !DIExpression()), !dbg !283
  %norminterp = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 6, !dbg !287
  %3 = load i64, ptr %norminterp, align 8, !dbg !287
  %tobool.not = icmp eq i64 %3, 0, !dbg !289
  br i1 %tobool.not, label %if.else74, label %if.then, !dbg !290

if.then:                                          ; preds = %entry
  %vorder = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 7, !dbg !291
  %4 = load i64, ptr %vorder, align 8, !dbg !291
  %cmp = icmp eq i64 %4, 1, !dbg !294
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 undef), metadata !280, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !283
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 undef), metadata !280, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !283
  br i1 %cmp, label %if.then1, label %if.else, !dbg !295

if.then1:                                         ; preds = %if.then
  %arrayidx3 = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 4, i64 1, !dbg !296
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 undef), metadata !281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !283
  %arrayidx6 = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 4, i64 2, !dbg !298
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 undef), metadata !282, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !283
  br label %if.end, !dbg !299

if.else:                                          ; preds = %if.then
  %arrayidx12 = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 4, i64 2, !dbg !300
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 undef), metadata !281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !283
  %arrayidx15 = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 4, i64 1, !dbg !302
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 undef), metadata !282, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !283
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %.pn141.in = phi ptr [ %arrayidx3, %if.then1 ], [ %arrayidx12, %if.else ]
  %.pn142.in = phi ptr [ %arrayidx6, %if.then1 ], [ %arrayidx15, %if.else ]
  %.pn.in = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 4, !dbg !303
  %.pn142 = load i64, ptr %.pn142.in, align 8, !dbg !303
  %n2.0 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn142, !dbg !303
  %.pn141 = load i64, ptr %.pn141.in, align 8, !dbg !303
  %n1.0 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn141, !dbg !303
  %.pn = load i64, ptr %.pn.in, align 8, !dbg !303
  %n0.0 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn, !dbg !303
  call void @llvm.dbg.value(metadata ptr %n2.0, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr %n1.0, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr %n0.0, metadata !280, metadata !DIExpression()), !dbg !283
  %indx = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 5, !dbg !304
  %5 = load i64, ptr %indx, align 8, !dbg !304
  switch i64 %5, label %if.end.sw.epilog_crit_edge [
    i64 1, label %sw.bb
    i64 2, label %sw.bb24
    i64 3, label %sw.bb37
  ], !dbg !305

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  %b150.phi.trans.insert = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2
  %.pre = load double, ptr %b150.phi.trans.insert, align 8, !dbg !306
  %b252.phi.trans.insert = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3
  %.pre143 = load double, ptr %b252.phi.trans.insert, align 8, !dbg !307
  %b355.phi.trans.insert = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4
  %.pre144 = load double, ptr %b355.phi.trans.insert, align 8, !dbg !308
  br label %sw.epilog, !dbg !305

sw.bb:                                            ; preds = %if.end
  %6 = load double, ptr %1, align 8, !dbg !309
  %b1 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !311
  %7 = load double, ptr %b1, align 8, !dbg !312
  %div = fdiv double %7, %6, !dbg !312
  store double %div, ptr %b1, align 8, !dbg !312
  %8 = load double, ptr %1, align 8, !dbg !313
  %b2 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !314
  %9 = load double, ptr %b2, align 8, !dbg !315
  %div20 = fdiv double %9, %8, !dbg !315
  store double %div20, ptr %b2, align 8, !dbg !315
  %10 = load double, ptr %1, align 8, !dbg !316
  %b3 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !317
  %11 = load double, ptr %b3, align 8, !dbg !318
  %div23 = fdiv double %11, %10, !dbg !318
  store double %div23, ptr %b3, align 8, !dbg !318
  br label %sw.epilog, !dbg !319

sw.bb24:                                          ; preds = %if.end
  %arrayidx26 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1, !dbg !320
  %12 = load double, ptr %arrayidx26, align 8, !dbg !320
  %b127 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !321
  %13 = load double, ptr %b127, align 8, !dbg !322
  %div28 = fdiv double %13, %12, !dbg !322
  store double %div28, ptr %b127, align 8, !dbg !322
  %14 = load double, ptr %arrayidx26, align 8, !dbg !323
  %b231 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !324
  %15 = load double, ptr %b231, align 8, !dbg !325
  %div32 = fdiv double %15, %14, !dbg !325
  store double %div32, ptr %b231, align 8, !dbg !325
  %16 = load double, ptr %arrayidx26, align 8, !dbg !326
  %b335 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !327
  %17 = load double, ptr %b335, align 8, !dbg !328
  %div36 = fdiv double %17, %16, !dbg !328
  store double %div36, ptr %b335, align 8, !dbg !328
  br label %sw.epilog, !dbg !329

sw.bb37:                                          ; preds = %if.end
  %arrayidx39 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2, !dbg !330
  %18 = load double, ptr %arrayidx39, align 8, !dbg !330
  %b140 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !331
  %19 = load double, ptr %b140, align 8, !dbg !332
  %div41 = fdiv double %19, %18, !dbg !332
  store double %div41, ptr %b140, align 8, !dbg !332
  %20 = load double, ptr %arrayidx39, align 8, !dbg !333
  %b244 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !334
  %21 = load double, ptr %b244, align 8, !dbg !335
  %div45 = fdiv double %21, %20, !dbg !335
  store double %div45, ptr %b244, align 8, !dbg !335
  %22 = load double, ptr %arrayidx39, align 8, !dbg !336
  %b348 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !337
  %23 = load double, ptr %b348, align 8, !dbg !338
  %div49 = fdiv double %23, %22, !dbg !338
  store double %div49, ptr %b348, align 8, !dbg !338
  br label %sw.epilog, !dbg !339

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %sw.bb37, %sw.bb24, %sw.bb
  %24 = phi double [ %.pre144, %if.end.sw.epilog_crit_edge ], [ %div49, %sw.bb37 ], [ %div36, %sw.bb24 ], [ %div23, %sw.bb ], !dbg !308
  %25 = phi double [ %.pre143, %if.end.sw.epilog_crit_edge ], [ %div45, %sw.bb37 ], [ %div32, %sw.bb24 ], [ %div20, %sw.bb ], !dbg !307
  %26 = phi double [ %.pre, %if.end.sw.epilog_crit_edge ], [ %div41, %sw.bb37 ], [ %div28, %sw.bb24 ], [ %div, %sw.bb ], !dbg !306
  %b150 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !306
  %27 = load double, ptr %n0.0, align 8, !dbg !340
  %b252 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !307
  %28 = load double, ptr %n1.0, align 8, !dbg !341
  %mul54 = fmul double %25, %28, !dbg !342
  %29 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %mul54), !dbg !343
  %b355 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !308
  %30 = load double, ptr %n2.0, align 8, !dbg !344
  %31 = tail call double @llvm.fmuladd.f64(double %24, double %30, double %29), !dbg !345
  store double %31, ptr %Ni, align 8, !dbg !346
  %32 = load double, ptr %b150, align 8, !dbg !347
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn, i64 1, !dbg !348
  %33 = load double, ptr %arrayidx59, align 8, !dbg !348
  %34 = load double, ptr %b252, align 8, !dbg !349
  %arrayidx61 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn141, i64 1, !dbg !350
  %35 = load double, ptr %arrayidx61, align 8, !dbg !350
  %mul62 = fmul double %34, %35, !dbg !351
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %33, double %mul62), !dbg !352
  %37 = load double, ptr %b355, align 8, !dbg !353
  %arrayidx64 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn142, i64 1, !dbg !354
  %38 = load double, ptr %arrayidx64, align 8, !dbg !354
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %38, double %36), !dbg !355
  %arrayidx65 = getelementptr inbounds double, ptr %Ni, i64 1, !dbg !356
  store double %39, ptr %arrayidx65, align 8, !dbg !357
  %40 = load double, ptr %b150, align 8, !dbg !358
  %arrayidx67 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn, i64 2, !dbg !359
  %41 = load double, ptr %arrayidx67, align 8, !dbg !359
  %42 = load double, ptr %b252, align 8, !dbg !360
  %arrayidx69 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn141, i64 2, !dbg !361
  %43 = load double, ptr %arrayidx69, align 8, !dbg !361
  %mul70 = fmul double %42, %43, !dbg !362
  %44 = tail call double @llvm.fmuladd.f64(double %40, double %41, double %mul70), !dbg !363
  %45 = load double, ptr %b355, align 8, !dbg !364
  %arrayidx72 = getelementptr inbounds [3 x double], ptr %2, i64 %.pn142, i64 2, !dbg !365
  %46 = load double, ptr %arrayidx72, align 8, !dbg !365
  %47 = tail call double @llvm.fmuladd.f64(double %45, double %46, double %44), !dbg !366
  %arrayidx73 = getelementptr inbounds double, ptr %Ni, i64 2, !dbg !367
  store double %47, ptr %arrayidx73, align 8, !dbg !368
  tail call void @VecNorm(ptr noundef nonnull %Ni) #15, !dbg !369
  br label %if.end84, !dbg !370

if.else74:                                        ; preds = %entry
  %48 = load double, ptr %1, align 8, !dbg !371
  store double %48, ptr %Ni, align 8, !dbg !371
  %arrayidx79 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1, !dbg !371
  %49 = load double, ptr %arrayidx79, align 8, !dbg !371
  %arrayidx80 = getelementptr inbounds double, ptr %Ni, i64 1, !dbg !371
  store double %49, ptr %arrayidx80, align 8, !dbg !371
  %arrayidx82 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2, !dbg !371
  %50 = load double, ptr %arrayidx82, align 8, !dbg !371
  %arrayidx83 = getelementptr inbounds double, ptr %Ni, i64 2, !dbg !371
  store double %50, ptr %arrayidx83, align 8, !dbg !371
  br label %if.end84

if.end84:                                         ; preds = %if.else74, %sw.epilog
  ret void, !dbg !373
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare !dbg !374 void @VecNorm(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @TriDataNormalize(ptr noundef %po, ptr noundef %normMat) local_unnamed_addr #6 !dbg !377 {
entry:
  %coord = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %po, metadata !385, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata ptr %normMat, metadata !386, metadata !DIExpression()), !dbg !394
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %coord) #15, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %coord, metadata !388, metadata !DIExpression()), !dbg !396
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !397
  %0 = load ptr, ptr %pelem, align 8, !dbg !397
  call void @llvm.dbg.value(metadata ptr %0, metadata !393, metadata !DIExpression()), !dbg !394
  %bv = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, !dbg !398
  tail call void @NormalizeBoundBox(ptr noundef nonnull %bv, ptr noundef %normMat) #15, !dbg !399
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !400
  %1 = load ptr, ptr %data, align 8, !dbg !400
  call void @llvm.dbg.value(metadata ptr %1, metadata !392, metadata !DIExpression()), !dbg !394
  %vptr = getelementptr inbounds %struct.tri, ptr %1, i64 0, i32 2, !dbg !401
  %2 = load ptr, ptr %vptr, align 8, !dbg !401
  call void @llvm.dbg.value(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !394
  %3 = load double, ptr %2, align 8, !dbg !402
  store double %3, ptr %coord, align 16, !dbg !403
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1, !dbg !404
  %4 = load double, ptr %arrayidx2, align 8, !dbg !404
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 1, !dbg !405
  store double %4, ptr %arrayidx3, align 8, !dbg !406
  %arrayidx4 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2, !dbg !407
  %5 = load double, ptr %arrayidx4, align 8, !dbg !407
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 2, !dbg !408
  store double %5, ptr %arrayidx5, align 16, !dbg !409
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 3, !dbg !410
  store double 1.000000e+00, ptr %arrayidx6, align 8, !dbg !394
  call void @llvm.dbg.value(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !394
  %cmp68 = fcmp une double %3, 1.000000e+32, !dbg !411
  %cmp969 = fcmp une double %4, 1.000000e+32
  %or.cond70 = select i1 %cmp68, i1 %cmp969, i1 false, !dbg !412
  %cmp1171 = fcmp une double %5, 1.000000e+32
  %or.cond4172 = select i1 %or.cond70, i1 %cmp1171, i1 false, !dbg !412
  br i1 %or.cond4172, label %while.body, label %for.cond.preheader, !dbg !412

for.cond.preheader:                               ; preds = %while.body, %entry
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !394
  %6 = load i64, ptr %numelements, align 8, !dbg !413
  %cmp2674 = icmp sgt i64 %6, 0, !dbg !416
  br i1 %cmp2674, label %for.body, label %for.end, !dbg !417

while.body:                                       ; preds = %entry, %while.body
  %pv.073 = phi ptr [ %incdec.ptr, %while.body ], [ %2, %entry ]
  call void @llvm.dbg.value(metadata ptr %pv.073, metadata !391, metadata !DIExpression()), !dbg !394
  call void @VecMatMult(ptr noundef nonnull %coord, ptr noundef %normMat, ptr noundef nonnull %coord) #15, !dbg !418
  %7 = load double, ptr %coord, align 16, !dbg !420
  store double %7, ptr %pv.073, align 8, !dbg !421
  %8 = load double, ptr %arrayidx3, align 8, !dbg !422
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %pv.073, i64 0, i64 1, !dbg !423
  store double %8, ptr %arrayidx16, align 8, !dbg !424
  %9 = load double, ptr %arrayidx5, align 16, !dbg !425
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %pv.073, i64 0, i64 2, !dbg !426
  store double %9, ptr %arrayidx18, align 8, !dbg !427
  %incdec.ptr = getelementptr inbounds [3 x double], ptr %pv.073, i64 1, !dbg !428
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !391, metadata !DIExpression()), !dbg !394
  %10 = load double, ptr %incdec.ptr, align 8, !dbg !429
  store double %10, ptr %coord, align 16, !dbg !430
  %arrayidx21 = getelementptr inbounds [3 x double], ptr %pv.073, i64 1, i64 1, !dbg !431
  %11 = load double, ptr %arrayidx21, align 8, !dbg !431
  store double %11, ptr %arrayidx3, align 8, !dbg !432
  %arrayidx23 = getelementptr inbounds [3 x double], ptr %pv.073, i64 1, i64 2, !dbg !433
  %12 = load double, ptr %arrayidx23, align 8, !dbg !433
  store double %12, ptr %arrayidx5, align 16, !dbg !434
  store double 1.000000e+00, ptr %arrayidx6, align 8, !dbg !394
  %cmp = fcmp une double %10, 1.000000e+32, !dbg !411
  %cmp9 = fcmp une double %11, 1.000000e+32
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false, !dbg !412
  %cmp11 = fcmp une double %12, 1.000000e+32
  %or.cond41 = select i1 %or.cond, i1 %cmp11, i1 false, !dbg !412
  br i1 %or.cond41, label %while.body, label %for.cond.preheader, !dbg !412, !llvm.loop !435

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %pe.076 = phi ptr [ %incdec.ptr40, %for.body ], [ %0, %for.cond.preheader ]
  %i.075 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %pe.076, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 %i.075, metadata !387, metadata !DIExpression()), !dbg !394
  %data27 = getelementptr inbounds %struct.element, ptr %pe.076, i64 0, i32 2, !dbg !438
  %13 = load ptr, ptr %data27, align 8, !dbg !438
  call void @llvm.dbg.value(metadata ptr %13, metadata !392, metadata !DIExpression()), !dbg !394
  %bv28 = getelementptr inbounds %struct.element, ptr %pe.076, i64 0, i32 3, !dbg !440
  call void @NormalizeBoundBox(ptr noundef nonnull %bv28, ptr noundef %normMat) #15, !dbg !441
  %vptr29 = getelementptr inbounds %struct.tri, ptr %13, i64 0, i32 2, !dbg !442
  %14 = load ptr, ptr %vptr29, align 8, !dbg !442
  %vindex = getelementptr inbounds %struct.tri, ptr %13, i64 0, i32 4, !dbg !443
  %15 = load i64, ptr %vindex, align 8, !dbg !444
  %add.ptr = getelementptr inbounds [3 x double], ptr %14, i64 %15, !dbg !445
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !391, metadata !DIExpression()), !dbg !394
  %16 = load double, ptr %13, align 8, !dbg !446
  %17 = load double, ptr %add.ptr, align 8, !dbg !447
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1, !dbg !448
  %18 = load double, ptr %arrayidx34, align 8, !dbg !448
  %arrayidx35 = getelementptr inbounds [3 x double], ptr %14, i64 %15, i64 1, !dbg !449
  %19 = load double, ptr %arrayidx35, align 8, !dbg !449
  %mul36 = fmul double %18, %19, !dbg !450
  %20 = call double @llvm.fmuladd.f64(double %16, double %17, double %mul36), !dbg !451
  %arrayidx38 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2, !dbg !452
  %21 = load double, ptr %arrayidx38, align 8, !dbg !452
  %arrayidx39 = getelementptr inbounds [3 x double], ptr %14, i64 %15, i64 2, !dbg !453
  %22 = load double, ptr %arrayidx39, align 8, !dbg !453
  %23 = call double @llvm.fmuladd.f64(double %21, double %22, double %20), !dbg !454
  %fneg = fneg double %23, !dbg !455
  %d = getelementptr inbounds %struct.tri, ptr %13, i64 0, i32 1, !dbg !456
  store double %fneg, ptr %d, align 8, !dbg !457
  %incdec.ptr40 = getelementptr inbounds %struct.element, ptr %pe.076, i64 1, !dbg !458
  call void @llvm.dbg.value(metadata ptr %incdec.ptr40, metadata !393, metadata !DIExpression()), !dbg !394
  %inc = add nuw nsw i64 %i.075, 1, !dbg !459
  call void @llvm.dbg.value(metadata i64 %inc, metadata !387, metadata !DIExpression()), !dbg !394
  %24 = load i64, ptr %numelements, align 8, !dbg !413
  %cmp26 = icmp slt i64 %inc, %24, !dbg !416
  br i1 %cmp26, label %for.body, label %for.end, !dbg !417, !llvm.loop !460

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %coord) #15, !dbg !462
  ret void, !dbg !462
}

declare !dbg !463 void @NormalizeBoundBox(ptr noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !466 void @VecMatMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local i64 @TriPeIntersect(ptr nocapture noundef readonly %pr, ptr noundef %pe, ptr nocapture noundef %hit) local_unnamed_addr #8 !dbg !469 {
entry:
  call void @llvm.dbg.value(metadata ptr %pr, metadata !562, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata ptr %pe, metadata !563, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata ptr %hit, metadata !564, metadata !DIExpression()), !dbg !577
  %data = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 2, !dbg !578
  %0 = load ptr, ptr %data, align 8, !dbg !578
  call void @llvm.dbg.value(metadata ptr %0, metadata !576, metadata !DIExpression()), !dbg !577
  %1 = load double, ptr %0, align 8, !dbg !579
  %D = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, !dbg !579
  %2 = load double, ptr %D, align 8, !dbg !579
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1, !dbg !579
  %3 = load double, ptr %arrayidx3, align 8, !dbg !579
  %arrayidx5 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, i64 1, !dbg !579
  %4 = load double, ptr %arrayidx5, align 8, !dbg !579
  %mul6 = fmul double %3, %4, !dbg !579
  %5 = tail call double @llvm.fmuladd.f64(double %1, double %2, double %mul6), !dbg !579
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2, !dbg !579
  %6 = load double, ptr %arrayidx8, align 8, !dbg !579
  %arrayidx10 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, i64 2, !dbg !579
  %7 = load double, ptr %arrayidx10, align 8, !dbg !579
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %5), !dbg !579
  call void @llvm.dbg.value(metadata double %8, metadata !565, metadata !DIExpression()), !dbg !577
  %cmp = fcmp ogt double %8, 0.000000e+00, !dbg !580
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !580

cond.false:                                       ; preds = %entry
  %fneg = fneg double %8, !dbg !580
  br label %cond.end, !dbg !580

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi double [ %fneg, %cond.false ], [ %8, %entry ], !dbg !580
  %cmp11 = fcmp olt double %cond, 0x3E7AD7F29ABCAF48, !dbg !582
  br i1 %cmp11, label %cleanup, label %if.end, !dbg !583

if.end:                                           ; preds = %cond.end
  %P = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, !dbg !584
  %9 = load double, ptr %P, align 8, !dbg !584
  %arrayidx18 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, i64 1, !dbg !584
  %10 = load double, ptr %arrayidx18, align 8, !dbg !584
  %mul19 = fmul double %3, %10, !dbg !584
  %11 = tail call double @llvm.fmuladd.f64(double %1, double %9, double %mul19), !dbg !584
  %arrayidx23 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, i64 2, !dbg !584
  %12 = load double, ptr %arrayidx23, align 8, !dbg !584
  %13 = tail call double @llvm.fmuladd.f64(double %6, double %12, double %11), !dbg !584
  call void @llvm.dbg.value(metadata double %13, metadata !566, metadata !DIExpression()), !dbg !577
  %d = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 1, !dbg !585
  %14 = load double, ptr %d, align 8, !dbg !585
  %add = fadd double %14, %13, !dbg !586
  %fneg24 = fneg double %add, !dbg !587
  %div = fdiv double %fneg24, %8, !dbg !588
  call void @llvm.dbg.value(metadata double %div, metadata !569, metadata !DIExpression()), !dbg !577
  %cmp25 = fcmp olt double %div, 0x3E7AD7F29ABCAF48, !dbg !589
  br i1 %cmp25, label %cleanup, label %if.end27, !dbg !591

if.end27:                                         ; preds = %if.end
  %vptr = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 2, !dbg !592
  %15 = load ptr, ptr %vptr, align 8, !dbg !592
  %vindex = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 4, !dbg !593
  %16 = load i64, ptr %vindex, align 8, !dbg !594
  %add.ptr = getelementptr inbounds [3 x double], ptr %15, i64 %16, !dbg !595
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !570, metadata !DIExpression()), !dbg !577
  %vorder = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 7, !dbg !596
  %17 = load i64, ptr %vorder, align 8, !dbg !596
  %cmp29 = icmp eq i64 %17, 2, !dbg !598
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !599

if.then30:                                        ; preds = %if.end27
  %arrayidx33 = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 4, i64 2, !dbg !600
  call void @llvm.dbg.value(metadata !DIArgList(ptr %15, i64 undef), metadata !571, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !577
  %arrayidx37 = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 4, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata !DIArgList(ptr %15, i64 undef), metadata !572, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !577
  br label %if.end47, !dbg !603

if.else:                                          ; preds = %if.end27
  %arrayidx41 = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 4, i64 1, !dbg !604
  call void @llvm.dbg.value(metadata !DIArgList(ptr %15, i64 undef), metadata !571, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !577
  %arrayidx45 = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 4, i64 2, !dbg !606
  call void @llvm.dbg.value(metadata !DIArgList(ptr %15, i64 undef), metadata !572, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !577
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then30
  %.pn.in = phi ptr [ %arrayidx37, %if.then30 ], [ %arrayidx45, %if.else ]
  %.pn642.in = phi ptr [ %arrayidx33, %if.then30 ], [ %arrayidx41, %if.else ]
  %.pn642 = load i64, ptr %.pn642.in, align 8, !dbg !607
  %v2.0 = getelementptr inbounds [3 x double], ptr %15, i64 %.pn642, !dbg !607
  %.pn = load i64, ptr %.pn.in, align 8, !dbg !607
  %v3.0 = getelementptr inbounds [3 x double], ptr %15, i64 %.pn, !dbg !607
  call void @llvm.dbg.value(metadata ptr %v2.0, metadata !571, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata ptr %v3.0, metadata !572, metadata !DIExpression()), !dbg !577
  %18 = load double, ptr %v2.0, align 8, !dbg !608
  %19 = load double, ptr %add.ptr, align 8, !dbg !609
  %sub = fsub double %18, %19, !dbg !610
  call void @llvm.dbg.value(metadata double %sub, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !577
  %arrayidx51 = getelementptr inbounds [3 x double], ptr %15, i64 %.pn642, i64 1, !dbg !611
  %20 = load double, ptr %arrayidx51, align 8, !dbg !611
  %arrayidx52 = getelementptr inbounds [3 x double], ptr %15, i64 %16, i64 1, !dbg !612
  %21 = load double, ptr %arrayidx52, align 8, !dbg !612
  %sub53 = fsub double %20, %21, !dbg !613
  call void @llvm.dbg.value(metadata double %sub53, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !577
  %arrayidx55 = getelementptr inbounds [3 x double], ptr %15, i64 %.pn642, i64 2, !dbg !614
  %22 = load double, ptr %arrayidx55, align 8, !dbg !614
  %arrayidx56 = getelementptr inbounds [3 x double], ptr %15, i64 %16, i64 2, !dbg !615
  %23 = load double, ptr %arrayidx56, align 8, !dbg !615
  %sub57 = fsub double %22, %23, !dbg !616
  call void @llvm.dbg.value(metadata double %sub57, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !577
  %24 = load double, ptr %v3.0, align 8, !dbg !617
  %sub61 = fsub double %24, %18, !dbg !618
  call void @llvm.dbg.value(metadata double %sub61, metadata !574, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !577
  %arrayidx63 = getelementptr inbounds [3 x double], ptr %15, i64 %.pn, i64 1, !dbg !619
  %25 = load double, ptr %arrayidx63, align 8, !dbg !619
  %sub65 = fsub double %25, %20, !dbg !620
  call void @llvm.dbg.value(metadata double %sub65, metadata !574, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !577
  %arrayidx67 = getelementptr inbounds [3 x double], ptr %15, i64 %.pn, i64 2, !dbg !621
  %26 = load double, ptr %arrayidx67, align 8, !dbg !621
  %sub69 = fsub double %26, %22, !dbg !622
  call void @llvm.dbg.value(metadata double %sub69, metadata !574, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !577
  %sub73 = fsub double %19, %24, !dbg !623
  call void @llvm.dbg.value(metadata double %sub73, metadata !575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !577
  %sub77 = fsub double %21, %25, !dbg !624
  call void @llvm.dbg.value(metadata double %sub77, metadata !575, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !577
  %sub81 = fsub double %23, %26, !dbg !625
  call void @llvm.dbg.value(metadata double %sub81, metadata !575, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !577
  %indx = getelementptr inbounds %struct.tri, ptr %0, i64 0, i32 5, !dbg !626
  %27 = load i64, ptr %indx, align 8, !dbg !626
  switch i64 %27, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb187
    i64 3, label %sw.bb298
  ], !dbg !627

sw.bb:                                            ; preds = %if.end47
  %28 = tail call double @llvm.fmuladd.f64(double %div, double %4, double %10), !dbg !628
  call void @llvm.dbg.value(metadata double %28, metadata !567, metadata !DIExpression()), !dbg !577
  %29 = tail call double @llvm.fmuladd.f64(double %div, double %7, double %12), !dbg !630
  call void @llvm.dbg.value(metadata double %29, metadata !568, metadata !DIExpression()), !dbg !577
  %sub93 = fsub double %29, %22, !dbg !631
  %sub96 = fsub double %28, %20, !dbg !632
  %30 = fneg double %sub69, !dbg !633
  %neg = fmul double %sub96, %30, !dbg !633
  %31 = tail call double @llvm.fmuladd.f64(double %sub65, double %sub93, double %neg), !dbg !633
  %b1 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !634
  store double %31, ptr %b1, align 8, !dbg !635
  %32 = load double, ptr %0, align 8, !dbg !636
  %cmp100 = fcmp ugt double %32, 0.000000e+00, !dbg !636
  %cmp104 = fcmp ult double %31, %32, !dbg !636
  %or.cond = select i1 %cmp100, i1 true, i1 %cmp104, !dbg !636
  %cmp107 = fcmp ugt double %31, 0.000000e+00, !dbg !636
  %or.cond643 = select i1 %or.cond, i1 true, i1 %cmp107, !dbg !636
  br i1 %or.cond643, label %lor.lhs.false, label %if.end120, !dbg !636

lor.lhs.false:                                    ; preds = %sw.bb
  %cmp110 = fcmp ogt double %32, 0.000000e+00, !dbg !636
  br i1 %cmp110, label %land.lhs.true111, label %cleanup, !dbg !636

land.lhs.true111:                                 ; preds = %lor.lhs.false
  %cmp113 = fcmp ult double %31, 0.000000e+00, !dbg !636
  %cmp118 = fcmp ugt double %31, %32, !dbg !636
  %or.cond644 = select i1 %cmp113, i1 true, i1 %cmp118, !dbg !636
  br i1 %or.cond644, label %cleanup, label %if.end120, !dbg !636

if.end120:                                        ; preds = %land.lhs.true111, %sw.bb
  %33 = load double, ptr %arrayidx67, align 8, !dbg !638
  %sub123 = fsub double %29, %33, !dbg !639
  %34 = load double, ptr %arrayidx63, align 8, !dbg !640
  %sub126 = fsub double %28, %34, !dbg !641
  %35 = fneg double %sub81, !dbg !642
  %neg128 = fmul double %sub126, %35, !dbg !642
  %36 = tail call double @llvm.fmuladd.f64(double %sub77, double %sub123, double %neg128), !dbg !642
  %b2 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !643
  store double %36, ptr %b2, align 8, !dbg !644
  %37 = load double, ptr %0, align 8, !dbg !645
  %cmp131 = fcmp ugt double %37, 0.000000e+00, !dbg !645
  %cmp136 = fcmp ult double %36, %37, !dbg !645
  %or.cond645 = select i1 %cmp131, i1 true, i1 %cmp136, !dbg !645
  %cmp139 = fcmp ugt double %36, 0.000000e+00, !dbg !645
  %or.cond646 = select i1 %or.cond645, i1 true, i1 %cmp139, !dbg !645
  br i1 %or.cond646, label %lor.lhs.false140, label %if.end153, !dbg !645

lor.lhs.false140:                                 ; preds = %if.end120
  %cmp143 = fcmp ogt double %37, 0.000000e+00, !dbg !645
  br i1 %cmp143, label %land.lhs.true144, label %cleanup, !dbg !645

land.lhs.true144:                                 ; preds = %lor.lhs.false140
  %cmp146 = fcmp ult double %36, 0.000000e+00, !dbg !645
  %cmp151 = fcmp ugt double %36, %37, !dbg !645
  %or.cond647 = select i1 %cmp146, i1 true, i1 %cmp151, !dbg !645
  br i1 %or.cond647, label %cleanup, label %if.end153, !dbg !645

if.end153:                                        ; preds = %land.lhs.true144, %if.end120
  %38 = load double, ptr %arrayidx56, align 8, !dbg !647
  %sub156 = fsub double %29, %38, !dbg !648
  %39 = load double, ptr %arrayidx52, align 8, !dbg !649
  %sub159 = fsub double %28, %39, !dbg !650
  %40 = fneg double %sub57, !dbg !651
  %neg161 = fmul double %sub159, %40, !dbg !651
  %41 = tail call double @llvm.fmuladd.f64(double %sub53, double %sub156, double %neg161), !dbg !651
  %b3 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !652
  store double %41, ptr %b3, align 8, !dbg !653
  %42 = load double, ptr %0, align 8, !dbg !654
  %cmp164 = fcmp ugt double %42, 0.000000e+00, !dbg !654
  %cmp169 = fcmp ult double %41, %42, !dbg !654
  %or.cond648 = select i1 %cmp164, i1 true, i1 %cmp169, !dbg !654
  %cmp172 = fcmp ugt double %41, 0.000000e+00, !dbg !654
  %or.cond649 = select i1 %or.cond648, i1 true, i1 %cmp172, !dbg !654
  br i1 %or.cond649, label %lor.lhs.false173, label %sw.epilog, !dbg !654

lor.lhs.false173:                                 ; preds = %if.end153
  %cmp176 = fcmp ogt double %42, 0.000000e+00, !dbg !654
  br i1 %cmp176, label %land.lhs.true177, label %cleanup, !dbg !654

land.lhs.true177:                                 ; preds = %lor.lhs.false173
  %cmp179 = fcmp ult double %41, 0.000000e+00, !dbg !654
  %cmp184 = fcmp ugt double %41, %42, !dbg !654
  %or.cond650 = select i1 %cmp179, i1 true, i1 %cmp184, !dbg !654
  br i1 %or.cond650, label %cleanup, label %sw.epilog, !dbg !654

sw.bb187:                                         ; preds = %if.end47
  %43 = tail call double @llvm.fmuladd.f64(double %div, double %2, double %9), !dbg !656
  call void @llvm.dbg.value(metadata double %43, metadata !567, metadata !DIExpression()), !dbg !577
  %44 = tail call double @llvm.fmuladd.f64(double %div, double %7, double %12), !dbg !657
  call void @llvm.dbg.value(metadata double %44, metadata !568, metadata !DIExpression()), !dbg !577
  %sub198 = fsub double %43, %18, !dbg !658
  %sub201 = fsub double %44, %22, !dbg !659
  %45 = fneg double %sub61, !dbg !660
  %neg203 = fmul double %sub201, %45, !dbg !660
  %46 = tail call double @llvm.fmuladd.f64(double %sub69, double %sub198, double %neg203), !dbg !660
  %b1204 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !661
  store double %46, ptr %b1204, align 8, !dbg !662
  %47 = load double, ptr %arrayidx3, align 8, !dbg !663
  %cmp207 = fcmp ugt double %47, 0.000000e+00, !dbg !663
  %cmp212 = fcmp ult double %46, %47, !dbg !663
  %or.cond651 = select i1 %cmp207, i1 true, i1 %cmp212, !dbg !663
  %cmp215 = fcmp ugt double %46, 0.000000e+00, !dbg !663
  %or.cond652 = select i1 %or.cond651, i1 true, i1 %cmp215, !dbg !663
  br i1 %or.cond652, label %lor.lhs.false216, label %if.end229, !dbg !663

lor.lhs.false216:                                 ; preds = %sw.bb187
  %cmp219 = fcmp ogt double %47, 0.000000e+00, !dbg !663
  br i1 %cmp219, label %land.lhs.true220, label %cleanup, !dbg !663

land.lhs.true220:                                 ; preds = %lor.lhs.false216
  %cmp222 = fcmp ult double %46, 0.000000e+00, !dbg !663
  %cmp227 = fcmp ugt double %46, %47, !dbg !663
  %or.cond653 = select i1 %cmp222, i1 true, i1 %cmp227, !dbg !663
  br i1 %or.cond653, label %cleanup, label %if.end229, !dbg !663

if.end229:                                        ; preds = %land.lhs.true220, %sw.bb187
  %48 = load double, ptr %v3.0, align 8, !dbg !665
  %sub232 = fsub double %43, %48, !dbg !666
  %49 = load double, ptr %arrayidx67, align 8, !dbg !667
  %sub235 = fsub double %44, %49, !dbg !668
  %50 = fneg double %sub73, !dbg !669
  %neg237 = fmul double %sub235, %50, !dbg !669
  %51 = tail call double @llvm.fmuladd.f64(double %sub81, double %sub232, double %neg237), !dbg !669
  %b2238 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !670
  store double %51, ptr %b2238, align 8, !dbg !671
  %52 = load double, ptr %arrayidx3, align 8, !dbg !672
  %cmp241 = fcmp ugt double %52, 0.000000e+00, !dbg !672
  %cmp246 = fcmp ult double %51, %52, !dbg !672
  %or.cond654 = select i1 %cmp241, i1 true, i1 %cmp246, !dbg !672
  %cmp249 = fcmp ugt double %51, 0.000000e+00, !dbg !672
  %or.cond655 = select i1 %or.cond654, i1 true, i1 %cmp249, !dbg !672
  br i1 %or.cond655, label %lor.lhs.false250, label %if.end263, !dbg !672

lor.lhs.false250:                                 ; preds = %if.end229
  %cmp253 = fcmp ogt double %52, 0.000000e+00, !dbg !672
  br i1 %cmp253, label %land.lhs.true254, label %cleanup, !dbg !672

land.lhs.true254:                                 ; preds = %lor.lhs.false250
  %cmp256 = fcmp ult double %51, 0.000000e+00, !dbg !672
  %cmp261 = fcmp ugt double %51, %52, !dbg !672
  %or.cond656 = select i1 %cmp256, i1 true, i1 %cmp261, !dbg !672
  br i1 %or.cond656, label %cleanup, label %if.end263, !dbg !672

if.end263:                                        ; preds = %land.lhs.true254, %if.end229
  %53 = load double, ptr %add.ptr, align 8, !dbg !674
  %sub266 = fsub double %43, %53, !dbg !675
  %54 = load double, ptr %arrayidx56, align 8, !dbg !676
  %sub269 = fsub double %44, %54, !dbg !677
  %55 = fneg double %sub, !dbg !678
  %neg271 = fmul double %sub269, %55, !dbg !678
  %56 = tail call double @llvm.fmuladd.f64(double %sub57, double %sub266, double %neg271), !dbg !678
  %b3272 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !679
  store double %56, ptr %b3272, align 8, !dbg !680
  %57 = load double, ptr %arrayidx3, align 8, !dbg !681
  %cmp275 = fcmp ugt double %57, 0.000000e+00, !dbg !681
  %cmp280 = fcmp ult double %56, %57, !dbg !681
  %or.cond657 = select i1 %cmp275, i1 true, i1 %cmp280, !dbg !681
  %cmp283 = fcmp ugt double %56, 0.000000e+00, !dbg !681
  %or.cond658 = select i1 %or.cond657, i1 true, i1 %cmp283, !dbg !681
  br i1 %or.cond658, label %lor.lhs.false284, label %sw.epilog, !dbg !681

lor.lhs.false284:                                 ; preds = %if.end263
  %cmp287 = fcmp ogt double %57, 0.000000e+00, !dbg !681
  br i1 %cmp287, label %land.lhs.true288, label %cleanup, !dbg !681

land.lhs.true288:                                 ; preds = %lor.lhs.false284
  %cmp290 = fcmp ult double %56, 0.000000e+00, !dbg !681
  %cmp295 = fcmp ugt double %56, %57, !dbg !681
  %or.cond659 = select i1 %cmp290, i1 true, i1 %cmp295, !dbg !681
  br i1 %or.cond659, label %cleanup, label %sw.epilog, !dbg !681

sw.bb298:                                         ; preds = %if.end47
  %58 = tail call double @llvm.fmuladd.f64(double %div, double %2, double %9), !dbg !683
  call void @llvm.dbg.value(metadata double %58, metadata !567, metadata !DIExpression()), !dbg !577
  %59 = tail call double @llvm.fmuladd.f64(double %div, double %4, double %10), !dbg !684
  call void @llvm.dbg.value(metadata double %59, metadata !568, metadata !DIExpression()), !dbg !577
  %sub309 = fsub double %59, %20, !dbg !685
  %sub312 = fsub double %58, %18, !dbg !686
  %60 = fneg double %sub65, !dbg !687
  %neg314 = fmul double %sub312, %60, !dbg !687
  %61 = tail call double @llvm.fmuladd.f64(double %sub61, double %sub309, double %neg314), !dbg !687
  %b1315 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 2, !dbg !688
  store double %61, ptr %b1315, align 8, !dbg !689
  %62 = load double, ptr %arrayidx8, align 8, !dbg !690
  %cmp318 = fcmp ugt double %62, 0.000000e+00, !dbg !690
  %cmp323 = fcmp ult double %61, %62, !dbg !690
  %or.cond660 = select i1 %cmp318, i1 true, i1 %cmp323, !dbg !690
  %cmp326 = fcmp ugt double %61, 0.000000e+00, !dbg !690
  %or.cond661 = select i1 %or.cond660, i1 true, i1 %cmp326, !dbg !690
  br i1 %or.cond661, label %lor.lhs.false327, label %if.end340, !dbg !690

lor.lhs.false327:                                 ; preds = %sw.bb298
  %cmp330 = fcmp ogt double %62, 0.000000e+00, !dbg !690
  br i1 %cmp330, label %land.lhs.true331, label %cleanup, !dbg !690

land.lhs.true331:                                 ; preds = %lor.lhs.false327
  %cmp333 = fcmp ult double %61, 0.000000e+00, !dbg !690
  %cmp338 = fcmp ugt double %61, %62, !dbg !690
  %or.cond662 = select i1 %cmp333, i1 true, i1 %cmp338, !dbg !690
  br i1 %or.cond662, label %cleanup, label %if.end340, !dbg !690

if.end340:                                        ; preds = %land.lhs.true331, %sw.bb298
  %63 = load double, ptr %arrayidx63, align 8, !dbg !692
  %sub343 = fsub double %59, %63, !dbg !693
  %64 = load double, ptr %v3.0, align 8, !dbg !694
  %sub346 = fsub double %58, %64, !dbg !695
  %65 = fneg double %sub77, !dbg !696
  %neg348 = fmul double %sub346, %65, !dbg !696
  %66 = tail call double @llvm.fmuladd.f64(double %sub73, double %sub343, double %neg348), !dbg !696
  %b2349 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 3, !dbg !697
  store double %66, ptr %b2349, align 8, !dbg !698
  %67 = load double, ptr %arrayidx8, align 8, !dbg !699
  %cmp352 = fcmp ugt double %67, 0.000000e+00, !dbg !699
  %cmp357 = fcmp ult double %66, %67, !dbg !699
  %or.cond663 = select i1 %cmp352, i1 true, i1 %cmp357, !dbg !699
  %cmp360 = fcmp ugt double %66, 0.000000e+00, !dbg !699
  %or.cond664 = select i1 %or.cond663, i1 true, i1 %cmp360, !dbg !699
  br i1 %or.cond664, label %lor.lhs.false361, label %if.end374, !dbg !699

lor.lhs.false361:                                 ; preds = %if.end340
  %cmp364 = fcmp ogt double %67, 0.000000e+00, !dbg !699
  br i1 %cmp364, label %land.lhs.true365, label %cleanup, !dbg !699

land.lhs.true365:                                 ; preds = %lor.lhs.false361
  %cmp367 = fcmp ult double %66, 0.000000e+00, !dbg !699
  %cmp372 = fcmp ugt double %66, %67, !dbg !699
  %or.cond665 = select i1 %cmp367, i1 true, i1 %cmp372, !dbg !699
  br i1 %or.cond665, label %cleanup, label %if.end374, !dbg !699

if.end374:                                        ; preds = %land.lhs.true365, %if.end340
  %68 = load double, ptr %arrayidx52, align 8, !dbg !701
  %sub377 = fsub double %59, %68, !dbg !702
  %69 = load double, ptr %add.ptr, align 8, !dbg !703
  %sub380 = fsub double %58, %69, !dbg !704
  %70 = fneg double %sub53, !dbg !705
  %neg382 = fmul double %sub380, %70, !dbg !705
  %71 = tail call double @llvm.fmuladd.f64(double %sub, double %sub377, double %neg382), !dbg !705
  %b3383 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 4, !dbg !706
  store double %71, ptr %b3383, align 8, !dbg !707
  %72 = load double, ptr %arrayidx8, align 8, !dbg !708
  %cmp386 = fcmp ugt double %72, 0.000000e+00, !dbg !708
  %cmp391 = fcmp ult double %71, %72, !dbg !708
  %or.cond666 = select i1 %cmp386, i1 true, i1 %cmp391, !dbg !708
  %cmp394 = fcmp ugt double %71, 0.000000e+00, !dbg !708
  %or.cond667 = select i1 %or.cond666, i1 true, i1 %cmp394, !dbg !708
  br i1 %or.cond667, label %lor.lhs.false395, label %sw.epilog, !dbg !708

lor.lhs.false395:                                 ; preds = %if.end374
  %cmp398 = fcmp ogt double %72, 0.000000e+00, !dbg !708
  br i1 %cmp398, label %land.lhs.true399, label %cleanup, !dbg !708

land.lhs.true399:                                 ; preds = %lor.lhs.false395
  %cmp401 = fcmp ult double %71, 0.000000e+00, !dbg !708
  %cmp406 = fcmp ugt double %71, %72, !dbg !708
  %or.cond668 = select i1 %cmp401, i1 true, i1 %cmp406, !dbg !708
  br i1 %or.cond668, label %cleanup, label %sw.epilog, !dbg !708

sw.epilog:                                        ; preds = %land.lhs.true399, %if.end374, %land.lhs.true288, %if.end263, %land.lhs.true177, %if.end153, %if.end47
  store double %div, ptr %hit, align 8, !dbg !710
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !710
  store ptr %pe, ptr %pelem, align 8, !dbg !710
  br label %cleanup, !dbg !712

cleanup:                                          ; preds = %lor.lhs.false395, %land.lhs.true399, %lor.lhs.false361, %land.lhs.true365, %lor.lhs.false327, %land.lhs.true331, %lor.lhs.false284, %land.lhs.true288, %lor.lhs.false250, %land.lhs.true254, %lor.lhs.false216, %land.lhs.true220, %lor.lhs.false173, %land.lhs.true177, %lor.lhs.false140, %land.lhs.true144, %lor.lhs.false, %land.lhs.true111, %if.end, %cond.end, %sw.epilog
  %retval.0 = phi i64 [ 1, %sw.epilog ], [ 0, %cond.end ], [ 0, %if.end ], [ 0, %land.lhs.true111 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true144 ], [ 0, %lor.lhs.false140 ], [ 0, %land.lhs.true177 ], [ 0, %lor.lhs.false173 ], [ 0, %land.lhs.true220 ], [ 0, %lor.lhs.false216 ], [ 0, %land.lhs.true254 ], [ 0, %lor.lhs.false250 ], [ 0, %land.lhs.true288 ], [ 0, %lor.lhs.false284 ], [ 0, %land.lhs.true331 ], [ 0, %lor.lhs.false327 ], [ 0, %land.lhs.true365 ], [ 0, %lor.lhs.false361 ], [ 0, %land.lhs.true399 ], [ 0, %lor.lhs.false395 ], !dbg !577
  ret i64 %retval.0, !dbg !713
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @TriIntersect(ptr nocapture noundef readonly %pr, ptr nocapture noundef readonly %po, ptr nocapture noundef %hit) local_unnamed_addr #9 !dbg !714 {
entry:
  %newhit = alloca %struct.irecord, align 8
  call void @llvm.dbg.value(metadata ptr %pr, metadata !718, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %po, metadata !719, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %hit, metadata !720, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %newhit) #15, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 0, metadata !722, metadata !DIExpression()), !dbg !725
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !728
  %0 = load ptr, ptr %pelem, align 8, !dbg !728
  call void @llvm.dbg.value(metadata ptr %0, metadata !723, metadata !DIExpression()), !dbg !725
  store double 1.000000e+32, ptr %hit, align 8, !dbg !729
  call void @llvm.dbg.value(metadata i64 0, metadata !721, metadata !DIExpression()), !dbg !725
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !723, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 0, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 0, metadata !721, metadata !DIExpression()), !dbg !725
  %1 = load i64, ptr %numelements, align 8, !dbg !730
  %cmp15 = icmp sgt i64 %1, 0, !dbg !733
  br i1 %cmp15, label %for.body, label %for.end, !dbg !734

for.body:                                         ; preds = %entry, %if.end7
  %pe.018 = phi ptr [ %incdec.ptr, %if.end7 ], [ %0, %entry ]
  %nhits.017 = phi i64 [ %nhits.1, %if.end7 ], [ 0, %entry ]
  %i.016 = phi i64 [ %inc8, %if.end7 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %pe.018, metadata !723, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %nhits.017, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %i.016, metadata !721, metadata !DIExpression()), !dbg !725
  %call = call i64 @TriPeIntersect(ptr noundef %pr, ptr noundef %pe.018, ptr noundef nonnull %newhit), !dbg !735
  %tobool.not = icmp eq i64 %call, 0, !dbg !735
  br i1 %tobool.not, label %if.end7, label %if.then, !dbg !738

if.then:                                          ; preds = %for.body
  %inc = add nsw i64 %nhits.017, 1, !dbg !739
  call void @llvm.dbg.value(metadata i64 %inc, metadata !722, metadata !DIExpression()), !dbg !725
  %2 = load double, ptr %newhit, align 8, !dbg !741
  %3 = load double, ptr %hit, align 8, !dbg !743
  %cmp4 = fcmp olt double %2, %3, !dbg !744
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !745

if.then5:                                         ; preds = %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %hit, ptr noundef nonnull align 8 dereferenceable(40) %newhit, i64 40, i1 false), !dbg !746
  br label %if.end7, !dbg !747

if.end7:                                          ; preds = %if.then, %if.then5, %for.body
  %nhits.1 = phi i64 [ %inc, %if.then5 ], [ %inc, %if.then ], [ %nhits.017, %for.body ], !dbg !725
  call void @llvm.dbg.value(metadata i64 %nhits.1, metadata !722, metadata !DIExpression()), !dbg !725
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.018, i64 1, !dbg !748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !723, metadata !DIExpression()), !dbg !725
  %inc8 = add nuw nsw i64 %i.016, 1, !dbg !749
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !721, metadata !DIExpression()), !dbg !725
  %4 = load i64, ptr %numelements, align 8, !dbg !730
  %cmp = icmp slt i64 %inc8, %4, !dbg !733
  br i1 %cmp, label %for.body, label %for.end, !dbg !734, !llvm.loop !750

for.end:                                          ; preds = %if.end7, %entry
  %nhits.0.lcssa = phi i64 [ 0, %entry ], [ %nhits.1, %if.end7 ], !dbg !725
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %newhit) #15, !dbg !752
  ret i64 %nhits.0.lcssa, !dbg !753
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define dso_local void @TriTransform(ptr nocapture noundef readonly %po, ptr noundef %xtrans, ptr noundef %xinvT) local_unnamed_addr #6 !dbg !754 {
entry:
  %pnorm = alloca [4 x double], align 16
  %norm = alloca [4 x double], align 16
  %coord = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %po, metadata !758, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr %xtrans, metadata !759, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr %xinvT, metadata !760, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pnorm) #15, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %pnorm, metadata !773, metadata !DIExpression()), !dbg !780
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %norm) #15, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %norm, metadata !774, metadata !DIExpression()), !dbg !782
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %coord) #15, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %coord, metadata !775, metadata !DIExpression()), !dbg !783
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !784
  %0 = load ptr, ptr %pelem, align 8, !dbg !784
  call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !778
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !785
  %1 = load i64, ptr %numelements, align 8, !dbg !785
  call void @llvm.dbg.value(metadata i64 %1, metadata !762, metadata !DIExpression()), !dbg !778
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !786
  %2 = load ptr, ptr %data, align 8, !dbg !786
  call void @llvm.dbg.value(metadata ptr %2, metadata !776, metadata !DIExpression()), !dbg !778
  %vptr1 = getelementptr inbounds %struct.tri, ptr %2, i64 0, i32 2, !dbg !787
  %3 = load ptr, ptr %vptr1, align 8, !dbg !787
  call void @llvm.dbg.value(metadata ptr %3, metadata !764, metadata !DIExpression()), !dbg !778
  %nptr2 = getelementptr inbounds %struct.tri, ptr %2, i64 0, i32 3, !dbg !788
  %4 = load ptr, ptr %nptr2, align 8, !dbg !788
  call void @llvm.dbg.value(metadata ptr %4, metadata !766, metadata !DIExpression()), !dbg !778
  %5 = load double, ptr %3, align 8, !dbg !789
  store double %5, ptr %coord, align 16, !dbg !790
  %arrayidx4 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1, !dbg !791
  %6 = load double, ptr %arrayidx4, align 8, !dbg !791
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 1, !dbg !792
  store double %6, ptr %arrayidx5, align 8, !dbg !793
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2, !dbg !794
  %7 = load double, ptr %arrayidx6, align 8, !dbg !794
  %arrayidx7 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 2, !dbg !795
  store double %7, ptr %arrayidx7, align 16, !dbg !796
  %arrayidx8 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 3, !dbg !797
  store double 1.000000e+00, ptr %arrayidx8, align 8, !dbg !798
  call void @llvm.dbg.value(metadata ptr %3, metadata !764, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr %4, metadata !766, metadata !DIExpression()), !dbg !778
  %cmp309 = fcmp une double %5, 1.000000e+32, !dbg !799
  %cmp11310 = fcmp une double %6, 1.000000e+32
  %or.cond311 = select i1 %cmp309, i1 %cmp11310, i1 false, !dbg !800
  %cmp13312 = fcmp une double %7, 1.000000e+32
  %or.cond214313 = select i1 %or.cond311, i1 %cmp13312, i1 false, !dbg !800
  br i1 %or.cond214313, label %while.body.lr.ph, label %for.cond.preheader, !dbg !800

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx31 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 1
  %arrayidx33 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 2
  %arrayidx34 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 3
  br label %while.body, !dbg !800

for.cond.preheader:                               ; preds = %while.body, %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 0, metadata !761, metadata !DIExpression()), !dbg !778
  %cmp45316 = icmp sgt i64 %1, 0, !dbg !801
  br i1 %cmp45316, label %for.body.lr.ph, label %for.end, !dbg !804

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx123 = getelementptr inbounds [4 x double], ptr %pnorm, i64 0, i64 1
  %arrayidx126 = getelementptr inbounds [4 x double], ptr %pnorm, i64 0, i64 2
  %arrayidx177 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 1
  %arrayidx190 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 2
  br label %for.body, !dbg !804

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %vptr.0315 = phi ptr [ %3, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %nptr.0314 = phi ptr [ %4, %while.body.lr.ph ], [ %incdec.ptr44, %while.body ]
  call void @llvm.dbg.value(metadata ptr %vptr.0315, metadata !764, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr %nptr.0314, metadata !766, metadata !DIExpression()), !dbg !778
  call void @VecMatMult(ptr noundef nonnull %coord, ptr noundef %xtrans, ptr noundef nonnull %coord) #15, !dbg !805
  %8 = load double, ptr %coord, align 16, !dbg !807
  store double %8, ptr %vptr.0315, align 8, !dbg !808
  %9 = load double, ptr %arrayidx5, align 8, !dbg !809
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %vptr.0315, i64 0, i64 1, !dbg !810
  store double %9, ptr %arrayidx18, align 8, !dbg !811
  %10 = load double, ptr %arrayidx7, align 16, !dbg !812
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %vptr.0315, i64 0, i64 2, !dbg !813
  store double %10, ptr %arrayidx20, align 8, !dbg !814
  %incdec.ptr = getelementptr inbounds [3 x double], ptr %vptr.0315, i64 1, !dbg !815
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !764, metadata !DIExpression()), !dbg !778
  %11 = load double, ptr %incdec.ptr, align 8, !dbg !816
  store double %11, ptr %coord, align 16, !dbg !817
  %arrayidx23 = getelementptr inbounds [3 x double], ptr %vptr.0315, i64 1, i64 1, !dbg !818
  %12 = load double, ptr %arrayidx23, align 8, !dbg !818
  store double %12, ptr %arrayidx5, align 8, !dbg !819
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %vptr.0315, i64 1, i64 2, !dbg !820
  %13 = load double, ptr %arrayidx25, align 8, !dbg !820
  store double %13, ptr %arrayidx7, align 16, !dbg !821
  store double 1.000000e+00, ptr %arrayidx8, align 8, !dbg !822
  %14 = load double, ptr %nptr.0314, align 8, !dbg !823
  store double %14, ptr %norm, align 16, !dbg !824
  %arrayidx30 = getelementptr inbounds [3 x double], ptr %nptr.0314, i64 0, i64 1, !dbg !825
  %15 = load double, ptr %arrayidx30, align 8, !dbg !825
  store double %15, ptr %arrayidx31, align 8, !dbg !826
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %nptr.0314, i64 0, i64 2, !dbg !827
  %16 = load double, ptr %arrayidx32, align 8, !dbg !827
  store double %16, ptr %arrayidx33, align 16, !dbg !828
  store double 0.000000e+00, ptr %arrayidx34, align 8, !dbg !829
  call void @VecMatMult(ptr noundef nonnull %norm, ptr noundef %xinvT, ptr noundef nonnull %norm) #15, !dbg !830
  call void @VecNorm(ptr noundef nonnull %norm) #15, !dbg !831
  %17 = load double, ptr %norm, align 16, !dbg !832
  store double %17, ptr %nptr.0314, align 8, !dbg !833
  %18 = load double, ptr %arrayidx31, align 8, !dbg !834
  store double %18, ptr %arrayidx30, align 8, !dbg !835
  %19 = load double, ptr %arrayidx33, align 16, !dbg !836
  store double %19, ptr %arrayidx32, align 8, !dbg !837
  %incdec.ptr44 = getelementptr inbounds [3 x double], ptr %nptr.0314, i64 1, !dbg !838
  call void @llvm.dbg.value(metadata ptr %incdec.ptr44, metadata !766, metadata !DIExpression()), !dbg !778
  %20 = load double, ptr %coord, align 16, !dbg !839
  %cmp = fcmp une double %20, 1.000000e+32, !dbg !799
  %21 = load double, ptr %arrayidx5, align 8
  %cmp11 = fcmp une double %21, 1.000000e+32
  %or.cond = select i1 %cmp, i1 %cmp11, i1 false, !dbg !800
  %22 = load double, ptr %arrayidx7, align 16
  %cmp13 = fcmp une double %22, 1.000000e+32
  %or.cond214 = select i1 %or.cond, i1 %cmp13, i1 false, !dbg !800
  br i1 %or.cond214, label %while.body, label %for.cond.preheader, !dbg !800, !llvm.loop !840

for.body:                                         ; preds = %for.body.lr.ph, %if.end212
  %pe.0318 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr213, %if.end212 ]
  %i.0317 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end212 ]
  call void @llvm.dbg.value(metadata ptr %pe.0318, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %i.0317, metadata !761, metadata !DIExpression()), !dbg !778
  %data46 = getelementptr inbounds %struct.element, ptr %pe.0318, i64 0, i32 2, !dbg !843
  %23 = load ptr, ptr %data46, align 8, !dbg !843
  call void @llvm.dbg.value(metadata ptr %23, metadata !776, metadata !DIExpression()), !dbg !778
  %vindex47 = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 4, !dbg !845
  call void @llvm.dbg.value(metadata ptr %vindex47, metadata !763, metadata !DIExpression()), !dbg !778
  %vptr49 = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 2, !dbg !846
  %24 = load ptr, ptr %vptr49, align 8, !dbg !846
  call void @llvm.dbg.value(metadata ptr %24, metadata !764, metadata !DIExpression()), !dbg !778
  %25 = load i64, ptr %vindex47, align 8, !dbg !847
  %add.ptr = getelementptr inbounds [3 x double], ptr %24, i64 %25, !dbg !848
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !768, metadata !DIExpression()), !dbg !778
  %incdec.ptr50 = getelementptr inbounds i64, ptr %vindex47, i64 1, !dbg !849
  call void @llvm.dbg.value(metadata ptr %incdec.ptr50, metadata !763, metadata !DIExpression()), !dbg !778
  %26 = load i64, ptr %incdec.ptr50, align 8, !dbg !850
  %add.ptr51 = getelementptr inbounds [3 x double], ptr %24, i64 %26, !dbg !851
  call void @llvm.dbg.value(metadata ptr %add.ptr51, metadata !769, metadata !DIExpression()), !dbg !778
  %27 = load double, ptr %add.ptr51, align 8, !dbg !852
  %28 = load double, ptr %add.ptr, align 8, !dbg !852
  %sub = fsub double %27, %28, !dbg !852
  call void @llvm.dbg.value(metadata double %sub, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !778
  %arrayidx55 = getelementptr inbounds [3 x double], ptr %24, i64 %26, i64 1, !dbg !852
  %29 = load double, ptr %arrayidx55, align 8, !dbg !852
  %arrayidx56 = getelementptr inbounds [3 x double], ptr %24, i64 %25, i64 1, !dbg !852
  %30 = load double, ptr %arrayidx56, align 8, !dbg !852
  %sub57 = fsub double %29, %30, !dbg !852
  call void @llvm.dbg.value(metadata double %sub57, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !778
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %24, i64 %26, i64 2, !dbg !852
  %31 = load double, ptr %arrayidx59, align 8, !dbg !852
  %arrayidx60 = getelementptr inbounds [3 x double], ptr %24, i64 %25, i64 2, !dbg !852
  %32 = load double, ptr %arrayidx60, align 8, !dbg !852
  %sub61 = fsub double %31, %32, !dbg !852
  call void @llvm.dbg.value(metadata double %sub61, metadata !771, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !778
  %incdec.ptr63 = getelementptr inbounds i64, ptr %vindex47, i64 2, !dbg !854
  call void @llvm.dbg.value(metadata ptr %incdec.ptr63, metadata !763, metadata !DIExpression()), !dbg !778
  %33 = load i64, ptr %incdec.ptr63, align 8, !dbg !855
  %add.ptr64 = getelementptr inbounds [3 x double], ptr %24, i64 %33, !dbg !856
  call void @llvm.dbg.value(metadata ptr %add.ptr64, metadata !770, metadata !DIExpression()), !dbg !778
  %34 = load double, ptr %add.ptr64, align 8, !dbg !857
  %sub67 = fsub double %34, %28, !dbg !857
  call void @llvm.dbg.value(metadata double %sub67, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !778
  %arrayidx69 = getelementptr inbounds [3 x double], ptr %24, i64 %33, i64 1, !dbg !857
  %35 = load double, ptr %arrayidx69, align 8, !dbg !857
  %sub71 = fsub double %35, %30, !dbg !857
  call void @llvm.dbg.value(metadata double %sub71, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !778
  %arrayidx73 = getelementptr inbounds [3 x double], ptr %24, i64 %33, i64 2, !dbg !857
  %36 = load double, ptr %arrayidx73, align 8, !dbg !857
  %sub75 = fsub double %36, %32, !dbg !857
  call void @llvm.dbg.value(metadata double %sub75, metadata !772, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !778
  %37 = fneg double %sub61, !dbg !859
  %neg = fmul double %sub71, %37, !dbg !859
  %38 = call double @llvm.fmuladd.f64(double %sub57, double %sub75, double %neg), !dbg !859
  store double %38, ptr %23, align 8, !dbg !859
  %39 = fneg double %sub, !dbg !859
  %neg89 = fmul double %sub75, %39, !dbg !859
  %40 = call double @llvm.fmuladd.f64(double %sub61, double %sub67, double %neg89), !dbg !859
  %arrayidx91 = getelementptr inbounds [3 x double], ptr %23, i64 0, i64 1, !dbg !859
  store double %40, ptr %arrayidx91, align 8, !dbg !859
  %41 = fneg double %sub57, !dbg !859
  %neg97 = fmul double %sub67, %41, !dbg !859
  %42 = call double @llvm.fmuladd.f64(double %sub, double %sub71, double %neg97), !dbg !859
  %arrayidx99 = getelementptr inbounds [3 x double], ptr %23, i64 0, i64 2, !dbg !859
  store double %42, ptr %arrayidx99, align 8, !dbg !859
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !765, metadata !DIExpression()), !dbg !778
  %43 = load double, ptr %add.ptr, align 8, !dbg !861
  %44 = load double, ptr %arrayidx56, align 8, !dbg !862
  %mul110 = fmul double %40, %44, !dbg !863
  %45 = call double @llvm.fmuladd.f64(double %38, double %43, double %mul110), !dbg !864
  %46 = load double, ptr %arrayidx60, align 8, !dbg !865
  %47 = call double @llvm.fmuladd.f64(double %42, double %46, double %45), !dbg !866
  %fneg = fneg double %47, !dbg !867
  %d = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 1, !dbg !868
  store double %fneg, ptr %d, align 8, !dbg !869
  %norminterp = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 6, !dbg !870
  %48 = load i64, ptr %norminterp, align 8, !dbg !870
  %tobool.not = icmp eq i64 %48, 0, !dbg !872
  br i1 %tobool.not, label %if.end155, label %if.then, !dbg !873

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %vindex47, metadata !763, metadata !DIExpression()), !dbg !778
  %nptr116 = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 3, !dbg !874
  %49 = load ptr, ptr %nptr116, align 8, !dbg !874
  %add.ptr117 = getelementptr inbounds [3 x double], ptr %49, i64 %25, !dbg !876
  call void @llvm.dbg.value(metadata ptr %add.ptr117, metadata !767, metadata !DIExpression()), !dbg !778
  store double %38, ptr %pnorm, align 16, !dbg !877
  store double %40, ptr %arrayidx123, align 8, !dbg !877
  store double %42, ptr %arrayidx126, align 16, !dbg !877
  call void @VecNorm(ptr noundef nonnull %pnorm) #15, !dbg !879
  %50 = load double, ptr %pnorm, align 16, !dbg !880
  %51 = load double, ptr %add.ptr117, align 8, !dbg !880
  %52 = load double, ptr %arrayidx123, align 8, !dbg !880
  %arrayidx131 = getelementptr inbounds [3 x double], ptr %49, i64 %25, i64 1, !dbg !880
  %53 = load double, ptr %arrayidx131, align 8, !dbg !880
  %mul132 = fmul double %52, %53, !dbg !880
  %54 = call double @llvm.fmuladd.f64(double %50, double %51, double %mul132), !dbg !880
  %55 = load double, ptr %arrayidx126, align 16, !dbg !880
  %arrayidx134 = getelementptr inbounds [3 x double], ptr %49, i64 %25, i64 2, !dbg !880
  %56 = load double, ptr %arrayidx134, align 8, !dbg !880
  %57 = call double @llvm.fmuladd.f64(double %55, double %56, double %54), !dbg !880
  %cmp135 = fcmp ult double %57, 0.000000e+00, !dbg !882
  %vorder137 = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 7, !dbg !883
  br i1 %cmp135, label %if.else, label %if.then136, !dbg !884

if.then136:                                       ; preds = %if.then
  store i64 1, ptr %vorder137, align 8, !dbg !885
  %.pre = load double, ptr %23, align 8, !dbg !886
  br label %if.end155, !dbg !887

if.else:                                          ; preds = %if.then
  store i64 2, ptr %vorder137, align 8, !dbg !888
  %58 = load double, ptr %23, align 8, !dbg !890
  %mul = fneg double %58, !dbg !890
  store double %mul, ptr %23, align 8, !dbg !890
  %59 = load double, ptr %arrayidx91, align 8, !dbg !890
  %mul144 = fneg double %59, !dbg !890
  store double %mul144, ptr %arrayidx91, align 8, !dbg !890
  %60 = load double, ptr %arrayidx99, align 8, !dbg !890
  %mul149 = fneg double %60, !dbg !890
  store double %mul149, ptr %arrayidx99, align 8, !dbg !890
  %61 = load double, ptr %d, align 8, !dbg !892
  %fneg153 = fneg double %61, !dbg !893
  store double %fneg153, ptr %d, align 8, !dbg !894
  br label %if.end155

if.end155:                                        ; preds = %if.then136, %if.else, %for.body
  %62 = phi double [ %.pre, %if.then136 ], [ %mul, %if.else ], [ %38, %for.body ], !dbg !886
  %cmp158 = fcmp ogt double %62, 0.000000e+00, !dbg !886
  br i1 %cmp158, label %cond.end, label %cond.false, !dbg !886

cond.false:                                       ; preds = %if.end155
  %fneg163 = fneg double %62, !dbg !886
  br label %cond.end, !dbg !886

cond.end:                                         ; preds = %if.end155, %cond.false
  %cond = phi double [ %fneg163, %cond.false ], [ %62, %if.end155 ], !dbg !886
  store double %cond, ptr %norm, align 16, !dbg !895
  %63 = load double, ptr %arrayidx91, align 8, !dbg !896
  %cmp167 = fcmp ogt double %63, 0.000000e+00, !dbg !896
  br i1 %cmp167, label %cond.end175, label %cond.false171, !dbg !896

cond.false171:                                    ; preds = %cond.end
  %fneg174 = fneg double %63, !dbg !896
  br label %cond.end175, !dbg !896

cond.end175:                                      ; preds = %cond.end, %cond.false171
  %cond176 = phi double [ %fneg174, %cond.false171 ], [ %63, %cond.end ], !dbg !896
  store double %cond176, ptr %arrayidx177, align 8, !dbg !897
  %64 = load double, ptr %arrayidx99, align 8, !dbg !898
  %cmp180 = fcmp ogt double %64, 0.000000e+00, !dbg !898
  br i1 %cmp180, label %cond.end188, label %cond.false184, !dbg !898

cond.false184:                                    ; preds = %cond.end175
  %fneg187 = fneg double %64, !dbg !898
  br label %cond.end188, !dbg !898

cond.end188:                                      ; preds = %cond.end175, %cond.false184
  %cond189 = phi double [ %fneg187, %cond.false184 ], [ %64, %cond.end175 ], !dbg !898
  store double %cond189, ptr %arrayidx190, align 16, !dbg !899
  %cmp193 = fcmp ult double %cond, %cond176, !dbg !900
  %cmp197 = fcmp ult double %cond, %cond189
  %or.cond307 = select i1 %cmp193, i1 true, i1 %cmp197, !dbg !902
  br i1 %or.cond307, label %if.else199, label %if.then198, !dbg !902

if.then198:                                       ; preds = %cond.end188
  %indx = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 5, !dbg !903
  store i64 1, ptr %indx, align 8, !dbg !904
  br label %if.end212, !dbg !905

if.else199:                                       ; preds = %cond.end188
  %cmp202 = fcmp ult double %cond176, %cond, !dbg !906
  %cmp206 = fcmp ult double %cond176, %cond189
  %or.cond308 = select i1 %cmp202, i1 true, i1 %cmp206, !dbg !908
  %indx210 = getelementptr inbounds %struct.tri, ptr %23, i64 0, i32 5, !dbg !909
  br i1 %or.cond308, label %if.else209, label %if.then207, !dbg !908

if.then207:                                       ; preds = %if.else199
  store i64 2, ptr %indx210, align 8, !dbg !910
  br label %if.end212, !dbg !911

if.else209:                                       ; preds = %if.else199
  store i64 3, ptr %indx210, align 8, !dbg !912
  br label %if.end212

if.end212:                                        ; preds = %if.then207, %if.else209, %if.then198
  %incdec.ptr213 = getelementptr inbounds %struct.element, ptr %pe.0318, i64 1, !dbg !913
  call void @llvm.dbg.value(metadata ptr %incdec.ptr213, metadata !777, metadata !DIExpression()), !dbg !778
  %inc = add nuw nsw i64 %i.0317, 1, !dbg !914
  call void @llvm.dbg.value(metadata i64 %inc, metadata !761, metadata !DIExpression()), !dbg !778
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !801
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !804, !llvm.loop !915

for.end:                                          ; preds = %if.end212, %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %coord) #15, !dbg !917
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %norm) #15, !dbg !917
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pnorm) #15, !dbg !917
  ret void, !dbg !917
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TriRead(ptr noundef %po, ptr noundef %pf) local_unnamed_addr #6 !dbg !918 {
entry:
  %totalverts = alloca i64, align 8
  %normstr = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %po, metadata !982, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %pf, metadata !983, metadata !DIExpression()), !dbg !997
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %totalverts) #15, !dbg !998
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %normstr) #15, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %normstr, metadata !987, metadata !DIExpression()), !dbg !1000
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !1001
  %0 = load ptr, ptr %pelem, align 8, !dbg !1001
  call void @llvm.dbg.value(metadata ptr %0, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %totalverts, metadata !986, metadata !DIExpression(DW_OP_deref)), !dbg !997
  %call = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.4, ptr noundef nonnull %totalverts) #15, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %call, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp.not = icmp eq i32 %call, 1, !dbg !1003
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1005

if.then:                                          ; preds = %entry
  %puts154 = call i32 @puts(ptr nonnull @str.18), !dbg !1006
  call void @exit(i32 noundef -1) #16, !dbg !1008
  unreachable, !dbg !1008

if.end:                                           ; preds = %entry
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !1009
  %1 = load i64, ptr %numelements, align 8, !dbg !1009
  %mul = mul i64 %1, 96, !dbg !1010
  %call3 = call ptr @GlobalMalloc(i64 noundef %mul, ptr noundef nonnull @.str.6) #15, !dbg !1011
  call void @llvm.dbg.value(metadata ptr %call3, metadata !995, metadata !DIExpression()), !dbg !997
  %2 = load i64, ptr %totalverts, align 8, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %2, metadata !986, metadata !DIExpression()), !dbg !997
  %3 = mul i64 %2, 24, !dbg !1013
  %mul4 = add i64 %3, 24, !dbg !1013
  %call5 = call ptr @GlobalMalloc(i64 noundef %mul4, ptr noundef nonnull @.str.6) #15, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %call5, metadata !991, metadata !DIExpression()), !dbg !997
  %4 = load i64, ptr %totalverts, align 8, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %4, metadata !986, metadata !DIExpression()), !dbg !997
  %mul6 = mul i64 %4, 24, !dbg !1016
  %call7 = call ptr @GlobalMalloc(i64 noundef %mul6, ptr noundef nonnull @.str.6) #15, !dbg !1017
  call void @llvm.dbg.value(metadata ptr %call7, metadata !993, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %call5, metadata !992, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %call7, metadata !994, metadata !DIExpression()), !dbg !997
  %call8 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.7, ptr noundef nonnull %normstr) #15, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %call8, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp10.not = icmp eq i32 %call8, 1, !dbg !1019
  br i1 %cmp10.not, label %if.end14, label %if.then12, !dbg !1021

if.then12:                                        ; preds = %if.end
  %puts153 = call i32 @puts(ptr nonnull @str.17), !dbg !1022
  call void @exit(i32 noundef -1) #16, !dbg !1024
  unreachable, !dbg !1024

if.end14:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [5 x i8], ptr %normstr, i64 0, i64 2, !dbg !1025
  %5 = load i8, ptr %arrayidx, align 1, !dbg !1025
  %cmp16 = icmp eq i8 %5, 121, !dbg !1026
  call void @llvm.dbg.value(metadata i32 undef, metadata !989, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !997
  %call20 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.7, ptr noundef nonnull %normstr) #15, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %call20, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp22.not = icmp eq i32 %call20, 1, !dbg !1028
  br i1 %cmp22.not, label %if.end26, label %if.then24, !dbg !1030

if.then24:                                        ; preds = %if.end14
  %puts = call i32 @puts(ptr nonnull @str), !dbg !1031
  call void @exit(i32 noundef -1) #16, !dbg !1033
  unreachable, !dbg !1033

if.end26:                                         ; preds = %if.end14
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1034
  %cmp29 = icmp eq i8 %6, 121, !dbg !1035
  %7 = zext i1 %cmp29 to i64
  call void @llvm.dbg.value(metadata i64 %7, metadata !990, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 0, metadata !984, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %call7, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %call5, metadata !992, metadata !DIExpression()), !dbg !997
  %8 = load i64, ptr %totalverts, align 8, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %8, metadata !986, metadata !DIExpression()), !dbg !997
  %cmp33161 = icmp sgt i64 %8, 0, !dbg !1039
  br i1 %cmp33161, label %for.body.lr.ph, label %for.end, !dbg !1040

for.body.lr.ph:                                   ; preds = %if.end26
  br i1 %cmp29, label %for.body.us, label %for.body, !dbg !1041

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end55.us
  %nptr.0165.us = phi ptr [ %incdec.ptr.us, %if.end55.us ], [ %call7, %for.body.lr.ph ]
  %i.0163.us = phi i64 [ %inc.us, %if.end55.us ], [ 0, %for.body.lr.ph ]
  %vptr.0162.us = phi ptr [ %incdec.ptr57.us, %if.end55.us ], [ %call5, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %nptr.0165.us, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %i.0163.us, metadata !984, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %vptr.0162.us, metadata !992, metadata !DIExpression()), !dbg !997
  %arrayidx36.us = getelementptr inbounds [3 x double], ptr %vptr.0162.us, i64 0, i64 1, !dbg !1043
  %arrayidx37.us = getelementptr inbounds [3 x double], ptr %vptr.0162.us, i64 0, i64 2, !dbg !1044
  %call38.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.10, ptr noundef %vptr.0162.us, ptr noundef nonnull %arrayidx36.us, ptr noundef nonnull %arrayidx37.us) #15, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %call38.us, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp40.not.us = icmp eq i32 %call38.us, 3, !dbg !1046
  br i1 %cmp40.not.us, label %if.end44.us, label %if.then42, !dbg !1048

if.end44.us:                                      ; preds = %for.body.us
  %arrayidx47.us = getelementptr inbounds [3 x double], ptr %nptr.0165.us, i64 0, i64 1, !dbg !1049
  %arrayidx48.us = getelementptr inbounds [3 x double], ptr %nptr.0165.us, i64 0, i64 2, !dbg !1052
  %call49.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.10, ptr noundef %nptr.0165.us, ptr noundef nonnull %arrayidx47.us, ptr noundef nonnull %arrayidx48.us) #15, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %call49.us, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp51.not.us = icmp eq i32 %call49.us, 3, !dbg !1054
  br i1 %cmp51.not.us, label %if.end55.us, label %if.then53, !dbg !1056

if.end55.us:                                      ; preds = %if.end44.us
  %incdec.ptr.us = getelementptr inbounds [3 x double], ptr %nptr.0165.us, i64 1, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()), !dbg !997
  %incdec.ptr57.us = getelementptr inbounds [3 x double], ptr %vptr.0162.us, i64 1, !dbg !1058
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57.us, metadata !992, metadata !DIExpression()), !dbg !997
  %inc.us = add nuw nsw i64 %i.0163.us, 1, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !984, metadata !DIExpression()), !dbg !997
  %9 = load i64, ptr %totalverts, align 8, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %9, metadata !986, metadata !DIExpression()), !dbg !997
  %cmp33.us = icmp slt i64 %inc.us, %9, !dbg !1039
  br i1 %cmp33.us, label %for.body.us, label %for.end, !dbg !1040, !llvm.loop !1060

for.body:                                         ; preds = %for.body.lr.ph, %if.end44
  %i.0163 = phi i64 [ %inc, %if.end44 ], [ 0, %for.body.lr.ph ]
  %vptr.0162 = phi ptr [ %incdec.ptr57, %if.end44 ], [ %call5, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %i.0163, metadata !984, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %vptr.0162, metadata !992, metadata !DIExpression()), !dbg !997
  %arrayidx36 = getelementptr inbounds [3 x double], ptr %vptr.0162, i64 0, i64 1, !dbg !1043
  %arrayidx37 = getelementptr inbounds [3 x double], ptr %vptr.0162, i64 0, i64 2, !dbg !1044
  %call38 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.10, ptr noundef %vptr.0162, ptr noundef nonnull %arrayidx36, ptr noundef nonnull %arrayidx37) #15, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %call38, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp40.not = icmp eq i32 %call38, 3, !dbg !1046
  br i1 %cmp40.not, label %if.end44, label %if.then42, !dbg !1048

if.then42:                                        ; preds = %for.body, %for.body.us
  %.us-phi = phi i64 [ %i.0163.us, %for.body.us ], [ %i.0163, %for.body ]
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %.us-phi), !dbg !1062
  call void @exit(i32 noundef -1) #16, !dbg !1064
  unreachable, !dbg !1064

if.end44:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()), !dbg !997
  %incdec.ptr57 = getelementptr inbounds [3 x double], ptr %vptr.0162, i64 1, !dbg !1058
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !992, metadata !DIExpression()), !dbg !997
  %inc = add nuw nsw i64 %i.0163, 1, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %inc, metadata !984, metadata !DIExpression()), !dbg !997
  %10 = load i64, ptr %totalverts, align 8, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %10, metadata !986, metadata !DIExpression()), !dbg !997
  %cmp33 = icmp slt i64 %inc, %10, !dbg !1039
  br i1 %cmp33, label %for.body, label %for.end, !dbg !1040, !llvm.loop !1060

if.then53:                                        ; preds = %if.end44.us
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %i.0163.us), !dbg !1065
  call void @exit(i32 noundef -1) #16, !dbg !1067
  unreachable, !dbg !1067

for.end:                                          ; preds = %if.end44, %if.end55.us, %if.end26
  %vptr.0.lcssa = phi ptr [ %call5, %if.end26 ], [ %incdec.ptr57.us, %if.end55.us ], [ %incdec.ptr57, %if.end44 ], !dbg !997
  store double 1.000000e+32, ptr %vptr.0.lcssa, align 8, !dbg !1068
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %vptr.0.lcssa, i64 0, i64 1, !dbg !1069
  store double 1.000000e+32, ptr %arrayidx59, align 8, !dbg !1070
  %arrayidx60 = getelementptr inbounds [3 x double], ptr %vptr.0.lcssa, i64 0, i64 2, !dbg !1071
  store double 1.000000e+32, ptr %arrayidx60, align 8, !dbg !1072
  call void @llvm.dbg.value(metadata i64 0, metadata !984, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %0, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %call3, metadata !995, metadata !DIExpression()), !dbg !997
  %11 = load i64, ptr %numelements, align 8, !dbg !1073
  %cmp63168 = icmp sgt i64 %11, 0, !dbg !1076
  br i1 %cmp63168, label %for.body65.lr.ph, label %for.end99, !dbg !1077

for.body65.lr.ph:                                 ; preds = %for.end
  br i1 %cmp16, label %for.body65.us, label %for.body65, !dbg !1078

for.body65.us:                                    ; preds = %for.body65.lr.ph, %if.end94.us
  %pe.0171.us = phi ptr [ %incdec.ptr96.us, %if.end94.us ], [ %0, %for.body65.lr.ph ]
  %pt.0170.us = phi ptr [ %incdec.ptr95.us, %if.end94.us ], [ %call3, %for.body65.lr.ph ]
  %i.1169.us = phi i64 [ %inc98.us, %if.end94.us ], [ 0, %for.body65.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %pe.0171.us, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %pt.0170.us, metadata !995, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %i.1169.us, metadata !984, metadata !DIExpression()), !dbg !997
  %arrayidx70.us = getelementptr inbounds [3 x double], ptr %pt.0170.us, i64 0, i64 1, !dbg !1080
  %arrayidx72.us = getelementptr inbounds [3 x double], ptr %pt.0170.us, i64 0, i64 2, !dbg !1083
  %call73.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.13, ptr noundef %pt.0170.us, ptr noundef nonnull %arrayidx70.us, ptr noundef nonnull %arrayidx72.us) #15, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %call73.us, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp75.not.us = icmp eq i32 %call73.us, 3, !dbg !1085
  br i1 %cmp75.not.us, label %if.end80.us, label %if.then77, !dbg !1087

if.end80.us:                                      ; preds = %for.body65.us
  %vptr81.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 0, i32 2, !dbg !1088
  store ptr %call5, ptr %vptr81.us, align 8, !dbg !1089
  %nptr82.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 0, i32 3, !dbg !1090
  store ptr %call7, ptr %nptr82.us, align 8, !dbg !1091
  %norminterp.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 0, i32 6, !dbg !1092
  store i64 %7, ptr %norminterp.us, align 8, !dbg !1093
  %vindex.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 0, i32 4, !dbg !1094
  %arrayidx85.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 0, i32 4, i64 1, !dbg !1095
  %arrayidx87.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 0, i32 4, i64 2, !dbg !1096
  %call88.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.15, ptr noundef nonnull %vindex.us, ptr noundef nonnull %arrayidx85.us, ptr noundef nonnull %arrayidx87.us) #15, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %call88.us, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp90.not.us = icmp eq i32 %call88.us, 3, !dbg !1098
  br i1 %cmp90.not.us, label %if.end94.us, label %if.then92, !dbg !1100

if.end94.us:                                      ; preds = %if.end80.us
  %data.us = getelementptr inbounds %struct.element, ptr %pe.0171.us, i64 0, i32 2, !dbg !1101
  store ptr %pt.0170.us, ptr %data.us, align 8, !dbg !1102
  %parent.us = getelementptr inbounds %struct.element, ptr %pe.0171.us, i64 0, i32 1, !dbg !1103
  store ptr %po, ptr %parent.us, align 8, !dbg !1104
  call void @TriElementBoundBox(ptr noundef %pe.0171.us, ptr noundef nonnull %pt.0170.us), !dbg !1105
  %incdec.ptr95.us = getelementptr inbounds %struct.tri, ptr %pt.0170.us, i64 1, !dbg !1106
  call void @llvm.dbg.value(metadata ptr %incdec.ptr95.us, metadata !995, metadata !DIExpression()), !dbg !997
  %incdec.ptr96.us = getelementptr inbounds %struct.element, ptr %pe.0171.us, i64 1, !dbg !1107
  call void @llvm.dbg.value(metadata ptr %incdec.ptr96.us, metadata !996, metadata !DIExpression()), !dbg !997
  %inc98.us = add nuw nsw i64 %i.1169.us, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %inc98.us, metadata !984, metadata !DIExpression()), !dbg !997
  %12 = load i64, ptr %numelements, align 8, !dbg !1073
  %cmp63.us = icmp slt i64 %inc98.us, %12, !dbg !1076
  br i1 %cmp63.us, label %for.body65.us, label %for.end99, !dbg !1077, !llvm.loop !1109

for.body65:                                       ; preds = %for.body65.lr.ph, %if.end94
  %pe.0171 = phi ptr [ %incdec.ptr96, %if.end94 ], [ %0, %for.body65.lr.ph ]
  %pt.0170 = phi ptr [ %incdec.ptr95, %if.end94 ], [ %call3, %for.body65.lr.ph ]
  %i.1169 = phi i64 [ %inc98, %if.end94 ], [ 0, %for.body65.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %pe.0171, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %pt.0170, metadata !995, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %i.1169, metadata !984, metadata !DIExpression()), !dbg !997
  %vptr81 = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 0, i32 2, !dbg !1088
  store ptr %call5, ptr %vptr81, align 8, !dbg !1089
  %nptr82 = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 0, i32 3, !dbg !1090
  store ptr %call7, ptr %nptr82, align 8, !dbg !1091
  %norminterp = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 0, i32 6, !dbg !1092
  store i64 %7, ptr %norminterp, align 8, !dbg !1093
  %vindex = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 0, i32 4, !dbg !1094
  %arrayidx85 = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 0, i32 4, i64 1, !dbg !1095
  %arrayidx87 = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 0, i32 4, i64 2, !dbg !1096
  %call88 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.15, ptr noundef nonnull %vindex, ptr noundef nonnull %arrayidx85, ptr noundef nonnull %arrayidx87) #15, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %call88, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !997
  %cmp90.not = icmp eq i32 %call88, 3, !dbg !1098
  br i1 %cmp90.not, label %if.end94, label %if.then92, !dbg !1100

if.then77:                                        ; preds = %for.body65.us
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i64 noundef %i.1169.us), !dbg !1111
  call void @exit(i32 noundef -1) #16, !dbg !1113
  unreachable, !dbg !1113

if.then92:                                        ; preds = %for.body65, %if.end80.us
  %.us-phi173 = phi i64 [ %i.1169.us, %if.end80.us ], [ %i.1169, %for.body65 ]
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i64 noundef %.us-phi173), !dbg !1114
  call void @exit(i32 noundef -1) #16, !dbg !1116
  unreachable, !dbg !1116

if.end94:                                         ; preds = %for.body65
  %data = getelementptr inbounds %struct.element, ptr %pe.0171, i64 0, i32 2, !dbg !1101
  store ptr %pt.0170, ptr %data, align 8, !dbg !1102
  %parent = getelementptr inbounds %struct.element, ptr %pe.0171, i64 0, i32 1, !dbg !1103
  store ptr %po, ptr %parent, align 8, !dbg !1104
  call void @TriElementBoundBox(ptr noundef %pe.0171, ptr noundef nonnull %pt.0170), !dbg !1105
  %incdec.ptr95 = getelementptr inbounds %struct.tri, ptr %pt.0170, i64 1, !dbg !1106
  call void @llvm.dbg.value(metadata ptr %incdec.ptr95, metadata !995, metadata !DIExpression()), !dbg !997
  %incdec.ptr96 = getelementptr inbounds %struct.element, ptr %pe.0171, i64 1, !dbg !1107
  call void @llvm.dbg.value(metadata ptr %incdec.ptr96, metadata !996, metadata !DIExpression()), !dbg !997
  %inc98 = add nuw nsw i64 %i.1169, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %inc98, metadata !984, metadata !DIExpression()), !dbg !997
  %13 = load i64, ptr %numelements, align 8, !dbg !1073
  %cmp63 = icmp slt i64 %inc98, %13, !dbg !1076
  br i1 %cmp63, label %for.body65, label %for.end99, !dbg !1077, !llvm.loop !1109

for.end99:                                        ; preds = %if.end94, %if.end94.us, %for.end
  br i1 %cmp29, label %if.end102, label %if.then101, !dbg !1117

if.then101:                                       ; preds = %for.end99
  call void @GlobalFree(ptr noundef %call7) #15, !dbg !1118
  br label %if.end102, !dbg !1118

if.end102:                                        ; preds = %if.then101, %for.end99
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %normstr) #15, !dbg !1120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %totalverts) #15, !dbg !1120
  ret void, !dbg !1120
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

declare !dbg !1121 ptr @GlobalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !1124 void @GlobalFree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "tri.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "eea632825f418ba2f14690f4baaf4c84")
!2 = !{!3, !28}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "TRI", file: !5, line: 742, baseType: !6)
!5 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tri", file: !5, line: 731, size: 768, elements: !7)
!7 = !{!8, !15, !16, !18, !19, !23, !24, !27}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "norm", scope: !6, file: !5, line: 733, baseType: !9, size: 192)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !5, line: 314, baseType: !10)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !5, line: 310, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !DISubrange(count: 3)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6, file: !5, line: 734, baseType: !11, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !6, file: !5, line: 735, baseType: !17, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nptr", scope: !6, file: !5, line: 736, baseType: !17, size: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !6, file: !5, line: 737, baseType: !20, size: 192, offset: 384)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !13)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !5, line: 297, baseType: !22)
!22 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !6, file: !5, line: 738, baseType: !21, size: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "norminterp", scope: !6, file: !5, line: 739, baseType: !25, size: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !5, line: 299, baseType: !26)
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "vorder", scope: !6, file: !5, line: 740, baseType: !25, size: 64, offset: 704)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !5, line: 287, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!38 = distinct !DISubprogram(name: "TriName", scope: !1, file: !1, line: 58, type: !39, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!28}
!41 = !{}
!42 = !DILocation(line: 60, column: 2, scope: !38)
!43 = distinct !DISubprogram(name: "TriPrint", scope: !1, file: !1, line: 77, type: !44, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !5, line: 499, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !5, line: 488, size: 1024, elements: !49)
!49 = !{!50, !51, !55, !61, !71, !72, !96, !109}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !48, file: !5, line: 490, baseType: !21, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !5, line: 491, baseType: !52, size: 256, offset: 64)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !48, file: !5, line: 492, baseType: !56, size: 384, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !5, line: 418, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !5, line: 413, size: 384, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !57, file: !5, line: 415, baseType: !10, size: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !57, file: !5, line: 416, baseType: !10, size: 192, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !48, file: !5, line: 493, baseType: !62, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !5, line: 481, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !5, line: 474, size: 576, elements: !65)
!65 = !{!66, !67, !69, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !64, file: !5, line: 476, baseType: !21, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !5, line: 477, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !64, file: !5, line: 478, baseType: !28, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !64, file: !5, line: 479, baseType: !56, size: 384, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !48, file: !5, line: 494, baseType: !21, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !48, file: !5, line: 495, baseType: !73, size: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !5, line: 340, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !5, line: 327, size: 640, elements: !76)
!76 = !{!77, !81, !85, !86, !87, !88, !92, !93, !94, !95}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !5, line: 329, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!28, null}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !75, file: !5, line: 330, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, null}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !75, file: !5, line: 331, baseType: !82, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !75, file: !5, line: 332, baseType: !82, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !75, file: !5, line: 333, baseType: !82, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !75, file: !5, line: 334, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!21, null}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !75, file: !5, line: 335, baseType: !89, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !75, file: !5, line: 336, baseType: !82, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !75, file: !5, line: 337, baseType: !82, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !75, file: !5, line: 338, baseType: !82, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !48, file: !5, line: 496, baseType: !97, size: 64, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !5, line: 357, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !5, line: 347, size: 704, elements: !100)
!100 = !{!101, !103, !104, !105, !106, !107, !108}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !99, file: !5, line: 349, baseType: !102, size: 192)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !5, line: 319, baseType: !9)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !99, file: !5, line: 350, baseType: !102, size: 192, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !99, file: !5, line: 351, baseType: !11, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !99, file: !5, line: 352, baseType: !11, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !99, file: !5, line: 353, baseType: !11, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !99, file: !5, line: 354, baseType: !11, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !99, file: !5, line: 355, baseType: !11, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !5, line: 497, baseType: !68, size: 64, offset: 960)
!110 = !{!111, !112, !113, !114, !116, !117, !118, !119}
!111 = !DILocalVariable(name: "po", arg: 1, scope: !43, file: !1, line: 77, type: !46)
!112 = !DILocalVariable(name: "i", scope: !43, file: !1, line: 79, type: !21)
!113 = !DILocalVariable(name: "j", scope: !43, file: !1, line: 79, type: !21)
!114 = !DILocalVariable(name: "vindex", scope: !43, file: !1, line: 80, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!116 = !DILocalVariable(name: "vlist", scope: !43, file: !1, line: 81, type: !17)
!117 = !DILocalVariable(name: "vptr", scope: !43, file: !1, line: 81, type: !17)
!118 = !DILocalVariable(name: "pt", scope: !43, file: !1, line: 82, type: !3)
!119 = !DILocalVariable(name: "pe", scope: !43, file: !1, line: 83, type: !62)
!120 = !DILocation(line: 0, scope: !43)
!121 = !DILocation(line: 85, column: 11, scope: !43)
!122 = !DILocation(line: 86, column: 10, scope: !43)
!123 = !DILocation(line: 86, column: 54, scope: !43)
!124 = !DILocation(line: 86, column: 2, scope: !43)
!125 = !DILocation(line: 88, column: 22, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 88, column: 2)
!127 = distinct !DILexicalBlock(scope: !43, file: !1, line: 88, column: 2)
!128 = !DILocation(line: 88, column: 16, scope: !126)
!129 = !DILocation(line: 88, column: 2, scope: !127)
!130 = !DILocation(line: 90, column: 19, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 89, column: 3)
!132 = !DILocation(line: 92, column: 11, scope: !131)
!133 = !DILocation(line: 92, column: 64, scope: !131)
!134 = !DILocation(line: 92, column: 77, scope: !131)
!135 = !DILocation(line: 92, column: 90, scope: !131)
!136 = !DILocation(line: 92, column: 107, scope: !131)
!137 = !DILocation(line: 92, column: 3, scope: !131)
!138 = !DILocation(line: 94, column: 16, scope: !131)
!139 = !DILocation(line: 95, column: 16, scope: !131)
!140 = !DILocation(line: 97, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !131, file: !1, line: 97, column: 3)
!142 = !DILocation(line: 99, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 98, column: 4)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 97, column: 3)
!145 = !DILocation(line: 99, column: 17, scope: !143)
!146 = !DILocation(line: 100, column: 12, scope: !143)
!147 = !DILocation(line: 100, column: 39, scope: !143)
!148 = !DILocation(line: 100, column: 51, scope: !143)
!149 = !DILocation(line: 100, column: 63, scope: !143)
!150 = !DILocation(line: 100, column: 4, scope: !143)
!151 = !DILocation(line: 101, column: 10, scope: !143)
!152 = !DILocation(line: 97, column: 23, scope: !144)
!153 = !DILocation(line: 97, column: 17, scope: !144)
!154 = distinct !{!154, !140, !155, !156, !157}
!155 = !DILocation(line: 102, column: 4, scope: !141)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !DILocation(line: 104, column: 5, scope: !131)
!159 = !DILocation(line: 88, column: 36, scope: !126)
!160 = distinct !{!160, !129, !161, !156, !157}
!161 = !DILocation(line: 105, column: 3, scope: !127)
!162 = !DILocation(line: 106, column: 2, scope: !43)
!163 = distinct !DISubprogram(name: "TriElementBoundBox", scope: !1, file: !1, line: 123, type: !164, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !62, !3}
!166 = !{!167, !168, !169, !170, !171, !173, !174, !175, !176, !177, !178, !179, !180}
!167 = !DILocalVariable(name: "pe", arg: 1, scope: !163, file: !1, line: 123, type: !62)
!168 = !DILocalVariable(name: "pt", arg: 2, scope: !163, file: !1, line: 123, type: !3)
!169 = !DILocalVariable(name: "i", scope: !163, file: !1, line: 125, type: !21)
!170 = !DILocalVariable(name: "vindex", scope: !163, file: !1, line: 126, type: !115)
!171 = !DILocalVariable(name: "pbb", scope: !163, file: !1, line: 127, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!173 = !DILocalVariable(name: "vlist", scope: !163, file: !1, line: 128, type: !17)
!174 = !DILocalVariable(name: "vptr", scope: !163, file: !1, line: 128, type: !17)
!175 = !DILocalVariable(name: "minx", scope: !163, file: !1, line: 129, type: !11)
!176 = !DILocalVariable(name: "maxx", scope: !163, file: !1, line: 129, type: !11)
!177 = !DILocalVariable(name: "miny", scope: !163, file: !1, line: 130, type: !11)
!178 = !DILocalVariable(name: "maxy", scope: !163, file: !1, line: 130, type: !11)
!179 = !DILocalVariable(name: "minz", scope: !163, file: !1, line: 131, type: !11)
!180 = !DILocalVariable(name: "maxz", scope: !163, file: !1, line: 131, type: !11)
!181 = !DILocation(line: 0, scope: !163)
!182 = !DILocation(line: 138, column: 15, scope: !163)
!183 = !DILocation(line: 139, column: 15, scope: !163)
!184 = !DILocation(line: 141, column: 2, scope: !185)
!185 = distinct !DILexicalBlock(scope: !163, file: !1, line: 141, column: 2)
!186 = !DILocation(line: 143, column: 19, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 142, column: 3)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 141, column: 2)
!189 = !DILocation(line: 143, column: 16, scope: !187)
!190 = !DILocation(line: 145, column: 10, scope: !187)
!191 = !DILocation(line: 146, column: 10, scope: !187)
!192 = !DILocation(line: 147, column: 10, scope: !187)
!193 = !DILocation(line: 149, column: 10, scope: !187)
!194 = !DILocation(line: 150, column: 10, scope: !187)
!195 = !DILocation(line: 151, column: 10, scope: !187)
!196 = !DILocation(line: 153, column: 9, scope: !187)
!197 = !DILocation(line: 141, column: 22, scope: !188)
!198 = !DILocation(line: 141, column: 16, scope: !188)
!199 = distinct !{!199, !184, !200, !156, !157}
!200 = !DILocation(line: 154, column: 3, scope: !185)
!201 = !DILocation(line: 133, column: 14, scope: !163)
!202 = !DILocation(line: 156, column: 16, scope: !163)
!203 = !DILocation(line: 157, column: 2, scope: !163)
!204 = !DILocation(line: 157, column: 16, scope: !163)
!205 = !DILocation(line: 158, column: 2, scope: !163)
!206 = !DILocation(line: 158, column: 16, scope: !163)
!207 = !DILocation(line: 160, column: 7, scope: !163)
!208 = !DILocation(line: 160, column: 16, scope: !163)
!209 = !DILocation(line: 161, column: 2, scope: !163)
!210 = !DILocation(line: 161, column: 16, scope: !163)
!211 = !DILocation(line: 162, column: 2, scope: !163)
!212 = !DILocation(line: 162, column: 16, scope: !163)
!213 = !DILocation(line: 163, column: 2, scope: !163)
!214 = distinct !DISubprogram(name: "TriBoundBox", scope: !1, file: !1, line: 179, type: !44, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!216 = !DILocalVariable(name: "po", arg: 1, scope: !214, file: !1, line: 179, type: !46)
!217 = !DILocalVariable(name: "i", scope: !214, file: !1, line: 181, type: !21)
!218 = !DILocalVariable(name: "pt", scope: !214, file: !1, line: 182, type: !3)
!219 = !DILocalVariable(name: "pe", scope: !214, file: !1, line: 183, type: !62)
!220 = !DILocalVariable(name: "pbb", scope: !214, file: !1, line: 184, type: !172)
!221 = !DILocalVariable(name: "minx", scope: !214, file: !1, line: 185, type: !11)
!222 = !DILocalVariable(name: "maxx", scope: !214, file: !1, line: 185, type: !11)
!223 = !DILocalVariable(name: "miny", scope: !214, file: !1, line: 186, type: !11)
!224 = !DILocalVariable(name: "maxy", scope: !214, file: !1, line: 186, type: !11)
!225 = !DILocalVariable(name: "minz", scope: !214, file: !1, line: 187, type: !11)
!226 = !DILocalVariable(name: "maxz", scope: !214, file: !1, line: 187, type: !11)
!227 = !DILocation(line: 0, scope: !214)
!228 = !DILocation(line: 195, column: 22, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 195, column: 2)
!230 = distinct !DILexicalBlock(scope: !214, file: !1, line: 195, column: 2)
!231 = !DILocation(line: 195, column: 16, scope: !229)
!232 = !DILocation(line: 195, column: 2, scope: !230)
!233 = !DILocation(line: 189, column: 13, scope: !214)
!234 = !DILocation(line: 197, column: 19, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !1, line: 196, column: 3)
!236 = !DILocation(line: 198, column: 3, scope: !235)
!237 = !DILocation(line: 200, column: 10, scope: !235)
!238 = !DILocation(line: 201, column: 10, scope: !235)
!239 = !DILocation(line: 202, column: 10, scope: !235)
!240 = !DILocation(line: 204, column: 10, scope: !235)
!241 = !DILocation(line: 205, column: 10, scope: !235)
!242 = !DILocation(line: 206, column: 10, scope: !235)
!243 = !DILocation(line: 208, column: 5, scope: !235)
!244 = !DILocation(line: 195, column: 36, scope: !229)
!245 = distinct !{!245, !232, !246, !156, !157}
!246 = !DILocation(line: 209, column: 3, scope: !230)
!247 = !DILocation(line: 190, column: 15, scope: !214)
!248 = !DILocation(line: 211, column: 16, scope: !214)
!249 = !DILocation(line: 212, column: 2, scope: !214)
!250 = !DILocation(line: 212, column: 16, scope: !214)
!251 = !DILocation(line: 213, column: 2, scope: !214)
!252 = !DILocation(line: 213, column: 16, scope: !214)
!253 = !DILocation(line: 215, column: 7, scope: !214)
!254 = !DILocation(line: 215, column: 16, scope: !214)
!255 = !DILocation(line: 216, column: 2, scope: !214)
!256 = !DILocation(line: 216, column: 16, scope: !214)
!257 = !DILocation(line: 217, column: 2, scope: !214)
!258 = !DILocation(line: 217, column: 16, scope: !214)
!259 = !DILocation(line: 218, column: 2, scope: !214)
!260 = distinct !DISubprogram(name: "TriNormal", scope: !1, file: !1, line: 240, type: !261, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !263, !272, !272}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !5, line: 514, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !5, line: 506, size: 320, elements: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !265, file: !5, line: 508, baseType: !11, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !265, file: !5, line: 509, baseType: !62, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !265, file: !5, line: 510, baseType: !11, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !265, file: !5, line: 511, baseType: !11, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !265, file: !5, line: 512, baseType: !11, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282}
!274 = !DILocalVariable(name: "hit", arg: 1, scope: !260, file: !1, line: 240, type: !263)
!275 = !DILocalVariable(name: "Pi", arg: 2, scope: !260, file: !1, line: 240, type: !272)
!276 = !DILocalVariable(name: "Ni", arg: 3, scope: !260, file: !1, line: 240, type: !272)
!277 = !DILocalVariable(name: "pe", scope: !260, file: !1, line: 242, type: !62)
!278 = !DILocalVariable(name: "pt", scope: !260, file: !1, line: 243, type: !3)
!279 = !DILocalVariable(name: "pn", scope: !260, file: !1, line: 244, type: !17)
!280 = !DILocalVariable(name: "n0", scope: !260, file: !1, line: 245, type: !17)
!281 = !DILocalVariable(name: "n1", scope: !260, file: !1, line: 245, type: !17)
!282 = !DILocalVariable(name: "n2", scope: !260, file: !1, line: 245, type: !17)
!283 = !DILocation(line: 0, scope: !260)
!284 = !DILocation(line: 249, column: 12, scope: !260)
!285 = !DILocation(line: 250, column: 18, scope: !260)
!286 = !DILocation(line: 251, column: 11, scope: !260)
!287 = !DILocation(line: 253, column: 10, scope: !288)
!288 = distinct !DILexicalBlock(scope: !260, file: !1, line: 253, column: 6)
!289 = !DILocation(line: 253, column: 6, scope: !288)
!290 = !DILocation(line: 253, column: 6, scope: !260)
!291 = !DILocation(line: 255, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 255, column: 7)
!293 = distinct !DILexicalBlock(scope: !288, file: !1, line: 254, column: 3)
!294 = !DILocation(line: 255, column: 18, scope: !292)
!295 = !DILocation(line: 255, column: 7, scope: !293)
!296 = !DILocation(line: 258, column: 14, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 256, column: 4)
!298 = !DILocation(line: 259, column: 14, scope: !297)
!299 = !DILocation(line: 260, column: 4, scope: !297)
!300 = !DILocation(line: 264, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !1, line: 262, column: 4)
!302 = !DILocation(line: 265, column: 14, scope: !301)
!303 = !DILocation(line: 0, scope: !292)
!304 = !DILocation(line: 268, column: 15, scope: !293)
!305 = !DILocation(line: 268, column: 3, scope: !293)
!306 = !DILocation(line: 289, column: 16, scope: !293)
!307 = !DILocation(line: 289, column: 37, scope: !293)
!308 = !DILocation(line: 289, column: 58, scope: !293)
!309 = !DILocation(line: 271, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !293, file: !1, line: 269, column: 4)
!311 = !DILocation(line: 271, column: 10, scope: !310)
!312 = !DILocation(line: 271, column: 13, scope: !310)
!313 = !DILocation(line: 272, column: 16, scope: !310)
!314 = !DILocation(line: 272, column: 10, scope: !310)
!315 = !DILocation(line: 272, column: 13, scope: !310)
!316 = !DILocation(line: 273, column: 16, scope: !310)
!317 = !DILocation(line: 273, column: 10, scope: !310)
!318 = !DILocation(line: 273, column: 13, scope: !310)
!319 = !DILocation(line: 274, column: 5, scope: !310)
!320 = !DILocation(line: 277, column: 16, scope: !310)
!321 = !DILocation(line: 277, column: 10, scope: !310)
!322 = !DILocation(line: 277, column: 13, scope: !310)
!323 = !DILocation(line: 278, column: 16, scope: !310)
!324 = !DILocation(line: 278, column: 10, scope: !310)
!325 = !DILocation(line: 278, column: 13, scope: !310)
!326 = !DILocation(line: 279, column: 16, scope: !310)
!327 = !DILocation(line: 279, column: 10, scope: !310)
!328 = !DILocation(line: 279, column: 13, scope: !310)
!329 = !DILocation(line: 280, column: 5, scope: !310)
!330 = !DILocation(line: 283, column: 16, scope: !310)
!331 = !DILocation(line: 283, column: 10, scope: !310)
!332 = !DILocation(line: 283, column: 13, scope: !310)
!333 = !DILocation(line: 284, column: 16, scope: !310)
!334 = !DILocation(line: 284, column: 10, scope: !310)
!335 = !DILocation(line: 284, column: 13, scope: !310)
!336 = !DILocation(line: 285, column: 16, scope: !310)
!337 = !DILocation(line: 285, column: 10, scope: !310)
!338 = !DILocation(line: 285, column: 13, scope: !310)
!339 = !DILocation(line: 286, column: 5, scope: !310)
!340 = !DILocation(line: 289, column: 21, scope: !293)
!341 = !DILocation(line: 289, column: 42, scope: !293)
!342 = !DILocation(line: 289, column: 40, scope: !293)
!343 = !DILocation(line: 289, column: 30, scope: !293)
!344 = !DILocation(line: 289, column: 63, scope: !293)
!345 = !DILocation(line: 289, column: 51, scope: !293)
!346 = !DILocation(line: 289, column: 9, scope: !293)
!347 = !DILocation(line: 290, column: 16, scope: !293)
!348 = !DILocation(line: 290, column: 21, scope: !293)
!349 = !DILocation(line: 290, column: 37, scope: !293)
!350 = !DILocation(line: 290, column: 42, scope: !293)
!351 = !DILocation(line: 290, column: 40, scope: !293)
!352 = !DILocation(line: 290, column: 30, scope: !293)
!353 = !DILocation(line: 290, column: 58, scope: !293)
!354 = !DILocation(line: 290, column: 63, scope: !293)
!355 = !DILocation(line: 290, column: 51, scope: !293)
!356 = !DILocation(line: 290, column: 3, scope: !293)
!357 = !DILocation(line: 290, column: 9, scope: !293)
!358 = !DILocation(line: 291, column: 16, scope: !293)
!359 = !DILocation(line: 291, column: 21, scope: !293)
!360 = !DILocation(line: 291, column: 37, scope: !293)
!361 = !DILocation(line: 291, column: 42, scope: !293)
!362 = !DILocation(line: 291, column: 40, scope: !293)
!363 = !DILocation(line: 291, column: 30, scope: !293)
!364 = !DILocation(line: 291, column: 58, scope: !293)
!365 = !DILocation(line: 291, column: 63, scope: !293)
!366 = !DILocation(line: 291, column: 51, scope: !293)
!367 = !DILocation(line: 291, column: 3, scope: !293)
!368 = !DILocation(line: 291, column: 9, scope: !293)
!369 = !DILocation(line: 293, column: 3, scope: !293)
!370 = !DILocation(line: 294, column: 3, scope: !293)
!371 = !DILocation(line: 296, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !288, file: !1, line: 296, column: 3)
!373 = !DILocation(line: 297, column: 2, scope: !260)
!374 = !DISubprogram(name: "VecNorm", scope: !5, file: !5, line: 892, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !272}
!377 = distinct !DISubprogram(name: "TriDataNormalize", scope: !1, file: !1, line: 314, type: !378, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !46, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 4)
!384 = !{!385, !386, !387, !388, !391, !392, !393}
!385 = !DILocalVariable(name: "po", arg: 1, scope: !377, file: !1, line: 314, type: !46)
!386 = !DILocalVariable(name: "normMat", arg: 2, scope: !377, file: !1, line: 314, type: !380)
!387 = !DILocalVariable(name: "i", scope: !377, file: !1, line: 316, type: !21)
!388 = !DILocalVariable(name: "coord", scope: !377, file: !1, line: 317, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !5, line: 318, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !5, line: 315, baseType: !381)
!391 = !DILocalVariable(name: "pv", scope: !377, file: !1, line: 318, type: !17)
!392 = !DILocalVariable(name: "pt", scope: !377, file: !1, line: 319, type: !3)
!393 = !DILocalVariable(name: "pe", scope: !377, file: !1, line: 320, type: !62)
!394 = !DILocation(line: 0, scope: !377)
!395 = !DILocation(line: 317, column: 2, scope: !377)
!396 = !DILocation(line: 317, column: 8, scope: !377)
!397 = !DILocation(line: 325, column: 11, scope: !377)
!398 = !DILocation(line: 326, column: 25, scope: !377)
!399 = !DILocation(line: 326, column: 2, scope: !377)
!400 = !DILocation(line: 331, column: 18, scope: !377)
!401 = !DILocation(line: 332, column: 11, scope: !377)
!402 = !DILocation(line: 334, column: 13, scope: !377)
!403 = !DILocation(line: 334, column: 11, scope: !377)
!404 = !DILocation(line: 335, column: 13, scope: !377)
!405 = !DILocation(line: 335, column: 2, scope: !377)
!406 = !DILocation(line: 335, column: 11, scope: !377)
!407 = !DILocation(line: 336, column: 13, scope: !377)
!408 = !DILocation(line: 336, column: 2, scope: !377)
!409 = !DILocation(line: 336, column: 11, scope: !377)
!410 = !DILocation(line: 337, column: 2, scope: !377)
!411 = !DILocation(line: 342, column: 18, scope: !377)
!412 = !DILocation(line: 342, column: 31, scope: !377)
!413 = !DILocation(line: 361, column: 22, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 361, column: 2)
!415 = distinct !DILexicalBlock(scope: !377, file: !1, line: 361, column: 2)
!416 = !DILocation(line: 361, column: 16, scope: !414)
!417 = !DILocation(line: 361, column: 2, scope: !415)
!418 = !DILocation(line: 344, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !377, file: !1, line: 343, column: 3)
!420 = !DILocation(line: 346, column: 14, scope: !419)
!421 = !DILocation(line: 346, column: 12, scope: !419)
!422 = !DILocation(line: 347, column: 14, scope: !419)
!423 = !DILocation(line: 347, column: 3, scope: !419)
!424 = !DILocation(line: 347, column: 12, scope: !419)
!425 = !DILocation(line: 348, column: 14, scope: !419)
!426 = !DILocation(line: 348, column: 3, scope: !419)
!427 = !DILocation(line: 348, column: 12, scope: !419)
!428 = !DILocation(line: 350, column: 5, scope: !419)
!429 = !DILocation(line: 352, column: 14, scope: !419)
!430 = !DILocation(line: 352, column: 12, scope: !419)
!431 = !DILocation(line: 353, column: 14, scope: !419)
!432 = !DILocation(line: 353, column: 12, scope: !419)
!433 = !DILocation(line: 354, column: 14, scope: !419)
!434 = !DILocation(line: 354, column: 12, scope: !419)
!435 = distinct !{!435, !436, !437, !156, !157}
!436 = !DILocation(line: 342, column: 2, scope: !377)
!437 = !DILocation(line: 356, column: 3, scope: !377)
!438 = !DILocation(line: 363, column: 19, scope: !439)
!439 = distinct !DILexicalBlock(scope: !414, file: !1, line: 362, column: 3)
!440 = !DILocation(line: 364, column: 26, scope: !439)
!441 = !DILocation(line: 364, column: 3, scope: !439)
!442 = !DILocation(line: 368, column: 17, scope: !439)
!443 = !DILocation(line: 368, column: 31, scope: !439)
!444 = !DILocation(line: 368, column: 25, scope: !439)
!445 = !DILocation(line: 368, column: 22, scope: !439)
!446 = !DILocation(line: 369, column: 13, scope: !439)
!447 = !DILocation(line: 369, column: 25, scope: !439)
!448 = !DILocation(line: 369, column: 36, scope: !439)
!449 = !DILocation(line: 369, column: 48, scope: !439)
!450 = !DILocation(line: 369, column: 47, scope: !439)
!451 = !DILocation(line: 369, column: 34, scope: !439)
!452 = !DILocation(line: 369, column: 59, scope: !439)
!453 = !DILocation(line: 369, column: 71, scope: !439)
!454 = !DILocation(line: 369, column: 57, scope: !439)
!455 = !DILocation(line: 369, column: 11, scope: !439)
!456 = !DILocation(line: 369, column: 7, scope: !439)
!457 = !DILocation(line: 369, column: 9, scope: !439)
!458 = !DILocation(line: 371, column: 5, scope: !439)
!459 = !DILocation(line: 361, column: 36, scope: !414)
!460 = distinct !{!460, !417, !461, !156, !157}
!461 = !DILocation(line: 372, column: 3, scope: !415)
!462 = !DILocation(line: 373, column: 2, scope: !377)
!463 = !DISubprogram(name: "NormalizeBoundBox", scope: !5, file: !5, line: 808, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !172, !380}
!466 = !DISubprogram(name: "VecMatMult", scope: !5, file: !5, line: 893, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !272, !380, !272}
!469 = distinct !DISubprogram(name: "TriPeIntersect", scope: !1, file: !1, line: 395, type: !470, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !561)
!470 = !DISubroutineType(types: !471)
!471 = !{!21, !472, !62, !263}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !5, line: 625, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !5, line: 611, size: 7104, elements: !475)
!475 = !{!476, !478, !479, !480, !481, !482, !483, !551, !552, !553, !557, !560}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !474, file: !5, line: 613, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !5, line: 301, baseType: !22)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !474, file: !5, line: 614, baseType: !21, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !474, file: !5, line: 614, baseType: !21, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !474, file: !5, line: 615, baseType: !9, size: 192, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !474, file: !5, line: 616, baseType: !9, size: 192, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !474, file: !5, line: 617, baseType: !21, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !474, file: !5, line: 618, baseType: !484, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !5, line: 603, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !5, line: 582, size: 1216, elements: !487)
!487 = !{!488, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !486, file: !5, line: 584, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !5, line: 572, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !5, line: 539, size: 1152, elements: !492)
!492 = !{!493, !494, !510, !513, !515, !516, !517, !518, !519, !520, !521, !538}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !491, file: !5, line: 541, baseType: !21, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !491, file: !5, line: 542, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !5, line: 405, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !5, line: 394, size: 320, elements: !499)
!499 = !{!500, !501, !502, !504, !505, !506}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !498, file: !5, line: 396, baseType: !21, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !498, file: !5, line: 397, baseType: !21, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !5, line: 398, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !498, file: !5, line: 399, baseType: !28, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !498, file: !5, line: 400, baseType: !29, size: 8, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !498, file: !5, line: 403, baseType: !507, size: 56, offset: 264)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 56, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 7)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !491, file: !5, line: 548, baseType: !511, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !5, line: 298, baseType: !26)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !491, file: !5, line: 555, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !491, file: !5, line: 556, baseType: !21, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !491, file: !5, line: 558, baseType: !20, size: 192, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !491, file: !5, line: 562, baseType: !21, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !491, file: !5, line: 563, baseType: !10, size: 192, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !491, file: !5, line: 564, baseType: !10, size: 192, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !491, file: !5, line: 566, baseType: !21, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !491, file: !5, line: 569, baseType: !522, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !5, line: 535, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !5, line: 522, size: 960, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !524, file: !5, line: 524, baseType: !514, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !524, file: !5, line: 525, baseType: !10, size: 192, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !524, file: !5, line: 527, baseType: !21, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !524, file: !5, line: 528, baseType: !20, size: 192, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !524, file: !5, line: 529, baseType: !20, size: 192, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !524, file: !5, line: 531, baseType: !21, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !524, file: !5, line: 532, baseType: !21, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !524, file: !5, line: 533, baseType: !534, size: 128, offset: 832)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 128, elements: !536)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!536 = !{!537}
!537 = !DISubrange(count: 2)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !5, line: 570, baseType: !539, size: 64, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !486, file: !5, line: 585, baseType: !10, size: 192, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !486, file: !5, line: 587, baseType: !21, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !486, file: !5, line: 589, baseType: !11, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !486, file: !5, line: 591, baseType: !21, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !486, file: !5, line: 593, baseType: !11, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !486, file: !5, line: 595, baseType: !10, size: 192, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !486, file: !5, line: 596, baseType: !20, size: 192, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !486, file: !5, line: 597, baseType: !21, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !486, file: !5, line: 600, baseType: !20, size: 192, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !5, line: 601, baseType: !550, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !474, file: !5, line: 619, baseType: !21, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !474, file: !5, line: 620, baseType: !20, size: 192, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !474, file: !5, line: 621, baseType: !554, size: 6080, offset: 960)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 6080, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 5)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !474, file: !5, line: 622, baseType: !558, size: 32, offset: 7040)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !5, line: 307, baseType: !559)
!559 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !474, file: !5, line: 623, baseType: !558, size: 32, offset: 7072)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!562 = !DILocalVariable(name: "pr", arg: 1, scope: !469, file: !1, line: 395, type: !472)
!563 = !DILocalVariable(name: "pe", arg: 2, scope: !469, file: !1, line: 395, type: !62)
!564 = !DILocalVariable(name: "hit", arg: 3, scope: !469, file: !1, line: 395, type: !263)
!565 = !DILocalVariable(name: "Rd_dot_Pn", scope: !469, file: !1, line: 397, type: !11)
!566 = !DILocalVariable(name: "Ro_dot_Pn", scope: !469, file: !1, line: 398, type: !11)
!567 = !DILocalVariable(name: "q1", scope: !469, file: !1, line: 399, type: !11)
!568 = !DILocalVariable(name: "q2", scope: !469, file: !1, line: 399, type: !11)
!569 = !DILocalVariable(name: "tval", scope: !469, file: !1, line: 400, type: !11)
!570 = !DILocalVariable(name: "v1", scope: !469, file: !1, line: 401, type: !17)
!571 = !DILocalVariable(name: "v2", scope: !469, file: !1, line: 401, type: !17)
!572 = !DILocalVariable(name: "v3", scope: !469, file: !1, line: 401, type: !17)
!573 = !DILocalVariable(name: "e1", scope: !469, file: !1, line: 402, type: !9)
!574 = !DILocalVariable(name: "e2", scope: !469, file: !1, line: 402, type: !9)
!575 = !DILocalVariable(name: "e3", scope: !469, file: !1, line: 402, type: !9)
!576 = !DILocalVariable(name: "pt", scope: !469, file: !1, line: 403, type: !3)
!577 = !DILocation(line: 0, scope: !469)
!578 = !DILocation(line: 406, column: 18, scope: !469)
!579 = !DILocation(line: 408, column: 14, scope: !469)
!580 = !DILocation(line: 410, column: 6, scope: !581)
!581 = distinct !DILexicalBlock(scope: !469, file: !1, line: 410, column: 6)
!582 = !DILocation(line: 410, column: 21, scope: !581)
!583 = !DILocation(line: 410, column: 6, scope: !469)
!584 = !DILocation(line: 413, column: 14, scope: !469)
!585 = !DILocation(line: 415, column: 15, scope: !469)
!586 = !DILocation(line: 415, column: 17, scope: !469)
!587 = !DILocation(line: 415, column: 9, scope: !469)
!588 = !DILocation(line: 415, column: 29, scope: !469)
!589 = !DILocation(line: 416, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !469, file: !1, line: 416, column: 6)
!591 = !DILocation(line: 416, column: 6, scope: !469)
!592 = !DILocation(line: 425, column: 11, scope: !469)
!593 = !DILocation(line: 425, column: 22, scope: !469)
!594 = !DILocation(line: 425, column: 18, scope: !469)
!595 = !DILocation(line: 425, column: 16, scope: !469)
!596 = !DILocation(line: 427, column: 10, scope: !597)
!597 = distinct !DILexicalBlock(scope: !469, file: !1, line: 427, column: 6)
!598 = !DILocation(line: 427, column: 17, scope: !597)
!599 = !DILocation(line: 427, column: 6, scope: !469)
!600 = !DILocation(line: 429, column: 19, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !1, line: 428, column: 3)
!602 = !DILocation(line: 430, column: 19, scope: !601)
!603 = !DILocation(line: 431, column: 3, scope: !601)
!604 = !DILocation(line: 434, column: 19, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !1, line: 433, column: 3)
!606 = !DILocation(line: 435, column: 19, scope: !605)
!607 = !DILocation(line: 0, scope: !597)
!608 = !DILocation(line: 438, column: 10, scope: !469)
!609 = !DILocation(line: 438, column: 21, scope: !469)
!610 = !DILocation(line: 438, column: 19, scope: !469)
!611 = !DILocation(line: 439, column: 10, scope: !469)
!612 = !DILocation(line: 439, column: 21, scope: !469)
!613 = !DILocation(line: 439, column: 19, scope: !469)
!614 = !DILocation(line: 440, column: 10, scope: !469)
!615 = !DILocation(line: 440, column: 21, scope: !469)
!616 = !DILocation(line: 440, column: 19, scope: !469)
!617 = !DILocation(line: 442, column: 10, scope: !469)
!618 = !DILocation(line: 442, column: 19, scope: !469)
!619 = !DILocation(line: 443, column: 10, scope: !469)
!620 = !DILocation(line: 443, column: 19, scope: !469)
!621 = !DILocation(line: 444, column: 10, scope: !469)
!622 = !DILocation(line: 444, column: 19, scope: !469)
!623 = !DILocation(line: 446, column: 19, scope: !469)
!624 = !DILocation(line: 447, column: 19, scope: !469)
!625 = !DILocation(line: 448, column: 19, scope: !469)
!626 = !DILocation(line: 453, column: 14, scope: !469)
!627 = !DILocation(line: 453, column: 2, scope: !469)
!628 = !DILocation(line: 456, column: 18, scope: !629)
!629 = distinct !DILexicalBlock(scope: !469, file: !1, line: 454, column: 3)
!630 = !DILocation(line: 457, column: 18, scope: !629)
!631 = !DILocation(line: 459, column: 26, scope: !629)
!632 = !DILocation(line: 459, column: 52, scope: !629)
!633 = !DILocation(line: 459, column: 38, scope: !629)
!634 = !DILocation(line: 459, column: 9, scope: !629)
!635 = !DILocation(line: 459, column: 12, scope: !629)
!636 = !DILocation(line: 460, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !629, file: !1, line: 460, column: 8)
!638 = !DILocation(line: 463, column: 28, scope: !629)
!639 = !DILocation(line: 463, column: 26, scope: !629)
!640 = !DILocation(line: 463, column: 54, scope: !629)
!641 = !DILocation(line: 463, column: 52, scope: !629)
!642 = !DILocation(line: 463, column: 38, scope: !629)
!643 = !DILocation(line: 463, column: 9, scope: !629)
!644 = !DILocation(line: 463, column: 12, scope: !629)
!645 = !DILocation(line: 464, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !629, file: !1, line: 464, column: 8)
!647 = !DILocation(line: 467, column: 28, scope: !629)
!648 = !DILocation(line: 467, column: 26, scope: !629)
!649 = !DILocation(line: 467, column: 54, scope: !629)
!650 = !DILocation(line: 467, column: 52, scope: !629)
!651 = !DILocation(line: 467, column: 38, scope: !629)
!652 = !DILocation(line: 467, column: 9, scope: !629)
!653 = !DILocation(line: 467, column: 12, scope: !629)
!654 = !DILocation(line: 468, column: 9, scope: !655)
!655 = distinct !DILexicalBlock(scope: !629, file: !1, line: 468, column: 8)
!656 = !DILocation(line: 473, column: 18, scope: !629)
!657 = !DILocation(line: 474, column: 18, scope: !629)
!658 = !DILocation(line: 476, column: 26, scope: !629)
!659 = !DILocation(line: 476, column: 52, scope: !629)
!660 = !DILocation(line: 476, column: 38, scope: !629)
!661 = !DILocation(line: 476, column: 9, scope: !629)
!662 = !DILocation(line: 476, column: 12, scope: !629)
!663 = !DILocation(line: 477, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !629, file: !1, line: 477, column: 8)
!665 = !DILocation(line: 480, column: 28, scope: !629)
!666 = !DILocation(line: 480, column: 26, scope: !629)
!667 = !DILocation(line: 480, column: 54, scope: !629)
!668 = !DILocation(line: 480, column: 52, scope: !629)
!669 = !DILocation(line: 480, column: 38, scope: !629)
!670 = !DILocation(line: 480, column: 9, scope: !629)
!671 = !DILocation(line: 480, column: 12, scope: !629)
!672 = !DILocation(line: 481, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !629, file: !1, line: 481, column: 8)
!674 = !DILocation(line: 484, column: 28, scope: !629)
!675 = !DILocation(line: 484, column: 26, scope: !629)
!676 = !DILocation(line: 484, column: 54, scope: !629)
!677 = !DILocation(line: 484, column: 52, scope: !629)
!678 = !DILocation(line: 484, column: 38, scope: !629)
!679 = !DILocation(line: 484, column: 9, scope: !629)
!680 = !DILocation(line: 484, column: 12, scope: !629)
!681 = !DILocation(line: 485, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !629, file: !1, line: 485, column: 8)
!683 = !DILocation(line: 490, column: 18, scope: !629)
!684 = !DILocation(line: 491, column: 18, scope: !629)
!685 = !DILocation(line: 493, column: 26, scope: !629)
!686 = !DILocation(line: 493, column: 52, scope: !629)
!687 = !DILocation(line: 493, column: 38, scope: !629)
!688 = !DILocation(line: 493, column: 9, scope: !629)
!689 = !DILocation(line: 493, column: 12, scope: !629)
!690 = !DILocation(line: 494, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !629, file: !1, line: 494, column: 8)
!692 = !DILocation(line: 497, column: 28, scope: !629)
!693 = !DILocation(line: 497, column: 26, scope: !629)
!694 = !DILocation(line: 497, column: 54, scope: !629)
!695 = !DILocation(line: 497, column: 52, scope: !629)
!696 = !DILocation(line: 497, column: 38, scope: !629)
!697 = !DILocation(line: 497, column: 9, scope: !629)
!698 = !DILocation(line: 497, column: 12, scope: !629)
!699 = !DILocation(line: 498, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !629, file: !1, line: 498, column: 8)
!701 = !DILocation(line: 501, column: 28, scope: !629)
!702 = !DILocation(line: 501, column: 26, scope: !629)
!703 = !DILocation(line: 501, column: 54, scope: !629)
!704 = !DILocation(line: 501, column: 52, scope: !629)
!705 = !DILocation(line: 501, column: 38, scope: !629)
!706 = !DILocation(line: 501, column: 9, scope: !629)
!707 = !DILocation(line: 501, column: 12, scope: !629)
!708 = !DILocation(line: 502, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !629, file: !1, line: 502, column: 8)
!710 = !DILocation(line: 508, column: 2, scope: !711)
!711 = distinct !DILexicalBlock(scope: !469, file: !1, line: 508, column: 2)
!712 = !DILocation(line: 509, column: 2, scope: !469)
!713 = !DILocation(line: 510, column: 2, scope: !469)
!714 = distinct !DISubprogram(name: "TriIntersect", scope: !1, file: !1, line: 528, type: !715, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!21, !472, !46, !263}
!717 = !{!718, !719, !720, !721, !722, !723, !724}
!718 = !DILocalVariable(name: "pr", arg: 1, scope: !714, file: !1, line: 528, type: !472)
!719 = !DILocalVariable(name: "po", arg: 2, scope: !714, file: !1, line: 528, type: !46)
!720 = !DILocalVariable(name: "hit", arg: 3, scope: !714, file: !1, line: 528, type: !263)
!721 = !DILocalVariable(name: "i", scope: !714, file: !1, line: 530, type: !21)
!722 = !DILocalVariable(name: "nhits", scope: !714, file: !1, line: 531, type: !21)
!723 = !DILocalVariable(name: "pe", scope: !714, file: !1, line: 532, type: !62)
!724 = !DILocalVariable(name: "newhit", scope: !714, file: !1, line: 533, type: !264)
!725 = !DILocation(line: 0, scope: !714)
!726 = !DILocation(line: 533, column: 2, scope: !714)
!727 = !DILocation(line: 533, column: 10, scope: !714)
!728 = !DILocation(line: 538, column: 12, scope: !714)
!729 = !DILocation(line: 539, column: 11, scope: !714)
!730 = !DILocation(line: 541, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 541, column: 2)
!732 = distinct !DILexicalBlock(scope: !714, file: !1, line: 541, column: 2)
!733 = !DILocation(line: 541, column: 16, scope: !731)
!734 = !DILocation(line: 541, column: 2, scope: !732)
!735 = !DILocation(line: 543, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 543, column: 7)
!737 = distinct !DILexicalBlock(scope: !731, file: !1, line: 542, column: 3)
!738 = !DILocation(line: 543, column: 7, scope: !737)
!739 = !DILocation(line: 545, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !1, line: 544, column: 4)
!741 = !DILocation(line: 546, column: 15, scope: !742)
!742 = distinct !DILexicalBlock(scope: !740, file: !1, line: 546, column: 8)
!743 = !DILocation(line: 546, column: 26, scope: !742)
!744 = !DILocation(line: 546, column: 17, scope: !742)
!745 = !DILocation(line: 546, column: 8, scope: !740)
!746 = !DILocation(line: 547, column: 14, scope: !742)
!747 = !DILocation(line: 547, column: 5, scope: !742)
!748 = !DILocation(line: 550, column: 5, scope: !737)
!749 = !DILocation(line: 541, column: 36, scope: !731)
!750 = distinct !{!750, !734, !751, !156, !157}
!751 = !DILocation(line: 551, column: 3, scope: !732)
!752 = !DILocation(line: 554, column: 2, scope: !714)
!753 = !DILocation(line: 553, column: 2, scope: !714)
!754 = distinct !DISubprogram(name: "TriTransform", scope: !1, file: !1, line: 578, type: !755, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !46, !380, !380}
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!758 = !DILocalVariable(name: "po", arg: 1, scope: !754, file: !1, line: 578, type: !46)
!759 = !DILocalVariable(name: "xtrans", arg: 2, scope: !754, file: !1, line: 578, type: !380)
!760 = !DILocalVariable(name: "xinvT", arg: 3, scope: !754, file: !1, line: 578, type: !380)
!761 = !DILocalVariable(name: "i", scope: !754, file: !1, line: 580, type: !21)
!762 = !DILocalVariable(name: "numelems", scope: !754, file: !1, line: 581, type: !21)
!763 = !DILocalVariable(name: "vindex", scope: !754, file: !1, line: 582, type: !115)
!764 = !DILocalVariable(name: "vptr", scope: !754, file: !1, line: 583, type: !17)
!765 = !DILocalVariable(name: "vp", scope: !754, file: !1, line: 583, type: !17)
!766 = !DILocalVariable(name: "nptr", scope: !754, file: !1, line: 584, type: !17)
!767 = !DILocalVariable(name: "np", scope: !754, file: !1, line: 584, type: !17)
!768 = !DILocalVariable(name: "vp1", scope: !754, file: !1, line: 585, type: !17)
!769 = !DILocalVariable(name: "vp2", scope: !754, file: !1, line: 585, type: !17)
!770 = !DILocalVariable(name: "vp3", scope: !754, file: !1, line: 585, type: !17)
!771 = !DILocalVariable(name: "vec1", scope: !754, file: !1, line: 586, type: !9)
!772 = !DILocalVariable(name: "vec2", scope: !754, file: !1, line: 586, type: !9)
!773 = !DILocalVariable(name: "pnorm", scope: !754, file: !1, line: 587, type: !390)
!774 = !DILocalVariable(name: "norm", scope: !754, file: !1, line: 588, type: !390)
!775 = !DILocalVariable(name: "coord", scope: !754, file: !1, line: 588, type: !390)
!776 = !DILocalVariable(name: "pt", scope: !754, file: !1, line: 589, type: !3)
!777 = !DILocalVariable(name: "pe", scope: !754, file: !1, line: 590, type: !62)
!778 = !DILocation(line: 0, scope: !754)
!779 = !DILocation(line: 587, column: 2, scope: !754)
!780 = !DILocation(line: 587, column: 7, scope: !754)
!781 = !DILocation(line: 588, column: 2, scope: !754)
!782 = !DILocation(line: 588, column: 7, scope: !754)
!783 = !DILocation(line: 588, column: 13, scope: !754)
!784 = !DILocation(line: 593, column: 11, scope: !754)
!785 = !DILocation(line: 594, column: 17, scope: !754)
!786 = !DILocation(line: 598, column: 20, scope: !754)
!787 = !DILocation(line: 599, column: 13, scope: !754)
!788 = !DILocation(line: 600, column: 13, scope: !754)
!789 = !DILocation(line: 602, column: 13, scope: !754)
!790 = !DILocation(line: 602, column: 11, scope: !754)
!791 = !DILocation(line: 603, column: 13, scope: !754)
!792 = !DILocation(line: 603, column: 2, scope: !754)
!793 = !DILocation(line: 603, column: 11, scope: !754)
!794 = !DILocation(line: 604, column: 13, scope: !754)
!795 = !DILocation(line: 604, column: 2, scope: !754)
!796 = !DILocation(line: 604, column: 11, scope: !754)
!797 = !DILocation(line: 605, column: 2, scope: !754)
!798 = !DILocation(line: 605, column: 11, scope: !754)
!799 = !DILocation(line: 607, column: 18, scope: !754)
!800 = !DILocation(line: 607, column: 31, scope: !754)
!801 = !DILocation(line: 644, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 644, column: 2)
!803 = distinct !DILexicalBlock(scope: !754, file: !1, line: 644, column: 2)
!804 = !DILocation(line: 644, column: 2, scope: !803)
!805 = !DILocation(line: 611, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !754, file: !1, line: 608, column: 3)
!807 = !DILocation(line: 613, column: 16, scope: !806)
!808 = !DILocation(line: 613, column: 14, scope: !806)
!809 = !DILocation(line: 614, column: 16, scope: !806)
!810 = !DILocation(line: 614, column: 3, scope: !806)
!811 = !DILocation(line: 614, column: 14, scope: !806)
!812 = !DILocation(line: 615, column: 16, scope: !806)
!813 = !DILocation(line: 615, column: 3, scope: !806)
!814 = !DILocation(line: 615, column: 14, scope: !806)
!815 = !DILocation(line: 617, column: 7, scope: !806)
!816 = !DILocation(line: 619, column: 14, scope: !806)
!817 = !DILocation(line: 619, column: 12, scope: !806)
!818 = !DILocation(line: 620, column: 14, scope: !806)
!819 = !DILocation(line: 620, column: 12, scope: !806)
!820 = !DILocation(line: 621, column: 14, scope: !806)
!821 = !DILocation(line: 621, column: 12, scope: !806)
!822 = !DILocation(line: 622, column: 12, scope: !806)
!823 = !DILocation(line: 626, column: 13, scope: !806)
!824 = !DILocation(line: 626, column: 11, scope: !806)
!825 = !DILocation(line: 627, column: 13, scope: !806)
!826 = !DILocation(line: 627, column: 11, scope: !806)
!827 = !DILocation(line: 628, column: 13, scope: !806)
!828 = !DILocation(line: 628, column: 11, scope: !806)
!829 = !DILocation(line: 629, column: 11, scope: !806)
!830 = !DILocation(line: 631, column: 3, scope: !806)
!831 = !DILocation(line: 632, column: 3, scope: !806)
!832 = !DILocation(line: 634, column: 16, scope: !806)
!833 = !DILocation(line: 634, column: 14, scope: !806)
!834 = !DILocation(line: 635, column: 16, scope: !806)
!835 = !DILocation(line: 635, column: 14, scope: !806)
!836 = !DILocation(line: 636, column: 16, scope: !806)
!837 = !DILocation(line: 636, column: 14, scope: !806)
!838 = !DILocation(line: 638, column: 7, scope: !806)
!839 = !DILocation(line: 607, column: 9, scope: !754)
!840 = distinct !{!840, !841, !842, !156, !157}
!841 = !DILocation(line: 607, column: 2, scope: !754)
!842 = !DILocation(line: 639, column: 3, scope: !754)
!843 = !DILocation(line: 646, column: 19, scope: !844)
!844 = distinct !DILexicalBlock(scope: !802, file: !1, line: 645, column: 3)
!845 = !DILocation(line: 648, column: 16, scope: !844)
!846 = !DILocation(line: 649, column: 16, scope: !844)
!847 = !DILocation(line: 650, column: 20, scope: !844)
!848 = !DILocation(line: 650, column: 17, scope: !844)
!849 = !DILocation(line: 652, column: 9, scope: !844)
!850 = !DILocation(line: 653, column: 17, scope: !844)
!851 = !DILocation(line: 653, column: 14, scope: !844)
!852 = !DILocation(line: 654, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !1, line: 654, column: 3)
!854 = !DILocation(line: 656, column: 9, scope: !844)
!855 = !DILocation(line: 657, column: 17, scope: !844)
!856 = !DILocation(line: 657, column: 14, scope: !844)
!857 = !DILocation(line: 658, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !844, file: !1, line: 658, column: 3)
!859 = !DILocation(line: 660, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !844, file: !1, line: 660, column: 3)
!861 = !DILocation(line: 666, column: 25, scope: !844)
!862 = !DILocation(line: 666, column: 48, scope: !844)
!863 = !DILocation(line: 666, column: 47, scope: !844)
!864 = !DILocation(line: 666, column: 34, scope: !844)
!865 = !DILocation(line: 666, column: 71, scope: !844)
!866 = !DILocation(line: 666, column: 57, scope: !844)
!867 = !DILocation(line: 666, column: 11, scope: !844)
!868 = !DILocation(line: 666, column: 7, scope: !844)
!869 = !DILocation(line: 666, column: 9, scope: !844)
!870 = !DILocation(line: 668, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !844, file: !1, line: 668, column: 7)
!872 = !DILocation(line: 668, column: 7, scope: !871)
!873 = !DILocation(line: 668, column: 7, scope: !844)
!874 = !DILocation(line: 671, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !1, line: 669, column: 4)
!876 = !DILocation(line: 671, column: 18, scope: !875)
!877 = !DILocation(line: 673, column: 4, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !1, line: 673, column: 4)
!879 = !DILocation(line: 674, column: 4, scope: !875)
!880 = !DILocation(line: 676, column: 8, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !1, line: 676, column: 8)
!882 = !DILocation(line: 676, column: 29, scope: !881)
!883 = !DILocation(line: 0, scope: !881)
!884 = !DILocation(line: 676, column: 8, scope: !875)
!885 = !DILocation(line: 677, column: 16, scope: !881)
!886 = !DILocation(line: 689, column: 13, scope: !844)
!887 = !DILocation(line: 677, column: 5, scope: !881)
!888 = !DILocation(line: 680, column: 16, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !1, line: 679, column: 5)
!890 = !DILocation(line: 681, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !1, line: 681, column: 5)
!892 = !DILocation(line: 682, column: 18, scope: !889)
!893 = !DILocation(line: 682, column: 13, scope: !889)
!894 = !DILocation(line: 682, column: 11, scope: !889)
!895 = !DILocation(line: 689, column: 11, scope: !844)
!896 = !DILocation(line: 690, column: 13, scope: !844)
!897 = !DILocation(line: 690, column: 11, scope: !844)
!898 = !DILocation(line: 691, column: 13, scope: !844)
!899 = !DILocation(line: 691, column: 11, scope: !844)
!900 = !DILocation(line: 693, column: 15, scope: !901)
!901 = distinct !DILexicalBlock(scope: !844, file: !1, line: 693, column: 7)
!902 = !DILocation(line: 693, column: 26, scope: !901)
!903 = !DILocation(line: 694, column: 8, scope: !901)
!904 = !DILocation(line: 694, column: 13, scope: !901)
!905 = !DILocation(line: 694, column: 4, scope: !901)
!906 = !DILocation(line: 696, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !1, line: 696, column: 7)
!908 = !DILocation(line: 696, column: 26, scope: !907)
!909 = !DILocation(line: 0, scope: !907)
!910 = !DILocation(line: 697, column: 13, scope: !907)
!911 = !DILocation(line: 697, column: 4, scope: !907)
!912 = !DILocation(line: 699, column: 13, scope: !907)
!913 = !DILocation(line: 701, column: 5, scope: !844)
!914 = !DILocation(line: 644, column: 29, scope: !802)
!915 = distinct !{!915, !804, !916, !156, !157}
!916 = !DILocation(line: 702, column: 3, scope: !803)
!917 = !DILocation(line: 703, column: 2, scope: !754)
!918 = distinct !DISubprogram(name: "TriRead", scope: !1, file: !1, line: 720, type: !919, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !981)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !46, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !923, line: 7, baseType: !924)
!923 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !925, line: 49, size: 1728, elements: !926)
!925 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!926 = !{!927, !929, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !944, !946, !947, !948, !951, !953, !955, !959, !962, !964, !967, !970, !971, !973, !976, !977}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !924, file: !925, line: 51, baseType: !928, size: 32)
!928 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !924, file: !925, line: 54, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !924, file: !925, line: 55, baseType: !930, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !924, file: !925, line: 56, baseType: !930, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !924, file: !925, line: 57, baseType: !930, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !924, file: !925, line: 58, baseType: !930, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !924, file: !925, line: 59, baseType: !930, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !924, file: !925, line: 60, baseType: !930, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !924, file: !925, line: 61, baseType: !930, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !924, file: !925, line: 64, baseType: !930, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !924, file: !925, line: 65, baseType: !930, size: 64, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !924, file: !925, line: 66, baseType: !930, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !924, file: !925, line: 68, baseType: !942, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !925, line: 36, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !924, file: !925, line: 70, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !924, file: !925, line: 72, baseType: !928, size: 32, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !924, file: !925, line: 73, baseType: !928, size: 32, offset: 928)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !924, file: !925, line: 74, baseType: !949, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !950, line: 152, baseType: !22)
!950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !924, file: !925, line: 77, baseType: !952, size: 16, offset: 1024)
!952 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !924, file: !925, line: 78, baseType: !954, size: 8, offset: 1040)
!954 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !924, file: !925, line: 79, baseType: !956, size: 8, offset: 1048)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 1)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !924, file: !925, line: 81, baseType: !960, size: 64, offset: 1088)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !925, line: 43, baseType: null)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !924, file: !925, line: 89, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !950, line: 153, baseType: !22)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !924, file: !925, line: 91, baseType: !965, size: 64, offset: 1216)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !925, line: 37, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !924, file: !925, line: 92, baseType: !968, size: 64, offset: 1280)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !925, line: 38, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !924, file: !925, line: 93, baseType: !945, size: 64, offset: 1344)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !924, file: !925, line: 94, baseType: !972, size: 64, offset: 1408)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !924, file: !925, line: 95, baseType: !974, size: 64, offset: 1472)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !975, line: 46, baseType: !26)
!975 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !924, file: !925, line: 96, baseType: !928, size: 32, offset: 1536)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !924, file: !925, line: 98, baseType: !978, size: 160, offset: 1568)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 20)
!981 = !{!982, !983, !984, !985, !986, !987, !989, !990, !991, !992, !993, !994, !995, !996}
!982 = !DILocalVariable(name: "po", arg: 1, scope: !918, file: !1, line: 720, type: !46)
!983 = !DILocalVariable(name: "pf", arg: 2, scope: !918, file: !1, line: 720, type: !921)
!984 = !DILocalVariable(name: "i", scope: !918, file: !1, line: 722, type: !21)
!985 = !DILocalVariable(name: "instat", scope: !918, file: !1, line: 723, type: !21)
!986 = !DILocalVariable(name: "totalverts", scope: !918, file: !1, line: 724, type: !21)
!987 = !DILocalVariable(name: "normstr", scope: !918, file: !1, line: 725, type: !988)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 40, elements: !555)
!989 = !DILocalVariable(name: "pnormals", scope: !918, file: !1, line: 726, type: !25)
!990 = !DILocalVariable(name: "vnormals", scope: !918, file: !1, line: 727, type: !25)
!991 = !DILocalVariable(name: "vlist", scope: !918, file: !1, line: 728, type: !17)
!992 = !DILocalVariable(name: "vptr", scope: !918, file: !1, line: 728, type: !17)
!993 = !DILocalVariable(name: "nlist", scope: !918, file: !1, line: 729, type: !17)
!994 = !DILocalVariable(name: "nptr", scope: !918, file: !1, line: 729, type: !17)
!995 = !DILocalVariable(name: "pt", scope: !918, file: !1, line: 730, type: !3)
!996 = !DILocalVariable(name: "pe", scope: !918, file: !1, line: 731, type: !62)
!997 = !DILocation(line: 0, scope: !918)
!998 = !DILocation(line: 724, column: 2, scope: !918)
!999 = !DILocation(line: 725, column: 2, scope: !918)
!1000 = !DILocation(line: 725, column: 7, scope: !918)
!1001 = !DILocation(line: 733, column: 11, scope: !918)
!1002 = !DILocation(line: 737, column: 11, scope: !918)
!1003 = !DILocation(line: 739, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !918, file: !1, line: 739, column: 6)
!1005 = !DILocation(line: 739, column: 6, scope: !918)
!1006 = !DILocation(line: 741, column: 3, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 740, column: 3)
!1008 = !DILocation(line: 742, column: 3, scope: !1007)
!1009 = !DILocation(line: 745, column: 40, scope: !918)
!1010 = !DILocation(line: 745, column: 35, scope: !918)
!1011 = !DILocation(line: 745, column: 10, scope: !918)
!1012 = !DILocation(line: 746, column: 37, scope: !918)
!1013 = !DILocation(line: 746, column: 35, scope: !918)
!1014 = !DILocation(line: 746, column: 10, scope: !918)
!1015 = !DILocation(line: 747, column: 36, scope: !918)
!1016 = !DILocation(line: 747, column: 35, scope: !918)
!1017 = !DILocation(line: 747, column: 10, scope: !918)
!1018 = !DILocation(line: 755, column: 11, scope: !918)
!1019 = !DILocation(line: 757, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !918, file: !1, line: 757, column: 6)
!1021 = !DILocation(line: 757, column: 6, scope: !918)
!1022 = !DILocation(line: 759, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 758, column: 3)
!1024 = !DILocation(line: 760, column: 3, scope: !1023)
!1025 = !DILocation(line: 763, column: 14, scope: !918)
!1026 = !DILocation(line: 763, column: 25, scope: !918)
!1027 = !DILocation(line: 768, column: 11, scope: !918)
!1028 = !DILocation(line: 769, column: 13, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !918, file: !1, line: 769, column: 6)
!1030 = !DILocation(line: 769, column: 6, scope: !918)
!1031 = !DILocation(line: 771, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 770, column: 3)
!1033 = !DILocation(line: 772, column: 3, scope: !1032)
!1034 = !DILocation(line: 775, column: 14, scope: !918)
!1035 = !DILocation(line: 775, column: 25, scope: !918)
!1036 = !DILocation(line: 780, column: 18, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 780, column: 2)
!1038 = distinct !DILexicalBlock(scope: !918, file: !1, line: 780, column: 2)
!1039 = !DILocation(line: 780, column: 16, scope: !1037)
!1040 = !DILocation(line: 780, column: 2, scope: !1038)
!1041 = !DILocation(line: 790, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 781, column: 3)
!1043 = !DILocation(line: 782, column: 52, scope: !1042)
!1044 = !DILocation(line: 782, column: 65, scope: !1042)
!1045 = !DILocation(line: 782, column: 12, scope: !1042)
!1046 = !DILocation(line: 784, column: 14, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 784, column: 7)
!1048 = !DILocation(line: 784, column: 7, scope: !1042)
!1049 = !DILocation(line: 792, column: 53, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 791, column: 4)
!1051 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 790, column: 7)
!1052 = !DILocation(line: 792, column: 66, scope: !1050)
!1053 = !DILocation(line: 792, column: 13, scope: !1050)
!1054 = !DILocation(line: 794, column: 15, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 794, column: 8)
!1056 = !DILocation(line: 794, column: 8, scope: !1050)
!1057 = !DILocation(line: 800, column: 8, scope: !1050)
!1058 = !DILocation(line: 803, column: 7, scope: !1042)
!1059 = !DILocation(line: 780, column: 31, scope: !1037)
!1060 = distinct !{!1060, !1040, !1061, !156, !157}
!1061 = !DILocation(line: 804, column: 3, scope: !1038)
!1062 = !DILocation(line: 786, column: 4, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 785, column: 4)
!1064 = !DILocation(line: 787, column: 4, scope: !1063)
!1065 = !DILocation(line: 796, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 795, column: 5)
!1067 = !DILocation(line: 797, column: 5, scope: !1066)
!1068 = !DILocation(line: 807, column: 13, scope: !918)
!1069 = !DILocation(line: 808, column: 2, scope: !918)
!1070 = !DILocation(line: 808, column: 13, scope: !918)
!1071 = !DILocation(line: 809, column: 2, scope: !918)
!1072 = !DILocation(line: 809, column: 13, scope: !918)
!1073 = !DILocation(line: 814, column: 22, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 814, column: 2)
!1075 = distinct !DILexicalBlock(scope: !918, file: !1, line: 814, column: 2)
!1076 = !DILocation(line: 814, column: 16, scope: !1074)
!1077 = !DILocation(line: 814, column: 2, scope: !1075)
!1078 = !DILocation(line: 816, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 815, column: 3)
!1080 = !DILocation(line: 818, column: 58, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 817, column: 4)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 816, column: 7)
!1083 = !DILocation(line: 818, column: 74, scope: !1081)
!1084 = !DILocation(line: 818, column: 13, scope: !1081)
!1085 = !DILocation(line: 820, column: 15, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 820, column: 8)
!1087 = !DILocation(line: 820, column: 8, scope: !1081)
!1088 = !DILocation(line: 827, column: 7, scope: !1079)
!1089 = !DILocation(line: 827, column: 18, scope: !1079)
!1090 = !DILocation(line: 828, column: 7, scope: !1079)
!1091 = !DILocation(line: 828, column: 18, scope: !1079)
!1092 = !DILocation(line: 829, column: 7, scope: !1079)
!1093 = !DILocation(line: 829, column: 18, scope: !1079)
!1094 = !DILocation(line: 831, column: 44, scope: !1079)
!1095 = !DILocation(line: 831, column: 58, scope: !1079)
!1096 = !DILocation(line: 831, column: 76, scope: !1079)
!1097 = !DILocation(line: 831, column: 12, scope: !1079)
!1098 = !DILocation(line: 833, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 833, column: 7)
!1100 = !DILocation(line: 833, column: 7, scope: !1079)
!1101 = !DILocation(line: 839, column: 7, scope: !1079)
!1102 = !DILocation(line: 839, column: 14, scope: !1079)
!1103 = !DILocation(line: 840, column: 7, scope: !1079)
!1104 = !DILocation(line: 840, column: 14, scope: !1079)
!1105 = !DILocation(line: 842, column: 3, scope: !1079)
!1106 = !DILocation(line: 844, column: 5, scope: !1079)
!1107 = !DILocation(line: 845, column: 5, scope: !1079)
!1108 = !DILocation(line: 814, column: 36, scope: !1074)
!1109 = distinct !{!1109, !1077, !1110, !156, !157}
!1110 = !DILocation(line: 846, column: 3, scope: !1075)
!1111 = !DILocation(line: 822, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 821, column: 5)
!1113 = !DILocation(line: 823, column: 5, scope: !1112)
!1114 = !DILocation(line: 835, column: 4, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 834, column: 4)
!1116 = !DILocation(line: 836, column: 4, scope: !1115)
!1117 = !DILocation(line: 850, column: 6, scope: !918)
!1118 = !DILocation(line: 851, column: 3, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !918, file: !1, line: 850, column: 6)
!1120 = !DILocation(line: 852, column: 2, scope: !918)
!1121 = !DISubprogram(name: "GlobalMalloc", scope: !5, file: !5, line: 909, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!972, !512, !28}
!1124 = !DISubprogram(name: "GlobalFree", scope: !5, file: !5, line: 912, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !972}
