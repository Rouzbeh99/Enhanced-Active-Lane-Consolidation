; ModuleID = 'alc_applied.ll'
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
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %b, metadata !36, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %c, metadata !37, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %cond, metadata !38, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 %n, metadata !39, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  %cmp261 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  br i1 %cmp261, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !48

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %0 = tail call i32 @llvm.vscale.i32(), !dbg !46
  %1 = shl i32 %0, 2
  %2 = shl i32 %0, 3
  %.not = icmp ugt i32 %2, %n
  %3 = insertelement <vscale x 4 x i32> poison, i32 %1, i64 0
  %step.vector = shufflevector <vscale x 4 x i32> %3, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  br label %for.cond1.preheader.us, !dbg !49

for.cond1.preheader.us:                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.us.preheader
  %j.063.us = phi i32 [ %inc36.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.063.us, metadata !40, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !50
  br i1 %.not, label %for.body4.us.preheader, label %pre.alc, !dbg !48

for.body4.us.preheader:                           ; preds = %middel.block, %for.cond1.preheader.us
  %indvars.iv.ph = phi i64 [ %75, %middel.block ], [ 0, %for.cond1.preheader.us ]
  br label %for.body4.us, !dbg !48

for.body4.us:                                     ; preds = %for.body4.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %indvars.iv.ph, %for.body4.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !42, metadata !DIExpression()), !dbg !50
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !51
  %4 = load i8, ptr %arrayidx.us, align 1, !dbg !51, !tbaa !55, !range !59
  %tobool.not.us = icmp eq i8 %4, 0, !dbg !51
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us, !dbg !60

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx6.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !61
  %5 = load i32, ptr %arrayidx6.us, align 4, !dbg !61, !tbaa !63
  %mul.neg.us = mul i32 %5, -2, !dbg !65
  %arrayidx8.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !66
  %6 = load i32, ptr %arrayidx8.us, align 4, !dbg !66, !tbaa !63
  %7 = sub nsw i32 %5, %6, !dbg !67
  %sub.us = shl nsw i32 %7, 1, !dbg !67
  %arrayidx11.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !68
  %8 = load i32, ptr %arrayidx11.us, align 4, !dbg !68, !tbaa !63
  %sub15.us = add i32 %8, %mul.neg.us, !dbg !69
  %add.us = add nsw i32 %sub15.us, %sub.us, !dbg !70
  store i32 %add.us, ptr %arrayidx6.us, align 4, !dbg !71, !tbaa !63
  %add20.us = add nsw i32 %8, 2, !dbg !72
  %add23.us = add nsw i32 %add20.us, %add.us, !dbg !73
  store i32 %add23.us, ptr %arrayidx11.us, align 4, !dbg !74, !tbaa !63
  %mul2860.us = add i32 %add23.us, %add.us, !dbg !75
  %add32.us = shl i32 %mul2860.us, 1, !dbg !75
  store i32 %add32.us, ptr %arrayidx8.us, align 4, !dbg !76, !tbaa !63
  br label %for.inc.us, !dbg !77

pre.alc:                                          ; preds = %for.cond1.preheader.us
  %9 = urem i32 %n, %2
  %total.iterations.to.be.vectorized = sub i32 %n, %9
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %index = phi i32 [ 0, %pre.alc ], [ %73, %new.latch ]
  %10 = sext i32 %index to i64, !dbg !51
  %11 = getelementptr inbounds i8, ptr %cond, i64 %10, !dbg !51
  %12 = load <vscale x 4 x i8>, ptr %11, align 4
  %13 = icmp ne <vscale x 4 x i8> %12, zeroinitializer
  %14 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %13, <vscale x 4 x i1> %13)
  %15 = trunc i64 %14 to i32
  %16 = add i32 %index, %1
  %17 = sext i32 %16 to i64, !dbg !51
  %18 = getelementptr inbounds i8, ptr %cond, i64 %17, !dbg !51
  %19 = load <vscale x 4 x i8>, ptr %18, align 4
  %20 = icmp ne <vscale x 4 x i8> %19, zeroinitializer
  %21 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %20, <vscale x 4 x i1> %20)
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, %15
  %condition.not = icmp ugt i32 %23, %1
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %24 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %index, i32 1)
  %25 = add <vscale x 4 x i32> %24, %step.vector
  %26 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %13, <vscale x 4 x i32> %24)
  %27 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %20, <vscale x 4 x i32> %25)
  %28 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %15)
  %29 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %26, <vscale x 4 x i32> %27)
  %30 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %23)
  %31 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %30, ptr %a, <vscale x 4 x i32> %29)
  %32 = mul <vscale x 4 x i32> %31, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %33 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %30, ptr %c, <vscale x 4 x i32> %29)
  %34 = sub <vscale x 4 x i32> %31, %33
  %35 = shl <vscale x 4 x i32> %34, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %36 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %30, ptr %b, <vscale x 4 x i32> %29)
  %37 = add <vscale x 4 x i32> %36, %32
  %38 = add <vscale x 4 x i32> %37, %35
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %38, <vscale x 4 x i1> %30, ptr %a, <vscale x 4 x i32> %29)
  %39 = add <vscale x 4 x i32> %36, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %40 = add <vscale x 4 x i32> %39, %38
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %40, <vscale x 4 x i1> %30, ptr %b, <vscale x 4 x i32> %29)
  %41 = add <vscale x 4 x i32> %40, %38
  %42 = shl <vscale x 4 x i32> %41, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %42, <vscale x 4 x i1> %30, ptr %c, <vscale x 4 x i32> %29)
  br label %new.latch

linearized:                                       ; preds = %alc.header
  %43 = getelementptr inbounds i32, ptr %a, i64 %10, !dbg !61
  %44 = getelementptr inbounds i32, ptr %c, i64 %10, !dbg !66
  %45 = getelementptr inbounds i32, ptr %b, i64 %10, !dbg !68
  %46 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %43, i32 16, <vscale x 4 x i1> %13, <vscale x 4 x i32> undef)
  %47 = mul <vscale x 4 x i32> %46, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %48 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %44, i32 16, <vscale x 4 x i1> %13, <vscale x 4 x i32> undef)
  %49 = sub <vscale x 4 x i32> %46, %48
  %50 = shl <vscale x 4 x i32> %49, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %51 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %45, i32 16, <vscale x 4 x i1> %13, <vscale x 4 x i32> undef)
  %52 = add <vscale x 4 x i32> %51, %47
  %53 = add <vscale x 4 x i32> %52, %50
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %53, ptr %43, i32 16, <vscale x 4 x i1> %13)
  %54 = add <vscale x 4 x i32> %51, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %55 = add <vscale x 4 x i32> %54, %53
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %55, ptr %45, i32 16, <vscale x 4 x i1> %13)
  %56 = add <vscale x 4 x i32> %55, %53
  %57 = shl <vscale x 4 x i32> %56, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %57, ptr %44, i32 16, <vscale x 4 x i1> %13)
  %58 = getelementptr inbounds i32, ptr %a, i64 %17, !dbg !61
  %59 = getelementptr inbounds i32, ptr %c, i64 %17, !dbg !66
  %60 = getelementptr inbounds i32, ptr %b, i64 %17, !dbg !68
  %61 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %58, i32 16, <vscale x 4 x i1> %20, <vscale x 4 x i32> undef)
  %62 = mul <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %63 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %59, i32 16, <vscale x 4 x i1> %20, <vscale x 4 x i32> undef)
  %64 = sub <vscale x 4 x i32> %61, %63
  %65 = shl <vscale x 4 x i32> %64, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %66 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %60, i32 16, <vscale x 4 x i1> %20, <vscale x 4 x i32> undef)
  %67 = add <vscale x 4 x i32> %66, %62
  %68 = add <vscale x 4 x i32> %67, %65
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %68, ptr %58, i32 16, <vscale x 4 x i1> %20)
  %69 = add <vscale x 4 x i32> %66, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %70 = add <vscale x 4 x i32> %69, %68
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %70, ptr %60, i32 16, <vscale x 4 x i1> %20)
  %71 = add <vscale x 4 x i32> %70, %68
  %72 = shl <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %72, ptr %59, i32 16, <vscale x 4 x i1> %20)
  br label %new.latch

new.latch:                                        ; preds = %linearized, %lane.gather
  %73 = add i32 %16, %1
  %74 = icmp eq i32 %73, %total.iterations.to.be.vectorized
  br i1 %74, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %9, 0
  %75 = zext i32 %total.iterations.to.be.vectorized to i64
  br i1 %condition1, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us.preheader

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !78
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !42, metadata !DIExpression()), !dbg !50
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !79
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !48, !llvm.loop !80

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us, %middel.block
  %inc36.us = add nuw nsw i32 %j.063.us, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc36.us, metadata !40, metadata !DIExpression()), !dbg !47
  %exitcond66.not = icmp eq i32 %inc36.us, 100, !dbg !85
  br i1 %exitcond66.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !49, !llvm.loop !86

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #1 !dbg !89 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !95
  %conv = sext i32 %n to i64, !dbg !96
  %mul = shl nsw i64 %conv, 2, !dbg !97
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !98
  call void @llvm.dbg.value(metadata ptr %call, metadata !94, metadata !DIExpression()), !dbg !95
  %cmp = icmp eq ptr %call, null, !dbg !99
  br i1 %cmp, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !102
  tail call void @exit(i32 noundef 1) #11, !dbg !104
  unreachable, !dbg !104

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !105
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #1 !dbg !106 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !110, metadata !DIExpression()), !dbg !112
  %conv = sext i32 %n to i64, !dbg !113
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #10, !dbg !114
  call void @llvm.dbg.value(metadata ptr %call, metadata !111, metadata !DIExpression()), !dbg !112
  %cmp = icmp eq ptr %call, null, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !118
  tail call void @exit(i32 noundef 1) #11, !dbg !120
  unreachable, !dbg !120

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !121
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !122 {
entry:
  call void @llvm.dbg.value(metadata i32 200000, metadata !126, metadata !DIExpression()), !dbg !132
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 200000), !dbg !133
  store ptr %call, ptr @a, align 8, !dbg !134, !tbaa !135
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 200000), !dbg !137
  store ptr %call1, ptr @b, align 8, !dbg !138, !tbaa !135
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 200000), !dbg !139
  store ptr %call2, ptr @c, align 8, !dbg !140, !tbaa !135
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 200000), !dbg !141
  store ptr %call3, ptr @cond, align 8, !dbg !142, !tbaa !135
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !143
  %0 = load ptr, ptr @a, align 8, !tbaa !135
  %1 = load ptr, ptr @b, align 8, !tbaa !135
  %2 = load ptr, ptr @c, align 8, !tbaa !135
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !143
  br label %for.body, !dbg !144

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %call3, i32 noundef 200000), !dbg !145
  call void @llvm.dbg.value(metadata i32 0, metadata !129, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !146
  %3 = load ptr, ptr @c, align 8, !tbaa !135
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 0, metadata !129, metadata !DIExpression()), !dbg !132
  br label %for.body17, !dbg !147

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !127, metadata !DIExpression()), !dbg !143
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !148
  %4 = trunc i64 %indvars.iv to i32, !dbg !151
  store i32 %4, ptr %arrayidx, align 4, !dbg !151, !tbaa !63
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !152
  store i32 2, ptr %arrayidx5, align 4, !dbg !153, !tbaa !63
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !154
  store i32 0, ptr %arrayidx7, align 4, !dbg !155, !tbaa !63
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !156
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !157

cond.false:                                       ; preds = %for.body
  %rem = urem i32 %4, 10, !dbg !158
  %cmp9 = icmp eq i32 %rem, 0, !dbg !159
  %conv = zext i1 %cmp9 to i8, !dbg !159
  br label %cond.end, !dbg !157

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !157
  %arrayidx11 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !160
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !161, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !162
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !127, metadata !DIExpression()), !dbg !143
  %exitcond.not = icmp eq i64 %indvars.iv.next, 200000, !dbg !163
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !144, !llvm.loop !164

for.cond.cleanup16:                               ; preds = %for.body17
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add), !dbg !166
  ret i32 0, !dbg !167

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body17 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !130, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !129, metadata !DIExpression()), !dbg !132
  %arrayidx19 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !168
  %5 = load i32, ptr %arrayidx19, align 4, !dbg !168, !tbaa !63
  %add = add nsw i32 %5, %sum.043, !dbg !171
  call void @llvm.dbg.value(metadata i32 %add, metadata !129, metadata !DIExpression()), !dbg !132
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !130, metadata !DIExpression()), !dbg !146
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 200000, !dbg !173
  br i1 %exitcond49.not, label %for.cond.cleanup16, label %for.body17, !dbg !147, !llvm.loop !174
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #7

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #9

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #9

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 33, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "6d1c9132a01675ff4928ca5964a2afbe")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 34, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 35, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 36, type: !8, isLocal: false, isDefinition: true)
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
!41 = distinct !DILexicalBlock(scope: !29, file: !3, line: 19, column: 1)
!42 = !DILocalVariable(name: "i", scope: !43, file: !3, line: 20, type: !6)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 20, column: 3)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 19, column: 27)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 1)
!46 = !DILocation(line: 0, scope: !29)
!47 = !DILocation(line: 0, scope: !41)
!48 = !DILocation(line: 20, column: 3, scope: !43)
!49 = !DILocation(line: 19, column: 1, scope: !41)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocation(line: 21, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 21, column: 9)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 20, column: 31)
!54 = distinct !DILexicalBlock(scope: !43, file: !3, line: 20, column: 3)
!55 = !{!56, !56, i64 0}
!56 = !{!"_Bool", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{i8 0, i8 2}
!60 = !DILocation(line: 21, column: 9, scope: !53)
!61 = !DILocation(line: 22, column: 19, scope: !62)
!62 = distinct !DILexicalBlock(scope: !52, file: !3, line: 21, column: 18)
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !57, i64 0}
!65 = !DILocation(line: 22, column: 17, scope: !62)
!66 = !DILocation(line: 22, column: 30, scope: !62)
!67 = !DILocation(line: 22, column: 24, scope: !62)
!68 = !DILocation(line: 22, column: 39, scope: !62)
!69 = !DILocation(line: 22, column: 44, scope: !62)
!70 = !DILocation(line: 22, column: 36, scope: !62)
!71 = !DILocation(line: 22, column: 12, scope: !62)
!72 = !DILocation(line: 23, column: 16, scope: !62)
!73 = !DILocation(line: 23, column: 23, scope: !62)
!74 = !DILocation(line: 23, column: 12, scope: !62)
!75 = !DILocation(line: 24, column: 23, scope: !62)
!76 = !DILocation(line: 24, column: 12, scope: !62)
!77 = !DILocation(line: 25, column: 5, scope: !62)
!78 = !DILocation(line: 20, column: 26, scope: !54)
!79 = !DILocation(line: 20, column: 21, scope: !54)
!80 = distinct !{!80, !48, !81, !82, !83}
!81 = !DILocation(line: 26, column: 3, scope: !43)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !DILocation(line: 19, column: 24, scope: !45)
!85 = !DILocation(line: 19, column: 17, scope: !45)
!86 = distinct !{!86, !49, !87, !82, !83}
!87 = !DILocation(line: 27, column: 2, scope: !41)
!88 = !DILocation(line: 31, column: 1, scope: !29)
!89 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 38, type: !90, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!90 = !DISubroutineType(types: !91)
!91 = !{!5, !6}
!92 = !{!93, !94}
!93 = !DILocalVariable(name: "n", arg: 1, scope: !89, file: !3, line: 38, type: !6)
!94 = !DILocalVariable(name: "ptr", scope: !89, file: !3, line: 39, type: !5)
!95 = !DILocation(line: 0, scope: !89)
!96 = !DILocation(line: 39, column: 39, scope: !89)
!97 = !DILocation(line: 39, column: 38, scope: !89)
!98 = !DILocation(line: 39, column: 20, scope: !89)
!99 = !DILocation(line: 40, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !89, file: !3, line: 40, column: 7)
!101 = !DILocation(line: 40, column: 7, scope: !89)
!102 = !DILocation(line: 41, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 40, column: 20)
!104 = !DILocation(line: 42, column: 5, scope: !103)
!105 = !DILocation(line: 44, column: 3, scope: !89)
!106 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 47, type: !107, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!8, !6}
!109 = !{!110, !111}
!110 = !DILocalVariable(name: "n", arg: 1, scope: !106, file: !3, line: 47, type: !6)
!111 = !DILocalVariable(name: "ptr", scope: !106, file: !3, line: 48, type: !8)
!112 = !DILocation(line: 0, scope: !106)
!113 = !DILocation(line: 48, column: 42, scope: !106)
!114 = !DILocation(line: 48, column: 22, scope: !106)
!115 = !DILocation(line: 49, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !106, file: !3, line: 49, column: 7)
!117 = !DILocation(line: 49, column: 7, scope: !106)
!118 = !DILocation(line: 50, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !3, line: 49, column: 20)
!120 = !DILocation(line: 51, column: 5, scope: !119)
!121 = !DILocation(line: 53, column: 3, scope: !106)
!122 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !123, scopeLine: 56, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!6}
!125 = !{!126, !127, !129, !130}
!126 = !DILocalVariable(name: "n", scope: !122, file: !3, line: 58, type: !6)
!127 = !DILocalVariable(name: "i", scope: !128, file: !3, line: 65, type: !6)
!128 = distinct !DILexicalBlock(scope: !122, file: !3, line: 65, column: 3)
!129 = !DILocalVariable(name: "sum", scope: !122, file: !3, line: 74, type: !6)
!130 = !DILocalVariable(name: "i", scope: !131, file: !3, line: 76, type: !6)
!131 = distinct !DILexicalBlock(scope: !122, file: !3, line: 76, column: 3)
!132 = !DILocation(line: 0, scope: !122)
!133 = !DILocation(line: 60, column: 7, scope: !122)
!134 = !DILocation(line: 60, column: 5, scope: !122)
!135 = !{!136, !136, i64 0}
!136 = !{!"any pointer", !57, i64 0}
!137 = !DILocation(line: 61, column: 7, scope: !122)
!138 = !DILocation(line: 61, column: 5, scope: !122)
!139 = !DILocation(line: 62, column: 7, scope: !122)
!140 = !DILocation(line: 62, column: 5, scope: !122)
!141 = !DILocation(line: 63, column: 10, scope: !122)
!142 = !DILocation(line: 63, column: 8, scope: !122)
!143 = !DILocation(line: 0, scope: !128)
!144 = !DILocation(line: 65, column: 3, scope: !128)
!145 = !DILocation(line: 72, column: 3, scope: !122)
!146 = !DILocation(line: 0, scope: !131)
!147 = !DILocation(line: 76, column: 3, scope: !131)
!148 = !DILocation(line: 66, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 65, column: 31)
!150 = distinct !DILexicalBlock(scope: !128, file: !3, line: 65, column: 3)
!151 = !DILocation(line: 66, column: 10, scope: !149)
!152 = !DILocation(line: 67, column: 5, scope: !149)
!153 = !DILocation(line: 67, column: 10, scope: !149)
!154 = !DILocation(line: 68, column: 5, scope: !149)
!155 = !DILocation(line: 68, column: 10, scope: !149)
!156 = !DILocation(line: 69, column: 18, scope: !149)
!157 = !DILocation(line: 69, column: 16, scope: !149)
!158 = !DILocation(line: 69, column: 32, scope: !149)
!159 = !DILocation(line: 69, column: 37, scope: !149)
!160 = !DILocation(line: 69, column: 5, scope: !149)
!161 = !DILocation(line: 69, column: 13, scope: !149)
!162 = !DILocation(line: 65, column: 26, scope: !150)
!163 = !DILocation(line: 65, column: 21, scope: !150)
!164 = distinct !{!164, !144, !165, !82, !83}
!165 = !DILocation(line: 70, column: 3, scope: !128)
!166 = !DILocation(line: 80, column: 3, scope: !122)
!167 = !DILocation(line: 82, column: 3, scope: !122)
!168 = !DILocation(line: 77, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 76, column: 31)
!170 = distinct !DILexicalBlock(scope: !131, file: !3, line: 76, column: 3)
!171 = !DILocation(line: 77, column: 9, scope: !169)
!172 = !DILocation(line: 76, column: 26, scope: !170)
!173 = !DILocation(line: 76, column: 21, scope: !170)
!174 = distinct !{!174, !147, !175, !82, !83}
!175 = !DILocation(line: 78, column: 3, scope: !131)
