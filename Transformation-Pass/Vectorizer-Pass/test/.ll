; ModuleID = 'scalar_code.ll'
source_filename = "tsvc/s253.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.args_t = type { %struct.timeval, %struct.timeval, ptr }
%struct.timeval = type { i64, i64 }

@__func__.s253Func = private unnamed_addr constant [9 x i8] c"s253Func\00", align 1
@a = dso_local global [500 x float] zeroinitializer, align 64, !dbg !0
@b = dso_local global [500 x float] zeroinitializer, align 64, !dbg !40
@c = dso_local global [500 x float] zeroinitializer, align 64, !dbg !42
@d = dso_local global [500 x float] zeroinitializer, align 64, !dbg !44
@e = dso_local global [500 x float] zeroinitializer, align 64, !dbg !46
@aa = dso_local global [256 x [256 x float]] zeroinitializer, align 64, !dbg !48
@bb = dso_local global [256 x [256 x float]] zeroinitializer, align 64, !dbg !53
@cc = dso_local global [256 x [256 x float]] zeroinitializer, align 64, !dbg !55
@.str.1 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%10.3f\09%f\0A\00", align 1
@flat_2d_array = dso_local local_unnamed_addr global [65536 x float] zeroinitializer, align 64, !dbg !30
@x = dso_local local_unnamed_addr global [500 x float] zeroinitializer, align 64, !dbg !35
@tt = dso_local local_unnamed_addr global [256 x [256 x float]] zeroinitializer, align 64, !dbg !57
@indx = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 64, !dbg !59
@xx = dso_local local_unnamed_addr global ptr null, align 8, !dbg !63
@yy = dso_local local_unnamed_addr global ptr null, align 8, !dbg !67
@str = private unnamed_addr constant [12 x i8] c" Printing :\00", align 1
@str.5 = private unnamed_addr constant [26 x i8] c"Loop \09Time(sec) \09Checksum\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @s253Func(ptr nocapture noundef %func_args) #0 !dbg !81 {
entry:
  call void @llvm.dbg.value(metadata ptr %func_args, metadata !83, metadata !DIExpression()), !dbg !93
  %call = tail call i32 @initialise_arrays(ptr noundef nonnull @__func__.s253Func) #9, !dbg !94
  %call1 = tail call i32 @gettimeofday(ptr noundef %func_args, ptr noundef null) #9, !dbg !95
  call void @llvm.dbg.declare(metadata ptr undef, metadata !84, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 0, metadata !85, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 undef, metadata !85, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !98
  %0 = call i32 @llvm.vscale.i32(), !dbg !99
  %1 = mul i32 %0, 4, !dbg !99
  %2 = mul i32 %1, 2, !dbg !99
  %3 = icmp uge i32 500, %2, !dbg !99
  br i1 %3, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !99

for.cond.cleanup4:                                ; preds = %middel.block, %for.inc
  %call11 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #9, !dbg !100
  call void @llvm.dbg.value(metadata i32 1, metadata !85, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 undef, metadata !85, metadata !DIExpression()), !dbg !97
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !101
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !102
  br label %for.body20, !dbg !103

for.body5:                                        ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %6, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !87, metadata !DIExpression()), !dbg !98
  %arrayidx = getelementptr inbounds [500 x float], ptr @a, i64 0, i64 %indvars.iv, !dbg !104
  %4 = load float, ptr %arrayidx, align 4, !dbg !104, !tbaa !108
  %arrayidx7 = getelementptr inbounds [500 x float], ptr @b, i64 0, i64 %indvars.iv, !dbg !112
  %5 = load float, ptr %arrayidx7, align 4, !dbg !112, !tbaa !108
  %cmp8 = fcmp ugt float %4, %5, !dbg !113
  br i1 %cmp8, label %for.inc, label %if.then, !dbg !114

if.then:                                          ; preds = %for.body5
  store float -2.000000e+00, ptr %arrayidx, align 4, !dbg !115, !tbaa !108
  br label %for.inc, !dbg !117

Preheader.for.remaining.iterations:               ; preds = %middel.block, %entry
  %6 = phi i64 [ 0, %entry ], [ %65, %middel.block ]
  br label %for.body5

pre.alc:                                          ; preds = %entry
  %7 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %8 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %9 = urem i32 500, %1
  %10 = mul i32 %1, 2
  %11 = add i32 %10, %9
  %total.iterations.to.be.vectorized = sub i32 500, %11
  %12 = getelementptr inbounds [500 x float], ptr @a, i64 0, i32 0, !dbg !104
  %13 = getelementptr inbounds [500 x float], ptr @b, i64 0, i32 0, !dbg !112
  %14 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %15 = load <vscale x 4 x float>, ptr %12, align 16
  %16 = load <vscale x 4 x float>, ptr %13, align 16
  %17 = fcmp ugt <vscale x 4 x float> %15, %16
  %18 = xor <vscale x 4 x i1> %17, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %19 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %18)
  %20 = trunc i64 %19 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %58, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %8, %pre.alc ], [ %55, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %18, %pre.alc ], [ %56, %new.latch ]
  %uniform.vec.actives = phi i32 [ %20, %pre.alc ], [ %57, %new.latch ]
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %22 = getelementptr inbounds [500 x float], ptr @a, i64 0, i32 %vector.loop.index, !dbg !104
  %23 = getelementptr inbounds [500 x float], ptr @b, i64 0, i32 %vector.loop.index, !dbg !112
  %24 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %25 = load <vscale x 4 x float>, ptr %22, align 16
  %26 = load <vscale x 4 x float>, ptr %23, align 16
  %27 = fcmp ugt <vscale x 4 x float> %25, %26
  %28 = xor <vscale x 4 x i1> %27, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %29 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %28, <vscale x 4 x i1> %28)
  %30 = trunc i64 %29 to i32
  %31 = add i32 %uniform.vec.actives, %30
  %condition = icmp ule i32 %31, %1
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %32 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %21)
  %34 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %35 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %34, <vscale x 4 x i32> %32, <vscale x 4 x i32> %33)
  %36 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %31)
  %37 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %36, <vscale x 4 x i1> %36)
  %38 = trunc i64 %37 to i32
  %39 = icmp ult i32 %31, %1
  br i1 %39, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %40 = getelementptr inbounds [500 x float], ptr @a, i64 0, i32 %vector.loop.index, !dbg !104
  %41 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  call void @llvm.masked.store.nxv4f32.p0(<vscale x 4 x float> shufflevector (<vscale x 4 x float> insertelement (<vscale x 4 x float> undef, float -2.000000e+00, i64 0), <vscale x 4 x float> undef, <vscale x 4 x i32> zeroinitializer), ptr %40, i32 16, <vscale x 4 x i1> %28)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %42 = getelementptr inbounds [500 x float], ptr @a, i64 0, i32 0, !dbg !104
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4f32(<vscale x 4 x float> shufflevector (<vscale x 4 x float> insertelement (<vscale x 4 x float> undef, float -2.000000e+00, i64 0), <vscale x 4 x float> undef, <vscale x 4 x i32> zeroinitializer), <vscale x 4 x i1> %7, ptr %42, <vscale x 4 x i32> %35)
  %43 = add i32 %vector.loop.index, %1
  %44 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %43, i32 1)
  %45 = getelementptr inbounds [500 x float], ptr @a, i64 0, i32 %43, !dbg !104
  %46 = getelementptr inbounds [500 x float], ptr @b, i64 0, i32 %43, !dbg !112
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %43, i32 1)
  %48 = load <vscale x 4 x float>, ptr %45, align 16
  %49 = load <vscale x 4 x float>, ptr %46, align 16
  %50 = fcmp ugt <vscale x 4 x float> %48, %49
  %51 = xor <vscale x 4 x i1> %50, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %52 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %51, <vscale x 4 x i1> %51)
  %53 = trunc i64 %52 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %54 = phi i32 [ %60, %join.block ], [ %vector.loop.index, %linearized ]
  %55 = phi <vscale x 4 x i32> [ %61, %join.block ], [ %uniform.vector, %linearized ]
  %56 = phi <vscale x 4 x i1> [ %62, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %57 = phi i32 [ %63, %join.block ], [ %uniform.vec.actives, %linearized ]
  %58 = add i32 %54, %1
  %59 = icmp uge i32 %58, %total.iterations.to.be.vectorized
  br i1 %59, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %60 = phi i32 [ %vector.loop.index, %lane.gather ], [ %43, %uniform.block ]
  %61 = phi <vscale x 4 x i32> [ %35, %lane.gather ], [ %44, %uniform.block ]
  %62 = phi <vscale x 4 x i1> [ %36, %lane.gather ], [ %51, %uniform.block ]
  %63 = phi i32 [ %38, %lane.gather ], [ %53, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %11, 0
  %64 = getelementptr inbounds [500 x float], ptr @a, i64 0, i32 0, !dbg !104
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4f32(<vscale x 4 x float> shufflevector (<vscale x 4 x float> insertelement (<vscale x 4 x float> undef, float -2.000000e+00, i64 0), <vscale x 4 x float> undef, <vscale x 4 x i32> zeroinitializer), <vscale x 4 x i1> %56, ptr %64, <vscale x 4 x i32> %55)
  %65 = zext i32 %58 to i64
  br i1 %condition1, label %for.cond.cleanup4, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then, %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !87, metadata !DIExpression()), !dbg !98
  %exitcond.not = icmp eq i64 %indvars.iv.next, 500, !dbg !119
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !99, !llvm.loop !120

for.cond.cleanup19:                               ; preds = %for.body20
  %putchar = tail call i32 @putchar(i32 10), !dbg !124
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !125
  %call28 = tail call i32 @gettimeofday(ptr noundef nonnull %t2, ptr noundef null) #9, !dbg !126
  %call29 = tail call float @calc_checksum(ptr noundef nonnull @__func__.s253Func) #9, !dbg !127
  ret float %call29, !dbg !128

for.body20:                                       ; preds = %for.body20, %for.cond.cleanup4
  %indvars.iv41 = phi i64 [ 0, %for.cond.cleanup4 ], [ %indvars.iv.next42, %for.body20 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !91, metadata !DIExpression()), !dbg !102
  %arrayidx22 = getelementptr inbounds [500 x float], ptr @a, i64 0, i64 %indvars.iv41, !dbg !129
  %66 = load float, ptr %arrayidx22, align 4, !dbg !129, !tbaa !108
  %conv = fpext float %66 to double, !dbg !129
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, double noundef %conv), !dbg !132
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !133
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next42, metadata !91, metadata !DIExpression()), !dbg !102
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 500, !dbg !134
  br i1 %exitcond44.not, label %for.cond.cleanup19, label %for.body20, !dbg !103, !llvm.loop !135
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !137 i32 @initialise_arrays(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !144 noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !150 i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !156 float @calc_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @time_function(ptr nocapture noundef readonly %vector_func, ptr noundef %arg_info) local_unnamed_addr #0 !dbg !159 {
entry:
  %func_args = alloca %struct.args_t, align 8
  call void @llvm.dbg.value(metadata ptr %vector_func, metadata !163, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr %arg_info, metadata !164, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %func_args) #9, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %func_args, metadata !165, metadata !DIExpression()), !dbg !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %func_args, i8 0, i64 32, i1 false), !dbg !173
  %arg_info1 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 2, !dbg !174
  store ptr %arg_info, ptr %arg_info1, align 8, !dbg !174, !tbaa !175
  %call = call float %vector_func(ptr noundef nonnull %func_args) #9, !dbg !180
  %conv = fpext float %call to double, !dbg !180
  call void @llvm.dbg.value(metadata double %conv, metadata !166, metadata !DIExpression()), !dbg !171
  %0 = load i64, ptr %func_args, align 8, !dbg !181, !tbaa !182
  %conv2 = sitofp i64 %0 to double, !dbg !183
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %func_args, i64 0, i32 1, !dbg !184
  %1 = load i64, ptr %tv_usec, align 8, !dbg !184, !tbaa !185
  %conv4 = sitofp i64 %1 to double, !dbg !186
  %div = fdiv double %conv4, 1.000000e+06, !dbg !187
  %add = fadd double %div, %conv2, !dbg !188
  call void @llvm.dbg.value(metadata double %add, metadata !168, metadata !DIExpression()), !dbg !171
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !189
  %2 = load i64, ptr %t2, align 8, !dbg !190, !tbaa !191
  %conv6 = sitofp i64 %2 to double, !dbg !192
  %tv_usec8 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, i32 1, !dbg !193
  %3 = load i64, ptr %tv_usec8, align 8, !dbg !193, !tbaa !194
  %conv9 = sitofp i64 %3 to double, !dbg !195
  %div10 = fdiv double %conv9, 1.000000e+06, !dbg !196
  %add11 = fadd double %div10, %conv6, !dbg !197
  call void @llvm.dbg.value(metadata double %add11, metadata !169, metadata !DIExpression()), !dbg !171
  %sub = fsub double %add11, %add, !dbg !198
  call void @llvm.dbg.value(metadata double %sub, metadata !170, metadata !DIExpression()), !dbg !171
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, double noundef %sub, double noundef %conv), !dbg !199
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %func_args) #9, !dbg !200
  ret void, !dbg !200
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !201 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !207, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr %argv, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i32 1, metadata !209, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i32 1, metadata !210, metadata !DIExpression()), !dbg !211
  %puts = tail call i32 @puts(ptr nonnull @str.5), !dbg !212
  tail call void @time_function(ptr noundef nonnull @s253Func, ptr noundef null), !dbg !213
  ret i32 0, !dbg !214
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4f32(<vscale x 4 x float>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4f32.p0(<vscale x 4 x float>, ptr, i32 immarg, <vscale x 4 x i1>) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "tsvc/s253.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5735f200521f3f0c3a57f060eed638fe")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "test_function_t", file: !3, line: 61, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_t", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "tsvc/common.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "87ea4032ef1d4c18ae66aa99ccf6297c")
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_t", file: !11, line: 10, size: 320, elements: !15)
!15 = !{!16, !26, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !14, file: !11, line: 11, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !18, line: 8, size: 128, elements: !19)
!18 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!19 = !{!20, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !17, file: !18, line: 10, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !22, line: 160, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !17, file: !18, line: 11, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !22, line: 162, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !14, file: !11, line: 12, baseType: !17, size: 128, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "arg_info", scope: !14, file: !11, line: 13, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!29 = !{!30, !35, !0, !40, !42, !44, !46, !48, !53, !55, !57, !59, !63, !67}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "flat_2d_array", scope: !2, file: !3, line: 10, type: !32, isLocal: false, isDefinition: true, align: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 65536)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 12, type: !37, isLocal: false, isDefinition: true, align: 512)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16000, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 500)
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
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16000, elements: !38)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !3, line: 19, type: !65, isLocal: false, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !3, line: 20, type: !66, isLocal: false, isDefinition: true)
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"PIC Level", i32 2}
!77 = !{i32 7, !"PIE Level", i32 2}
!78 = !{i32 7, !"uwtable", i32 2}
!79 = !{i32 7, !"frame-pointer", i32 1}
!80 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!81 = distinct !DISubprogram(name: "s253Func", scope: !3, file: !3, line: 28, type: !8, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!82 = !{!83, !84, !85, !87, !91}
!83 = !DILocalVariable(name: "func_args", arg: 1, scope: !81, file: !3, line: 28, type: !13)
!84 = !DILocalVariable(name: "s", scope: !81, file: !3, line: 37, type: !10)
!85 = !DILocalVariable(name: "nl", scope: !86, file: !3, line: 38, type: !62)
!86 = distinct !DILexicalBlock(scope: !81, file: !3, line: 38, column: 5)
!87 = !DILocalVariable(name: "i", scope: !88, file: !3, line: 39, type: !62)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 39, column: 9)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 38, column: 45)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 38, column: 5)
!91 = !DILocalVariable(name: "i", scope: !92, file: !3, line: 52, type: !62)
!92 = distinct !DILexicalBlock(scope: !81, file: !3, line: 52, column: 5)
!93 = !DILocation(line: 0, scope: !81)
!94 = !DILocation(line: 34, column: 5, scope: !81)
!95 = !DILocation(line: 35, column: 5, scope: !81)
!96 = !DILocation(line: 37, column: 12, scope: !81)
!97 = !DILocation(line: 0, scope: !86)
!98 = !DILocation(line: 0, scope: !88)
!99 = !DILocation(line: 39, column: 9, scope: !88)
!100 = !DILocation(line: 47, column: 9, scope: !89)
!101 = !DILocation(line: 50, column: 5, scope: !81)
!102 = !DILocation(line: 0, scope: !92)
!103 = !DILocation(line: 52, column: 5, scope: !92)
!104 = !DILocation(line: 40, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 40, column: 17)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 39, column: 42)
!107 = distinct !DILexicalBlock(scope: !88, file: !3, line: 39, column: 9)
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !DILocation(line: 40, column: 25, scope: !105)
!113 = !DILocation(line: 40, column: 22, scope: !105)
!114 = !DILocation(line: 40, column: 17, scope: !106)
!115 = !DILocation(line: 44, column: 22, scope: !116)
!116 = distinct !DILexicalBlock(scope: !105, file: !3, line: 40, column: 31)
!117 = !DILocation(line: 45, column: 13, scope: !116)
!118 = !DILocation(line: 39, column: 38, scope: !107)
!119 = !DILocation(line: 39, column: 27, scope: !107)
!120 = distinct !{!120, !99, !121, !122, !123}
!121 = !DILocation(line: 46, column: 9, scope: !88)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !DILocation(line: 55, column: 5, scope: !81)
!125 = !DILocation(line: 57, column: 30, scope: !81)
!126 = !DILocation(line: 57, column: 5, scope: !81)
!127 = !DILocation(line: 58, column: 12, scope: !81)
!128 = !DILocation(line: 58, column: 5, scope: !81)
!129 = !DILocation(line: 53, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 52, column: 38)
!131 = distinct !DILexicalBlock(scope: !92, file: !3, line: 52, column: 5)
!132 = !DILocation(line: 53, column: 9, scope: !130)
!133 = !DILocation(line: 52, column: 33, scope: !131)
!134 = !DILocation(line: 52, column: 23, scope: !131)
!135 = distinct !{!135, !103, !136, !122, !123}
!136 = !DILocation(line: 54, column: 5, scope: !92)
!137 = !DISubprogram(name: "initialise_arrays", scope: !11, file: !11, line: 28, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !143)
!138 = !DISubroutineType(types: !139)
!139 = !{!62, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !{}
!144 = !DISubprogram(name: "gettimeofday", scope: !145, file: !145, line: 66, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !143)
!145 = !DIFile(filename: "/usr/include/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!146 = !DISubroutineType(types: !147)
!147 = !{!62, !148, !28}
!148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!150 = !DISubprogram(name: "dummy", scope: !11, file: !11, line: 24, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !143)
!151 = !DISubroutineType(types: !152)
!152 = !{!62, !66, !66, !66, !66, !66, !153, !153, !153, !10}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !155)
!155 = !{!52}
!156 = !DISubprogram(name: "calc_checksum", scope: !11, file: !11, line: 29, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !143)
!157 = !DISubroutineType(types: !158)
!158 = !{!10, !140}
!159 = distinct !DISubprogram(name: "time_function", scope: !3, file: !3, line: 63, type: !160, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !6, !5}
!162 = !{!163, !164, !165, !166, !168, !169, !170}
!163 = !DILocalVariable(name: "vector_func", arg: 1, scope: !159, file: !3, line: 63, type: !6)
!164 = !DILocalVariable(name: "arg_info", arg: 2, scope: !159, file: !3, line: 63, type: !5)
!165 = !DILocalVariable(name: "func_args", scope: !159, file: !3, line: 64, type: !14)
!166 = !DILocalVariable(name: "result", scope: !159, file: !3, line: 66, type: !167)
!167 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!168 = !DILocalVariable(name: "tic", scope: !159, file: !3, line: 68, type: !167)
!169 = !DILocalVariable(name: "toc", scope: !159, file: !3, line: 69, type: !167)
!170 = !DILocalVariable(name: "taken", scope: !159, file: !3, line: 71, type: !167)
!171 = !DILocation(line: 0, scope: !159)
!172 = !DILocation(line: 64, column: 5, scope: !159)
!173 = !DILocation(line: 64, column: 19, scope: !159)
!174 = !DILocation(line: 64, column: 31, scope: !159)
!175 = !{!176, !179, i64 32}
!176 = !{!"args_t", !177, i64 0, !177, i64 16, !179, i64 32}
!177 = !{!"timeval", !178, i64 0, !178, i64 8}
!178 = !{!"long", !110, i64 0}
!179 = !{!"any pointer", !110, i64 0}
!180 = !DILocation(line: 66, column: 21, scope: !159)
!181 = !DILocation(line: 68, column: 31, scope: !159)
!182 = !{!176, !178, i64 0}
!183 = !DILocation(line: 68, column: 18, scope: !159)
!184 = !DILocation(line: 68, column: 54, scope: !159)
!185 = !{!176, !178, i64 8}
!186 = !DILocation(line: 68, column: 41, scope: !159)
!187 = !DILocation(line: 68, column: 62, scope: !159)
!188 = !DILocation(line: 68, column: 38, scope: !159)
!189 = !DILocation(line: 69, column: 28, scope: !159)
!190 = !DILocation(line: 69, column: 31, scope: !159)
!191 = !{!176, !178, i64 16}
!192 = !DILocation(line: 69, column: 18, scope: !159)
!193 = !DILocation(line: 69, column: 54, scope: !159)
!194 = !{!176, !178, i64 24}
!195 = !DILocation(line: 69, column: 41, scope: !159)
!196 = !DILocation(line: 69, column: 62, scope: !159)
!197 = !DILocation(line: 69, column: 38, scope: !159)
!198 = !DILocation(line: 71, column: 24, scope: !159)
!199 = !DILocation(line: 73, column: 5, scope: !159)
!200 = !DILocation(line: 74, column: 1, scope: !159)
!201 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 77, type: !202, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!202 = !DISubroutineType(types: !203)
!203 = !{!62, !62, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!206 = !{!207, !208, !209, !210}
!207 = !DILocalVariable(name: "argc", arg: 1, scope: !201, file: !3, line: 77, type: !62)
!208 = !DILocalVariable(name: "argv", arg: 2, scope: !201, file: !3, line: 77, type: !204)
!209 = !DILocalVariable(name: "n1", scope: !201, file: !3, line: 78, type: !62)
!210 = !DILocalVariable(name: "n3", scope: !201, file: !3, line: 79, type: !62)
!211 = !DILocation(line: 0, scope: !201)
!212 = !DILocation(line: 80, column: 5, scope: !201)
!213 = !DILocation(line: 82, column: 5, scope: !201)
!214 = !DILocation(line: 83, column: 1, scope: !201)
