; ModuleID = 'assign.c'
source_filename = "assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BMatrix = type { i64, ptr, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, ptr, ptr }
%union.Entry = type { ptr }
%struct.Block = type { i64, i64, i64, i64, i64, i64, i64, double, ptr, ptr, ptr, ptr }

@opStats = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@BS = external local_unnamed_addr global i64, align 8
@P = external local_unnamed_addr global i64, align 8
@LB = external local_unnamed_addr global %struct.BMatrix, align 8
@scatter_decomposition = external local_unnamed_addr global i64, align 8
@seq_time = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !5
@seq_ops = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !8
@seq_misses = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !10

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @PDIV(i64 noundef %src_col, i64 noundef %src_nz, ptr nocapture noundef %ops, ptr nocapture noundef %misses, ptr nocapture noundef %runtime) local_unnamed_addr #0 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata i64 %src_col, metadata !25, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i64 %src_nz, metadata !26, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata ptr %ops, metadata !27, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata ptr %misses, metadata !28, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata ptr %runtime, metadata !29, metadata !DIExpression()), !dbg !34
  %mul = mul nsw i64 %src_nz, %src_col, !dbg !35
  %sub = add i64 %src_col, -1, !dbg !36
  %mul1 = mul nsw i64 %sub, %src_col, !dbg !37
  %div.neg = sdiv i64 %mul1, -2, !dbg !38
  %sub2 = add i64 %div.neg, %mul, !dbg !39
  call void @llvm.dbg.value(metadata i64 %sub2, metadata !30, metadata !DIExpression()), !dbg !34
  %conv = sitofp i64 %src_col to double, !dbg !40
  %add = add nsw i64 %src_col, 1, !dbg !41
  %conv4 = sitofp i64 %add to double, !dbg !42
  %mul5 = fmul double %conv, %conv4, !dbg !43
  %mul6 = shl nsw i64 %src_col, 1, !dbg !44
  %add7 = or i64 %mul6, 1, !dbg !45
  %conv8 = sitofp i64 %add7 to double, !dbg !46
  %mul9 = fmul double %mul5, %conv8, !dbg !47
  %div10 = fdiv double %mul9, 6.000000e+00, !dbg !48
  call void @llvm.dbg.value(metadata double %div10, metadata !32, metadata !DIExpression()), !dbg !34
  %mul14 = fmul double %conv, %conv, !dbg !49
  %sub15 = sub nsw i64 %src_nz, %src_col, !dbg !50
  %conv16 = sitofp i64 %sub15 to double, !dbg !51
  %0 = tail call double @llvm.fmuladd.f64(double %mul14, double %conv16, double %div10), !dbg !52
  call void @llvm.dbg.value(metadata double %0, metadata !32, metadata !DIExpression()), !dbg !34
  %1 = load double, ptr %ops, align 8, !dbg !53
  %add18 = fadd double %0, %1, !dbg !53
  store double %add18, ptr %ops, align 8, !dbg !53
  %2 = load i64, ptr @BS, align 8, !dbg !54
  %sub20 = add i64 %sub, %2, !dbg !55
  %div21 = sdiv i64 %sub20, %2, !dbg !56
  call void @llvm.dbg.value(metadata i64 %div21, metadata !31, metadata !DIExpression()), !dbg !34
  %conv22 = sitofp i64 %div21 to double, !dbg !57
  %mul23 = fmul double %conv22, 2.000000e+00, !dbg !58
  %div24 = fdiv double %mul23, 3.000000e+00, !dbg !59
  %conv25 = sitofp i64 %sub2 to double, !dbg !60
  %mul26 = fmul double %div24, %conv25, !dbg !61
  call void @llvm.dbg.value(metadata double %mul26, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load double, ptr %misses, align 8, !dbg !62
  %add27 = fadd double %3, %mul26, !dbg !62
  store double %add27, ptr %misses, align 8, !dbg !62
  %4 = tail call double @llvm.fmuladd.f64(double %mul26, double 4.740000e+00, double %0), !dbg !63
  %5 = load i64, ptr @BS, align 8, !dbg !63
  %conv29 = sitofp i64 %5 to double, !dbg !63
  %div30 = fdiv double 4.740000e+00, %conv29, !dbg !63
  %add31 = fadd double %div30, 1.000000e+00, !dbg !63
  %div32 = fdiv double %4, %add31, !dbg !63
  %6 = load double, ptr %runtime, align 8, !dbg !64
  %add33 = fadd double %6, %div32, !dbg !64
  store double %add33, ptr %runtime, align 8, !dbg !64
  ret void, !dbg !65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @PMOD(i64 noundef %src_col, i64 noundef %dest_col, i64 noundef %dest_nz, ptr nocapture noundef %ops, ptr nocapture noundef %misses, ptr nocapture noundef %runtime) local_unnamed_addr #0 !dbg !66 {
entry:
  call void @llvm.dbg.value(metadata i64 %src_col, metadata !70, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %dest_col, metadata !71, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %dest_nz, metadata !72, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %ops, metadata !73, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %misses, metadata !74, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %runtime, metadata !75, metadata !DIExpression()), !dbg !81
  %mul = mul nsw i64 %dest_nz, %dest_col, !dbg !82
  %sub = add i64 %dest_col, -1, !dbg !83
  %mul1 = mul nsw i64 %sub, %dest_col, !dbg !84
  %div.neg = sdiv i64 %mul1, -2, !dbg !85
  %sub2 = add i64 %div.neg, %mul, !dbg !86
  call void @llvm.dbg.value(metadata i64 %sub2, metadata !76, metadata !DIExpression()), !dbg !81
  %conv = sitofp i64 %src_col to double, !dbg !87
  %mul3 = fmul double %conv, 2.000000e+00, !dbg !88
  %conv4 = sitofp i64 %sub2 to double, !dbg !89
  %mul5 = fmul double %mul3, %conv4, !dbg !90
  call void @llvm.dbg.value(metadata double %mul5, metadata !79, metadata !DIExpression()), !dbg !81
  %0 = load double, ptr %ops, align 8, !dbg !91
  %add = fadd double %mul5, %0, !dbg !91
  store double %add, ptr %ops, align 8, !dbg !91
  %1 = load i64, ptr @BS, align 8, !dbg !92
  %add6 = add i64 %1, -1, !dbg !93
  %sub7 = add i64 %add6, %src_col, !dbg !94
  %div8 = sdiv i64 %sub7, %1, !dbg !95
  call void @llvm.dbg.value(metadata i64 %div8, metadata !77, metadata !DIExpression()), !dbg !81
  %sub10 = add i64 %sub, %1, !dbg !96
  %div11 = sdiv i64 %sub10, %1, !dbg !97
  call void @llvm.dbg.value(metadata i64 %div11, metadata !78, metadata !DIExpression()), !dbg !81
  %cmp = icmp eq i64 %div8, 1, !dbg !98
  %cmp13 = icmp eq i64 %div11, 1
  %or.cond = select i1 %cmp, i1 %cmp13, i1 false, !dbg !100
  br i1 %or.cond, label %if.then, label %if.else, !dbg !100

if.then:                                          ; preds = %entry
  %conv17 = sitofp i64 %dest_nz to double, !dbg !101
  %2 = tail call double @llvm.fmuladd.f64(double %conv, double %conv17, double %conv4), !dbg !102
  call void @llvm.dbg.value(metadata double %2, metadata !80, metadata !DIExpression()), !dbg !81
  br label %if.end, !dbg !103

if.else:                                          ; preds = %entry
  %conv21 = sitofp i64 %div11 to double, !dbg !104
  %mul24 = fmul double %conv, %conv21, !dbg !105
  %conv25 = sitofp i64 %dest_nz to double, !dbg !106
  %conv27 = sitofp i64 %div8 to double, !dbg !107
  %mul30 = fmul double %conv4, %conv27, !dbg !108
  %3 = tail call double @llvm.fmuladd.f64(double %mul24, double %conv25, double %mul30), !dbg !109
  call void @llvm.dbg.value(metadata double %3, metadata !80, metadata !DIExpression()), !dbg !81
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %this_misses.0 = phi double [ %2, %if.then ], [ %3, %if.else ], !dbg !110
  call void @llvm.dbg.value(metadata double %this_misses.0, metadata !80, metadata !DIExpression()), !dbg !81
  %4 = load double, ptr %misses, align 8, !dbg !111
  %add31 = fadd double %this_misses.0, %4, !dbg !111
  store double %add31, ptr %misses, align 8, !dbg !111
  %5 = tail call double @llvm.fmuladd.f64(double %this_misses.0, double 4.740000e+00, double %mul5), !dbg !112
  %6 = load i64, ptr @BS, align 8, !dbg !112
  %conv33 = sitofp i64 %6 to double, !dbg !112
  %div34 = fdiv double 4.740000e+00, %conv33, !dbg !112
  %add35 = fadd double %div34, 1.000000e+00, !dbg !112
  %div36 = fdiv double %5, %add35, !dbg !112
  %7 = load double, ptr %runtime, align 8, !dbg !113
  %add37 = fadd double %7, %div36, !dbg !113
  store double %add37, ptr %runtime, align 8, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @PADD(i64 noundef %cols, i64 noundef %rows, ptr nocapture noundef %misses, ptr nocapture noundef %runtime) local_unnamed_addr #0 !dbg !115 {
entry:
  call void @llvm.dbg.value(metadata i64 %cols, metadata !119, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 %rows, metadata !120, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata ptr %misses, metadata !121, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata ptr %runtime, metadata !122, metadata !DIExpression()), !dbg !124
  %mul = mul nsw i64 %rows, %cols, !dbg !125
  %sub = add nsw i64 %cols, -1, !dbg !126
  %mul1 = mul nsw i64 %sub, %cols, !dbg !127
  %div.neg = sdiv i64 %mul1, -2, !dbg !128
  %sub2 = add i64 %div.neg, %mul, !dbg !129
  %mul3 = shl nsw i64 %sub2, 1, !dbg !130
  %conv = sitofp i64 %mul3 to double, !dbg !131
  call void @llvm.dbg.value(metadata double %conv, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load double, ptr %misses, align 8, !dbg !132
  %add = fadd double %0, %conv, !dbg !132
  store double %add, ptr %misses, align 8, !dbg !132
  %1 = tail call double @llvm.fmuladd.f64(double %conv, double 4.740000e+00, double 0.000000e+00), !dbg !133
  %2 = load i64, ptr @BS, align 8, !dbg !133
  %conv5 = sitofp i64 %2 to double, !dbg !133
  %div6 = fdiv double 4.740000e+00, %conv5, !dbg !133
  %add7 = fadd double %div6, 1.000000e+00, !dbg !133
  %div8 = fdiv double %1, %add7, !dbg !133
  %3 = load double, ptr %runtime, align 8, !dbg !134
  %add9 = fadd double %3, %div8, !dbg !134
  store double %add9, ptr %runtime, align 8, !dbg !134
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AssignBlocksNow() local_unnamed_addr #2 !dbg !136 {
entry:
  %0 = load i64, ptr @P, align 8, !dbg !142
  %cmp = icmp eq i64 %0, 1, !dbg !144
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !145

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr @LB, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !141, metadata !DIExpression()), !dbg !146
  %cmp123 = icmp sgt i64 %1, 0, !dbg !147
  br i1 %cmp123, label %for.body.lr.ph, label %if.end13, !dbg !151

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8
  br label %for.body, !dbg !151

for.body:                                         ; preds = %for.body.lr.ph, %for.inc9
  %j.024 = phi i64 [ 0, %for.body.lr.ph ], [ %add11, %for.inc9 ]
  call void @llvm.dbg.value(metadata i64 %j.024, metadata !141, metadata !DIExpression()), !dbg !146
  %3 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !152
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %j.024, !dbg !154
  %4 = load i64, ptr %arrayidx, align 8, !dbg !154
  %tobool.not = icmp eq i64 %4, 0, !dbg !154
  br i1 %tobool.not, label %if.then2, label %for.inc9, !dbg !155

if.then2:                                         ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i64, ptr %2, i64 %j.024, !dbg !156
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !156
  call void @llvm.dbg.value(metadata i64 %5, metadata !140, metadata !DIExpression()), !dbg !146
  %add = add nsw i64 %j.024, 1
  %arrayidx5 = getelementptr inbounds i64, ptr %2, i64 %add
  call void @llvm.dbg.value(metadata i64 %5, metadata !140, metadata !DIExpression()), !dbg !146
  %6 = load i64, ptr %arrayidx5, align 8, !dbg !158
  %cmp621 = icmp slt i64 %5, %6, !dbg !160
  br i1 %cmp621, label %for.body7, label %for.inc9, !dbg !161

for.body7:                                        ; preds = %if.then2, %for.body7
  %i.022 = phi i64 [ %inc, %for.body7 ], [ %5, %if.then2 ]
  call void @llvm.dbg.value(metadata i64 %i.022, metadata !140, metadata !DIExpression()), !dbg !146
  %7 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !162
  %arrayidx8 = getelementptr inbounds %union.Entry, ptr %7, i64 %i.022, !dbg !162
  %8 = load ptr, ptr %arrayidx8, align 8, !dbg !162
  %owner = getelementptr inbounds %struct.Block, ptr %8, i64 0, i32 2, !dbg !163
  store i64 0, ptr %owner, align 8, !dbg !164
  %inc = add nsw i64 %i.022, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %inc, metadata !140, metadata !DIExpression()), !dbg !146
  %9 = load i64, ptr %arrayidx5, align 8, !dbg !158
  %cmp6 = icmp slt i64 %inc, %9, !dbg !160
  br i1 %cmp6, label %for.body7, label %for.inc9, !dbg !161, !llvm.loop !166

for.inc9:                                         ; preds = %for.body7, %if.then2, %for.body
  %10 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !170
  %arrayidx10 = getelementptr inbounds i64, ptr %10, i64 %j.024, !dbg !171
  %11 = load i64, ptr %arrayidx10, align 8, !dbg !171
  %add11 = add nsw i64 %11, %j.024, !dbg !172
  call void @llvm.dbg.value(metadata i64 %add11, metadata !141, metadata !DIExpression()), !dbg !146
  %cmp1 = icmp slt i64 %add11, %1, !dbg !147
  br i1 %cmp1, label %for.body, label %if.end13, !dbg !151, !llvm.loop !173

if.else:                                          ; preds = %entry
  tail call void @EmbedBlocks(), !dbg !175
  br label %if.end13

if.end13:                                         ; preds = %for.inc9, %for.cond.preheader, %if.else
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @EmbedBlocks() local_unnamed_addr #2 !dbg !178 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !180, metadata !DIExpression()), !dbg !182
  %0 = load i64, ptr @LB, align 8, !dbg !183
  %cmp22 = icmp sgt i64 %0, 0, !dbg !186
  br i1 %cmp22, label %for.body, label %for.end10, !dbg !187

for.body:                                         ; preds = %entry, %for.inc7
  %1 = phi i64 [ %11, %for.inc7 ], [ %0, %entry ]
  %j.023 = phi i64 [ %add9, %for.inc7 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %j.023, metadata !180, metadata !DIExpression()), !dbg !182
  %2 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !188
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %j.023, !dbg !190
  %3 = load i64, ptr %arrayidx, align 8, !dbg !190
  %tobool.not = icmp eq i64 %3, 0, !dbg !190
  br i1 %tobool.not, label %if.then, label %for.inc7, !dbg !191

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !192
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 %j.023, !dbg !195
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !195
  call void @llvm.dbg.value(metadata i64 %5, metadata !181, metadata !DIExpression()), !dbg !182
  %add = add nsw i64 %j.023, 1
  call void @llvm.dbg.value(metadata i64 %5, metadata !181, metadata !DIExpression()), !dbg !182
  %arrayidx319 = getelementptr inbounds i64, ptr %4, i64 %add, !dbg !196
  %6 = load i64, ptr %arrayidx319, align 8, !dbg !196
  %cmp420 = icmp slt i64 %5, %6, !dbg !198
  br i1 %cmp420, label %for.body5, label %for.inc7, !dbg !199

for.body5:                                        ; preds = %if.then, %for.body5
  %block.021 = phi i64 [ %inc, %for.body5 ], [ %5, %if.then ]
  call void @llvm.dbg.value(metadata i64 %block.021, metadata !181, metadata !DIExpression()), !dbg !182
  %call = tail call i64 @EmbeddedOwner(i64 noundef %block.021) #5, !dbg !200
  %7 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !202
  %arrayidx6 = getelementptr inbounds %union.Entry, ptr %7, i64 %block.021, !dbg !202
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !202
  %owner = getelementptr inbounds %struct.Block, ptr %8, i64 0, i32 2, !dbg !203
  store i64 %call, ptr %owner, align 8, !dbg !204
  %inc = add nsw i64 %block.021, 1, !dbg !205
  call void @llvm.dbg.value(metadata i64 %inc, metadata !181, metadata !DIExpression()), !dbg !182
  %9 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !206
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 %add, !dbg !196
  %10 = load i64, ptr %arrayidx3, align 8, !dbg !196
  %cmp4 = icmp slt i64 %inc, %10, !dbg !198
  br i1 %cmp4, label %for.body5, label %for.inc7.loopexit, !dbg !199, !llvm.loop !207

for.inc7.loopexit:                                ; preds = %for.body5
  %.pre = load i64, ptr @LB, align 8, !dbg !183
  br label %for.inc7, !dbg !209

for.inc7:                                         ; preds = %for.inc7.loopexit, %if.then, %for.body
  %11 = phi i64 [ %.pre, %for.inc7.loopexit ], [ %1, %if.then ], [ %1, %for.body ], !dbg !183
  %12 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !209
  %arrayidx8 = getelementptr inbounds i64, ptr %12, i64 %j.023, !dbg !210
  %13 = load i64, ptr %arrayidx8, align 8, !dbg !210
  %add9 = add nsw i64 %13, %j.023, !dbg !211
  call void @llvm.dbg.value(metadata i64 %add9, metadata !180, metadata !DIExpression()), !dbg !182
  %cmp = icmp slt i64 %add9, %11, !dbg !186
  br i1 %cmp, label %for.body, label %for.end10, !dbg !187, !llvm.loop !212

for.end10:                                        ; preds = %for.inc7, %entry
  store i64 1, ptr @scatter_decomposition, align 8, !dbg !214
  ret void, !dbg !215
}

declare !dbg !216 i64 @EmbeddedOwner(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "opStats", scope: !2, file: !3, line: 48, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "assign.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "3b72419ffa69286b79d8e890f2b05afc")
!4 = !{!0, !5, !8, !10}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "seq_time", scope: !2, file: !3, line: 49, type: !7, isLocal: false, isDefinition: true)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "seq_ops", scope: !2, file: !3, line: 49, type: !7, isLocal: false, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "seq_misses", scope: !2, file: !3, line: 49, type: !7, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!20 = distinct !DISubprogram(name: "PDIV", scope: !3, file: !3, line: 51, type: !21, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !23, !12, !12, !12}
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33}
!25 = !DILocalVariable(name: "src_col", arg: 1, scope: !20, file: !3, line: 51, type: !23)
!26 = !DILocalVariable(name: "src_nz", arg: 2, scope: !20, file: !3, line: 51, type: !23)
!27 = !DILocalVariable(name: "ops", arg: 3, scope: !20, file: !3, line: 51, type: !12)
!28 = !DILocalVariable(name: "misses", arg: 4, scope: !20, file: !3, line: 51, type: !12)
!29 = !DILocalVariable(name: "runtime", arg: 5, scope: !20, file: !3, line: 51, type: !12)
!30 = !DILocalVariable(name: "super_size", scope: !20, file: !3, line: 53, type: !23)
!31 = !DILocalVariable(name: "passes", scope: !20, file: !3, line: 53, type: !23)
!32 = !DILocalVariable(name: "this_ops", scope: !20, file: !3, line: 54, type: !7)
!33 = !DILocalVariable(name: "this_misses", scope: !20, file: !3, line: 54, type: !7)
!34 = !DILocation(line: 0, scope: !20)
!35 = !DILocation(line: 56, column: 23, scope: !20)
!36 = !DILocation(line: 56, column: 49, scope: !20)
!37 = !DILocation(line: 56, column: 40, scope: !20)
!38 = !DILocation(line: 56, column: 52, scope: !20)
!39 = !DILocation(line: 56, column: 31, scope: !20)
!40 = !DILocation(line: 57, column: 18, scope: !20)
!41 = !DILocation(line: 57, column: 34, scope: !20)
!42 = !DILocation(line: 57, column: 26, scope: !20)
!43 = !DILocation(line: 57, column: 25, scope: !20)
!44 = !DILocation(line: 57, column: 40, scope: !20)
!45 = !DILocation(line: 57, column: 48, scope: !20)
!46 = !DILocation(line: 57, column: 38, scope: !20)
!47 = !DILocation(line: 57, column: 37, scope: !20)
!48 = !DILocation(line: 57, column: 51, scope: !20)
!49 = !DILocation(line: 58, column: 26, scope: !20)
!50 = !DILocation(line: 58, column: 42, scope: !20)
!51 = !DILocation(line: 58, column: 35, scope: !20)
!52 = !DILocation(line: 58, column: 12, scope: !20)
!53 = !DILocation(line: 59, column: 8, scope: !20)
!54 = !DILocation(line: 61, column: 21, scope: !20)
!55 = !DILocation(line: 61, column: 23, scope: !20)
!56 = !DILocation(line: 61, column: 26, scope: !20)
!57 = !DILocation(line: 62, column: 21, scope: !20)
!58 = !DILocation(line: 62, column: 20, scope: !20)
!59 = !DILocation(line: 62, column: 27, scope: !20)
!60 = !DILocation(line: 62, column: 30, scope: !20)
!61 = !DILocation(line: 62, column: 29, scope: !20)
!62 = !DILocation(line: 63, column: 11, scope: !20)
!63 = !DILocation(line: 65, column: 15, scope: !20)
!64 = !DILocation(line: 65, column: 12, scope: !20)
!65 = !DILocation(line: 66, column: 1, scope: !20)
!66 = distinct !DISubprogram(name: "PMOD", scope: !3, file: !3, line: 69, type: !67, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !23, !23, !23, !12, !12, !12}
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!70 = !DILocalVariable(name: "src_col", arg: 1, scope: !66, file: !3, line: 69, type: !23)
!71 = !DILocalVariable(name: "dest_col", arg: 2, scope: !66, file: !3, line: 69, type: !23)
!72 = !DILocalVariable(name: "dest_nz", arg: 3, scope: !66, file: !3, line: 69, type: !23)
!73 = !DILocalVariable(name: "ops", arg: 4, scope: !66, file: !3, line: 69, type: !12)
!74 = !DILocalVariable(name: "misses", arg: 5, scope: !66, file: !3, line: 69, type: !12)
!75 = !DILocalVariable(name: "runtime", arg: 6, scope: !66, file: !3, line: 69, type: !12)
!76 = !DILocalVariable(name: "update_size", scope: !66, file: !3, line: 71, type: !23)
!77 = !DILocalVariable(name: "passes_src", scope: !66, file: !3, line: 71, type: !23)
!78 = !DILocalVariable(name: "passes_dest", scope: !66, file: !3, line: 71, type: !23)
!79 = !DILocalVariable(name: "this_ops", scope: !66, file: !3, line: 72, type: !7)
!80 = !DILocalVariable(name: "this_misses", scope: !66, file: !3, line: 72, type: !7)
!81 = !DILocation(line: 0, scope: !66)
!82 = !DILocation(line: 74, column: 25, scope: !66)
!83 = !DILocation(line: 74, column: 54, scope: !66)
!84 = !DILocation(line: 74, column: 44, scope: !66)
!85 = !DILocation(line: 74, column: 57, scope: !66)
!86 = !DILocation(line: 74, column: 34, scope: !66)
!87 = !DILocation(line: 75, column: 18, scope: !66)
!88 = !DILocation(line: 75, column: 17, scope: !66)
!89 = !DILocation(line: 75, column: 26, scope: !66)
!90 = !DILocation(line: 75, column: 25, scope: !66)
!91 = !DILocation(line: 76, column: 8, scope: !66)
!92 = !DILocation(line: 78, column: 25, scope: !66)
!93 = !DILocation(line: 78, column: 24, scope: !66)
!94 = !DILocation(line: 78, column: 27, scope: !66)
!95 = !DILocation(line: 78, column: 30, scope: !66)
!96 = !DILocation(line: 79, column: 30, scope: !66)
!97 = !DILocation(line: 79, column: 33, scope: !66)
!98 = !DILocation(line: 80, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !66, file: !3, line: 80, column: 7)
!100 = !DILocation(line: 80, column: 23, scope: !99)
!101 = !DILocation(line: 82, column: 31, scope: !99)
!102 = !DILocation(line: 82, column: 39, scope: !99)
!103 = !DILocation(line: 82, column: 5, scope: !99)
!104 = !DILocation(line: 84, column: 23, scope: !99)
!105 = !DILocation(line: 84, column: 34, scope: !99)
!106 = !DILocation(line: 84, column: 43, scope: !99)
!107 = !DILocation(line: 84, column: 57, scope: !99)
!108 = !DILocation(line: 84, column: 67, scope: !99)
!109 = !DILocation(line: 84, column: 51, scope: !99)
!110 = !DILocation(line: 0, scope: !99)
!111 = !DILocation(line: 85, column: 11, scope: !66)
!112 = !DILocation(line: 87, column: 15, scope: !66)
!113 = !DILocation(line: 87, column: 12, scope: !66)
!114 = !DILocation(line: 88, column: 1, scope: !66)
!115 = distinct !DISubprogram(name: "PADD", scope: !3, file: !3, line: 90, type: !116, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !23, !23, !12, !12}
!118 = !{!119, !120, !121, !122, !123}
!119 = !DILocalVariable(name: "cols", arg: 1, scope: !115, file: !3, line: 90, type: !23)
!120 = !DILocalVariable(name: "rows", arg: 2, scope: !115, file: !3, line: 90, type: !23)
!121 = !DILocalVariable(name: "misses", arg: 3, scope: !115, file: !3, line: 90, type: !12)
!122 = !DILocalVariable(name: "runtime", arg: 4, scope: !115, file: !3, line: 90, type: !12)
!123 = !DILocalVariable(name: "this_misses", scope: !115, file: !3, line: 92, type: !7)
!124 = !DILocation(line: 0, scope: !115)
!125 = !DILocation(line: 94, column: 24, scope: !115)
!126 = !DILocation(line: 94, column: 40, scope: !115)
!127 = !DILocation(line: 94, column: 34, scope: !115)
!128 = !DILocation(line: 94, column: 43, scope: !115)
!129 = !DILocation(line: 94, column: 29, scope: !115)
!130 = !DILocation(line: 94, column: 18, scope: !115)
!131 = !DILocation(line: 94, column: 17, scope: !115)
!132 = !DILocation(line: 95, column: 11, scope: !115)
!133 = !DILocation(line: 97, column: 15, scope: !115)
!134 = !DILocation(line: 97, column: 12, scope: !115)
!135 = !DILocation(line: 98, column: 1, scope: !115)
!136 = distinct !DISubprogram(name: "AssignBlocksNow", scope: !3, file: !3, line: 101, type: !137, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{null}
!139 = !{!140, !141}
!140 = !DILocalVariable(name: "i", scope: !136, file: !3, line: 103, type: !23)
!141 = !DILocalVariable(name: "j", scope: !136, file: !3, line: 103, type: !23)
!142 = !DILocation(line: 105, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !3, line: 105, column: 7)
!144 = !DILocation(line: 105, column: 9, scope: !143)
!145 = !DILocation(line: 105, column: 7, scope: !136)
!146 = !DILocation(line: 0, scope: !136)
!147 = !DILocation(line: 106, column: 16, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 106, column: 5)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 106, column: 5)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 105, column: 15)
!151 = !DILocation(line: 106, column: 5, scope: !149)
!152 = !DILocation(line: 107, column: 15, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !3, line: 107, column: 11)
!154 = !DILocation(line: 107, column: 12, scope: !153)
!155 = !DILocation(line: 107, column: 11, scope: !148)
!156 = !DILocation(line: 108, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 108, column: 2)
!158 = !DILocation(line: 108, column: 22, scope: !159)
!159 = distinct !DILexicalBlock(scope: !157, file: !3, line: 108, column: 2)
!160 = !DILocation(line: 108, column: 21, scope: !159)
!161 = !DILocation(line: 108, column: 2, scope: !157)
!162 = !DILocation(line: 109, column: 4, scope: !159)
!163 = !DILocation(line: 109, column: 14, scope: !159)
!164 = !DILocation(line: 109, column: 20, scope: !159)
!165 = !DILocation(line: 108, column: 36, scope: !159)
!166 = distinct !{!166, !161, !167, !168, !169}
!167 = !DILocation(line: 109, column: 22, scope: !157)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !DILocation(line: 106, column: 29, scope: !148)
!171 = !DILocation(line: 106, column: 26, scope: !148)
!172 = !DILocation(line: 106, column: 24, scope: !148)
!173 = distinct !{!173, !151, !174, !168, !169}
!174 = !DILocation(line: 109, column: 22, scope: !149)
!175 = !DILocation(line: 111, column: 5, scope: !176)
!176 = distinct !DILexicalBlock(scope: !143, file: !3, line: 110, column: 10)
!177 = !DILocation(line: 113, column: 1, scope: !136)
!178 = distinct !DISubprogram(name: "EmbedBlocks", scope: !3, file: !3, line: 116, type: !137, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!179 = !{!180, !181}
!180 = !DILocalVariable(name: "j", scope: !178, file: !3, line: 118, type: !23)
!181 = !DILocalVariable(name: "block", scope: !178, file: !3, line: 118, type: !23)
!182 = !DILocation(line: 0, scope: !178)
!183 = !DILocation(line: 123, column: 18, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 123, column: 3)
!185 = distinct !DILexicalBlock(scope: !178, file: !3, line: 123, column: 3)
!186 = !DILocation(line: 123, column: 14, scope: !184)
!187 = !DILocation(line: 123, column: 3, scope: !185)
!188 = !DILocation(line: 124, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !3, line: 124, column: 9)
!190 = !DILocation(line: 124, column: 10, scope: !189)
!191 = !DILocation(line: 124, column: 9, scope: !184)
!192 = !DILocation(line: 125, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 125, column: 7)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 124, column: 24)
!195 = !DILocation(line: 125, column: 18, scope: !193)
!196 = !DILocation(line: 125, column: 35, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 125, column: 7)
!198 = !DILocation(line: 125, column: 34, scope: !197)
!199 = !DILocation(line: 125, column: 7, scope: !193)
!200 = !DILocation(line: 126, column: 24, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 125, column: 57)
!202 = !DILocation(line: 126, column: 2, scope: !201)
!203 = !DILocation(line: 126, column: 16, scope: !201)
!204 = !DILocation(line: 126, column: 22, scope: !201)
!205 = !DILocation(line: 125, column: 53, scope: !197)
!206 = !DILocation(line: 125, column: 38, scope: !197)
!207 = distinct !{!207, !199, !208, !168, !169}
!208 = !DILocation(line: 127, column: 7, scope: !193)
!209 = !DILocation(line: 123, column: 27, scope: !184)
!210 = !DILocation(line: 123, column: 24, scope: !184)
!211 = !DILocation(line: 123, column: 22, scope: !184)
!212 = distinct !{!212, !187, !213, !168, !169}
!213 = !DILocation(line: 128, column: 5, scope: !185)
!214 = !DILocation(line: 130, column: 25, scope: !178)
!215 = !DILocation(line: 131, column: 1, scope: !178)
!216 = !DISubprogram(name: "EmbeddedOwner", scope: !217, file: !217, line: 191, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !220)
!217 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!218 = !DISubroutineType(types: !219)
!219 = !{!23, !23}
!220 = !{}
