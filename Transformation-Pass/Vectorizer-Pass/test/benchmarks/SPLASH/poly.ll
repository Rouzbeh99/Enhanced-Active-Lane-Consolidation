; ModuleID = 'poly.c'
source_filename = "poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.poly = type { i64, [3 x double], double, ptr, ptr, i64 }
%struct.irecord = type { double, ptr, double, double, double }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }

@.str = private unnamed_addr constant [5 x i8] c"poly\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"\09polygon: %ld polygons.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\09\09Vertices: %ld  Plane eq: %f %f %f %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09\09%f %f %f \0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"poly.c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Error in PolyRead: vertex %ld.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Polygon vertex count, %ld, exceeds maximum.\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c" %lf %lf %lf\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Error in PolyRead: face normal %ld.\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Error in PolyRead: vertex index %ld.\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"Error in PolyRead: vertex count.\00", align 1
@str.16 = private unnamed_addr constant [42 x i8] c"Error in PolyRead: face normal indicator.\00", align 1
@str.17 = private unnamed_addr constant [31 x i8] c"Error in PolyRead: totalverts.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @PolyName() local_unnamed_addr #0 !dbg !34 {
entry:
  ret ptr @.str, !dbg !38
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PolyPrint(ptr nocapture noundef readonly %po) local_unnamed_addr #1 !dbg !39 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !107, metadata !DIExpression()), !dbg !115
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !116
  %0 = load ptr, ptr %pelem, align 8, !dbg !116
  call void @llvm.dbg.value(metadata ptr %0, metadata !114, metadata !DIExpression()), !dbg !115
  %1 = load ptr, ptr @stderr, align 8, !dbg !117
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !118
  %2 = load i64, ptr %numelements, align 8, !dbg !118
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef %2) #14, !dbg !119
  call void @llvm.dbg.value(metadata i64 0, metadata !108, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %0, metadata !114, metadata !DIExpression()), !dbg !115
  %3 = load i64, ptr %numelements, align 8, !dbg !120
  %cmp39 = icmp sgt i64 %3, 0, !dbg !123
  br i1 %cmp39, label %for.body, label %for.end20, !dbg !124

for.body:                                         ; preds = %entry, %for.end
  %pe.041 = phi ptr [ %incdec.ptr17, %for.end ], [ %0, %entry ]
  %i.040 = phi i64 [ %inc19, %for.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %pe.041, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 %i.040, metadata !108, metadata !DIExpression()), !dbg !115
  %data = getelementptr inbounds %struct.element, ptr %pe.041, i64 0, i32 2, !dbg !125
  %4 = load ptr, ptr %data, align 8, !dbg !125
  call void @llvm.dbg.value(metadata ptr %4, metadata !113, metadata !DIExpression()), !dbg !115
  %5 = load ptr, ptr @stderr, align 8, !dbg !127
  %6 = load i64, ptr %4, align 8, !dbg !128
  %norm = getelementptr inbounds %struct.poly, ptr %4, i64 0, i32 1, !dbg !129
  %7 = load double, ptr %norm, align 8, !dbg !130
  %arrayidx3 = getelementptr inbounds %struct.poly, ptr %4, i64 0, i32 1, i64 1, !dbg !131
  %8 = load double, ptr %arrayidx3, align 8, !dbg !131
  %arrayidx5 = getelementptr inbounds %struct.poly, ptr %4, i64 0, i32 1, i64 2, !dbg !132
  %9 = load double, ptr %arrayidx5, align 8, !dbg !132
  %d = getelementptr inbounds %struct.poly, ptr %4, i64 0, i32 2, !dbg !133
  %10 = load double, ptr %d, align 8, !dbg !133
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2, i64 noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) #14, !dbg !134
  %vptr7 = getelementptr inbounds %struct.poly, ptr %4, i64 0, i32 3, !dbg !135
  %11 = load ptr, ptr %vptr7, align 8, !dbg !135
  call void @llvm.dbg.value(metadata ptr %11, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr undef, metadata !110, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 0, metadata !109, metadata !DIExpression()), !dbg !115
  %12 = load i64, ptr %4, align 8, !dbg !136
  %cmp1136 = icmp sgt i64 %12, 0, !dbg !139
  br i1 %cmp1136, label %for.body12.preheader, label %for.end, !dbg !140

for.body12.preheader:                             ; preds = %for.body
  %vindex8 = getelementptr inbounds %struct.poly, ptr %4, i64 0, i32 4, !dbg !141
  %13 = load ptr, ptr %vindex8, align 8, !dbg !141
  call void @llvm.dbg.value(metadata ptr %13, metadata !110, metadata !DIExpression()), !dbg !115
  br label %for.body12, !dbg !140

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %j.038 = phi i64 [ %inc, %for.body12 ], [ 0, %for.body12.preheader ]
  %vindex.037 = phi ptr [ %incdec.ptr, %for.body12 ], [ %13, %for.body12.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.038, metadata !109, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %vindex.037, metadata !110, metadata !DIExpression()), !dbg !115
  %14 = load i64, ptr %vindex.037, align 8, !dbg !142
  %add.ptr = getelementptr inbounds [3 x double], ptr %11, i64 %14, !dbg !144
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !112, metadata !DIExpression()), !dbg !115
  %15 = load ptr, ptr @stderr, align 8, !dbg !145
  %16 = load double, ptr %add.ptr, align 8, !dbg !146
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %11, i64 %14, i64 1, !dbg !147
  %17 = load double, ptr %arrayidx14, align 8, !dbg !147
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %11, i64 %14, i64 2, !dbg !148
  %18 = load double, ptr %arrayidx15, align 8, !dbg !148
  %call16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.3, double noundef %16, double noundef %17, double noundef %18) #14, !dbg !149
  %incdec.ptr = getelementptr inbounds i64, ptr %vindex.037, i64 1, !dbg !150
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !110, metadata !DIExpression()), !dbg !115
  %inc = add nuw nsw i64 %j.038, 1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %inc, metadata !109, metadata !DIExpression()), !dbg !115
  %19 = load i64, ptr %4, align 8, !dbg !136
  %cmp11 = icmp slt i64 %inc, %19, !dbg !139
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !140, !llvm.loop !152

for.end:                                          ; preds = %for.body12, %for.body
  %incdec.ptr17 = getelementptr inbounds %struct.element, ptr %pe.041, i64 1, !dbg !156
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17, metadata !114, metadata !DIExpression()), !dbg !115
  %inc19 = add nuw nsw i64 %i.040, 1, !dbg !157
  call void @llvm.dbg.value(metadata i64 %inc19, metadata !108, metadata !DIExpression()), !dbg !115
  %20 = load i64, ptr %numelements, align 8, !dbg !120
  %cmp = icmp slt i64 %inc19, %20, !dbg !123
  br i1 %cmp, label %for.body, label %for.end20, !dbg !124, !llvm.loop !158

for.end20:                                        ; preds = %for.end, %entry
  ret void, !dbg !160
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
define dso_local void @PolyElementBoundBox(ptr nocapture noundef writeonly %pe, ptr nocapture noundef readonly %pp) local_unnamed_addr #5 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata ptr %pe, metadata !165, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr %pp, metadata !166, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr %pe, metadata !169, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !179
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !173, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !174, metadata !DIExpression()), !dbg !179
  %vptr1 = getelementptr inbounds %struct.poly, ptr %pp, i64 0, i32 3, !dbg !180
  %0 = load ptr, ptr %vptr1, align 8, !dbg !180
  call void @llvm.dbg.value(metadata ptr %0, metadata !171, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr undef, metadata !168, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()), !dbg !179
  %1 = load i64, ptr %pp, align 8
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !174, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !173, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr undef, metadata !168, metadata !DIExpression()), !dbg !179
  %cmp87 = icmp sgt i64 %1, 0, !dbg !181
  br i1 %cmp87, label %for.body.preheader, label %for.end, !dbg !184

for.body.preheader:                               ; preds = %entry
  %vindex2 = getelementptr inbounds %struct.poly, ptr %pp, i64 0, i32 4, !dbg !185
  %2 = load ptr, ptr %vindex2, align 8, !dbg !185
  call void @llvm.dbg.value(metadata ptr %2, metadata !168, metadata !DIExpression()), !dbg !179
  br label %for.body, !dbg !184

for.body:                                         ; preds = %for.body.preheader, %cond.end43
  %maxz.095 = phi double [ %cond44, %cond.end43 ], [ -1.000000e+32, %for.body.preheader ]
  %minz.094 = phi double [ %minz.0., %cond.end43 ], [ 1.000000e+32, %for.body.preheader ]
  %maxy.093 = phi double [ %maxy.0., %cond.end43 ], [ -1.000000e+32, %for.body.preheader ]
  %miny.092 = phi double [ %cond12, %cond.end43 ], [ 1.000000e+32, %for.body.preheader ]
  %maxx.091 = phi double [ %cond28, %cond.end43 ], [ -1.000000e+32, %for.body.preheader ]
  %minx.090 = phi double [ %minx.0., %cond.end43 ], [ 1.000000e+32, %for.body.preheader ]
  %i.089 = phi i64 [ %inc, %cond.end43 ], [ 0, %for.body.preheader ]
  %vindex.088 = phi ptr [ %incdec.ptr, %cond.end43 ], [ %2, %for.body.preheader ]
  call void @llvm.dbg.value(metadata double %maxz.095, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %minz.094, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %maxy.093, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %miny.092, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %maxx.091, metadata !174, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %minx.090, metadata !173, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i64 %i.089, metadata !167, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr %vindex.088, metadata !168, metadata !DIExpression()), !dbg !179
  %3 = load i64, ptr %vindex.088, align 8, !dbg !186
  %add.ptr = getelementptr inbounds [3 x double], ptr %0, i64 %3, !dbg !188
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !172, metadata !DIExpression()), !dbg !179
  %4 = load double, ptr %add.ptr, align 8, !dbg !189
  %sub = fsub double %minx.090, %4, !dbg !189
  %cmp3 = fcmp olt double %sub, 0.000000e+00, !dbg !189
  %minx.0. = select i1 %cmp3, double %minx.090, double %4, !dbg !189
  call void @llvm.dbg.value(metadata double %minx.0., metadata !173, metadata !DIExpression()), !dbg !179
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %0, i64 %3, i64 1, !dbg !190
  %5 = load double, ptr %arrayidx5, align 8, !dbg !190
  %sub6 = fsub double %miny.092, %5, !dbg !190
  %cmp7 = fcmp olt double %sub6, 0.000000e+00, !dbg !190
  br i1 %cmp7, label %cond.end11, label %cond.false9, !dbg !190

cond.false9:                                      ; preds = %for.body
  br label %cond.end11, !dbg !190

cond.end11:                                       ; preds = %for.body, %cond.false9
  %cond12 = phi double [ %5, %cond.false9 ], [ %miny.092, %for.body ], !dbg !190
  call void @llvm.dbg.value(metadata double %cond12, metadata !175, metadata !DIExpression()), !dbg !179
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %0, i64 %3, i64 2, !dbg !191
  %6 = load double, ptr %arrayidx13, align 8, !dbg !191
  %sub14 = fsub double %minz.094, %6, !dbg !191
  %cmp15 = fcmp olt double %sub14, 0.000000e+00, !dbg !191
  %minz.0. = select i1 %cmp15, double %minz.094, double %6, !dbg !191
  call void @llvm.dbg.value(metadata double %minz.0., metadata !177, metadata !DIExpression()), !dbg !179
  %sub22 = fsub double %maxx.091, %4, !dbg !192
  %cmp23 = fcmp ogt double %sub22, 0.000000e+00, !dbg !192
  br i1 %cmp23, label %cond.end27, label %cond.false25, !dbg !192

cond.false25:                                     ; preds = %cond.end11
  br label %cond.end27, !dbg !192

cond.end27:                                       ; preds = %cond.end11, %cond.false25
  %cond28 = phi double [ %4, %cond.false25 ], [ %maxx.091, %cond.end11 ], !dbg !192
  call void @llvm.dbg.value(metadata double %cond28, metadata !174, metadata !DIExpression()), !dbg !179
  %sub30 = fsub double %maxy.093, %5, !dbg !193
  %cmp31 = fcmp ogt double %sub30, 0.000000e+00, !dbg !193
  %maxy.0. = select i1 %cmp31, double %maxy.093, double %5, !dbg !193
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !176, metadata !DIExpression()), !dbg !179
  %sub38 = fsub double %maxz.095, %6, !dbg !194
  %cmp39 = fcmp ogt double %sub38, 0.000000e+00, !dbg !194
  br i1 %cmp39, label %cond.end43, label %cond.false41, !dbg !194

cond.false41:                                     ; preds = %cond.end27
  br label %cond.end43, !dbg !194

cond.end43:                                       ; preds = %cond.end27, %cond.false41
  %cond44 = phi double [ %6, %cond.false41 ], [ %maxz.095, %cond.end27 ], !dbg !194
  call void @llvm.dbg.value(metadata double %cond44, metadata !178, metadata !DIExpression()), !dbg !179
  %incdec.ptr = getelementptr inbounds i64, ptr %vindex.088, i64 1, !dbg !195
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !168, metadata !DIExpression()), !dbg !179
  %inc = add nuw nsw i64 %i.089, 1, !dbg !196
  call void @llvm.dbg.value(metadata double %minz.0., metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %cond12, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %cond28, metadata !174, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %minx.0., metadata !173, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i64 %inc, metadata !167, metadata !DIExpression()), !dbg !179
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !181
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !184, !llvm.loop !197

for.end:                                          ; preds = %cond.end43, %entry
  %minx.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minx.0., %cond.end43 ], !dbg !179
  %maxx.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond28, %cond.end43 ], !dbg !179
  %miny.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %cond12, %cond.end43 ], !dbg !179
  %maxy.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %maxy.0., %cond.end43 ], !dbg !179
  %minz.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minz.0., %cond.end43 ], !dbg !179
  %maxz.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond44, %cond.end43 ], !dbg !179
  %bv = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, !dbg !199
  call void @llvm.dbg.value(metadata ptr %bv, metadata !169, metadata !DIExpression()), !dbg !179
  store double %minx.0.lcssa, ptr %bv, align 8, !dbg !200
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !201
  store double %miny.0.lcssa, ptr %arrayidx47, align 8, !dbg !202
  %arrayidx49 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !203
  store double %minz.0.lcssa, ptr %arrayidx49, align 8, !dbg !204
  %dfar = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, !dbg !205
  store double %maxx.0.lcssa, ptr %dfar, align 8, !dbg !206
  %arrayidx52 = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, i64 1, !dbg !207
  store double %maxy.0.lcssa, ptr %arrayidx52, align 8, !dbg !208
  %arrayidx54 = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 3, i32 1, i64 2, !dbg !209
  store double %maxz.0.lcssa, ptr %arrayidx54, align 8, !dbg !210
  ret void, !dbg !211
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @PolyBoundBox(ptr nocapture noundef %po) local_unnamed_addr #5 !dbg !212 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !214, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr undef, metadata !217, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %po, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !225
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !215, metadata !DIExpression()), !dbg !225
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !215, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr undef, metadata !217, metadata !DIExpression()), !dbg !225
  %0 = load i64, ptr %numelements, align 8, !dbg !226
  %cmp111 = icmp sgt i64 %0, 0, !dbg !229
  br i1 %cmp111, label %for.body.preheader, label %for.end, !dbg !230

for.body.preheader:                               ; preds = %entry
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !231
  %1 = load ptr, ptr %pelem, align 8, !dbg !231
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !225
  br label %for.body, !dbg !230

for.body:                                         ; preds = %for.body.preheader, %cond.end63
  %maxz.0119 = phi double [ %cond64, %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %minz.0118 = phi double [ %minz.0., %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %maxy.0117 = phi double [ %maxy.0., %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %miny.0116 = phi double [ %cond17, %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %maxx.0115 = phi double [ %cond40, %cond.end63 ], [ -1.000000e+32, %for.body.preheader ]
  %minx.0114 = phi double [ %minx.0., %cond.end63 ], [ 1.000000e+32, %for.body.preheader ]
  %i.0113 = phi i64 [ %inc, %cond.end63 ], [ 0, %for.body.preheader ]
  %pe.0112 = phi ptr [ %incdec.ptr, %cond.end63 ], [ %1, %for.body.preheader ]
  call void @llvm.dbg.value(metadata double %maxz.0119, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %minz.0118, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %maxy.0117, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %miny.0116, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %maxx.0115, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %minx.0114, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %i.0113, metadata !215, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %pe.0112, metadata !217, metadata !DIExpression()), !dbg !225
  %data = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 2, !dbg !232
  %2 = load ptr, ptr %data, align 8, !dbg !232
  call void @llvm.dbg.value(metadata ptr %2, metadata !216, metadata !DIExpression()), !dbg !225
  tail call void @PolyElementBoundBox(ptr noundef %pe.0112, ptr noundef %2), !dbg !234
  %bv1 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, !dbg !235
  %3 = load double, ptr %bv1, align 8, !dbg !235
  %sub = fsub double %minx.0114, %3, !dbg !235
  %cmp2 = fcmp olt double %sub, 0.000000e+00, !dbg !235
  %minx.0. = select i1 %cmp2, double %minx.0114, double %3, !dbg !235
  call void @llvm.dbg.value(metadata double %minx.0., metadata !219, metadata !DIExpression()), !dbg !225
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %bv1, i64 0, i64 1, !dbg !236
  %4 = load double, ptr %arrayidx8, align 8, !dbg !236
  %sub9 = fsub double %miny.0116, %4, !dbg !236
  %cmp10 = fcmp olt double %sub9, 0.000000e+00, !dbg !236
  br i1 %cmp10, label %cond.end16, label %cond.false12, !dbg !236

cond.false12:                                     ; preds = %for.body
  br label %cond.end16, !dbg !236

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %4, %cond.false12 ], [ %miny.0116, %for.body ], !dbg !236
  call void @llvm.dbg.value(metadata double %cond17, metadata !221, metadata !DIExpression()), !dbg !225
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %bv1, i64 0, i64 2, !dbg !237
  %5 = load double, ptr %arrayidx20, align 8, !dbg !237
  %sub21 = fsub double %minz.0118, %5, !dbg !237
  %cmp22 = fcmp olt double %sub21, 0.000000e+00, !dbg !237
  %minz.0. = select i1 %cmp22, double %minz.0118, double %5, !dbg !237
  call void @llvm.dbg.value(metadata double %minz.0., metadata !223, metadata !DIExpression()), !dbg !225
  %dfar = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, !dbg !238
  %6 = load double, ptr %dfar, align 8, !dbg !238
  %sub32 = fsub double %maxx.0115, %6, !dbg !238
  %cmp33 = fcmp ogt double %sub32, 0.000000e+00, !dbg !238
  br i1 %cmp33, label %cond.end39, label %cond.false35, !dbg !238

cond.false35:                                     ; preds = %cond.end16
  br label %cond.end39, !dbg !238

cond.end39:                                       ; preds = %cond.end16, %cond.false35
  %cond40 = phi double [ %6, %cond.false35 ], [ %maxx.0115, %cond.end16 ], !dbg !238
  call void @llvm.dbg.value(metadata double %cond40, metadata !220, metadata !DIExpression()), !dbg !225
  %arrayidx43 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, i64 1, !dbg !239
  %7 = load double, ptr %arrayidx43, align 8, !dbg !239
  %sub44 = fsub double %maxy.0117, %7, !dbg !239
  %cmp45 = fcmp ogt double %sub44, 0.000000e+00, !dbg !239
  %maxy.0. = select i1 %cmp45, double %maxy.0117, double %7, !dbg !239
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !222, metadata !DIExpression()), !dbg !225
  %arrayidx55 = getelementptr inbounds %struct.element, ptr %pe.0112, i64 0, i32 3, i32 1, i64 2, !dbg !240
  %8 = load double, ptr %arrayidx55, align 8, !dbg !240
  %sub56 = fsub double %maxz.0119, %8, !dbg !240
  %cmp57 = fcmp ogt double %sub56, 0.000000e+00, !dbg !240
  br i1 %cmp57, label %cond.end63, label %cond.false59, !dbg !240

cond.false59:                                     ; preds = %cond.end39
  br label %cond.end63, !dbg !240

cond.end63:                                       ; preds = %cond.end39, %cond.false59
  %cond64 = phi double [ %8, %cond.false59 ], [ %maxz.0119, %cond.end39 ], !dbg !240
  call void @llvm.dbg.value(metadata double %cond64, metadata !224, metadata !DIExpression()), !dbg !225
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.0112, i64 1, !dbg !241
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !217, metadata !DIExpression()), !dbg !225
  %inc = add nuw nsw i64 %i.0113, 1, !dbg !242
  call void @llvm.dbg.value(metadata double %minz.0., metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %maxy.0., metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %cond17, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %cond40, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %minx.0., metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %inc, metadata !215, metadata !DIExpression()), !dbg !225
  %9 = load i64, ptr %numelements, align 8, !dbg !226
  %cmp = icmp slt i64 %inc, %9, !dbg !229
  br i1 %cmp, label %for.body, label %for.end, !dbg !230, !llvm.loop !243

for.end:                                          ; preds = %cond.end63, %entry
  %minx.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minx.0., %cond.end63 ], !dbg !225
  %maxx.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond40, %cond.end63 ], !dbg !225
  %miny.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %cond17, %cond.end63 ], !dbg !225
  %maxy.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %maxy.0., %cond.end63 ], !dbg !225
  %minz.0.lcssa = phi double [ 1.000000e+32, %entry ], [ %minz.0., %cond.end63 ], !dbg !225
  %maxz.0.lcssa = phi double [ -1.000000e+32, %entry ], [ %cond64, %cond.end63 ], !dbg !225
  %bv = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, !dbg !245
  call void @llvm.dbg.value(metadata ptr %bv, metadata !218, metadata !DIExpression()), !dbg !225
  store double %minx.0.lcssa, ptr %bv, align 8, !dbg !246
  %arrayidx68 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !247
  store double %miny.0.lcssa, ptr %arrayidx68, align 8, !dbg !248
  %arrayidx70 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !249
  store double %minz.0.lcssa, ptr %arrayidx70, align 8, !dbg !250
  %dfar71 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, !dbg !251
  store double %maxx.0.lcssa, ptr %dfar71, align 8, !dbg !252
  %arrayidx74 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, i64 1, !dbg !253
  store double %maxy.0.lcssa, ptr %arrayidx74, align 8, !dbg !254
  %arrayidx76 = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, i32 1, i64 2, !dbg !255
  store double %maxz.0.lcssa, ptr %arrayidx76, align 8, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @PolyNormal(ptr nocapture noundef readonly %hit, ptr nocapture noundef readnone %Pi, ptr nocapture noundef writeonly %Ni) local_unnamed_addr #6 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata ptr %hit, metadata !272, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata ptr %Pi, metadata !273, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata ptr %Ni, metadata !274, metadata !DIExpression()), !dbg !277
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !278
  %0 = load ptr, ptr %pelem, align 8, !dbg !278
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()), !dbg !277
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !279
  %1 = load ptr, ptr %data, align 8, !dbg !279
  call void @llvm.dbg.value(metadata ptr %1, metadata !276, metadata !DIExpression()), !dbg !277
  %norm = getelementptr inbounds %struct.poly, ptr %1, i64 0, i32 1, !dbg !280
  %2 = load double, ptr %norm, align 8, !dbg !280
  store double %2, ptr %Ni, align 8, !dbg !280
  %arrayidx3 = getelementptr inbounds %struct.poly, ptr %1, i64 0, i32 1, i64 1, !dbg !280
  %3 = load double, ptr %arrayidx3, align 8, !dbg !280
  %arrayidx4 = getelementptr inbounds double, ptr %Ni, i64 1, !dbg !280
  store double %3, ptr %arrayidx4, align 8, !dbg !280
  %arrayidx6 = getelementptr inbounds %struct.poly, ptr %1, i64 0, i32 1, i64 2, !dbg !280
  %4 = load double, ptr %arrayidx6, align 8, !dbg !280
  %arrayidx7 = getelementptr inbounds double, ptr %Ni, i64 2, !dbg !280
  store double %4, ptr %arrayidx7, align 8, !dbg !280
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PolyDataNormalize(ptr noundef %po, ptr noundef %normMat) local_unnamed_addr #7 !dbg !283 {
entry:
  %coord = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %po, metadata !291, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata ptr %normMat, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %coord) #15, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %coord, metadata !294, metadata !DIExpression()), !dbg !302
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !303
  %0 = load ptr, ptr %pelem, align 8, !dbg !303
  call void @llvm.dbg.value(metadata ptr %0, metadata !299, metadata !DIExpression()), !dbg !300
  %bv = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 2, !dbg !304
  tail call void @NormalizeBoundBox(ptr noundef nonnull %bv, ptr noundef %normMat) #15, !dbg !305
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !306
  %1 = load ptr, ptr %data, align 8, !dbg !306
  call void @llvm.dbg.value(metadata ptr %1, metadata !298, metadata !DIExpression()), !dbg !300
  %vptr = getelementptr inbounds %struct.poly, ptr %1, i64 0, i32 3, !dbg !307
  %2 = load ptr, ptr %vptr, align 8, !dbg !307
  call void @llvm.dbg.value(metadata ptr %2, metadata !297, metadata !DIExpression()), !dbg !300
  %3 = load double, ptr %2, align 8, !dbg !308
  store double %3, ptr %coord, align 16, !dbg !309
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1, !dbg !310
  %4 = load double, ptr %arrayidx2, align 8, !dbg !310
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 1, !dbg !311
  store double %4, ptr %arrayidx3, align 8, !dbg !312
  %arrayidx4 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2, !dbg !313
  %5 = load double, ptr %arrayidx4, align 8, !dbg !313
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 2, !dbg !314
  store double %5, ptr %arrayidx5, align 16, !dbg !315
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 3, !dbg !316
  store double 1.000000e+00, ptr %arrayidx6, align 8, !dbg !300
  call void @llvm.dbg.value(metadata ptr %2, metadata !297, metadata !DIExpression()), !dbg !300
  %cmp67 = fcmp une double %3, 1.000000e+32, !dbg !317
  %cmp968 = fcmp une double %4, 1.000000e+32
  %or.cond69 = select i1 %cmp67, i1 %cmp968, i1 false, !dbg !318
  %cmp1170 = fcmp une double %5, 1.000000e+32
  %or.cond4071 = select i1 %or.cond69, i1 %cmp1170, i1 false, !dbg !318
  br i1 %or.cond4071, label %while.body, label %for.cond.preheader, !dbg !318

for.cond.preheader:                               ; preds = %while.body, %entry
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 0, metadata !293, metadata !DIExpression()), !dbg !300
  %6 = load i64, ptr %numelements, align 8, !dbg !319
  %cmp2673 = icmp sgt i64 %6, 0, !dbg !322
  br i1 %cmp2673, label %for.body, label %for.end, !dbg !323

while.body:                                       ; preds = %entry, %while.body
  %pv.072 = phi ptr [ %incdec.ptr, %while.body ], [ %2, %entry ]
  call void @llvm.dbg.value(metadata ptr %pv.072, metadata !297, metadata !DIExpression()), !dbg !300
  call void @VecMatMult(ptr noundef nonnull %coord, ptr noundef %normMat, ptr noundef nonnull %coord) #15, !dbg !324
  %7 = load double, ptr %coord, align 16, !dbg !326
  store double %7, ptr %pv.072, align 8, !dbg !327
  %8 = load double, ptr %arrayidx3, align 8, !dbg !328
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %pv.072, i64 0, i64 1, !dbg !329
  store double %8, ptr %arrayidx16, align 8, !dbg !330
  %9 = load double, ptr %arrayidx5, align 16, !dbg !331
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %pv.072, i64 0, i64 2, !dbg !332
  store double %9, ptr %arrayidx18, align 8, !dbg !333
  %incdec.ptr = getelementptr inbounds [3 x double], ptr %pv.072, i64 1, !dbg !334
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !297, metadata !DIExpression()), !dbg !300
  %10 = load double, ptr %incdec.ptr, align 8, !dbg !335
  store double %10, ptr %coord, align 16, !dbg !336
  %arrayidx21 = getelementptr inbounds [3 x double], ptr %pv.072, i64 1, i64 1, !dbg !337
  %11 = load double, ptr %arrayidx21, align 8, !dbg !337
  store double %11, ptr %arrayidx3, align 8, !dbg !338
  %arrayidx23 = getelementptr inbounds [3 x double], ptr %pv.072, i64 1, i64 2, !dbg !339
  %12 = load double, ptr %arrayidx23, align 8, !dbg !339
  store double %12, ptr %arrayidx5, align 16, !dbg !340
  store double 1.000000e+00, ptr %arrayidx6, align 8, !dbg !300
  %cmp = fcmp une double %10, 1.000000e+32, !dbg !317
  %cmp9 = fcmp une double %11, 1.000000e+32
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false, !dbg !318
  %cmp11 = fcmp une double %12, 1.000000e+32
  %or.cond40 = select i1 %or.cond, i1 %cmp11, i1 false, !dbg !318
  br i1 %or.cond40, label %while.body, label %for.cond.preheader, !dbg !318, !llvm.loop !341

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %pe.075 = phi ptr [ %incdec.ptr39, %for.body ], [ %0, %for.cond.preheader ]
  %i.074 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %pe.075, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %i.074, metadata !293, metadata !DIExpression()), !dbg !300
  %data27 = getelementptr inbounds %struct.element, ptr %pe.075, i64 0, i32 2, !dbg !344
  %13 = load ptr, ptr %data27, align 8, !dbg !344
  call void @llvm.dbg.value(metadata ptr %13, metadata !298, metadata !DIExpression()), !dbg !300
  %bv28 = getelementptr inbounds %struct.element, ptr %pe.075, i64 0, i32 3, !dbg !346
  call void @NormalizeBoundBox(ptr noundef nonnull %bv28, ptr noundef %normMat) #15, !dbg !347
  %vptr29 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 3, !dbg !348
  %14 = load ptr, ptr %vptr29, align 8, !dbg !348
  %vindex = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 4, !dbg !349
  %15 = load ptr, ptr %vindex, align 8, !dbg !349
  %16 = load i64, ptr %15, align 8, !dbg !350
  %add.ptr = getelementptr inbounds [3 x double], ptr %14, i64 %16, !dbg !351
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !297, metadata !DIExpression()), !dbg !300
  %norm = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 1, !dbg !352
  %17 = load double, ptr %norm, align 8, !dbg !353
  %18 = load double, ptr %add.ptr, align 8, !dbg !354
  %arrayidx33 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 1, i64 1, !dbg !355
  %19 = load double, ptr %arrayidx33, align 8, !dbg !355
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %14, i64 %16, i64 1, !dbg !356
  %20 = load double, ptr %arrayidx34, align 8, !dbg !356
  %mul35 = fmul double %19, %20, !dbg !357
  %21 = call double @llvm.fmuladd.f64(double %17, double %18, double %mul35), !dbg !358
  %arrayidx37 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 1, i64 2, !dbg !359
  %22 = load double, ptr %arrayidx37, align 8, !dbg !359
  %arrayidx38 = getelementptr inbounds [3 x double], ptr %14, i64 %16, i64 2, !dbg !360
  %23 = load double, ptr %arrayidx38, align 8, !dbg !360
  %24 = call double @llvm.fmuladd.f64(double %22, double %23, double %21), !dbg !361
  %fneg = fneg double %24, !dbg !362
  %d = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 2, !dbg !363
  store double %fneg, ptr %d, align 8, !dbg !364
  %incdec.ptr39 = getelementptr inbounds %struct.element, ptr %pe.075, i64 1, !dbg !365
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39, metadata !299, metadata !DIExpression()), !dbg !300
  %inc = add nuw nsw i64 %i.074, 1, !dbg !366
  call void @llvm.dbg.value(metadata i64 %inc, metadata !293, metadata !DIExpression()), !dbg !300
  %25 = load i64, ptr %numelements, align 8, !dbg !319
  %cmp26 = icmp slt i64 %inc, %25, !dbg !322
  br i1 %cmp26, label %for.body, label %for.end, !dbg !323, !llvm.loop !367

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %coord) #15, !dbg !369
  ret void, !dbg !369
}

declare !dbg !370 void @NormalizeBoundBox(ptr noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !373 void @VecMatMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @PolyPeIntersect(ptr nocapture noundef readonly %pr, ptr noundef %pe, ptr nocapture noundef writeonly %hit) local_unnamed_addr #9 !dbg !376 {
entry:
  %x = alloca [101 x double], align 16
  %y = alloca [101 x double], align 16
  call void @llvm.dbg.value(metadata ptr %pr, metadata !471, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %pe, metadata !472, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %hit, metadata !473, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %x) #15, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %x, metadata !482, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %y) #15, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %y, metadata !486, metadata !DIExpression()), !dbg !500
  %data = getelementptr inbounds %struct.element, ptr %pe, i64 0, i32 2, !dbg !501
  %0 = load ptr, ptr %data, align 8, !dbg !501
  call void @llvm.dbg.value(metadata ptr %0, metadata !495, metadata !DIExpression()), !dbg !496
  %norm = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 1, !dbg !502
  %1 = load double, ptr %norm, align 8, !dbg !502
  %D = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, !dbg !502
  %2 = load double, ptr %D, align 8, !dbg !502
  %arrayidx3 = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 1, i64 1, !dbg !502
  %3 = load double, ptr %arrayidx3, align 8, !dbg !502
  %arrayidx5 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, i64 1, !dbg !502
  %4 = load double, ptr %arrayidx5, align 8, !dbg !502
  %mul6 = fmul double %3, %4, !dbg !502
  %5 = tail call double @llvm.fmuladd.f64(double %1, double %2, double %mul6), !dbg !502
  %arrayidx8 = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 1, i64 2, !dbg !502
  %6 = load double, ptr %arrayidx8, align 8, !dbg !502
  %arrayidx10 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 4, i64 2, !dbg !502
  %7 = load double, ptr %arrayidx10, align 8, !dbg !502
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %5), !dbg !502
  call void @llvm.dbg.value(metadata double %8, metadata !479, metadata !DIExpression()), !dbg !496
  %cmp = fcmp ogt double %8, 0.000000e+00, !dbg !503
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !503

cond.false:                                       ; preds = %entry
  %fneg = fneg double %8, !dbg !503
  br label %cond.end, !dbg !503

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi double [ %fneg, %cond.false ], [ %8, %entry ], !dbg !503
  %cmp11 = fcmp olt double %cond, 0x3E7AD7F29ABCAF48, !dbg !505
  br i1 %cmp11, label %cleanup, label %if.end, !dbg !506

if.end:                                           ; preds = %cond.end
  %P = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, !dbg !507
  %9 = load double, ptr %P, align 8, !dbg !507
  %arrayidx18 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, i64 1, !dbg !507
  %10 = load double, ptr %arrayidx18, align 8, !dbg !507
  %mul19 = fmul double %3, %10, !dbg !507
  %11 = tail call double @llvm.fmuladd.f64(double %1, double %9, double %mul19), !dbg !507
  %arrayidx23 = getelementptr inbounds %struct.ray, ptr %pr, i64 0, i32 3, i64 2, !dbg !507
  %12 = load double, ptr %arrayidx23, align 8, !dbg !507
  %13 = tail call double @llvm.fmuladd.f64(double %6, double %12, double %11), !dbg !507
  call void @llvm.dbg.value(metadata double %13, metadata !480, metadata !DIExpression()), !dbg !496
  %d = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 2, !dbg !508
  %14 = load double, ptr %d, align 8, !dbg !508
  %add = fadd double %14, %13, !dbg !509
  %fneg24 = fneg double %add, !dbg !510
  %div = fdiv double %fneg24, %8, !dbg !511
  call void @llvm.dbg.value(metadata double %div, metadata !481, metadata !DIExpression()), !dbg !496
  %cmp25 = fcmp olt double %div, 0x3E7AD7F29ABCAF48, !dbg !512
  br i1 %cmp25, label %cleanup, label %if.end27, !dbg !514

if.end27:                                         ; preds = %if.end
  %15 = tail call double @llvm.fmuladd.f64(double %2, double %div, double %9), !dbg !515
  call void @llvm.dbg.value(metadata double %15, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !496
  %16 = tail call double @llvm.fmuladd.f64(double %4, double %div, double %10), !dbg !515
  call void @llvm.dbg.value(metadata double %16, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !496
  %17 = tail call double @llvm.fmuladd.f64(double %7, double %div, double %12), !dbg !515
  call void @llvm.dbg.value(metadata double %17, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !496
  %vptr = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 3, !dbg !517
  %18 = load ptr, ptr %vptr, align 8, !dbg !517
  call void @llvm.dbg.value(metadata ptr %18, metadata !493, metadata !DIExpression()), !dbg !496
  %vindex43 = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 4, !dbg !518
  %19 = load ptr, ptr %vindex43, align 8, !dbg !518
  call void @llvm.dbg.value(metadata ptr %19, metadata !475, metadata !DIExpression()), !dbg !496
  %axis_proj = getelementptr inbounds %struct.poly, ptr %0, i64 0, i32 5, !dbg !519
  %20 = load i64, ptr %axis_proj, align 8, !dbg !519
  switch i64 %20, label %if.end27.sw.epilog_crit_edge [
    i64 1, label %for.cond.preheader
    i64 2, label %for.cond52.preheader
    i64 3, label %for.cond68.preheader
  ], !dbg !520

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  %.pre = load i64, ptr %0, align 8
  br label %sw.epilog, !dbg !520

for.cond68.preheader:                             ; preds = %if.end27
  %21 = load i64, ptr %0, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %19, metadata !475, metadata !DIExpression()), !dbg !496
  %cmp70265 = icmp sgt i64 %21, 0, !dbg !521
  br i1 %cmp70265, label %for.body71, label %sw.epilog.thread, !dbg !525

for.cond52.preheader:                             ; preds = %if.end27
  %22 = load i64, ptr %0, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %19, metadata !475, metadata !DIExpression()), !dbg !496
  %cmp54268 = icmp sgt i64 %22, 0, !dbg !526
  br i1 %cmp54268, label %for.body55, label %sw.epilog.thread, !dbg !529

for.cond.preheader:                               ; preds = %if.end27
  %23 = load i64, ptr %0, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %19, metadata !475, metadata !DIExpression()), !dbg !496
  %cmp44271 = icmp sgt i64 %23, 0, !dbg !530
  br i1 %cmp44271, label %for.body, label %sw.epilog.thread, !dbg !533

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0273 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %vindex.0272 = phi ptr [ %incdec.ptr, %for.body ], [ %19, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0273, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %vindex.0272, metadata !475, metadata !DIExpression()), !dbg !496
  %24 = load i64, ptr %vindex.0272, align 8, !dbg !534
  call void @llvm.dbg.value(metadata !DIArgList(ptr %18, i64 %24), metadata !494, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !496
  %arrayidx45 = getelementptr inbounds [3 x double], ptr %18, i64 %24, i64 1, !dbg !536
  %25 = load double, ptr %arrayidx45, align 8, !dbg !536
  %arrayidx46 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %i.0273, !dbg !537
  store double %25, ptr %arrayidx46, align 8, !dbg !538
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %18, i64 %24, i64 2, !dbg !539
  %26 = load double, ptr %arrayidx47, align 8, !dbg !539
  %arrayidx48 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %i.0273, !dbg !540
  store double %26, ptr %arrayidx48, align 8, !dbg !541
  %incdec.ptr = getelementptr inbounds i64, ptr %vindex.0272, i64 1, !dbg !542
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !475, metadata !DIExpression()), !dbg !496
  %inc = add nuw nsw i64 %i.0273, 1, !dbg !543
  call void @llvm.dbg.value(metadata i64 %inc, metadata !474, metadata !DIExpression()), !dbg !496
  %exitcond284.not = icmp eq i64 %inc, %23, !dbg !530
  br i1 %exitcond284.not, label %sw.epilog, label %for.body, !dbg !533, !llvm.loop !544

for.body55:                                       ; preds = %for.cond52.preheader, %for.body55
  %i.1270 = phi i64 [ %inc63, %for.body55 ], [ 0, %for.cond52.preheader ]
  %vindex.1269 = phi ptr [ %incdec.ptr61, %for.body55 ], [ %19, %for.cond52.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1270, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %vindex.1269, metadata !475, metadata !DIExpression()), !dbg !496
  %27 = load i64, ptr %vindex.1269, align 8, !dbg !546
  %add.ptr56 = getelementptr inbounds [3 x double], ptr %18, i64 %27, !dbg !548
  call void @llvm.dbg.value(metadata ptr %add.ptr56, metadata !494, metadata !DIExpression()), !dbg !496
  %28 = load double, ptr %add.ptr56, align 8, !dbg !549
  %arrayidx58 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %i.1270, !dbg !550
  store double %28, ptr %arrayidx58, align 8, !dbg !551
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %18, i64 %27, i64 2, !dbg !552
  %29 = load double, ptr %arrayidx59, align 8, !dbg !552
  %arrayidx60 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %i.1270, !dbg !553
  store double %29, ptr %arrayidx60, align 8, !dbg !554
  %incdec.ptr61 = getelementptr inbounds i64, ptr %vindex.1269, i64 1, !dbg !555
  call void @llvm.dbg.value(metadata ptr %incdec.ptr61, metadata !475, metadata !DIExpression()), !dbg !496
  %inc63 = add nuw nsw i64 %i.1270, 1, !dbg !556
  call void @llvm.dbg.value(metadata i64 %inc63, metadata !474, metadata !DIExpression()), !dbg !496
  %exitcond283.not = icmp eq i64 %inc63, %22, !dbg !526
  br i1 %exitcond283.not, label %sw.epilog, label %for.body55, !dbg !529, !llvm.loop !557

for.body71:                                       ; preds = %for.cond68.preheader, %for.body71
  %i.2267 = phi i64 [ %inc79, %for.body71 ], [ 0, %for.cond68.preheader ]
  %vindex.2266 = phi ptr [ %incdec.ptr77, %for.body71 ], [ %19, %for.cond68.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2267, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr %vindex.2266, metadata !475, metadata !DIExpression()), !dbg !496
  %30 = load i64, ptr %vindex.2266, align 8, !dbg !559
  %add.ptr72 = getelementptr inbounds [3 x double], ptr %18, i64 %30, !dbg !561
  call void @llvm.dbg.value(metadata ptr %add.ptr72, metadata !494, metadata !DIExpression()), !dbg !496
  %31 = load double, ptr %add.ptr72, align 8, !dbg !562
  %arrayidx74 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %i.2267, !dbg !563
  store double %31, ptr %arrayidx74, align 8, !dbg !564
  %arrayidx75 = getelementptr inbounds [3 x double], ptr %18, i64 %30, i64 1, !dbg !565
  %32 = load double, ptr %arrayidx75, align 8, !dbg !565
  %arrayidx76 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %i.2267, !dbg !566
  store double %32, ptr %arrayidx76, align 8, !dbg !567
  %incdec.ptr77 = getelementptr inbounds i64, ptr %vindex.2266, i64 1, !dbg !568
  call void @llvm.dbg.value(metadata ptr %incdec.ptr77, metadata !475, metadata !DIExpression()), !dbg !496
  %inc79 = add nuw nsw i64 %i.2267, 1, !dbg !569
  call void @llvm.dbg.value(metadata i64 %inc79, metadata !474, metadata !DIExpression()), !dbg !496
  %exitcond.not = icmp eq i64 %inc79, %21, !dbg !521
  br i1 %exitcond.not, label %sw.epilog, label %for.body71, !dbg !525, !llvm.loop !570

sw.epilog.thread:                                 ; preds = %for.cond.preheader, %for.cond52.preheader, %for.cond68.preheader
  %.ph = phi i64 [ %21, %for.cond68.preheader ], [ %22, %for.cond52.preheader ], [ %23, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata double %ix.0, metadata !487, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata double %iy.0, metadata !488, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  %33 = load double, ptr %x, align 16, !dbg !572
  %arrayidx108294 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %.ph, !dbg !573
  store double %33, ptr %arrayidx108294, align 8, !dbg !574
  %34 = load double, ptr %y, align 16, !dbg !575
  %arrayidx111295 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %.ph, !dbg !576
  store double %34, ptr %arrayidx111295, align 8, !dbg !577
  call void @llvm.dbg.value(metadata i1 undef, metadata !477, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !476, metadata !DIExpression()), !dbg !496
  br label %cleanup, !dbg !578

sw.epilog:                                        ; preds = %for.body71, %for.body55, %for.body, %if.end27.sw.epilog_crit_edge
  %35 = phi i64 [ %.pre, %if.end27.sw.epilog_crit_edge ], [ %23, %for.body ], [ %22, %for.body55 ], [ %21, %for.body71 ]
  %iy.0 = phi double [ undef, %if.end27.sw.epilog_crit_edge ], [ %17, %for.body ], [ %17, %for.body55 ], [ %16, %for.body71 ]
  %ix.0 = phi double [ undef, %if.end27.sw.epilog_crit_edge ], [ %16, %for.body ], [ %15, %for.body55 ], [ %15, %for.body71 ]
  call void @llvm.dbg.value(metadata double %ix.0, metadata !487, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata double %iy.0, metadata !488, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  %cmp85274 = icmp sgt i64 %35, 0, !dbg !580
  br i1 %cmp85274, label %for.body86, label %for.end105.thread, !dbg !583

for.end105.thread:                                ; preds = %sw.epilog
  %36 = load double, ptr %x, align 16, !dbg !572
  %arrayidx108292 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %35, !dbg !573
  store double %36, ptr %arrayidx108292, align 8, !dbg !574
  %37 = load double, ptr %y, align 16, !dbg !575
  %arrayidx111293 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %35, !dbg !576
  store double %37, ptr %arrayidx111293, align 8, !dbg !577
  call void @llvm.dbg.value(metadata i1 undef, metadata !477, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !476, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  br label %cleanup, !dbg !578

for.body86:                                       ; preds = %sw.epilog, %for.inc103
  %i.3275 = phi i64 [ %inc104, %for.inc103 ], [ 0, %sw.epilog ]
  call void @llvm.dbg.value(metadata i64 %i.3275, metadata !474, metadata !DIExpression()), !dbg !496
  %arrayidx87 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %i.3275, !dbg !584
  %38 = load double, ptr %arrayidx87, align 8, !dbg !586
  %sub = fsub double %38, %ix.0, !dbg !586
  store double %sub, ptr %arrayidx87, align 8, !dbg !586
  %arrayidx88 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %i.3275, !dbg !587
  %39 = load double, ptr %arrayidx88, align 8, !dbg !588
  %sub89 = fsub double %39, %iy.0, !dbg !588
  store double %sub89, ptr %arrayidx88, align 8, !dbg !588
  %cmp91 = fcmp ogt double %sub89, 0.000000e+00, !dbg !589
  br i1 %cmp91, label %cond.end97, label %cond.false94, !dbg !589

cond.false94:                                     ; preds = %for.body86
  %fneg96 = fneg double %sub89, !dbg !589
  br label %cond.end97, !dbg !589

cond.end97:                                       ; preds = %for.body86, %cond.false94
  %cond98 = phi double [ %fneg96, %cond.false94 ], [ %sub89, %for.body86 ], !dbg !589
  %cmp99 = fcmp olt double %cond98, 0x3E7AD7F29ABCAF48, !dbg !591
  br i1 %cmp99, label %if.then100, label %for.inc103, !dbg !592

if.then100:                                       ; preds = %cond.end97
  store double 0.000000e+00, ptr %arrayidx88, align 8, !dbg !593
  br label %for.inc103, !dbg !594

for.inc103:                                       ; preds = %cond.end97, %if.then100
  %inc104 = add nuw nsw i64 %i.3275, 1, !dbg !595
  call void @llvm.dbg.value(metadata i64 %inc104, metadata !474, metadata !DIExpression()), !dbg !496
  %exitcond285.not = icmp eq i64 %inc104, %35, !dbg !580
  br i1 %exitcond285.not, label %for.end105, label %for.body86, !dbg !583, !llvm.loop !596

for.end105:                                       ; preds = %for.inc103
  %40 = load double, ptr %x, align 16, !dbg !572
  %arrayidx108 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %35, !dbg !573
  store double %40, ptr %arrayidx108, align 8, !dbg !574
  %41 = load double, ptr %y, align 16, !dbg !575
  %arrayidx111 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %35, !dbg !576
  store double %41, ptr %arrayidx111, align 8, !dbg !577
  call void @llvm.dbg.value(metadata i1 undef, metadata !477, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !476, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !496
  br i1 %cmp85274, label %for.body119.preheader, label %cleanup, !dbg !578

for.body119.preheader:                            ; preds = %for.end105
  %42 = load double, ptr %y, align 16, !dbg !598
  %cmp113 = fcmp uge double %42, 0.000000e+00, !dbg !600
  call void @llvm.dbg.value(metadata i1 %cmp113, metadata !477, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !496
  %. = zext i1 %cmp113 to i64
  call void @llvm.dbg.value(metadata i64 %., metadata !477, metadata !DIExpression()), !dbg !496
  br label %for.body119, !dbg !578

for.body119:                                      ; preds = %for.body119.preheader, %if.end152
  %i.4279 = phi i64 [ %add120, %if.end152 ], [ 0, %for.body119.preheader ]
  %toright.0278 = phi i64 [ %toright.1, %if.end152 ], [ 0, %for.body119.preheader ]
  %sh.1277 = phi i64 [ %.262, %if.end152 ], [ %., %for.body119.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.4279, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 %toright.0278, metadata !476, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 %sh.1277, metadata !477, metadata !DIExpression()), !dbg !496
  %add120 = add nuw nsw i64 %i.4279, 1, !dbg !601
  %arrayidx121 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %add120, !dbg !605
  %43 = load double, ptr %arrayidx121, align 8, !dbg !605
  %cmp122 = fcmp uge double %43, 0.000000e+00, !dbg !606
  %.262 = zext i1 %cmp122 to i64
  call void @llvm.dbg.value(metadata i64 %.262, metadata !478, metadata !DIExpression()), !dbg !496
  %tobool.not = icmp eq i64 %sh.1277, %.262, !dbg !607
  br i1 %tobool.not, label %if.end152, label %if.then126, !dbg !609

if.then126:                                       ; preds = %for.body119
  %arrayidx129 = getelementptr inbounds [101 x double], ptr %y, i64 0, i64 %i.4279, !dbg !610
  %44 = load double, ptr %arrayidx129, align 8, !dbg !610
  %sub130 = fsub double %43, %44, !dbg !612
  call void @llvm.dbg.value(metadata double %sub130, metadata !490, metadata !DIExpression()), !dbg !496
  %cmp131 = fcmp ogt double %sub130, 0.000000e+00, !dbg !613
  br i1 %cmp131, label %cond.end135, label %cond.false133, !dbg !613

cond.false133:                                    ; preds = %if.then126
  %fneg134 = fneg double %sub130, !dbg !613
  br label %cond.end135, !dbg !613

cond.end135:                                      ; preds = %if.then126, %cond.false133
  %cond136 = phi double [ %fneg134, %cond.false133 ], [ %sub130, %if.then126 ], !dbg !613
  %cmp137 = fcmp ult double %cond136, 0x3E7AD7F29ABCAF48, !dbg !615
  br i1 %cmp137, label %if.end152, label %if.then138, !dbg !616

if.then138:                                       ; preds = %cond.end135
  %arrayidx140 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %add120, !dbg !617
  %45 = load double, ptr %arrayidx140, align 8, !dbg !617
  %arrayidx141 = getelementptr inbounds [101 x double], ptr %x, i64 0, i64 %i.4279, !dbg !619
  %46 = load double, ptr %arrayidx141, align 8, !dbg !619
  %sub142 = fsub double %45, %46, !dbg !620
  call void @llvm.dbg.value(metadata double %sub142, metadata !489, metadata !DIExpression()), !dbg !496
  %mul = fmul double %44, %sub142, !dbg !621
  %div145 = fdiv double %mul, %sub130, !dbg !622
  %sub146 = fsub double %46, %div145, !dbg !623
  call void @llvm.dbg.value(metadata double %sub146, metadata !491, metadata !DIExpression()), !dbg !496
  %cmp147 = fcmp ogt double %sub146, 0.000000e+00, !dbg !624
  br i1 %cmp147, label %if.then148, label %if.end152, !dbg !626

if.then148:                                       ; preds = %if.then138
  %inc149 = add nsw i64 %toright.0278, 1, !dbg !627
  call void @llvm.dbg.value(metadata i64 %inc149, metadata !476, metadata !DIExpression()), !dbg !496
  br label %if.end152, !dbg !628

if.end152:                                        ; preds = %cond.end135, %if.then148, %if.then138, %for.body119
  %toright.1 = phi i64 [ %inc149, %if.then148 ], [ %toright.0278, %if.then138 ], [ %toright.0278, %cond.end135 ], [ %toright.0278, %for.body119 ], !dbg !496
  call void @llvm.dbg.value(metadata i64 %add120, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 %toright.1, metadata !476, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 %.262, metadata !477, metadata !DIExpression()), !dbg !496
  %exitcond286.not = icmp eq i64 %add120, %35, !dbg !629
  br i1 %exitcond286.not, label %for.end155, label %for.body119, !dbg !578, !llvm.loop !630

for.end155:                                       ; preds = %if.end152
  %47 = and i64 %toright.1, -9223372036854775807, !dbg !632
  %cmp156 = icmp eq i64 %47, 1, !dbg !632
  br i1 %cmp156, label %if.then157, label %cleanup, !dbg !634

if.then157:                                       ; preds = %for.end155
  store double %div, ptr %hit, align 8, !dbg !635
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !635
  store ptr %pe, ptr %pelem, align 8, !dbg !635
  br label %cleanup, !dbg !638

cleanup:                                          ; preds = %sw.epilog.thread, %for.end105.thread, %for.end105, %for.end155, %if.end, %cond.end, %if.then157
  %retval.0 = phi i64 [ 1, %if.then157 ], [ 0, %cond.end ], [ 0, %if.end ], [ 0, %for.end155 ], [ 0, %for.end105 ], [ 0, %for.end105.thread ], [ 0, %sw.epilog.thread ], !dbg !496
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %y) #15, !dbg !639
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %x) #15, !dbg !639
  ret i64 %retval.0, !dbg !639
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @PolyIntersect(ptr nocapture noundef readonly %pr, ptr nocapture noundef readonly %po, ptr nocapture noundef %hit) local_unnamed_addr #9 !dbg !640 {
entry:
  %newhit = alloca %struct.irecord, align 8
  call void @llvm.dbg.value(metadata ptr %pr, metadata !644, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata ptr %po, metadata !645, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata ptr %hit, metadata !646, metadata !DIExpression()), !dbg !651
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %newhit) #15, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !650, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i64 0, metadata !648, metadata !DIExpression()), !dbg !651
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !654
  %0 = load ptr, ptr %pelem, align 8, !dbg !654
  call void @llvm.dbg.value(metadata ptr %0, metadata !649, metadata !DIExpression()), !dbg !651
  store double 1.000000e+32, ptr %hit, align 8, !dbg !655
  call void @llvm.dbg.value(metadata i64 0, metadata !647, metadata !DIExpression()), !dbg !651
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !649, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i64 0, metadata !648, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i64 0, metadata !647, metadata !DIExpression()), !dbg !651
  %1 = load i64, ptr %numelements, align 8, !dbg !656
  %cmp21 = icmp sgt i64 %1, 0, !dbg !659
  br i1 %cmp21, label %for.body.lr.ph, label %for.end, !dbg !660

for.body.lr.ph:                                   ; preds = %entry
  %pelem9 = getelementptr inbounds %struct.irecord, ptr %newhit, i64 0, i32 1
  %pelem11 = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1
  br label %for.body, !dbg !660

for.body:                                         ; preds = %for.body.lr.ph, %if.end12
  %pe.024 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr, %if.end12 ]
  %nhits.023 = phi i64 [ 0, %for.body.lr.ph ], [ %nhits.1, %if.end12 ]
  %i.022 = phi i64 [ 0, %for.body.lr.ph ], [ %inc13, %if.end12 ]
  call void @llvm.dbg.value(metadata ptr %pe.024, metadata !649, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i64 %nhits.023, metadata !648, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i64 %i.022, metadata !647, metadata !DIExpression()), !dbg !651
  %call = call i64 @PolyPeIntersect(ptr noundef %pr, ptr noundef %pe.024, ptr noundef nonnull %newhit), !dbg !661
  %tobool.not = icmp eq i64 %call, 0, !dbg !661
  br i1 %tobool.not, label %if.end12, label %if.then, !dbg !664

if.then:                                          ; preds = %for.body
  %inc = add nsw i64 %nhits.023, 1, !dbg !665
  call void @llvm.dbg.value(metadata i64 %inc, metadata !648, metadata !DIExpression()), !dbg !651
  %2 = load double, ptr %newhit, align 8, !dbg !667
  %3 = load double, ptr %hit, align 8, !dbg !669
  %cmp4 = fcmp olt double %2, %3, !dbg !670
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !671

if.then5:                                         ; preds = %if.then
  store double %2, ptr %hit, align 8, !dbg !672
  %4 = load ptr, ptr %pelem9, align 8, !dbg !674
  store ptr %4, ptr %pelem11, align 8, !dbg !675
  br label %if.end12, !dbg !676

if.end12:                                         ; preds = %if.then, %if.then5, %for.body
  %nhits.1 = phi i64 [ %inc, %if.then5 ], [ %inc, %if.then ], [ %nhits.023, %for.body ], !dbg !651
  call void @llvm.dbg.value(metadata i64 %nhits.1, metadata !648, metadata !DIExpression()), !dbg !651
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.024, i64 1, !dbg !677
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !649, metadata !DIExpression()), !dbg !651
  %inc13 = add nuw nsw i64 %i.022, 1, !dbg !678
  call void @llvm.dbg.value(metadata i64 %inc13, metadata !647, metadata !DIExpression()), !dbg !651
  %5 = load i64, ptr %numelements, align 8, !dbg !656
  %cmp = icmp slt i64 %inc13, %5, !dbg !659
  br i1 %cmp, label %for.body, label %for.end, !dbg !660, !llvm.loop !679

for.end:                                          ; preds = %if.end12, %entry
  %nhits.0.lcssa = phi i64 [ 0, %entry ], [ %nhits.1, %if.end12 ], !dbg !651
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %newhit) #15, !dbg !681
  ret i64 %nhits.0.lcssa, !dbg !682
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PolyTransform(ptr nocapture noundef readonly %po, ptr noundef %xtrans, ptr noundef %xinvT) local_unnamed_addr #7 !dbg !683 {
entry:
  %norm = alloca [4 x double], align 16
  %coord = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %po, metadata !687, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata ptr %xtrans, metadata !688, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata ptr %xinvT, metadata !689, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %norm) #15, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %norm, metadata !694, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %coord) #15, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %coord, metadata !695, metadata !DIExpression()), !dbg !701
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !702
  %0 = load ptr, ptr %pelem, align 8, !dbg !702
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !698
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !703
  %1 = load i64, ptr %numelements, align 8, !dbg !703
  call void @llvm.dbg.value(metadata i64 %1, metadata !691, metadata !DIExpression()), !dbg !698
  %data = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2, !dbg !704
  %2 = load ptr, ptr %data, align 8, !dbg !704
  call void @llvm.dbg.value(metadata ptr %2, metadata !696, metadata !DIExpression()), !dbg !698
  %vptr1 = getelementptr inbounds %struct.poly, ptr %2, i64 0, i32 3, !dbg !705
  %3 = load ptr, ptr %vptr1, align 8, !dbg !705
  call void @llvm.dbg.value(metadata ptr %3, metadata !692, metadata !DIExpression()), !dbg !698
  %4 = load double, ptr %3, align 8, !dbg !706
  store double %4, ptr %coord, align 16, !dbg !707
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1, !dbg !708
  %5 = load double, ptr %arrayidx3, align 8, !dbg !708
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 1, !dbg !709
  store double %5, ptr %arrayidx4, align 8, !dbg !710
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2, !dbg !711
  %6 = load double, ptr %arrayidx5, align 8, !dbg !711
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 2, !dbg !712
  store double %6, ptr %arrayidx6, align 16, !dbg !713
  %arrayidx7 = getelementptr inbounds [4 x double], ptr %coord, i64 0, i64 3, !dbg !714
  store double 1.000000e+00, ptr %arrayidx7, align 8, !dbg !698
  call void @llvm.dbg.value(metadata ptr %3, metadata !692, metadata !DIExpression()), !dbg !698
  %cmp165 = fcmp une double %4, 1.000000e+32, !dbg !715
  %cmp10166 = fcmp une double %5, 1.000000e+32
  %or.cond167 = select i1 %cmp165, i1 %cmp10166, i1 false, !dbg !716
  %cmp12168 = fcmp une double %6, 1.000000e+32
  %or.cond117169 = select i1 %or.cond167, i1 %cmp12168, i1 false, !dbg !716
  br i1 %or.cond117169, label %while.body, label %for.cond.preheader, !dbg !716

for.cond.preheader:                               ; preds = %while.body, %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 0, metadata !690, metadata !DIExpression()), !dbg !698
  %cmp27171 = icmp sgt i64 %1, 0, !dbg !717
  br i1 %cmp27171, label %for.body.lr.ph, label %for.end, !dbg !720

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx34 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 1
  %arrayidx37 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 2
  %arrayidx38 = getelementptr inbounds [4 x double], ptr %norm, i64 0, i64 3
  br label %for.body, !dbg !720

while.body:                                       ; preds = %entry, %while.body
  %vptr.0170 = phi ptr [ %incdec.ptr, %while.body ], [ %3, %entry ]
  call void @llvm.dbg.value(metadata ptr %vptr.0170, metadata !692, metadata !DIExpression()), !dbg !698
  call void @VecMatMult(ptr noundef nonnull %coord, ptr noundef %xtrans, ptr noundef nonnull %coord) #15, !dbg !721
  %7 = load double, ptr %coord, align 16, !dbg !723
  store double %7, ptr %vptr.0170, align 8, !dbg !724
  %8 = load double, ptr %arrayidx4, align 8, !dbg !725
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %vptr.0170, i64 0, i64 1, !dbg !726
  store double %8, ptr %arrayidx17, align 8, !dbg !727
  %9 = load double, ptr %arrayidx6, align 16, !dbg !728
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %vptr.0170, i64 0, i64 2, !dbg !729
  store double %9, ptr %arrayidx19, align 8, !dbg !730
  %incdec.ptr = getelementptr inbounds [3 x double], ptr %vptr.0170, i64 1, !dbg !731
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !692, metadata !DIExpression()), !dbg !698
  %10 = load double, ptr %incdec.ptr, align 8, !dbg !732
  store double %10, ptr %coord, align 16, !dbg !733
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %vptr.0170, i64 1, i64 1, !dbg !734
  %11 = load double, ptr %arrayidx22, align 8, !dbg !734
  store double %11, ptr %arrayidx4, align 8, !dbg !735
  %arrayidx24 = getelementptr inbounds [3 x double], ptr %vptr.0170, i64 1, i64 2, !dbg !736
  %12 = load double, ptr %arrayidx24, align 8, !dbg !736
  store double %12, ptr %arrayidx6, align 16, !dbg !737
  store double 1.000000e+00, ptr %arrayidx7, align 8, !dbg !698
  %cmp = fcmp une double %10, 1.000000e+32, !dbg !715
  %cmp10 = fcmp une double %11, 1.000000e+32
  %or.cond = select i1 %cmp, i1 %cmp10, i1 false, !dbg !716
  %cmp12 = fcmp une double %12, 1.000000e+32
  %or.cond117 = select i1 %or.cond, i1 %cmp12, i1 false, !dbg !716
  br i1 %or.cond117, label %while.body, label %for.cond.preheader, !dbg !716, !llvm.loop !738

for.body:                                         ; preds = %for.body.lr.ph, %if.end115
  %pe.0173 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr116, %if.end115 ]
  %i.0172 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end115 ]
  call void @llvm.dbg.value(metadata ptr %pe.0173, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 %i.0172, metadata !690, metadata !DIExpression()), !dbg !698
  %data28 = getelementptr inbounds %struct.element, ptr %pe.0173, i64 0, i32 2, !dbg !741
  %13 = load ptr, ptr %data28, align 8, !dbg !741
  call void @llvm.dbg.value(metadata ptr %13, metadata !696, metadata !DIExpression()), !dbg !698
  %norm29 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 1, !dbg !743
  %14 = load double, ptr %norm29, align 8, !dbg !744
  store double %14, ptr %norm, align 16, !dbg !745
  %arrayidx33 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 1, i64 1, !dbg !746
  %15 = load double, ptr %arrayidx33, align 8, !dbg !746
  store double %15, ptr %arrayidx34, align 8, !dbg !747
  %arrayidx36 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 1, i64 2, !dbg !748
  %16 = load double, ptr %arrayidx36, align 8, !dbg !748
  store double %16, ptr %arrayidx37, align 16, !dbg !749
  store double 0.000000e+00, ptr %arrayidx38, align 8, !dbg !750
  call void @VecMatMult(ptr noundef nonnull %norm, ptr noundef %xinvT, ptr noundef nonnull %norm) #15, !dbg !751
  call void @VecNorm(ptr noundef nonnull %norm) #15, !dbg !752
  %17 = load double, ptr %norm, align 16, !dbg !753
  store double %17, ptr %norm29, align 8, !dbg !754
  %18 = load double, ptr %arrayidx34, align 8, !dbg !755
  store double %18, ptr %arrayidx33, align 8, !dbg !756
  %19 = load double, ptr %arrayidx37, align 16, !dbg !757
  store double %19, ptr %arrayidx36, align 8, !dbg !758
  %vptr51 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 3, !dbg !759
  %20 = load ptr, ptr %vptr51, align 8, !dbg !759
  %vindex = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 4, !dbg !760
  %21 = load ptr, ptr %vindex, align 8, !dbg !760
  %22 = load i64, ptr %21, align 8, !dbg !761
  %add.ptr = getelementptr inbounds [3 x double], ptr %20, i64 %22, !dbg !762
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !693, metadata !DIExpression()), !dbg !698
  %23 = load double, ptr %add.ptr, align 8, !dbg !763
  %arrayidx57 = getelementptr inbounds [3 x double], ptr %20, i64 %22, i64 1, !dbg !764
  %24 = load double, ptr %arrayidx57, align 8, !dbg !764
  %mul58 = fmul double %18, %24, !dbg !765
  %25 = call double @llvm.fmuladd.f64(double %17, double %23, double %mul58), !dbg !766
  %arrayidx61 = getelementptr inbounds [3 x double], ptr %20, i64 %22, i64 2, !dbg !767
  %26 = load double, ptr %arrayidx61, align 8, !dbg !767
  %27 = call double @llvm.fmuladd.f64(double %19, double %26, double %25), !dbg !768
  %fneg = fneg double %27, !dbg !769
  %d = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 2, !dbg !770
  store double %fneg, ptr %d, align 8, !dbg !771
  %cmp64 = fcmp ogt double %17, 0.000000e+00, !dbg !772
  br i1 %cmp64, label %cond.end, label %cond.false, !dbg !772

cond.false:                                       ; preds = %for.body
  %fneg69 = fneg double %17, !dbg !772
  br label %cond.end, !dbg !772

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %fneg69, %cond.false ], [ %17, %for.body ], !dbg !772
  store double %cond, ptr %norm, align 16, !dbg !773
  %cmp73 = fcmp ogt double %18, 0.000000e+00, !dbg !774
  br i1 %cmp73, label %cond.end81, label %cond.false77, !dbg !774

cond.false77:                                     ; preds = %cond.end
  %fneg80 = fneg double %18, !dbg !774
  br label %cond.end81, !dbg !774

cond.end81:                                       ; preds = %cond.end, %cond.false77
  %cond82 = phi double [ %fneg80, %cond.false77 ], [ %18, %cond.end ], !dbg !774
  store double %cond82, ptr %arrayidx34, align 8, !dbg !775
  %cmp86 = fcmp ogt double %19, 0.000000e+00, !dbg !776
  br i1 %cmp86, label %cond.end94, label %cond.false90, !dbg !776

cond.false90:                                     ; preds = %cond.end81
  %fneg93 = fneg double %19, !dbg !776
  br label %cond.end94, !dbg !776

cond.end94:                                       ; preds = %cond.end81, %cond.false90
  %cond95 = phi double [ %fneg93, %cond.false90 ], [ %19, %cond.end81 ], !dbg !776
  store double %cond95, ptr %arrayidx37, align 16, !dbg !777
  %cmp99 = fcmp ult double %cond, %cond82, !dbg !778
  %cmp103 = fcmp ult double %cond, %cond95
  %or.cond163 = select i1 %cmp99, i1 true, i1 %cmp103, !dbg !780
  br i1 %or.cond163, label %if.else, label %if.then, !dbg !780

if.then:                                          ; preds = %cond.end94
  %axis_proj = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 5, !dbg !781
  store i64 1, ptr %axis_proj, align 8, !dbg !782
  br label %if.end115, !dbg !783

if.else:                                          ; preds = %cond.end94
  %cmp106 = fcmp ult double %cond82, %cond, !dbg !784
  %cmp110 = fcmp ult double %cond82, %cond95
  %or.cond164 = select i1 %cmp106, i1 true, i1 %cmp110, !dbg !786
  %axis_proj114 = getelementptr inbounds %struct.poly, ptr %13, i64 0, i32 5, !dbg !787
  br i1 %or.cond164, label %if.else113, label %if.then111, !dbg !786

if.then111:                                       ; preds = %if.else
  store i64 2, ptr %axis_proj114, align 8, !dbg !788
  br label %if.end115, !dbg !789

if.else113:                                       ; preds = %if.else
  store i64 3, ptr %axis_proj114, align 8, !dbg !790
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.else113, %if.then
  %incdec.ptr116 = getelementptr inbounds %struct.element, ptr %pe.0173, i64 1, !dbg !791
  call void @llvm.dbg.value(metadata ptr %incdec.ptr116, metadata !697, metadata !DIExpression()), !dbg !698
  %inc = add nuw nsw i64 %i.0172, 1, !dbg !792
  call void @llvm.dbg.value(metadata i64 %inc, metadata !690, metadata !DIExpression()), !dbg !698
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !717
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !720, !llvm.loop !793

for.end:                                          ; preds = %if.end115, %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %coord) #15, !dbg !795
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %norm) #15, !dbg !795
  ret void, !dbg !795
}

declare !dbg !796 void @VecNorm(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local void @PolyRead(ptr noundef %po, ptr noundef %pf) local_unnamed_addr #7 !dbg !799 {
entry:
  %totalverts = alloca i64, align 8
  %normstr = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %po, metadata !863, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %pf, metadata !864, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %totalverts) #15, !dbg !886
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %normstr) #15, !dbg !887
  call void @llvm.dbg.declare(metadata ptr %normstr, metadata !870, metadata !DIExpression()), !dbg !888
  %pelem = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 3, !dbg !889
  %0 = load ptr, ptr %pelem, align 8, !dbg !889
  call void @llvm.dbg.value(metadata ptr %0, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %totalverts, metadata !869, metadata !DIExpression(DW_OP_deref)), !dbg !885
  %call = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.4, ptr noundef nonnull %totalverts) #15, !dbg !890
  call void @llvm.dbg.value(metadata i32 %call, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !885
  %cmp.not = icmp eq i32 %call, 1, !dbg !891
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !893

if.then:                                          ; preds = %entry
  %puts528 = call i32 @puts(ptr nonnull @str.17), !dbg !894
  call void @exit(i32 noundef -1) #16, !dbg !896
  unreachable, !dbg !896

if.end:                                           ; preds = %entry
  %numelements = getelementptr inbounds %struct.object, ptr %po, i64 0, i32 4, !dbg !897
  %1 = load i64, ptr %numelements, align 8, !dbg !897
  %mul = shl i64 %1, 6, !dbg !898
  %call3 = call ptr @GlobalMalloc(i64 noundef %mul, ptr noundef nonnull @.str.6) #15, !dbg !899
  call void @llvm.dbg.value(metadata ptr %call3, metadata !883, metadata !DIExpression()), !dbg !885
  %2 = load i64, ptr %totalverts, align 8, !dbg !900
  call void @llvm.dbg.value(metadata i64 %2, metadata !869, metadata !DIExpression()), !dbg !885
  %3 = mul i64 %2, 24, !dbg !901
  %mul4 = add i64 %3, 24, !dbg !901
  %call5 = call ptr @GlobalMalloc(i64 noundef %mul4, ptr noundef nonnull @.str.6) #15, !dbg !902
  call void @llvm.dbg.value(metadata ptr %call5, metadata !875, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %call5, metadata !876, metadata !DIExpression()), !dbg !885
  %call6 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.7, ptr noundef nonnull %normstr) #15, !dbg !903
  call void @llvm.dbg.value(metadata i32 %call6, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !885
  %cmp8.not = icmp eq i32 %call6, 1, !dbg !904
  br i1 %cmp8.not, label %if.end12, label %if.then10, !dbg !906

if.then10:                                        ; preds = %if.end
  %puts527 = call i32 @puts(ptr nonnull @str.16), !dbg !907
  call void @exit(i32 noundef -1) #16, !dbg !909
  unreachable, !dbg !909

if.end12:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [5 x i8], ptr %normstr, i64 0, i64 2, !dbg !910
  %4 = load i8, ptr %arrayidx, align 1, !dbg !910
  %cmp14 = icmp eq i8 %4, 121, !dbg !911
  call void @llvm.dbg.value(metadata i32 undef, metadata !872, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !885
  call void @llvm.dbg.value(metadata i64 0, metadata !865, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %call5, metadata !876, metadata !DIExpression()), !dbg !885
  %5 = load i64, ptr %totalverts, align 8, !dbg !912
  call void @llvm.dbg.value(metadata i64 %5, metadata !869, metadata !DIExpression()), !dbg !885
  %cmp17539 = icmp sgt i64 %5, 0, !dbg !915
  br i1 %cmp17539, label %for.body, label %for.end, !dbg !916

for.body:                                         ; preds = %if.end12, %if.end28
  %vptr.0541 = phi ptr [ %incdec.ptr, %if.end28 ], [ %call5, %if.end12 ]
  %i.0540 = phi i64 [ %inc, %if.end28 ], [ 0, %if.end12 ]
  call void @llvm.dbg.value(metadata ptr %vptr.0541, metadata !876, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %i.0540, metadata !865, metadata !DIExpression()), !dbg !885
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %vptr.0541, i64 0, i64 1, !dbg !917
  %arrayidx21 = getelementptr inbounds [3 x double], ptr %vptr.0541, i64 0, i64 2, !dbg !919
  %call22 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.9, ptr noundef %vptr.0541, ptr noundef nonnull %arrayidx20, ptr noundef nonnull %arrayidx21) #15, !dbg !920
  call void @llvm.dbg.value(metadata i32 %call22, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !885
  %cmp24.not = icmp eq i32 %call22, 3, !dbg !921
  br i1 %cmp24.not, label %if.end28, label %if.then26, !dbg !923

if.then26:                                        ; preds = %for.body
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %i.0540), !dbg !924
  call void @exit(i32 noundef -1) #16, !dbg !926
  unreachable, !dbg !926

if.end28:                                         ; preds = %for.body
  %incdec.ptr = getelementptr inbounds [3 x double], ptr %vptr.0541, i64 1, !dbg !927
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !876, metadata !DIExpression()), !dbg !885
  %inc = add nuw nsw i64 %i.0540, 1, !dbg !928
  call void @llvm.dbg.value(metadata i64 %inc, metadata !865, metadata !DIExpression()), !dbg !885
  %6 = load i64, ptr %totalverts, align 8, !dbg !912
  call void @llvm.dbg.value(metadata i64 %6, metadata !869, metadata !DIExpression()), !dbg !885
  %cmp17 = icmp slt i64 %inc, %6, !dbg !915
  br i1 %cmp17, label %for.body, label %for.end, !dbg !916, !llvm.loop !929

for.end:                                          ; preds = %if.end28, %if.end12
  %vptr.0.lcssa = phi ptr [ %call5, %if.end12 ], [ %incdec.ptr, %if.end28 ], !dbg !885
  store double 1.000000e+32, ptr %vptr.0.lcssa, align 8, !dbg !931
  %arrayidx30 = getelementptr inbounds [3 x double], ptr %vptr.0.lcssa, i64 0, i64 1, !dbg !932
  store double 1.000000e+32, ptr %arrayidx30, align 8, !dbg !933
  %arrayidx31 = getelementptr inbounds [3 x double], ptr %vptr.0.lcssa, i64 0, i64 2, !dbg !934
  store double 1.000000e+32, ptr %arrayidx31, align 8, !dbg !935
  call void @llvm.dbg.value(metadata i64 0, metadata !865, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %0, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %call3, metadata !883, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr undef, metadata !879, metadata !DIExpression()), !dbg !885
  %7 = load i64, ptr %numelements, align 8, !dbg !936
  %cmp34558 = icmp sgt i64 %7, 0, !dbg !939
  br i1 %cmp34558, label %for.body36, label %for.end354, !dbg !940

for.body36:                                       ; preds = %for.end, %if.end334
  %pe.0563 = phi ptr [ %incdec.ptr351, %if.end334 ], [ %0, %for.end ]
  %pp.0562 = phi ptr [ %incdec.ptr350, %if.end334 ], [ %call3, %for.end ]
  %vptmp2.0561 = phi ptr [ %vptmp2.2, %if.end334 ], [ undef, %for.end ]
  %i.1559 = phi i64 [ %inc353, %if.end334 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata ptr %pe.0563, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %pp.0562, metadata !883, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %vptmp2.0561, metadata !879, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %i.1559, metadata !865, metadata !DIExpression()), !dbg !885
  %call37 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.4, ptr noundef %pp.0562) #15, !dbg !941
  call void @llvm.dbg.value(metadata i32 %call37, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !885
  %cmp39.not = icmp eq i32 %call37, 1, !dbg !943
  br i1 %cmp39.not, label %if.end43, label %if.then41, !dbg !945

if.then41:                                        ; preds = %for.body36
  %puts = call i32 @puts(ptr nonnull @str), !dbg !946
  call void @exit(i32 noundef -1) #16, !dbg !948
  unreachable, !dbg !948

if.end43:                                         ; preds = %for.body36
  %8 = load i64, ptr %pp.0562, align 8, !dbg !949
  %cmp45 = icmp sgt i64 %8, 100, !dbg !951
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !952

if.then47:                                        ; preds = %if.end43
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %8), !dbg !953
  call void @exit(i32 noundef -1) #16, !dbg !955
  unreachable, !dbg !955

if.end50:                                         ; preds = %if.end43
  br i1 %cmp14, label %if.then51, label %if.end64, !dbg !956

if.then51:                                        ; preds = %if.end50
  %norm = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, !dbg !957
  %arrayidx54 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, i64 1, !dbg !960
  %arrayidx56 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, i64 2, !dbg !961
  %call57 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.13, ptr noundef nonnull %norm, ptr noundef nonnull %arrayidx54, ptr noundef nonnull %arrayidx56) #15, !dbg !962
  call void @llvm.dbg.value(metadata i32 %call57, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !885
  %cmp59.not = icmp eq i32 %call57, 3, !dbg !963
  br i1 %cmp59.not, label %if.then51.if.end64_crit_edge, label %if.then61, !dbg !965

if.then51.if.end64_crit_edge:                     ; preds = %if.then51
  %.pre = load i64, ptr %pp.0562, align 8, !dbg !966
  br label %if.end64, !dbg !965

if.then61:                                        ; preds = %if.then51
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i64 noundef %i.1559), !dbg !967
  call void @exit(i32 noundef -1) #16, !dbg !969
  unreachable, !dbg !969

if.end64:                                         ; preds = %if.then51.if.end64_crit_edge, %if.end50
  %9 = phi i64 [ %.pre, %if.then51.if.end64_crit_edge ], [ %8, %if.end50 ], !dbg !966
  %vptr65 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 3, !dbg !970
  store ptr %call5, ptr %vptr65, align 8, !dbg !971
  %mul67 = shl i64 %9, 3, !dbg !972
  %call68 = call ptr @GlobalMalloc(i64 noundef %mul67, ptr noundef nonnull @.str.6) #15, !dbg !973
  %vindex69 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 4, !dbg !974
  store ptr %call68, ptr %vindex69, align 8, !dbg !975
  call void @llvm.dbg.value(metadata ptr %call68, metadata !868, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()), !dbg !885
  %10 = load i64, ptr %pp.0562, align 8, !dbg !976
  %cmp73542 = icmp sgt i64 %10, 0, !dbg !979
  br i1 %cmp73542, label %for.body75, label %for.end86, !dbg !980

for.body75:                                       ; preds = %if.end64, %for.inc84
  %j.0544 = phi i64 [ %inc85, %for.inc84 ], [ 0, %if.end64 ]
  %vindex.0543 = phi ptr [ %incdec.ptr76, %for.inc84 ], [ %call68, %if.end64 ]
  call void @llvm.dbg.value(metadata i64 %j.0544, metadata !866, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %vindex.0543, metadata !868, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !885
  %call77 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %pf, ptr noundef nonnull @.str.4, ptr noundef %vindex.0543) #15, !dbg !981
  call void @llvm.dbg.value(metadata i32 %call77, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !885
  %cmp79.not = icmp eq i32 %call77, 1, !dbg !983
  br i1 %cmp79.not, label %for.inc84, label %if.then81, !dbg !985

if.then81:                                        ; preds = %for.body75
  %call82 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i64 noundef %i.1559), !dbg !986
  call void @exit(i32 noundef -1) #16, !dbg !988
  unreachable, !dbg !988

for.inc84:                                        ; preds = %for.body75
  %incdec.ptr76 = getelementptr inbounds i64, ptr %vindex.0543, i64 1, !dbg !989
  call void @llvm.dbg.value(metadata ptr %incdec.ptr76, metadata !868, metadata !DIExpression()), !dbg !885
  %inc85 = add nuw nsw i64 %j.0544, 1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %inc85, metadata !866, metadata !DIExpression()), !dbg !885
  %11 = load i64, ptr %pp.0562, align 8, !dbg !976
  %cmp73 = icmp slt i64 %inc85, %11, !dbg !979
  br i1 %cmp73, label %for.body75, label %for.end86, !dbg !980, !llvm.loop !991

for.end86:                                        ; preds = %for.inc84, %if.end64
  %.lcssa = phi i64 [ %10, %if.end64 ], [ %11, %for.inc84 ], !dbg !976
  call void @llvm.dbg.value(metadata ptr undef, metadata !868, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %call5, metadata !876, metadata !DIExpression()), !dbg !885
  br i1 %cmp14, label %for.end86.if.end334_crit_edge, label %if.then89, !dbg !993

for.end86.if.end334_crit_edge:                    ; preds = %for.end86
  %arrayidx347.phi.trans.insert = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, i64 2
  %.pre577 = load double, ptr %arrayidx347.phi.trans.insert, align 8, !dbg !994
  br label %if.end334, !dbg !993

if.then89:                                        ; preds = %for.end86
  %12 = load ptr, ptr %vindex69, align 8, !dbg !995
  call void @llvm.dbg.value(metadata ptr %12, metadata !868, metadata !DIExpression()), !dbg !885
  %13 = load i64, ptr %12, align 8, !dbg !996
  %add.ptr = getelementptr inbounds [3 x double], ptr %call5, i64 %13, !dbg !999
  call void @llvm.dbg.value(metadata ptr %vptmp2.0561, metadata !879, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !877, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()), !dbg !885
  %cmp95546 = icmp sgt i64 %.lcssa, 2, !dbg !1000
  br i1 %cmp95546, label %for.body97.preheader, label %if.then89.for.end164_crit_edge, !dbg !1003

if.then89.for.end164_crit_edge:                   ; preds = %if.then89
  %.pre575 = load double, ptr %vptmp2.0561, align 8, !dbg !1004
  %.pre576 = load double, ptr %add.ptr, align 8, !dbg !1004
  %.pre578 = fsub double %.pre575, %.pre576, !dbg !1004
  br label %for.end164, !dbg !1003

for.body97.preheader:                             ; preds = %if.then89
  %.pre574 = load double, ptr %add.ptr, align 8, !dbg !1006
  %14 = add i64 %.lcssa, -3
  br label %for.body97, !dbg !1003

for.body97:                                       ; preds = %for.body97.preheader, %for.body97
  %15 = phi double [ %18, %for.body97 ], [ %.pre574, %for.body97.preheader ], !dbg !1006
  %vp.0552 = phi ptr [ %add.ptr99, %for.body97 ], [ %add.ptr, %for.body97.preheader ]
  %pnorm.sroa.0.0551 = phi double [ %add151, %for.body97 ], [ 0.000000e+00, %for.body97.preheader ]
  %pnorm.sroa.16.0550 = phi double [ %add155, %for.body97 ], [ 0.000000e+00, %for.body97.preheader ]
  %pnorm.sroa.30.0549 = phi double [ %add159, %for.body97 ], [ 0.000000e+00, %for.body97.preheader ]
  %j.1548 = phi i64 [ %inc163, %for.body97 ], [ 0, %for.body97.preheader ]
  %vindex.1547 = phi ptr [ %add.ptr98, %for.body97 ], [ %12, %for.body97.preheader ]
  call void @llvm.dbg.value(metadata ptr %vp.0552, metadata !877, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata double %pnorm.sroa.0.0551, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %pnorm.sroa.16.0550, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %pnorm.sroa.30.0549, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 %j.1548, metadata !866, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %vindex.1547, metadata !868, metadata !DIExpression()), !dbg !885
  %add.ptr98 = getelementptr inbounds i64, ptr %vindex.1547, i64 1, !dbg !1009
  %16 = load i64, ptr %add.ptr98, align 8, !dbg !1010
  %add.ptr99 = getelementptr inbounds [3 x double], ptr %call5, i64 %16, !dbg !1011
  call void @llvm.dbg.value(metadata ptr %add.ptr99, metadata !878, metadata !DIExpression()), !dbg !885
  %add.ptr100 = getelementptr inbounds i64, ptr %vindex.1547, i64 2, !dbg !1012
  %17 = load i64, ptr %add.ptr100, align 8, !dbg !1013
  %add.ptr101 = getelementptr inbounds [3 x double], ptr %call5, i64 %17, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %add.ptr101, metadata !879, metadata !DIExpression()), !dbg !885
  %18 = load double, ptr %add.ptr99, align 8, !dbg !1006
  %sub104 = fsub double %18, %15, !dbg !1006
  call void @llvm.dbg.value(metadata double %sub104, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %arrayidx106 = getelementptr inbounds [3 x double], ptr %call5, i64 %16, i64 1, !dbg !1006
  %19 = load double, ptr %arrayidx106, align 8, !dbg !1006
  %arrayidx107 = getelementptr inbounds [3 x double], ptr %vp.0552, i64 0, i64 1, !dbg !1006
  %20 = load double, ptr %arrayidx107, align 8, !dbg !1006
  %sub108 = fsub double %19, %20, !dbg !1006
  call void @llvm.dbg.value(metadata double %sub108, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %arrayidx110 = getelementptr inbounds [3 x double], ptr %call5, i64 %16, i64 2, !dbg !1006
  %21 = load double, ptr %arrayidx110, align 8, !dbg !1006
  %arrayidx111 = getelementptr inbounds [3 x double], ptr %vp.0552, i64 0, i64 2, !dbg !1006
  %22 = load double, ptr %arrayidx111, align 8, !dbg !1006
  %sub112 = fsub double %21, %22, !dbg !1006
  call void @llvm.dbg.value(metadata double %sub112, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %23 = load double, ptr %add.ptr101, align 8, !dbg !1015
  %sub116 = fsub double %23, %18, !dbg !1015
  call void @llvm.dbg.value(metadata double %sub116, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %arrayidx118 = getelementptr inbounds [3 x double], ptr %call5, i64 %17, i64 1, !dbg !1015
  %24 = load double, ptr %arrayidx118, align 8, !dbg !1015
  %sub120 = fsub double %24, %19, !dbg !1015
  call void @llvm.dbg.value(metadata double %sub120, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %arrayidx122 = getelementptr inbounds [3 x double], ptr %call5, i64 %17, i64 2, !dbg !1015
  %25 = load double, ptr %arrayidx122, align 8, !dbg !1015
  %sub124 = fsub double %25, %21, !dbg !1015
  call void @llvm.dbg.value(metadata double %sub124, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %26 = fneg double %sub112, !dbg !1017
  %neg = fmul double %sub120, %26, !dbg !1017
  %27 = call double @llvm.fmuladd.f64(double %sub108, double %sub124, double %neg), !dbg !1017
  call void @llvm.dbg.value(metadata double %27, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %28 = fneg double %sub104, !dbg !1017
  %neg139 = fmul double %sub124, %28, !dbg !1017
  %29 = call double @llvm.fmuladd.f64(double %sub112, double %sub116, double %neg139), !dbg !1017
  call void @llvm.dbg.value(metadata double %29, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %30 = fneg double %sub108, !dbg !1017
  %neg147 = fmul double %sub116, %30, !dbg !1017
  %31 = call double @llvm.fmuladd.f64(double %sub104, double %sub120, double %neg147), !dbg !1017
  call void @llvm.dbg.value(metadata double %31, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %add151 = fadd double %pnorm.sroa.0.0551, %27, !dbg !1019
  call void @llvm.dbg.value(metadata double %add151, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %add155 = fadd double %pnorm.sroa.16.0550, %29, !dbg !1019
  call void @llvm.dbg.value(metadata double %add155, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %add159 = fadd double %pnorm.sroa.30.0549, %31, !dbg !1019
  call void @llvm.dbg.value(metadata double %add159, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata ptr %add.ptr99, metadata !877, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %add.ptr98, metadata !868, metadata !DIExpression()), !dbg !885
  %inc163 = add nuw nsw i64 %j.1548, 1, !dbg !1021
  call void @llvm.dbg.value(metadata double %add151, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %add155, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %add159, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata i64 %inc163, metadata !866, metadata !DIExpression()), !dbg !885
  %exitcond.not = icmp eq i64 %j.1548, %14, !dbg !1000
  br i1 %exitcond.not, label %for.end164, label %for.body97, !dbg !1003, !llvm.loop !1022

for.end164:                                       ; preds = %for.body97, %if.then89.for.end164_crit_edge
  %sub167.pre-phi = phi double [ %.pre578, %if.then89.for.end164_crit_edge ], [ %sub116, %for.body97 ], !dbg !1004
  %32 = phi double [ %.pre576, %if.then89.for.end164_crit_edge ], [ %.pre574, %for.body97 ], !dbg !1024
  %33 = phi double [ %.pre575, %if.then89.for.end164_crit_edge ], [ %23, %for.body97 ], !dbg !1004
  %pnorm.sroa.30.0.lcssa = phi double [ 0.000000e+00, %if.then89.for.end164_crit_edge ], [ %add159, %for.body97 ], !dbg !1026
  %pnorm.sroa.16.0.lcssa = phi double [ 0.000000e+00, %if.then89.for.end164_crit_edge ], [ %add155, %for.body97 ], !dbg !1026
  %pnorm.sroa.0.0.lcssa = phi double [ 0.000000e+00, %if.then89.for.end164_crit_edge ], [ %add151, %for.body97 ], !dbg !1026
  %vp.0.lcssa = phi ptr [ %add.ptr, %if.then89.for.end164_crit_edge ], [ %add.ptr99, %for.body97 ], !dbg !1026
  %vptmp2.1.lcssa = phi ptr [ %vptmp2.0561, %if.then89.for.end164_crit_edge ], [ %add.ptr101, %for.body97 ]
  call void @llvm.dbg.value(metadata double %sub167.pre-phi, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %arrayidx169 = getelementptr inbounds [3 x double], ptr %vptmp2.1.lcssa, i64 0, i64 1, !dbg !1004
  %34 = load double, ptr %arrayidx169, align 8, !dbg !1004
  %arrayidx170 = getelementptr inbounds [3 x double], ptr %vp.0.lcssa, i64 0, i64 1, !dbg !1004
  %35 = load double, ptr %arrayidx170, align 8, !dbg !1004
  %sub171 = fsub double %34, %35, !dbg !1004
  call void @llvm.dbg.value(metadata double %sub171, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %arrayidx173 = getelementptr inbounds [3 x double], ptr %vptmp2.1.lcssa, i64 0, i64 2, !dbg !1004
  %36 = load double, ptr %arrayidx173, align 8, !dbg !1004
  %arrayidx174 = getelementptr inbounds [3 x double], ptr %vp.0.lcssa, i64 0, i64 2, !dbg !1004
  %37 = load double, ptr %arrayidx174, align 8, !dbg !1004
  %sub175 = fsub double %36, %37, !dbg !1004
  call void @llvm.dbg.value(metadata double %sub175, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata ptr %12, metadata !868, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !877, metadata !DIExpression()), !dbg !885
  %sub181 = fsub double %32, %33, !dbg !1024
  call void @llvm.dbg.value(metadata double %sub181, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %arrayidx183 = getelementptr inbounds [3 x double], ptr %call5, i64 %13, i64 1, !dbg !1024
  %38 = load double, ptr %arrayidx183, align 8, !dbg !1024
  %sub185 = fsub double %38, %34, !dbg !1024
  call void @llvm.dbg.value(metadata double %sub185, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %arrayidx187 = getelementptr inbounds [3 x double], ptr %call5, i64 %13, i64 2, !dbg !1024
  %39 = load double, ptr %arrayidx187, align 8, !dbg !1024
  %sub189 = fsub double %39, %36, !dbg !1024
  call void @llvm.dbg.value(metadata double %sub189, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %40 = fneg double %sub175, !dbg !1027
  %neg197 = fmul double %sub185, %40, !dbg !1027
  %41 = call double @llvm.fmuladd.f64(double %sub171, double %sub189, double %neg197), !dbg !1027
  call void @llvm.dbg.value(metadata double %41, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %42 = fneg double %sub167.pre-phi, !dbg !1027
  %neg205 = fmul double %sub189, %42, !dbg !1027
  %43 = call double @llvm.fmuladd.f64(double %sub175, double %sub181, double %neg205), !dbg !1027
  call void @llvm.dbg.value(metadata double %43, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %44 = fneg double %sub171, !dbg !1027
  %neg213 = fmul double %sub181, %44, !dbg !1027
  %45 = call double @llvm.fmuladd.f64(double %sub167.pre-phi, double %sub185, double %neg213), !dbg !1027
  call void @llvm.dbg.value(metadata double %45, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %add217 = fadd double %pnorm.sroa.0.0.lcssa, %41, !dbg !1029
  call void @llvm.dbg.value(metadata double %add217, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %add221 = fadd double %pnorm.sroa.16.0.lcssa, %43, !dbg !1029
  call void @llvm.dbg.value(metadata double %add221, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %add225 = fadd double %pnorm.sroa.30.0.lcssa, %45, !dbg !1029
  call void @llvm.dbg.value(metadata double %add225, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %sub181, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %sub185, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  call void @llvm.dbg.value(metadata double %sub189, metadata !880, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %add.ptr240 = getelementptr inbounds i64, ptr %12, i64 1, !dbg !1031
  %46 = load i64, ptr %add.ptr240, align 8, !dbg !1032
  %add.ptr241 = getelementptr inbounds [3 x double], ptr %call5, i64 %46, !dbg !1033
  call void @llvm.dbg.value(metadata ptr %add.ptr241, metadata !878, metadata !DIExpression()), !dbg !885
  %47 = load double, ptr %add.ptr241, align 8, !dbg !1034
  %sub244 = fsub double %47, %32, !dbg !1034
  call void @llvm.dbg.value(metadata double %sub244, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %arrayidx246 = getelementptr inbounds [3 x double], ptr %call5, i64 %46, i64 1, !dbg !1034
  %48 = load double, ptr %arrayidx246, align 8, !dbg !1034
  %sub248 = fsub double %48, %38, !dbg !1034
  call void @llvm.dbg.value(metadata double %sub248, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %arrayidx250 = getelementptr inbounds [3 x double], ptr %call5, i64 %46, i64 2, !dbg !1034
  %49 = load double, ptr %arrayidx250, align 8, !dbg !1034
  %sub252 = fsub double %49, %39, !dbg !1034
  call void @llvm.dbg.value(metadata double %sub252, metadata !881, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %50 = fneg double %sub189, !dbg !1036
  %neg260 = fmul double %sub248, %50, !dbg !1036
  %51 = call double @llvm.fmuladd.f64(double %sub185, double %sub252, double %neg260), !dbg !1036
  call void @llvm.dbg.value(metadata double %51, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %52 = fneg double %sub181, !dbg !1036
  %neg268 = fmul double %sub252, %52, !dbg !1036
  %53 = call double @llvm.fmuladd.f64(double %sub189, double %sub244, double %neg268), !dbg !1036
  call void @llvm.dbg.value(metadata double %53, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %54 = fneg double %sub185, !dbg !1036
  %neg276 = fmul double %sub244, %54, !dbg !1036
  %55 = call double @llvm.fmuladd.f64(double %sub181, double %sub248, double %neg276), !dbg !1036
  call void @llvm.dbg.value(metadata double %55, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %add280 = fadd double %add217, %51, !dbg !1038
  call void @llvm.dbg.value(metadata double %add280, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !885
  %add284 = fadd double %add221, %53, !dbg !1038
  call void @llvm.dbg.value(metadata double %add284, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !885
  %add288 = fadd double %add225, %55, !dbg !1038
  call void @llvm.dbg.value(metadata double %add288, metadata !874, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !885
  %mul295 = fmul double %add284, %add284, !dbg !1040
  %56 = call double @llvm.fmuladd.f64(double %add280, double %add280, double %mul295), !dbg !1040
  %57 = call double @llvm.fmuladd.f64(double %add288, double %add288, double %56), !dbg !1040
  %call299 = call double @sqrt(double noundef %57) #15, !dbg !1040
  %div = fdiv double 1.000000e+00, %call299, !dbg !1040
  %mul301 = fmul double %div, %add280, !dbg !1040
  %norm302 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, !dbg !1040
  store double %mul301, ptr %norm302, align 8, !dbg !1040
  %call313 = call double @sqrt(double noundef %57) #15, !dbg !1040
  %div314 = fdiv double 1.000000e+00, %call313, !dbg !1040
  %mul316 = fmul double %div314, %add284, !dbg !1040
  %arrayidx318 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, i64 1, !dbg !1040
  store double %mul316, ptr %arrayidx318, align 8, !dbg !1040
  %call328 = call double @sqrt(double noundef %57) #15, !dbg !1040
  %div329 = fdiv double 1.000000e+00, %call328, !dbg !1040
  %mul331 = fmul double %add288, %div329, !dbg !1040
  %arrayidx333 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, i64 2, !dbg !1040
  store double %mul331, ptr %arrayidx333, align 8, !dbg !1040
  br label %if.end334, !dbg !1042

if.end334:                                        ; preds = %for.end86.if.end334_crit_edge, %for.end164
  %58 = phi double [ %.pre577, %for.end86.if.end334_crit_edge ], [ %mul331, %for.end164 ], !dbg !994
  %vptmp2.2 = phi ptr [ %vptmp2.0561, %for.end86.if.end334_crit_edge ], [ %vptmp2.1.lcssa, %for.end164 ]
  call void @llvm.dbg.value(metadata ptr %vptmp2.2, metadata !879, metadata !DIExpression()), !dbg !885
  %59 = load ptr, ptr %vptr65, align 8, !dbg !1043
  %60 = load ptr, ptr %vindex69, align 8, !dbg !1044
  %61 = load i64, ptr %60, align 8, !dbg !1045
  %add.ptr337 = getelementptr inbounds [3 x double], ptr %59, i64 %61, !dbg !1046
  call void @llvm.dbg.value(metadata ptr %add.ptr337, metadata !877, metadata !DIExpression()), !dbg !885
  %norm338 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, !dbg !1047
  %62 = load double, ptr %norm338, align 8, !dbg !1048
  %63 = load double, ptr %add.ptr337, align 8, !dbg !1049
  %arrayidx343 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 1, i64 1, !dbg !1050
  %64 = load double, ptr %arrayidx343, align 8, !dbg !1050
  %arrayidx344 = getelementptr inbounds [3 x double], ptr %59, i64 %61, i64 1, !dbg !1051
  %65 = load double, ptr %arrayidx344, align 8, !dbg !1051
  %mul345 = fmul double %64, %65, !dbg !1052
  %66 = call double @llvm.fmuladd.f64(double %62, double %63, double %mul345), !dbg !1053
  %arrayidx348 = getelementptr inbounds [3 x double], ptr %59, i64 %61, i64 2, !dbg !1054
  %67 = load double, ptr %arrayidx348, align 8, !dbg !1054
  %68 = call double @llvm.fmuladd.f64(double %58, double %67, double %66), !dbg !1055
  %fneg = fneg double %68, !dbg !1056
  %d = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 0, i32 2, !dbg !1057
  store double %fneg, ptr %d, align 8, !dbg !1058
  %data = getelementptr inbounds %struct.element, ptr %pe.0563, i64 0, i32 2, !dbg !1059
  store ptr %pp.0562, ptr %data, align 8, !dbg !1060
  %parent = getelementptr inbounds %struct.element, ptr %pe.0563, i64 0, i32 1, !dbg !1061
  store ptr %po, ptr %parent, align 8, !dbg !1062
  call void @PolyElementBoundBox(ptr noundef %pe.0563, ptr noundef nonnull %pp.0562), !dbg !1063
  %incdec.ptr350 = getelementptr inbounds %struct.poly, ptr %pp.0562, i64 1, !dbg !1064
  call void @llvm.dbg.value(metadata ptr %incdec.ptr350, metadata !883, metadata !DIExpression()), !dbg !885
  %incdec.ptr351 = getelementptr inbounds %struct.element, ptr %pe.0563, i64 1, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %incdec.ptr351, metadata !884, metadata !DIExpression()), !dbg !885
  %inc353 = add nuw nsw i64 %i.1559, 1, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %inc353, metadata !865, metadata !DIExpression()), !dbg !885
  %69 = load i64, ptr %numelements, align 8, !dbg !936
  %cmp34 = icmp slt i64 %inc353, %69, !dbg !939
  br i1 %cmp34, label %for.body36, label %for.end354, !dbg !940, !llvm.loop !1067

for.end354:                                       ; preds = %if.end334, %for.end
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %normstr) #15, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %totalverts) #15, !dbg !1069
  ret void, !dbg !1069
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare !dbg !1070 ptr @GlobalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #11

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
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "poly.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "43dbdcb5d63fe13aca6b58714a4c8df7")
!2 = !{!3, !24}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "POLY", file: !5, line: 713, baseType: !6)
!5 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poly", file: !5, line: 704, size: 512, elements: !7)
!7 = !{!8, !11, !18, !19, !21, !23}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nverts", scope: !6, file: !5, line: 706, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !5, line: 297, baseType: !10)
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "norm", scope: !6, file: !5, line: 707, baseType: !12, size: 192, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !5, line: 314, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !16)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !5, line: 310, baseType: !15)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !{!17}
!17 = !DISubrange(count: 3)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6, file: !5, line: 708, baseType: !14, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !6, file: !5, line: 709, baseType: !20, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !6, file: !5, line: 710, baseType: !22, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "axis_proj", scope: !6, file: !5, line: 711, baseType: !9, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !5, line: 287, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!34 = distinct !DISubprogram(name: "PolyName", scope: !1, file: !1, line: 47, type: !35, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!24}
!37 = !{}
!38 = !DILocation(line: 49, column: 2, scope: !34)
!39 = distinct !DISubprogram(name: "PolyPrint", scope: !1, file: !1, line: 66, type: !40, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !5, line: 499, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !5, line: 488, size: 1024, elements: !45)
!45 = !{!46, !47, !51, !57, !67, !68, !92, !105}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !44, file: !5, line: 490, baseType: !9, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !5, line: 491, baseType: !48, size: 256, offset: 64)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !44, file: !5, line: 492, baseType: !52, size: 384, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !5, line: 418, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !5, line: 413, size: 384, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !53, file: !5, line: 415, baseType: !13, size: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !53, file: !5, line: 416, baseType: !13, size: 192, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !44, file: !5, line: 493, baseType: !58, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !5, line: 481, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !5, line: 474, size: 576, elements: !61)
!61 = !{!62, !63, !65, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !60, file: !5, line: 476, baseType: !9, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !60, file: !5, line: 477, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !60, file: !5, line: 478, baseType: !24, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !60, file: !5, line: 479, baseType: !52, size: 384, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !44, file: !5, line: 494, baseType: !9, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !44, file: !5, line: 495, baseType: !69, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !5, line: 340, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !5, line: 327, size: 640, elements: !72)
!72 = !{!73, !77, !81, !82, !83, !84, !88, !89, !90, !91}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !5, line: 329, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!24, null}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !71, file: !5, line: 330, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, null}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !71, file: !5, line: 331, baseType: !78, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !71, file: !5, line: 332, baseType: !78, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !71, file: !5, line: 333, baseType: !78, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !71, file: !5, line: 334, baseType: !85, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!9, null}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !71, file: !5, line: 335, baseType: !85, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !71, file: !5, line: 336, baseType: !78, size: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !71, file: !5, line: 337, baseType: !78, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !71, file: !5, line: 338, baseType: !78, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !44, file: !5, line: 496, baseType: !93, size: 64, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !5, line: 357, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !5, line: 347, size: 704, elements: !96)
!96 = !{!97, !99, !100, !101, !102, !103, !104}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !95, file: !5, line: 349, baseType: !98, size: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !5, line: 319, baseType: !12)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !95, file: !5, line: 350, baseType: !98, size: 192, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !95, file: !5, line: 351, baseType: !14, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !95, file: !5, line: 352, baseType: !14, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !95, file: !5, line: 353, baseType: !14, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !95, file: !5, line: 354, baseType: !14, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !95, file: !5, line: 355, baseType: !14, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !5, line: 497, baseType: !64, size: 64, offset: 960)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114}
!107 = !DILocalVariable(name: "po", arg: 1, scope: !39, file: !1, line: 66, type: !42)
!108 = !DILocalVariable(name: "i", scope: !39, file: !1, line: 68, type: !9)
!109 = !DILocalVariable(name: "j", scope: !39, file: !1, line: 68, type: !9)
!110 = !DILocalVariable(name: "vindex", scope: !39, file: !1, line: 69, type: !22)
!111 = !DILocalVariable(name: "vlist", scope: !39, file: !1, line: 70, type: !20)
!112 = !DILocalVariable(name: "vptr", scope: !39, file: !1, line: 70, type: !20)
!113 = !DILocalVariable(name: "pp", scope: !39, file: !1, line: 71, type: !3)
!114 = !DILocalVariable(name: "pe", scope: !39, file: !1, line: 72, type: !58)
!115 = !DILocation(line: 0, scope: !39)
!116 = !DILocation(line: 74, column: 11, scope: !39)
!117 = !DILocation(line: 75, column: 10, scope: !39)
!118 = !DILocation(line: 75, column: 52, scope: !39)
!119 = !DILocation(line: 75, column: 2, scope: !39)
!120 = !DILocation(line: 77, column: 22, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 77, column: 2)
!122 = distinct !DILexicalBlock(scope: !39, file: !1, line: 77, column: 2)
!123 = !DILocation(line: 77, column: 16, scope: !121)
!124 = !DILocation(line: 77, column: 2, scope: !122)
!125 = !DILocation(line: 79, column: 20, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 78, column: 3)
!127 = !DILocation(line: 81, column: 11, scope: !126)
!128 = !DILocation(line: 81, column: 69, scope: !126)
!129 = !DILocation(line: 81, column: 81, scope: !126)
!130 = !DILocation(line: 81, column: 77, scope: !126)
!131 = !DILocation(line: 81, column: 90, scope: !126)
!132 = !DILocation(line: 81, column: 103, scope: !126)
!133 = !DILocation(line: 81, column: 120, scope: !126)
!134 = !DILocation(line: 81, column: 3, scope: !126)
!135 = !DILocation(line: 83, column: 16, scope: !126)
!136 = !DILocation(line: 86, column: 23, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 86, column: 3)
!138 = distinct !DILexicalBlock(scope: !126, file: !1, line: 86, column: 3)
!139 = !DILocation(line: 86, column: 17, scope: !137)
!140 = !DILocation(line: 86, column: 3, scope: !138)
!141 = !DILocation(line: 84, column: 16, scope: !126)
!142 = !DILocation(line: 88, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 87, column: 4)
!144 = !DILocation(line: 88, column: 17, scope: !143)
!145 = !DILocation(line: 89, column: 12, scope: !143)
!146 = !DILocation(line: 89, column: 39, scope: !143)
!147 = !DILocation(line: 89, column: 51, scope: !143)
!148 = !DILocation(line: 89, column: 63, scope: !143)
!149 = !DILocation(line: 89, column: 4, scope: !143)
!150 = !DILocation(line: 90, column: 10, scope: !143)
!151 = !DILocation(line: 86, column: 32, scope: !137)
!152 = distinct !{!152, !140, !153, !154, !155}
!153 = !DILocation(line: 91, column: 4, scope: !138)
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"llvm.loop.unroll.disable"}
!156 = !DILocation(line: 93, column: 5, scope: !126)
!157 = !DILocation(line: 77, column: 36, scope: !121)
!158 = distinct !{!158, !124, !159, !154, !155}
!159 = !DILocation(line: 94, column: 3, scope: !122)
!160 = !DILocation(line: 95, column: 2, scope: !39)
!161 = distinct !DISubprogram(name: "PolyElementBoundBox", scope: !1, file: !1, line: 112, type: !162, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !58, !3}
!164 = !{!165, !166, !167, !168, !169, !171, !172, !173, !174, !175, !176, !177, !178}
!165 = !DILocalVariable(name: "pe", arg: 1, scope: !161, file: !1, line: 112, type: !58)
!166 = !DILocalVariable(name: "pp", arg: 2, scope: !161, file: !1, line: 112, type: !3)
!167 = !DILocalVariable(name: "i", scope: !161, file: !1, line: 114, type: !9)
!168 = !DILocalVariable(name: "vindex", scope: !161, file: !1, line: 115, type: !22)
!169 = !DILocalVariable(name: "pbb", scope: !161, file: !1, line: 116, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!171 = !DILocalVariable(name: "vlist", scope: !161, file: !1, line: 117, type: !20)
!172 = !DILocalVariable(name: "vptr", scope: !161, file: !1, line: 117, type: !20)
!173 = !DILocalVariable(name: "minx", scope: !161, file: !1, line: 118, type: !14)
!174 = !DILocalVariable(name: "maxx", scope: !161, file: !1, line: 118, type: !14)
!175 = !DILocalVariable(name: "miny", scope: !161, file: !1, line: 119, type: !14)
!176 = !DILocalVariable(name: "maxy", scope: !161, file: !1, line: 119, type: !14)
!177 = !DILocalVariable(name: "minz", scope: !161, file: !1, line: 120, type: !14)
!178 = !DILocalVariable(name: "maxz", scope: !161, file: !1, line: 120, type: !14)
!179 = !DILocation(line: 0, scope: !161)
!180 = !DILocation(line: 127, column: 15, scope: !161)
!181 = !DILocation(line: 130, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 130, column: 2)
!183 = distinct !DILexicalBlock(scope: !161, file: !1, line: 130, column: 2)
!184 = !DILocation(line: 130, column: 2, scope: !183)
!185 = !DILocation(line: 128, column: 15, scope: !161)
!186 = !DILocation(line: 132, column: 19, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !1, line: 131, column: 3)
!188 = !DILocation(line: 132, column: 16, scope: !187)
!189 = !DILocation(line: 134, column: 10, scope: !187)
!190 = !DILocation(line: 135, column: 10, scope: !187)
!191 = !DILocation(line: 136, column: 10, scope: !187)
!192 = !DILocation(line: 138, column: 10, scope: !187)
!193 = !DILocation(line: 139, column: 10, scope: !187)
!194 = !DILocation(line: 140, column: 10, scope: !187)
!195 = !DILocation(line: 142, column: 9, scope: !187)
!196 = !DILocation(line: 130, column: 31, scope: !182)
!197 = distinct !{!197, !184, !198, !154, !155}
!198 = !DILocation(line: 143, column: 3, scope: !183)
!199 = !DILocation(line: 122, column: 14, scope: !161)
!200 = !DILocation(line: 145, column: 16, scope: !161)
!201 = !DILocation(line: 146, column: 2, scope: !161)
!202 = !DILocation(line: 146, column: 16, scope: !161)
!203 = !DILocation(line: 147, column: 2, scope: !161)
!204 = !DILocation(line: 147, column: 16, scope: !161)
!205 = !DILocation(line: 149, column: 7, scope: !161)
!206 = !DILocation(line: 149, column: 16, scope: !161)
!207 = !DILocation(line: 150, column: 2, scope: !161)
!208 = !DILocation(line: 150, column: 16, scope: !161)
!209 = !DILocation(line: 151, column: 2, scope: !161)
!210 = !DILocation(line: 151, column: 16, scope: !161)
!211 = !DILocation(line: 152, column: 2, scope: !161)
!212 = distinct !DISubprogram(name: "PolyBoundBox", scope: !1, file: !1, line: 168, type: !40, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!214 = !DILocalVariable(name: "po", arg: 1, scope: !212, file: !1, line: 168, type: !42)
!215 = !DILocalVariable(name: "i", scope: !212, file: !1, line: 170, type: !9)
!216 = !DILocalVariable(name: "pp", scope: !212, file: !1, line: 171, type: !3)
!217 = !DILocalVariable(name: "pe", scope: !212, file: !1, line: 172, type: !58)
!218 = !DILocalVariable(name: "pbb", scope: !212, file: !1, line: 173, type: !170)
!219 = !DILocalVariable(name: "minx", scope: !212, file: !1, line: 174, type: !14)
!220 = !DILocalVariable(name: "maxx", scope: !212, file: !1, line: 174, type: !14)
!221 = !DILocalVariable(name: "miny", scope: !212, file: !1, line: 175, type: !14)
!222 = !DILocalVariable(name: "maxy", scope: !212, file: !1, line: 175, type: !14)
!223 = !DILocalVariable(name: "minz", scope: !212, file: !1, line: 176, type: !14)
!224 = !DILocalVariable(name: "maxz", scope: !212, file: !1, line: 176, type: !14)
!225 = !DILocation(line: 0, scope: !212)
!226 = !DILocation(line: 184, column: 22, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 184, column: 2)
!228 = distinct !DILexicalBlock(scope: !212, file: !1, line: 184, column: 2)
!229 = !DILocation(line: 184, column: 16, scope: !227)
!230 = !DILocation(line: 184, column: 2, scope: !228)
!231 = !DILocation(line: 178, column: 13, scope: !212)
!232 = !DILocation(line: 186, column: 20, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 185, column: 3)
!234 = !DILocation(line: 187, column: 3, scope: !233)
!235 = !DILocation(line: 189, column: 10, scope: !233)
!236 = !DILocation(line: 190, column: 10, scope: !233)
!237 = !DILocation(line: 191, column: 10, scope: !233)
!238 = !DILocation(line: 193, column: 10, scope: !233)
!239 = !DILocation(line: 194, column: 10, scope: !233)
!240 = !DILocation(line: 195, column: 10, scope: !233)
!241 = !DILocation(line: 197, column: 5, scope: !233)
!242 = !DILocation(line: 184, column: 36, scope: !227)
!243 = distinct !{!243, !230, !244, !154, !155}
!244 = !DILocation(line: 198, column: 3, scope: !228)
!245 = !DILocation(line: 179, column: 15, scope: !212)
!246 = !DILocation(line: 200, column: 16, scope: !212)
!247 = !DILocation(line: 201, column: 2, scope: !212)
!248 = !DILocation(line: 201, column: 16, scope: !212)
!249 = !DILocation(line: 202, column: 2, scope: !212)
!250 = !DILocation(line: 202, column: 16, scope: !212)
!251 = !DILocation(line: 204, column: 7, scope: !212)
!252 = !DILocation(line: 204, column: 16, scope: !212)
!253 = !DILocation(line: 205, column: 2, scope: !212)
!254 = !DILocation(line: 205, column: 16, scope: !212)
!255 = !DILocation(line: 206, column: 2, scope: !212)
!256 = !DILocation(line: 206, column: 16, scope: !212)
!257 = !DILocation(line: 207, column: 2, scope: !212)
!258 = distinct !DISubprogram(name: "PolyNormal", scope: !1, file: !1, line: 229, type: !259, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261, !270, !270}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !5, line: 514, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !5, line: 506, size: 320, elements: !264)
!264 = !{!265, !266, !267, !268, !269}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !263, file: !5, line: 508, baseType: !14, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !263, file: !5, line: 509, baseType: !58, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !263, file: !5, line: 510, baseType: !14, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !263, file: !5, line: 511, baseType: !14, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !263, file: !5, line: 512, baseType: !14, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DILocalVariable(name: "hit", arg: 1, scope: !258, file: !1, line: 229, type: !261)
!273 = !DILocalVariable(name: "Pi", arg: 2, scope: !258, file: !1, line: 229, type: !270)
!274 = !DILocalVariable(name: "Ni", arg: 3, scope: !258, file: !1, line: 229, type: !270)
!275 = !DILocalVariable(name: "pe", scope: !258, file: !1, line: 231, type: !58)
!276 = !DILocalVariable(name: "pp", scope: !258, file: !1, line: 232, type: !3)
!277 = !DILocation(line: 0, scope: !258)
!278 = !DILocation(line: 236, column: 12, scope: !258)
!279 = !DILocation(line: 237, column: 19, scope: !258)
!280 = !DILocation(line: 238, column: 2, scope: !281)
!281 = distinct !DILexicalBlock(scope: !258, file: !1, line: 238, column: 2)
!282 = !DILocation(line: 239, column: 2, scope: !258)
!283 = distinct !DISubprogram(name: "PolyDataNormalize", scope: !1, file: !1, line: 256, type: !284, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !290)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !42, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 4)
!290 = !{!291, !292, !293, !294, !297, !298, !299}
!291 = !DILocalVariable(name: "po", arg: 1, scope: !283, file: !1, line: 256, type: !42)
!292 = !DILocalVariable(name: "normMat", arg: 2, scope: !283, file: !1, line: 256, type: !286)
!293 = !DILocalVariable(name: "i", scope: !283, file: !1, line: 258, type: !9)
!294 = !DILocalVariable(name: "coord", scope: !283, file: !1, line: 259, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !5, line: 318, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !5, line: 315, baseType: !287)
!297 = !DILocalVariable(name: "pv", scope: !283, file: !1, line: 260, type: !20)
!298 = !DILocalVariable(name: "pp", scope: !283, file: !1, line: 261, type: !3)
!299 = !DILocalVariable(name: "pe", scope: !283, file: !1, line: 262, type: !58)
!300 = !DILocation(line: 0, scope: !283)
!301 = !DILocation(line: 259, column: 2, scope: !283)
!302 = !DILocation(line: 259, column: 8, scope: !283)
!303 = !DILocation(line: 267, column: 11, scope: !283)
!304 = !DILocation(line: 268, column: 25, scope: !283)
!305 = !DILocation(line: 268, column: 2, scope: !283)
!306 = !DILocation(line: 273, column: 19, scope: !283)
!307 = !DILocation(line: 274, column: 11, scope: !283)
!308 = !DILocation(line: 276, column: 13, scope: !283)
!309 = !DILocation(line: 276, column: 11, scope: !283)
!310 = !DILocation(line: 277, column: 13, scope: !283)
!311 = !DILocation(line: 277, column: 2, scope: !283)
!312 = !DILocation(line: 277, column: 11, scope: !283)
!313 = !DILocation(line: 278, column: 13, scope: !283)
!314 = !DILocation(line: 278, column: 2, scope: !283)
!315 = !DILocation(line: 278, column: 11, scope: !283)
!316 = !DILocation(line: 279, column: 2, scope: !283)
!317 = !DILocation(line: 284, column: 18, scope: !283)
!318 = !DILocation(line: 284, column: 31, scope: !283)
!319 = !DILocation(line: 303, column: 22, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 303, column: 2)
!321 = distinct !DILexicalBlock(scope: !283, file: !1, line: 303, column: 2)
!322 = !DILocation(line: 303, column: 16, scope: !320)
!323 = !DILocation(line: 303, column: 2, scope: !321)
!324 = !DILocation(line: 286, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !283, file: !1, line: 285, column: 3)
!326 = !DILocation(line: 288, column: 14, scope: !325)
!327 = !DILocation(line: 288, column: 12, scope: !325)
!328 = !DILocation(line: 289, column: 14, scope: !325)
!329 = !DILocation(line: 289, column: 3, scope: !325)
!330 = !DILocation(line: 289, column: 12, scope: !325)
!331 = !DILocation(line: 290, column: 14, scope: !325)
!332 = !DILocation(line: 290, column: 3, scope: !325)
!333 = !DILocation(line: 290, column: 12, scope: !325)
!334 = !DILocation(line: 292, column: 5, scope: !325)
!335 = !DILocation(line: 294, column: 14, scope: !325)
!336 = !DILocation(line: 294, column: 12, scope: !325)
!337 = !DILocation(line: 295, column: 14, scope: !325)
!338 = !DILocation(line: 295, column: 12, scope: !325)
!339 = !DILocation(line: 296, column: 14, scope: !325)
!340 = !DILocation(line: 296, column: 12, scope: !325)
!341 = distinct !{!341, !342, !343, !154, !155}
!342 = !DILocation(line: 284, column: 2, scope: !283)
!343 = !DILocation(line: 298, column: 3, scope: !283)
!344 = !DILocation(line: 305, column: 20, scope: !345)
!345 = distinct !DILexicalBlock(scope: !320, file: !1, line: 304, column: 3)
!346 = !DILocation(line: 306, column: 26, scope: !345)
!347 = !DILocation(line: 306, column: 3, scope: !345)
!348 = !DILocation(line: 310, column: 17, scope: !345)
!349 = !DILocation(line: 310, column: 31, scope: !345)
!350 = !DILocation(line: 310, column: 25, scope: !345)
!351 = !DILocation(line: 310, column: 22, scope: !345)
!352 = !DILocation(line: 311, column: 17, scope: !345)
!353 = !DILocation(line: 311, column: 13, scope: !345)
!354 = !DILocation(line: 311, column: 25, scope: !345)
!355 = !DILocation(line: 311, column: 36, scope: !345)
!356 = !DILocation(line: 311, column: 48, scope: !345)
!357 = !DILocation(line: 311, column: 47, scope: !345)
!358 = !DILocation(line: 311, column: 34, scope: !345)
!359 = !DILocation(line: 311, column: 59, scope: !345)
!360 = !DILocation(line: 311, column: 71, scope: !345)
!361 = !DILocation(line: 311, column: 57, scope: !345)
!362 = !DILocation(line: 311, column: 11, scope: !345)
!363 = !DILocation(line: 311, column: 7, scope: !345)
!364 = !DILocation(line: 311, column: 9, scope: !345)
!365 = !DILocation(line: 313, column: 5, scope: !345)
!366 = !DILocation(line: 303, column: 36, scope: !320)
!367 = distinct !{!367, !323, !368, !154, !155}
!368 = !DILocation(line: 314, column: 3, scope: !321)
!369 = !DILocation(line: 315, column: 2, scope: !283)
!370 = !DISubprogram(name: "NormalizeBoundBox", scope: !5, file: !5, line: 808, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !170, !286}
!373 = !DISubprogram(name: "VecMatMult", scope: !5, file: !5, line: 893, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !270, !286, !270}
!376 = distinct !DISubprogram(name: "PolyPeIntersect", scope: !1, file: !1, line: 343, type: !377, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !470)
!377 = !DISubroutineType(types: !378)
!378 = !{!9, !379, !58, !261}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !5, line: 625, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !5, line: 611, size: 7104, elements: !382)
!382 = !{!383, !385, !386, !387, !388, !389, !390, !460, !461, !462, !466, !469}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !381, file: !5, line: 613, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !5, line: 301, baseType: !10)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !381, file: !5, line: 614, baseType: !9, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !381, file: !5, line: 614, baseType: !9, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !381, file: !5, line: 615, baseType: !12, size: 192, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !381, file: !5, line: 616, baseType: !12, size: 192, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !381, file: !5, line: 617, baseType: !9, size: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !381, file: !5, line: 618, baseType: !391, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !5, line: 603, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !5, line: 582, size: 1216, elements: !394)
!394 = !{!395, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !393, file: !5, line: 584, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !5, line: 572, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !5, line: 539, size: 1152, elements: !399)
!399 = !{!400, !401, !417, !421, !423, !424, !426, !427, !428, !429, !430, !447}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !398, file: !5, line: 541, baseType: !9, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !398, file: !5, line: 542, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !5, line: 405, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !5, line: 394, size: 320, elements: !406)
!406 = !{!407, !408, !409, !411, !412, !413}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !405, file: !5, line: 396, baseType: !9, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !405, file: !5, line: 397, baseType: !9, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !5, line: 398, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !405, file: !5, line: 399, baseType: !24, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !405, file: !5, line: 400, baseType: !25, size: 8, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !405, file: !5, line: 403, baseType: !414, size: 56, offset: 264)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 56, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !398, file: !5, line: 548, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !5, line: 298, baseType: !420)
!420 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !398, file: !5, line: 555, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !398, file: !5, line: 556, baseType: !9, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !398, file: !5, line: 558, baseType: !425, size: 192, offset: 320)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !398, file: !5, line: 562, baseType: !9, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !398, file: !5, line: 563, baseType: !13, size: 192, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !398, file: !5, line: 564, baseType: !13, size: 192, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !398, file: !5, line: 566, baseType: !9, size: 64, offset: 960)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !398, file: !5, line: 569, baseType: !431, size: 64, offset: 1024)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !5, line: 535, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !5, line: 522, size: 960, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !433, file: !5, line: 524, baseType: !422, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !433, file: !5, line: 525, baseType: !13, size: 192, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !433, file: !5, line: 527, baseType: !9, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !433, file: !5, line: 528, baseType: !425, size: 192, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !433, file: !5, line: 529, baseType: !425, size: 192, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !433, file: !5, line: 531, baseType: !9, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !433, file: !5, line: 532, baseType: !9, size: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !433, file: !5, line: 533, baseType: !443, size: 128, offset: 832)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !445)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!445 = !{!446}
!446 = !DISubrange(count: 2)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !5, line: 570, baseType: !448, size: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !393, file: !5, line: 585, baseType: !13, size: 192, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !393, file: !5, line: 587, baseType: !9, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !393, file: !5, line: 589, baseType: !14, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !393, file: !5, line: 591, baseType: !9, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !393, file: !5, line: 593, baseType: !14, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !393, file: !5, line: 595, baseType: !13, size: 192, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !393, file: !5, line: 596, baseType: !425, size: 192, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !393, file: !5, line: 597, baseType: !9, size: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !393, file: !5, line: 600, baseType: !425, size: 192, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !5, line: 601, baseType: !459, size: 64, offset: 1152)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !381, file: !5, line: 619, baseType: !9, size: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !381, file: !5, line: 620, baseType: !425, size: 192, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !381, file: !5, line: 621, baseType: !463, size: 6080, offset: 960)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 6080, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 5)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !381, file: !5, line: 622, baseType: !467, size: 32, offset: 7040)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !5, line: 307, baseType: !468)
!468 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !381, file: !5, line: 623, baseType: !467, size: 32, offset: 7072)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!471 = !DILocalVariable(name: "pr", arg: 1, scope: !376, file: !1, line: 343, type: !379)
!472 = !DILocalVariable(name: "pe", arg: 2, scope: !376, file: !1, line: 343, type: !58)
!473 = !DILocalVariable(name: "hit", arg: 3, scope: !376, file: !1, line: 343, type: !261)
!474 = !DILocalVariable(name: "i", scope: !376, file: !1, line: 345, type: !9)
!475 = !DILocalVariable(name: "vindex", scope: !376, file: !1, line: 346, type: !22)
!476 = !DILocalVariable(name: "toright", scope: !376, file: !1, line: 347, type: !9)
!477 = !DILocalVariable(name: "sh", scope: !376, file: !1, line: 348, type: !9)
!478 = !DILocalVariable(name: "nsh", scope: !376, file: !1, line: 348, type: !9)
!479 = !DILocalVariable(name: "Rd_dot_Pn", scope: !376, file: !1, line: 349, type: !14)
!480 = !DILocalVariable(name: "Ro_dot_Pn", scope: !376, file: !1, line: 350, type: !14)
!481 = !DILocalVariable(name: "tval", scope: !376, file: !1, line: 351, type: !14)
!482 = !DILocalVariable(name: "x", scope: !376, file: !1, line: 352, type: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6464, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 101)
!486 = !DILocalVariable(name: "y", scope: !376, file: !1, line: 353, type: !483)
!487 = !DILocalVariable(name: "ix", scope: !376, file: !1, line: 354, type: !14)
!488 = !DILocalVariable(name: "iy", scope: !376, file: !1, line: 354, type: !14)
!489 = !DILocalVariable(name: "dx", scope: !376, file: !1, line: 355, type: !14)
!490 = !DILocalVariable(name: "dy", scope: !376, file: !1, line: 355, type: !14)
!491 = !DILocalVariable(name: "xint", scope: !376, file: !1, line: 356, type: !14)
!492 = !DILocalVariable(name: "I", scope: !376, file: !1, line: 357, type: !12)
!493 = !DILocalVariable(name: "vlist", scope: !376, file: !1, line: 358, type: !20)
!494 = !DILocalVariable(name: "vpos", scope: !376, file: !1, line: 358, type: !20)
!495 = !DILocalVariable(name: "pp", scope: !376, file: !1, line: 359, type: !3)
!496 = !DILocation(line: 0, scope: !376)
!497 = !DILocation(line: 352, column: 2, scope: !376)
!498 = !DILocation(line: 352, column: 7, scope: !376)
!499 = !DILocation(line: 353, column: 2, scope: !376)
!500 = !DILocation(line: 353, column: 7, scope: !376)
!501 = !DILocation(line: 361, column: 19, scope: !376)
!502 = !DILocation(line: 363, column: 14, scope: !376)
!503 = !DILocation(line: 365, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !376, file: !1, line: 365, column: 6)
!505 = !DILocation(line: 365, column: 21, scope: !504)
!506 = !DILocation(line: 365, column: 6, scope: !376)
!507 = !DILocation(line: 368, column: 14, scope: !376)
!508 = !DILocation(line: 370, column: 15, scope: !376)
!509 = !DILocation(line: 370, column: 17, scope: !376)
!510 = !DILocation(line: 370, column: 9, scope: !376)
!511 = !DILocation(line: 370, column: 29, scope: !376)
!512 = !DILocation(line: 371, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !376, file: !1, line: 371, column: 6)
!514 = !DILocation(line: 371, column: 6, scope: !376)
!515 = !DILocation(line: 374, column: 2, scope: !516)
!516 = distinct !DILexicalBlock(scope: !376, file: !1, line: 374, column: 2)
!517 = !DILocation(line: 381, column: 15, scope: !376)
!518 = !DILocation(line: 382, column: 15, scope: !376)
!519 = !DILocation(line: 384, column: 14, scope: !376)
!520 = !DILocation(line: 384, column: 2, scope: !376)
!521 = !DILocation(line: 413, column: 18, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 413, column: 4)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 413, column: 4)
!524 = distinct !DILexicalBlock(scope: !376, file: !1, line: 385, column: 3)
!525 = !DILocation(line: 413, column: 4, scope: !523)
!526 = !DILocation(line: 400, column: 18, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 400, column: 4)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 400, column: 4)
!529 = !DILocation(line: 400, column: 4, scope: !528)
!530 = !DILocation(line: 387, column: 18, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 387, column: 4)
!532 = distinct !DILexicalBlock(scope: !524, file: !1, line: 387, column: 4)
!533 = !DILocation(line: 387, column: 4, scope: !532)
!534 = !DILocation(line: 389, column: 21, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 388, column: 5)
!536 = !DILocation(line: 390, column: 12, scope: !535)
!537 = !DILocation(line: 390, column: 5, scope: !535)
!538 = !DILocation(line: 390, column: 10, scope: !535)
!539 = !DILocation(line: 391, column: 12, scope: !535)
!540 = !DILocation(line: 391, column: 5, scope: !535)
!541 = !DILocation(line: 391, column: 10, scope: !535)
!542 = !DILocation(line: 392, column: 11, scope: !535)
!543 = !DILocation(line: 387, column: 33, scope: !531)
!544 = distinct !{!544, !533, !545, !154, !155}
!545 = !DILocation(line: 393, column: 5, scope: !532)
!546 = !DILocation(line: 402, column: 21, scope: !547)
!547 = distinct !DILexicalBlock(scope: !527, file: !1, line: 401, column: 5)
!548 = !DILocation(line: 402, column: 18, scope: !547)
!549 = !DILocation(line: 403, column: 12, scope: !547)
!550 = !DILocation(line: 403, column: 5, scope: !547)
!551 = !DILocation(line: 403, column: 10, scope: !547)
!552 = !DILocation(line: 404, column: 12, scope: !547)
!553 = !DILocation(line: 404, column: 5, scope: !547)
!554 = !DILocation(line: 404, column: 10, scope: !547)
!555 = !DILocation(line: 405, column: 11, scope: !547)
!556 = !DILocation(line: 400, column: 33, scope: !527)
!557 = distinct !{!557, !529, !558, !154, !155}
!558 = !DILocation(line: 406, column: 5, scope: !528)
!559 = !DILocation(line: 415, column: 21, scope: !560)
!560 = distinct !DILexicalBlock(scope: !522, file: !1, line: 414, column: 5)
!561 = !DILocation(line: 415, column: 18, scope: !560)
!562 = !DILocation(line: 416, column: 12, scope: !560)
!563 = !DILocation(line: 416, column: 5, scope: !560)
!564 = !DILocation(line: 416, column: 10, scope: !560)
!565 = !DILocation(line: 417, column: 12, scope: !560)
!566 = !DILocation(line: 417, column: 5, scope: !560)
!567 = !DILocation(line: 417, column: 10, scope: !560)
!568 = !DILocation(line: 418, column: 11, scope: !560)
!569 = !DILocation(line: 413, column: 33, scope: !522)
!570 = distinct !{!570, !525, !571, !154, !155}
!571 = !DILocation(line: 419, column: 5, scope: !523)
!572 = !DILocation(line: 438, column: 18, scope: !376)
!573 = !DILocation(line: 438, column: 2, scope: !376)
!574 = !DILocation(line: 438, column: 16, scope: !376)
!575 = !DILocation(line: 439, column: 18, scope: !376)
!576 = !DILocation(line: 439, column: 2, scope: !376)
!577 = !DILocation(line: 439, column: 16, scope: !376)
!578 = !DILocation(line: 455, column: 2, scope: !579)
!579 = distinct !DILexicalBlock(scope: !376, file: !1, line: 455, column: 2)
!580 = !DILocation(line: 429, column: 16, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 429, column: 2)
!582 = distinct !DILexicalBlock(scope: !376, file: !1, line: 429, column: 2)
!583 = !DILocation(line: 429, column: 2, scope: !582)
!584 = !DILocation(line: 431, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !1, line: 430, column: 3)
!586 = !DILocation(line: 431, column: 8, scope: !585)
!587 = !DILocation(line: 432, column: 3, scope: !585)
!588 = !DILocation(line: 432, column: 8, scope: !585)
!589 = !DILocation(line: 434, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !1, line: 434, column: 7)
!591 = !DILocation(line: 434, column: 17, scope: !590)
!592 = !DILocation(line: 434, column: 7, scope: !585)
!593 = !DILocation(line: 435, column: 9, scope: !590)
!594 = !DILocation(line: 435, column: 4, scope: !590)
!595 = !DILocation(line: 429, column: 31, scope: !581)
!596 = distinct !{!596, !583, !597, !154, !155}
!597 = !DILocation(line: 436, column: 3, scope: !582)
!598 = !DILocation(line: 448, column: 6, scope: !599)
!599 = distinct !DILexicalBlock(scope: !376, file: !1, line: 448, column: 6)
!600 = !DILocation(line: 448, column: 11, scope: !599)
!601 = !DILocation(line: 459, column: 11, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 459, column: 7)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 456, column: 3)
!604 = distinct !DILexicalBlock(scope: !579, file: !1, line: 455, column: 2)
!605 = !DILocation(line: 459, column: 7, scope: !602)
!606 = !DILocation(line: 459, column: 16, scope: !602)
!607 = !DILocation(line: 464, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !1, line: 464, column: 7)
!609 = !DILocation(line: 464, column: 7, scope: !603)
!610 = !DILocation(line: 466, column: 20, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 465, column: 4)
!612 = !DILocation(line: 466, column: 18, scope: !611)
!613 = !DILocation(line: 468, column: 8, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !1, line: 468, column: 8)
!615 = !DILocation(line: 468, column: 16, scope: !614)
!616 = !DILocation(line: 468, column: 8, scope: !611)
!617 = !DILocation(line: 470, column: 12, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 469, column: 5)
!619 = !DILocation(line: 470, column: 23, scope: !618)
!620 = !DILocation(line: 470, column: 21, scope: !618)
!621 = !DILocation(line: 471, column: 23, scope: !618)
!622 = !DILocation(line: 471, column: 27, scope: !618)
!623 = !DILocation(line: 471, column: 17, scope: !618)
!624 = !DILocation(line: 473, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !1, line: 473, column: 9)
!626 = !DILocation(line: 473, column: 9, scope: !618)
!627 = !DILocation(line: 474, column: 13, scope: !625)
!628 = !DILocation(line: 474, column: 6, scope: !625)
!629 = !DILocation(line: 455, column: 16, scope: !604)
!630 = distinct !{!630, !578, !631, !154, !155}
!631 = !DILocation(line: 479, column: 3, scope: !579)
!632 = !DILocation(line: 481, column: 16, scope: !633)
!633 = distinct !DILexicalBlock(scope: !376, file: !1, line: 481, column: 6)
!634 = !DILocation(line: 481, column: 6, scope: !376)
!635 = !DILocation(line: 483, column: 3, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 483, column: 3)
!637 = distinct !DILexicalBlock(scope: !633, file: !1, line: 482, column: 3)
!638 = !DILocation(line: 484, column: 3, scope: !637)
!639 = !DILocation(line: 488, column: 2, scope: !376)
!640 = distinct !DISubprogram(name: "PolyIntersect", scope: !1, file: !1, line: 506, type: !641, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!9, !379, !42, !261}
!643 = !{!644, !645, !646, !647, !648, !649, !650}
!644 = !DILocalVariable(name: "pr", arg: 1, scope: !640, file: !1, line: 506, type: !379)
!645 = !DILocalVariable(name: "po", arg: 2, scope: !640, file: !1, line: 506, type: !42)
!646 = !DILocalVariable(name: "hit", arg: 3, scope: !640, file: !1, line: 506, type: !261)
!647 = !DILocalVariable(name: "i", scope: !640, file: !1, line: 508, type: !9)
!648 = !DILocalVariable(name: "nhits", scope: !640, file: !1, line: 509, type: !9)
!649 = !DILocalVariable(name: "pe", scope: !640, file: !1, line: 510, type: !58)
!650 = !DILocalVariable(name: "newhit", scope: !640, file: !1, line: 511, type: !262)
!651 = !DILocation(line: 0, scope: !640)
!652 = !DILocation(line: 511, column: 2, scope: !640)
!653 = !DILocation(line: 511, column: 10, scope: !640)
!654 = !DILocation(line: 516, column: 12, scope: !640)
!655 = !DILocation(line: 517, column: 11, scope: !640)
!656 = !DILocation(line: 519, column: 22, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 519, column: 2)
!658 = distinct !DILexicalBlock(scope: !640, file: !1, line: 519, column: 2)
!659 = !DILocation(line: 519, column: 16, scope: !657)
!660 = !DILocation(line: 519, column: 2, scope: !658)
!661 = !DILocation(line: 521, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 521, column: 7)
!663 = distinct !DILexicalBlock(scope: !657, file: !1, line: 520, column: 3)
!664 = !DILocation(line: 521, column: 7, scope: !663)
!665 = !DILocation(line: 523, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !1, line: 522, column: 4)
!667 = !DILocation(line: 524, column: 15, scope: !668)
!668 = distinct !DILexicalBlock(scope: !666, file: !1, line: 524, column: 8)
!669 = !DILocation(line: 524, column: 26, scope: !668)
!670 = !DILocation(line: 524, column: 17, scope: !668)
!671 = !DILocation(line: 524, column: 8, scope: !666)
!672 = !DILocation(line: 526, column: 18, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !1, line: 525, column: 5)
!674 = !DILocation(line: 527, column: 27, scope: !673)
!675 = !DILocation(line: 527, column: 18, scope: !673)
!676 = !DILocation(line: 528, column: 5, scope: !673)
!677 = !DILocation(line: 531, column: 5, scope: !663)
!678 = !DILocation(line: 519, column: 36, scope: !657)
!679 = distinct !{!679, !660, !680, !154, !155}
!680 = !DILocation(line: 532, column: 3, scope: !658)
!681 = !DILocation(line: 535, column: 2, scope: !640)
!682 = !DILocation(line: 534, column: 2, scope: !640)
!683 = distinct !DISubprogram(name: "PolyTransform", scope: !1, file: !1, line: 559, type: !684, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !42, !286, !286}
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!687 = !DILocalVariable(name: "po", arg: 1, scope: !683, file: !1, line: 559, type: !42)
!688 = !DILocalVariable(name: "xtrans", arg: 2, scope: !683, file: !1, line: 559, type: !286)
!689 = !DILocalVariable(name: "xinvT", arg: 3, scope: !683, file: !1, line: 559, type: !286)
!690 = !DILocalVariable(name: "i", scope: !683, file: !1, line: 561, type: !9)
!691 = !DILocalVariable(name: "numelems", scope: !683, file: !1, line: 562, type: !9)
!692 = !DILocalVariable(name: "vptr", scope: !683, file: !1, line: 563, type: !20)
!693 = !DILocalVariable(name: "vp", scope: !683, file: !1, line: 563, type: !20)
!694 = !DILocalVariable(name: "norm", scope: !683, file: !1, line: 564, type: !296)
!695 = !DILocalVariable(name: "coord", scope: !683, file: !1, line: 564, type: !296)
!696 = !DILocalVariable(name: "pp", scope: !683, file: !1, line: 565, type: !3)
!697 = !DILocalVariable(name: "pe", scope: !683, file: !1, line: 566, type: !58)
!698 = !DILocation(line: 0, scope: !683)
!699 = !DILocation(line: 564, column: 2, scope: !683)
!700 = !DILocation(line: 564, column: 7, scope: !683)
!701 = !DILocation(line: 564, column: 13, scope: !683)
!702 = !DILocation(line: 569, column: 11, scope: !683)
!703 = !DILocation(line: 570, column: 17, scope: !683)
!704 = !DILocation(line: 574, column: 21, scope: !683)
!705 = !DILocation(line: 575, column: 13, scope: !683)
!706 = !DILocation(line: 577, column: 13, scope: !683)
!707 = !DILocation(line: 577, column: 11, scope: !683)
!708 = !DILocation(line: 578, column: 13, scope: !683)
!709 = !DILocation(line: 578, column: 2, scope: !683)
!710 = !DILocation(line: 578, column: 11, scope: !683)
!711 = !DILocation(line: 579, column: 13, scope: !683)
!712 = !DILocation(line: 579, column: 2, scope: !683)
!713 = !DILocation(line: 579, column: 11, scope: !683)
!714 = !DILocation(line: 580, column: 2, scope: !683)
!715 = !DILocation(line: 582, column: 18, scope: !683)
!716 = !DILocation(line: 582, column: 31, scope: !683)
!717 = !DILocation(line: 603, column: 16, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 603, column: 2)
!719 = distinct !DILexicalBlock(scope: !683, file: !1, line: 603, column: 2)
!720 = !DILocation(line: 603, column: 2, scope: !719)
!721 = !DILocation(line: 586, column: 3, scope: !722)
!722 = distinct !DILexicalBlock(scope: !683, file: !1, line: 583, column: 3)
!723 = !DILocation(line: 588, column: 16, scope: !722)
!724 = !DILocation(line: 588, column: 14, scope: !722)
!725 = !DILocation(line: 589, column: 16, scope: !722)
!726 = !DILocation(line: 589, column: 3, scope: !722)
!727 = !DILocation(line: 589, column: 14, scope: !722)
!728 = !DILocation(line: 590, column: 16, scope: !722)
!729 = !DILocation(line: 590, column: 3, scope: !722)
!730 = !DILocation(line: 590, column: 14, scope: !722)
!731 = !DILocation(line: 592, column: 7, scope: !722)
!732 = !DILocation(line: 594, column: 14, scope: !722)
!733 = !DILocation(line: 594, column: 12, scope: !722)
!734 = !DILocation(line: 595, column: 14, scope: !722)
!735 = !DILocation(line: 595, column: 12, scope: !722)
!736 = !DILocation(line: 596, column: 14, scope: !722)
!737 = !DILocation(line: 596, column: 12, scope: !722)
!738 = distinct !{!738, !739, !740, !154, !155}
!739 = !DILocation(line: 582, column: 2, scope: !683)
!740 = !DILocation(line: 598, column: 3, scope: !683)
!741 = !DILocation(line: 605, column: 20, scope: !742)
!742 = distinct !DILexicalBlock(scope: !718, file: !1, line: 604, column: 3)
!743 = !DILocation(line: 609, column: 17, scope: !742)
!744 = !DILocation(line: 609, column: 13, scope: !742)
!745 = !DILocation(line: 609, column: 11, scope: !742)
!746 = !DILocation(line: 610, column: 13, scope: !742)
!747 = !DILocation(line: 610, column: 11, scope: !742)
!748 = !DILocation(line: 611, column: 13, scope: !742)
!749 = !DILocation(line: 611, column: 11, scope: !742)
!750 = !DILocation(line: 612, column: 11, scope: !742)
!751 = !DILocation(line: 614, column: 3, scope: !742)
!752 = !DILocation(line: 615, column: 3, scope: !742)
!753 = !DILocation(line: 617, column: 17, scope: !742)
!754 = !DILocation(line: 617, column: 15, scope: !742)
!755 = !DILocation(line: 618, column: 17, scope: !742)
!756 = !DILocation(line: 618, column: 15, scope: !742)
!757 = !DILocation(line: 619, column: 17, scope: !742)
!758 = !DILocation(line: 619, column: 15, scope: !742)
!759 = !DILocation(line: 624, column: 12, scope: !742)
!760 = !DILocation(line: 624, column: 25, scope: !742)
!761 = !DILocation(line: 624, column: 19, scope: !742)
!762 = !DILocation(line: 624, column: 17, scope: !742)
!763 = !DILocation(line: 625, column: 25, scope: !742)
!764 = !DILocation(line: 625, column: 48, scope: !742)
!765 = !DILocation(line: 625, column: 47, scope: !742)
!766 = !DILocation(line: 625, column: 34, scope: !742)
!767 = !DILocation(line: 625, column: 71, scope: !742)
!768 = !DILocation(line: 625, column: 57, scope: !742)
!769 = !DILocation(line: 625, column: 11, scope: !742)
!770 = !DILocation(line: 625, column: 7, scope: !742)
!771 = !DILocation(line: 625, column: 9, scope: !742)
!772 = !DILocation(line: 630, column: 13, scope: !742)
!773 = !DILocation(line: 630, column: 11, scope: !742)
!774 = !DILocation(line: 631, column: 13, scope: !742)
!775 = !DILocation(line: 631, column: 11, scope: !742)
!776 = !DILocation(line: 632, column: 13, scope: !742)
!777 = !DILocation(line: 632, column: 11, scope: !742)
!778 = !DILocation(line: 634, column: 15, scope: !779)
!779 = distinct !DILexicalBlock(scope: !742, file: !1, line: 634, column: 7)
!780 = !DILocation(line: 634, column: 26, scope: !779)
!781 = !DILocation(line: 635, column: 8, scope: !779)
!782 = !DILocation(line: 635, column: 18, scope: !779)
!783 = !DILocation(line: 635, column: 4, scope: !779)
!784 = !DILocation(line: 637, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !1, line: 637, column: 7)
!786 = !DILocation(line: 637, column: 26, scope: !785)
!787 = !DILocation(line: 0, scope: !785)
!788 = !DILocation(line: 638, column: 18, scope: !785)
!789 = !DILocation(line: 638, column: 4, scope: !785)
!790 = !DILocation(line: 640, column: 18, scope: !785)
!791 = !DILocation(line: 642, column: 5, scope: !742)
!792 = !DILocation(line: 603, column: 29, scope: !718)
!793 = distinct !{!793, !720, !794, !154, !155}
!794 = !DILocation(line: 643, column: 3, scope: !719)
!795 = !DILocation(line: 644, column: 2, scope: !683)
!796 = !DISubprogram(name: "VecNorm", scope: !5, file: !5, line: 892, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !270}
!799 = distinct !DISubprogram(name: "PolyRead", scope: !1, file: !1, line: 661, type: !800, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !862)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !42, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !804, line: 7, baseType: !805)
!804 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !806, line: 49, size: 1728, elements: !807)
!806 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!807 = !{!808, !810, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !825, !827, !828, !829, !832, !834, !836, !840, !843, !845, !848, !851, !852, !854, !857, !858}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !805, file: !806, line: 51, baseType: !809, size: 32)
!809 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !805, file: !806, line: 54, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !805, file: !806, line: 55, baseType: !811, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !805, file: !806, line: 56, baseType: !811, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !805, file: !806, line: 57, baseType: !811, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !805, file: !806, line: 58, baseType: !811, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !805, file: !806, line: 59, baseType: !811, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !805, file: !806, line: 60, baseType: !811, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !805, file: !806, line: 61, baseType: !811, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !805, file: !806, line: 64, baseType: !811, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !805, file: !806, line: 65, baseType: !811, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !805, file: !806, line: 66, baseType: !811, size: 64, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !805, file: !806, line: 68, baseType: !823, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !806, line: 36, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !805, file: !806, line: 70, baseType: !826, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !805, file: !806, line: 72, baseType: !809, size: 32, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !805, file: !806, line: 73, baseType: !809, size: 32, offset: 928)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !805, file: !806, line: 74, baseType: !830, size: 64, offset: 960)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !831, line: 152, baseType: !10)
!831 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !805, file: !806, line: 77, baseType: !833, size: 16, offset: 1024)
!833 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !805, file: !806, line: 78, baseType: !835, size: 8, offset: 1040)
!835 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !805, file: !806, line: 79, baseType: !837, size: 8, offset: 1048)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 1)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !805, file: !806, line: 81, baseType: !841, size: 64, offset: 1088)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !806, line: 43, baseType: null)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !805, file: !806, line: 89, baseType: !844, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !831, line: 153, baseType: !10)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !805, file: !806, line: 91, baseType: !846, size: 64, offset: 1216)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !806, line: 37, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !805, file: !806, line: 92, baseType: !849, size: 64, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !806, line: 38, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !805, file: !806, line: 93, baseType: !826, size: 64, offset: 1344)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !805, file: !806, line: 94, baseType: !853, size: 64, offset: 1408)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !805, file: !806, line: 95, baseType: !855, size: 64, offset: 1472)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !856, line: 46, baseType: !420)
!856 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !805, file: !806, line: 96, baseType: !809, size: 32, offset: 1536)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !805, file: !806, line: 98, baseType: !859, size: 160, offset: 1568)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 20)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !872, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884}
!863 = !DILocalVariable(name: "po", arg: 1, scope: !799, file: !1, line: 661, type: !42)
!864 = !DILocalVariable(name: "pf", arg: 2, scope: !799, file: !1, line: 661, type: !802)
!865 = !DILocalVariable(name: "i", scope: !799, file: !1, line: 663, type: !9)
!866 = !DILocalVariable(name: "j", scope: !799, file: !1, line: 663, type: !9)
!867 = !DILocalVariable(name: "instat", scope: !799, file: !1, line: 664, type: !9)
!868 = !DILocalVariable(name: "vindex", scope: !799, file: !1, line: 665, type: !22)
!869 = !DILocalVariable(name: "totalverts", scope: !799, file: !1, line: 666, type: !9)
!870 = !DILocalVariable(name: "normstr", scope: !799, file: !1, line: 667, type: !871)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 40, elements: !464)
!872 = !DILocalVariable(name: "pnormals", scope: !799, file: !1, line: 668, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !5, line: 299, baseType: !420)
!874 = !DILocalVariable(name: "pnorm", scope: !799, file: !1, line: 669, type: !12)
!875 = !DILocalVariable(name: "vlist", scope: !799, file: !1, line: 670, type: !20)
!876 = !DILocalVariable(name: "vptr", scope: !799, file: !1, line: 670, type: !20)
!877 = !DILocalVariable(name: "vp", scope: !799, file: !1, line: 670, type: !20)
!878 = !DILocalVariable(name: "vptmp", scope: !799, file: !1, line: 671, type: !20)
!879 = !DILocalVariable(name: "vptmp2", scope: !799, file: !1, line: 671, type: !20)
!880 = !DILocalVariable(name: "tmppnt", scope: !799, file: !1, line: 672, type: !12)
!881 = !DILocalVariable(name: "tmppnt2", scope: !799, file: !1, line: 672, type: !12)
!882 = !DILocalVariable(name: "cross", scope: !799, file: !1, line: 672, type: !12)
!883 = !DILocalVariable(name: "pp", scope: !799, file: !1, line: 673, type: !3)
!884 = !DILocalVariable(name: "pe", scope: !799, file: !1, line: 674, type: !58)
!885 = !DILocation(line: 0, scope: !799)
!886 = !DILocation(line: 666, column: 2, scope: !799)
!887 = !DILocation(line: 667, column: 2, scope: !799)
!888 = !DILocation(line: 667, column: 7, scope: !799)
!889 = !DILocation(line: 677, column: 11, scope: !799)
!890 = !DILocation(line: 681, column: 11, scope: !799)
!891 = !DILocation(line: 683, column: 13, scope: !892)
!892 = distinct !DILexicalBlock(scope: !799, file: !1, line: 683, column: 6)
!893 = !DILocation(line: 683, column: 6, scope: !799)
!894 = !DILocation(line: 685, column: 3, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !1, line: 684, column: 3)
!896 = !DILocation(line: 686, column: 3, scope: !895)
!897 = !DILocation(line: 689, column: 40, scope: !799)
!898 = !DILocation(line: 689, column: 35, scope: !799)
!899 = !DILocation(line: 689, column: 10, scope: !799)
!900 = !DILocation(line: 690, column: 37, scope: !799)
!901 = !DILocation(line: 690, column: 35, scope: !799)
!902 = !DILocation(line: 690, column: 10, scope: !799)
!903 = !DILocation(line: 696, column: 11, scope: !799)
!904 = !DILocation(line: 698, column: 13, scope: !905)
!905 = distinct !DILexicalBlock(scope: !799, file: !1, line: 698, column: 6)
!906 = !DILocation(line: 698, column: 6, scope: !799)
!907 = !DILocation(line: 700, column: 3, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 699, column: 3)
!909 = !DILocation(line: 701, column: 3, scope: !908)
!910 = !DILocation(line: 704, column: 14, scope: !799)
!911 = !DILocation(line: 704, column: 25, scope: !799)
!912 = !DILocation(line: 709, column: 18, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 709, column: 2)
!914 = distinct !DILexicalBlock(scope: !799, file: !1, line: 709, column: 2)
!915 = !DILocation(line: 709, column: 16, scope: !913)
!916 = !DILocation(line: 709, column: 2, scope: !914)
!917 = !DILocation(line: 711, column: 52, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !1, line: 710, column: 3)
!919 = !DILocation(line: 711, column: 65, scope: !918)
!920 = !DILocation(line: 711, column: 12, scope: !918)
!921 = !DILocation(line: 713, column: 14, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !1, line: 713, column: 7)
!923 = !DILocation(line: 713, column: 7, scope: !918)
!924 = !DILocation(line: 715, column: 4, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !1, line: 714, column: 4)
!926 = !DILocation(line: 716, column: 4, scope: !925)
!927 = !DILocation(line: 719, column: 7, scope: !918)
!928 = !DILocation(line: 709, column: 31, scope: !913)
!929 = distinct !{!929, !916, !930, !154, !155}
!930 = !DILocation(line: 720, column: 3, scope: !914)
!931 = !DILocation(line: 723, column: 13, scope: !799)
!932 = !DILocation(line: 724, column: 2, scope: !799)
!933 = !DILocation(line: 724, column: 13, scope: !799)
!934 = !DILocation(line: 725, column: 2, scope: !799)
!935 = !DILocation(line: 725, column: 13, scope: !799)
!936 = !DILocation(line: 730, column: 22, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !1, line: 730, column: 2)
!938 = distinct !DILexicalBlock(scope: !799, file: !1, line: 730, column: 2)
!939 = !DILocation(line: 730, column: 16, scope: !937)
!940 = !DILocation(line: 730, column: 2, scope: !938)
!941 = !DILocation(line: 732, column: 12, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !1, line: 731, column: 3)
!943 = !DILocation(line: 734, column: 14, scope: !944)
!944 = distinct !DILexicalBlock(scope: !942, file: !1, line: 734, column: 7)
!945 = !DILocation(line: 734, column: 7, scope: !942)
!946 = !DILocation(line: 736, column: 4, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !1, line: 735, column: 4)
!948 = !DILocation(line: 737, column: 4, scope: !947)
!949 = !DILocation(line: 740, column: 11, scope: !950)
!950 = distinct !DILexicalBlock(scope: !942, file: !1, line: 740, column: 7)
!951 = !DILocation(line: 740, column: 18, scope: !950)
!952 = !DILocation(line: 740, column: 7, scope: !942)
!953 = !DILocation(line: 742, column: 4, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !1, line: 741, column: 4)
!955 = !DILocation(line: 743, column: 4, scope: !954)
!956 = !DILocation(line: 746, column: 7, scope: !942)
!957 = !DILocation(line: 748, column: 46, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 747, column: 4)
!959 = distinct !DILexicalBlock(scope: !942, file: !1, line: 746, column: 7)
!960 = !DILocation(line: 748, column: 58, scope: !958)
!961 = !DILocation(line: 748, column: 74, scope: !958)
!962 = !DILocation(line: 748, column: 13, scope: !958)
!963 = !DILocation(line: 750, column: 15, scope: !964)
!964 = distinct !DILexicalBlock(scope: !958, file: !1, line: 750, column: 8)
!965 = !DILocation(line: 750, column: 8, scope: !958)
!966 = !DILocation(line: 758, column: 45, scope: !942)
!967 = !DILocation(line: 752, column: 5, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !1, line: 751, column: 5)
!969 = !DILocation(line: 753, column: 5, scope: !968)
!970 = !DILocation(line: 757, column: 7, scope: !942)
!971 = !DILocation(line: 757, column: 14, scope: !942)
!972 = !DILocation(line: 758, column: 40, scope: !942)
!973 = !DILocation(line: 758, column: 16, scope: !942)
!974 = !DILocation(line: 758, column: 7, scope: !942)
!975 = !DILocation(line: 758, column: 14, scope: !942)
!976 = !DILocation(line: 761, column: 23, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 761, column: 3)
!978 = distinct !DILexicalBlock(scope: !942, file: !1, line: 761, column: 3)
!979 = !DILocation(line: 761, column: 17, scope: !977)
!980 = !DILocation(line: 761, column: 3, scope: !978)
!981 = !DILocation(line: 763, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !1, line: 762, column: 4)
!983 = !DILocation(line: 765, column: 15, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !1, line: 765, column: 8)
!985 = !DILocation(line: 765, column: 8, scope: !982)
!986 = !DILocation(line: 767, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !1, line: 766, column: 5)
!988 = !DILocation(line: 768, column: 5, scope: !987)
!989 = !DILocation(line: 763, column: 37, scope: !982)
!990 = !DILocation(line: 761, column: 32, scope: !977)
!991 = distinct !{!991, !980, !992, !154, !155}
!992 = !DILocation(line: 770, column: 4, scope: !978)
!993 = !DILocation(line: 777, column: 7, scope: !942)
!994 = !DILocation(line: 819, column: 59, scope: !942)
!995 = !DILocation(line: 774, column: 16, scope: !942)
!996 = !DILocation(line: 779, column: 17, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 778, column: 4)
!998 = distinct !DILexicalBlock(scope: !942, file: !1, line: 777, column: 7)
!999 = !DILocation(line: 779, column: 14, scope: !997)
!1000 = !DILocation(line: 782, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 782, column: 4)
!1002 = distinct !DILexicalBlock(scope: !997, file: !1, line: 782, column: 4)
!1003 = !DILocation(line: 782, column: 4, scope: !1002)
!1004 = !DILocation(line: 797, column: 4, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !1, line: 797, column: 4)
!1006 = !DILocation(line: 787, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 787, column: 5)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 783, column: 5)
!1009 = !DILocation(line: 784, column: 31, scope: !1008)
!1010 = !DILocation(line: 784, column: 22, scope: !1008)
!1011 = !DILocation(line: 784, column: 19, scope: !1008)
!1012 = !DILocation(line: 785, column: 31, scope: !1008)
!1013 = !DILocation(line: 785, column: 22, scope: !1008)
!1014 = !DILocation(line: 785, column: 19, scope: !1008)
!1015 = !DILocation(line: 788, column: 5, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 788, column: 5)
!1017 = !DILocation(line: 790, column: 5, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 790, column: 5)
!1019 = !DILocation(line: 791, column: 5, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 791, column: 5)
!1021 = !DILocation(line: 782, column: 37, scope: !1001)
!1022 = distinct !{!1022, !1003, !1023, !154, !155}
!1023 = !DILocation(line: 795, column: 5, scope: !1002)
!1024 = !DILocation(line: 801, column: 4, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !997, file: !1, line: 801, column: 4)
!1026 = !DILocation(line: 0, scope: !997)
!1027 = !DILocation(line: 802, column: 4, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !997, file: !1, line: 802, column: 4)
!1029 = !DILocation(line: 803, column: 4, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !997, file: !1, line: 803, column: 4)
!1031 = !DILocation(line: 807, column: 29, scope: !997)
!1032 = !DILocation(line: 807, column: 20, scope: !997)
!1033 = !DILocation(line: 807, column: 17, scope: !997)
!1034 = !DILocation(line: 809, column: 4, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !997, file: !1, line: 809, column: 4)
!1036 = !DILocation(line: 810, column: 4, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !997, file: !1, line: 810, column: 4)
!1038 = !DILocation(line: 811, column: 4, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !997, file: !1, line: 811, column: 4)
!1040 = !DILocation(line: 812, column: 4, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !997, file: !1, line: 812, column: 4)
!1042 = !DILocation(line: 813, column: 4, scope: !997)
!1043 = !DILocation(line: 818, column: 12, scope: !942)
!1044 = !DILocation(line: 818, column: 25, scope: !942)
!1045 = !DILocation(line: 818, column: 19, scope: !942)
!1046 = !DILocation(line: 818, column: 17, scope: !942)
!1047 = !DILocation(line: 819, column: 17, scope: !942)
!1048 = !DILocation(line: 819, column: 13, scope: !942)
!1049 = !DILocation(line: 819, column: 25, scope: !942)
!1050 = !DILocation(line: 819, column: 36, scope: !942)
!1051 = !DILocation(line: 819, column: 48, scope: !942)
!1052 = !DILocation(line: 819, column: 47, scope: !942)
!1053 = !DILocation(line: 819, column: 34, scope: !942)
!1054 = !DILocation(line: 819, column: 71, scope: !942)
!1055 = !DILocation(line: 819, column: 57, scope: !942)
!1056 = !DILocation(line: 819, column: 11, scope: !942)
!1057 = !DILocation(line: 819, column: 7, scope: !942)
!1058 = !DILocation(line: 819, column: 9, scope: !942)
!1059 = !DILocation(line: 821, column: 7, scope: !942)
!1060 = !DILocation(line: 821, column: 14, scope: !942)
!1061 = !DILocation(line: 822, column: 7, scope: !942)
!1062 = !DILocation(line: 822, column: 14, scope: !942)
!1063 = !DILocation(line: 824, column: 3, scope: !942)
!1064 = !DILocation(line: 826, column: 5, scope: !942)
!1065 = !DILocation(line: 827, column: 5, scope: !942)
!1066 = !DILocation(line: 730, column: 36, scope: !937)
!1067 = distinct !{!1067, !940, !1068, !154, !155}
!1068 = !DILocation(line: 828, column: 3, scope: !938)
!1069 = !DILocation(line: 829, column: 2, scope: !799)
!1070 = !DISubprogram(name: "GlobalMalloc", scope: !5, file: !5, line: 909, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!853, !419, !24}
