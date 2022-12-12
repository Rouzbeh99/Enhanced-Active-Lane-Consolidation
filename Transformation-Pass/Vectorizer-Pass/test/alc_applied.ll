; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !11
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !13
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !15
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@str.2 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture readnone %b, ptr noalias nocapture readnone %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr undef, metadata !36, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr undef, metadata !37, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %cond, metadata !38, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 %n, metadata !39, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  %cmp215 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  br i1 %cmp215, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !48

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond1.preheader.us, !dbg !49

for.cond1.preheader.us:                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.us.preheader
  %j.018.us = phi i32 [ %inc8.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.018.us, metadata !40, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !50
  %0 = call i32 @llvm.vscale.i32(), !dbg !48
  %1 = mul i32 %0, 4, !dbg !48
  %2 = mul i32 %1, 2, !dbg !48
  %3 = icmp uge i32 %n, %2, !dbg !48
  br i1 %3, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !48

for.body4.us:                                     ; preds = %Preheader.for.remaining.iterations, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %7, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !42, metadata !DIExpression()), !dbg !50
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !51
  %4 = load i8, ptr %arrayidx.us, align 1, !dbg !51, !tbaa !55, !range !59
  %tobool.not.us = icmp eq i8 %4, 0, !dbg !51
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us, !dbg !60

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx6.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !61
  %5 = load i32, ptr %arrayidx6.us, align 4, !dbg !63, !tbaa !64
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !63
  %6 = shl i32 %indvars.iv.tr, 1, !dbg !63
  %add.us = add nsw i32 %5, %6, !dbg !63
  store i32 %add.us, ptr %arrayidx6.us, align 4, !dbg !63, !tbaa !64
  br label %for.inc.us, !dbg !66

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.cond1.preheader.us
  %7 = phi i64 [ 0, %for.cond1.preheader.us ], [ %64, %middel.block ]
  br label %for.body4.us

pre.alc:                                          ; preds = %for.cond1.preheader.us
  %8 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %9 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %10 = urem i32 %n, %1
  %total.iterations.to.be.vectorized = sub i32 %n, %10
  %11 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !51
  %12 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %13 = load <vscale x 4 x i8>, ptr %11, align 4
  %14 = icmp eq <vscale x 4 x i8> %13, zeroinitializer
  %15 = xor <vscale x 4 x i1> %14, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %16 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %15, <vscale x 4 x i1> %15)
  %17 = trunc i64 %16 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %59, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %9, %pre.alc ], [ %56, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %15, %pre.alc ], [ %57, %new.latch ]
  %uniform.vec.actives = phi i32 [ %17, %pre.alc ], [ %58, %new.latch ]
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %19 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !51
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %21 = load <vscale x 4 x i8>, ptr %19, align 4
  %22 = icmp eq <vscale x 4 x i8> %21, zeroinitializer
  %23 = xor <vscale x 4 x i1> %22, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %24 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %23, <vscale x 4 x i1> %23)
  %25 = trunc i64 %24 to i32
  %26 = add i32 %uniform.vec.actives, %25
  %condition = icmp ule i32 %26, %1
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %27 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %28 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %23, <vscale x 4 x i32> %18)
  %29 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %30 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %27, <vscale x 4 x i32> %28)
  %31 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %26)
  %32 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %31, <vscale x 4 x i1> %31)
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %26, %1
  br i1 %34, label %uniform.block, label %join.block

uniform.block:                                    ; preds = %lane.gather
  %35 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !61
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %8, ptr %35, <vscale x 4 x i32> %30)
  %37 = add <vscale x 4 x i32> %36, zeroinitializer
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %37, <vscale x 4 x i1> %8, ptr %35, <vscale x 4 x i32> %30)
  %38 = add i32 %vector.loop.index, %1
  %39 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %38, i32 1)
  %40 = getelementptr inbounds i8, ptr %cond, i32 %38, !dbg !51
  %41 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %38, i32 1)
  %42 = load <vscale x 4 x i8>, ptr %40, align 4
  %43 = icmp eq <vscale x 4 x i8> %42, zeroinitializer
  %44 = xor <vscale x 4 x i1> %43, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %45 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %44, <vscale x 4 x i1> %44)
  %46 = trunc i64 %45 to i32
  br label %join.block

linearized:                                       ; preds = %alc.header
  %47 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !61
  %48 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %47, i32 16, <vscale x 4 x i1> %23, <vscale x 4 x i32> undef)
  %49 = shl <vscale x 4 x i32> %18, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %50 = add <vscale x 4 x i32> %48, %49
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %50, ptr %47, i32 16, <vscale x 4 x i1> %23)
  br label %new.latch

join.block:                                       ; preds = %uniform.block, %lane.gather
  %51 = phi i32 [ %vector.loop.index, %lane.gather ], [ %38, %uniform.block ]
  %52 = phi <vscale x 4 x i32> [ %30, %lane.gather ], [ %39, %uniform.block ]
  %53 = phi <vscale x 4 x i1> [ %31, %lane.gather ], [ %44, %uniform.block ]
  %54 = phi i32 [ %33, %lane.gather ], [ %46, %uniform.block ]
  br label %new.latch

new.latch:                                        ; preds = %join.block, %linearized
  %55 = phi i32 [ %51, %join.block ], [ %vector.loop.index, %linearized ]
  %56 = phi <vscale x 4 x i32> [ %52, %join.block ], [ %uniform.vector, %linearized ]
  %57 = phi <vscale x 4 x i1> [ %53, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %58 = phi i32 [ %54, %join.block ], [ %uniform.vec.actives, %linearized ]
  %59 = add i32 %55, %1
  %60 = icmp uge i32 %59, %total.iterations.to.be.vectorized
  br i1 %60, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %10, 0
  %61 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !61
  %62 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %57, ptr %61, <vscale x 4 x i32> %56)
  %63 = add <vscale x 4 x i32> %62, zeroinitializer
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %63, <vscale x 4 x i1> %57, ptr %61, <vscale x 4 x i32> %56)
  %64 = zext i32 %59 to i64
  br i1 %condition1, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %Preheader.for.remaining.iterations

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !67
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !42, metadata !DIExpression()), !dbg !50
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !68
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !48, !llvm.loop !69

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %middel.block, %for.inc.us
  %inc8.us = add nuw nsw i32 %j.018.us, 1, !dbg !73
  call void @llvm.dbg.value(metadata i32 %inc8.us, metadata !40, metadata !DIExpression()), !dbg !47
  %exitcond22.not = icmp eq i32 %inc8.us, 10, !dbg !74
  br i1 %exitcond22.not, label %for.cond.cleanup.loopexit, label %for.cond1.preheader.us, !dbg !49, !llvm.loop !75

for.cond.cleanup.loopexit:                        ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us
  br label %for.cond.cleanup, !dbg !77

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !77
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #1 !dbg !78 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !82, metadata !DIExpression()), !dbg !84
  %conv = sext i32 %n to i64, !dbg !85
  %mul = shl nsw i64 %conv, 2, !dbg !86
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !87
  call void @llvm.dbg.value(metadata ptr %call, metadata !83, metadata !DIExpression()), !dbg !84
  %cmp = icmp eq ptr %call, null, !dbg !88
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !91
  tail call void @exit(i32 noundef 1) #11, !dbg !93
  unreachable, !dbg !93

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !94
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #1 !dbg !95 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !99, metadata !DIExpression()), !dbg !101
  %conv = sext i32 %n to i64, !dbg !102
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #10, !dbg !103
  call void @llvm.dbg.value(metadata ptr %call, metadata !100, metadata !DIExpression()), !dbg !101
  %cmp = icmp eq ptr %call, null, !dbg !104
  br i1 %cmp, label %if.then, label %if.end, !dbg !106

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !107
  tail call void @exit(i32 noundef 1) #11, !dbg !109
  unreachable, !dbg !109

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !110
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !111 {
entry:
  call void @llvm.dbg.value(metadata i32 5000000, metadata !115, metadata !DIExpression()), !dbg !121
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !122
  store ptr %call, ptr @a, align 8, !dbg !123, !tbaa !124
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !126
  store ptr %call1, ptr @b, align 8, !dbg !127, !tbaa !124
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !128
  store ptr %call2, ptr @c, align 8, !dbg !129, !tbaa !124
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !130
  store ptr %call3, ptr @cond, align 8, !dbg !131, !tbaa !124
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !132
  %0 = load ptr, ptr @a, align 8, !tbaa !124
  %1 = load ptr, ptr @b, align 8, !tbaa !124
  %2 = load ptr, ptr @c, align 8, !tbaa !124
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !132
  br label %for.body, !dbg !133

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr undef, ptr undef, ptr noundef nonnull %call3, i32 noundef 5000000), !dbg !134
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !135
  %3 = load ptr, ptr @c, align 8, !tbaa !124
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !121
  br label %for.body17, !dbg !136

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !116, metadata !DIExpression()), !dbg !132
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !137
  %4 = trunc i64 %indvars.iv to i32, !dbg !140
  store i32 %4, ptr %arrayidx, align 4, !dbg !140, !tbaa !64
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !141
  store i32 2, ptr %arrayidx5, align 4, !dbg !142, !tbaa !64
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !143
  store i32 0, ptr %arrayidx7, align 4, !dbg !144, !tbaa !64
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !145
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !146

cond.false:                                       ; preds = %for.body
  %rem = urem i32 %4, 10, !dbg !147
  %cmp9 = icmp eq i32 %rem, 0, !dbg !148
  %conv = zext i1 %cmp9 to i8, !dbg !148
  br label %cond.end, !dbg !146

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !146
  %arrayidx11 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !149
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !150, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !116, metadata !DIExpression()), !dbg !132
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !152
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !133, !llvm.loop !153

for.cond.cleanup16:                               ; preds = %for.body17
  %add.lcssa = phi i32 [ %add, %for.body17 ], !dbg !155
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add.lcssa), !dbg !158
  ret i32 0, !dbg !159

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body17 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !119, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !118, metadata !DIExpression()), !dbg !121
  %arrayidx19 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !160
  %5 = load i32, ptr %arrayidx19, align 4, !dbg !160, !tbaa !64
  %add = add nsw i32 %5, %sum.043, !dbg !155
  call void @llvm.dbg.value(metadata i32 %add, metadata !118, metadata !DIExpression()), !dbg !121
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !161
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !119, metadata !DIExpression()), !dbg !135
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 5000000, !dbg !162
  br i1 %exitcond49.not, label %for.cond.cleanup16, label %for.body17, !dbg !136, !llvm.loop !163
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #9

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 36, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "102940f9fa10c84dfb328f65a3fb4041")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 37, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 38, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 39, type: !8, isLocal: false, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"frame-pointer", i32 1}
!28 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!29 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 12, type: !30, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !32, !33, !6}
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!34 = !{!35, !36, !37, !38, !39, !40, !42}
!35 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !3, line: 12, type: !32)
!36 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !3, line: 12, type: !32)
!37 = !DILocalVariable(name: "c", arg: 3, scope: !29, file: !3, line: 12, type: !32)
!38 = !DILocalVariable(name: "cond", arg: 4, scope: !29, file: !3, line: 13, type: !33)
!39 = !DILocalVariable(name: "n", arg: 5, scope: !29, file: !3, line: 13, type: !6)
!40 = !DILocalVariable(name: "j", scope: !41, file: !3, line: 19, type: !6)
!41 = distinct !DILexicalBlock(scope: !29, file: !3, line: 19, column: 5)
!42 = !DILocalVariable(name: "i", scope: !43, file: !3, line: 20, type: !6)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 20, column: 9)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 19, column: 34)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 5)
!46 = !DILocation(line: 0, scope: !29)
!47 = !DILocation(line: 0, scope: !41)
!48 = !DILocation(line: 20, column: 9, scope: !43)
!49 = !DILocation(line: 19, column: 5, scope: !41)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocation(line: 21, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 21, column: 17)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 20, column: 37)
!54 = distinct !DILexicalBlock(scope: !43, file: !3, line: 20, column: 9)
!55 = !{!56, !56, i64 0}
!56 = !{!"_Bool", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{i8 0, i8 2}
!60 = !DILocation(line: 21, column: 17, scope: !53)
!61 = !DILocation(line: 23, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !52, file: !3, line: 21, column: 26)
!63 = !DILocation(line: 23, column: 22, scope: !62)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !57, i64 0}
!66 = !DILocation(line: 28, column: 13, scope: !62)
!67 = !DILocation(line: 20, column: 32, scope: !54)
!68 = !DILocation(line: 20, column: 27, scope: !54)
!69 = distinct !{!69, !48, !70, !71, !72}
!70 = !DILocation(line: 29, column: 9, scope: !43)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !DILocation(line: 19, column: 30, scope: !45)
!74 = !DILocation(line: 19, column: 23, scope: !45)
!75 = distinct !{!75, !49, !76, !71, !72}
!76 = !DILocation(line: 30, column: 5, scope: !41)
!77 = !DILocation(line: 34, column: 1, scope: !29)
!78 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 41, type: !79, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!5, !6}
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "n", arg: 1, scope: !78, file: !3, line: 41, type: !6)
!83 = !DILocalVariable(name: "ptr", scope: !78, file: !3, line: 42, type: !5)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 42, column: 45, scope: !78)
!86 = !DILocation(line: 42, column: 43, scope: !78)
!87 = !DILocation(line: 42, column: 24, scope: !78)
!88 = !DILocation(line: 43, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !78, file: !3, line: 43, column: 9)
!90 = !DILocation(line: 43, column: 9, scope: !78)
!91 = !DILocation(line: 44, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 43, column: 22)
!93 = !DILocation(line: 45, column: 9, scope: !92)
!94 = !DILocation(line: 47, column: 5, scope: !78)
!95 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 50, type: !96, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!8, !6}
!98 = !{!99, !100}
!99 = !DILocalVariable(name: "n", arg: 1, scope: !95, file: !3, line: 50, type: !6)
!100 = !DILocalVariable(name: "ptr", scope: !95, file: !3, line: 51, type: !8)
!101 = !DILocation(line: 0, scope: !95)
!102 = !DILocation(line: 51, column: 48, scope: !95)
!103 = !DILocation(line: 51, column: 26, scope: !95)
!104 = !DILocation(line: 52, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !95, file: !3, line: 52, column: 9)
!106 = !DILocation(line: 52, column: 9, scope: !95)
!107 = !DILocation(line: 53, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 52, column: 22)
!109 = !DILocation(line: 54, column: 9, scope: !108)
!110 = !DILocation(line: 56, column: 5, scope: !95)
!111 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !112, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!6}
!114 = !{!115, !116, !118, !119}
!115 = !DILocalVariable(name: "n", scope: !111, file: !3, line: 61, type: !6)
!116 = !DILocalVariable(name: "i", scope: !117, file: !3, line: 68, type: !6)
!117 = distinct !DILexicalBlock(scope: !111, file: !3, line: 68, column: 5)
!118 = !DILocalVariable(name: "sum", scope: !111, file: !3, line: 77, type: !6)
!119 = !DILocalVariable(name: "i", scope: !120, file: !3, line: 79, type: !6)
!120 = distinct !DILexicalBlock(scope: !111, file: !3, line: 79, column: 5)
!121 = !DILocation(line: 0, scope: !111)
!122 = !DILocation(line: 63, column: 9, scope: !111)
!123 = !DILocation(line: 63, column: 7, scope: !111)
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !57, i64 0}
!126 = !DILocation(line: 64, column: 9, scope: !111)
!127 = !DILocation(line: 64, column: 7, scope: !111)
!128 = !DILocation(line: 65, column: 9, scope: !111)
!129 = !DILocation(line: 65, column: 7, scope: !111)
!130 = !DILocation(line: 66, column: 12, scope: !111)
!131 = !DILocation(line: 66, column: 10, scope: !111)
!132 = !DILocation(line: 0, scope: !117)
!133 = !DILocation(line: 68, column: 5, scope: !117)
!134 = !DILocation(line: 75, column: 5, scope: !111)
!135 = !DILocation(line: 0, scope: !120)
!136 = !DILocation(line: 79, column: 5, scope: !120)
!137 = !DILocation(line: 69, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 68, column: 33)
!139 = distinct !DILexicalBlock(scope: !117, file: !3, line: 68, column: 5)
!140 = !DILocation(line: 69, column: 14, scope: !138)
!141 = !DILocation(line: 70, column: 9, scope: !138)
!142 = !DILocation(line: 70, column: 14, scope: !138)
!143 = !DILocation(line: 71, column: 9, scope: !138)
!144 = !DILocation(line: 71, column: 14, scope: !138)
!145 = !DILocation(line: 72, column: 22, scope: !138)
!146 = !DILocation(line: 72, column: 20, scope: !138)
!147 = !DILocation(line: 72, column: 36, scope: !138)
!148 = !DILocation(line: 72, column: 41, scope: !138)
!149 = !DILocation(line: 72, column: 9, scope: !138)
!150 = !DILocation(line: 72, column: 17, scope: !138)
!151 = !DILocation(line: 68, column: 28, scope: !139)
!152 = !DILocation(line: 68, column: 23, scope: !139)
!153 = distinct !{!153, !133, !154, !71, !72}
!154 = !DILocation(line: 73, column: 5, scope: !117)
!155 = !DILocation(line: 80, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 79, column: 33)
!157 = distinct !DILexicalBlock(scope: !120, file: !3, line: 79, column: 5)
!158 = !DILocation(line: 83, column: 5, scope: !111)
!159 = !DILocation(line: 85, column: 5, scope: !111)
!160 = !DILocation(line: 80, column: 16, scope: !156)
!161 = !DILocation(line: 79, column: 28, scope: !157)
!162 = !DILocation(line: 79, column: 23, scope: !157)
!163 = distinct !{!163, !136, !164, !71, !72}
!164 = !DILocation(line: 81, column: 5, scope: !120)
