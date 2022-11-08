; ModuleID = 'compiled_with_O3.ll'
<<<<<<< HEAD:Transformation-Pass/Vectorizer-Pass/test/vectorized.ll
source_filename = "test.c"
=======
source_filename = "s253/tsvc-functions.c"
>>>>>>> ALC_new_strategy:Transformation-Pass/Vectorizer-Pass/test/s253/alc_simple_handwritten.ll
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
<<<<<<< HEAD:Transformation-Pass/Vectorizer-Pass/test/vectorized.ll
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
=======
  call void @llvm.dbg.value(metadata ptr %func_args, metadata !84, metadata !DIExpression()), !dbg !92
  %call = tail call i32 @initialise_arrays(ptr noundef nonnull @__func__.s253) #8, !dbg !93
  %call1 = tail call i32 @gettimeofday(ptr noundef %func_args, ptr noundef null) #8, !dbg !94
  ;tail call void asm sideeffect ".inst 0x2520e020", ""() #10 
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #10
  br label %for.cond2.preheader, !dbg !96

for.cond2.preheader:                              ; preds = %for.cond.cleanup4, %entry
  %nl.038 = phi i32 [ 0, %entry ], [ %inc21, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %nl.038, metadata !86, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !97
  %0 = call i64 @llvm.vscale.i64(), !dbg !98
  %1 = mul i64 %0, 2, !dbg !98
  %2 = icmp uge i64 8192, %1, !dbg !98
  br i1 %2, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !98

for.cond.cleanup:  				  ; preds = %for.cond.cleanup4
  ;tail call void asm sideeffect ".inst 0x2520e040", ""() #10                              
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #10
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !99
  %call23 = tail call i32 @gettimeofday(ptr noundef nonnull %t2, ptr noundef null) #8, !dbg !100
  %call24 = tail call i32 @calc_checksum(ptr noundef nonnull @__func__.s253) #8, !dbg !101
  ret i32 %call24, !dbg !102

for.cond.cleanup4:                                ; preds = %middel.block, %for.inc
  %call19 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, i32 noundef 0) #8, !dbg !103
  %inc21 = add nuw nsw i32 %nl.038, 1, !dbg !104
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !86, metadata !DIExpression()), !dbg !95
  %exitcond40.not = icmp eq i32 %inc21, 10, !dbg !105
  br i1 %exitcond40.not, label %for.cond.cleanup, label %for.cond2.preheader, !dbg !96, !llvm.loop !106

for.body5:                                        ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %7, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !88, metadata !DIExpression()), !dbg !97
  %arrayidx = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %indvars.iv, !dbg !110
  %3 = load i32, ptr %arrayidx, align 4, !dbg !110, !tbaa !114
  %arrayidx7 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %indvars.iv, !dbg !118
  %4 = load i32, ptr %arrayidx7, align 4, !dbg !118, !tbaa !114
  %cmp8 = icmp sgt i32 %3, %4, !dbg !119
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !120

if.then:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %indvars.iv, !dbg !121
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !121, !tbaa !114
  %mul = mul nsw i32 %5, %4, !dbg !123
  %sub = sub nsw i32 %3, %mul, !dbg !124
  call void @llvm.dbg.value(metadata i32 %sub, metadata !85, metadata !DIExpression()), !dbg !92
  %arrayidx16 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %indvars.iv, !dbg !125
  %6 = load i32, ptr %arrayidx16, align 4, !dbg !126, !tbaa !114
  %add = add nsw i32 %sub, %6, !dbg !126
  store i32 %add, ptr %arrayidx16, align 4, !dbg !126, !tbaa !114
  store i32 %sub, ptr %arrayidx, align 4, !dbg !127, !tbaa !114
  br label %for.inc, !dbg !128

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.cond2.preheader
  %7 = phi i64 [ 0, %for.cond2.preheader ], [ %28, %middel.block ]
  br label %for.body5

pre.alc:                                          ; preds = %for.cond2.preheader
  %8 = call i64 @llvm.vscale.i64()
  %9 = mul i64 %8, 2
  %10 = urem i64 8192, %9
  %total.iterations.to.be.vectorized = sub i64 8192, %10
  %11 = insertelement <vscale x 2 x i64> poison, i64 %9, i64 0
  %stepVector.update.values = shufflevector <vscale x 2 x i64> %11, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %12 = phi i64 [ 0 , %pre.alc ], [ %28, %new.latch ]
  %13 = call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %12, i64 1)
  %14 = add <vscale x 2 x i64> %13, %stepVector.update.values
  %second.itr.index = add i64 %12, %9
  %15 = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %12, !dbg !110
  %16 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %12, !dbg !118
  %17 = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %second.itr.index, !dbg !110
  %18 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %second.itr.index, !dbg !118
  %19 = load <vscale x 2 x i32>, ptr %15, align 8
  %20 = load <vscale x 2 x i32>, ptr %16, align 8
  %predicate.vector.1 = icmp sgt <vscale x 2 x i32> %19, %20
  %21 = load <vscale x 2 x i32>, ptr %17, align 8
  %22 = load <vscale x 2 x i32>, ptr %18, align 8
  %predicate.vector.2 = icmp sgt <vscale x 2 x i32> %21, %22
  %23 = call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 2)
  %num.active.lanes.1 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %23, <vscale x 2 x i1> %predicate.vector.1)
  %num.active.lanes.2 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %23, <vscale x 2 x i1> %predicate.vector.2)
  %num.all.true.preds = add i64 %num.active.lanes.1, %num.active.lanes.2;
  %condition = icmp ule i64 %num.all.true.preds, %9 													
  br i1 %condition, label %lane.gather, label %linearized


lane.gather:                                      ; preds = %alc.header
  %24 = call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %predicate.vector.1, <vscale x 2 x i64> %13)
  %25 = call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %predicate.vector.2, <vscale x 2 x i64> %14)
  %26 = call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %num.active.lanes.1)
  %27 = call <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1> %26, <vscale x 2 x i64> %24, <vscale x 2 x i64> %25)	; unifrom vector
  %uniform.vec.predicate = call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %num.all.true.preds)
  br label %alc.applied


alc.applied:  					 ; preds = %lane.gather
  %ptr.vec.a = getelementptr inbounds [8192 x i32], ptr @a, i64 0, <vscale x 2 x i64> %27, !dbg !110
  %ptr.vec.b = getelementptr inbounds [8192 x i32], ptr @b, i64 0, <vscale x 2 x i64> %27, !dbg !110
  %loaded.a = call <vscale x 2 x i32> @llvm.masked.gather.v2i32.v2p0(<vscale x 2 x ptr> %ptr.vec.a , i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %loaded.b = call <vscale x 2 x i32> @llvm.masked.gather.v2i32.v2p0(<vscale x 2 x ptr> %ptr.vec.b , i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %ptr.vec.d = getelementptr inbounds [8192 x i32], ptr @d, i64 0, <vscale x 2 x i64> %27, !dbg !110
  %loaded.d = call <vscale x 2 x i32> @llvm.masked.gather.v2i32.v2p0(<vscale x 2 x ptr> %ptr.vec.d , i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %mul.vec = mul <vscale x 2 x i32> %loaded.b, %loaded.d
  %sub.vec = sub <vscale x 2 x i32>  %loaded.a, %mul.vec
  %ptr.vec.c = getelementptr inbounds [8192 x i32], ptr @c, i64 0, <vscale x 2 x i64> %27, !dbg !110
  %loaded.c = call <vscale x 2 x i32> @llvm.masked.gather.v2i32.v2p0(<vscale x 2 x ptr> %ptr.vec.c , i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %add.vec = add <vscale x 2 x i32> %loaded.c, %sub.vec
  call void @llvm.masked.scatter.v2i32.v2p0(<vscale x 2 x i32> %add.vec, <vscale x 2 x ptr> %ptr.vec.c, i32 8, <vscale x 2 x i1> %uniform.vec.predicate) ;;; NOT supported on the simulator!!!
  call void @llvm.masked.scatter.v2i32.v2p0(<vscale x 2 x i32> %sub.vec, <vscale x 2 x ptr> %ptr.vec.a, i32 8, <vscale x 2 x i1> %uniform.vec.predicate)
  ;call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>  %add.vec, ptr %15, i32 8, <vscale x 2 x i1> %uniform.vec.predicate) 
  ;call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>  %sub.vec, ptr %16, i32 8, <vscale x 2 x i1> %uniform.vec.predicate)

  br label %new.latch

linearized:   				 ; preds = %alc.header
  %ptr.d.linearize.1 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %12, !dbg !110
  %loaded.d.linearize.1 =  call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.d.linearize.1, i32 8, <vscale x 2 x i1>  %predicate.vector.1, <vscale x 2 x i32> undef)
  %mul.linearize.1 = mul <vscale x 2 x i32> %20, %loaded.d.linearize.1
  %sub.linearize.1 = sub <vscale x 2 x i32>  %19, %mul.linearize.1
  %ptr.c.linearize.1 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %12, !dbg !110
  %loaded.c.linearize.1 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.c.linearize.1, i32 8, <vscale x 2 x i1>  %predicate.vector.1, <vscale x 2 x i32> undef)
  %add.vec.linearize.1 = add <vscale x 2 x i32> %loaded.c.linearize.1, %sub.linearize.1
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>  %add.vec.linearize.1,ptr %ptr.c.linearize.1 , i32 8, <vscale x 2 x i1> %predicate.vector.1)
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>  %sub.linearize.1, ptr %15, i32 8, <vscale x 2 x i1> %predicate.vector.1)
  %ptr.d.linearize.2 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %second.itr.index, !dbg !110
  %loaded.d.linearize.2 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.d.linearize.2, i32 8, <vscale x 2 x i1>  %predicate.vector.1, <vscale x 2 x i32> undef)
  %mul.linearize.2 = mul <vscale x 2 x i32> %22, %loaded.d.linearize.2
  %sub.linearize.2 = sub <vscale x 2 x i32>  %21, %mul.linearize.2
  %ptr.c.linearize.2 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %second.itr.index, !dbg !110
  %loaded.c.linearize.2 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.c.linearize.2, i32 8, <vscale x 2 x i1>  %predicate.vector.1, <vscale x 2 x i32> undef)
  %add.vec.linearize.2 = add <vscale x 2 x i32> %loaded.c.linearize.2, %sub.linearize.2
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>  %add.vec.linearize.2, ptr %ptr.c.linearize.2, i32 8, <vscale x 2 x i1> %predicate.vector.2) 
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>  %sub.linearize.2, ptr %17, i32 8, <vscale x 2 x i1> %predicate.vector.2)
  br label %new.latch

new.latch:                                        ; preds = %linearized, %alc.applied
  %28 = add i64 %second.itr.index, %9
  %loop.exit.cond = icmp ugt i64 %28, %total.iterations.to.be.vectorized
  br i1 %loop.exit.cond, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition.mid.block = icmp eq i64 %10, 0
  br i1 %condition.mid.block, label %for.cond.cleanup4, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then, %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !129
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !88, metadata !DIExpression()), !dbg !97
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !130
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !98, !llvm.loop !131
>>>>>>> ALC_new_strategy:Transformation-Pass/Vectorizer-Pass/test/s253/alc_simple_handwritten.ll
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !56 {
entry:
<<<<<<< HEAD:Transformation-Pass/Vectorizer-Pass/test/vectorized.ll
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
=======
  %func_args = alloca %struct.args_t, align 8
  call void @llvm.dbg.value(metadata ptr %vector_func, metadata !159, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata ptr %arg_info, metadata !160, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %func_args) #8, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %func_args, metadata !161, metadata !DIExpression()), !dbg !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %func_args, i8 0, i64 32, i1 false), !dbg !169
  %arg_info1 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 2, !dbg !170
  store ptr %arg_info, ptr %arg_info1, align 8, !dbg !170, !tbaa !171
  %call = call i32 %vector_func(ptr noundef nonnull %func_args) #8, !dbg !176
  %conv = sitofp i32 %call to double, !dbg !176
  call void @llvm.dbg.value(metadata double %conv, metadata !162, metadata !DIExpression()), !dbg !167
  %0 = load i64, ptr %func_args, align 8, !dbg !177, !tbaa !178
  %conv2 = sitofp i64 %0 to double, !dbg !179
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %func_args, i64 0, i32 1, !dbg !180
  %1 = load i64, ptr %tv_usec, align 8, !dbg !180, !tbaa !181
  %conv4 = sitofp i64 %1 to double, !dbg !182
  %div = fdiv double %conv4, 1.000000e+06, !dbg !183
  %add = fadd double %div, %conv2, !dbg !184
  call void @llvm.dbg.value(metadata double %add, metadata !164, metadata !DIExpression()), !dbg !167
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !185
  %2 = load i64, ptr %t2, align 8, !dbg !186, !tbaa !187
  %conv6 = sitofp i64 %2 to double, !dbg !188
  %tv_usec8 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, i32 1, !dbg !189
  %3 = load i64, ptr %tv_usec8, align 8, !dbg !189, !tbaa !190
  %conv9 = sitofp i64 %3 to double, !dbg !191
  %div10 = fdiv double %conv9, 1.000000e+06, !dbg !192
  %add11 = fadd double %div10, %conv6, !dbg !193
  call void @llvm.dbg.value(metadata double %add11, metadata !165, metadata !DIExpression()), !dbg !167
  %sub = fsub double %add11, %add, !dbg !194
  call void @llvm.dbg.value(metadata double %sub, metadata !166, metadata !DIExpression()), !dbg !167
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %sub, double noundef %conv), !dbg !195
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %func_args) #8, !dbg !196
  ret void, !dbg !196
>>>>>>> ALC_new_strategy:Transformation-Pass/Vectorizer-Pass/test/s253/alc_simple_handwritten.ll
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
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>) #7	   

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>) #7


; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
<<<<<<< HEAD:Transformation-Pass/Vectorizer-Pass/test/vectorized.ll
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
=======
declare <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.sel.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #7


declare <vscale x 2 x i32> @llvm.masked.gather.v2i32.v2p0(<vscale x 2 x ptr>, i32, <vscale x 2 x i1>, <vscale x 2 x i32>)

declare void @llvm.masked.scatter.v2i32.v2p0(<vscale x 2 x i32>, <vscale x 2 x ptr>, i32, <vscale x 2 x i1>)

declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64)

declare <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr, i32, <vscale x 2 x i1>, <vscale x 2 x i32>)

declare void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> , ptr, i32, <vscale x 2 x i1>)


attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "s253/tsvc-functions.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "612b3dc8754b54849135995eb8ec64b9")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "test_function_t", file: !3, line: 55, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_t", file: !11, line: 23, baseType: !12)
!11 = !DIFile(filename: "s253/common.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5ffc4849a08971f3312fdcdd05f02549")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_t", file: !11, line: 12, size: 320, elements: !15)
!15 = !{!16, !26, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !14, file: !11, line: 13, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !18, line: 8, size: 128, elements: !19)
!18 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!19 = !{!20, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !17, file: !18, line: 10, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !22, line: 160, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !17, file: !18, line: 11, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !22, line: 162, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !14, file: !11, line: 14, baseType: !17, size: 128, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "arg_info", scope: !14, file: !11, line: 15, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!29 = !{!30, !35, !0, !40, !42, !44, !46, !48, !53, !55, !57, !59, !62, !66}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "flat_2d_array", scope: !2, file: !3, line: 10, type: !32, isLocal: false, isDefinition: true, align: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 65536)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 12, type: !37, isLocal: false, isDefinition: true, align: 512)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 262144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 8192)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !51)
!51 = !{!52, !52}
!52 = !DISubrange(count: 256)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !3, line: 17, type: !61, isLocal: false, isDefinition: true, align: 512)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 262144, elements: !38)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !3, line: 19, type: !64, isLocal: false, isDefinition: true)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !3, line: 20, type: !65, isLocal: false, isDefinition: true)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"frame-pointer", i32 1}
!79 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!80 = distinct !DISubprogram(name: "s253", scope: !3, file: !3, line: 28, type: !81, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, !13}
!83 = !{!84, !85, !86, !88}
!84 = !DILocalVariable(name: "func_args", arg: 1, scope: !80, file: !3, line: 28, type: !13)
!85 = !DILocalVariable(name: "s", scope: !80, file: !3, line: 38, type: !12)
!86 = !DILocalVariable(name: "nl", scope: !87, file: !3, line: 39, type: !12)
!87 = distinct !DILexicalBlock(scope: !80, file: !3, line: 39, column: 5)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 40, type: !12)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 40, column: 9)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 39, column: 45)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 39, column: 5)
!92 = !DILocation(line: 0, scope: !80)
!93 = !DILocation(line: 34, column: 5, scope: !80)
!94 = !DILocation(line: 35, column: 5, scope: !80)
!95 = !DILocation(line: 0, scope: !87)
!96 = !DILocation(line: 39, column: 5, scope: !87)
!97 = !DILocation(line: 0, scope: !89)
!98 = !DILocation(line: 40, column: 9, scope: !89)
!99 = !DILocation(line: 51, column: 30, scope: !80)
!100 = !DILocation(line: 51, column: 5, scope: !80)
!101 = !DILocation(line: 52, column: 12, scope: !80)
!102 = !DILocation(line: 52, column: 5, scope: !80)
!103 = !DILocation(line: 47, column: 9, scope: !90)
!104 = !DILocation(line: 39, column: 41, scope: !91)
!105 = !DILocation(line: 39, column: 25, scope: !91)
!106 = distinct !{!106, !96, !107, !108, !109}
!107 = !DILocation(line: 48, column: 5, scope: !87)
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !DILocation(line: 41, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 41, column: 17)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 40, column: 42)
!113 = distinct !DILexicalBlock(scope: !89, file: !3, line: 40, column: 9)
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !DILocation(line: 41, column: 24, scope: !111)
!119 = !DILocation(line: 41, column: 22, scope: !111)
!120 = !DILocation(line: 41, column: 17, scope: !112)
!121 = !DILocation(line: 42, column: 35, scope: !122)
!122 = distinct !DILexicalBlock(scope: !111, file: !3, line: 41, column: 30)
!123 = !DILocation(line: 42, column: 33, scope: !122)
!124 = !DILocation(line: 42, column: 26, scope: !122)
!125 = !DILocation(line: 43, column: 17, scope: !122)
!126 = !DILocation(line: 43, column: 22, scope: !122)
!127 = !DILocation(line: 44, column: 22, scope: !122)
!128 = !DILocation(line: 45, column: 13, scope: !122)
!129 = !DILocation(line: 40, column: 38, scope: !113)
!130 = !DILocation(line: 40, column: 27, scope: !113)
!131 = distinct !{!131, !98, !132, !108, !109}
!132 = !DILocation(line: 46, column: 9, scope: !89)
!133 = !DISubprogram(name: "initialise_arrays", scope: !11, file: !11, line: 31, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!134 = !DISubroutineType(types: !135)
!135 = !{!12, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{}
!140 = !DISubprogram(name: "gettimeofday", scope: !141, file: !141, line: 66, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!141 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !144, !28}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!146 = !DISubprogram(name: "dummy", scope: !11, file: !11, line: 27, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!147 = !DISubroutineType(types: !148)
!148 = !{!12, !65, !65, !65, !65, !65, !149, !149, !149, !10}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !151)
!151 = !{!52}
!152 = !DISubprogram(name: "calc_checksum", scope: !11, file: !11, line: 32, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!153 = !DISubroutineType(types: !154)
!154 = !{!10, !136}
!155 = distinct !DISubprogram(name: "time_function", scope: !3, file: !3, line: 57, type: !156, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !6, !5}
!158 = !{!159, !160, !161, !162, !164, !165, !166}
!159 = !DILocalVariable(name: "vector_func", arg: 1, scope: !155, file: !3, line: 57, type: !6)
!160 = !DILocalVariable(name: "arg_info", arg: 2, scope: !155, file: !3, line: 57, type: !5)
!161 = !DILocalVariable(name: "func_args", scope: !155, file: !3, line: 59, type: !14)
!162 = !DILocalVariable(name: "result", scope: !155, file: !3, line: 61, type: !163)
!163 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!164 = !DILocalVariable(name: "tic", scope: !155, file: !3, line: 63, type: !163)
!165 = !DILocalVariable(name: "toc", scope: !155, file: !3, line: 64, type: !163)
!166 = !DILocalVariable(name: "taken", scope: !155, file: !3, line: 66, type: !163)
!167 = !DILocation(line: 0, scope: !155)
!168 = !DILocation(line: 59, column: 5, scope: !155)
!169 = !DILocation(line: 59, column: 19, scope: !155)
!170 = !DILocation(line: 59, column: 31, scope: !155)
!171 = !{!172, !175, i64 32}
!172 = !{!"args_t", !173, i64 0, !173, i64 16, !175, i64 32}
!173 = !{!"timeval", !174, i64 0, !174, i64 8}
!174 = !{!"long", !116, i64 0}
!175 = !{!"any pointer", !116, i64 0}
!176 = !DILocation(line: 61, column: 21, scope: !155)
!177 = !DILocation(line: 63, column: 29, scope: !155)
!178 = !{!172, !174, i64 0}
!179 = !DILocation(line: 63, column: 16, scope: !155)
!180 = !DILocation(line: 63, column: 50, scope: !155)
!181 = !{!172, !174, i64 8}
!182 = !DILocation(line: 63, column: 37, scope: !155)
!183 = !DILocation(line: 63, column: 57, scope: !155)
!184 = !DILocation(line: 63, column: 35, scope: !155)
!185 = !DILocation(line: 64, column: 26, scope: !155)
!186 = !DILocation(line: 64, column: 29, scope: !155)
!187 = !{!172, !174, i64 16}
!188 = !DILocation(line: 64, column: 16, scope: !155)
!189 = !DILocation(line: 64, column: 50, scope: !155)
!190 = !{!172, !174, i64 24}
!191 = !DILocation(line: 64, column: 37, scope: !155)
!192 = !DILocation(line: 64, column: 57, scope: !155)
!193 = !DILocation(line: 64, column: 35, scope: !155)
!194 = !DILocation(line: 66, column: 23, scope: !155)
!195 = !DILocation(line: 68, column: 5, scope: !155)
!196 = !DILocation(line: 69, column: 1, scope: !155)
!197 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 72, type: !198, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!198 = !DISubroutineType(types: !199)
!199 = !{!12, !12, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!202 = !{!203, !204, !205, !206}
!203 = !DILocalVariable(name: "argc", arg: 1, scope: !197, file: !3, line: 72, type: !12)
!204 = !DILocalVariable(name: "argv", arg: 2, scope: !197, file: !3, line: 72, type: !200)
!205 = !DILocalVariable(name: "n1", scope: !197, file: !3, line: 73, type: !12)
!206 = !DILocalVariable(name: "n3", scope: !197, file: !3, line: 74, type: !12)
!207 = !DILocation(line: 0, scope: !197)
!208 = !DILocation(line: 75, column: 5, scope: !197)
!209 = !DILocation(line: 77, column: 5, scope: !197)
!210 = !DILocation(line: 78, column: 1, scope: !197)
>>>>>>> ALC_new_strategy:Transformation-Pass/Vectorizer-Pass/test/s253/alc_simple_handwritten.ll
