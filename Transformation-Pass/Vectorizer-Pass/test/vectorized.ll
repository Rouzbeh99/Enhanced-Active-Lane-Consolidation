; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #7, !dbg !28, !srcloc !29
  tail call void asm sideeffect ".inst 0x2520e020", ""() #7, !dbg !30, !srcloc !32
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !33
  %cmp11 = icmp sgt i32 %n, 0, !dbg !34
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !36

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !34
  br label %for.body.init.1

for.body.init.1:                                  ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !33
  %rem15.init.1 = and i64 0, 1, !dbg !37
  %cmp1.not.init.1 = icmp eq i64 %rem15.init.1, 0, !dbg !37
  %indvars.iv.next.init.1 = add nuw nsw i64 0, 1, !dbg !40
  %rem15.headerCopy.1.init.1 = and i64 %indvars.iv.next.init.1, 1, !dbg !37
  %cmp1.not.headerCopy.1.init.1 = icmp eq i64 %rem15.headerCopy.1.init.1, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.init.1 = add nuw nsw i64 %indvars.iv.next.init.1, 1, !dbg !40
  %rem15.headerCopy.1.2.init.1 = and i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !37
  %cmp1.not.headerCopy.1.2.init.1 = icmp eq i64 %rem15.headerCopy.1.2.init.1, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.2.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !40
  %rem15.headerCopy.1.2.3.init.1 = and i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !37
  %cmp1.not.headerCopy.1.2.3.init.1 = icmp eq i64 %rem15.headerCopy.1.2.3.init.1, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.2.3.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !40
  br label %for.body.init.2

for.body.init.2:                                  ; preds = %for.body.init.1
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !33
  %rem15.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !37
  %cmp1.not.init.2 = icmp eq i64 %rem15.init.2, 0, !dbg !37
  %indvars.iv.next.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !40
  %rem15.headerCopy.1.init.2 = and i64 %indvars.iv.next.init.2, 1, !dbg !37
  %cmp1.not.headerCopy.1.init.2 = icmp eq i64 %rem15.headerCopy.1.init.2, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.init.2 = add nuw nsw i64 %indvars.iv.next.init.2, 1, !dbg !40
  %rem15.headerCopy.1.2.init.2 = and i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !37
  %cmp1.not.headerCopy.1.2.init.2 = icmp eq i64 %rem15.headerCopy.1.2.init.2, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.2.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !40
  %rem15.headerCopy.1.2.3.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !37
  %cmp1.not.headerCopy.1.2.3.init.2 = icmp eq i64 %rem15.headerCopy.1.2.3.init.2, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.2.3.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !40
  %0 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.1, i64 0
  %1 = insertelement <vscale x 4 x i1> %0, i1 %cmp1.not.headerCopy.1.init.1, i64 1
  %2 = insertelement <vscale x 4 x i1> %1, i1 %cmp1.not.headerCopy.1.2.init.1, i64 2
  %3 = insertelement <vscale x 4 x i1> %2, i1 %cmp1.not.headerCopy.1.2.3.init.1, i64 3
  %4 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.2, i64 0
  %5 = insertelement <vscale x 4 x i1> %4, i1 %cmp1.not.headerCopy.1.init.2, i64 1
  %6 = insertelement <vscale x 4 x i1> %5, i1 %cmp1.not.headerCopy.1.2.init.2, i64 2
  %7 = insertelement <vscale x 4 x i1> %6, i1 %cmp1.not.headerCopy.1.2.3.init.2, i64 3
  %8 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %9 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 4, i32 1)
  br label %for.body

epilogueBlock1:                                   ; preds = %for.body
  %10 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !41
  %11 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !43
  %12 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !44
  %13 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %26, ptr %10, <vscale x 4 x i32> %25)
  %14 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %26, ptr %11, <vscale x 4 x i32> %25)
  %15 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %14, <vscale x 4 x i32> %13)
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %15, <vscale x 4 x i1> %26, ptr %12, <vscale x 4 x i32> %25)
  %16 = zext <vscale x 4 x i32> %25 to <vscale x 4 x i64>
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %25, <vscale x 4 x i1> %26, ptr %12, <vscale x 4 x i32> %25)
  br label %epilogueBlock2

epilogueBlock2:                                   ; preds = %epilogueBlock1
  %17 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !41
  %18 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !43
  %19 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !44
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %28, ptr %17, <vscale x 4 x i32> %27)
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %28, ptr %18, <vscale x 4 x i32> %27)
  %22 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %21, <vscale x 4 x i32> %20)
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %22, <vscale x 4 x i1> %28, ptr %19, <vscale x 4 x i32> %27)
  %23 = zext <vscale x 4 x i32> %27 to <vscale x 4 x i64>
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %27, <vscale x 4 x i1> %28, ptr %19, <vscale x 4 x i32> %27)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %epilogueBlock2, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #7, !dbg !45, !srcloc !47
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #7, !dbg !48, !srcloc !49
  ret void, !dbg !50

for.body:                                         ; preds = %for.body.init.2, %new.latch
  %24 = phi i64 [ %indvars.iv.next.latchCopy.1.2.3, %new.latch ], [ 8, %for.body.init.2 ]
  %25 = phi <vscale x 4 x i32> [ %77, %new.latch ], [ %8, %for.body.init.2 ]
  %26 = phi <vscale x 4 x i1> [ %78, %new.latch ], [ %3, %for.body.init.2 ]
  %27 = phi <vscale x 4 x i32> [ %79, %new.latch ], [ %9, %for.body.init.2 ]
  %28 = phi <vscale x 4 x i1> [ %80, %new.latch ], [ %7, %for.body.init.2 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !33
  %rem15 = and i64 %24, 1, !dbg !37
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !37
  %indvars.iv.next = add nuw nsw i64 %24, 1, !dbg !40
  %rem15.headerCopy.1 = and i64 %indvars.iv.next, 1, !dbg !37
  %cmp1.not.headerCopy.1 = icmp eq i64 %rem15.headerCopy.1, 0, !dbg !37
  %indvars.iv.next.latchCopy.1 = add nuw nsw i64 %indvars.iv.next, 1, !dbg !40
  %rem15.headerCopy.1.2 = and i64 %indvars.iv.next.latchCopy.1, 1, !dbg !37
  %cmp1.not.headerCopy.1.2 = icmp eq i64 %rem15.headerCopy.1.2, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1, 1, !dbg !40
  %rem15.headerCopy.1.2.3 = and i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !37
  %cmp1.not.headerCopy.1.2.3 = icmp eq i64 %rem15.headerCopy.1.2.3, 0, !dbg !37
  %indvars.iv.next.latchCopy.1.2.3 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !40
  %29 = icmp uge i64 %indvars.iv.next.latchCopy.1.2.3, %wide.trip.count, !dbg !34
  br i1 %29, label %epilogueBlock1, label %permute.decision, !dbg !36, !llvm.loop !51

permute.decision:                                 ; preds = %for.body
  %30 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %31 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %30, <vscale x 4 x i1> %26)
  %32 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %30, <vscale x 4 x i1> %28)
  %33 = add i64 %31, %32
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %permute.decision
  %35 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %25)
  %37 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %27)
  %38 = xor <vscale x 4 x i1> %26, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %39 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %40 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %25)
  %41 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %39, <vscale x 4 x i32> %27)
  %42 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %26)
  %43 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %42)
  %44 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %43, <vscale x 4 x i32> %36, <vscale x 4 x i32> %37)
  %45 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %28)
  %46 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %45)
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %46, <vscale x 4 x i32> %37, <vscale x 4 x i32> %41)
  %48 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %38)
  %49 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %48)
  %50 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %49, <vscale x 4 x i32> %40, <vscale x 4 x i32> %47)
  %51 = xor <vscale x 4 x i1> %49, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %52 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %49)
  %53 = sub i64 %45, %48
  %54 = add i64 %53, %52
  %55 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %54)
  %56 = xor <vscale x 4 x i1> %55, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %57 = and <vscale x 4 x i1> %51, %55
  %58 = and <vscale x 4 x i1> %55, %56
  %59 = or <vscale x 4 x i1> %57, %58
  br label %if.then

linearized:                                       ; preds = %permute.decision
  %60 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false
  %61 = insertelement <vscale x 4 x i1> %60, i1 %cmp1.not.headerCopy.1, i1 true
  %62 = insertelement <vscale x 4 x i1> %61, i1 %cmp1.not.headerCopy.1.2, i1 false
  %63 = insertelement <vscale x 4 x i1> %62, i1 %cmp1.not.headerCopy.1.2.3, i1 true
  %64 = trunc i64 %24 to i32
  %65 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %64, i32 1)
  br label %new.latch

if.then:                                          ; preds = %lane.gather
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !41
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !43
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !44
  %66 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4), !dbg !55
  %67 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %66, ptr %arrayidx, <vscale x 4 x i32> %44), !dbg !55
  %68 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %66, ptr %arrayidx3, <vscale x 4 x i32> %44), !dbg !55
  %69 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %66, <vscale x 4 x i32> %68, <vscale x 4 x i32> %67), !dbg !55
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %69, <vscale x 4 x i1> %66, ptr %arrayidx5, <vscale x 4 x i32> %44), !dbg !55
  %70 = zext <vscale x 4 x i32> %44 to <vscale x 4 x i64>, !dbg !55
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %44, <vscale x 4 x i1> %66, ptr %arrayidx5, <vscale x 4 x i32> %44), !dbg !55
  %71 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false, !dbg !55
  %72 = insertelement <vscale x 4 x i1> %71, i1 %cmp1.not.headerCopy.1, i1 true, !dbg !55
  %73 = insertelement <vscale x 4 x i1> %72, i1 %cmp1.not.headerCopy.1.2, i1 false, !dbg !55
  %74 = insertelement <vscale x 4 x i1> %73, i1 %cmp1.not.headerCopy.1.2.3, i1 true, !dbg !55
  %75 = trunc i64 %24 to i32, !dbg !55
  %76 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %75, i32 1), !dbg !55
  br label %new.latch, !dbg !55

new.latch:                                        ; preds = %linearized, %if.then
  %77 = phi <vscale x 4 x i32> [ %76, %if.then ], [ %25, %linearized ]
  %78 = phi <vscale x 4 x i1> [ %74, %if.then ], [ %26, %linearized ]
  %79 = phi <vscale x 4 x i32> [ %65, %linearized ], [ %27, %if.then ]
  %80 = phi <vscale x 4 x i1> [ %63, %linearized ], [ %59, %if.then ]
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !56 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !60, metadata !DIExpression()), !dbg !82
  %vla30 = alloca [8192 x i32], align 4, !dbg !83
  call void @llvm.dbg.value(metadata i64 8192, metadata !61, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata ptr %vla30, metadata !63, metadata !DIExpression()), !dbg !84
  %vla131 = alloca [8192 x i32], align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 8192, metadata !67, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata ptr %vla131, metadata !68, metadata !DIExpression()), !dbg !86
  %vla232 = alloca [8192 x i32], align 4, !dbg !87
  call void @llvm.dbg.value(metadata i64 8192, metadata !72, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata ptr %vla232, metadata !73, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla232, i8 0, i64 32768, i1 false), !dbg !90, !tbaa !93
  br label %for.body, !dbg !97

for.cond.cleanup:                                 ; preds = %for.body
  call void @foo(ptr noundef nonnull %vla30, ptr noundef nonnull %vla131, ptr noundef nonnull %vla232, i32 noundef 8192), !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !99
  br label %for.body11, !dbg !100

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !77, metadata !DIExpression()), !dbg !89
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv, !dbg !101
  %0 = trunc i64 %indvars.iv to i32, !dbg !102
  store i32 %0, ptr %arrayidx, align 4, !dbg !102, !tbaa !93
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv, !dbg !103
  store i32 2, ptr %arrayidx4, align 4, !dbg !104, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !77, metadata !DIExpression()), !dbg !89
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !106
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !97, !llvm.loop !107

for.cond.cleanup10:                               ; preds = %for.body11
  %add.lcssa = phi i32 [ %add, %for.body11 ], !dbg !109
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !112
  ret i32 0, !dbg !113

for.body11:                                       ; preds = %for.body11, %for.cond.cleanup
  %indvars.iv37 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next38, %for.body11 ]
  %sum.034 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !80, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !79, metadata !DIExpression()), !dbg !82
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37, !dbg !114
  %1 = load i32, ptr %arrayidx13, align 4, !dbg !114, !tbaa !93
  %add = add nsw i32 %1, %sum.034, !dbg !109
  call void @llvm.dbg.value(metadata i32 %add, metadata !79, metadata !DIExpression()), !dbg !82
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !80, metadata !DIExpression()), !dbg !99
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 8192, !dbg !116
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !dbg !100, !llvm.loop !117
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "8b86cd2abeaf366a1aa6b0ce08e29bf5")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 6, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 10, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 8, column: 6, scope: !14)
!29 = !{i64 252, i64 261}
!30 = !DILocation(line: 9, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !14, file: !1, line: 9, column: 5)
!32 = !{i64 2147612464}
!33 = !DILocation(line: 0, scope: !26)
!34 = !DILocation(line: 10, column: 23, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 5)
!36 = !DILocation(line: 10, column: 5, scope: !26)
!37 = !DILocation(line: 11, column: 19, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 11, column: 13)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 33)
!40 = !DILocation(line: 10, column: 28, scope: !35)
!41 = !DILocation(line: 12, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 11, column: 25)
!43 = !DILocation(line: 12, column: 27, scope: !42)
!44 = !DILocation(line: 12, column: 13, scope: !42)
!45 = !DILocation(line: 15, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !14, file: !1, line: 15, column: 5)
!47 = !{i64 2147612503}
!48 = !DILocation(line: 16, column: 5, scope: !14)
!49 = !{i64 463, i64 472}
!50 = !DILocation(line: 17, column: 1, scope: !14)
!51 = distinct !{!51, !36, !52, !53, !54}
!52 = !DILocation(line: 14, column: 5, scope: !26)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !DILocation(line: 13, column: 9, scope: !42)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !57, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{!19}
!59 = !{!60, !61, !63, !67, !68, !72, !73, !77, !79, !80}
!60 = !DILocalVariable(name: "n", scope: !56, file: !1, line: 22, type: !19)
!61 = !DILocalVariable(name: "__vla_expr0", scope: !56, type: !62, flags: DIFlagArtificial)
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DILocalVariable(name: "a", scope: !56, file: !1, line: 24, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: !61)
!67 = !DILocalVariable(name: "__vla_expr1", scope: !56, type: !62, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "b", scope: !56, file: !1, line: 25, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: !67)
!72 = !DILocalVariable(name: "__vla_expr2", scope: !56, type: !62, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "c", scope: !56, file: !1, line: 26, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: !72)
!77 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 28, type: !19)
!78 = distinct !DILexicalBlock(scope: !56, file: !1, line: 28, column: 5)
!79 = !DILocalVariable(name: "sum", scope: !56, file: !1, line: 37, type: !19)
!80 = !DILocalVariable(name: "i", scope: !81, file: !1, line: 39, type: !19)
!81 = distinct !DILexicalBlock(scope: !56, file: !1, line: 39, column: 5)
!82 = !DILocation(line: 0, scope: !56)
!83 = !DILocation(line: 24, column: 5, scope: !56)
!84 = !DILocation(line: 24, column: 9, scope: !56)
!85 = !DILocation(line: 25, column: 5, scope: !56)
!86 = !DILocation(line: 25, column: 9, scope: !56)
!87 = !DILocation(line: 26, column: 5, scope: !56)
!88 = !DILocation(line: 26, column: 9, scope: !56)
!89 = !DILocation(line: 0, scope: !78)
!90 = !DILocation(line: 31, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 28, column: 33)
!92 = distinct !DILexicalBlock(scope: !78, file: !1, line: 28, column: 5)
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !DILocation(line: 28, column: 5, scope: !78)
!98 = !DILocation(line: 35, column: 5, scope: !56)
!99 = !DILocation(line: 0, scope: !81)
!100 = !DILocation(line: 39, column: 5, scope: !81)
!101 = !DILocation(line: 29, column: 9, scope: !91)
!102 = !DILocation(line: 29, column: 14, scope: !91)
!103 = !DILocation(line: 30, column: 9, scope: !91)
!104 = !DILocation(line: 30, column: 14, scope: !91)
!105 = !DILocation(line: 28, column: 28, scope: !92)
!106 = !DILocation(line: 28, column: 23, scope: !92)
!107 = distinct !{!107, !97, !108, !53, !54}
!108 = !DILocation(line: 32, column: 5, scope: !78)
!109 = !DILocation(line: 40, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 39, column: 33)
!111 = distinct !DILexicalBlock(scope: !81, file: !1, line: 39, column: 5)
!112 = !DILocation(line: 43, column: 5, scope: !56)
!113 = !DILocation(line: 47, column: 1, scope: !56)
!114 = !DILocation(line: 40, column: 16, scope: !110)
!115 = !DILocation(line: 39, column: 28, scope: !111)
!116 = !DILocation(line: 39, column: 23, scope: !111)
!117 = distinct !{!117, !100, !118, !53, !54}
!118 = !DILocation(line: 41, column: 5, scope: !81)
