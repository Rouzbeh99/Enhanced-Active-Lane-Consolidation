; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x i32] [i32 1, i32 -1, i32 2, i32 -2, i32 3, i32 -3, i32 4, i32 -4], align 4
@__const.main.b = private unnamed_addr constant [8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !28
  %cmp11 = icmp sgt i32 %n, 0, !dbg !29
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !31

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !29
  br label %for.body.init.1, !dbg !31

for.body.init.1:                                  ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.1 = and i64 0, 1, !dbg !32
  %cmp1.not.init.1 = icmp eq i64 %rem15.init.1, 0, !dbg !32
  br label %for.inc.init.1

for.inc.init.1:                                   ; preds = %for.body.init.1
  %indvars.iv.next.init.1 = add nuw nsw i64 0, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.init.1

for.body.headerCopy.1.init.1:                     ; preds = %for.inc.init.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.init.1 = and i64 %indvars.iv.next.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.1 = icmp eq i64 %rem15.headerCopy.1.init.1, 0, !dbg !32
  br label %for.inc.latchCopy.1.init.1

for.inc.latchCopy.1.init.1:                       ; preds = %for.body.headerCopy.1.init.1
  %indvars.iv.next.latchCopy.1.init.1 = add nuw nsw i64 %indvars.iv.next.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.init.1

for.body.headerCopy.1.2.init.1:                   ; preds = %for.inc.latchCopy.1.init.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.init.1 = and i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.1 = icmp eq i64 %rem15.headerCopy.1.2.init.1, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.init.1

for.inc.latchCopy.1.2.init.1:                     ; preds = %for.body.headerCopy.1.2.init.1
  %indvars.iv.next.latchCopy.1.2.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.3.init.1

for.body.headerCopy.1.2.3.init.1:                 ; preds = %for.inc.latchCopy.1.2.init.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.3.init.1 = and i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3.init.1 = icmp eq i64 %rem15.headerCopy.1.2.3.init.1, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.3.init.1

for.inc.latchCopy.1.2.3.init.1:                   ; preds = %for.body.headerCopy.1.2.3.init.1
  %indvars.iv.next.latchCopy.1.2.3.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.3.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %0 = sub i64 %wide.trip.count, 3, !dbg !29
  %exitcond.not.latchCopy.1.2.3.init.1 = icmp eq i64 %indvars.iv.next.latchCopy.1.2.3.init.1, %0, !dbg !29
  br label %for.body.init.2

for.body.init.2:                                  ; preds = %for.inc.latchCopy.1.2.3.init.1
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !32
  %cmp1.not.init.2 = icmp eq i64 %rem15.init.2, 0, !dbg !32
  br label %for.inc.init.2

for.inc.init.2:                                   ; preds = %for.body.init.2
  %indvars.iv.next.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.init.2

for.body.headerCopy.1.init.2:                     ; preds = %for.inc.init.2
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.init.2 = and i64 %indvars.iv.next.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.2 = icmp eq i64 %rem15.headerCopy.1.init.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.init.2

for.inc.latchCopy.1.init.2:                       ; preds = %for.body.headerCopy.1.init.2
  %indvars.iv.next.latchCopy.1.init.2 = add nuw nsw i64 %indvars.iv.next.init.2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.init.2

for.body.headerCopy.1.2.init.2:                   ; preds = %for.inc.latchCopy.1.init.2
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.init.2 = and i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.2 = icmp eq i64 %rem15.headerCopy.1.2.init.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.init.2

for.inc.latchCopy.1.2.init.2:                     ; preds = %for.body.headerCopy.1.2.init.2
  %indvars.iv.next.latchCopy.1.2.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.3.init.2

for.body.headerCopy.1.2.3.init.2:                 ; preds = %for.inc.latchCopy.1.2.init.2
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.3.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3.init.2 = icmp eq i64 %rem15.headerCopy.1.2.3.init.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.3.init.2

for.inc.latchCopy.1.2.3.init.2:                   ; preds = %for.body.headerCopy.1.2.3.init.2
  %indvars.iv.next.latchCopy.1.2.3.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.3.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %1 = sub i64 %wide.trip.count, 3, !dbg !29
  %exitcond.not.latchCopy.1.2.3.init.2 = icmp eq i64 %indvars.iv.next.latchCopy.1.2.3.init.2, %1, !dbg !29
  %2 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.1, i64 0, !dbg !31
  %3 = insertelement <vscale x 4 x i1> %2, i1 %cmp1.not.headerCopy.1.init.1, i64 1, !dbg !31
  %4 = insertelement <vscale x 4 x i1> %3, i1 %cmp1.not.headerCopy.1.2.init.1, i64 2, !dbg !31
  %5 = insertelement <vscale x 4 x i1> %4, i1 %cmp1.not.headerCopy.1.2.3.init.1, i64 3, !dbg !31
  %6 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.2, i64 0, !dbg !31
  %7 = insertelement <vscale x 4 x i1> %6, i1 %cmp1.not.headerCopy.1.init.2, i64 1, !dbg !31
  %8 = insertelement <vscale x 4 x i1> %7, i1 %cmp1.not.headerCopy.1.2.init.2, i64 2, !dbg !31
  %9 = insertelement <vscale x 4 x i1> %8, i1 %cmp1.not.headerCopy.1.2.3.init.2, i64 3, !dbg !31
  %10 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1), !dbg !31
  %11 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 4, i32 1), !dbg !31
  br i1 %exitcond.not.latchCopy.1.2.3.init.2, label %for.cond.cleanup.loopexit, label %for.body, !dbg !31, !llvm.loop !36

for.cond.cleanup.loopexit:                        ; preds = %for.inc.latchCopy.1.2.3.init.2, %for.inc.latchCopy.1.2.3
  br label %for.cond.cleanup, !dbg !40

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !40

for.body:                                         ; preds = %for.inc.latchCopy.1.2.3.init.2, %new.latch
  %12 = phi i64 [ %indvars.iv.next.latchCopy.1.2.3, %new.latch ], [ 0, %for.inc.latchCopy.1.2.3.init.2 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15 = and i64 %12, 1, !dbg !32
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !32
  br label %for.inc

permute.decision:                                 ; preds = %for.inc.latchCopy.1.2.3
  %13 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %14 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %13, <vscale x 4 x i1> %5)
  %15 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %13, <vscale x 4 x i1> %9)
  %16 = add i64 %14, %15
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %permute.decision
  %18 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %19 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %5, <vscale x 4 x i32> %10)
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %9, <vscale x 4 x i32> %11)
  %21 = xor <vscale x 4 x i1> %5, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %22 = xor <vscale x 4 x i1> %9, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %23 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %10)
  %24 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %22, <vscale x 4 x i32> %11)
  %25 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %5)
  %26 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %25)
  %27 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %19, <vscale x 4 x i32> %20)
  %28 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %9)
  %29 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %28)
  %30 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %20, <vscale x 4 x i32> %24)
  %31 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %21)
  %32 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %31)
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %32, <vscale x 4 x i32> %23, <vscale x 4 x i32> %30)
  %34 = xor <vscale x 4 x i1> %32, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %35 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %32)
  %36 = sub i64 %28, %31
  %37 = add i64 %36, %35
  %38 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %37)
  %39 = xor <vscale x 4 x i1> %38, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %40 = and <vscale x 4 x i1> %34, %38
  %41 = and <vscale x 4 x i1> %34, %38
  %42 = and <vscale x 4 x i1> %41, %39
  %43 = or <vscale x 4 x i1> %40, %42
  br label %if.then

linearized:                                       ; preds = %permute.decision
  %44 = getelementptr inbounds i32, ptr %a, i64 %12, !dbg !41
  %45 = load i32, ptr %44, align 4, !dbg !41, !tbaa !43
  %46 = getelementptr inbounds i32, ptr %b, i64 %12, !dbg !47
  %47 = load i32, ptr %46, align 4, !dbg !47, !tbaa !43
  %48 = mul nsw i32 %47, %45, !dbg !48
  %49 = getelementptr inbounds i32, ptr %c, i64 %12, !dbg !49
  store i32 %48, ptr %49, align 4, !dbg !50, !tbaa !43
  br label %new.latch

if.then:                                          ; preds = %lane.gather
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %12, !dbg !41
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %12, !dbg !47
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %12, !dbg !49
  %50 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4), !dbg !51
  %51 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %50, ptr %arrayidx), !dbg !51
  %52 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %50, ptr %arrayidx3), !dbg !51
  %53 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %52, <vscale x 4 x i32> %51), !dbg !51
  call void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32> %53, <vscale x 4 x i1> %50, ptr %arrayidx5), !dbg !51
  br label %new.latch, !dbg !51

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %12, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1

for.body.headerCopy.1:                            ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1 = and i64 %indvars.iv.next, 1, !dbg !32
  %cmp1.not.headerCopy.1 = icmp eq i64 %rem15.headerCopy.1, 0, !dbg !32
  br label %for.inc.latchCopy.1

for.inc.latchCopy.1:                              ; preds = %for.body.headerCopy.1
  %indvars.iv.next.latchCopy.1 = add nuw nsw i64 %indvars.iv.next, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2

for.body.headerCopy.1.2:                          ; preds = %for.inc.latchCopy.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2 = and i64 %indvars.iv.next.latchCopy.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2 = icmp eq i64 %rem15.headerCopy.1.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.2

for.inc.latchCopy.1.2:                            ; preds = %for.body.headerCopy.1.2
  %indvars.iv.next.latchCopy.1.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.3

for.body.headerCopy.1.2.3:                        ; preds = %for.inc.latchCopy.1.2
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.3 = and i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3 = icmp eq i64 %rem15.headerCopy.1.2.3, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.3

for.inc.latchCopy.1.2.3:                          ; preds = %for.body.headerCopy.1.2.3
  %indvars.iv.next.latchCopy.1.2.3 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.3, metadata !25, metadata !DIExpression()), !dbg !28
  %54 = sub i64 %wide.trip.count, 3, !dbg !29
  %exitcond.not.latchCopy.1.2.3 = icmp eq i64 %indvars.iv.next.latchCopy.1.2.3, %54, !dbg !29
  br i1 %exitcond.not.latchCopy.1.2.3, label %for.cond.cleanup.loopexit, label %permute.decision, !dbg !31, !llvm.loop !36

new.latch:                                        ; preds = %linearized, %if.then
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !52 {
entry:
  %c = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32 8, metadata !56, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !57, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !61, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #10, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %c, metadata !62, metadata !DIExpression()), !dbg !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !dbg !73
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74), !dbg !73
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76), !dbg !73
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !21, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !22, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 8, metadata !24, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !80
  br label %for.body.i, !dbg !81

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()), !dbg !80
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !82
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !82
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !83

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !84
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !84, !tbaa !43, !alias.scope !70, !noalias !85
  %arrayidx3.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !86
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !86, !tbaa !43, !alias.scope !74, !noalias !87
  %mul.i = mul nsw i32 %1, %0, !dbg !88
  %arrayidx5.i = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.i, !dbg !89
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !90, !tbaa !43, !alias.scope !76, !noalias !91
  br label %for.inc.i, !dbg !92

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()), !dbg !80
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !94
  br i1 %exitcond.not.i, label %for.body.preheader, label %for.body.i, !dbg !81, !llvm.loop !95

for.body.preheader:                               ; preds = %for.inc.i
  br label %for.body, !dbg !97

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #10, !dbg !99
  ret i32 0, !dbg !100

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !63, metadata !DIExpression()), !dbg !101
  %arrayidx = getelementptr inbounds [8 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !102
  %2 = load i32, ptr %arrayidx, align 4, !dbg !102, !tbaa !43
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2), !dbg !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !106
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !63, metadata !DIExpression()), !dbg !101
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !107
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !97, !llvm.loop !108
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1>, ptr) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr nocapture) #2

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nofree nounwind }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "c5d0df64e1ff873f94aa4d4359d35ec8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 3, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 3, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 3, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 3, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 6, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 0, scope: !26)
!29 = !DILocation(line: 6, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 6, column: 5)
!31 = !DILocation(line: 6, column: 5, scope: !26)
!32 = !DILocation(line: 7, column: 19, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 13)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 6, column: 33)
!35 = !DILocation(line: 6, column: 28, scope: !30)
!36 = distinct !{!36, !31, !37, !38, !39}
!37 = !DILocation(line: 10, column: 5, scope: !26)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !DILocation(line: 11, column: 1, scope: !14)
!41 = !DILocation(line: 8, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 25)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 8, column: 27, scope: !42)
!48 = !DILocation(line: 8, column: 25, scope: !42)
!49 = !DILocation(line: 8, column: 13, scope: !42)
!50 = !DILocation(line: 8, column: 18, scope: !42)
!51 = !DILocation(line: 9, column: 9, scope: !42)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !53, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!19}
!55 = !{!56, !57, !61, !62, !63}
!56 = !DILocalVariable(name: "n", scope: !52, file: !1, line: 14, type: !19)
!57 = !DILocalVariable(name: "a", scope: !52, file: !1, line: 15, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 8)
!61 = !DILocalVariable(name: "b", scope: !52, file: !1, line: 16, type: !58)
!62 = !DILocalVariable(name: "c", scope: !52, file: !1, line: 17, type: !58)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 21, type: !19)
!64 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 5)
!65 = !DILocation(line: 0, scope: !52)
!66 = !DILocation(line: 15, column: 9, scope: !52)
!67 = !DILocation(line: 16, column: 9, scope: !52)
!68 = !DILocation(line: 17, column: 5, scope: !52)
!69 = !DILocation(line: 17, column: 9, scope: !52)
!70 = !{!71}
!71 = distinct !{!71, !72, !"foo: %a"}
!72 = distinct !{!72, !"foo"}
!73 = !DILocation(line: 19, column: 5, scope: !52)
!74 = !{!75}
!75 = distinct !{!75, !72, !"foo: %b"}
!76 = !{!77}
!77 = distinct !{!77, !72, !"foo: %c"}
!78 = !DILocation(line: 0, scope: !14, inlinedAt: !79)
!79 = distinct !DILocation(line: 19, column: 5, scope: !52)
!80 = !DILocation(line: 0, scope: !26, inlinedAt: !79)
!81 = !DILocation(line: 6, column: 5, scope: !26, inlinedAt: !79)
!82 = !DILocation(line: 7, column: 19, scope: !33, inlinedAt: !79)
!83 = !DILocation(line: 7, column: 13, scope: !34, inlinedAt: !79)
!84 = !DILocation(line: 8, column: 20, scope: !42, inlinedAt: !79)
!85 = !{!75, !77}
!86 = !DILocation(line: 8, column: 27, scope: !42, inlinedAt: !79)
!87 = !{!71, !77}
!88 = !DILocation(line: 8, column: 25, scope: !42, inlinedAt: !79)
!89 = !DILocation(line: 8, column: 13, scope: !42, inlinedAt: !79)
!90 = !DILocation(line: 8, column: 18, scope: !42, inlinedAt: !79)
!91 = !{!71, !75}
!92 = !DILocation(line: 9, column: 9, scope: !42, inlinedAt: !79)
!93 = !DILocation(line: 6, column: 28, scope: !30, inlinedAt: !79)
!94 = !DILocation(line: 6, column: 23, scope: !30, inlinedAt: !79)
!95 = distinct !{!95, !81, !96, !38, !39}
!96 = !DILocation(line: 10, column: 5, scope: !26, inlinedAt: !79)
!97 = !DILocation(line: 21, column: 5, scope: !64)
!98 = !DILocation(line: 24, column: 5, scope: !52)
!99 = !DILocation(line: 26, column: 1, scope: !52)
!100 = !DILocation(line: 25, column: 5, scope: !52)
!101 = !DILocation(line: 0, scope: !64)
!102 = !DILocation(line: 22, column: 23, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 21, column: 33)
!104 = distinct !DILexicalBlock(scope: !64, file: !1, line: 21, column: 5)
!105 = !DILocation(line: 22, column: 9, scope: !103)
!106 = !DILocation(line: 21, column: 28, scope: !104)
!107 = !DILocation(line: 21, column: 23, scope: !104)
!108 = distinct !{!108, !97, !109, !38, !39}
!109 = !DILocation(line: 23, column: 5, scope: !64)
