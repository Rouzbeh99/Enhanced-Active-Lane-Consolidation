; ModuleID = 'tree.c'
source_filename = "tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMatrix = type { i64, i64, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [46 x i8] c"%ld supers, %4.2f nodes/super, %ld max super\0A\00", align 1
@firstchild = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@child = dso_local local_unnamed_addr global ptr null, align 8, !dbg !9
@work_tree = dso_local local_unnamed_addr global ptr null, align 8, !dbg !11

; Function Attrs: noinline nounwind uwtable
define dso_local void @EliminationTreeFromA(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %A, ptr nocapture noundef writeonly %T, ptr nocapture noundef readonly %P, ptr nocapture noundef readonly %INVP) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.declare(metadata ptr %A, metadata !35, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata ptr %T, metadata !36, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata ptr %P, metadata !37, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !38, metadata !DIExpression()), !dbg !48
  %0 = load i64, ptr %A, align 8, !dbg !49
  %add = shl i64 %0, 3, !dbg !50
  %mul = add i64 %add, 8, !dbg !50
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8, !dbg !51
  call void @llvm.dbg.value(metadata ptr %call, metadata !39, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 0, metadata !40, metadata !DIExpression()), !dbg !48
  %cmp.not76 = icmp slt i64 %0, 0, !dbg !52
  br i1 %cmp.not76, label %for.end42, label %for.body, !dbg !55

for.cond4.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !43, metadata !DIExpression()), !dbg !48
  %cmp684 = icmp sgt i64 %0, 0, !dbg !56
  br i1 %cmp684, label %for.body7.lr.ph, label %for.end42, !dbg !59

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %col = getelementptr inbounds %struct.SMatrix, ptr %A, i64 0, i32 2
  %1 = load ptr, ptr %col, align 8
  %row = getelementptr inbounds %struct.SMatrix, ptr %A, i64 0, i32 4
  %2 = load ptr, ptr %row, align 8
  br label %for.body7, !dbg !59

for.body:                                         ; preds = %entry, %for.body
  %i.077 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.077, metadata !40, metadata !DIExpression()), !dbg !48
  %arrayidx = getelementptr inbounds i64, ptr %call, i64 %i.077, !dbg !60
  store i64 %0, ptr %arrayidx, align 8, !dbg !61
  %arrayidx3 = getelementptr inbounds i64, ptr %T, i64 %i.077, !dbg !62
  store i64 %0, ptr %arrayidx3, align 8, !dbg !63
  %inc = add nuw i64 %i.077, 1, !dbg !64
  call void @llvm.dbg.value(metadata i64 %inc, metadata !40, metadata !DIExpression()), !dbg !48
  %exitcond.not = icmp eq i64 %i.077, %0, !dbg !52
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.body, !dbg !55, !llvm.loop !65

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc40
  %j.085 = phi i64 [ 0, %for.body7.lr.ph ], [ %inc41, %for.inc40 ]
  call void @llvm.dbg.value(metadata i64 %j.085, metadata !43, metadata !DIExpression()), !dbg !48
  %arrayidx8 = getelementptr inbounds i64, ptr %P, i64 %j.085, !dbg !69
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !69
  call void @llvm.dbg.value(metadata i64 %3, metadata !41, metadata !DIExpression()), !dbg !48
  %arrayidx9 = getelementptr inbounds i64, ptr %1, i64 %3, !dbg !71
  %4 = load i64, ptr %arrayidx9, align 8, !dbg !71
  call void @llvm.dbg.value(metadata i64 %4, metadata !40, metadata !DIExpression()), !dbg !48
  %add12 = add nsw i64 %3, 1
  %arrayidx13 = getelementptr inbounds i64, ptr %1, i64 %add12
  %5 = load i64, ptr %arrayidx13, align 8, !dbg !73
  %cmp1482 = icmp slt i64 %4, %5, !dbg !75
  br i1 %cmp1482, label %for.body15, label %for.inc40, !dbg !76

for.body15:                                       ; preds = %for.body7, %for.inc37
  %i.183 = phi i64 [ %inc38, %for.inc37 ], [ %4, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %i.183, metadata !40, metadata !DIExpression()), !dbg !48
  %arrayidx16 = getelementptr inbounds i64, ptr %2, i64 %i.183, !dbg !77
  %6 = load i64, ptr %arrayidx16, align 8, !dbg !77
  %arrayidx17 = getelementptr inbounds i64, ptr %INVP, i64 %6, !dbg !79
  %7 = load i64, ptr %arrayidx17, align 8, !dbg !79
  call void @llvm.dbg.value(metadata i64 %7, metadata !42, metadata !DIExpression()), !dbg !48
  %cmp18 = icmp slt i64 %7, %j.085, !dbg !80
  br i1 %cmp18, label %for.cond19, label %for.inc37, !dbg !82

for.cond19:                                       ; preds = %for.body15, %for.cond19
  %r.0 = phi i64 [ %8, %for.cond19 ], [ %7, %for.body15 ], !dbg !83
  call void @llvm.dbg.value(metadata i64 %r.0, metadata !44, metadata !DIExpression()), !dbg !48
  %arrayidx20 = getelementptr inbounds i64, ptr %call, i64 %r.0, !dbg !86
  %8 = load i64, ptr %arrayidx20, align 8, !dbg !86
  %cmp22.not = icmp eq i64 %8, %0, !dbg !88
  br i1 %cmp22.not, label %for.end26, label %for.cond19, !dbg !89, !llvm.loop !90

for.end26:                                        ; preds = %for.cond19
  %cmp27.not = icmp eq i64 %r.0, %j.085, !dbg !92
  br i1 %cmp27.not, label %if.end, label %if.then28, !dbg !94

if.then28:                                        ; preds = %for.end26
  %arrayidx20.le = getelementptr inbounds i64, ptr %call, i64 %r.0, !dbg !86
  call void @llvm.dbg.value(metadata i64 %j.085, metadata !46, metadata !DIExpression()), !dbg !48
  store i64 %j.085, ptr %arrayidx20.le, align 8, !dbg !95
  %arrayidx30 = getelementptr inbounds i64, ptr %T, i64 %r.0, !dbg !96
  store i64 %j.085, ptr %arrayidx30, align 8, !dbg !97
  br label %if.end, !dbg !96

if.end:                                           ; preds = %for.end26, %if.then28
  call void @llvm.dbg.value(metadata i64 %j.085, metadata !46, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 %7, metadata !44, metadata !DIExpression()), !dbg !48
  %arrayidx3179 = getelementptr inbounds i64, ptr %call, i64 %7, !dbg !98
  %9 = load i64, ptr %arrayidx3179, align 8, !dbg !98
  %cmp33.not80 = icmp eq i64 %9, %0, !dbg !99
  br i1 %cmp33.not80, label %for.inc37, label %while.body, !dbg !100

while.body:                                       ; preds = %if.end, %while.body
  %10 = phi i64 [ %11, %while.body ], [ %9, %if.end ]
  %arrayidx3181 = phi ptr [ %arrayidx31, %while.body ], [ %arrayidx3179, %if.end ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !45, metadata !DIExpression()), !dbg !48
  store i64 %j.085, ptr %arrayidx3181, align 8, !dbg !101
  call void @llvm.dbg.value(metadata i64 %10, metadata !44, metadata !DIExpression()), !dbg !48
  %arrayidx31 = getelementptr inbounds i64, ptr %call, i64 %10, !dbg !98
  %11 = load i64, ptr %arrayidx31, align 8, !dbg !98
  %cmp33.not = icmp eq i64 %11, %0, !dbg !99
  br i1 %cmp33.not, label %for.inc37, label %while.body, !dbg !100, !llvm.loop !103

for.inc37:                                        ; preds = %while.body, %if.end, %for.body15
  %inc38 = add nsw i64 %i.183, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %inc38, metadata !40, metadata !DIExpression()), !dbg !48
  %12 = load i64, ptr %arrayidx13, align 8, !dbg !73
  %cmp14 = icmp slt i64 %inc38, %12, !dbg !75
  br i1 %cmp14, label %for.body15, label %for.inc40, !dbg !76, !llvm.loop !106

for.inc40:                                        ; preds = %for.inc37, %for.body7
  %inc41 = add nuw nsw i64 %j.085, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %inc41, metadata !43, metadata !DIExpression()), !dbg !48
  %exitcond87.not = icmp eq i64 %inc41, %0, !dbg !56
  br i1 %exitcond87.not, label %for.end42, label %for.body7, !dbg !59, !llvm.loop !109

for.end42:                                        ; preds = %for.inc40, %entry, %for.cond4.preheader
  tail call void @free(ptr noundef %call) #9, !dbg !111
  ret void, !dbg !112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ParentToChild(ptr nocapture noundef readonly %T, i64 noundef %n, ptr nocapture noundef %firstchild, ptr nocapture noundef writeonly %child) local_unnamed_addr #0 !dbg !113 {
entry:
  call void @llvm.dbg.value(metadata ptr %T, metadata !117, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %n, metadata !118, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %firstchild, metadata !119, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %child, metadata !120, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !124, metadata !DIExpression()), !dbg !126
  %add = add i64 %n, 1, !dbg !127
  %mul = shl i64 %add, 3, !dbg !128
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8, !dbg !129
  call void @llvm.dbg.value(metadata ptr %call, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !121, metadata !DIExpression()), !dbg !126
  %cmp.not57 = icmp slt i64 %n, 0, !dbg !130
  br i1 %cmp.not57, label %for.end23, label %for.body4.preheader, !dbg !133

for.body4.preheader:                              ; preds = %entry
  %0 = shl i64 %n, 3, !dbg !133
  %1 = add i64 %0, 8, !dbg !133
  call void @llvm.memset.p0.i64(ptr align 8 %call, i8 -1, i64 %1, i1 false), !dbg !134
  call void @llvm.memset.p0.i64(ptr align 8 %firstchild, i8 -1, i64 %1, i1 false), !dbg !135
  call void @llvm.dbg.value(metadata i64 %n, metadata !121, metadata !DIExpression()), !dbg !126
  br label %for.body4, !dbg !136

for.cond12.preheader:                             ; preds = %for.inc10
  call void @llvm.dbg.value(metadata i64 0, metadata !121, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !124, metadata !DIExpression()), !dbg !126
  br i1 %cmp.not57, label %for.end23, label %for.body14, !dbg !138

for.body4:                                        ; preds = %for.body4.preheader, %for.inc10
  %i.160 = phi i64 [ %dec, %for.inc10 ], [ %n, %for.body4.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.160, metadata !121, metadata !DIExpression()), !dbg !126
  %arrayidx5 = getelementptr inbounds i64, ptr %T, i64 %i.160, !dbg !140
  %2 = load i64, ptr %arrayidx5, align 8, !dbg !140
  call void @llvm.dbg.value(metadata i64 %2, metadata !123, metadata !DIExpression()), !dbg !126
  %cmp6.not = icmp eq i64 %2, %i.160, !dbg !143
  br i1 %cmp6.not, label %for.inc10, label %if.then, !dbg !145

if.then:                                          ; preds = %for.body4
  %arrayidx7 = getelementptr inbounds i64, ptr %firstchild, i64 %2, !dbg !146
  %3 = load i64, ptr %arrayidx7, align 8, !dbg !146
  %arrayidx8 = getelementptr inbounds i64, ptr %call, i64 %i.160, !dbg !148
  store i64 %3, ptr %arrayidx8, align 8, !dbg !149
  store i64 %i.160, ptr %arrayidx7, align 8, !dbg !150
  br label %for.inc10, !dbg !151

for.inc10:                                        ; preds = %for.body4, %if.then
  %dec = add nsw i64 %i.160, -1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %dec, metadata !121, metadata !DIExpression()), !dbg !126
  %cmp3 = icmp sgt i64 %i.160, 0, !dbg !153
  br i1 %cmp3, label %for.body4, label %for.cond12.preheader, !dbg !136, !llvm.loop !154

for.body14:                                       ; preds = %for.cond12.preheader, %for.inc21
  %i.267 = phi i64 [ %inc22, %for.inc21 ], [ 0, %for.cond12.preheader ]
  %count.066 = phi i64 [ %count.1.lcssa, %for.inc21 ], [ 0, %for.cond12.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.267, metadata !121, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %count.066, metadata !124, metadata !DIExpression()), !dbg !126
  %arrayidx15 = getelementptr inbounds i64, ptr %firstchild, i64 %i.267, !dbg !156
  %4 = load i64, ptr %arrayidx15, align 8, !dbg !156
  call void @llvm.dbg.value(metadata i64 %4, metadata !122, metadata !DIExpression()), !dbg !126
  store i64 %count.066, ptr %arrayidx15, align 8, !dbg !159
  %cmp17.not62 = icmp eq i64 %4, -1, !dbg !160
  br i1 %cmp17.not62, label %for.inc21, label %while.body, !dbg !161

while.body:                                       ; preds = %for.body14, %while.body
  %count.164 = phi i64 [ %inc18, %while.body ], [ %count.066, %for.body14 ]
  %k.063 = phi i64 [ %5, %while.body ], [ %4, %for.body14 ]
  call void @llvm.dbg.value(metadata i64 %count.164, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %k.063, metadata !122, metadata !DIExpression()), !dbg !126
  %inc18 = add nsw i64 %count.164, 1, !dbg !162
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !124, metadata !DIExpression()), !dbg !126
  %arrayidx19 = getelementptr inbounds i64, ptr %child, i64 %count.164, !dbg !164
  store i64 %k.063, ptr %arrayidx19, align 8, !dbg !165
  %arrayidx20 = getelementptr inbounds i64, ptr %call, i64 %k.063, !dbg !166
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !166
  call void @llvm.dbg.value(metadata i64 %5, metadata !122, metadata !DIExpression()), !dbg !126
  %cmp17.not = icmp eq i64 %5, -1, !dbg !160
  br i1 %cmp17.not, label %for.inc21, label %while.body, !dbg !161, !llvm.loop !167

for.inc21:                                        ; preds = %while.body, %for.body14
  %count.1.lcssa = phi i64 [ %count.066, %for.body14 ], [ %inc18, %while.body ], !dbg !126
  %inc22 = add nuw i64 %i.267, 1, !dbg !169
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !121, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %count.1.lcssa, metadata !124, metadata !DIExpression()), !dbg !126
  %exitcond.not = icmp eq i64 %i.267, %n, !dbg !170
  br i1 %exitcond.not, label %for.end23, label %for.body14, !dbg !138, !llvm.loop !171

for.end23:                                        ; preds = %for.inc21, %entry, %for.cond12.preheader
  %count.0.lcssa = phi i64 [ 0, %for.cond12.preheader ], [ 0, %entry ], [ %count.1.lcssa, %for.inc21 ], !dbg !173
  %arrayidx25 = getelementptr inbounds i64, ptr %firstchild, i64 %add, !dbg !174
  store i64 %count.0.lcssa, ptr %arrayidx25, align 8, !dbg !175
  tail call void @free(ptr noundef %call) #9, !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ComputeNZ(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %A, ptr nocapture noundef readonly %T, ptr nocapture noundef %nz, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP) local_unnamed_addr #0 !dbg !178 {
entry:
  call void @llvm.dbg.declare(metadata ptr %A, metadata !182, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata ptr %T, metadata !183, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %nz, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !185, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !186, metadata !DIExpression()), !dbg !194
  %0 = load i64, ptr %A, align 8, !dbg !195
  %mul = shl i64 %0, 3, !dbg !196
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8, !dbg !197
  call void @llvm.dbg.value(metadata ptr %call, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i64 0, metadata !187, metadata !DIExpression()), !dbg !194
  %cmp52 = icmp sgt i64 %0, 0, !dbg !198
  br i1 %cmp52, label %for.body, label %for.end.thread, !dbg !201

for.end.thread:                                   ; preds = %entry
  %arrayidx367 = getelementptr inbounds i64, ptr %nz, i64 %0, !dbg !202
  store i64 0, ptr %arrayidx367, align 8, !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !187, metadata !DIExpression()), !dbg !194
  br label %for.end30, !dbg !204

for.body:                                         ; preds = %entry, %for.body
  %i.053 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.053, metadata !187, metadata !DIExpression()), !dbg !194
  %arrayidx = getelementptr inbounds i64, ptr %nz, i64 %i.053, !dbg !206
  store i64 1, ptr %arrayidx, align 8, !dbg !207
  %inc = add nuw nsw i64 %i.053, 1, !dbg !208
  call void @llvm.dbg.value(metadata i64 %inc, metadata !187, metadata !DIExpression()), !dbg !194
  %exitcond.not = icmp eq i64 %inc, %0, !dbg !198
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !201, !llvm.loop !209

for.end:                                          ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i64, ptr %nz, i64 %0, !dbg !202
  store i64 0, ptr %arrayidx3, align 8, !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !187, metadata !DIExpression()), !dbg !194
  br i1 %cmp52, label %for.body7.lr.ph, label %for.end30, !dbg !204

for.body7.lr.ph:                                  ; preds = %for.end
  %col = getelementptr inbounds %struct.SMatrix, ptr %A, i64 0, i32 2
  %1 = load ptr, ptr %col, align 8
  %row = getelementptr inbounds %struct.SMatrix, ptr %A, i64 0, i32 4
  %2 = load ptr, ptr %row, align 8
  br label %for.body7, !dbg !204

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc28
  %i.164 = phi i64 [ 0, %for.body7.lr.ph ], [ %inc29, %for.inc28 ]
  call void @llvm.dbg.value(metadata i64 %i.164, metadata !187, metadata !DIExpression()), !dbg !194
  %arrayidx8 = getelementptr inbounds i64, ptr %PERM, i64 %i.164, !dbg !211
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !211
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()), !dbg !194
  %arrayidx9 = getelementptr inbounds i64, ptr %call, i64 %i.164, !dbg !214
  store i64 -1, ptr %arrayidx9, align 8, !dbg !215
  %arrayidx10 = getelementptr inbounds i64, ptr %1, i64 %3, !dbg !216
  %4 = load i64, ptr %arrayidx10, align 8, !dbg !216
  call void @llvm.dbg.value(metadata i64 %4, metadata !188, metadata !DIExpression()), !dbg !194
  %add = add nsw i64 %3, 1
  %arrayidx13 = getelementptr inbounds i64, ptr %1, i64 %add
  %5 = load i64, ptr %arrayidx13, align 8, !dbg !218
  %cmp1461 = icmp slt i64 %4, %5, !dbg !220
  br i1 %cmp1461, label %for.body15, label %for.inc28, !dbg !221

for.body15:                                       ; preds = %for.body7, %for.inc25
  %6 = phi i64 [ %11, %for.inc25 ], [ %5, %for.body7 ]
  %j.062 = phi i64 [ %inc26, %for.inc25 ], [ %4, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %j.062, metadata !188, metadata !DIExpression()), !dbg !194
  %arrayidx16 = getelementptr inbounds i64, ptr %2, i64 %j.062, !dbg !222
  %7 = load i64, ptr %arrayidx16, align 8, !dbg !222
  %arrayidx17 = getelementptr inbounds i64, ptr %INVP, i64 %7, !dbg !224
  call void @llvm.dbg.value(metadata i64 undef, metadata !190, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i64 undef, metadata !191, metadata !DIExpression()), !dbg !194
  %k.054 = load i64, ptr %arrayidx17, align 8, !dbg !225
  call void @llvm.dbg.value(metadata i64 %k.054, metadata !191, metadata !DIExpression()), !dbg !194
  %arrayidx1855 = getelementptr inbounds i64, ptr %call, i64 %k.054, !dbg !226
  %8 = load i64, ptr %arrayidx1855, align 8, !dbg !226
  %cmp19.not56 = icmp ne i64 %8, %i.164, !dbg !227
  %cmp2057 = icmp slt i64 %k.054, %i.164
  %or.cond58 = select i1 %cmp19.not56, i1 %cmp2057, i1 false, !dbg !228
  br i1 %or.cond58, label %while.body, label %for.inc25, !dbg !228

while.body:                                       ; preds = %for.body15, %while.body
  %arrayidx1860 = phi ptr [ %arrayidx18, %while.body ], [ %arrayidx1855, %for.body15 ]
  %k.059 = phi i64 [ %k.0, %while.body ], [ %k.054, %for.body15 ]
  %arrayidx21 = getelementptr inbounds i64, ptr %nz, i64 %k.059, !dbg !229
  %9 = load i64, ptr %arrayidx21, align 8, !dbg !231
  %inc22 = add nsw i64 %9, 1, !dbg !231
  store i64 %inc22, ptr %arrayidx21, align 8, !dbg !231
  store i64 %i.164, ptr %arrayidx1860, align 8, !dbg !232
  %arrayidx24 = getelementptr inbounds i64, ptr %T, i64 %k.059, !dbg !233
  call void @llvm.dbg.value(metadata i64 undef, metadata !191, metadata !DIExpression()), !dbg !194
  %k.0 = load i64, ptr %arrayidx24, align 8, !dbg !225
  call void @llvm.dbg.value(metadata i64 %k.0, metadata !191, metadata !DIExpression()), !dbg !194
  %arrayidx18 = getelementptr inbounds i64, ptr %call, i64 %k.0, !dbg !226
  %10 = load i64, ptr %arrayidx18, align 8, !dbg !226
  %cmp19.not = icmp ne i64 %10, %i.164, !dbg !227
  %cmp20 = icmp slt i64 %k.0, %i.164
  %or.cond = select i1 %cmp19.not, i1 %cmp20, i1 false, !dbg !228
  br i1 %or.cond, label %while.body, label %for.inc25.loopexit, !dbg !228, !llvm.loop !234

for.inc25.loopexit:                               ; preds = %while.body
  %.pre = load i64, ptr %arrayidx13, align 8, !dbg !218
  br label %for.inc25, !dbg !237

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body15
  %11 = phi i64 [ %.pre, %for.inc25.loopexit ], [ %6, %for.body15 ], !dbg !218
  %inc26 = add nsw i64 %j.062, 1, !dbg !237
  call void @llvm.dbg.value(metadata i64 %inc26, metadata !188, metadata !DIExpression()), !dbg !194
  %cmp14 = icmp slt i64 %inc26, %11, !dbg !220
  br i1 %cmp14, label %for.body15, label %for.inc28, !dbg !221, !llvm.loop !238

for.inc28:                                        ; preds = %for.inc25, %for.body7
  %inc29 = add nuw nsw i64 %i.164, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %inc29, metadata !187, metadata !DIExpression()), !dbg !194
  %exitcond66.not = icmp eq i64 %inc29, %0, !dbg !241
  br i1 %exitcond66.not, label %for.end30, label %for.body7, !dbg !204, !llvm.loop !242

for.end30:                                        ; preds = %for.inc28, %for.end.thread, %for.end
  tail call void @free(ptr noundef %call) #9, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindSupernodes(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %A, ptr nocapture noundef readonly %T, ptr nocapture noundef readonly %nz, ptr nocapture noundef writeonly %node) local_unnamed_addr #0 !dbg !246 {
entry:
  call void @llvm.dbg.declare(metadata ptr %A, metadata !248, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata ptr %T, metadata !249, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %nz, metadata !250, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %node, metadata !251, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 0, metadata !257, metadata !DIExpression()), !dbg !259
  %0 = load i64, ptr %A, align 8, !dbg !260
  %add = shl i64 %0, 3, !dbg !261
  %mul = add i64 %add, 8, !dbg !261
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8, !dbg !262
  call void @llvm.dbg.value(metadata ptr %call, metadata !253, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 0, metadata !252, metadata !DIExpression()), !dbg !259
  %cmp.not82 = icmp slt i64 %0, 0, !dbg !263
  br i1 %cmp.not82, label %for.end36, label %for.cond2.preheader, !dbg !266

for.cond2.preheader:                              ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %call, i8 0, i64 %mul, i1 false), !dbg !267
  call void @llvm.dbg.value(metadata i64 0, metadata !252, metadata !DIExpression()), !dbg !259
  %cmp484.not = icmp eq i64 %0, 0, !dbg !268
  br i1 %cmp484.not, label %for.end36, label %for.body5, !dbg !271

for.cond12.preheader:                             ; preds = %for.body5
  call void @llvm.dbg.value(metadata i64 0, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 1, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 0, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 1, metadata !254, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 1, metadata !252, metadata !DIExpression()), !dbg !259
  %cmp1486 = icmp sgt i64 %0, 1, !dbg !272
  br i1 %cmp1486, label %for.body15, label %for.end36, !dbg !275

for.body5:                                        ; preds = %for.cond2.preheader, %for.body5
  %i.185 = phi i64 [ %inc10, %for.body5 ], [ 0, %for.cond2.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.185, metadata !252, metadata !DIExpression()), !dbg !259
  %arrayidx6 = getelementptr inbounds i64, ptr %T, i64 %i.185, !dbg !276
  %1 = load i64, ptr %arrayidx6, align 8, !dbg !276
  %arrayidx7 = getelementptr inbounds i64, ptr %call, i64 %1, !dbg !277
  %2 = load i64, ptr %arrayidx7, align 8, !dbg !278
  %inc8 = add nsw i64 %2, 1, !dbg !278
  store i64 %inc8, ptr %arrayidx7, align 8, !dbg !278
  %inc10 = add nuw nsw i64 %i.185, 1, !dbg !279
  call void @llvm.dbg.value(metadata i64 %inc10, metadata !252, metadata !DIExpression()), !dbg !259
  %exitcond.not = icmp eq i64 %inc10, %0, !dbg !268
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.body5, !dbg !271, !llvm.loop !280

for.body15:                                       ; preds = %for.cond12.preheader, %for.inc34
  %max_super.093 = phi i64 [ %max_super.2, %for.inc34 ], [ 0, %for.cond12.preheader ]
  %size.092 = phi i64 [ %size.1, %for.inc34 ], [ 1, %for.cond12.preheader ]
  %current.091 = phi i64 [ %current.1, %for.inc34 ], [ 0, %for.cond12.preheader ]
  %supers.090 = phi i64 [ %supers.1, %for.inc34 ], [ 1, %for.cond12.preheader ]
  %i.287 = phi i64 [ %inc35, %for.inc34 ], [ 1, %for.cond12.preheader ]
  call void @llvm.dbg.value(metadata i64 %max_super.093, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %size.092, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %current.091, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %supers.090, metadata !254, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %i.287, metadata !252, metadata !DIExpression()), !dbg !259
  %arrayidx16 = getelementptr inbounds i64, ptr %nz, i64 %i.287, !dbg !282
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !282
  %sub = add nsw i64 %i.287, -1, !dbg !285
  %arrayidx17 = getelementptr inbounds i64, ptr %nz, i64 %sub, !dbg !286
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !286
  %sub18 = add nsw i64 %4, -1, !dbg !287
  %cmp19 = icmp eq i64 %3, %sub18, !dbg !288
  br i1 %cmp19, label %land.lhs.true, label %if.else, !dbg !289

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx21 = getelementptr inbounds i64, ptr %T, i64 %sub, !dbg !290
  %5 = load i64, ptr %arrayidx21, align 8, !dbg !290
  %cmp22 = icmp eq i64 %5, %i.287, !dbg !291
  br i1 %cmp22, label %land.lhs.true23, label %if.else, !dbg !292

land.lhs.true23:                                  ; preds = %land.lhs.true
  %arrayidx24 = getelementptr inbounds i64, ptr %call, i64 %i.287, !dbg !293
  %6 = load i64, ptr %arrayidx24, align 8, !dbg !293
  %cmp25 = icmp eq i64 %6, 1, !dbg !294
  br i1 %cmp25, label %if.then, label %if.else, !dbg !295

if.then:                                          ; preds = %land.lhs.true23
  %sub26 = sub nsw i64 %current.091, %i.287, !dbg !296
  %arrayidx27 = getelementptr inbounds i64, ptr %node, i64 %i.287, !dbg !298
  store i64 %sub26, ptr %arrayidx27, align 8, !dbg !299
  %inc28 = add nsw i64 %size.092, 1, !dbg !300
  call void @llvm.dbg.value(metadata i64 %inc28, metadata !256, metadata !DIExpression()), !dbg !259
  br label %for.inc34, !dbg !301

if.else:                                          ; preds = %land.lhs.true23, %land.lhs.true, %for.body15
  %arrayidx29 = getelementptr inbounds i64, ptr %node, i64 %current.091, !dbg !302
  store i64 %size.092, ptr %arrayidx29, align 8, !dbg !304
  %7 = tail call i64 @llvm.smax.i64(i64 %size.092, i64 %max_super.093), !dbg !305
  call void @llvm.dbg.value(metadata i64 %7, metadata !257, metadata !DIExpression()), !dbg !259
  %inc32 = add nsw i64 %supers.090, 1, !dbg !306
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !254, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %i.287, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 1, metadata !256, metadata !DIExpression()), !dbg !259
  br label %for.inc34

for.inc34:                                        ; preds = %if.then, %if.else
  %supers.1 = phi i64 [ %supers.090, %if.then ], [ %inc32, %if.else ], !dbg !259
  %current.1 = phi i64 [ %current.091, %if.then ], [ %i.287, %if.else ], !dbg !259
  %size.1 = phi i64 [ %inc28, %if.then ], [ 1, %if.else ], !dbg !307
  %max_super.2 = phi i64 [ %max_super.093, %if.then ], [ %7, %if.else ], !dbg !259
  call void @llvm.dbg.value(metadata i64 %max_super.2, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %size.1, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %current.1, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %supers.1, metadata !254, metadata !DIExpression()), !dbg !259
  %inc35 = add nuw nsw i64 %i.287, 1, !dbg !308
  call void @llvm.dbg.value(metadata i64 %inc35, metadata !252, metadata !DIExpression()), !dbg !259
  %exitcond97.not = icmp eq i64 %inc35, %0, !dbg !272
  br i1 %exitcond97.not, label %for.end36, label %for.body15, !dbg !275, !llvm.loop !309

for.end36:                                        ; preds = %for.inc34, %entry, %for.cond2.preheader, %for.cond12.preheader
  %supers.0.lcssa = phi i64 [ 1, %for.cond12.preheader ], [ 1, %for.cond2.preheader ], [ 1, %entry ], [ %supers.1, %for.inc34 ], !dbg !311
  %current.0.lcssa = phi i64 [ 0, %for.cond12.preheader ], [ 0, %for.cond2.preheader ], [ 0, %entry ], [ %current.1, %for.inc34 ], !dbg !312
  %size.0.lcssa = phi i64 [ 1, %for.cond12.preheader ], [ 1, %for.cond2.preheader ], [ 1, %entry ], [ %size.1, %for.inc34 ], !dbg !259
  %max_super.0.lcssa = phi i64 [ 0, %for.cond12.preheader ], [ 0, %for.cond2.preheader ], [ 0, %entry ], [ %max_super.2, %for.inc34 ], !dbg !313
  %arrayidx37 = getelementptr inbounds i64, ptr %node, i64 %current.0.lcssa, !dbg !314
  store i64 %size.0.lcssa, ptr %arrayidx37, align 8, !dbg !315
  %8 = tail call i64 @llvm.smax.i64(i64 %size.0.lcssa, i64 %max_super.0.lcssa), !dbg !316
  call void @llvm.dbg.value(metadata i64 %8, metadata !257, metadata !DIExpression()), !dbg !259
  %arrayidx42 = getelementptr inbounds i64, ptr %node, i64 %0, !dbg !317
  store i64 0, ptr %arrayidx42, align 8, !dbg !318
  %conv = sitofp i64 %0 to double, !dbg !319
  %conv44 = sitofp i64 %supers.0.lcssa to double, !dbg !320
  %div = fdiv double %conv, %conv44, !dbg !321
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %supers.0.lcssa, double noundef %div, i64 noundef %8), !dbg !322
  tail call void @free(ptr noundef %call) #9, !dbg !323
  ret void, !dbg !324
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ComputeWorkTree(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %A, ptr nocapture noundef readonly %nz, ptr nocapture noundef %work_tree) local_unnamed_addr #5 !dbg !325 {
entry:
  call void @llvm.dbg.declare(metadata ptr %A, metadata !329, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %nz, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata ptr %work_tree, metadata !331, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i64 0, metadata !333, metadata !DIExpression()), !dbg !336
  %0 = load i64, ptr %A, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !333, metadata !DIExpression()), !dbg !336
  %cmp.not37 = icmp slt i64 %0, 0, !dbg !337
  br i1 %cmp.not37, label %for.end18, label %for.body, !dbg !340

for.cond.loopexit:                                ; preds = %for.body11, %if.end
  call void @llvm.dbg.value(metadata i64 %add7, metadata !333, metadata !DIExpression()), !dbg !336
  %exitcond.not = icmp eq i64 %j.038, %0, !dbg !337
  br i1 %exitcond.not, label %for.end18, label %for.body, !dbg !340, !llvm.loop !341

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %j.038 = phi i64 [ %add7, %for.cond.loopexit ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %j.038, metadata !333, metadata !DIExpression()), !dbg !336
  %cmp2.not = icmp eq i64 %j.038, %0, !dbg !343
  br i1 %cmp2.not, label %if.end, label %if.then, !dbg !346

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i64, ptr %nz, i64 %j.038, !dbg !347
  %1 = load i64, ptr %arrayidx, align 8, !dbg !347
  call void @llvm.dbg.value(metadata i64 %1, metadata !334, metadata !DIExpression()), !dbg !336
  %add = mul i64 %1, %1, !dbg !349
  %conv = sitofp i64 %add to double, !dbg !350
  br label %if.end, !dbg !351

if.end:                                           ; preds = %for.body, %if.then
  %conv.sink = phi double [ %conv, %if.then ], [ 0.000000e+00, %for.body ], !dbg !352
  %2 = getelementptr inbounds double, ptr %work_tree, i64 %j.038, !dbg !353
  store double %conv.sink, ptr %2, align 8, !dbg !354
  %3 = load ptr, ptr @firstchild, align 8, !dbg !355
  %arrayidx5 = getelementptr inbounds i64, ptr %3, i64 %j.038, !dbg !355
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !355
  call void @llvm.dbg.value(metadata i64 %4, metadata !332, metadata !DIExpression()), !dbg !336
  %add7 = add nuw i64 %j.038, 1
  %arrayidx834 = getelementptr inbounds i64, ptr %3, i64 %add7, !dbg !357
  %5 = load i64, ptr %arrayidx834, align 8, !dbg !357
  %cmp935 = icmp slt i64 %4, %5, !dbg !359
  br i1 %cmp935, label %for.body11, label %for.cond.loopexit, !dbg !360

for.body11:                                       ; preds = %if.end, %for.body11
  %6 = phi double [ %add15, %for.body11 ], [ %conv.sink, %if.end ], !dbg !361
  %i.036 = phi i64 [ %inc, %for.body11 ], [ %4, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.036, metadata !332, metadata !DIExpression()), !dbg !336
  %7 = load ptr, ptr @child, align 8, !dbg !362
  %arrayidx12 = getelementptr inbounds i64, ptr %7, i64 %i.036, !dbg !362
  %8 = load i64, ptr %arrayidx12, align 8, !dbg !362
  %arrayidx13 = getelementptr inbounds double, ptr %work_tree, i64 %8, !dbg !363
  %9 = load double, ptr %arrayidx13, align 8, !dbg !363
  %add15 = fadd double %9, %6, !dbg !361
  store double %add15, ptr %2, align 8, !dbg !361
  %inc = add nsw i64 %i.036, 1, !dbg !364
  call void @llvm.dbg.value(metadata i64 %inc, metadata !332, metadata !DIExpression()), !dbg !336
  %10 = load ptr, ptr @firstchild, align 8, !dbg !357
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 %add7, !dbg !357
  %11 = load i64, ptr %arrayidx8, align 8, !dbg !357
  %cmp9 = icmp slt i64 %inc, %11, !dbg !359
  br i1 %cmp9, label %for.body11, label %for.cond.loopexit, !dbg !360, !llvm.loop !365

for.end18:                                        ; preds = %for.cond.loopexit, %entry
  ret void, !dbg !367
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "firstchild", scope: !2, file: !3, line: 39, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "tree.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "4516d9f343d3184ccf08d9b819ff477b")
!4 = !{!5, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!0, !9, !11}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "child", scope: !2, file: !3, line: 39, type: !5, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "work_tree", scope: !2, file: !3, line: 40, type: !13, isLocal: false, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!21 = distinct !DISubprogram(name: "EliminationTreeFromA", scope: !3, file: !3, line: 42, type: !22, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !5, !5, !5}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "SMatrix", file: !25, line: 29, baseType: !26)
!25 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 26, size: 384, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !26, file: !25, line: 27, baseType: !6, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !26, file: !25, line: 27, baseType: !6, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !26, file: !25, line: 27, baseType: !5, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "startrow", scope: !26, file: !25, line: 27, baseType: !5, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !26, file: !25, line: 27, baseType: !5, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !26, file: !25, line: 28, baseType: !13, size: 64, offset: 320)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !DILocalVariable(name: "A", arg: 1, scope: !21, file: !3, line: 42, type: !24)
!36 = !DILocalVariable(name: "T", arg: 2, scope: !21, file: !3, line: 42, type: !5)
!37 = !DILocalVariable(name: "P", arg: 3, scope: !21, file: !3, line: 42, type: !5)
!38 = !DILocalVariable(name: "INVP", arg: 4, scope: !21, file: !3, line: 42, type: !5)
!39 = !DILocalVariable(name: "subtree", scope: !21, file: !3, line: 44, type: !5)
!40 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 45, type: !6)
!41 = !DILocalVariable(name: "nd", scope: !21, file: !3, line: 45, type: !6)
!42 = !DILocalVariable(name: "nabor", scope: !21, file: !3, line: 45, type: !6)
!43 = !DILocalVariable(name: "j", scope: !21, file: !3, line: 45, type: !6)
!44 = !DILocalVariable(name: "r", scope: !21, file: !3, line: 45, type: !6)
!45 = !DILocalVariable(name: "nextr", scope: !21, file: !3, line: 45, type: !6)
!46 = !DILocalVariable(name: "root", scope: !21, file: !3, line: 45, type: !6)
!47 = !DILocation(line: 42, column: 35, scope: !21)
!48 = !DILocation(line: 0, scope: !21)
!49 = !DILocation(line: 47, column: 32, scope: !21)
!50 = !DILocation(line: 47, column: 36, scope: !21)
!51 = !DILocation(line: 47, column: 22, scope: !21)
!52 = !DILocation(line: 49, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 49, column: 3)
!54 = distinct !DILexicalBlock(scope: !21, file: !3, line: 49, column: 3)
!55 = !DILocation(line: 49, column: 3, scope: !54)
!56 = !DILocation(line: 52, column: 14, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 52, column: 3)
!58 = distinct !DILexicalBlock(scope: !21, file: !3, line: 52, column: 3)
!59 = !DILocation(line: 52, column: 3, scope: !58)
!60 = !DILocation(line: 50, column: 12, scope: !53)
!61 = !DILocation(line: 50, column: 23, scope: !53)
!62 = !DILocation(line: 50, column: 5, scope: !53)
!63 = !DILocation(line: 50, column: 10, scope: !53)
!64 = !DILocation(line: 49, column: 22, scope: !53)
!65 = distinct !{!65, !55, !66, !67, !68}
!66 = !DILocation(line: 50, column: 27, scope: !54)
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !DILocation(line: 53, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 52, column: 25)
!71 = !DILocation(line: 55, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !3, line: 55, column: 5)
!73 = !DILocation(line: 55, column: 25, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !3, line: 55, column: 5)
!75 = !DILocation(line: 55, column: 24, scope: !74)
!76 = !DILocation(line: 55, column: 5, scope: !72)
!77 = !DILocation(line: 57, column: 20, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 55, column: 43)
!79 = !DILocation(line: 57, column: 15, scope: !78)
!80 = !DILocation(line: 59, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 59, column: 11)
!82 = !DILocation(line: 59, column: 11, scope: !78)
!83 = !DILocation(line: 0, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 61, column: 2)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 59, column: 22)
!86 = !DILocation(line: 61, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 61, column: 2)
!88 = !DILocation(line: 61, column: 27, scope: !87)
!89 = !DILocation(line: 61, column: 2, scope: !84)
!90 = distinct !{!90, !89, !91, !67, !68}
!91 = !DILocation(line: 62, column: 4, scope: !84)
!92 = !DILocation(line: 63, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !3, line: 63, column: 6)
!94 = !DILocation(line: 63, column: 6, scope: !85)
!95 = !DILocation(line: 64, column: 22, scope: !93)
!96 = !DILocation(line: 64, column: 4, scope: !93)
!97 = !DILocation(line: 64, column: 9, scope: !93)
!98 = !DILocation(line: 68, column: 9, scope: !85)
!99 = !DILocation(line: 68, column: 20, scope: !85)
!100 = !DILocation(line: 68, column: 2, scope: !85)
!101 = !DILocation(line: 70, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !85, file: !3, line: 68, column: 28)
!103 = distinct !{!103, !100, !104, !67, !68}
!104 = !DILocation(line: 72, column: 2, scope: !85)
!105 = !DILocation(line: 55, column: 39, scope: !74)
!106 = distinct !{!106, !76, !107, !67, !68}
!107 = !DILocation(line: 74, column: 5, scope: !72)
!108 = !DILocation(line: 52, column: 21, scope: !57)
!109 = distinct !{!109, !59, !110, !67, !68}
!110 = !DILocation(line: 75, column: 3, scope: !58)
!111 = !DILocation(line: 77, column: 3, scope: !21)
!112 = !DILocation(line: 78, column: 1, scope: !21)
!113 = distinct !DISubprogram(name: "ParentToChild", scope: !3, file: !3, line: 81, type: !114, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !5, !6, !5, !5}
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125}
!117 = !DILocalVariable(name: "T", arg: 1, scope: !113, file: !3, line: 81, type: !5)
!118 = !DILocalVariable(name: "n", arg: 2, scope: !113, file: !3, line: 81, type: !6)
!119 = !DILocalVariable(name: "firstchild", arg: 3, scope: !113, file: !3, line: 81, type: !5)
!120 = !DILocalVariable(name: "child", arg: 4, scope: !113, file: !3, line: 81, type: !5)
!121 = !DILocalVariable(name: "i", scope: !113, file: !3, line: 83, type: !6)
!122 = !DILocalVariable(name: "k", scope: !113, file: !3, line: 83, type: !6)
!123 = !DILocalVariable(name: "parent", scope: !113, file: !3, line: 83, type: !6)
!124 = !DILocalVariable(name: "count", scope: !113, file: !3, line: 83, type: !6)
!125 = !DILocalVariable(name: "next", scope: !113, file: !3, line: 84, type: !5)
!126 = !DILocation(line: 0, scope: !113)
!127 = !DILocation(line: 86, column: 28, scope: !113)
!128 = !DILocation(line: 86, column: 31, scope: !113)
!129 = !DILocation(line: 86, column: 19, scope: !113)
!130 = !DILocation(line: 88, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 88, column: 3)
!132 = distinct !DILexicalBlock(scope: !113, file: !3, line: 88, column: 3)
!133 = !DILocation(line: 88, column: 3, scope: !132)
!134 = !DILocation(line: 89, column: 29, scope: !131)
!135 = !DILocation(line: 89, column: 19, scope: !131)
!136 = !DILocation(line: 91, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !113, file: !3, line: 91, column: 3)
!138 = !DILocation(line: 99, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !113, file: !3, line: 99, column: 3)
!140 = !DILocation(line: 92, column: 14, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 91, column: 24)
!142 = distinct !DILexicalBlock(scope: !137, file: !3, line: 91, column: 3)
!143 = !DILocation(line: 93, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 93, column: 9)
!145 = !DILocation(line: 93, column: 9, scope: !141)
!146 = !DILocation(line: 94, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 93, column: 22)
!148 = !DILocation(line: 94, column: 2, scope: !147)
!149 = !DILocation(line: 94, column: 10, scope: !147)
!150 = !DILocation(line: 95, column: 21, scope: !147)
!151 = !DILocation(line: 96, column: 5, scope: !147)
!152 = !DILocation(line: 91, column: 20, scope: !142)
!153 = !DILocation(line: 91, column: 14, scope: !142)
!154 = distinct !{!154, !136, !155, !67, !68}
!155 = !DILocation(line: 97, column: 3, scope: !137)
!156 = !DILocation(line: 100, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 99, column: 24)
!158 = distinct !DILexicalBlock(scope: !139, file: !3, line: 99, column: 3)
!159 = !DILocation(line: 101, column: 19, scope: !157)
!160 = !DILocation(line: 102, column: 14, scope: !157)
!161 = !DILocation(line: 102, column: 5, scope: !157)
!162 = !DILocation(line: 103, column: 18, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !3, line: 102, column: 21)
!164 = !DILocation(line: 103, column: 7, scope: !163)
!165 = !DILocation(line: 103, column: 22, scope: !163)
!166 = !DILocation(line: 104, column: 11, scope: !163)
!167 = distinct !{!167, !161, !168, !67, !68}
!168 = !DILocation(line: 105, column: 5, scope: !157)
!169 = !DILocation(line: 99, column: 20, scope: !158)
!170 = !DILocation(line: 99, column: 14, scope: !158)
!171 = distinct !{!171, !138, !172, !67, !68}
!172 = !DILocation(line: 106, column: 3, scope: !139)
!173 = !DILocation(line: 83, column: 22, scope: !113)
!174 = !DILocation(line: 107, column: 3, scope: !113)
!175 = !DILocation(line: 107, column: 19, scope: !113)
!176 = !DILocation(line: 109, column: 3, scope: !113)
!177 = !DILocation(line: 111, column: 1, scope: !113)
!178 = distinct !DISubprogram(name: "ComputeNZ", scope: !3, file: !3, line: 114, type: !179, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !24, !5, !5, !5, !5}
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!182 = !DILocalVariable(name: "A", arg: 1, scope: !178, file: !3, line: 114, type: !24)
!183 = !DILocalVariable(name: "T", arg: 2, scope: !178, file: !3, line: 114, type: !5)
!184 = !DILocalVariable(name: "nz", arg: 3, scope: !178, file: !3, line: 114, type: !5)
!185 = !DILocalVariable(name: "PERM", arg: 4, scope: !178, file: !3, line: 114, type: !5)
!186 = !DILocalVariable(name: "INVP", arg: 5, scope: !178, file: !3, line: 114, type: !5)
!187 = !DILocalVariable(name: "i", scope: !178, file: !3, line: 116, type: !6)
!188 = !DILocalVariable(name: "j", scope: !178, file: !3, line: 116, type: !6)
!189 = !DILocalVariable(name: "nd", scope: !178, file: !3, line: 116, type: !6)
!190 = !DILocalVariable(name: "nabor", scope: !178, file: !3, line: 116, type: !6)
!191 = !DILocalVariable(name: "k", scope: !178, file: !3, line: 116, type: !6)
!192 = !DILocalVariable(name: "marker", scope: !178, file: !3, line: 117, type: !5)
!193 = !DILocation(line: 114, column: 24, scope: !178)
!194 = !DILocation(line: 0, scope: !178)
!195 = !DILocation(line: 119, column: 30, scope: !178)
!196 = !DILocation(line: 119, column: 31, scope: !178)
!197 = !DILocation(line: 119, column: 21, scope: !178)
!198 = !DILocation(line: 120, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 120, column: 3)
!200 = distinct !DILexicalBlock(scope: !178, file: !3, line: 120, column: 3)
!201 = !DILocation(line: 120, column: 3, scope: !200)
!202 = !DILocation(line: 122, column: 3, scope: !178)
!203 = !DILocation(line: 122, column: 11, scope: !178)
!204 = !DILocation(line: 124, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !178, file: !3, line: 124, column: 3)
!206 = !DILocation(line: 121, column: 5, scope: !199)
!207 = !DILocation(line: 121, column: 11, scope: !199)
!208 = !DILocation(line: 120, column: 21, scope: !199)
!209 = distinct !{!209, !201, !210, !67, !68}
!210 = !DILocation(line: 121, column: 13, scope: !200)
!211 = !DILocation(line: 125, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 124, column: 25)
!213 = distinct !DILexicalBlock(scope: !205, file: !3, line: 124, column: 3)
!214 = !DILocation(line: 126, column: 5, scope: !212)
!215 = !DILocation(line: 126, column: 15, scope: !212)
!216 = !DILocation(line: 127, column: 12, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 127, column: 5)
!218 = !DILocation(line: 127, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !3, line: 127, column: 5)
!220 = !DILocation(line: 127, column: 24, scope: !219)
!221 = !DILocation(line: 127, column: 5, scope: !217)
!222 = !DILocation(line: 128, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 127, column: 43)
!224 = !DILocation(line: 128, column: 15, scope: !223)
!225 = !DILocation(line: 0, scope: !223)
!226 = !DILocation(line: 130, column: 14, scope: !223)
!227 = !DILocation(line: 130, column: 24, scope: !223)
!228 = !DILocation(line: 130, column: 29, scope: !223)
!229 = !DILocation(line: 131, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !3, line: 130, column: 39)
!231 = !DILocation(line: 131, column: 14, scope: !230)
!232 = !DILocation(line: 132, column: 12, scope: !230)
!233 = !DILocation(line: 133, column: 6, scope: !230)
!234 = distinct !{!234, !235, !236, !67, !68}
!235 = !DILocation(line: 130, column: 7, scope: !223)
!236 = !DILocation(line: 134, column: 7, scope: !223)
!237 = !DILocation(line: 127, column: 39, scope: !219)
!238 = distinct !{!238, !221, !239, !67, !68}
!239 = !DILocation(line: 135, column: 5, scope: !217)
!240 = !DILocation(line: 124, column: 21, scope: !213)
!241 = !DILocation(line: 124, column: 14, scope: !213)
!242 = distinct !{!242, !204, !243, !67, !68}
!243 = !DILocation(line: 136, column: 3, scope: !205)
!244 = !DILocation(line: 138, column: 3, scope: !178)
!245 = !DILocation(line: 139, column: 1, scope: !178)
!246 = distinct !DISubprogram(name: "FindSupernodes", scope: !3, file: !3, line: 142, type: !22, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!248 = !DILocalVariable(name: "A", arg: 1, scope: !246, file: !3, line: 142, type: !24)
!249 = !DILocalVariable(name: "T", arg: 2, scope: !246, file: !3, line: 142, type: !5)
!250 = !DILocalVariable(name: "nz", arg: 3, scope: !246, file: !3, line: 142, type: !5)
!251 = !DILocalVariable(name: "node", arg: 4, scope: !246, file: !3, line: 142, type: !5)
!252 = !DILocalVariable(name: "i", scope: !246, file: !3, line: 144, type: !6)
!253 = !DILocalVariable(name: "nchild", scope: !246, file: !3, line: 145, type: !5)
!254 = !DILocalVariable(name: "supers", scope: !246, file: !3, line: 146, type: !6)
!255 = !DILocalVariable(name: "current", scope: !246, file: !3, line: 146, type: !6)
!256 = !DILocalVariable(name: "size", scope: !246, file: !3, line: 146, type: !6)
!257 = !DILocalVariable(name: "max_super", scope: !246, file: !3, line: 146, type: !6)
!258 = !DILocation(line: 142, column: 29, scope: !246)
!259 = !DILocation(line: 0, scope: !246)
!260 = !DILocation(line: 148, column: 31, scope: !246)
!261 = !DILocation(line: 148, column: 35, scope: !246)
!262 = !DILocation(line: 148, column: 21, scope: !246)
!263 = !DILocation(line: 149, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 149, column: 3)
!265 = distinct !DILexicalBlock(scope: !246, file: !3, line: 149, column: 3)
!266 = !DILocation(line: 149, column: 3, scope: !265)
!267 = !DILocation(line: 150, column: 15, scope: !264)
!268 = !DILocation(line: 152, column: 14, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 152, column: 3)
!270 = distinct !DILexicalBlock(scope: !246, file: !3, line: 152, column: 3)
!271 = !DILocation(line: 152, column: 3, scope: !270)
!272 = !DILocation(line: 158, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 158, column: 3)
!274 = distinct !DILexicalBlock(scope: !246, file: !3, line: 158, column: 3)
!275 = !DILocation(line: 158, column: 3, scope: !274)
!276 = !DILocation(line: 153, column: 12, scope: !269)
!277 = !DILocation(line: 153, column: 5, scope: !269)
!278 = !DILocation(line: 153, column: 17, scope: !269)
!279 = !DILocation(line: 152, column: 21, scope: !269)
!280 = distinct !{!280, !271, !281, !67, !68}
!281 = !DILocation(line: 153, column: 17, scope: !270)
!282 = !DILocation(line: 159, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 159, column: 9)
!284 = distinct !DILexicalBlock(scope: !273, file: !3, line: 158, column: 25)
!285 = !DILocation(line: 159, column: 22, scope: !283)
!286 = !DILocation(line: 159, column: 18, scope: !283)
!287 = !DILocation(line: 159, column: 25, scope: !283)
!288 = !DILocation(line: 159, column: 15, scope: !283)
!289 = !DILocation(line: 159, column: 28, scope: !283)
!290 = !DILocation(line: 159, column: 31, scope: !283)
!291 = !DILocation(line: 159, column: 38, scope: !283)
!292 = !DILocation(line: 159, column: 43, scope: !283)
!293 = !DILocation(line: 159, column: 46, scope: !283)
!294 = !DILocation(line: 159, column: 56, scope: !283)
!295 = !DILocation(line: 159, column: 9, scope: !284)
!296 = !DILocation(line: 160, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !283, file: !3, line: 159, column: 62)
!298 = !DILocation(line: 160, column: 7, scope: !297)
!299 = !DILocation(line: 160, column: 15, scope: !297)
!300 = !DILocation(line: 161, column: 11, scope: !297)
!301 = !DILocation(line: 162, column: 5, scope: !297)
!302 = !DILocation(line: 164, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !283, file: !3, line: 163, column: 10)
!304 = !DILocation(line: 164, column: 21, scope: !303)
!305 = !DILocation(line: 165, column: 11, scope: !303)
!306 = !DILocation(line: 167, column: 13, scope: !303)
!307 = !DILocation(line: 0, scope: !283)
!308 = !DILocation(line: 158, column: 21, scope: !273)
!309 = distinct !{!309, !275, !310, !67, !68}
!310 = !DILocation(line: 171, column: 3, scope: !274)
!311 = !DILocation(line: 156, column: 10, scope: !246)
!312 = !DILocation(line: 155, column: 11, scope: !246)
!313 = !DILocation(line: 146, column: 31, scope: !246)
!314 = !DILocation(line: 173, column: 3, scope: !246)
!315 = !DILocation(line: 173, column: 17, scope: !246)
!316 = !DILocation(line: 174, column: 7, scope: !246)
!317 = !DILocation(line: 176, column: 3, scope: !246)
!318 = !DILocation(line: 176, column: 13, scope: !246)
!319 = !DILocation(line: 179, column: 11, scope: !246)
!320 = !DILocation(line: 179, column: 15, scope: !246)
!321 = !DILocation(line: 179, column: 14, scope: !246)
!322 = !DILocation(line: 178, column: 3, scope: !246)
!323 = !DILocation(line: 181, column: 3, scope: !246)
!324 = !DILocation(line: 182, column: 1, scope: !246)
!325 = distinct !DISubprogram(name: "ComputeWorkTree", scope: !3, file: !3, line: 185, type: !326, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !24, !5, !13}
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DILocalVariable(name: "A", arg: 1, scope: !325, file: !3, line: 185, type: !24)
!330 = !DILocalVariable(name: "nz", arg: 2, scope: !325, file: !3, line: 185, type: !5)
!331 = !DILocalVariable(name: "work_tree", arg: 3, scope: !325, file: !3, line: 185, type: !13)
!332 = !DILocalVariable(name: "i", scope: !325, file: !3, line: 187, type: !6)
!333 = !DILocalVariable(name: "j", scope: !325, file: !3, line: 187, type: !6)
!334 = !DILocalVariable(name: "nzj", scope: !325, file: !3, line: 187, type: !6)
!335 = !DILocation(line: 185, column: 30, scope: !325)
!336 = !DILocation(line: 0, scope: !325)
!337 = !DILocation(line: 189, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 189, column: 3)
!339 = distinct !DILexicalBlock(scope: !325, file: !3, line: 189, column: 3)
!340 = !DILocation(line: 189, column: 3, scope: !339)
!341 = distinct !{!341, !340, !342, !67, !68}
!342 = !DILocation(line: 199, column: 3, scope: !339)
!343 = !DILocation(line: 190, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 190, column: 9)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 189, column: 26)
!346 = !DILocation(line: 190, column: 9, scope: !345)
!347 = !DILocation(line: 191, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 190, column: 19)
!349 = !DILocation(line: 192, column: 25, scope: !348)
!350 = !DILocation(line: 192, column: 22, scope: !348)
!351 = !DILocation(line: 193, column: 5, scope: !348)
!352 = !DILocation(line: 0, scope: !344)
!353 = !DILocation(line: 195, column: 7, scope: !344)
!354 = !DILocation(line: 195, column: 20, scope: !344)
!355 = !DILocation(line: 197, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !345, file: !3, line: 197, column: 5)
!357 = !DILocation(line: 197, column: 29, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !3, line: 197, column: 5)
!359 = !DILocation(line: 197, column: 28, scope: !358)
!360 = !DILocation(line: 197, column: 5, scope: !356)
!361 = !DILocation(line: 198, column: 20, scope: !358)
!362 = !DILocation(line: 198, column: 33, scope: !358)
!363 = !DILocation(line: 198, column: 23, scope: !358)
!364 = !DILocation(line: 197, column: 47, scope: !358)
!365 = distinct !{!365, !360, !366, !67, !68}
!366 = !DILocation(line: 198, column: 41, scope: !356)
!367 = !DILocation(line: 200, column: 1, scope: !325)
