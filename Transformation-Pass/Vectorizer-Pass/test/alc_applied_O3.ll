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

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !35, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata ptr %b, metadata !36, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata ptr %c, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata ptr %cond, metadata !38, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32 %n, metadata !39, metadata !DIExpression()), !dbg !42
  tail call void @m5_reset_stats(i64 noundef 0, i64 noundef 0) #10, !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !44
  %cmp52 = icmp sgt i32 %n, 0, !dbg !45
  br i1 %cmp52, label %for.body.preheader, label %for.cond.cleanup, !dbg !47

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !45
  %0 = tail call i64 @llvm.vscale.i64(), !dbg !47
  %1 = shl i64 %0, 1, !dbg !47
  %2 = shl i64 %0, 2, !dbg !47
  %.not = icmp ugt i64 %2, %wide.trip.count, !dbg !47
  br i1 %.not, label %for.body.preheader3, label %pre.alc, !dbg !47

for.cond.cleanup:                                 ; preds = %for.inc, %middel.block, %entry
  tail call void @m5_dump_stats(i64 noundef 0, i64 noundef 0) #10, !dbg !48
  ret void, !dbg !49

for.body:                                         ; preds = %for.body.preheader3, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !40, metadata !DIExpression()), !dbg !44
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !50
  %3 = load i8, ptr %arrayidx, align 1, !dbg !50, !tbaa !53, !range !57
  %tobool.not = icmp eq i8 %3, 0, !dbg !50
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !58

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !59
  %4 = load i32, ptr %arrayidx2, align 4, !dbg !59, !tbaa !61
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !63
  %5 = load i32, ptr %arrayidx4, align 4, !dbg !63, !tbaa !61
  %mul5 = shl nsw i32 %5, 1, !dbg !64
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !65
  %6 = load i32, ptr %arrayidx7, align 4, !dbg !65, !tbaa !61
  %reass.mul = mul i32 %4, 22
  %add = sub i32 %mul5, %6, !dbg !66
  %sub11 = add i32 %add, %reass.mul, !dbg !67
  store i32 %sub11, ptr %arrayidx2, align 4, !dbg !68, !tbaa !61
  %mul16 = mul nsw i32 %6, 5, !dbg !69
  %mul19 = mul nsw i32 %mul16, %sub11, !dbg !70
  store i32 %mul19, ptr %arrayidx7, align 4, !dbg !71, !tbaa !61
  %mul24 = shl nsw i32 %mul19, 1, !dbg !72
  %mul27.neg = mul i32 %sub11, -3, !dbg !73
  %sub28 = add i32 %mul24, %mul27.neg, !dbg !74
  store i32 %sub28, ptr %arrayidx4, align 4, !dbg !75, !tbaa !61
  br label %for.inc, !dbg !76

pre.alc:                                          ; preds = %for.body.preheader
  %7 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %vector.Update.Value = shufflevector <vscale x 2 x i64> %7, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %8 = urem i64 %wide.trip.count, %2
  %total.iterations.to.be.vectorized = sub nsw i64 %wide.trip.count, %8
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %index = phi i64 [ 0, %pre.alc ], [ %68, %new.latch ]
  %9 = getelementptr inbounds i8, ptr %cond, i64 %index, !dbg !50
  %10 = load <vscale x 2 x i8>, ptr %9, align 2
  %11 = icmp ne <vscale x 2 x i8> %10, zeroinitializer
  %12 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %11, <vscale x 2 x i1> %11)
  %13 = add i64 %index, %1
  %14 = getelementptr inbounds i8, ptr %cond, i64 %13, !dbg !50
  %15 = load <vscale x 2 x i8>, ptr %14, align 2
  %16 = icmp ne <vscale x 2 x i8> %15, zeroinitializer
  %17 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %16, <vscale x 2 x i1> %16)
  %18 = add i64 %17, %12
  %condition.not = icmp ugt i64 %18, %1
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %19 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %index, i64 1)
  %20 = add <vscale x 2 x i64> %19, %vector.Update.Value
  %21 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %11, <vscale x 2 x i64> %19)
  %22 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %20)
  %23 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %12)
  %24 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1> %23, <vscale x 2 x i64> %21, <vscale x 2 x i64> %22)
  %25 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %18)
  %26 = tail call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %25, ptr %a, <vscale x 2 x i64> %24)
  %27 = tail call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %25, ptr %c, <vscale x 2 x i64> %24)
  %28 = shl <vscale x 2 x i32> %27, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %29 = tail call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %25, ptr %b, <vscale x 2 x i64> %24)
  %30 = mul <vscale x 2 x i32> %26, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 22, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %31 = sub <vscale x 2 x i32> %28, %29
  %32 = add <vscale x 2 x i32> %31, %30
  tail call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %32, <vscale x 2 x i1> %25, ptr %a, <vscale x 2 x i64> %24)
  %33 = mul <vscale x 2 x i32> %29, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %34 = mul <vscale x 2 x i32> %33, %32
  tail call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %34, <vscale x 2 x i1> %25, ptr %b, <vscale x 2 x i64> %24)
  %35 = shl <vscale x 2 x i32> %34, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %36 = mul <vscale x 2 x i32> %32, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %37 = add <vscale x 2 x i32> %35, %36
  tail call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %37, <vscale x 2 x i1> %25, ptr %c, <vscale x 2 x i64> %24)
  br label %new.latch

linearized:                                       ; preds = %alc.header
  %38 = getelementptr inbounds i32, ptr %a, i64 %index, !dbg !59
  %39 = getelementptr inbounds i32, ptr %c, i64 %index, !dbg !63
  %40 = getelementptr inbounds i32, ptr %b, i64 %index, !dbg !65
  %41 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %38, i32 8, <vscale x 2 x i1> %11, <vscale x 2 x i32> undef)
  %42 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %39, i32 8, <vscale x 2 x i1> %11, <vscale x 2 x i32> undef)
  %43 = shl <vscale x 2 x i32> %42, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %44 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %40, i32 8, <vscale x 2 x i1> %11, <vscale x 2 x i32> undef)
  %45 = mul <vscale x 2 x i32> %41, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 22, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %46 = sub <vscale x 2 x i32> %43, %44
  %47 = add <vscale x 2 x i32> %46, %45
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %47, ptr %38, i32 8, <vscale x 2 x i1> %11)
  %48 = mul <vscale x 2 x i32> %44, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %49 = mul <vscale x 2 x i32> %48, %47
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %49, ptr %40, i32 8, <vscale x 2 x i1> %11)
  %50 = shl <vscale x 2 x i32> %49, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %51 = mul <vscale x 2 x i32> %47, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %52 = add <vscale x 2 x i32> %50, %51
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %52, ptr %39, i32 8, <vscale x 2 x i1> %11)
  %53 = getelementptr inbounds i32, ptr %a, i64 %13, !dbg !59
  %54 = getelementptr inbounds i32, ptr %c, i64 %13, !dbg !63
  %55 = getelementptr inbounds i32, ptr %b, i64 %13, !dbg !65
  %56 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %53, i32 8, <vscale x 2 x i1> %16, <vscale x 2 x i32> undef)
  %57 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %54, i32 8, <vscale x 2 x i1> %16, <vscale x 2 x i32> undef)
  %58 = shl <vscale x 2 x i32> %57, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %59 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %55, i32 8, <vscale x 2 x i1> %16, <vscale x 2 x i32> undef)
  %60 = mul <vscale x 2 x i32> %56, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 22, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %61 = sub <vscale x 2 x i32> %58, %59
  %62 = add <vscale x 2 x i32> %61, %60
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %62, ptr %53, i32 8, <vscale x 2 x i1> %16)
  %63 = mul <vscale x 2 x i32> %59, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %64 = mul <vscale x 2 x i32> %63, %62
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %64, ptr %55, i32 8, <vscale x 2 x i1> %16)
  %65 = shl <vscale x 2 x i32> %64, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %66 = mul <vscale x 2 x i32> %62, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %67 = add <vscale x 2 x i32> %65, %66
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %67, ptr %54, i32 8, <vscale x 2 x i1> %16)
  br label %new.latch

new.latch:                                        ; preds = %linearized, %lane.gather
  %68 = add i64 %13, %1
  %69 = icmp eq i64 %68, %total.iterations.to.be.vectorized
  br i1 %69, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i64 %8, 0
  br i1 %condition1, label %for.cond.cleanup, label %for.body.preheader3

for.body.preheader3:                              ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %total.iterations.to.be.vectorized, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !47

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !77
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !40, metadata !DIExpression()), !dbg !44
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !45
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !47, !llvm.loop !78
}

declare !dbg !82 void @m5_reset_stats(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !92 void @m5_dump_stats(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !93 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !97, metadata !DIExpression()), !dbg !99
  %conv = sext i32 %n to i64, !dbg !100
  %mul = shl nsw i64 %conv, 2, !dbg !101
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #11, !dbg !102
  call void @llvm.dbg.value(metadata ptr %call, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp = icmp eq ptr %call, null, !dbg !103
  br i1 %cmp, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !106
  tail call void @exit(i32 noundef 1) #12, !dbg !108
  unreachable, !dbg !108

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !109
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !110 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !114, metadata !DIExpression()), !dbg !116
  %conv = sext i32 %n to i64, !dbg !117
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #11, !dbg !118
  call void @llvm.dbg.value(metadata ptr %call, metadata !115, metadata !DIExpression()), !dbg !116
  %cmp = icmp eq ptr %call, null, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !122
  tail call void @exit(i32 noundef 1) #12, !dbg !124
  unreachable, !dbg !124

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !125
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata i32 200000, metadata !130, metadata !DIExpression()), !dbg !136
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 200000), !dbg !137
  store ptr %call, ptr @a, align 8, !dbg !138, !tbaa !139
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 200000), !dbg !141
  store ptr %call1, ptr @b, align 8, !dbg !142, !tbaa !139
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 200000), !dbg !143
  store ptr %call2, ptr @c, align 8, !dbg !144, !tbaa !139
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 200000), !dbg !145
  store ptr %call3, ptr @cond, align 8, !dbg !146, !tbaa !139
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr @a, align 8, !tbaa !139
  %1 = load ptr, ptr @b, align 8, !tbaa !139
  %2 = load ptr, ptr @c, align 8, !tbaa !139
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()), !dbg !147
  br label %for.body, !dbg !148

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %call3, i32 noundef 200000), !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !150
  %3 = load ptr, ptr @c, align 8, !tbaa !139
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !136
  br label %for.body17, !dbg !151

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !131, metadata !DIExpression()), !dbg !147
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !152
  %4 = trunc i64 %indvars.iv to i32, !dbg !155
  store i32 %4, ptr %arrayidx, align 4, !dbg !155, !tbaa !61
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !156
  store i32 2, ptr %arrayidx5, align 4, !dbg !157, !tbaa !61
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !158
  store i32 0, ptr %arrayidx7, align 4, !dbg !159, !tbaa !61
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !160
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !161

cond.false:                                       ; preds = %for.body
  %rem = urem i32 %4, 10, !dbg !162
  %cmp9 = icmp eq i32 %rem, 0, !dbg !163
  %conv = zext i1 %cmp9 to i8, !dbg !163
  br label %cond.end, !dbg !161

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !161
  %arrayidx11 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !164
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !165, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !166
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !131, metadata !DIExpression()), !dbg !147
  %exitcond.not = icmp eq i64 %indvars.iv.next, 200000, !dbg !167
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !148, !llvm.loop !168

for.cond.cleanup16:                               ; preds = %for.body17
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add), !dbg !170
  ret i32 0, !dbg !171

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body17 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !134, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !133, metadata !DIExpression()), !dbg !136
  %arrayidx19 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !172
  %5 = load i32, ptr %arrayidx19, align 4, !dbg !172, !tbaa !61
  %add = add nsw i32 %5, %sum.043, !dbg !175
  call void @llvm.dbg.value(metadata i32 %add, metadata !133, metadata !DIExpression()), !dbg !136
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !134, metadata !DIExpression()), !dbg !150
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 200000, !dbg !177
  br i1 %exitcond49.not, label %for.cond.cleanup16, label %for.body17, !dbg !151, !llvm.loop !178
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #7

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1>, ptr, <vscale x 2 x i64>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i1>, ptr, <vscale x 2 x i64>) #9

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>, ptr, i32 immarg, <vscale x 2 x i1>) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 31, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "d50cc3658c91449b3608d141a6bae982")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 32, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 33, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 34, type: !8, isLocal: false, isDefinition: true)
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
!34 = !{!35, !36, !37, !38, !39, !40}
!35 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !3, line: 12, type: !32)
!36 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !3, line: 12, type: !32)
!37 = !DILocalVariable(name: "c", arg: 3, scope: !29, file: !3, line: 12, type: !32)
!38 = !DILocalVariable(name: "cond", arg: 4, scope: !29, file: !3, line: 13, type: !33)
!39 = !DILocalVariable(name: "n", arg: 5, scope: !29, file: !3, line: 13, type: !6)
!40 = !DILocalVariable(name: "i", scope: !41, file: !3, line: 19, type: !6)
!41 = distinct !DILexicalBlock(scope: !29, file: !3, line: 19, column: 3)
!42 = !DILocation(line: 0, scope: !29)
!43 = !DILocation(line: 17, column: 3, scope: !29)
!44 = !DILocation(line: 0, scope: !41)
!45 = !DILocation(line: 19, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 3)
!47 = !DILocation(line: 19, column: 3, scope: !41)
!48 = !DILocation(line: 26, column: 3, scope: !29)
!49 = !DILocation(line: 29, column: 1, scope: !29)
!50 = !DILocation(line: 20, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 20, column: 9)
!52 = distinct !DILexicalBlock(scope: !46, file: !3, line: 19, column: 31)
!53 = !{!54, !54, i64 0}
!54 = !{!"_Bool", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{i8 0, i8 2}
!58 = !DILocation(line: 20, column: 9, scope: !52)
!59 = !DILocation(line: 21, column: 20, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !3, line: 20, column: 18)
!61 = !{!62, !62, i64 0}
!62 = !{!"int", !55, i64 0}
!63 = !DILocation(line: 21, column: 31, scope: !60)
!64 = !DILocation(line: 21, column: 29, scope: !60)
!65 = !DILocation(line: 21, column: 40, scope: !60)
!66 = !DILocation(line: 21, column: 25, scope: !60)
!67 = !DILocation(line: 21, column: 37, scope: !60)
!68 = !DILocation(line: 21, column: 12, scope: !60)
!69 = !DILocation(line: 22, column: 16, scope: !60)
!70 = !DILocation(line: 22, column: 23, scope: !60)
!71 = !DILocation(line: 22, column: 12, scope: !60)
!72 = !DILocation(line: 23, column: 16, scope: !60)
!73 = !DILocation(line: 23, column: 27, scope: !60)
!74 = !DILocation(line: 23, column: 23, scope: !60)
!75 = !DILocation(line: 23, column: 12, scope: !60)
!76 = !DILocation(line: 24, column: 5, scope: !60)
!77 = !DILocation(line: 19, column: 26, scope: !46)
!78 = distinct !{!78, !47, !79, !80, !81}
!79 = !DILocation(line: 25, column: 3, scope: !41)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !DISubprogram(name: "m5_reset_stats", scope: !83, file: !83, line: 55, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !91)
!83 = !DIFile(filename: "GEM5/gem5-arm-sve/gem5/include/gem5/m5ops.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "0d6f1213d2a5fe07f4954aee626f0ea8")
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !87, line: 27, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !89, line: 45, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!90 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!91 = !{}
!92 = !DISubprogram(name: "m5_dump_stats", scope: !83, file: !83, line: 56, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !91)
!93 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 36, type: !94, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!5, !6}
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "n", arg: 1, scope: !93, file: !3, line: 36, type: !6)
!98 = !DILocalVariable(name: "ptr", scope: !93, file: !3, line: 37, type: !5)
!99 = !DILocation(line: 0, scope: !93)
!100 = !DILocation(line: 37, column: 39, scope: !93)
!101 = !DILocation(line: 37, column: 38, scope: !93)
!102 = !DILocation(line: 37, column: 20, scope: !93)
!103 = !DILocation(line: 38, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !93, file: !3, line: 38, column: 7)
!105 = !DILocation(line: 38, column: 7, scope: !93)
!106 = !DILocation(line: 39, column: 5, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 38, column: 20)
!108 = !DILocation(line: 40, column: 5, scope: !107)
!109 = !DILocation(line: 42, column: 3, scope: !93)
!110 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 45, type: !111, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!8, !6}
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "n", arg: 1, scope: !110, file: !3, line: 45, type: !6)
!115 = !DILocalVariable(name: "ptr", scope: !110, file: !3, line: 46, type: !8)
!116 = !DILocation(line: 0, scope: !110)
!117 = !DILocation(line: 46, column: 42, scope: !110)
!118 = !DILocation(line: 46, column: 22, scope: !110)
!119 = !DILocation(line: 47, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !110, file: !3, line: 47, column: 7)
!121 = !DILocation(line: 47, column: 7, scope: !110)
!122 = !DILocation(line: 48, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !3, line: 47, column: 20)
!124 = !DILocation(line: 49, column: 5, scope: !123)
!125 = !DILocation(line: 51, column: 3, scope: !110)
!126 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 54, type: !127, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!6}
!129 = !{!130, !131, !133, !134}
!130 = !DILocalVariable(name: "n", scope: !126, file: !3, line: 56, type: !6)
!131 = !DILocalVariable(name: "i", scope: !132, file: !3, line: 63, type: !6)
!132 = distinct !DILexicalBlock(scope: !126, file: !3, line: 63, column: 3)
!133 = !DILocalVariable(name: "sum", scope: !126, file: !3, line: 72, type: !6)
!134 = !DILocalVariable(name: "i", scope: !135, file: !3, line: 74, type: !6)
!135 = distinct !DILexicalBlock(scope: !126, file: !3, line: 74, column: 3)
!136 = !DILocation(line: 0, scope: !126)
!137 = !DILocation(line: 58, column: 7, scope: !126)
!138 = !DILocation(line: 58, column: 5, scope: !126)
!139 = !{!140, !140, i64 0}
!140 = !{!"any pointer", !55, i64 0}
!141 = !DILocation(line: 59, column: 7, scope: !126)
!142 = !DILocation(line: 59, column: 5, scope: !126)
!143 = !DILocation(line: 60, column: 7, scope: !126)
!144 = !DILocation(line: 60, column: 5, scope: !126)
!145 = !DILocation(line: 61, column: 10, scope: !126)
!146 = !DILocation(line: 61, column: 8, scope: !126)
!147 = !DILocation(line: 0, scope: !132)
!148 = !DILocation(line: 63, column: 3, scope: !132)
!149 = !DILocation(line: 70, column: 3, scope: !126)
!150 = !DILocation(line: 0, scope: !135)
!151 = !DILocation(line: 74, column: 3, scope: !135)
!152 = !DILocation(line: 64, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 63, column: 31)
!154 = distinct !DILexicalBlock(scope: !132, file: !3, line: 63, column: 3)
!155 = !DILocation(line: 64, column: 10, scope: !153)
!156 = !DILocation(line: 65, column: 5, scope: !153)
!157 = !DILocation(line: 65, column: 10, scope: !153)
!158 = !DILocation(line: 66, column: 5, scope: !153)
!159 = !DILocation(line: 66, column: 10, scope: !153)
!160 = !DILocation(line: 67, column: 18, scope: !153)
!161 = !DILocation(line: 67, column: 16, scope: !153)
!162 = !DILocation(line: 67, column: 32, scope: !153)
!163 = !DILocation(line: 67, column: 37, scope: !153)
!164 = !DILocation(line: 67, column: 5, scope: !153)
!165 = !DILocation(line: 67, column: 13, scope: !153)
!166 = !DILocation(line: 63, column: 26, scope: !154)
!167 = !DILocation(line: 63, column: 21, scope: !154)
!168 = distinct !{!168, !148, !169, !80, !81}
!169 = !DILocation(line: 68, column: 3, scope: !132)
!170 = !DILocation(line: 78, column: 3, scope: !126)
!171 = !DILocation(line: 80, column: 3, scope: !126)
!172 = !DILocation(line: 75, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 74, column: 31)
!174 = distinct !DILexicalBlock(scope: !135, file: !3, line: 74, column: 3)
!175 = !DILocation(line: 75, column: 9, scope: !173)
!176 = !DILocation(line: 74, column: 26, scope: !174)
!177 = !DILocation(line: 74, column: 21, scope: !174)
!178 = distinct !{!178, !151, !179, !80, !81}
!179 = !DILocation(line: 76, column: 3, scope: !135)
