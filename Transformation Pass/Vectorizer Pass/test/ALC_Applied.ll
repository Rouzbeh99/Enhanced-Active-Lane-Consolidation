; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #8, !dbg !28, !srcloc !29
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !30
  %cmp11 = icmp sgt i32 %n, 0, !dbg !31
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !33

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !31
  br label %for.body.init.1

for.body.init.1:                                  ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !30
  %rem15.init.1 = and i64 0, 1, !dbg !34
  %cmp1.not.init.1 = icmp eq i64 %rem15.init.1, 0, !dbg !34
  %indvars.iv.next.init.1 = add nuw nsw i64 0, 1, !dbg !37
  %rem15.headerCopy.1.init.1 = and i64 %indvars.iv.next.init.1, 1, !dbg !34
  %cmp1.not.headerCopy.1.init.1 = icmp eq i64 %rem15.headerCopy.1.init.1, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.init.1 = add nuw nsw i64 %indvars.iv.next.init.1, 1, !dbg !37
  %rem15.headerCopy.1.2.init.1 = and i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !34
  %cmp1.not.headerCopy.1.2.init.1 = icmp eq i64 %rem15.headerCopy.1.2.init.1, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.2.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !37
  %rem15.headerCopy.1.2.3.init.1 = and i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !34
  %cmp1.not.headerCopy.1.2.3.init.1 = icmp eq i64 %rem15.headerCopy.1.2.3.init.1, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.2.3.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !37
  br label %for.body.init.2

for.body.init.2:                                  ; preds = %for.body.init.1
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !30
  %rem15.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !34
  %cmp1.not.init.2 = icmp eq i64 %rem15.init.2, 0, !dbg !34
  %indvars.iv.next.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !37
  %rem15.headerCopy.1.init.2 = and i64 %indvars.iv.next.init.2, 1, !dbg !34
  %cmp1.not.headerCopy.1.init.2 = icmp eq i64 %rem15.headerCopy.1.init.2, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.init.2 = add nuw nsw i64 %indvars.iv.next.init.2, 1, !dbg !37
  %rem15.headerCopy.1.2.init.2 = and i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !34
  %cmp1.not.headerCopy.1.2.init.2 = icmp eq i64 %rem15.headerCopy.1.2.init.2, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.2.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !37
  %rem15.headerCopy.1.2.3.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !34
  %cmp1.not.headerCopy.1.2.3.init.2 = icmp eq i64 %rem15.headerCopy.1.2.3.init.2, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.2.3.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !37
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
  %10 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !38
  %11 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !40
  %12 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !41
  %13 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %26, ptr %10, <vscale x 4 x i32> %25)
  %14 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %26, ptr %11, <vscale x 4 x i32> %25)
  %15 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %14, <vscale x 4 x i32> %13)
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %15, <vscale x 4 x i1> %26, ptr %12, <vscale x 4 x i32> %25)
  %16 = zext <vscale x 4 x i32> %25 to <vscale x 4 x i64>
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %25, <vscale x 4 x i1> %26, ptr %12, <vscale x 4 x i32> %25)
  br label %epilogueBlock2

epilogueBlock2:                                   ; preds = %epilogueBlock1
  %17 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !38
  %18 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !40
  %19 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !41
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %28, ptr %17, <vscale x 4 x i32> %27)
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %28, ptr %18, <vscale x 4 x i32> %27)
  %22 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %21, <vscale x 4 x i32> %20)
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %22, <vscale x 4 x i1> %28, ptr %19, <vscale x 4 x i32> %27)
  %23 = zext <vscale x 4 x i32> %27 to <vscale x 4 x i64>
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %27, <vscale x 4 x i1> %28, ptr %19, <vscale x 4 x i32> %27)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %epilogueBlock2, %entry
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #8, !dbg !42, !srcloc !43
  ret void, !dbg !44

for.body:                                         ; preds = %for.body.init.2, %new.latch
  %24 = phi i64 [ %indvars.iv.next.latchCopy.1.2.3, %new.latch ], [ 8, %for.body.init.2 ]
  %25 = phi <vscale x 4 x i32> [ %78, %new.latch ], [ %8, %for.body.init.2 ]
  %26 = phi <vscale x 4 x i1> [ %79, %new.latch ], [ %3, %for.body.init.2 ]
  %27 = phi <vscale x 4 x i32> [ %80, %new.latch ], [ %9, %for.body.init.2 ]
  %28 = phi <vscale x 4 x i1> [ %81, %new.latch ], [ %7, %for.body.init.2 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !30
  %rem15 = and i64 %24, 1, !dbg !34
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !34
  %indvars.iv.next = add nuw nsw i64 %24, 1, !dbg !37
  %rem15.headerCopy.1 = and i64 %indvars.iv.next, 1, !dbg !34
  %cmp1.not.headerCopy.1 = icmp eq i64 %rem15.headerCopy.1, 0, !dbg !34
  %indvars.iv.next.latchCopy.1 = add nuw nsw i64 %indvars.iv.next, 1, !dbg !37
  %rem15.headerCopy.1.2 = and i64 %indvars.iv.next.latchCopy.1, 1, !dbg !34
  %cmp1.not.headerCopy.1.2 = icmp eq i64 %rem15.headerCopy.1.2, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1, 1, !dbg !37
  %rem15.headerCopy.1.2.3 = and i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !34
  %cmp1.not.headerCopy.1.2.3 = icmp eq i64 %rem15.headerCopy.1.2.3, 0, !dbg !34
  %indvars.iv.next.latchCopy.1.2.3 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !37
  %29 = icmp uge i64 %indvars.iv.next.latchCopy.1.2.3, %wide.trip.count, !dbg !31
  br i1 %29, label %epilogueBlock1, label %permute.decision, !dbg !33, !llvm.loop !45

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
  %58 = and <vscale x 4 x i1> %51, %55
  %59 = and <vscale x 4 x i1> %58, %56
  %60 = or <vscale x 4 x i1> %57, %59
  br label %if.then

linearized:                                       ; preds = %permute.decision
  %61 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false
  %62 = insertelement <vscale x 4 x i1> %61, i1 %cmp1.not.headerCopy.1, i1 true
  %63 = insertelement <vscale x 4 x i1> %62, i1 %cmp1.not.headerCopy.1.2, i1 false
  %64 = insertelement <vscale x 4 x i1> %63, i1 %cmp1.not.headerCopy.1.2.3, i1 true
  %65 = trunc i64 %24 to i32
  %66 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %65, i32 1)
  br label %new.latch

if.then:                                          ; preds = %lane.gather
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !38
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !40
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !41
  %67 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4), !dbg !49
  %68 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %67, ptr %arrayidx, <vscale x 4 x i32> %44), !dbg !49
  %69 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %67, ptr %arrayidx3, <vscale x 4 x i32> %44), !dbg !49
  %70 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %67, <vscale x 4 x i32> %69, <vscale x 4 x i32> %68), !dbg !49
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %70, <vscale x 4 x i1> %67, ptr %arrayidx5, <vscale x 4 x i32> %44), !dbg !49
  %71 = zext <vscale x 4 x i32> %44 to <vscale x 4 x i64>, !dbg !49
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %44, <vscale x 4 x i1> %67, ptr %arrayidx5, <vscale x 4 x i32> %44), !dbg !49
  %72 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false, !dbg !49
  %73 = insertelement <vscale x 4 x i1> %72, i1 %cmp1.not.headerCopy.1, i1 true, !dbg !49
  %74 = insertelement <vscale x 4 x i1> %73, i1 %cmp1.not.headerCopy.1.2, i1 false, !dbg !49
  %75 = insertelement <vscale x 4 x i1> %74, i1 %cmp1.not.headerCopy.1.2.3, i1 true, !dbg !49
  %76 = trunc i64 %24 to i32, !dbg !49
  %77 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %76, i32 1), !dbg !49
  br label %new.latch, !dbg !49

new.latch:                                        ; preds = %linearized, %if.then
  %78 = phi <vscale x 4 x i32> [ %77, %if.then ], [ %25, %linearized ]
  %79 = phi <vscale x 4 x i1> [ %75, %if.then ], [ %26, %linearized ]
  %80 = phi <vscale x 4 x i32> [ %66, %linearized ], [ %27, %if.then ]
  %81 = phi <vscale x 4 x i1> [ %64, %linearized ], [ %60, %if.then ]
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !50 {
entry:
  call void @llvm.dbg.value(metadata i32 65536, metadata !54, metadata !DIExpression()), !dbg !76
  %vla30 = alloca [65536 x i32], align 4, !dbg !77
  call void @llvm.dbg.value(metadata i64 65536, metadata !55, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata ptr %vla30, metadata !57, metadata !DIExpression()), !dbg !78
  %vla131 = alloca [65536 x i32], align 4, !dbg !79
  call void @llvm.dbg.value(metadata i64 65536, metadata !61, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata ptr %vla131, metadata !62, metadata !DIExpression()), !dbg !80
  %vla232 = alloca [65536 x i32], align 4, !dbg !81
  call void @llvm.dbg.value(metadata i64 65536, metadata !66, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata ptr %vla232, metadata !67, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %vla232, i8 0, i64 262144, i1 false), !dbg !84, !tbaa !87
  br label %for.body, !dbg !91

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92), !dbg !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96), !dbg !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98), !dbg !95
  call void @llvm.dbg.value(metadata ptr %vla30, metadata !21, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata ptr %vla131, metadata !22, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata ptr %vla232, metadata !23, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32 65536, metadata !24, metadata !DIExpression()) #8, !dbg !100
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #8, !dbg !102, !noalias !103, !srcloc !29
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()) #8, !dbg !104
  br label %for.body.i, !dbg !105

for.body.i:                                       ; preds = %for.inc.i, %for.cond.cleanup
  %indvars.iv.i = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()) #8, !dbg !104
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !106
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !106
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !107

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv.i, !dbg !108
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !108, !tbaa !87, !alias.scope !92, !noalias !109
  %arrayidx3.i = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv.i, !dbg !110
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !110, !tbaa !87, !alias.scope !96, !noalias !111
  %mul.i = mul nsw i32 %1, %0, !dbg !112
  %arrayidx5.i = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv.i, !dbg !113
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !114, !tbaa !87, !alias.scope !98, !noalias !115
  br label %for.inc.i, !dbg !116

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()) #8, !dbg !104
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 65536, !dbg !118
  br i1 %exitcond.not.i, label %foo.exit, label %for.body.i, !dbg !105, !llvm.loop !119

foo.exit:                                         ; preds = %for.inc.i
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #8, !dbg !121, !noalias !103, !srcloc !43
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !122
  br label %for.body11, !dbg !123

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression()), !dbg !83
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv, !dbg !124
  %2 = trunc i64 %indvars.iv to i32, !dbg !125
  store i32 %2, ptr %arrayidx, align 4, !dbg !125, !tbaa !87
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv, !dbg !126
  store i32 2, ptr %arrayidx4, align 4, !dbg !127, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !128
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !71, metadata !DIExpression()), !dbg !83
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536, !dbg !129
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !91, !llvm.loop !130

for.cond.cleanup10:                               ; preds = %for.body11
  %add.lcssa = phi i32 [ %add, %for.body11 ], !dbg !132
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !135
  ret i32 0, !dbg !136

for.body11:                                       ; preds = %for.body11, %foo.exit
  %indvars.iv37 = phi i64 [ 0, %foo.exit ], [ %indvars.iv.next38, %for.body11 ]
  %sum.034 = phi i32 [ 0, %foo.exit ], [ %add, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !74, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !73, metadata !DIExpression()), !dbg !76
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37, !dbg !137
  %3 = load i32, ptr %arrayidx13, align 4, !dbg !137, !tbaa !87
  %add = add nsw i32 %3, %sum.034, !dbg !132
  call void @llvm.dbg.value(metadata i32 %add, metadata !73, metadata !DIExpression()), !dbg !76
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !138
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !74, metadata !DIExpression()), !dbg !122
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 65536, !dbg !139
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !dbg !123, !llvm.loop !140
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #7

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "80370368bb9d4b2f4cbb84d3723dffc2")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 4, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 4, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 4, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 4, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 7, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 6, column: 5, scope: !14)
!29 = !{i64 126, i64 135}
!30 = !DILocation(line: 0, scope: !26)
!31 = !DILocation(line: 7, column: 23, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 5)
!33 = !DILocation(line: 7, column: 5, scope: !26)
!34 = !DILocation(line: 8, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 8, column: 13)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 7, column: 33)
!37 = !DILocation(line: 7, column: 28, scope: !32)
!38 = !DILocation(line: 9, column: 20, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 25)
!40 = !DILocation(line: 9, column: 27, scope: !39)
!41 = !DILocation(line: 9, column: 13, scope: !39)
!42 = !DILocation(line: 12, column: 5, scope: !14)
!43 = !{i64 296, i64 305}
!44 = !DILocation(line: 13, column: 1, scope: !14)
!45 = distinct !{!45, !33, !46, !47, !48}
!46 = !DILocation(line: 11, column: 5, scope: !26)
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !DILocation(line: 10, column: 9, scope: !39)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !51, scopeLine: 16, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!19}
!53 = !{!54, !55, !57, !61, !62, !66, !67, !71, !73, !74}
!54 = !DILocalVariable(name: "n", scope: !50, file: !1, line: 21, type: !19)
!55 = !DILocalVariable(name: "__vla_expr0", scope: !50, type: !56, flags: DIFlagArtificial)
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DILocalVariable(name: "a", scope: !50, file: !1, line: 23, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: !55)
!61 = !DILocalVariable(name: "__vla_expr1", scope: !50, type: !56, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "b", scope: !50, file: !1, line: 24, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: !61)
!66 = !DILocalVariable(name: "__vla_expr2", scope: !50, type: !56, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "c", scope: !50, file: !1, line: 25, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: !66)
!71 = !DILocalVariable(name: "i", scope: !72, file: !1, line: 27, type: !19)
!72 = distinct !DILexicalBlock(scope: !50, file: !1, line: 27, column: 5)
!73 = !DILocalVariable(name: "sum", scope: !50, file: !1, line: 36, type: !19)
!74 = !DILocalVariable(name: "i", scope: !75, file: !1, line: 38, type: !19)
!75 = distinct !DILexicalBlock(scope: !50, file: !1, line: 38, column: 5)
!76 = !DILocation(line: 0, scope: !50)
!77 = !DILocation(line: 23, column: 5, scope: !50)
!78 = !DILocation(line: 23, column: 9, scope: !50)
!79 = !DILocation(line: 24, column: 5, scope: !50)
!80 = !DILocation(line: 24, column: 9, scope: !50)
!81 = !DILocation(line: 25, column: 5, scope: !50)
!82 = !DILocation(line: 25, column: 9, scope: !50)
!83 = !DILocation(line: 0, scope: !72)
!84 = !DILocation(line: 30, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 27, column: 33)
!86 = distinct !DILexicalBlock(scope: !72, file: !1, line: 27, column: 5)
!87 = !{!88, !88, i64 0}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 27, column: 5, scope: !72)
!92 = !{!93}
!93 = distinct !{!93, !94, !"foo: %a"}
!94 = distinct !{!94, !"foo"}
!95 = !DILocation(line: 34, column: 5, scope: !50)
!96 = !{!97}
!97 = distinct !{!97, !94, !"foo: %b"}
!98 = !{!99}
!99 = distinct !{!99, !94, !"foo: %c"}
!100 = !DILocation(line: 0, scope: !14, inlinedAt: !101)
!101 = distinct !DILocation(line: 34, column: 5, scope: !50)
!102 = !DILocation(line: 6, column: 5, scope: !14, inlinedAt: !101)
!103 = !{!93, !97, !99}
!104 = !DILocation(line: 0, scope: !26, inlinedAt: !101)
!105 = !DILocation(line: 7, column: 5, scope: !26, inlinedAt: !101)
!106 = !DILocation(line: 8, column: 19, scope: !35, inlinedAt: !101)
!107 = !DILocation(line: 8, column: 13, scope: !36, inlinedAt: !101)
!108 = !DILocation(line: 9, column: 20, scope: !39, inlinedAt: !101)
!109 = !{!97, !99}
!110 = !DILocation(line: 9, column: 27, scope: !39, inlinedAt: !101)
!111 = !{!93, !99}
!112 = !DILocation(line: 9, column: 25, scope: !39, inlinedAt: !101)
!113 = !DILocation(line: 9, column: 13, scope: !39, inlinedAt: !101)
!114 = !DILocation(line: 9, column: 18, scope: !39, inlinedAt: !101)
!115 = !{!93, !97}
!116 = !DILocation(line: 10, column: 9, scope: !39, inlinedAt: !101)
!117 = !DILocation(line: 7, column: 28, scope: !32, inlinedAt: !101)
!118 = !DILocation(line: 7, column: 23, scope: !32, inlinedAt: !101)
!119 = distinct !{!119, !105, !120, !47, !48}
!120 = !DILocation(line: 11, column: 5, scope: !26, inlinedAt: !101)
!121 = !DILocation(line: 12, column: 5, scope: !14, inlinedAt: !101)
!122 = !DILocation(line: 0, scope: !75)
!123 = !DILocation(line: 38, column: 5, scope: !75)
!124 = !DILocation(line: 28, column: 9, scope: !85)
!125 = !DILocation(line: 28, column: 14, scope: !85)
!126 = !DILocation(line: 29, column: 9, scope: !85)
!127 = !DILocation(line: 29, column: 14, scope: !85)
!128 = !DILocation(line: 27, column: 28, scope: !86)
!129 = !DILocation(line: 27, column: 23, scope: !86)
!130 = distinct !{!130, !91, !131, !47, !48}
!131 = !DILocation(line: 31, column: 5, scope: !72)
!132 = !DILocation(line: 39, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 38, column: 33)
!134 = distinct !DILexicalBlock(scope: !75, file: !1, line: 38, column: 5)
!135 = !DILocation(line: 41, column: 5, scope: !50)
!136 = !DILocation(line: 45, column: 1, scope: !50)
!137 = !DILocation(line: 39, column: 16, scope: !133)
!138 = !DILocation(line: 38, column: 28, scope: !134)
!139 = !DILocation(line: 38, column: 23, scope: !134)
!140 = distinct !{!140, !123, !141, !47, !48}
!141 = !DILocation(line: 40, column: 5, scope: !75)
