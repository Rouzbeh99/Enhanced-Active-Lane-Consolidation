; ModuleID = 'initia.c'
source_filename = "initia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.mol_dummy, ptr }
%struct.mol_dummy = type { [3 x double], [9 x [3 x [3 x double]]] }
%struct.box_dummy = type { ptr, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"random.in\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Error in opening file random.in\0A\00", align 1
@OMAS = external local_unnamed_addr global double, align 8
@HMAS = external local_unnamed_addr global double, align 8
@NMOL = external local_unnamed_addr global i64, align 8
@BOXL = external local_unnamed_addr global double, align 8
@ROH = external local_unnamed_addr global double, align 8
@ANGLE = external local_unnamed_addr global double, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"\0ANS = %.16f\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"BOXL = %10f\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CUTOFF = %10f\0A\00", align 1
@CUTOFF = external local_unnamed_addr global double, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"BOX_LENGTH = %10f\0A\00", align 1
@BOX_LENGTH = external local_unnamed_addr global double, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"BOX_PER_SIDE = %ld\0A\00", align 1
@BOX_PER_SIDE = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"XS = %10f\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ZERO = %g\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"WCOS = %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"WSIN = %f\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@six = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [51 x i8] c"***** NEW RUN STARTING FROM REGULAR LATTICE *****\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@NATOMS = external local_unnamed_addr global i64, align 8
@BOX = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [47 x i8] c"Lattice init error: total mol %ld != NMOL %ld\0A\00", align 1
@BOLTZ = external local_unnamed_addr global double, align 8
@TEMP = external local_unnamed_addr global double, align 8
@NATMO = external local_unnamed_addr global i64, align 8
@UNITM = external local_unnamed_addr global double, align 8
@UNITT = external local_unnamed_addr global double, align 8
@TSTEP = external local_unnamed_addr global double, align 8
@UNITL = external local_unnamed_addr global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @INITIA() local_unnamed_addr #0 !dbg !31 {
entry:
  %XMAS = alloca [4 x double], align 16
  %SUX = alloca double, align 8
  %XT = alloca [4 x i64], align 16
  %YT = alloca [4 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %XMAS) #11, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %XMAS, metadata !97, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %SUX) #11, !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %XT) #11, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %XT, metadata !119, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %YT) #11, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %YT, metadata !121, metadata !DIExpression()), !dbg !136
  %call = tail call ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1), !dbg !137
  call void @llvm.dbg.value(metadata ptr %call, metadata !35, metadata !DIExpression()), !dbg !133
  %cmp = icmp eq ptr %call, null, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !140

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !141
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %0) #12, !dbg !143
  %2 = load ptr, ptr @stderr, align 8, !dbg !144
  %call2 = tail call i32 @fflush(ptr noundef %2), !dbg !145
  tail call void @exit(i32 noundef -1) #13, !dbg !146
  unreachable, !dbg !146

if.end:                                           ; preds = %entry
  %3 = load double, ptr @OMAS, align 8, !dbg !147
  %4 = load double, ptr @HMAS, align 8, !dbg !148
  %mul = fmul double %3, %4, !dbg !149
  %call3 = tail call double @sqrt(double noundef %mul) #11, !dbg !150
  %arrayidx = getelementptr inbounds [4 x double], ptr %XMAS, i64 0, i64 1, !dbg !151
  store double %call3, ptr %arrayidx, align 8, !dbg !152
  %5 = load double, ptr @HMAS, align 8, !dbg !153
  store double %5, ptr %XMAS, align 16, !dbg !154
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %XMAS, i64 0, i64 2, !dbg !155
  store double %5, ptr %arrayidx5, align 16, !dbg !156
  %6 = load i64, ptr @NMOL, align 8, !dbg !157
  %conv = sitofp i64 %6 to double, !dbg !158
  %call6 = tail call double @pow(double noundef %conv, double noundef 0x3FD5555555555555) #11, !dbg !159
  %sub = fadd double %call6, 0xBD06849B86A12B9B, !dbg !160
  call void @llvm.dbg.value(metadata double %sub, metadata !125, metadata !DIExpression()), !dbg !161
  %7 = load double, ptr @BOXL, align 8, !dbg !162
  %div = fdiv double %7, %sub, !dbg !163
  call void @llvm.dbg.value(metadata double %div, metadata !126, metadata !DIExpression()), !dbg !161
  %mul7 = fmul double %div, 5.000000e-01, !dbg !164
  call void @llvm.dbg.value(metadata double %mul7, metadata !127, metadata !DIExpression()), !dbg !161
  %8 = load double, ptr @ROH, align 8, !dbg !165
  %9 = load double, ptr @ANGLE, align 8, !dbg !166
  %mul8 = fmul double %9, 5.000000e-01, !dbg !167
  %call9 = tail call double @cos(double noundef %mul8) #11, !dbg !168
  %mul10 = fmul double %8, %call9, !dbg !169
  call void @llvm.dbg.value(metadata double %mul10, metadata !128, metadata !DIExpression()), !dbg !161
  %10 = load double, ptr @ROH, align 8, !dbg !170
  %11 = load double, ptr @ANGLE, align 8, !dbg !171
  %mul11 = fmul double %11, 5.000000e-01, !dbg !172
  %call12 = tail call double @sin(double noundef %mul11) #11, !dbg !173
  %mul13 = fmul double %10, %call12, !dbg !174
  call void @llvm.dbg.value(metadata double %mul13, metadata !129, metadata !DIExpression()), !dbg !161
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, double noundef %sub), !dbg !175
  %12 = load double, ptr @BOXL, align 8, !dbg !176
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, double noundef %12), !dbg !177
  %13 = load double, ptr @CUTOFF, align 8, !dbg !178
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, double noundef %13), !dbg !179
  %14 = load double, ptr @BOX_LENGTH, align 8, !dbg !180
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, double noundef %14), !dbg !181
  %15 = load i64, ptr @BOX_PER_SIDE, align 8, !dbg !182
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !183
  %call19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, double noundef %div), !dbg !184
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %mul7), !dbg !185
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %mul10), !dbg !186
  %call22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, double noundef %mul13), !dbg !187
  %16 = load ptr, ptr @stdout, align 8, !dbg !188
  %call23 = tail call i32 @fflush(ptr noundef %16), !dbg !189
  %17 = load ptr, ptr @six, align 8, !dbg !190
  %18 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 50, i64 1, ptr %17), !dbg !191
  %19 = load ptr, ptr @six, align 8, !dbg !192
  %call25 = tail call i32 @fflush(ptr noundef %19), !dbg !193
  %conv26 = fptosi double %mul7 to i64, !dbg !194
  %arrayidx27 = getelementptr inbounds [4 x i64], ptr %XT, i64 0, i64 2, !dbg !195
  store i64 %conv26, ptr %arrayidx27, align 16, !dbg !196
  call void @llvm.dbg.value(metadata i64 0, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr %SUX, metadata !101, metadata !DIExpression(DW_OP_deref)), !dbg !133
  %call28 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %SUX) #11, !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !112, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  %cmp30628 = fcmp ogt double %sub, 0.000000e+00, !dbg !198
  br i1 %cmp30628, label %for.body.us.us.preheader, label %for.end214, !dbg !201

for.body.us.us.preheader:                         ; preds = %if.end
  %arrayidx35 = getelementptr inbounds [4 x i64], ptr %XT, i64 0, i64 1
  %arrayidx37 = getelementptr inbounds [4 x i64], ptr %XT, i64 0, i64 3
  %arrayidx39 = getelementptr inbounds [4 x i64], ptr %YT, i64 0, i64 2
  %arrayidx49 = getelementptr inbounds [4 x i64], ptr %YT, i64 0, i64 1
  %arrayidx54 = getelementptr inbounds [4 x i64], ptr %YT, i64 0, i64 3
  %.pre722.pre.pre = load i64, ptr @NATOMS, align 8, !dbg !202
  br label %for.body.us.us, !dbg !201

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond40.for.end207_crit_edge.split.us.us.us
  %.pre722.pre = phi i64 [ %.pre722.pre737, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ %.pre722.pre.pre, %for.body.us.us.preheader ], !dbg !202
  %20 = phi i64 [ %conv211.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ %conv26, %for.body.us.us.preheader ], !dbg !212
  %SUMX.0634.us.us = phi double [ %SUMX.3.lcssa.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ 0.000000e+00, %for.body.us.us.preheader ]
  %SUMY.0633.us.us = phi double [ %SUMY.3.lcssa.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ 0.000000e+00, %for.body.us.us.preheader ]
  %SUMZ.0632.us.us = phi double [ %SUMZ.3.lcssa.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ 0.000000e+00, %for.body.us.us.preheader ]
  %mol.0631.us.us = phi i64 [ %inc145.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ 0, %for.body.us.us.preheader ]
  %i.0629.us.us = phi i64 [ %inc213.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], [ 0, %for.body.us.us.preheader ]
  call void @llvm.dbg.value(metadata double %SUMX.0634.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMY.0633.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMZ.0632.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %mol.0631.us.us, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %i.0629.us.us, metadata !112, metadata !DIExpression()), !dbg !133
  %conv33.us.us = sitofp i64 %20 to double, !dbg !212
  %add.us.us = fadd double %mul10, %conv33.us.us, !dbg !213
  %conv34.us.us = fptosi double %add.us.us to i64, !dbg !212
  store i64 %conv34.us.us, ptr %arrayidx35, align 8, !dbg !214
  store i64 %conv34.us.us, ptr %arrayidx37, align 8, !dbg !215
  store i64 %conv26, ptr %arrayidx39, align 16, !dbg !216
  call void @llvm.dbg.value(metadata i64 0, metadata !113, metadata !DIExpression()), !dbg !133
  br label %for.body44.us.us.us, !dbg !217

for.body44.us.us.us:                              ; preds = %for.cond56.for.end200_crit_edge.us.us.us, %for.body.us.us
  %.pre722.pre740 = phi i64 [ %.pre722.pre, %for.body.us.us ], [ %.pre722.pre737, %for.cond56.for.end200_crit_edge.us.us.us ]
  %.pre722 = phi i64 [ %.pre722.pre, %for.body.us.us ], [ %.pre722733, %for.cond56.for.end200_crit_edge.us.us.us ], !dbg !202
  %21 = phi i64 [ %conv26, %for.body.us.us ], [ %conv204.us.us.us, %for.cond56.for.end200_crit_edge.us.us.us ], !dbg !218
  %SUMX.1616.us.us.us = phi double [ %SUMX.0634.us.us, %for.body.us.us ], [ %SUMX.3.lcssa.us.us.us, %for.cond56.for.end200_crit_edge.us.us.us ]
  %SUMY.1615.us.us.us = phi double [ %SUMY.0633.us.us, %for.body.us.us ], [ %SUMY.3.lcssa.us.us.us, %for.cond56.for.end200_crit_edge.us.us.us ]
  %SUMZ.1614.us.us.us = phi double [ %SUMZ.0632.us.us, %for.body.us.us ], [ %SUMZ.3.lcssa.us.us.us, %for.cond56.for.end200_crit_edge.us.us.us ]
  %mol.1613.us.us.us = phi i64 [ %mol.0631.us.us, %for.body.us.us ], [ %inc145.us.us.us, %for.cond56.for.end200_crit_edge.us.us.us ]
  %j.0611.us.us.us = phi i64 [ 0, %for.body.us.us ], [ %add206.us.us.us, %for.cond56.for.end200_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata double %SUMX.1616.us.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMY.1615.us.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMZ.1614.us.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %mol.1613.us.us.us, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %j.0611.us.us.us, metadata !113, metadata !DIExpression()), !dbg !133
  %conv46.us.us.us = sitofp i64 %21 to double, !dbg !218
  %add47.us.us.us = fadd double %mul13, %conv46.us.us.us, !dbg !219
  %conv48.us.us.us = fptosi double %add47.us.us.us to i64, !dbg !218
  store i64 %conv48.us.us.us, ptr %arrayidx49, align 8, !dbg !220
  %sub52.us.us.us = fsub double %conv46.us.us.us, %mul13, !dbg !221
  %conv53.us.us.us = fptosi double %sub52.us.us.us to i64, !dbg !222
  store i64 %conv53.us.us.us, ptr %arrayidx54, align 8, !dbg !223
  call void @llvm.dbg.value(metadata i64 %conv26, metadata !122, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !133
  br label %for.body60.us.us.us, !dbg !224

for.body60.us.us.us:                              ; preds = %for.inc198.us.us.us, %for.body44.us.us.us
  %.pre722.pre739 = phi i64 [ %.pre722.pre740, %for.body44.us.us.us ], [ %.pre722.pre737, %for.inc198.us.us.us ]
  %.pre722735 = phi i64 [ %.pre722, %for.body44.us.us.us ], [ %.pre722733, %for.inc198.us.us.us ]
  %22 = phi i64 [ %.pre722, %for.body44.us.us.us ], [ %34, %for.inc198.us.us.us ], !dbg !202
  %SUMX.2604.us.us.us = phi double [ %SUMX.1616.us.us.us, %for.body44.us.us.us ], [ %SUMX.3.lcssa.us.us.us, %for.inc198.us.us.us ]
  %SUMY.2603.us.us.us = phi double [ %SUMY.1615.us.us.us, %for.body44.us.us.us ], [ %SUMY.3.lcssa.us.us.us, %for.inc198.us.us.us ]
  %SUMZ.2602.us.us.us = phi double [ %SUMZ.1614.us.us.us, %for.body44.us.us.us ], [ %SUMZ.3.lcssa.us.us.us, %for.inc198.us.us.us ]
  %Z.0601.us.us.us = phi i64 [ %conv26, %for.body44.us.us.us ], [ %conv148.us.us.us, %for.inc198.us.us.us ]
  %mol.2600.us.us.us = phi i64 [ %mol.1613.us.us.us, %for.body44.us.us.us ], [ %inc145.us.us.us, %for.inc198.us.us.us ]
  %k.0598.us.us.us = phi i64 [ 0, %for.body44.us.us.us ], [ %inc199.us.us.us, %for.inc198.us.us.us ]
  call void @llvm.dbg.value(metadata double %SUMX.2604.us.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMY.2603.us.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMZ.2602.us.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %Z.0601.us.us.us, metadata !122, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %mol.2600.us.us.us, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %k.0598.us.us.us, metadata !114, metadata !DIExpression()), !dbg !133
  %call61.us.us.us = call noalias dereferenceable_or_null(680) ptr @malloc(i64 noundef 680) #14, !dbg !225
  call void @llvm.dbg.value(metadata ptr %call61.us.us.us, metadata !115, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !133
  %cmp63587.us.us.us = icmp sgt i64 %22, 0, !dbg !226
  br i1 %cmp63587.us.us.us, label %for.body65.lr.ph.us.us.us, label %for.body60.us.us.us.for.end144.us.us.us_crit_edge, !dbg !227

for.body60.us.us.us.for.end144.us.us.us_crit_edge: ; preds = %for.body60.us.us.us
  %.pre742 = sitofp i64 %Z.0601.us.us.us to double, !dbg !228
  br label %for.end144.us.us.us, !dbg !227

for.end144.us.us.us.loopexit:                     ; preds = %for.cond62.loopexit.us.us.us
  %arrayidx153.us.us.us.phi.trans.insert = getelementptr inbounds [3 x double], ptr %F.us.us.us, i64 0, i64 1
  %.pre723 = load double, ptr %arrayidx153.us.us.us.phi.trans.insert, align 8, !dbg !229
  %arrayidx160.us.us.us.phi.trans.insert = getelementptr inbounds [3 x [3 x double]], ptr %F.us.us.us, i64 0, i64 1, i64 1
  %.pre725 = load double, ptr %arrayidx160.us.us.us.phi.trans.insert, align 8, !dbg !230
  %arrayidx167.us.us.us.phi.trans.insert = getelementptr inbounds [3 x [3 x double]], ptr %F.us.us.us, i64 0, i64 2, i64 1
  %.pre727 = load double, ptr %arrayidx167.us.us.us.phi.trans.insert, align 8, !dbg !231
  br label %for.end144.us.us.us, !dbg !232

for.end144.us.us.us:                              ; preds = %for.body60.us.us.us.for.end144.us.us.us_crit_edge, %for.end144.us.us.us.loopexit
  %conv146.us.us.us.pre-phi = phi double [ %.pre742, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %conv81.us.us.us, %for.end144.us.us.us.loopexit ], !dbg !228
  %.pre722.pre738 = phi i64 [ %.pre722.pre739, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %40, %for.end144.us.us.us.loopexit ]
  %.pre722734 = phi i64 [ %.pre722735, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %40, %for.end144.us.us.us.loopexit ]
  %23 = phi double [ undef, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %.pre727, %for.end144.us.us.us.loopexit ], !dbg !231
  %24 = phi double [ undef, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %.pre725, %for.end144.us.us.us.loopexit ], !dbg !230
  %25 = phi double [ undef, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %.pre723, %for.end144.us.us.us.loopexit ], !dbg !229
  %26 = phi i64 [ %22, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %40, %for.end144.us.us.us.loopexit ]
  %SUMZ.3.lcssa.us.us.us = phi double [ %SUMZ.2602.us.us.us, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %add122.us.us.us, %for.end144.us.us.us.loopexit ], !dbg !161
  %SUMY.3.lcssa.us.us.us = phi double [ %SUMY.2603.us.us.us, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %add116.us.us.us, %for.end144.us.us.us.loopexit ], !dbg !161
  %SUMX.3.lcssa.us.us.us = phi double [ %SUMX.2604.us.us.us, %for.body60.us.us.us.for.end144.us.us.us_crit_edge ], [ %add110.us.us.us, %for.end144.us.us.us.loopexit ], !dbg !161
  %next_mol.us.us.us = getelementptr inbounds %struct.link, ptr %call61.us.us.us, i64 0, i32 1, !dbg !232
  store ptr null, ptr %next_mol.us.us.us, align 8, !dbg !233
  %inc145.us.us.us = add nsw i64 %mol.2600.us.us.us, 1, !dbg !234
  call void @llvm.dbg.value(metadata i64 %inc145.us.us.us, metadata !118, metadata !DIExpression()), !dbg !133
  %add147.us.us.us = fadd double %div, %conv146.us.us.us.pre-phi, !dbg !228
  %conv148.us.us.us = fptosi double %add147.us.us.us to i64, !dbg !228
  call void @llvm.dbg.value(metadata i64 %conv148.us.us.us, metadata !122, metadata !DIExpression()), !dbg !133
  %27 = load double, ptr @BOX_LENGTH, align 8, !dbg !235
  %div154.us.us.us = fdiv double %25, %27, !dbg !236
  %conv155.us.us.us = fptosi double %div154.us.us.us to i64, !dbg !237
  call void @llvm.dbg.value(metadata i64 %conv155.us.us.us, metadata !108, metadata !DIExpression()), !dbg !133
  %div161.us.us.us = fdiv double %24, %27, !dbg !238
  %conv162.us.us.us = fptosi double %div161.us.us.us to i64, !dbg !239
  call void @llvm.dbg.value(metadata i64 %conv162.us.us.us, metadata !109, metadata !DIExpression()), !dbg !133
  %div168.us.us.us = fdiv double %23, %27, !dbg !240
  %conv169.us.us.us = fptosi double %div168.us.us.us to i64, !dbg !241
  call void @llvm.dbg.value(metadata i64 %conv169.us.us.us, metadata !110, metadata !DIExpression()), !dbg !133
  %28 = load i64, ptr @BOX_PER_SIDE, align 8, !dbg !242
  %cmp170.not.us.us.us = icmp sle i64 %28, %conv155.us.us.us, !dbg !244
  %sub173.us.us.us = sext i1 %cmp170.not.us.us.us to i64, !dbg !245
  %spec.select.us.us.us = add nsw i64 %sub173.us.us.us, %conv155.us.us.us, !dbg !245
  call void @llvm.dbg.value(metadata i64 %spec.select.us.us.us, metadata !108, metadata !DIExpression()), !dbg !133
  %cmp175.not.us.us.us = icmp sle i64 %28, %conv162.us.us.us, !dbg !246
  %sub178.us.us.us = sext i1 %cmp175.not.us.us.us to i64, !dbg !248
  %spec.select585.us.us.us = add nsw i64 %sub178.us.us.us, %conv162.us.us.us, !dbg !248
  call void @llvm.dbg.value(metadata i64 %spec.select585.us.us.us, metadata !109, metadata !DIExpression()), !dbg !133
  %cmp180.not.us.us.us = icmp sle i64 %28, %conv169.us.us.us, !dbg !249
  %sub183.us.us.us = sext i1 %cmp180.not.us.us.us to i64, !dbg !251
  %spec.select584.us.us.us = add nsw i64 %sub183.us.us.us, %conv169.us.us.us, !dbg !251
  call void @llvm.dbg.value(metadata i64 %spec.select584.us.us.us, metadata !110, metadata !DIExpression()), !dbg !133
  %29 = load ptr, ptr @BOX, align 8, !dbg !252
  %arrayidx185.us.us.us = getelementptr inbounds ptr, ptr %29, i64 %spec.select.us.us.us, !dbg !252
  %30 = load ptr, ptr %arrayidx185.us.us.us, align 8, !dbg !252
  %arrayidx186.us.us.us = getelementptr inbounds ptr, ptr %30, i64 %spec.select585.us.us.us, !dbg !252
  %31 = load ptr, ptr %arrayidx186.us.us.us, align 8, !dbg !252
  %arrayidx187.us.us.us = getelementptr inbounds %struct.box_dummy, ptr %31, i64 %spec.select584.us.us.us, !dbg !252
  %32 = load ptr, ptr %arrayidx187.us.us.us, align 8, !dbg !253
  call void @llvm.dbg.value(metadata ptr %32, metadata !116, metadata !DIExpression()), !dbg !133
  %cmp188.us.us.us = icmp eq ptr %32, null, !dbg !254
  br i1 %cmp188.us.us.us, label %if.then190.us.us.us, label %while.body.us.us.us, !dbg !256

while.body.us.us.us:                              ; preds = %for.end144.us.us.us, %while.body.us.us.us
  %curr_ptr.0595.us.us.us = phi ptr [ %33, %while.body.us.us.us ], [ %32, %for.end144.us.us.us ]
  call void @llvm.dbg.value(metadata ptr %curr_ptr.0595.us.us.us, metadata !116, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr %curr_ptr.0595.us.us.us, metadata !117, metadata !DIExpression()), !dbg !133
  %next_mol195.us.us.us = getelementptr inbounds %struct.link, ptr %curr_ptr.0595.us.us.us, i64 0, i32 1, !dbg !257
  %33 = load ptr, ptr %next_mol195.us.us.us, align 8, !dbg !257
  call void @llvm.dbg.value(metadata ptr %33, metadata !116, metadata !DIExpression()), !dbg !133
  %tobool.not.us.us.us = icmp eq ptr %33, null, !dbg !260
  br i1 %tobool.not.us.us.us, label %while.cond.while.end_crit_edge.us.us.us, label %while.body.us.us.us, !dbg !260, !llvm.loop !261

if.then190.us.us.us:                              ; preds = %for.end144.us.us.us
  store ptr %call61.us.us.us, ptr %arrayidx187.us.us.us, align 8, !dbg !265
  %.pre = load i64, ptr @NATOMS, align 8, !dbg !202
  br label %for.inc198.us.us.us, !dbg !267

for.inc198.us.us.us:                              ; preds = %while.cond.while.end_crit_edge.us.us.us, %if.then190.us.us.us
  %.pre722.pre737 = phi i64 [ %.pre, %if.then190.us.us.us ], [ %.pre722.pre738, %while.cond.while.end_crit_edge.us.us.us ]
  %.pre722733 = phi i64 [ %.pre, %if.then190.us.us.us ], [ %.pre722734, %while.cond.while.end_crit_edge.us.us.us ]
  %34 = phi i64 [ %.pre, %if.then190.us.us.us ], [ %26, %while.cond.while.end_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  %inc199.us.us.us = add nuw nsw i64 %k.0598.us.us.us, 1, !dbg !268
  call void @llvm.dbg.value(metadata double %SUMX.3.lcssa.us.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMY.3.lcssa.us.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMZ.3.lcssa.us.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %conv148.us.us.us, metadata !122, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %inc145.us.us.us, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %inc199.us.us.us, metadata !114, metadata !DIExpression()), !dbg !133
  %conv57.us.us.us = sitofp i64 %inc199.us.us.us to double, !dbg !269
  %cmp58.us.us.us = fcmp ogt double %sub, %conv57.us.us.us, !dbg !270
  br i1 %cmp58.us.us.us, label %for.body60.us.us.us, label %for.cond56.for.end200_crit_edge.us.us.us, !dbg !224, !llvm.loop !271

for.body65.us.us.us:                              ; preds = %for.body65.lr.ph.us.us.us, %for.cond62.loopexit.us.us.us
  %SUMX.3591.us.us.us = phi double [ %SUMX.2604.us.us.us, %for.body65.lr.ph.us.us.us ], [ %add110.us.us.us, %for.cond62.loopexit.us.us.us ]
  %SUMY.3590.us.us.us = phi double [ %SUMY.2603.us.us.us, %for.body65.lr.ph.us.us.us ], [ %add116.us.us.us, %for.cond62.loopexit.us.us.us ]
  %SUMZ.3589.us.us.us = phi double [ %SUMZ.2602.us.us.us, %for.body65.lr.ph.us.us.us ], [ %add122.us.us.us, %for.cond62.loopexit.us.us.us ]
  %atom.0588.us.us.us = phi i64 [ 0, %for.body65.lr.ph.us.us.us ], [ %add66.us.us.us, %for.cond62.loopexit.us.us.us ]
  call void @llvm.dbg.value(metadata double %SUMX.3591.us.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMY.3590.us.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUMZ.3589.us.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %atom.0588.us.us.us, metadata !111, metadata !DIExpression()), !dbg !133
  %add66.us.us.us = add nuw nsw i64 %atom.0588.us.us.us, 1, !dbg !273
  %arrayidx67.us.us.us = getelementptr inbounds [4 x i64], ptr %XT, i64 0, i64 %add66.us.us.us, !dbg !275
  %35 = load i64, ptr %arrayidx67.us.us.us, align 8, !dbg !275
  %conv68.us.us.us = sitofp i64 %35 to double, !dbg !275
  %arrayidx72.us.us.us = getelementptr inbounds [3 x double], ptr %F.us.us.us, i64 0, i64 %atom.0588.us.us.us, !dbg !276
  store double %conv68.us.us.us, ptr %arrayidx72.us.us.us, align 8, !dbg !277
  %arrayidx74.us.us.us = getelementptr inbounds [4 x i64], ptr %YT, i64 0, i64 %add66.us.us.us, !dbg !278
  %36 = load i64, ptr %arrayidx74.us.us.us, align 8, !dbg !278
  %conv75.us.us.us = sitofp i64 %36 to double, !dbg !278
  %arrayidx80.us.us.us = getelementptr inbounds [3 x [3 x double]], ptr %F.us.us.us, i64 0, i64 1, i64 %atom.0588.us.us.us, !dbg !279
  store double %conv75.us.us.us, ptr %arrayidx80.us.us.us, align 8, !dbg !280
  %arrayidx86.us.us.us = getelementptr inbounds [3 x [3 x double]], ptr %F.us.us.us, i64 0, i64 2, i64 %atom.0588.us.us.us, !dbg !281
  store double %conv81.us.us.us, ptr %arrayidx86.us.us.us, align 8, !dbg !282
  %arrayidx91.us.us.us = getelementptr inbounds [3 x double], ptr %arrayidx89.us.us.us, i64 0, i64 %atom.0588.us.us.us, !dbg !283
  %call92.us.us.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %arrayidx91.us.us.us) #11, !dbg !284
  %arrayidx97.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1, i64 1, i64 1, i64 %atom.0588.us.us.us, !dbg !285
  %call98.us.us.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %arrayidx97.us.us.us) #11, !dbg !286
  %arrayidx103.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1, i64 1, i64 2, i64 %atom.0588.us.us.us, !dbg !287
  %call104.us.us.us = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %arrayidx103.us.us.us) #11, !dbg !288
  %37 = load double, ptr %arrayidx91.us.us.us, align 8, !dbg !289
  call void @llvm.dbg.value(metadata double %add110.us.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  %38 = load double, ptr %arrayidx97.us.us.us, align 8, !dbg !290
  call void @llvm.dbg.value(metadata double %add116.us.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  %39 = load double, ptr %arrayidx103.us.us.us, align 8, !dbg !291
  call void @llvm.dbg.value(metadata double %add122.us.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 2, metadata !123, metadata !DIExpression()), !dbg !161
  br label %for.body126.us.us.us, !dbg !292

for.body126.us.us.us:                             ; preds = %for.body126.us.us.us, %for.body65.us.us.us
  %deriv.0586.us.us.us = phi i64 [ 2, %for.body65.us.us.us ], [ %inc.us.us.us, %for.body126.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %deriv.0586.us.us.us, metadata !123, metadata !DIExpression()), !dbg !161
  %arrayidx129.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1, i64 %deriv.0586.us.us.us, !dbg !294
  %arrayidx131.us.us.us = getelementptr inbounds [3 x double], ptr %arrayidx129.us.us.us, i64 0, i64 %atom.0588.us.us.us, !dbg !294
  store double 0.000000e+00, ptr %arrayidx131.us.us.us, align 8, !dbg !297
  %arrayidx136.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1, i64 %deriv.0586.us.us.us, i64 1, i64 %atom.0588.us.us.us, !dbg !298
  store double 0.000000e+00, ptr %arrayidx136.us.us.us, align 8, !dbg !299
  %arrayidx141.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1, i64 %deriv.0586.us.us.us, i64 2, i64 %atom.0588.us.us.us, !dbg !300
  store double 0.000000e+00, ptr %arrayidx141.us.us.us, align 8, !dbg !301
  %inc.us.us.us = add nuw nsw i64 %deriv.0586.us.us.us, 1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %inc.us.us.us, metadata !123, metadata !DIExpression()), !dbg !161
  %exitcond.not = icmp eq i64 %inc.us.us.us, 7, !dbg !303
  br i1 %exitcond.not, label %for.cond62.loopexit.us.us.us, label %for.body126.us.us.us, !dbg !292, !llvm.loop !304

for.cond62.loopexit.us.us.us:                     ; preds = %for.body126.us.us.us
  %add110.us.us.us = fadd double %SUMX.3591.us.us.us, %37, !dbg !306
  %add116.us.us.us = fadd double %SUMY.3590.us.us.us, %38, !dbg !307
  %add122.us.us.us = fadd double %SUMZ.3589.us.us.us, %39, !dbg !308
  call void @llvm.dbg.value(metadata double %add110.us.us.us, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %add116.us.us.us, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %add122.us.us.us, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %add66.us.us.us, metadata !111, metadata !DIExpression()), !dbg !133
  %40 = load i64, ptr @NATOMS, align 8, !dbg !202
  %cmp63.us.us.us = icmp slt i64 %add66.us.us.us, %40, !dbg !226
  br i1 %cmp63.us.us.us, label %for.body65.us.us.us, label %for.end144.us.us.us.loopexit, !dbg !227, !llvm.loop !309

for.body65.lr.ph.us.us.us:                        ; preds = %for.body60.us.us.us
  %F.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1
  %conv81.us.us.us = sitofp i64 %Z.0601.us.us.us to double
  %arrayidx89.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %call61.us.us.us, i64 0, i32 1, i64 1
  br label %for.body65.us.us.us, !dbg !227

while.cond.while.end_crit_edge.us.us.us:          ; preds = %while.body.us.us.us
  %next_mol195.us.us.us.le = getelementptr inbounds %struct.link, ptr %curr_ptr.0595.us.us.us, i64 0, i32 1, !dbg !257
  store ptr %call61.us.us.us, ptr %next_mol195.us.us.us.le, align 8, !dbg !311
  br label %for.inc198.us.us.us

for.cond56.for.end200_crit_edge.us.us.us:         ; preds = %for.inc198.us.us.us
  %add203.us.us.us = fadd double %div, %conv46.us.us.us, !dbg !312
  %conv204.us.us.us = fptosi double %add203.us.us.us to i64, !dbg !312
  store i64 %conv204.us.us.us, ptr %arrayidx39, align 16, !dbg !312
  %add206.us.us.us = add nuw nsw i64 %j.0611.us.us.us, 1, !dbg !313
  call void @llvm.dbg.value(metadata double undef, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double undef, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double undef, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 undef, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %add206.us.us.us, metadata !113, metadata !DIExpression()), !dbg !133
  %conv41.us.us.us = sitofp i64 %add206.us.us.us to double, !dbg !314
  %cmp42.us.us.us = fcmp ogt double %sub, %conv41.us.us.us, !dbg !315
  br i1 %cmp42.us.us.us, label %for.body44.us.us.us, label %for.cond40.for.end207_crit_edge.split.us.us.us, !dbg !217, !llvm.loop !316

for.cond40.for.end207_crit_edge.split.us.us.us:   ; preds = %for.cond56.for.end200_crit_edge.us.us.us
  %add210.us.us = fadd double %div, %conv33.us.us, !dbg !318
  %conv211.us.us = fptosi double %add210.us.us to i64, !dbg !318
  store i64 %conv211.us.us, ptr %arrayidx27, align 16, !dbg !318
  %inc213.us.us = add nuw nsw i64 %i.0629.us.us, 1, !dbg !319
  call void @llvm.dbg.value(metadata double undef, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double undef, metadata !105, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double undef, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 undef, metadata !118, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !117, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %inc213.us.us, metadata !112, metadata !DIExpression()), !dbg !133
  %conv29.us.us = sitofp i64 %inc213.us.us to double, !dbg !320
  %cmp30.us.us = fcmp ogt double %sub, %conv29.us.us, !dbg !198
  br i1 %cmp30.us.us, label %for.body.us.us, label %for.end214, !dbg !201, !llvm.loop !321

for.end214:                                       ; preds = %for.cond40.for.end207_crit_edge.split.us.us.us, %if.end
  %mol.0.lcssa = phi i64 [ 0, %if.end ], [ %inc145.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], !dbg !323
  %SUMZ.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %SUMZ.3.lcssa.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], !dbg !324
  %SUMY.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %SUMY.3.lcssa.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], !dbg !325
  %SUMX.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %SUMX.3.lcssa.us.us.us, %for.cond40.for.end207_crit_edge.split.us.us.us ], !dbg !326
  %41 = load i64, ptr @NMOL, align 8, !dbg !327
  %cmp215.not = icmp eq i64 %41, %mol.0.lcssa, !dbg !329
  br i1 %cmp215.not, label %if.end219, label %if.then217, !dbg !330

if.then217:                                       ; preds = %for.end214
  %call218 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i64 noundef %mol.0.lcssa, i64 noundef %41), !dbg !331
  call void @exit(i32 noundef -1) #13, !dbg !333
  unreachable, !dbg !333

if.end219:                                        ; preds = %for.end214
  %42 = load i64, ptr @NATOMS, align 8, !dbg !334
  %mul220 = mul nsw i64 %42, %mol.0.lcssa, !dbg !335
  %conv221 = sitofp i64 %mul220 to double, !dbg !336
  %div222 = fdiv double %SUMX.0.lcssa, %conv221, !dbg !337
  call void @llvm.dbg.value(metadata double %div222, metadata !104, metadata !DIExpression()), !dbg !133
  %div225 = fdiv double %SUMY.0.lcssa, %conv221, !dbg !338
  call void @llvm.dbg.value(metadata double %div225, metadata !105, metadata !DIExpression()), !dbg !133
  %div228 = fdiv double %SUMZ.0.lcssa, %conv221, !dbg !339
  call void @llvm.dbg.value(metadata double %div228, metadata !106, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !101, metadata !DIExpression()), !dbg !133
  store double 0.000000e+00, ptr %SUX, align 8, !dbg !340
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !112, metadata !DIExpression()), !dbg !133
  %43 = load i64, ptr @BOX_PER_SIDE, align 8
  %cmp230684 = icmp sgt i64 %43, 0, !dbg !341
  br i1 %cmp230684, label %for.cond233.preheader.lr.ph, label %for.end336, !dbg !344

for.cond233.preheader.lr.ph:                      ; preds = %if.end219
  %44 = load ptr, ptr @BOX, align 8
  %45 = load double, ptr @HMAS, align 8
  %46 = load double, ptr @OMAS, align 8
  br label %for.cond233.preheader.us.us, !dbg !345

for.cond233.preheader.us.us:                      ; preds = %for.cond233.preheader.lr.ph, %for.cond233.for.inc334_crit_edge.split.us.us.us
  %SUX.promoted.us.us.us728 = phi double [ %SUX.promoted.us.us.us731, %for.cond233.for.inc334_crit_edge.split.us.us.us ], [ 0.000000e+00, %for.cond233.preheader.lr.ph ]
  %SUY.0688.us.us = phi double [ %SUY.3.lcssa.us.us.us, %for.cond233.for.inc334_crit_edge.split.us.us.us ], [ 0.000000e+00, %for.cond233.preheader.lr.ph ]
  %SUZ.0687.us.us = phi double [ %SUZ.3.lcssa.us.us.us, %for.cond233.for.inc334_crit_edge.split.us.us.us ], [ 0.000000e+00, %for.cond233.preheader.lr.ph ]
  %i.1685.us.us = phi i64 [ %inc335.us.us, %for.cond233.for.inc334_crit_edge.split.us.us.us ], [ 0, %for.cond233.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.1685.us.us, metadata !112, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUY.0688.us.us, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUZ.0687.us.us, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !113, metadata !DIExpression()), !dbg !133
  %arrayidx241.us.us = getelementptr inbounds ptr, ptr %44, i64 %i.1685.us.us
  br label %for.cond237.preheader.us.us.us, !dbg !351

for.cond237.preheader.us.us.us:                   ; preds = %for.cond237.for.inc331_crit_edge.us.us.us, %for.cond233.preheader.us.us
  %SUX.promoted.us.us.us729 = phi double [ %SUX.promoted.us.us.us728, %for.cond233.preheader.us.us ], [ %SUX.promoted.us.us.us731, %for.cond237.for.inc331_crit_edge.us.us.us ]
  %SUY.1679.us.us.us = phi double [ %SUY.0688.us.us, %for.cond233.preheader.us.us ], [ %SUY.3.lcssa.us.us.us, %for.cond237.for.inc331_crit_edge.us.us.us ]
  %SUZ.1678.us.us.us = phi double [ %SUZ.0687.us.us, %for.cond233.preheader.us.us ], [ %SUZ.3.lcssa.us.us.us, %for.cond237.for.inc331_crit_edge.us.us.us ]
  %j.1676.us.us.us = phi i64 [ 0, %for.cond233.preheader.us.us ], [ %inc332.us.us.us, %for.cond237.for.inc331_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %j.1676.us.us.us, metadata !113, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUY.1679.us.us.us, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUZ.1678.us.us.us, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !133
  br label %for.body240.us.us.us, !dbg !345

for.body240.us.us.us:                             ; preds = %for.inc328.us.us.us, %for.cond237.preheader.us.us.us
  %SUX.promoted.us.us.us = phi double [ %SUX.promoted.us.us.us729, %for.cond237.preheader.us.us.us ], [ %SUX.promoted.us.us.us731, %for.inc328.us.us.us ]
  %SUY.2672.us.us.us = phi double [ %SUY.1679.us.us.us, %for.cond237.preheader.us.us.us ], [ %SUY.3.lcssa.us.us.us, %for.inc328.us.us.us ]
  %SUZ.2671.us.us.us = phi double [ %SUZ.1678.us.us.us, %for.cond237.preheader.us.us.us ], [ %SUZ.3.lcssa.us.us.us, %for.inc328.us.us.us ]
  %k.1670.us.us.us = phi i64 [ 0, %for.cond237.preheader.us.us.us ], [ %inc329.us.us.us, %for.inc328.us.us.us ]
  call void @llvm.dbg.value(metadata double %SUY.2672.us.us.us, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUZ.2671.us.us.us, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %k.1670.us.us.us, metadata !114, metadata !DIExpression()), !dbg !133
  %47 = load ptr, ptr %arrayidx241.us.us, align 8, !dbg !352
  %arrayidx242.us.us.us = getelementptr inbounds ptr, ptr %47, i64 %j.1676.us.us.us, !dbg !352
  %48 = load ptr, ptr %arrayidx242.us.us.us, align 8, !dbg !352
  %arrayidx243.us.us.us = getelementptr inbounds %struct.box_dummy, ptr %48, i64 %k.1670.us.us.us, !dbg !352
  call void @llvm.dbg.value(metadata ptr undef, metadata !116, metadata !DIExpression()), !dbg !133
  %curr_ptr.1661.us.us.us = load ptr, ptr %arrayidx243.us.us.us, align 8, !dbg !355
  call void @llvm.dbg.value(metadata ptr %curr_ptr.1661.us.us.us, metadata !116, metadata !DIExpression()), !dbg !133
  %tobool246.not662.us.us.us = icmp eq ptr %curr_ptr.1661.us.us.us, null, !dbg !356
  br i1 %tobool246.not662.us.us.us, label %for.inc328.us.us.us, label %while.body247.us.us.us, !dbg !356

while.body247.us.us.us:                           ; preds = %for.body240.us.us.us, %while.body247.us.us.us
  %add273668.us.us.us = phi double [ %add273.us.us.us, %while.body247.us.us.us ], [ %SUX.promoted.us.us.us, %for.body240.us.us.us ], !dbg !133
  %curr_ptr.1665.us.us.us = phi ptr [ %curr_ptr.1.us.us.us, %while.body247.us.us.us ], [ %curr_ptr.1661.us.us.us, %for.body240.us.us.us ]
  %SUY.3664.us.us.us = phi double [ %add299.us.us.us, %while.body247.us.us.us ], [ %SUY.2672.us.us.us, %for.body240.us.us.us ]
  %SUZ.3663.us.us.us = phi double [ %add325.us.us.us, %while.body247.us.us.us ], [ %SUZ.2671.us.us.us, %for.body240.us.us.us ]
  call void @llvm.dbg.value(metadata double %SUY.3664.us.us.us, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUZ.3663.us.us.us, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %add273668.us.us.us, metadata !101, metadata !DIExpression()), !dbg !133
  %arrayidx250.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, !dbg !357
  %49 = load double, ptr %arrayidx250.us.us.us, align 8, !dbg !357
  %sub253.us.us.us = fsub double %49, %div222, !dbg !359
  %square575.us.us.us = fmul double %sub253.us.us.us, %sub253.us.us.us, !dbg !360
  %arrayidx259.us.us.us = getelementptr inbounds [3 x double], ptr %arrayidx250.us.us.us, i64 0, i64 2, !dbg !361
  %50 = load double, ptr %arrayidx259.us.us.us, align 8, !dbg !361
  %sub260.us.us.us = fsub double %50, %div222, !dbg !362
  %square576.us.us.us = fmul double %sub260.us.us.us, %sub260.us.us.us, !dbg !363
  %add262.us.us.us = fadd double %square575.us.us.us, %square576.us.us.us, !dbg !364
  %div263.us.us.us = fdiv double %add262.us.us.us, %45, !dbg !365
  %add264.us.us.us = fadd double %add273668.us.us.us, %div263.us.us.us, !dbg !366
  %arrayidx269.us.us.us = getelementptr inbounds [3 x double], ptr %arrayidx250.us.us.us, i64 0, i64 1, !dbg !367
  %51 = load double, ptr %arrayidx269.us.us.us, align 8, !dbg !367
  %sub270.us.us.us = fsub double %51, %div222, !dbg !368
  %square577.us.us.us = fmul double %sub270.us.us.us, %sub270.us.us.us, !dbg !369
  %div272.us.us.us = fdiv double %square577.us.us.us, %46, !dbg !370
  %add273.us.us.us = fadd double %add264.us.us.us, %div272.us.us.us, !dbg !371
  call void @llvm.dbg.value(metadata double %add273.us.us.us, metadata !101, metadata !DIExpression()), !dbg !133
  %arrayidx277.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, i64 1, !dbg !372
  %52 = load double, ptr %arrayidx277.us.us.us, align 8, !dbg !372
  %sub279.us.us.us = fsub double %52, %div225, !dbg !373
  %square578.us.us.us = fmul double %sub279.us.us.us, %sub279.us.us.us, !dbg !374
  %arrayidx285.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, i64 1, i64 2, !dbg !375
  %53 = load double, ptr %arrayidx285.us.us.us, align 8, !dbg !375
  %sub286.us.us.us = fsub double %53, %div225, !dbg !376
  %square579.us.us.us = fmul double %sub286.us.us.us, %sub286.us.us.us, !dbg !377
  %add288.us.us.us = fadd double %square578.us.us.us, %square579.us.us.us, !dbg !378
  %div289.us.us.us = fdiv double %add288.us.us.us, %45, !dbg !379
  %add290.us.us.us = fadd double %SUY.3664.us.us.us, %div289.us.us.us, !dbg !380
  %arrayidx295.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, i64 1, i64 1, !dbg !381
  %54 = load double, ptr %arrayidx295.us.us.us, align 8, !dbg !381
  %sub296.us.us.us = fsub double %54, %div225, !dbg !382
  %square580.us.us.us = fmul double %sub296.us.us.us, %sub296.us.us.us, !dbg !383
  %div298.us.us.us = fdiv double %square580.us.us.us, %46, !dbg !384
  %add299.us.us.us = fadd double %div298.us.us.us, %add290.us.us.us, !dbg !385
  call void @llvm.dbg.value(metadata double %add299.us.us.us, metadata !102, metadata !DIExpression()), !dbg !133
  %arrayidx303.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, i64 2, !dbg !386
  %55 = load double, ptr %arrayidx303.us.us.us, align 8, !dbg !386
  %sub305.us.us.us = fsub double %55, %div228, !dbg !387
  %square581.us.us.us = fmul double %sub305.us.us.us, %sub305.us.us.us, !dbg !388
  %arrayidx311.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, i64 2, i64 2, !dbg !389
  %56 = load double, ptr %arrayidx311.us.us.us, align 8, !dbg !389
  %sub312.us.us.us = fsub double %56, %div228, !dbg !390
  %square582.us.us.us = fmul double %sub312.us.us.us, %sub312.us.us.us, !dbg !391
  %add314.us.us.us = fadd double %square581.us.us.us, %square582.us.us.us, !dbg !392
  %div315.us.us.us = fdiv double %add314.us.us.us, %45, !dbg !393
  %add316.us.us.us = fadd double %SUZ.3663.us.us.us, %div315.us.us.us, !dbg !394
  %arrayidx321.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, i64 1, i64 2, i64 1, !dbg !395
  %57 = load double, ptr %arrayidx321.us.us.us, align 8, !dbg !395
  %sub322.us.us.us = fsub double %57, %div228, !dbg !396
  %square583.us.us.us = fmul double %sub322.us.us.us, %sub322.us.us.us, !dbg !397
  %div324.us.us.us = fdiv double %square583.us.us.us, %46, !dbg !398
  %add325.us.us.us = fadd double %div324.us.us.us, %add316.us.us.us, !dbg !399
  call void @llvm.dbg.value(metadata double %add325.us.us.us, metadata !103, metadata !DIExpression()), !dbg !133
  %next_mol326.us.us.us = getelementptr inbounds %struct.link, ptr %curr_ptr.1665.us.us.us, i64 0, i32 1, !dbg !400
  call void @llvm.dbg.value(metadata ptr undef, metadata !116, metadata !DIExpression()), !dbg !133
  %curr_ptr.1.us.us.us = load ptr, ptr %next_mol326.us.us.us, align 8, !dbg !355
  call void @llvm.dbg.value(metadata ptr %curr_ptr.1.us.us.us, metadata !116, metadata !DIExpression()), !dbg !133
  %tobool246.not.us.us.us = icmp eq ptr %curr_ptr.1.us.us.us, null, !dbg !356
  br i1 %tobool246.not.us.us.us, label %while.cond245.for.inc328_crit_edge.us.us.us, label %while.body247.us.us.us, !dbg !356, !llvm.loop !401

for.inc328.us.us.us:                              ; preds = %while.cond245.for.inc328_crit_edge.us.us.us, %for.body240.us.us.us
  %SUX.promoted.us.us.us731 = phi double [ %add273.us.us.us, %while.cond245.for.inc328_crit_edge.us.us.us ], [ %SUX.promoted.us.us.us, %for.body240.us.us.us ]
  %SUZ.3.lcssa.us.us.us = phi double [ %add325.us.us.us, %while.cond245.for.inc328_crit_edge.us.us.us ], [ %SUZ.2671.us.us.us, %for.body240.us.us.us ], !dbg !133
  %SUY.3.lcssa.us.us.us = phi double [ %add299.us.us.us, %while.cond245.for.inc328_crit_edge.us.us.us ], [ %SUY.2672.us.us.us, %for.body240.us.us.us ], !dbg !133
  %inc329.us.us.us = add nuw nsw i64 %k.1670.us.us.us, 1, !dbg !403
  call void @llvm.dbg.value(metadata double %SUY.3.lcssa.us.us.us, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %SUZ.3.lcssa.us.us.us, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %inc329.us.us.us, metadata !114, metadata !DIExpression()), !dbg !133
  %exitcond719.not = icmp eq i64 %inc329.us.us.us, %43, !dbg !404
  br i1 %exitcond719.not, label %for.cond237.for.inc331_crit_edge.us.us.us, label %for.body240.us.us.us, !dbg !345, !llvm.loop !405

while.cond245.for.inc328_crit_edge.us.us.us:      ; preds = %while.body247.us.us.us
  store double %add273.us.us.us, ptr %SUX, align 8, !dbg !407
  br label %for.inc328.us.us.us, !dbg !356

for.cond237.for.inc331_crit_edge.us.us.us:        ; preds = %for.inc328.us.us.us
  %inc332.us.us.us = add nuw nsw i64 %j.1676.us.us.us, 1, !dbg !408
  call void @llvm.dbg.value(metadata double undef, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double undef, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %inc332.us.us.us, metadata !113, metadata !DIExpression()), !dbg !133
  %exitcond720.not = icmp eq i64 %inc332.us.us.us, %43, !dbg !409
  br i1 %exitcond720.not, label %for.cond233.for.inc334_crit_edge.split.us.us.us, label %for.cond237.preheader.us.us.us, !dbg !351, !llvm.loop !410

for.cond233.for.inc334_crit_edge.split.us.us.us:  ; preds = %for.cond237.for.inc331_crit_edge.us.us.us
  %inc335.us.us = add nuw nsw i64 %i.1685.us.us, 1, !dbg !412
  call void @llvm.dbg.value(metadata double undef, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double undef, metadata !103, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %inc335.us.us, metadata !112, metadata !DIExpression()), !dbg !133
  %exitcond721.not = icmp eq i64 %inc335.us.us, %43, !dbg !341
  br i1 %exitcond721.not, label %for.end336, label %for.cond233.preheader.us.us, !dbg !344, !llvm.loop !413

for.end336:                                       ; preds = %for.cond233.for.inc334_crit_edge.split.us.us.us, %if.end219
  %58 = phi double [ 0.000000e+00, %if.end219 ], [ %SUX.promoted.us.us.us731, %for.cond233.for.inc334_crit_edge.split.us.us.us ], !dbg !415
  %SUZ.0.lcssa = phi double [ 0.000000e+00, %if.end219 ], [ %SUZ.3.lcssa.us.us.us, %for.cond233.for.inc334_crit_edge.split.us.us.us ], !dbg !416
  %SUY.0.lcssa = phi double [ 0.000000e+00, %if.end219 ], [ %SUY.3.lcssa.us.us.us, %for.cond233.for.inc334_crit_edge.split.us.us.us ], !dbg !417
  %59 = load double, ptr @BOLTZ, align 8, !dbg !418
  %60 = load double, ptr @TEMP, align 8, !dbg !419
  %mul337 = fmul double %59, %60, !dbg !420
  %61 = load i64, ptr @NATMO, align 8, !dbg !421
  %conv338 = sitofp i64 %61 to double, !dbg !421
  %mul339 = fmul double %mul337, %conv338, !dbg !422
  %62 = load double, ptr @UNITM, align 8, !dbg !423
  %div340 = fdiv double %mul339, %62, !dbg !424
  %63 = load double, ptr @UNITT, align 8, !dbg !425
  %64 = load double, ptr @TSTEP, align 8, !dbg !426
  %mul341 = fmul double %63, %64, !dbg !427
  %65 = load double, ptr @UNITL, align 8, !dbg !428
  %div342 = fdiv double %mul341, %65, !dbg !429
  %square = fmul double %div342, %div342, !dbg !430
  %mul344 = fmul double %div340, %square, !dbg !431
  call void @llvm.dbg.value(metadata double %mul344, metadata !107, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double %58, metadata !101, metadata !DIExpression()), !dbg !133
  %div345 = fdiv double %mul344, %58, !dbg !432
  %call346 = call double @sqrt(double noundef %div345) #11, !dbg !433
  call void @llvm.dbg.value(metadata double %call346, metadata !101, metadata !DIExpression()), !dbg !133
  store double %call346, ptr %SUX, align 8, !dbg !434
  %div347 = fdiv double %mul344, %SUY.0.lcssa, !dbg !435
  %call348 = call double @sqrt(double noundef %div347) #11, !dbg !436
  call void @llvm.dbg.value(metadata double %call348, metadata !102, metadata !DIExpression()), !dbg !133
  %div349 = fdiv double %mul344, %SUZ.0.lcssa, !dbg !437
  %call350 = call double @sqrt(double noundef %div349) #11, !dbg !438
  call void @llvm.dbg.value(metadata double %call350, metadata !103, metadata !DIExpression()), !dbg !133
  %66 = load double, ptr @OMAS, align 8, !dbg !439
  store double %66, ptr %arrayidx, align 8, !dbg !440
  call void @llvm.dbg.value(metadata i64 0, metadata !112, metadata !DIExpression()), !dbg !133
  %67 = load i64, ptr @BOX_PER_SIDE, align 8, !dbg !441
  %cmp353712 = icmp sgt i64 %67, 0, !dbg !444
  br i1 %cmp353712, label %for.cond356.preheader, label %for.end430, !dbg !445

for.cond356.preheader:                            ; preds = %for.end336, %for.inc428
  %68 = phi i64 [ %92, %for.inc428 ], [ %67, %for.end336 ]
  %i.2713 = phi i64 [ %inc429, %for.inc428 ], [ 0, %for.end336 ]
  call void @llvm.dbg.value(metadata i64 %i.2713, metadata !112, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !113, metadata !DIExpression()), !dbg !133
  %cmp357709 = icmp sgt i64 %68, 0, !dbg !446
  br i1 %cmp357709, label %for.cond360.preheader, label %for.inc428, !dbg !450

for.cond360.preheader:                            ; preds = %for.cond356.preheader, %for.inc425
  %69 = phi i64 [ %90, %for.inc425 ], [ %68, %for.cond356.preheader ]
  %70 = phi i64 [ %91, %for.inc425 ], [ %68, %for.cond356.preheader ]
  %j.2710 = phi i64 [ %inc426, %for.inc425 ], [ 0, %for.cond356.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.2710, metadata !113, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !133
  %cmp361707 = icmp sgt i64 %70, 0, !dbg !451
  br i1 %cmp361707, label %for.body363, label %for.inc425, !dbg !455

for.body363:                                      ; preds = %for.cond360.preheader, %for.inc422
  %71 = phi i64 [ %87, %for.inc422 ], [ %69, %for.cond360.preheader ]
  %72 = phi i64 [ %88, %for.inc422 ], [ %70, %for.cond360.preheader ]
  %73 = phi i64 [ %89, %for.inc422 ], [ %70, %for.cond360.preheader ]
  %k.2708 = phi i64 [ %inc423, %for.inc422 ], [ 0, %for.cond360.preheader ]
  call void @llvm.dbg.value(metadata i64 %k.2708, metadata !114, metadata !DIExpression()), !dbg !133
  %74 = load ptr, ptr @BOX, align 8, !dbg !456
  %arrayidx364 = getelementptr inbounds ptr, ptr %74, i64 %i.2713, !dbg !456
  %75 = load ptr, ptr %arrayidx364, align 8, !dbg !456
  %arrayidx365 = getelementptr inbounds ptr, ptr %75, i64 %j.2710, !dbg !456
  %76 = load ptr, ptr %arrayidx365, align 8, !dbg !456
  %arrayidx366 = getelementptr inbounds %struct.box_dummy, ptr %76, i64 %k.2708, !dbg !456
  call void @llvm.dbg.value(metadata ptr undef, metadata !116, metadata !DIExpression()), !dbg !133
  %curr_ptr.2703 = load ptr, ptr %arrayidx366, align 8, !dbg !458
  call void @llvm.dbg.value(metadata ptr %curr_ptr.2703, metadata !116, metadata !DIExpression()), !dbg !133
  %tobool369.not704 = icmp ne ptr %curr_ptr.2703, null, !dbg !459
  %77 = load i64, ptr @NATOMS, align 8
  %78 = icmp sgt i64 %77, 0
  %or.cond = select i1 %tobool369.not704, i1 %78, i1 false, !dbg !459
  br i1 %or.cond, label %for.cond371.preheader, label %for.inc422, !dbg !459

for.cond371.preheader:                            ; preds = %for.body363, %for.end419
  %79 = phi i64 [ %86, %for.end419 ], [ %77, %for.body363 ], !dbg !460
  %curr_ptr.2705 = phi ptr [ %curr_ptr.2, %for.end419 ], [ %curr_ptr.2703, %for.body363 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !133
  %cmp372701 = icmp sgt i64 %79, 0, !dbg !464
  br i1 %cmp372701, label %for.body374.lr.ph, label %for.end419, !dbg !465

for.body374.lr.ph:                                ; preds = %for.cond371.preheader
  %arrayidx377 = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.2705, i64 0, i32 1, i64 1
  br label %for.body374, !dbg !465

for.body374:                                      ; preds = %for.body374.lr.ph, %for.body374
  %atom.1702 = phi i64 [ 0, %for.body374.lr.ph ], [ %inc418, %for.body374 ]
  call void @llvm.dbg.value(metadata i64 %atom.1702, metadata !111, metadata !DIExpression()), !dbg !133
  %arrayidx379 = getelementptr inbounds [3 x double], ptr %arrayidx377, i64 0, i64 %atom.1702, !dbg !466
  %80 = load double, ptr %arrayidx379, align 8, !dbg !466
  %sub380 = fsub double %80, %div222, !dbg !468
  %81 = load double, ptr %SUX, align 8, !dbg !469
  call void @llvm.dbg.value(metadata double %81, metadata !101, metadata !DIExpression()), !dbg !133
  %mul381 = fmul double %sub380, %81, !dbg !470
  %arrayidx382 = getelementptr inbounds [4 x double], ptr %XMAS, i64 0, i64 %atom.1702, !dbg !471
  %82 = load double, ptr %arrayidx382, align 8, !dbg !471
  %div383 = fdiv double %mul381, %82, !dbg !472
  store double %div383, ptr %arrayidx379, align 8, !dbg !473
  %arrayidx393 = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.2705, i64 0, i32 1, i64 1, i64 1, i64 %atom.1702, !dbg !474
  %83 = load double, ptr %arrayidx393, align 8, !dbg !474
  %sub394 = fsub double %83, %div225, !dbg !475
  %mul395 = fmul double %call348, %sub394, !dbg !476
  %div397 = fdiv double %mul395, %82, !dbg !477
  store double %div397, ptr %arrayidx393, align 8, !dbg !478
  %arrayidx407 = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.2705, i64 0, i32 1, i64 1, i64 2, i64 %atom.1702, !dbg !479
  %84 = load double, ptr %arrayidx407, align 8, !dbg !479
  %sub408 = fsub double %84, %div228, !dbg !480
  %mul409 = fmul double %call350, %sub408, !dbg !481
  %div411 = fdiv double %mul409, %82, !dbg !482
  store double %div411, ptr %arrayidx407, align 8, !dbg !483
  %inc418 = add nuw nsw i64 %atom.1702, 1, !dbg !484
  call void @llvm.dbg.value(metadata i64 %inc418, metadata !111, metadata !DIExpression()), !dbg !133
  %85 = load i64, ptr @NATOMS, align 8, !dbg !460
  %cmp372 = icmp slt i64 %inc418, %85, !dbg !464
  br i1 %cmp372, label %for.body374, label %for.end419, !dbg !465, !llvm.loop !485

for.end419:                                       ; preds = %for.body374, %for.cond371.preheader
  %86 = phi i64 [ %79, %for.cond371.preheader ], [ %85, %for.body374 ]
  %next_mol420 = getelementptr inbounds %struct.link, ptr %curr_ptr.2705, i64 0, i32 1, !dbg !487
  call void @llvm.dbg.value(metadata ptr undef, metadata !116, metadata !DIExpression()), !dbg !133
  %curr_ptr.2 = load ptr, ptr %next_mol420, align 8, !dbg !458
  call void @llvm.dbg.value(metadata ptr %curr_ptr.2, metadata !116, metadata !DIExpression()), !dbg !133
  %tobool369.not = icmp eq ptr %curr_ptr.2, null, !dbg !459
  br i1 %tobool369.not, label %for.inc422.loopexit, label %for.cond371.preheader, !dbg !459, !llvm.loop !488

for.inc422.loopexit:                              ; preds = %for.end419
  %.pre732 = load i64, ptr @BOX_PER_SIDE, align 8, !dbg !491
  br label %for.inc422, !dbg !492

for.inc422:                                       ; preds = %for.inc422.loopexit, %for.body363
  %87 = phi i64 [ %.pre732, %for.inc422.loopexit ], [ %71, %for.body363 ]
  %88 = phi i64 [ %.pre732, %for.inc422.loopexit ], [ %72, %for.body363 ]
  %89 = phi i64 [ %.pre732, %for.inc422.loopexit ], [ %73, %for.body363 ], !dbg !491
  %inc423 = add nuw nsw i64 %k.2708, 1, !dbg !492
  call void @llvm.dbg.value(metadata i64 %inc423, metadata !114, metadata !DIExpression()), !dbg !133
  %cmp361 = icmp slt i64 %inc423, %89, !dbg !451
  br i1 %cmp361, label %for.body363, label %for.inc425, !dbg !455, !llvm.loop !493

for.inc425:                                       ; preds = %for.inc422, %for.cond360.preheader
  %90 = phi i64 [ %69, %for.cond360.preheader ], [ %87, %for.inc422 ]
  %91 = phi i64 [ %70, %for.cond360.preheader ], [ %88, %for.inc422 ], !dbg !495
  %inc426 = add nuw nsw i64 %j.2710, 1, !dbg !496
  call void @llvm.dbg.value(metadata i64 %inc426, metadata !113, metadata !DIExpression()), !dbg !133
  %cmp357 = icmp slt i64 %inc426, %91, !dbg !446
  br i1 %cmp357, label %for.cond360.preheader, label %for.inc428, !dbg !450, !llvm.loop !497

for.inc428:                                       ; preds = %for.inc425, %for.cond356.preheader
  %92 = phi i64 [ %68, %for.cond356.preheader ], [ %90, %for.inc425 ], !dbg !441
  %inc429 = add nuw nsw i64 %i.2713, 1, !dbg !499
  call void @llvm.dbg.value(metadata i64 %inc429, metadata !112, metadata !DIExpression()), !dbg !133
  %cmp353 = icmp slt i64 %inc429, %92, !dbg !444
  br i1 %cmp353, label %for.cond356.preheader, label %for.end430, !dbg !445, !llvm.loop !500

for.end430:                                       ; preds = %for.inc428, %for.end336
  %call431 = call i32 @fclose(ptr noundef nonnull %call), !dbg !502
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %YT) #11, !dbg !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %XT) #11, !dbg !503
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %SUX) #11, !dbg !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %XMAS) #11, !dbg !503
  ret void, !dbg !503
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !504 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare !dbg !509 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @xrand(double noundef %xl, double noundef %xh) local_unnamed_addr #0 !dbg !510 {
entry:
  call void @llvm.dbg.value(metadata double %xl, metadata !514, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata double %xh, metadata !515, metadata !DIExpression()), !dbg !517
  %sub = fsub double %xh, %xl, !dbg !518
  %call = tail call i32 @rand() #11, !dbg !519
  %conv = sitofp i32 %call to double, !dbg !520
  %mul = fmul double %sub, %conv, !dbg !521
  %div = fdiv double %mul, 0x41DFFFFFFFC00000, !dbg !522
  %add = fadd double %div, %xl, !dbg !523
  call void @llvm.dbg.value(metadata double %add, metadata !516, metadata !DIExpression()), !dbg !517
  ret double %add, !dbg !524
}

; Function Attrs: nounwind
declare !dbg !525 i32 @rand() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "initia.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "f032a373d685c5e73fb0de0c9875f870")
!2 = !{!3, !4, !5, !23}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link", file: !7, line: 30, size: 5440, elements: !8)
!7 = !DIFile(filename: "./mddata.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "5eef464d675810165298663b2382575d")
!8 = !{!9, !22}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "mol", scope: !6, file: !7, line: 31, baseType: !10, size: 5376)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "molecule_type", file: !7, line: 28, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mol_dummy", file: !7, line: 25, size: 5376, elements: !12)
!12 = !{!13, !18}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "VM", scope: !11, file: !7, line: 26, baseType: !14, size: 192)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_type", file: !7, line: 23, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 3)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !11, file: !7, line: 27, baseType: !19, size: 5184, offset: 192)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 5184, elements: !20)
!20 = !{!21, !17, !17}
!21 = !DISubrange(count: 9)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next_mol", scope: !6, file: !7, line: 32, baseType: !5, size: 64, offset: 5376)
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!31 = distinct !DISubprogram(name: "INITIA", scope: !1, file: !1, line: 48, type: !32, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null}
!34 = !{!35, !97, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !129}
!35 = !DILocalVariable(name: "random_numbers", scope: !31, file: !1, line: 56, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !38, line: 7, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !40, line: 49, size: 1728, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!41 = !{!42, !44, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !60, !62, !63, !64, !67, !69, !71, !75, !78, !80, !83, !86, !87, !88, !92, !93}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !39, file: !40, line: 51, baseType: !43, size: 32)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !39, file: !40, line: 54, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !39, file: !40, line: 55, baseType: !45, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !39, file: !40, line: 56, baseType: !45, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !39, file: !40, line: 57, baseType: !45, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !39, file: !40, line: 58, baseType: !45, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !39, file: !40, line: 59, baseType: !45, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !39, file: !40, line: 60, baseType: !45, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !39, file: !40, line: 61, baseType: !45, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !39, file: !40, line: 64, baseType: !45, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !39, file: !40, line: 65, baseType: !45, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !39, file: !40, line: 66, baseType: !45, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !39, file: !40, line: 68, baseType: !58, size: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !40, line: 36, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !39, file: !40, line: 70, baseType: !61, size: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !39, file: !40, line: 72, baseType: !43, size: 32, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !39, file: !40, line: 73, baseType: !43, size: 32, offset: 928)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !39, file: !40, line: 74, baseType: !65, size: 64, offset: 960)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !66, line: 152, baseType: !23)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !39, file: !40, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !39, file: !40, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !39, file: !40, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !39, file: !40, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !40, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !39, file: !40, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !66, line: 153, baseType: !23)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !39, file: !40, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !40, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !39, file: !40, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !40, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !39, file: !40, line: 93, baseType: !61, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !39, file: !40, line: 94, baseType: !3, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !39, file: !40, line: 95, baseType: !89, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!91 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !39, file: !40, line: 96, baseType: !43, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !39, file: !40, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DILocalVariable(name: "XMAS", scope: !31, file: !1, line: 59, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DILocalVariable(name: "SUX", scope: !31, file: !1, line: 60, type: !4)
!102 = !DILocalVariable(name: "SUY", scope: !31, file: !1, line: 60, type: !4)
!103 = !DILocalVariable(name: "SUZ", scope: !31, file: !1, line: 60, type: !4)
!104 = !DILocalVariable(name: "SUMX", scope: !31, file: !1, line: 60, type: !4)
!105 = !DILocalVariable(name: "SUMY", scope: !31, file: !1, line: 60, type: !4)
!106 = !DILocalVariable(name: "SUMZ", scope: !31, file: !1, line: 60, type: !4)
!107 = !DILocalVariable(name: "FAC", scope: !31, file: !1, line: 60, type: !4)
!108 = !DILocalVariable(name: "X_INDEX", scope: !31, file: !1, line: 61, type: !23)
!109 = !DILocalVariable(name: "Y_INDEX", scope: !31, file: !1, line: 61, type: !23)
!110 = !DILocalVariable(name: "Z_INDEX", scope: !31, file: !1, line: 61, type: !23)
!111 = !DILocalVariable(name: "atom", scope: !31, file: !1, line: 62, type: !23)
!112 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 63, type: !23)
!113 = !DILocalVariable(name: "j", scope: !31, file: !1, line: 63, type: !23)
!114 = !DILocalVariable(name: "k", scope: !31, file: !1, line: 63, type: !23)
!115 = !DILocalVariable(name: "link_ptr", scope: !31, file: !1, line: 64, type: !5)
!116 = !DILocalVariable(name: "curr_ptr", scope: !31, file: !1, line: 64, type: !5)
!117 = !DILocalVariable(name: "last_ptr", scope: !31, file: !1, line: 64, type: !5)
!118 = !DILocalVariable(name: "mol", scope: !31, file: !1, line: 68, type: !23)
!119 = !DILocalVariable(name: "XT", scope: !31, file: !1, line: 68, type: !120)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !99)
!121 = !DILocalVariable(name: "YT", scope: !31, file: !1, line: 68, type: !120)
!122 = !DILocalVariable(name: "Z", scope: !31, file: !1, line: 68, type: !23)
!123 = !DILocalVariable(name: "deriv", scope: !124, file: !1, line: 85, type: !23)
!124 = distinct !DILexicalBlock(scope: !31, file: !1, line: 84, column: 5)
!125 = !DILocalVariable(name: "NS", scope: !124, file: !1, line: 87, type: !4)
!126 = !DILocalVariable(name: "XS", scope: !124, file: !1, line: 88, type: !4)
!127 = !DILocalVariable(name: "ZERO", scope: !124, file: !1, line: 89, type: !4)
!128 = !DILocalVariable(name: "WCOS", scope: !124, file: !1, line: 90, type: !4)
!129 = !DILocalVariable(name: "WSIN", scope: !124, file: !1, line: 91, type: !4)
!130 = !DILocation(line: 59, column: 5, scope: !31)
!131 = !DILocation(line: 59, column: 12, scope: !31)
!132 = !DILocation(line: 60, column: 5, scope: !31)
!133 = !DILocation(line: 0, scope: !31)
!134 = !DILocation(line: 68, column: 5, scope: !31)
!135 = !DILocation(line: 68, column: 19, scope: !31)
!136 = !DILocation(line: 68, column: 26, scope: !31)
!137 = !DILocation(line: 71, column: 22, scope: !31)
!138 = !DILocation(line: 72, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !31, file: !1, line: 72, column: 9)
!140 = !DILocation(line: 72, column: 9, scope: !31)
!141 = !DILocation(line: 73, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 72, column: 33)
!143 = !DILocation(line: 73, column: 9, scope: !142)
!144 = !DILocation(line: 74, column: 16, scope: !142)
!145 = !DILocation(line: 74, column: 9, scope: !142)
!146 = !DILocation(line: 75, column: 9, scope: !142)
!147 = !DILocation(line: 78, column: 18, scope: !31)
!148 = !DILocation(line: 78, column: 23, scope: !31)
!149 = !DILocation(line: 78, column: 22, scope: !31)
!150 = !DILocation(line: 78, column: 13, scope: !31)
!151 = !DILocation(line: 78, column: 5, scope: !31)
!152 = !DILocation(line: 78, column: 12, scope: !31)
!153 = !DILocation(line: 79, column: 13, scope: !31)
!154 = !DILocation(line: 79, column: 12, scope: !31)
!155 = !DILocation(line: 80, column: 5, scope: !31)
!156 = !DILocation(line: 80, column: 12, scope: !31)
!157 = !DILocation(line: 87, column: 34, scope: !124)
!158 = !DILocation(line: 87, column: 25, scope: !124)
!159 = !DILocation(line: 87, column: 21, scope: !124)
!160 = !DILocation(line: 87, column: 49, scope: !124)
!161 = !DILocation(line: 0, scope: !124)
!162 = !DILocation(line: 88, column: 21, scope: !124)
!163 = !DILocation(line: 88, column: 25, scope: !124)
!164 = !DILocation(line: 89, column: 26, scope: !124)
!165 = !DILocation(line: 90, column: 23, scope: !124)
!166 = !DILocation(line: 90, column: 33, scope: !124)
!167 = !DILocation(line: 90, column: 39, scope: !124)
!168 = !DILocation(line: 90, column: 29, scope: !124)
!169 = !DILocation(line: 90, column: 27, scope: !124)
!170 = !DILocation(line: 91, column: 23, scope: !124)
!171 = !DILocation(line: 91, column: 33, scope: !124)
!172 = !DILocation(line: 91, column: 39, scope: !124)
!173 = !DILocation(line: 91, column: 29, scope: !124)
!174 = !DILocation(line: 91, column: 27, scope: !124)
!175 = !DILocation(line: 93, column: 9, scope: !124)
!176 = !DILocation(line: 94, column: 32, scope: !124)
!177 = !DILocation(line: 94, column: 9, scope: !124)
!178 = !DILocation(line: 95, column: 34, scope: !124)
!179 = !DILocation(line: 95, column: 9, scope: !124)
!180 = !DILocation(line: 96, column: 38, scope: !124)
!181 = !DILocation(line: 96, column: 9, scope: !124)
!182 = !DILocation(line: 97, column: 39, scope: !124)
!183 = !DILocation(line: 97, column: 9, scope: !124)
!184 = !DILocation(line: 98, column: 9, scope: !124)
!185 = !DILocation(line: 99, column: 9, scope: !124)
!186 = !DILocation(line: 100, column: 9, scope: !124)
!187 = !DILocation(line: 101, column: 9, scope: !124)
!188 = !DILocation(line: 102, column: 16, scope: !124)
!189 = !DILocation(line: 102, column: 9, scope: !124)
!190 = !DILocation(line: 243, column: 17, scope: !124)
!191 = !DILocation(line: 243, column: 9, scope: !124)
!192 = !DILocation(line: 244, column: 16, scope: !124)
!193 = !DILocation(line: 244, column: 9, scope: !124)
!194 = !DILocation(line: 245, column: 17, scope: !124)
!195 = !DILocation(line: 245, column: 9, scope: !124)
!196 = !DILocation(line: 245, column: 15, scope: !124)
!197 = !DILocation(line: 247, column: 9, scope: !124)
!198 = !DILocation(line: 255, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 255, column: 9)
!200 = distinct !DILexicalBlock(scope: !124, file: !1, line: 255, column: 9)
!201 = !DILocation(line: 255, column: 9, scope: !200)
!202 = !DILocation(line: 265, column: 43, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 265, column: 21)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 265, column: 21)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 263, column: 42)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 263, column: 17)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 263, column: 17)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 259, column: 37)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 259, column: 13)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 259, column: 13)
!211 = distinct !DILexicalBlock(scope: !199, file: !1, line: 255, column: 32)
!212 = !DILocation(line: 256, column: 19, scope: !211)
!213 = !DILocation(line: 256, column: 24, scope: !211)
!214 = !DILocation(line: 256, column: 18, scope: !211)
!215 = !DILocation(line: 257, column: 18, scope: !211)
!216 = !DILocation(line: 258, column: 18, scope: !211)
!217 = !DILocation(line: 259, column: 13, scope: !210)
!218 = !DILocation(line: 260, column: 23, scope: !208)
!219 = !DILocation(line: 260, column: 28, scope: !208)
!220 = !DILocation(line: 260, column: 22, scope: !208)
!221 = !DILocation(line: 261, column: 28, scope: !208)
!222 = !DILocation(line: 261, column: 23, scope: !208)
!223 = !DILocation(line: 261, column: 22, scope: !208)
!224 = !DILocation(line: 263, column: 17, scope: !207)
!225 = !DILocation(line: 264, column: 48, scope: !205)
!226 = !DILocation(line: 265, column: 41, scope: !203)
!227 = !DILocation(line: 265, column: 21, scope: !204)
!228 = !DILocation(line: 288, column: 23, scope: !205)
!229 = !DILocation(line: 292, column: 39, scope: !205)
!230 = !DILocation(line: 293, column: 39, scope: !205)
!231 = !DILocation(line: 294, column: 39, scope: !205)
!232 = !DILocation(line: 286, column: 31, scope: !205)
!233 = !DILocation(line: 286, column: 40, scope: !205)
!234 = !DILocation(line: 287, column: 24, scope: !205)
!235 = !DILocation(line: 292, column: 70, scope: !205)
!236 = !DILocation(line: 292, column: 69, scope: !205)
!237 = !DILocation(line: 292, column: 31, scope: !205)
!238 = !DILocation(line: 293, column: 69, scope: !205)
!239 = !DILocation(line: 293, column: 31, scope: !205)
!240 = !DILocation(line: 294, column: 69, scope: !205)
!241 = !DILocation(line: 294, column: 31, scope: !205)
!242 = !DILocation(line: 298, column: 35, scope: !243)
!243 = distinct !DILexicalBlock(scope: !205, file: !1, line: 298, column: 25)
!244 = !DILocation(line: 298, column: 33, scope: !243)
!245 = !DILocation(line: 298, column: 25, scope: !205)
!246 = !DILocation(line: 299, column: 33, scope: !247)
!247 = distinct !DILexicalBlock(scope: !205, file: !1, line: 299, column: 25)
!248 = !DILocation(line: 299, column: 25, scope: !205)
!249 = !DILocation(line: 300, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !205, file: !1, line: 300, column: 25)
!251 = !DILocation(line: 300, column: 25, scope: !205)
!252 = !DILocation(line: 303, column: 32, scope: !205)
!253 = !DILocation(line: 303, column: 63, scope: !205)
!254 = !DILocation(line: 305, column: 34, scope: !255)
!255 = distinct !DILexicalBlock(scope: !205, file: !1, line: 305, column: 25)
!256 = !DILocation(line: 305, column: 25, scope: !205)
!257 = !DILocation(line: 310, column: 50, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 308, column: 42)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 307, column: 28)
!260 = !DILocation(line: 308, column: 25, scope: !259)
!261 = distinct !{!261, !260, !262, !263, !264}
!262 = !DILocation(line: 311, column: 25, scope: !259)
!263 = !{!"llvm.loop.mustprogress"}
!264 = !{!"llvm.loop.unroll.disable"}
!265 = !DILocation(line: 306, column: 61, scope: !266)
!266 = distinct !DILexicalBlock(scope: !255, file: !1, line: 305, column: 43)
!267 = !DILocation(line: 307, column: 21, scope: !266)
!268 = !DILocation(line: 263, column: 38, scope: !206)
!269 = !DILocation(line: 263, column: 29, scope: !206)
!270 = !DILocation(line: 263, column: 31, scope: !206)
!271 = distinct !{!271, !224, !272, !263, !264}
!272 = !DILocation(line: 315, column: 17, scope: !207)
!273 = !DILocation(line: 268, column: 68, scope: !274)
!274 = distinct !DILexicalBlock(scope: !203, file: !1, line: 265, column: 59)
!275 = !DILocation(line: 268, column: 61, scope: !274)
!276 = !DILocation(line: 268, column: 25, scope: !274)
!277 = !DILocation(line: 268, column: 59, scope: !274)
!278 = !DILocation(line: 269, column: 61, scope: !274)
!279 = !DILocation(line: 269, column: 25, scope: !274)
!280 = !DILocation(line: 269, column: 59, scope: !274)
!281 = !DILocation(line: 270, column: 25, scope: !274)
!282 = !DILocation(line: 270, column: 59, scope: !274)
!283 = !DILocation(line: 273, column: 54, scope: !274)
!284 = !DILocation(line: 273, column: 25, scope: !274)
!285 = !DILocation(line: 274, column: 54, scope: !274)
!286 = !DILocation(line: 274, column: 25, scope: !274)
!287 = !DILocation(line: 275, column: 54, scope: !274)
!288 = !DILocation(line: 275, column: 25, scope: !274)
!289 = !DILocation(line: 276, column: 39, scope: !274)
!290 = !DILocation(line: 277, column: 39, scope: !274)
!291 = !DILocation(line: 278, column: 39, scope: !274)
!292 = !DILocation(line: 279, column: 25, scope: !293)
!293 = distinct !DILexicalBlock(scope: !274, file: !1, line: 279, column: 25)
!294 = !DILocation(line: 280, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 279, column: 68)
!296 = distinct !DILexicalBlock(scope: !293, file: !1, line: 279, column: 25)
!297 = !DILocation(line: 280, column: 64, scope: !295)
!298 = !DILocation(line: 281, column: 29, scope: !295)
!299 = !DILocation(line: 281, column: 64, scope: !295)
!300 = !DILocation(line: 282, column: 29, scope: !295)
!301 = !DILocation(line: 282, column: 64, scope: !295)
!302 = !DILocation(line: 279, column: 64, scope: !296)
!303 = !DILocation(line: 279, column: 49, scope: !296)
!304 = distinct !{!304, !292, !305, !263, !264}
!305 = !DILocation(line: 283, column: 25, scope: !293)
!306 = !DILocation(line: 276, column: 37, scope: !274)
!307 = !DILocation(line: 277, column: 37, scope: !274)
!308 = !DILocation(line: 278, column: 37, scope: !274)
!309 = distinct !{!309, !227, !310, !263, !264}
!310 = !DILocation(line: 284, column: 21, scope: !204)
!311 = !DILocation(line: 312, column: 44, scope: !259)
!312 = !DILocation(line: 316, column: 23, scope: !208)
!313 = !DILocation(line: 259, column: 32, scope: !209)
!314 = !DILocation(line: 259, column: 23, scope: !209)
!315 = !DILocation(line: 259, column: 25, scope: !209)
!316 = distinct !{!316, !217, !317, !263, !264}
!317 = !DILocation(line: 317, column: 13, scope: !210)
!318 = !DILocation(line: 318, column: 19, scope: !211)
!319 = !DILocation(line: 255, column: 28, scope: !199)
!320 = !DILocation(line: 255, column: 19, scope: !199)
!321 = distinct !{!321, !201, !322, !263, !264}
!322 = !DILocation(line: 319, column: 9, scope: !200)
!323 = !DILocation(line: 246, column: 13, scope: !124)
!324 = !DILocation(line: 251, column: 13, scope: !124)
!325 = !DILocation(line: 250, column: 13, scope: !124)
!326 = !DILocation(line: 249, column: 13, scope: !124)
!327 = !DILocation(line: 321, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !124, file: !1, line: 321, column: 13)
!329 = !DILocation(line: 321, column: 18, scope: !328)
!330 = !DILocation(line: 321, column: 13, scope: !124)
!331 = !DILocation(line: 322, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !1, line: 321, column: 26)
!333 = !DILocation(line: 323, column: 13, scope: !332)
!334 = !DILocation(line: 330, column: 16, scope: !31)
!335 = !DILocation(line: 330, column: 22, scope: !31)
!336 = !DILocation(line: 330, column: 15, scope: !31)
!337 = !DILocation(line: 330, column: 14, scope: !31)
!338 = !DILocation(line: 331, column: 14, scope: !31)
!339 = !DILocation(line: 332, column: 14, scope: !31)
!340 = !DILocation(line: 336, column: 8, scope: !31)
!341 = !DILocation(line: 340, column: 16, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 340, column: 5)
!343 = distinct !DILexicalBlock(scope: !31, file: !1, line: 340, column: 5)
!344 = !DILocation(line: 340, column: 5, scope: !343)
!345 = !DILocation(line: 342, column: 13, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 342, column: 13)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 341, column: 40)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 341, column: 9)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 341, column: 9)
!350 = distinct !DILexicalBlock(scope: !342, file: !1, line: 340, column: 36)
!351 = !DILocation(line: 341, column: 9, scope: !349)
!352 = !DILocation(line: 343, column: 28, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 342, column: 44)
!354 = distinct !DILexicalBlock(scope: !346, file: !1, line: 342, column: 13)
!355 = !DILocation(line: 0, scope: !353)
!356 = !DILocation(line: 344, column: 17, scope: !353)
!357 = !DILocation(line: 346, column: 32, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 344, column: 34)
!359 = !DILocation(line: 346, column: 63, scope: !358)
!360 = !DILocation(line: 346, column: 26, scope: !358)
!361 = !DILocation(line: 347, column: 33, scope: !358)
!362 = !DILocation(line: 347, column: 64, scope: !358)
!363 = !DILocation(line: 347, column: 27, scope: !358)
!364 = !DILocation(line: 347, column: 26, scope: !358)
!365 = !DILocation(line: 347, column: 77, scope: !358)
!366 = !DILocation(line: 345, column: 31, scope: !358)
!367 = !DILocation(line: 348, column: 37, scope: !358)
!368 = !DILocation(line: 348, column: 68, scope: !358)
!369 = !DILocation(line: 348, column: 31, scope: !358)
!370 = !DILocation(line: 348, column: 80, scope: !358)
!371 = !DILocation(line: 348, column: 30, scope: !358)
!372 = !DILocation(line: 351, column: 32, scope: !358)
!373 = !DILocation(line: 351, column: 63, scope: !358)
!374 = !DILocation(line: 351, column: 26, scope: !358)
!375 = !DILocation(line: 352, column: 33, scope: !358)
!376 = !DILocation(line: 352, column: 64, scope: !358)
!377 = !DILocation(line: 352, column: 27, scope: !358)
!378 = !DILocation(line: 352, column: 26, scope: !358)
!379 = !DILocation(line: 352, column: 77, scope: !358)
!380 = !DILocation(line: 350, column: 31, scope: !358)
!381 = !DILocation(line: 353, column: 37, scope: !358)
!382 = !DILocation(line: 353, column: 68, scope: !358)
!383 = !DILocation(line: 353, column: 31, scope: !358)
!384 = !DILocation(line: 353, column: 80, scope: !358)
!385 = !DILocation(line: 353, column: 30, scope: !358)
!386 = !DILocation(line: 356, column: 32, scope: !358)
!387 = !DILocation(line: 356, column: 63, scope: !358)
!388 = !DILocation(line: 356, column: 26, scope: !358)
!389 = !DILocation(line: 357, column: 34, scope: !358)
!390 = !DILocation(line: 357, column: 65, scope: !358)
!391 = !DILocation(line: 357, column: 28, scope: !358)
!392 = !DILocation(line: 357, column: 26, scope: !358)
!393 = !DILocation(line: 357, column: 78, scope: !358)
!394 = !DILocation(line: 355, column: 31, scope: !358)
!395 = !DILocation(line: 358, column: 37, scope: !358)
!396 = !DILocation(line: 358, column: 68, scope: !358)
!397 = !DILocation(line: 358, column: 31, scope: !358)
!398 = !DILocation(line: 358, column: 80, scope: !358)
!399 = !DILocation(line: 358, column: 30, scope: !358)
!400 = !DILocation(line: 360, column: 42, scope: !358)
!401 = distinct !{!401, !356, !402, !263, !264}
!402 = !DILocation(line: 361, column: 17, scope: !353)
!403 = !DILocation(line: 342, column: 40, scope: !354)
!404 = !DILocation(line: 342, column: 24, scope: !354)
!405 = distinct !{!405, !345, !406, !263, !264}
!406 = !DILocation(line: 362, column: 13, scope: !346)
!407 = !DILocation(line: 0, scope: !358)
!408 = !DILocation(line: 341, column: 36, scope: !348)
!409 = !DILocation(line: 341, column: 20, scope: !348)
!410 = distinct !{!410, !351, !411, !263, !264}
!411 = !DILocation(line: 363, column: 9, scope: !349)
!412 = !DILocation(line: 340, column: 32, scope: !342)
!413 = distinct !{!413, !344, !414, !263, !264}
!414 = !DILocation(line: 364, column: 5, scope: !343)
!415 = !DILocation(line: 367, column: 18, scope: !31)
!416 = !DILocation(line: 338, column: 8, scope: !31)
!417 = !DILocation(line: 337, column: 8, scope: !31)
!418 = !DILocation(line: 366, column: 9, scope: !31)
!419 = !DILocation(line: 366, column: 15, scope: !31)
!420 = !DILocation(line: 366, column: 14, scope: !31)
!421 = !DILocation(line: 366, column: 20, scope: !31)
!422 = !DILocation(line: 366, column: 19, scope: !31)
!423 = !DILocation(line: 366, column: 26, scope: !31)
!424 = !DILocation(line: 366, column: 25, scope: !31)
!425 = !DILocation(line: 366, column: 39, scope: !31)
!426 = !DILocation(line: 366, column: 45, scope: !31)
!427 = !DILocation(line: 366, column: 44, scope: !31)
!428 = !DILocation(line: 366, column: 51, scope: !31)
!429 = !DILocation(line: 366, column: 50, scope: !31)
!430 = !DILocation(line: 366, column: 34, scope: !31)
!431 = !DILocation(line: 366, column: 32, scope: !31)
!432 = !DILocation(line: 367, column: 17, scope: !31)
!433 = !DILocation(line: 367, column: 9, scope: !31)
!434 = !DILocation(line: 367, column: 8, scope: !31)
!435 = !DILocation(line: 368, column: 17, scope: !31)
!436 = !DILocation(line: 368, column: 9, scope: !31)
!437 = !DILocation(line: 369, column: 17, scope: !31)
!438 = !DILocation(line: 369, column: 9, scope: !31)
!439 = !DILocation(line: 373, column: 13, scope: !31)
!440 = !DILocation(line: 373, column: 12, scope: !31)
!441 = !DILocation(line: 374, column: 17, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 374, column: 5)
!443 = distinct !DILexicalBlock(scope: !31, file: !1, line: 374, column: 5)
!444 = !DILocation(line: 374, column: 16, scope: !442)
!445 = !DILocation(line: 374, column: 5, scope: !443)
!446 = !DILocation(line: 375, column: 20, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 375, column: 9)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 375, column: 9)
!449 = distinct !DILexicalBlock(scope: !442, file: !1, line: 374, column: 36)
!450 = !DILocation(line: 375, column: 9, scope: !448)
!451 = !DILocation(line: 376, column: 24, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 376, column: 13)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 376, column: 13)
!454 = distinct !DILexicalBlock(scope: !447, file: !1, line: 375, column: 40)
!455 = !DILocation(line: 376, column: 13, scope: !453)
!456 = !DILocation(line: 377, column: 28, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !1, line: 376, column: 44)
!458 = !DILocation(line: 0, scope: !457)
!459 = !DILocation(line: 378, column: 17, scope: !457)
!460 = !DILocation(line: 379, column: 43, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 379, column: 21)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 379, column: 21)
!463 = distinct !DILexicalBlock(scope: !457, file: !1, line: 378, column: 34)
!464 = !DILocation(line: 379, column: 41, scope: !461)
!465 = !DILocation(line: 379, column: 21, scope: !462)
!466 = !DILocation(line: 381, column: 31, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !1, line: 379, column: 59)
!468 = !DILocation(line: 381, column: 64, scope: !467)
!469 = !DILocation(line: 382, column: 38, scope: !467)
!470 = !DILocation(line: 382, column: 36, scope: !467)
!471 = !DILocation(line: 382, column: 42, scope: !467)
!472 = !DILocation(line: 382, column: 41, scope: !467)
!473 = !DILocation(line: 380, column: 58, scope: !467)
!474 = !DILocation(line: 384, column: 31, scope: !467)
!475 = !DILocation(line: 384, column: 64, scope: !467)
!476 = !DILocation(line: 385, column: 36, scope: !467)
!477 = !DILocation(line: 385, column: 41, scope: !467)
!478 = !DILocation(line: 383, column: 58, scope: !467)
!479 = !DILocation(line: 387, column: 31, scope: !467)
!480 = !DILocation(line: 387, column: 64, scope: !467)
!481 = !DILocation(line: 388, column: 36, scope: !467)
!482 = !DILocation(line: 388, column: 41, scope: !467)
!483 = !DILocation(line: 386, column: 58, scope: !467)
!484 = !DILocation(line: 379, column: 55, scope: !461)
!485 = distinct !{!485, !465, !486, !263, !264}
!486 = !DILocation(line: 389, column: 21, scope: !462)
!487 = !DILocation(line: 390, column: 42, scope: !463)
!488 = distinct !{!488, !459, !489, !263, !264, !490}
!489 = !DILocation(line: 391, column: 17, scope: !457)
!490 = !{!"llvm.loop.unswitch.partial.disable"}
!491 = !DILocation(line: 376, column: 25, scope: !452)
!492 = !DILocation(line: 376, column: 40, scope: !452)
!493 = distinct !{!493, !455, !494, !263, !264}
!494 = !DILocation(line: 392, column: 13, scope: !453)
!495 = !DILocation(line: 375, column: 21, scope: !447)
!496 = !DILocation(line: 375, column: 36, scope: !447)
!497 = distinct !{!497, !450, !498, !263, !264, !490}
!498 = !DILocation(line: 393, column: 9, scope: !448)
!499 = !DILocation(line: 374, column: 32, scope: !442)
!500 = distinct !{!500, !445, !501, !263, !264, !490}
!501 = !DILocation(line: 394, column: 5, scope: !443)
!502 = !DILocation(line: 396, column: 5, scope: !31)
!503 = !DILocation(line: 397, column: 1, scope: !31)
!504 = !DISubprogram(name: "fflush", scope: !505, file: !505, line: 218, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !508)
!505 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!506 = !DISubroutineType(types: !507)
!507 = !{!43, !36}
!508 = !{}
!509 = !DISubprogram(name: "fclose", scope: !505, file: !505, line: 213, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !508)
!510 = distinct !DISubprogram(name: "xrand", scope: !1, file: !1, line: 403, type: !511, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!4, !4, !4}
!513 = !{!514, !515, !516}
!514 = !DILocalVariable(name: "xl", arg: 1, scope: !510, file: !1, line: 403, type: !4)
!515 = !DILocalVariable(name: "xh", arg: 2, scope: !510, file: !1, line: 403, type: !4)
!516 = !DILocalVariable(name: "x", scope: !510, file: !1, line: 405, type: !4)
!517 = !DILocation(line: 0, scope: !510)
!518 = !DILocation(line: 407, column: 17, scope: !510)
!519 = !DILocation(line: 407, column: 35, scope: !510)
!520 = !DILocation(line: 407, column: 26, scope: !510)
!521 = !DILocation(line: 407, column: 23, scope: !510)
!522 = !DILocation(line: 407, column: 43, scope: !510)
!523 = !DILocation(line: 407, column: 11, scope: !510)
!524 = !DILocation(line: 408, column: 5, scope: !510)
!525 = !DISubprogram(name: "rand", scope: !526, file: !526, line: 453, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !508)
!526 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!527 = !DISubroutineType(types: !528)
!528 = !{!43}
