; ModuleID = 'scalar_code.ll'
source_filename = "test_no_papi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@n = dso_local local_unnamed_addr constant i32 500000, align 4, !dbg !0
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !11
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !13
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !15
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !17
@.str.1 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@str.3 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !32 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !38, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata ptr %b, metadata !39, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata ptr %c, metadata !40, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata ptr %cond, metadata !41, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i32 %n, metadata !42, metadata !DIExpression()), !dbg !45
  tail call void asm sideeffect "dmb sy \0A\09orr x3,x3,x3\0A", "~{memory}"() #11, !dbg !46, !srcloc !47
  call void @llvm.dbg.value(metadata i32 0, metadata !43, metadata !DIExpression()), !dbg !48
  %cmp116 = icmp sgt i32 %n, 0, !dbg !49
  br i1 %cmp116, label %for.body.preheader, label %for.cond.cleanup, !dbg !51

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !49
  %0 = call i32 @llvm.vscale.i32(), !dbg !51
  %1 = mul i32 %0, 4, !dbg !51
  %2 = mul i32 %1, 2, !dbg !51
  %3 = icmp uge i32 %n, %2, !dbg !51
  br i1 %3, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !51

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !52

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  tail call void asm sideeffect "dmb sy \0A\09orr x4,x4,x4\0A", "~{memory}"() #11, !dbg !52, !srcloc !53
  ret void, !dbg !54

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %13, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !43, metadata !DIExpression()), !dbg !48
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !55
  %4 = load i8, ptr %arrayidx, align 1, !dbg !55, !tbaa !58, !range !62
  %tobool.not = icmp eq i8 %4, 0, !dbg !55
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !63

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !64
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !66
  %5 = load i32, ptr %arrayidx4, align 4, !dbg !66, !tbaa !67
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !69
  %6 = load i32, ptr %arrayidx7, align 4, !dbg !69, !tbaa !67
  %7 = trunc i64 %indvars.iv to i32, !dbg !70
  %mul17 = mul nsw i32 %6, %7, !dbg !70
  %.neg = mul i32 %5, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !71
  %8 = shl i32 %indvars.iv.tr, 1, !dbg !71
  %sub11 = add i32 %6, %8, !dbg !71
  %add = add i32 %sub11, %mul17, !dbg !72
  %add21 = add i32 %add, %.neg, !dbg !73
  store i32 %add21, ptr %arrayidx2, align 4, !dbg !73, !tbaa !67
  %mul39112.neg = sub i32 -3, %5, !dbg !74
  %add40.neg119 = mul i32 %mul39112.neg, %7, !dbg !74
  %9 = add i32 %5, %6
  %reass.add114 = sub i32 %add21, %9
  %reass.mul115 = shl i32 %reass.add114, 1
  %add33 = add i32 %add40.neg119, 2, !dbg !75
  %sub43 = add i32 %add33, %reass.mul115, !dbg !76
  store i32 %sub43, ptr %arrayidx7, align 4, !dbg !76, !tbaa !67
  %10 = add nsw i32 %sub43, %add21, !dbg !77
  %11 = sub nsw i32 %5, %sub43, !dbg !78
  %sub57 = shl nsw i32 %11, 1, !dbg !78
  %mul58 = mul nsw i32 %7, %7, !dbg !79
  %add59 = add nsw i32 %sub57, %mul58, !dbg !80
  %mul60.neg = mul i32 %add59, -3, !dbg !81
  %12 = sub i32 %10, %7, !dbg !82
  %sub61 = shl i32 %12, 1, !dbg !82
  %sub67 = add i32 %sub61, %mul60.neg, !dbg !83
  store i32 %sub67, ptr %arrayidx4, align 4, !dbg !83, !tbaa !67
  br label %for.inc, !dbg !84

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %13 = phi i64 [ 0, %for.body.preheader ], [ %150, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %14 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %15 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %16 = urem i32 %n, %1
  %17 = mul i32 %1, 2
  %18 = add i32 %17, %16
  %total.iterations.to.be.vectorized = sub i32 %n, %18
  %19 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !55
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %21 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %21, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %22 = load <vscale x 4 x i8>, ptr %19, align 4
  %23 = icmp eq <vscale x 4 x i8> %22, zeroinitializer
  %24 = xor <vscale x 4 x i1> %23, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %25 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %24, <vscale x 4 x i1> %24)
  %26 = trunc i64 %25 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %116, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %15, %pre.alc ], [ %113, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %24, %pre.alc ], [ %114, %new.latch ]
  %uniform.vec.actives = phi i32 [ %26, %pre.alc ], [ %115, %new.latch ]
  %27 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %28 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !55
  %29 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %30 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg1 = shufflevector <vscale x 4 x i32> %30, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %31 = load <vscale x 4 x i8>, ptr %28, align 4
  %32 = icmp eq <vscale x 4 x i8> %31, zeroinitializer
  %33 = xor <vscale x 4 x i1> %32, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %34 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %33, <vscale x 4 x i1> %33)
  %35 = trunc i64 %34 to i32
  %36 = add i32 %uniform.vec.actives, %35
  %condition = icmp ule i32 %36, %1
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %37 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %38 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %27)
  %39 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %40 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %39, <vscale x 4 x i32> %37, <vscale x 4 x i32> %38)
  %41 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %36)
  %42 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %41, <vscale x 4 x i1> %41)
  %43 = trunc i64 %42 to i32
  %44 = icmp ult i32 %36, %1
  br i1 %44, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %45 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !64
  %46 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !66
  %47 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !69
  %48 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %49 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg4 = shufflevector <vscale x 4 x i32> %49, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %50 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %46, i32 16, <vscale x 4 x i1> %33, <vscale x 4 x i32> undef)
  %51 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %47, i32 16, <vscale x 4 x i1> %33, <vscale x 4 x i32> undef)
  %52 = mul <vscale x 4 x i32> %51, %48
  %53 = mul <vscale x 4 x i32> %50, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %54 = shl <vscale x 4 x i32> %48, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %55 = add <vscale x 4 x i32> %51, %54
  %56 = add <vscale x 4 x i32> %55, %52
  %57 = add <vscale x 4 x i32> %56, %53
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %57, ptr %45, i32 16, <vscale x 4 x i1> %33)
  %58 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %50
  %59 = mul <vscale x 4 x i32> %58, %48
  %60 = add <vscale x 4 x i32> %50, %51
  %61 = sub <vscale x 4 x i32> %57, %60
  %62 = shl <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %63 = add <vscale x 4 x i32> %59, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %64 = add <vscale x 4 x i32> %63, %62
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %64, ptr %47, i32 16, <vscale x 4 x i1> %33)
  %65 = add <vscale x 4 x i32> %64, %57
  %66 = sub <vscale x 4 x i32> %50, %64
  %67 = shl <vscale x 4 x i32> %66, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %68 = mul <vscale x 4 x i32> %48, %48
  %69 = add <vscale x 4 x i32> %67, %68
  %70 = mul <vscale x 4 x i32> %69, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %71 = sub <vscale x 4 x i32> %65, %48
  %72 = shl <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %73 = add <vscale x 4 x i32> %72, %70
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %73, ptr %46, i32 16, <vscale x 4 x i1> %33)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %74 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !64
  %75 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !66
  %76 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !69
  %77 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg2 = shufflevector <vscale x 4 x i32> %77, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %78 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %75, <vscale x 4 x i32> %40)
  %79 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %76, <vscale x 4 x i32> %40)
  %80 = mul <vscale x 4 x i32> %79, %40
  %81 = mul <vscale x 4 x i32> %78, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %82 = shl <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %83 = add <vscale x 4 x i32> %79, %82
  %84 = add <vscale x 4 x i32> %83, %80
  %85 = add <vscale x 4 x i32> %84, %81
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %85, <vscale x 4 x i1> %14, ptr %74, <vscale x 4 x i32> %40)
  %86 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %78
  %87 = mul <vscale x 4 x i32> %86, %40
  %88 = add <vscale x 4 x i32> %78, %79
  %89 = sub <vscale x 4 x i32> %85, %88
  %90 = shl <vscale x 4 x i32> %89, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %91 = add <vscale x 4 x i32> %87, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %92 = add <vscale x 4 x i32> %91, %90
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %92, <vscale x 4 x i1> %14, ptr %76, <vscale x 4 x i32> %40)
  %93 = add <vscale x 4 x i32> %92, %85
  %94 = sub <vscale x 4 x i32> %78, %92
  %95 = shl <vscale x 4 x i32> %94, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %96 = mul <vscale x 4 x i32> %40, %40
  %97 = add <vscale x 4 x i32> %95, %96
  %98 = mul <vscale x 4 x i32> %97, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %99 = sub <vscale x 4 x i32> %93, %40
  %100 = shl <vscale x 4 x i32> %99, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %101 = add <vscale x 4 x i32> %100, %98
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %101, <vscale x 4 x i1> %14, ptr %75, <vscale x 4 x i32> %40)
  %102 = add i32 %vector.loop.index, %1
  %103 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %102, i32 1)
  %104 = getelementptr inbounds i8, ptr %cond, i32 %102, !dbg !55
  %105 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %102, i32 1)
  %106 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg3 = shufflevector <vscale x 4 x i32> %106, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %107 = load <vscale x 4 x i8>, ptr %104, align 4
  %108 = icmp eq <vscale x 4 x i8> %107, zeroinitializer
  %109 = xor <vscale x 4 x i1> %108, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %110 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %109, <vscale x 4 x i1> %109)
  %111 = trunc i64 %110 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %112 = phi i32 [ %118, %join.block ], [ %vector.loop.index, %linearized ]
  %113 = phi <vscale x 4 x i32> [ %119, %join.block ], [ %uniform.vector, %linearized ]
  %114 = phi <vscale x 4 x i1> [ %120, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %115 = phi i32 [ %121, %join.block ], [ %uniform.vec.actives, %linearized ]
  %116 = add i32 %112, %1
  %117 = icmp uge i32 %116, %total.iterations.to.be.vectorized
  br i1 %117, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %118 = phi i32 [ %vector.loop.index, %lane.gather ], [ %102, %uniform.block ]
  %119 = phi <vscale x 4 x i32> [ %40, %lane.gather ], [ %103, %uniform.block ]
  %120 = phi <vscale x 4 x i1> [ %41, %lane.gather ], [ %109, %uniform.block ]
  %121 = phi i32 [ %43, %lane.gather ], [ %111, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition5 = icmp eq i32 %18, 0
  %122 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !64
  %123 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !66
  %124 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !69
  %125 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg6 = shufflevector <vscale x 4 x i32> %125, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %126 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %114, ptr %123, <vscale x 4 x i32> %113)
  %127 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %114, ptr %124, <vscale x 4 x i32> %113)
  %128 = mul <vscale x 4 x i32> %127, %113
  %129 = mul <vscale x 4 x i32> %126, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %130 = shl <vscale x 4 x i32> %113, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %131 = add <vscale x 4 x i32> %127, %130
  %132 = add <vscale x 4 x i32> %131, %128
  %133 = add <vscale x 4 x i32> %132, %129
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %133, <vscale x 4 x i1> %114, ptr %122, <vscale x 4 x i32> %113)
  %134 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %126
  %135 = mul <vscale x 4 x i32> %134, %113
  %136 = add <vscale x 4 x i32> %126, %127
  %137 = sub <vscale x 4 x i32> %133, %136
  %138 = shl <vscale x 4 x i32> %137, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %139 = add <vscale x 4 x i32> %135, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %140 = add <vscale x 4 x i32> %139, %138
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %140, <vscale x 4 x i1> %114, ptr %124, <vscale x 4 x i32> %113)
  %141 = add <vscale x 4 x i32> %140, %133
  %142 = sub <vscale x 4 x i32> %126, %140
  %143 = shl <vscale x 4 x i32> %142, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %144 = mul <vscale x 4 x i32> %113, %113
  %145 = add <vscale x 4 x i32> %143, %144
  %146 = mul <vscale x 4 x i32> %145, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %147 = sub <vscale x 4 x i32> %141, %113
  %148 = shl <vscale x 4 x i32> %147, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %149 = add <vscale x 4 x i32> %148, %146
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %149, <vscale x 4 x i1> %114, ptr %123, <vscale x 4 x i32> %113)
  %150 = zext i32 %116 to i64
  br i1 %condition5, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !85
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !43, metadata !DIExpression()), !dbg !48
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !49
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !51, !llvm.loop !86
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !90 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !94, metadata !DIExpression()), !dbg !96
  %conv = sext i32 %n to i64, !dbg !97
  %mul = shl nsw i64 %conv, 2, !dbg !98
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #12, !dbg !99
  call void @llvm.dbg.value(metadata ptr %call, metadata !95, metadata !DIExpression()), !dbg !96
  %cmp = icmp eq ptr %call, null, !dbg !100
  br i1 %cmp, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.3), !dbg !103
  tail call void @exit(i32 noundef 1) #13, !dbg !105
  unreachable, !dbg !105

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !106
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !111, metadata !DIExpression()), !dbg !113
  %conv = sext i32 %n to i64, !dbg !114
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #12, !dbg !115
  call void @llvm.dbg.value(metadata ptr %call, metadata !112, metadata !DIExpression()), !dbg !113
  %cmp = icmp eq ptr %call, null, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !118

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.3), !dbg !119
  tail call void @exit(i32 noundef 1) #13, !dbg !121
  unreachable, !dbg !121

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !122
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !123 {
entry:
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 500000), !dbg !132
  store ptr %call, ptr @a, align 8, !dbg !133, !tbaa !134
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 500000), !dbg !136
  store ptr %call1, ptr @b, align 8, !dbg !137, !tbaa !134
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 500000), !dbg !138
  store ptr %call2, ptr @c, align 8, !dbg !139, !tbaa !134
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 500000), !dbg !140
  store ptr %call3, ptr @cond, align 8, !dbg !141, !tbaa !134
  store i8 0, ptr %call3, align 1, !dbg !142, !tbaa !58
  call void @llvm.dbg.value(metadata i32 1, metadata !127, metadata !DIExpression()), !dbg !143
  br label %for.body, !dbg !144

for.cond.cleanup:                                 ; preds = %for.body
  %.lcssa = phi ptr [ %7, %for.body ], !dbg !145
  %0 = load ptr, ptr @a, align 8, !dbg !148, !tbaa !134
  %1 = load ptr, ptr @b, align 8, !dbg !149, !tbaa !134
  %2 = load ptr, ptr @c, align 8, !dbg !150, !tbaa !134
  tail call void @simple_if(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.lcssa, i32 noundef 500000), !dbg !151
  call void @llvm.dbg.value(metadata i32 0, metadata !129, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !153
  %3 = load ptr, ptr @c, align 8, !tbaa !134
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 0, metadata !129, metadata !DIExpression()), !dbg !152
  br label %for.body17, !dbg !154

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !127, metadata !DIExpression()), !dbg !143
  %4 = load ptr, ptr @a, align 8, !dbg !155, !tbaa !134
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !155
  store i32 1, ptr %arrayidx4, align 4, !dbg !156, !tbaa !67
  %5 = load ptr, ptr @b, align 8, !dbg !157, !tbaa !134
  %arrayidx6 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !157
  store i32 -1, ptr %arrayidx6, align 4, !dbg !158, !tbaa !67
  %6 = load ptr, ptr @c, align 8, !dbg !159, !tbaa !134
  %arrayidx8 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !159
  store i32 0, ptr %arrayidx8, align 4, !dbg !160, !tbaa !67
  %call9 = tail call i32 @rand() #11, !dbg !161
  %rem = srem i32 %call9, 5, !dbg !162
  %cmp10 = icmp eq i32 %rem, 0, !dbg !163
  %7 = load ptr, ptr @cond, align 8, !dbg !145, !tbaa !134
  %arrayidx12 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !145
  %frombool = zext i1 %cmp10 to i8, !dbg !164
  store i8 %frombool, ptr %arrayidx12, align 1, !dbg !164, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !127, metadata !DIExpression()), !dbg !143
  %exitcond.not = icmp eq i64 %indvars.iv.next, 500000, !dbg !166
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !144, !llvm.loop !167

for.cond.cleanup16:                               ; preds = %for.body17
  %add.lcssa = phi i32 [ %add, %for.body17 ], !dbg !169
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add.lcssa), !dbg !172
  %putchar = tail call i32 @putchar(i32 10), !dbg !173
  %8 = load ptr, ptr @a, align 8, !dbg !174, !tbaa !134
  tail call void @free(ptr noundef %8) #11, !dbg !175
  %9 = load ptr, ptr @b, align 8, !dbg !176, !tbaa !134
  tail call void @free(ptr noundef %9) #11, !dbg !177
  %10 = load ptr, ptr @c, align 8, !dbg !178, !tbaa !134
  tail call void @free(ptr noundef %10) #11, !dbg !179
  %11 = load ptr, ptr @cond, align 8, !dbg !180, !tbaa !134
  tail call void @free(ptr noundef %11) #11, !dbg !181
  ret i32 0, !dbg !182

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv37 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next38, %for.body17 ]
  %sum.034 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !130, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !129, metadata !DIExpression()), !dbg !152
  %arrayidx19 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv37, !dbg !183
  %12 = load i32, ptr %arrayidx19, align 4, !dbg !183, !tbaa !67
  %add = add nsw i32 %12, %sum.034, !dbg !169
  call void @llvm.dbg.value(metadata i32 %add, metadata !129, metadata !DIExpression()), !dbg !152
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !130, metadata !DIExpression()), !dbg !153
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 500000, !dbg !185
  br i1 %exitcond40.not, label %for.cond.cleanup16, label %for.body17, !dbg !154, !llvm.loop !186
}

; Function Attrs: nounwind
declare !dbg !188 i32 @rand() local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 7, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test_no_papi.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "a23ec69a412d670ccb1abd9fcdae92eb")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15, !17}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 32, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 33, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 34, type: !5, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 35, type: !8, isLocal: false, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{i32 7, !"frame-pointer", i32 1}
!31 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!32 = distinct !DISubprogram(name: "simple_if", scope: !3, file: !3, line: 10, type: !33, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35, !35, !36, !6}
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DILocalVariable(name: "a", arg: 1, scope: !32, file: !3, line: 10, type: !35)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !32, file: !3, line: 10, type: !35)
!40 = !DILocalVariable(name: "c", arg: 3, scope: !32, file: !3, line: 10, type: !35)
!41 = !DILocalVariable(name: "cond", arg: 4, scope: !32, file: !3, line: 11, type: !36)
!42 = !DILocalVariable(name: "n", arg: 5, scope: !32, file: !3, line: 11, type: !6)
!43 = !DILocalVariable(name: "i", scope: !44, file: !3, line: 15, type: !6)
!44 = distinct !DILexicalBlock(scope: !32, file: !3, line: 15, column: 5)
!45 = !DILocation(line: 0, scope: !32)
!46 = !DILocation(line: 14, column: 5, scope: !32)
!47 = !{i64 258, i64 268}
!48 = !DILocation(line: 0, scope: !44)
!49 = !DILocation(line: 15, column: 23, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !3, line: 15, column: 5)
!51 = !DILocation(line: 15, column: 5, scope: !44)
!52 = !DILocation(line: 25, column: 5, scope: !32)
!53 = !{i64 691, i64 701}
!54 = !DILocation(line: 28, column: 1, scope: !32)
!55 = !DILocation(line: 16, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 16, column: 13)
!57 = distinct !DILexicalBlock(scope: !50, file: !3, line: 15, column: 33)
!58 = !{!59, !59, i64 0}
!59 = !{!"_Bool", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{i8 0, i8 2}
!63 = !DILocation(line: 16, column: 13, scope: !57)
!64 = !DILocation(line: 17, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !3, line: 16, column: 22)
!66 = !DILocation(line: 17, column: 36, scope: !65)
!67 = !{!68, !68, i64 0}
!68 = !{!"int", !60, i64 0}
!69 = !DILocation(line: 17, column: 45, scope: !65)
!70 = !DILocation(line: 18, column: 31, scope: !65)
!71 = !DILocation(line: 17, column: 50, scope: !65)
!72 = !DILocation(line: 17, column: 42, scope: !65)
!73 = !DILocation(line: 18, column: 18, scope: !65)
!74 = !DILocation(line: 20, column: 27, scope: !65)
!75 = !DILocation(line: 19, column: 33, scope: !65)
!76 = !DILocation(line: 20, column: 18, scope: !65)
!77 = !DILocation(line: 21, column: 29, scope: !65)
!78 = !DILocation(line: 21, column: 56, scope: !65)
!79 = !DILocation(line: 21, column: 71, scope: !65)
!80 = !DILocation(line: 21, column: 67, scope: !65)
!81 = !DILocation(line: 21, column: 44, scope: !65)
!82 = !DILocation(line: 21, column: 40, scope: !65)
!83 = !DILocation(line: 22, column: 18, scope: !65)
!84 = !DILocation(line: 23, column: 9, scope: !65)
!85 = !DILocation(line: 15, column: 28, scope: !50)
!86 = distinct !{!86, !51, !87, !88, !89}
!87 = !DILocation(line: 24, column: 5, scope: !44)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 37, type: !91, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!5, !6}
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "n", arg: 1, scope: !90, file: !3, line: 37, type: !6)
!95 = !DILocalVariable(name: "ptr", scope: !90, file: !3, line: 38, type: !5)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 38, column: 45, scope: !90)
!98 = !DILocation(line: 38, column: 43, scope: !90)
!99 = !DILocation(line: 38, column: 24, scope: !90)
!100 = !DILocation(line: 39, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !90, file: !3, line: 39, column: 9)
!102 = !DILocation(line: 39, column: 9, scope: !90)
!103 = !DILocation(line: 40, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 39, column: 22)
!105 = !DILocation(line: 41, column: 9, scope: !104)
!106 = !DILocation(line: 43, column: 5, scope: !90)
!107 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 46, type: !108, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!8, !6}
!110 = !{!111, !112}
!111 = !DILocalVariable(name: "n", arg: 1, scope: !107, file: !3, line: 46, type: !6)
!112 = !DILocalVariable(name: "ptr", scope: !107, file: !3, line: 47, type: !8)
!113 = !DILocation(line: 0, scope: !107)
!114 = !DILocation(line: 47, column: 48, scope: !107)
!115 = !DILocation(line: 47, column: 26, scope: !107)
!116 = !DILocation(line: 48, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !107, file: !3, line: 48, column: 9)
!118 = !DILocation(line: 48, column: 9, scope: !107)
!119 = !DILocation(line: 49, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 48, column: 22)
!121 = !DILocation(line: 50, column: 9, scope: !120)
!122 = !DILocation(line: 52, column: 5, scope: !107)
!123 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !124, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!6}
!126 = !{!127, !129, !130}
!127 = !DILocalVariable(name: "i", scope: !128, file: !3, line: 67, type: !6)
!128 = distinct !DILexicalBlock(scope: !123, file: !3, line: 67, column: 5)
!129 = !DILocalVariable(name: "sum", scope: !123, file: !3, line: 78, type: !6)
!130 = !DILocalVariable(name: "i", scope: !131, file: !3, line: 80, type: !6)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 80, column: 5)
!132 = !DILocation(line: 58, column: 9, scope: !123)
!133 = !DILocation(line: 58, column: 7, scope: !123)
!134 = !{!135, !135, i64 0}
!135 = !{!"any pointer", !60, i64 0}
!136 = !DILocation(line: 59, column: 9, scope: !123)
!137 = !DILocation(line: 59, column: 7, scope: !123)
!138 = !DILocation(line: 60, column: 9, scope: !123)
!139 = !DILocation(line: 60, column: 7, scope: !123)
!140 = !DILocation(line: 61, column: 12, scope: !123)
!141 = !DILocation(line: 61, column: 10, scope: !123)
!142 = !DILocation(line: 63, column: 13, scope: !123)
!143 = !DILocation(line: 0, scope: !128)
!144 = !DILocation(line: 67, column: 5, scope: !128)
!145 = !DILocation(line: 71, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 67, column: 33)
!147 = distinct !DILexicalBlock(scope: !128, file: !3, line: 67, column: 5)
!148 = !DILocation(line: 75, column: 15, scope: !123)
!149 = !DILocation(line: 75, column: 18, scope: !123)
!150 = !DILocation(line: 75, column: 21, scope: !123)
!151 = !DILocation(line: 75, column: 5, scope: !123)
!152 = !DILocation(line: 0, scope: !123)
!153 = !DILocation(line: 0, scope: !131)
!154 = !DILocation(line: 80, column: 5, scope: !131)
!155 = !DILocation(line: 68, column: 9, scope: !146)
!156 = !DILocation(line: 68, column: 14, scope: !146)
!157 = !DILocation(line: 69, column: 9, scope: !146)
!158 = !DILocation(line: 69, column: 14, scope: !146)
!159 = !DILocation(line: 70, column: 9, scope: !146)
!160 = !DILocation(line: 70, column: 14, scope: !146)
!161 = !DILocation(line: 71, column: 20, scope: !146)
!162 = !DILocation(line: 71, column: 27, scope: !146)
!163 = !DILocation(line: 71, column: 32, scope: !146)
!164 = !DILocation(line: 71, column: 17, scope: !146)
!165 = !DILocation(line: 67, column: 28, scope: !147)
!166 = !DILocation(line: 67, column: 23, scope: !147)
!167 = distinct !{!167, !144, !168, !88, !89}
!168 = !DILocation(line: 72, column: 5, scope: !128)
!169 = !DILocation(line: 81, column: 13, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 80, column: 33)
!171 = distinct !DILexicalBlock(scope: !131, file: !3, line: 80, column: 5)
!172 = !DILocation(line: 85, column: 5, scope: !123)
!173 = !DILocation(line: 86, column: 5, scope: !123)
!174 = !DILocation(line: 88, column: 10, scope: !123)
!175 = !DILocation(line: 88, column: 5, scope: !123)
!176 = !DILocation(line: 89, column: 10, scope: !123)
!177 = !DILocation(line: 89, column: 5, scope: !123)
!178 = !DILocation(line: 90, column: 10, scope: !123)
!179 = !DILocation(line: 90, column: 5, scope: !123)
!180 = !DILocation(line: 91, column: 10, scope: !123)
!181 = !DILocation(line: 91, column: 5, scope: !123)
!182 = !DILocation(line: 93, column: 5, scope: !123)
!183 = !DILocation(line: 81, column: 16, scope: !170)
!184 = !DILocation(line: 80, column: 28, scope: !171)
!185 = !DILocation(line: 80, column: 23, scope: !171)
!186 = distinct !{!186, !154, !187, !88, !89}
!187 = !DILocation(line: 82, column: 5, scope: !131)
!188 = !DISubprogram(name: "rand", scope: !189, file: !189, line: 453, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !190)
!189 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!190 = !{}
