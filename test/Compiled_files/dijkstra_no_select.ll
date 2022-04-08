; ModuleID = 'dijkstra.c'
source_filename = "dijkstra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secret = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"secret\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"dijkstra.c\00", section "llvm.metadata"
@in = dso_local local_unnamed_addr global [512 x [512 x i32]] zeroinitializer, align 16, !dbg !8

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %n, i32 noundef %s, i32 noundef %t, [512 x i32]* nocapture noundef readonly %e) local_unnamed_addr #0 !dbg !19 {
entry:
  %vis = alloca [512 x i32], align 16
  %dis = alloca [512 x i32], align 16
  %bestj = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !26, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 %s, metadata !27, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 %t, metadata !28, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata [512 x i32]* %e, metadata !29, metadata !DIExpression()), !dbg !43
  %0 = bitcast [512 x i32]* %vis to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #9, !dbg !44
  call void @llvm.dbg.declare(metadata [512 x i32]* %vis, metadata !30, metadata !DIExpression()), !dbg !45
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %0, i8 0, i64 2048, i1 false), !dbg !45
  %1 = bitcast [512 x i32]* %dis to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !46
  call void @llvm.dbg.declare(metadata [512 x i32]* %dis, metadata !31, metadata !DIExpression()), !dbg !47
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %1, i8 0, i64 2048, i1 false), !dbg !47
  %2 = bitcast i32* %bestj to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9, !dbg !48
  call void @llvm.dbg.value(metadata i32* %bestj, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.var.annotation(i8* nonnull %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* null), !dbg !48
  call void @llvm.dbg.value(metadata i32 -1, metadata !32, metadata !DIExpression()), !dbg !43
  %idxprom = sext i32 %s to i64, !dbg !49
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %idxprom, !dbg !49
  store i32 1, i32* %arrayidx, align 4, !dbg !50, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()), !dbg !55
  %cmp107 = icmp sgt i32 %n, 0, !dbg !56
  br i1 %cmp107, label %for.body.preheader, label %for.cond.cleanup18, !dbg !58

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !56
  br label %for.body, !dbg !58

for.cond16.preheader:                             ; preds = %for.inc
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !59
  br i1 %cmp107, label %for.cond20.preheader.us.us.preheader, label %for.cond.cleanup18, !dbg !60

for.cond20.preheader.us.us.preheader:             ; preds = %for.cond16.preheader
  %3 = load i32, i32* @secret, align 4
  %4 = sext i32 %3 to i64, !dbg !60
  %wide.trip.count150 = zext i32 %n to i64
  br label %for.cond20.preheader.us.us, !dbg !60

for.cond20.preheader.us.us:                       ; preds = %for.cond20.preheader.us.us.preheader, %for.cond40.for.cond.cleanup42_crit_edge.us.us
  %i15.0123.us.us = phi i32 [ %inc73.us.us, %for.cond40.for.cond.cleanup42_crit_edge.us.us ], [ 0, %for.cond20.preheader.us.us.preheader ]
  %bestj.promoted120122.us.us = phi i32 [ %bestj.promoted118.us.us, %for.cond40.for.cond.cleanup42_crit_edge.us.us ], [ -1, %for.cond20.preheader.us.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %i15.0123.us.us, metadata !35, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !61
  br label %for.body23.us.us, !dbg !62

for.body43.us.us:                                 ; preds = %for.cond20.for.cond40.preheader_crit_edge.us.us, %for.inc69.us.us
  %indvars.iv152 = phi i64 [ 0, %for.cond20.for.cond40.preheader_crit_edge.us.us ], [ %indvars.iv.next153, %for.inc69.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv152, metadata !41, metadata !DIExpression()), !dbg !63
  %arrayidx45.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %indvars.iv152, !dbg !64
  %5 = load i32, i32* %arrayidx45.us.us, align 4, !dbg !64, !tbaa !51
  %tobool46.not.us.us = icmp eq i32 %5, 0, !dbg !64
  br i1 %tobool46.not.us.us, label %land.lhs.true47.us.us, label %for.inc69.us.us, !dbg !68

land.lhs.true47.us.us:                            ; preds = %for.body43.us.us
  call void @llvm.dbg.value(metadata i32 undef, metadata !32, metadata !DIExpression()), !dbg !43
  %6 = load i32, i32* %arrayidx49.us.us, align 4, !dbg !69, !tbaa !51
  %arrayidx53.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom48.us.us, i64 %indvars.iv152, !dbg !70
  %7 = load i32, i32* %arrayidx53.us.us, align 4, !dbg !70, !tbaa !51
  %add54.us.us = add nsw i32 %7, %6, !dbg !71
  %arrayidx56.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv152, !dbg !72
  %8 = load i32, i32* %arrayidx56.us.us, align 4, !dbg !72, !tbaa !51
  %cmp57.us.us = icmp slt i32 %add54.us.us, %8, !dbg !73
  br i1 %cmp57.us.us, label %if.then58.us.us, label %for.inc69.us.us, !dbg !74

if.then58.us.us:                                  ; preds = %land.lhs.true47.us.us
  store i32 %add54.us.us, i32* %arrayidx56.us.us, align 4, !dbg !75, !tbaa !51
  br label %for.inc69.us.us, !dbg !77

for.inc69.us.us:                                  ; preds = %if.then58.us.us, %land.lhs.true47.us.us, %for.body43.us.us
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1, !dbg !78
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next153, metadata !41, metadata !DIExpression()), !dbg !63
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count150, !dbg !79
  br i1 %exitcond156.not, label %for.cond40.for.cond.cleanup42_crit_edge.us.us, label %for.body43.us.us, !dbg !80, !llvm.loop !81

for.body23.us.us:                                 ; preds = %for.inc36.us.us, %for.cond20.preheader.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc36.us.us ], [ 0, %for.cond20.preheader.us.us ]
  %bestj.promoted119.us.us = phi i32 [ %bestj.promoted118.us.us, %for.inc36.us.us ], [ %bestj.promoted120122.us.us, %for.cond20.preheader.us.us ]
  %add110112.us.us = phi i32 [ %add109.us.us, %for.inc36.us.us ], [ %bestj.promoted120122.us.us, %for.cond20.preheader.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv146, metadata !37, metadata !DIExpression()), !dbg !61
  %arrayidx25.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %indvars.iv146, !dbg !85
  %9 = load i32, i32* %arrayidx25.us.us, align 4, !dbg !85, !tbaa !51
  %tobool.not.us.us = icmp eq i32 %9, 0, !dbg !85
  br i1 %tobool.not.us.us, label %land.lhs.true.us.us, label %for.inc36.us.us, !dbg !89

land.lhs.true.us.us:                              ; preds = %for.body23.us.us
  call void @llvm.dbg.value(metadata i32 %add110112.us.us, metadata !32, metadata !DIExpression()), !dbg !43
  %cmp26.us.us = icmp slt i32 %add110112.us.us, 0, !dbg !90
  br i1 %cmp26.us.us, label %if.then32.us.us, label %lor.lhs.false.us.us, !dbg !91

lor.lhs.false.us.us:                              ; preds = %land.lhs.true.us.us
  %arrayidx28.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv146, !dbg !92
  %10 = load i32, i32* %arrayidx28.us.us, align 4, !dbg !92, !tbaa !51
  %idxprom29106.us.us = zext i32 %add110112.us.us to i64, !dbg !93
  %arrayidx30.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom29106.us.us, !dbg !93
  %11 = load i32, i32* %arrayidx30.us.us, align 4, !dbg !93, !tbaa !51
  %cmp31.us.us = icmp slt i32 %10, %11, !dbg !94
  br i1 %cmp31.us.us, label %if.then32.us.us, label %for.inc36.us.us, !dbg !95

if.then32.us.us:                                  ; preds = %lor.lhs.false.us.us, %land.lhs.true.us.us
  %12 = add nsw i64 %indvars.iv146, %4, !dbg !96
  call void @llvm.dbg.value(metadata i64 %12, metadata !32, metadata !DIExpression()), !dbg !43
  %13 = trunc i64 %12 to i32, !dbg !98
  store i32 %13, i32* %bestj, align 4, !dbg !98, !tbaa !51
  %arrayidx34.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %12, !dbg !99
  store i32 1, i32* %arrayidx34.us.us, align 4, !dbg !100, !tbaa !51
  br label %for.inc36.us.us, !dbg !101

for.inc36.us.us:                                  ; preds = %if.then32.us.us, %lor.lhs.false.us.us, %for.body23.us.us
  %bestj.promoted118.us.us = phi i32 [ %bestj.promoted119.us.us, %for.body23.us.us ], [ %bestj.promoted119.us.us, %lor.lhs.false.us.us ], [ %13, %if.then32.us.us ]
  %add109.us.us = phi i32 [ %add110112.us.us, %for.body23.us.us ], [ %add110112.us.us, %lor.lhs.false.us.us ], [ %13, %if.then32.us.us ]
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1, !dbg !102
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next147, metadata !37, metadata !DIExpression()), !dbg !61
  %exitcond151.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count150, !dbg !103
  br i1 %exitcond151.not, label %for.cond20.for.cond40.preheader_crit_edge.us.us, label %for.body23.us.us, !dbg !62, !llvm.loop !104

for.cond20.for.cond40.preheader_crit_edge.us.us:  ; preds = %for.inc36.us.us
  %idxprom48.us.us = sext i32 %bestj.promoted118.us.us to i64
  %arrayidx49.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom48.us.us
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !63
  br label %for.body43.us.us, !dbg !80

for.cond40.for.cond.cleanup42_crit_edge.us.us:    ; preds = %for.inc69.us.us
  %inc73.us.us = add nuw nsw i32 %i15.0123.us.us, 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %inc73.us.us, metadata !35, metadata !DIExpression()), !dbg !59
  %exitcond157.not = icmp eq i32 %inc73.us.us, %n, !dbg !107
  br i1 %exitcond157.not, label %for.cond.cleanup18, label %for.cond20.preheader.us.us, !dbg !60, !llvm.loop !108

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !33, metadata !DIExpression()), !dbg !55
  %arrayidx5 = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom, i64 %indvars.iv, !dbg !110
  %14 = load i32, i32* %arrayidx5, align 4, !dbg !110, !tbaa !51
  %cmp6 = icmp eq i32 %14, 0, !dbg !113
  br i1 %cmp6, label %for.inc, label %if.else, !dbg !114

if.else:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else
  %.sink = phi i32 [ %14, %if.else ], [ 2147483647, %for.body ], !dbg !115
  %15 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv, !dbg !116
  store i32 %.sink, i32* %15, align 4, !dbg !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !119
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !33, metadata !DIExpression()), !dbg !55
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !56
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body, !dbg !58, !llvm.loop !120

for.cond.cleanup18:                               ; preds = %for.cond40.for.cond.cleanup42_crit_edge.us.us, %entry, %for.cond16.preheader
  %idxprom75 = sext i32 %t to i64, !dbg !122
  %arrayidx76 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom75, !dbg !122
  %16 = load i32, i32* %arrayidx76, align 4, !dbg !122, !tbaa !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #9, !dbg !123
  ret i32 %16, !dbg !124
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #5 !dbg !125 {
entry:
  %vis.i = alloca [512 x i32], align 16
  %dis.i = alloca [512 x i32], align 16
  %bestj.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !132, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8** %argv, metadata !133, metadata !DIExpression()), !dbg !141
  %call = tail call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null) #9, !dbg !142
  tail call void @srand(i32 noundef %call) #9, !dbg !143
  %0 = load i32, i32* @secret, align 4, !dbg !144, !tbaa !51
  %sub = and i32 %0, -256, !dbg !145
  store i32 %sub, i32* @secret, align 4, !dbg !145, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !146
  br label %for.cond3.preheader, !dbg !147

for.cond3.preheader:                              ; preds = %entry, %for.cond.cleanup6
  %indvars.iv25 = phi i64 [ 0, %entry ], [ %indvars.iv.next26, %for.cond.cleanup6 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !134, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 0, metadata !136, metadata !DIExpression()), !dbg !148
  br label %for.body7, !dbg !149

for.cond.cleanup:                                 ; preds = %for.cond.cleanup6
  call void @llvm.dbg.value(metadata i32 512, metadata !26, metadata !DIExpression()) #9, !dbg !150
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()) #9, !dbg !150
  call void @llvm.dbg.value(metadata i32 511, metadata !28, metadata !DIExpression()) #9, !dbg !150
  %1 = bitcast [512 x i32]* %vis.i to i8*, !dbg !152
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !152
  call void @llvm.dbg.declare(metadata [512 x i32]* %vis.i, metadata !30, metadata !DIExpression()) #9, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %1, i8 0, i64 2048, i1 false) #9, !dbg !153
  %2 = bitcast [512 x i32]* %dis.i to i8*, !dbg !154
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %2) #9, !dbg !154
  call void @llvm.dbg.declare(metadata [512 x i32]* %dis.i, metadata !31, metadata !DIExpression()) #9, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %2, i8 0, i64 2048, i1 false) #9, !dbg !155
  %3 = bitcast i32* %bestj.i to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9, !dbg !156
  call void @llvm.dbg.value(metadata i32* %bestj.i, metadata !32, metadata !DIExpression(DW_OP_deref)) #9, !dbg !150
  call void @llvm.var.annotation(i8* nonnull %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* null) #9, !dbg !156
  call void @llvm.dbg.value(metadata i32 -1, metadata !32, metadata !DIExpression()) #9, !dbg !150
  %arrayidx.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 0, !dbg !157
  store i32 1, i32* %arrayidx.i, align 16, !dbg !158, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()) #9, !dbg !159
  br label %for.body.i, !dbg !160

for.cond16.preheader.i:                           ; preds = %for.inc.i
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()) #9, !dbg !161
  %4 = load i32, i32* @secret, align 4
  %5 = sext i32 %4 to i64, !dbg !162
  br label %for.cond20.preheader.us.us.i, !dbg !162

for.cond20.preheader.us.us.i:                     ; preds = %for.cond40.for.cond.cleanup42_crit_edge.us.us.i, %for.cond16.preheader.i
  %i15.0123.us.us.i = phi i32 [ %inc73.us.us.i, %for.cond40.for.cond.cleanup42_crit_edge.us.us.i ], [ 0, %for.cond16.preheader.i ]
  %bestj.promoted120122.us.us.i = phi i32 [ %bestj.promoted118.us.us.i, %for.cond40.for.cond.cleanup42_crit_edge.us.us.i ], [ -1, %for.cond16.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %i15.0123.us.us.i, metadata !35, metadata !DIExpression()) #9, !dbg !161
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()) #9, !dbg !163
  br label %for.body23.us.us.i, !dbg !164

for.body43.us.us.i:                               ; preds = %for.cond20.for.cond40.preheader_crit_edge.us.us.i, %for.inc69.us.us.i
  %indvars.iv152.i = phi i64 [ 0, %for.cond20.for.cond40.preheader_crit_edge.us.us.i ], [ %indvars.iv.next153.i, %for.inc69.us.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv152.i, metadata !41, metadata !DIExpression()) #9, !dbg !165
  %arrayidx45.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 %indvars.iv152.i, !dbg !166
  %6 = load i32, i32* %arrayidx45.us.us.i, align 4, !dbg !166, !tbaa !51
  %tobool46.not.us.us.i = icmp eq i32 %6, 0, !dbg !166
  br i1 %tobool46.not.us.us.i, label %land.lhs.true47.us.us.i, label %for.inc69.us.us.i, !dbg !167

land.lhs.true47.us.us.i:                          ; preds = %for.body43.us.us.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !32, metadata !DIExpression()) #9, !dbg !150
  %7 = load i32, i32* %arrayidx49.us.us.i, align 4, !dbg !168, !tbaa !51
  %arrayidx53.us.us.i = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 %idxprom48.us.us.i, i64 %indvars.iv152.i, !dbg !169
  %8 = load i32, i32* %arrayidx53.us.us.i, align 4, !dbg !169, !tbaa !51
  %add54.us.us.i = add nsw i32 %8, %7, !dbg !170
  %arrayidx56.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %indvars.iv152.i, !dbg !171
  %9 = load i32, i32* %arrayidx56.us.us.i, align 4, !dbg !171, !tbaa !51
  %cmp57.us.us.i = icmp slt i32 %add54.us.us.i, %9, !dbg !172
  br i1 %cmp57.us.us.i, label %if.then58.us.us.i, label %for.inc69.us.us.i, !dbg !173

if.then58.us.us.i:                                ; preds = %land.lhs.true47.us.us.i
  store i32 %add54.us.us.i, i32* %arrayidx56.us.us.i, align 4, !dbg !174, !tbaa !51
  br label %for.inc69.us.us.i, !dbg !175

for.inc69.us.us.i:                                ; preds = %if.then58.us.us.i, %land.lhs.true47.us.us.i, %for.body43.us.us.i
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next153.i, metadata !41, metadata !DIExpression()) #9, !dbg !165
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, 512, !dbg !177
  br i1 %exitcond156.not.i, label %for.cond40.for.cond.cleanup42_crit_edge.us.us.i, label %for.body43.us.us.i, !dbg !178, !llvm.loop !179

for.body23.us.us.i:                               ; preds = %for.inc36.us.us.i, %for.cond20.preheader.us.us.i
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %for.inc36.us.us.i ], [ 0, %for.cond20.preheader.us.us.i ]
  %bestj.promoted119.us.us.i = phi i32 [ %bestj.promoted118.us.us.i, %for.inc36.us.us.i ], [ %bestj.promoted120122.us.us.i, %for.cond20.preheader.us.us.i ]
  %add110112.us.us.i = phi i32 [ %add109.us.us.i, %for.inc36.us.us.i ], [ %bestj.promoted120122.us.us.i, %for.cond20.preheader.us.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv146.i, metadata !37, metadata !DIExpression()) #9, !dbg !163
  %arrayidx25.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 %indvars.iv146.i, !dbg !181
  %10 = load i32, i32* %arrayidx25.us.us.i, align 4, !dbg !181, !tbaa !51
  %tobool.not.us.us.i = icmp eq i32 %10, 0, !dbg !181
  br i1 %tobool.not.us.us.i, label %land.lhs.true.us.us.i, label %for.inc36.us.us.i, !dbg !182

land.lhs.true.us.us.i:                            ; preds = %for.body23.us.us.i
  call void @llvm.dbg.value(metadata i32 %add110112.us.us.i, metadata !32, metadata !DIExpression()) #9, !dbg !150
  %cmp26.us.us.i = icmp slt i32 %add110112.us.us.i, 0, !dbg !183
  br i1 %cmp26.us.us.i, label %if.then32.us.us.i, label %lor.lhs.false.us.us.i, !dbg !184

lor.lhs.false.us.us.i:                            ; preds = %land.lhs.true.us.us.i
  %arrayidx28.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %indvars.iv146.i, !dbg !185
  %11 = load i32, i32* %arrayidx28.us.us.i, align 4, !dbg !185, !tbaa !51
  %idxprom29106.us.us.i = zext i32 %add110112.us.us.i to i64, !dbg !186
  %arrayidx30.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %idxprom29106.us.us.i, !dbg !186
  %12 = load i32, i32* %arrayidx30.us.us.i, align 4, !dbg !186, !tbaa !51
  %cmp31.us.us.i = icmp slt i32 %11, %12, !dbg !187
  br i1 %cmp31.us.us.i, label %if.then32.us.us.i, label %for.inc36.us.us.i, !dbg !188

if.then32.us.us.i:                                ; preds = %lor.lhs.false.us.us.i, %land.lhs.true.us.us.i
  %13 = add nsw i64 %indvars.iv146.i, %5, !dbg !189
  call void @llvm.dbg.value(metadata i64 %13, metadata !32, metadata !DIExpression()) #9, !dbg !150
  %14 = trunc i64 %13 to i32, !dbg !190
  %arrayidx34.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 %13, !dbg !191
  store i32 1, i32* %arrayidx34.us.us.i, align 4, !dbg !192, !tbaa !51
  br label %for.inc36.us.us.i, !dbg !193

for.inc36.us.us.i:                                ; preds = %if.then32.us.us.i, %lor.lhs.false.us.us.i, %for.body23.us.us.i
  %bestj.promoted118.us.us.i = phi i32 [ %bestj.promoted119.us.us.i, %for.body23.us.us.i ], [ %bestj.promoted119.us.us.i, %lor.lhs.false.us.us.i ], [ %14, %if.then32.us.us.i ]
  %add109.us.us.i = phi i32 [ %add110112.us.us.i, %for.body23.us.us.i ], [ %add110112.us.us.i, %lor.lhs.false.us.us.i ], [ %14, %if.then32.us.us.i ]
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1, !dbg !194
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next147.i, metadata !37, metadata !DIExpression()) #9, !dbg !163
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next147.i, 512, !dbg !195
  br i1 %exitcond151.not.i, label %for.cond20.for.cond40.preheader_crit_edge.us.us.i, label %for.body23.us.us.i, !dbg !164, !llvm.loop !196

for.cond20.for.cond40.preheader_crit_edge.us.us.i: ; preds = %for.inc36.us.us.i
  %idxprom48.us.us.i = sext i32 %bestj.promoted118.us.us.i to i64
  %arrayidx49.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %idxprom48.us.us.i
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()) #9, !dbg !165
  br label %for.body43.us.us.i, !dbg !178

for.cond40.for.cond.cleanup42_crit_edge.us.us.i:  ; preds = %for.inc69.us.us.i
  %inc73.us.us.i = add nuw nsw i32 %i15.0123.us.us.i, 1, !dbg !198
  call void @llvm.dbg.value(metadata i32 %inc73.us.us.i, metadata !35, metadata !DIExpression()) #9, !dbg !161
  %exitcond157.not.i = icmp eq i32 %inc73.us.us.i, 512, !dbg !199
  br i1 %exitcond157.not.i, label %dijkstra.exit, label %for.cond20.preheader.us.us.i, !dbg !162, !llvm.loop !200

for.body.i:                                       ; preds = %for.inc.i, %for.cond.cleanup
  %indvars.iv.i = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !33, metadata !DIExpression()) #9, !dbg !159
  %arrayidx5.i = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 0, i64 %indvars.iv.i, !dbg !202
  %15 = load i32, i32* %arrayidx5.i, align 4, !dbg !202, !tbaa !51
  %cmp6.i = icmp eq i32 %15, 0, !dbg !203
  br i1 %cmp6.i, label %for.inc.i, label %if.else.i, !dbg !204

if.else.i:                                        ; preds = %for.body.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i
  %.sink.i = phi i32 [ %15, %if.else.i ], [ 2147483647, %for.body.i ], !dbg !205
  %16 = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %indvars.iv.i, !dbg !206
  store i32 %.sink.i, i32* %16, align 4, !dbg !207
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !208
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !33, metadata !DIExpression()) #9, !dbg !159
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 512, !dbg !209
  br i1 %exitcond.not.i, label %for.cond16.preheader.i, label %for.body.i, !dbg !160, !llvm.loop !210

dijkstra.exit:                                    ; preds = %for.cond40.for.cond.cleanup42_crit_edge.us.us.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9, !dbg !212
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %2) #9, !dbg !212
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !212
  call void @llvm.dbg.value(metadata i32 undef, metadata !140, metadata !DIExpression()), !dbg !141
  ret i32 0, !dbg !213

for.cond.cleanup6:                                ; preds = %for.body7
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !214
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next26, metadata !134, metadata !DIExpression()), !dbg !146
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, 512, !dbg !215
  br i1 %exitcond28.not, label %for.cond.cleanup, label %for.cond3.preheader, !dbg !147, !llvm.loop !216

for.body7:                                        ; preds = %for.cond3.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !136, metadata !DIExpression()), !dbg !148
  %call8 = tail call i32 @rand() #9, !dbg !218
  %rem = srem i32 %call8, 5, !dbg !221
  %arrayidx10 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 %indvars.iv25, i64 %indvars.iv, !dbg !222
  store i32 %rem, i32* %arrayidx10, align 4, !dbg !223, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !224
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !136, metadata !DIExpression()), !dbg !148
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512, !dbg !225
  br i1 %exitcond.not, label %for.cond.cleanup6, label %for.body7, !dbg !149, !llvm.loop !226
}

; Function Attrs: nounwind
declare !dbg !228 dso_local void @srand(i32 noundef) local_unnamed_addr #6

declare dso_local i32 @time(...) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !234 dso_local i32 @rand() local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "secret", scope: !2, file: !3, line: 8, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://www.github.com/llvm/llvm-project.git de0c2d75bf06beebbd0b3084e390629dbb9df2e9)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "dijkstra.c", directory: "/home/jaopaulolc/Downloads/Rouzbeh/Dijkstra", checksumkind: CSK_MD5, checksum: "bb551e2091d01608ed496f0e9a301d24")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "in", scope: !2, file: !3, line: 40, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8388608, elements: !12)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !13}
!13 = !DISubrange(count: 512)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 14.0.0 (https://www.github.com/llvm/llvm-project.git de0c2d75bf06beebbd0b3084e390629dbb9df2e9)"}
!19 = distinct !DISubprogram(name: "dijkstra", scope: !3, file: !3, line: 9, type: !20, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!11, !11, !11, !11, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 16384, elements: !24)
!24 = !{!13}
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !35, !37, !41}
!26 = !DILocalVariable(name: "n", arg: 1, scope: !19, file: !3, line: 9, type: !11)
!27 = !DILocalVariable(name: "s", arg: 2, scope: !19, file: !3, line: 9, type: !11)
!28 = !DILocalVariable(name: "t", arg: 3, scope: !19, file: !3, line: 9, type: !11)
!29 = !DILocalVariable(name: "e", arg: 4, scope: !19, file: !3, line: 9, type: !22)
!30 = !DILocalVariable(name: "vis", scope: !19, file: !3, line: 10, type: !23)
!31 = !DILocalVariable(name: "dis", scope: !19, file: !3, line: 11, type: !23)
!32 = !DILocalVariable(name: "bestj", scope: !19, file: !3, line: 12, type: !11)
!33 = !DILocalVariable(name: "i", scope: !34, file: !3, line: 14, type: !11)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 14, column: 5)
!35 = !DILocalVariable(name: "i", scope: !36, file: !3, line: 21, type: !11)
!36 = distinct !DILexicalBlock(scope: !19, file: !3, line: 21, column: 5)
!37 = !DILocalVariable(name: "j", scope: !38, file: !3, line: 22, type: !11)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 22, column: 9)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 21, column: 28)
!40 = distinct !DILexicalBlock(scope: !36, file: !3, line: 21, column: 5)
!41 = !DILocalVariable(name: "j", scope: !42, file: !3, line: 28, type: !11)
!42 = distinct !DILexicalBlock(scope: !39, file: !3, line: 28, column: 9)
!43 = !DILocation(line: 0, scope: !19)
!44 = !DILocation(line: 10, column: 5, scope: !19)
!45 = !DILocation(line: 10, column: 9, scope: !19)
!46 = !DILocation(line: 11, column: 5, scope: !19)
!47 = !DILocation(line: 11, column: 9, scope: !19)
!48 = !DILocation(line: 12, column: 5, scope: !19)
!49 = !DILocation(line: 13, column: 5, scope: !19)
!50 = !DILocation(line: 13, column: 12, scope: !19)
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 0, scope: !34)
!56 = !DILocation(line: 14, column: 19, scope: !57)
!57 = distinct !DILexicalBlock(scope: !34, file: !3, line: 14, column: 5)
!58 = !DILocation(line: 14, column: 5, scope: !34)
!59 = !DILocation(line: 0, scope: !36)
!60 = !DILocation(line: 21, column: 5, scope: !36)
!61 = !DILocation(line: 0, scope: !38)
!62 = !DILocation(line: 22, column: 9, scope: !38)
!63 = !DILocation(line: 0, scope: !42)
!64 = !DILocation(line: 29, column: 18, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 29, column: 17)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 28, column: 32)
!67 = distinct !DILexicalBlock(scope: !42, file: !3, line: 28, column: 9)
!68 = !DILocation(line: 29, column: 25, scope: !65)
!69 = !DILocation(line: 29, column: 29, scope: !65)
!70 = !DILocation(line: 29, column: 42, scope: !65)
!71 = !DILocation(line: 29, column: 40, scope: !65)
!72 = !DILocation(line: 29, column: 56, scope: !65)
!73 = !DILocation(line: 29, column: 54, scope: !65)
!74 = !DILocation(line: 29, column: 17, scope: !66)
!75 = !DILocation(line: 30, column: 24, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !3, line: 29, column: 65)
!77 = !DILocation(line: 31, column: 13, scope: !76)
!78 = !DILocation(line: 28, column: 27, scope: !67)
!79 = !DILocation(line: 28, column: 23, scope: !67)
!80 = !DILocation(line: 28, column: 9, scope: !42)
!81 = distinct !{!81, !80, !82, !83, !84}
!82 = !DILocation(line: 32, column: 9, scope: !42)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !DILocation(line: 23, column: 18, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 23, column: 17)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 22, column: 32)
!88 = distinct !DILexicalBlock(scope: !38, file: !3, line: 22, column: 9)
!89 = !DILocation(line: 23, column: 25, scope: !86)
!90 = !DILocation(line: 23, column: 35, scope: !86)
!91 = !DILocation(line: 23, column: 39, scope: !86)
!92 = !DILocation(line: 23, column: 42, scope: !86)
!93 = !DILocation(line: 23, column: 51, scope: !86)
!94 = !DILocation(line: 23, column: 49, scope: !86)
!95 = !DILocation(line: 23, column: 17, scope: !87)
!96 = !DILocation(line: 24, column: 27, scope: !97)
!97 = distinct !DILexicalBlock(scope: !86, file: !3, line: 23, column: 64)
!98 = !DILocation(line: 24, column: 23, scope: !97)
!99 = !DILocation(line: 25, column: 17, scope: !97)
!100 = !DILocation(line: 25, column: 28, scope: !97)
!101 = !DILocation(line: 26, column: 13, scope: !97)
!102 = !DILocation(line: 22, column: 27, scope: !88)
!103 = !DILocation(line: 22, column: 23, scope: !88)
!104 = distinct !{!104, !62, !105, !83, !84}
!105 = !DILocation(line: 27, column: 9, scope: !38)
!106 = !DILocation(line: 21, column: 23, scope: !40)
!107 = !DILocation(line: 21, column: 19, scope: !40)
!108 = distinct !{!108, !60, !109, !83, !84}
!109 = !DILocation(line: 34, column: 5, scope: !36)
!110 = !DILocation(line: 15, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 15, column: 12)
!112 = distinct !DILexicalBlock(scope: !57, file: !3, line: 14, column: 28)
!113 = !DILocation(line: 15, column: 20, scope: !111)
!114 = !DILocation(line: 15, column: 12, scope: !112)
!115 = !DILocation(line: 0, scope: !111)
!116 = !DILocation(line: 16, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !3, line: 15, column: 25)
!118 = !DILocation(line: 16, column: 20, scope: !117)
!119 = !DILocation(line: 14, column: 23, scope: !57)
!120 = distinct !{!120, !58, !121, !83, !84}
!121 = !DILocation(line: 20, column: 5, scope: !34)
!122 = !DILocation(line: 36, column: 12, scope: !19)
!123 = !DILocation(line: 37, column: 1, scope: !19)
!124 = !DILocation(line: 36, column: 5, scope: !19)
!125 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 41, type: !126, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!126 = !DISubroutineType(types: !127)
!127 = !{!11, !11, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !{!132, !133, !134, !136, !140}
!132 = !DILocalVariable(name: "argc", arg: 1, scope: !125, file: !3, line: 41, type: !11)
!133 = !DILocalVariable(name: "argv", arg: 2, scope: !125, file: !3, line: 41, type: !128)
!134 = !DILocalVariable(name: "i", scope: !135, file: !3, line: 45, type: !11)
!135 = distinct !DILexicalBlock(scope: !125, file: !3, line: 45, column: 5)
!136 = !DILocalVariable(name: "j", scope: !137, file: !3, line: 46, type: !11)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 46, column: 9)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 45, column: 42)
!139 = distinct !DILexicalBlock(scope: !135, file: !3, line: 45, column: 5)
!140 = !DILocalVariable(name: "res", scope: !125, file: !3, line: 51, type: !11)
!141 = !DILocation(line: 0, scope: !125)
!142 = !DILocation(line: 43, column: 12, scope: !125)
!143 = !DILocation(line: 43, column: 5, scope: !125)
!144 = !DILocation(line: 44, column: 30, scope: !125)
!145 = !DILocation(line: 44, column: 12, scope: !125)
!146 = !DILocation(line: 0, scope: !135)
!147 = !DILocation(line: 45, column: 5, scope: !135)
!148 = !DILocation(line: 0, scope: !137)
!149 = !DILocation(line: 46, column: 9, scope: !137)
!150 = !DILocation(line: 0, scope: !19, inlinedAt: !151)
!151 = distinct !DILocation(line: 51, column: 15, scope: !125)
!152 = !DILocation(line: 10, column: 5, scope: !19, inlinedAt: !151)
!153 = !DILocation(line: 10, column: 9, scope: !19, inlinedAt: !151)
!154 = !DILocation(line: 11, column: 5, scope: !19, inlinedAt: !151)
!155 = !DILocation(line: 11, column: 9, scope: !19, inlinedAt: !151)
!156 = !DILocation(line: 12, column: 5, scope: !19, inlinedAt: !151)
!157 = !DILocation(line: 13, column: 5, scope: !19, inlinedAt: !151)
!158 = !DILocation(line: 13, column: 12, scope: !19, inlinedAt: !151)
!159 = !DILocation(line: 0, scope: !34, inlinedAt: !151)
!160 = !DILocation(line: 14, column: 5, scope: !34, inlinedAt: !151)
!161 = !DILocation(line: 0, scope: !36, inlinedAt: !151)
!162 = !DILocation(line: 21, column: 5, scope: !36, inlinedAt: !151)
!163 = !DILocation(line: 0, scope: !38, inlinedAt: !151)
!164 = !DILocation(line: 22, column: 9, scope: !38, inlinedAt: !151)
!165 = !DILocation(line: 0, scope: !42, inlinedAt: !151)
!166 = !DILocation(line: 29, column: 18, scope: !65, inlinedAt: !151)
!167 = !DILocation(line: 29, column: 25, scope: !65, inlinedAt: !151)
!168 = !DILocation(line: 29, column: 29, scope: !65, inlinedAt: !151)
!169 = !DILocation(line: 29, column: 42, scope: !65, inlinedAt: !151)
!170 = !DILocation(line: 29, column: 40, scope: !65, inlinedAt: !151)
!171 = !DILocation(line: 29, column: 56, scope: !65, inlinedAt: !151)
!172 = !DILocation(line: 29, column: 54, scope: !65, inlinedAt: !151)
!173 = !DILocation(line: 29, column: 17, scope: !66, inlinedAt: !151)
!174 = !DILocation(line: 30, column: 24, scope: !76, inlinedAt: !151)
!175 = !DILocation(line: 31, column: 13, scope: !76, inlinedAt: !151)
!176 = !DILocation(line: 28, column: 27, scope: !67, inlinedAt: !151)
!177 = !DILocation(line: 28, column: 23, scope: !67, inlinedAt: !151)
!178 = !DILocation(line: 28, column: 9, scope: !42, inlinedAt: !151)
!179 = distinct !{!179, !178, !180, !83, !84}
!180 = !DILocation(line: 32, column: 9, scope: !42, inlinedAt: !151)
!181 = !DILocation(line: 23, column: 18, scope: !86, inlinedAt: !151)
!182 = !DILocation(line: 23, column: 25, scope: !86, inlinedAt: !151)
!183 = !DILocation(line: 23, column: 35, scope: !86, inlinedAt: !151)
!184 = !DILocation(line: 23, column: 39, scope: !86, inlinedAt: !151)
!185 = !DILocation(line: 23, column: 42, scope: !86, inlinedAt: !151)
!186 = !DILocation(line: 23, column: 51, scope: !86, inlinedAt: !151)
!187 = !DILocation(line: 23, column: 49, scope: !86, inlinedAt: !151)
!188 = !DILocation(line: 23, column: 17, scope: !87, inlinedAt: !151)
!189 = !DILocation(line: 24, column: 27, scope: !97, inlinedAt: !151)
!190 = !DILocation(line: 24, column: 23, scope: !97, inlinedAt: !151)
!191 = !DILocation(line: 25, column: 17, scope: !97, inlinedAt: !151)
!192 = !DILocation(line: 25, column: 28, scope: !97, inlinedAt: !151)
!193 = !DILocation(line: 26, column: 13, scope: !97, inlinedAt: !151)
!194 = !DILocation(line: 22, column: 27, scope: !88, inlinedAt: !151)
!195 = !DILocation(line: 22, column: 23, scope: !88, inlinedAt: !151)
!196 = distinct !{!196, !164, !197, !83, !84}
!197 = !DILocation(line: 27, column: 9, scope: !38, inlinedAt: !151)
!198 = !DILocation(line: 21, column: 23, scope: !40, inlinedAt: !151)
!199 = !DILocation(line: 21, column: 19, scope: !40, inlinedAt: !151)
!200 = distinct !{!200, !162, !201, !83, !84}
!201 = !DILocation(line: 34, column: 5, scope: !36, inlinedAt: !151)
!202 = !DILocation(line: 15, column: 12, scope: !111, inlinedAt: !151)
!203 = !DILocation(line: 15, column: 20, scope: !111, inlinedAt: !151)
!204 = !DILocation(line: 15, column: 12, scope: !112, inlinedAt: !151)
!205 = !DILocation(line: 0, scope: !111, inlinedAt: !151)
!206 = !DILocation(line: 16, column: 13, scope: !117, inlinedAt: !151)
!207 = !DILocation(line: 16, column: 20, scope: !117, inlinedAt: !151)
!208 = !DILocation(line: 14, column: 23, scope: !57, inlinedAt: !151)
!209 = !DILocation(line: 14, column: 19, scope: !57, inlinedAt: !151)
!210 = distinct !{!210, !160, !211, !83, !84}
!211 = !DILocation(line: 20, column: 5, scope: !34, inlinedAt: !151)
!212 = !DILocation(line: 37, column: 1, scope: !19, inlinedAt: !151)
!213 = !DILocation(line: 53, column: 1, scope: !125)
!214 = !DILocation(line: 45, column: 38, scope: !139)
!215 = !DILocation(line: 45, column: 23, scope: !139)
!216 = distinct !{!216, !147, !217, !83, !84}
!217 = !DILocation(line: 50, column: 5, scope: !135)
!218 = !DILocation(line: 48, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 46, column: 46)
!220 = distinct !DILexicalBlock(scope: !137, file: !3, line: 46, column: 9)
!221 = !DILocation(line: 48, column: 31, scope: !219)
!222 = !DILocation(line: 48, column: 13, scope: !219)
!223 = !DILocation(line: 48, column: 22, scope: !219)
!224 = !DILocation(line: 46, column: 42, scope: !220)
!225 = !DILocation(line: 46, column: 27, scope: !220)
!226 = distinct !{!226, !149, !227, !83, !84}
!227 = !DILocation(line: 49, column: 9, scope: !137)
!228 = !DISubprogram(name: "srand", scope: !229, file: !229, line: 455, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !233)
!229 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "d0b67d4c866748c04ac2b355c26c1c70")
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232}
!232 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!233 = !{}
!234 = !DISubprogram(name: "rand", scope: !229, file: !229, line: 453, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !233)
!235 = !DISubroutineType(types: !236)
!236 = !{!11}
