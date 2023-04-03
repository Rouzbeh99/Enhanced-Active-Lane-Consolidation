; ModuleID = 'jquant1.c'
source_filename = "jquant1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, [4 x i32], i32, [4 x ptr], [4 x ptr], i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@base_dither_matrix = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@select_ncolors.RGB_order = internal unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jinit_1pass_quantizer(ptr noundef %cinfo) local_unnamed_addr #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !13
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 152) #7
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  store ptr %call, ptr %cquantize1, align 8, !tbaa !16
  store ptr @start_pass_1_quant, ptr %call, align 8, !tbaa !17
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %call, i64 0, i32 2
  store ptr @finish_pass_1_quant, ptr %finish_pass, align 8, !tbaa !20
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %call, i64 0, i32 3
  store ptr @new_color_map_1_quant, ptr %new_color_map, align 8, !tbaa !21
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %call, i64 0, i32 8
  store ptr null, ptr %fserrors, align 8, !tbaa !22
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %call, i64 0, i32 7
  store ptr null, ptr %odither, align 8, !tbaa !22
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %2 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp = icmp sgt i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 54, ptr %msg_code, align 8, !tbaa !25
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 4, ptr %msg_parm, align 4, !tbaa !27
  %4 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  tail call void %5(ptr noundef nonnull %cinfo) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 22
  %6 = load i32, ptr %desired_number_of_colors, align 8, !tbaa !29
  %cmp8 = icmp sgt i32 %6, 256
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  %7 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 56, ptr %msg_code11, align 8, !tbaa !25
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 256, ptr %msg_parm13, align 4, !tbaa !27
  %8 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  tail call void %9(ptr noundef nonnull %cinfo) #7
  %.pre = load i32, ptr %desired_number_of_colors, align 8, !tbaa !29
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end
  %10 = phi i32 [ %.pre, %if.then9 ], [ %6, %if.end ]
  %11 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %Ncolors.i = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 5
  %12 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %conv4.i.i = sext i32 %10 to i64
  %cmp86.i.i = icmp sgt i32 %12, 1
  br i1 %cmp86.i.i, label %do.body.us.i.i.preheader, label %do.body.preheader.i.i

do.body.us.i.i.preheader:                         ; preds = %if.end17
  %13 = add i32 %12, -1
  %14 = add i32 %12, -2
  %xtraiter = and i32 %13, 7
  %15 = icmp ult i32 %14, 7
  %unroll_iter = and i32 %13, -8
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %do.body.us.i.i

do.body.preheader.i.i:                            ; preds = %if.end17
  %16 = tail call i64 @llvm.smax.i64(i64 %conv4.i.i, i64 1) #7
  %17 = add nuw nsw i64 %16, 1
  br label %do.end.i.i

do.body.us.i.i:                                   ; preds = %do.body.us.i.i.preheader, %for.cond.do.cond_crit_edge.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.cond.do.cond_crit_edge.us.i.i ], [ 1, %do.body.us.i.i.preheader ]
  %indvars.iv.next.i.i = add nuw i64 %indvars.iv.i.i, 1
  br i1 %15, label %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa, label %for.body.us.i.i

for.body.us.i.i:                                  ; preds = %do.body.us.i.i, %for.body.us.i.i
  %temp.088.us.i.i = phi i64 [ %mul.us.i.i.7, %for.body.us.i.i ], [ %indvars.iv.next.i.i, %do.body.us.i.i ]
  %niter = phi i32 [ %niter.next.7, %for.body.us.i.i ], [ 0, %do.body.us.i.i ]
  %mul.us.i.i = mul nsw i64 %temp.088.us.i.i, %indvars.iv.next.i.i
  %mul.us.i.i.1 = mul nsw i64 %mul.us.i.i, %indvars.iv.next.i.i
  %mul.us.i.i.2 = mul nsw i64 %mul.us.i.i.1, %indvars.iv.next.i.i
  %mul.us.i.i.3 = mul nsw i64 %mul.us.i.i.2, %indvars.iv.next.i.i
  %mul.us.i.i.4 = mul nsw i64 %mul.us.i.i.3, %indvars.iv.next.i.i
  %mul.us.i.i.5 = mul nsw i64 %mul.us.i.i.4, %indvars.iv.next.i.i
  %mul.us.i.i.6 = mul nsw i64 %mul.us.i.i.5, %indvars.iv.next.i.i
  %mul.us.i.i.7 = mul nsw i64 %mul.us.i.i.6, %indvars.iv.next.i.i
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa, label %for.body.us.i.i, !llvm.loop !30

for.cond.do.cond_crit_edge.us.i.i.unr-lcssa:      ; preds = %for.body.us.i.i, %do.body.us.i.i
  %mul.us.i.i.lcssa.ph = phi i64 [ undef, %do.body.us.i.i ], [ %mul.us.i.i.7, %for.body.us.i.i ]
  %temp.088.us.i.i.unr = phi i64 [ %indvars.iv.next.i.i, %do.body.us.i.i ], [ %mul.us.i.i.7, %for.body.us.i.i ]
  br i1 %lcmp.mod.not, label %for.cond.do.cond_crit_edge.us.i.i, label %for.body.us.i.i.epil

for.body.us.i.i.epil:                             ; preds = %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa, %for.body.us.i.i.epil
  %temp.088.us.i.i.epil = phi i64 [ %mul.us.i.i.epil, %for.body.us.i.i.epil ], [ %temp.088.us.i.i.unr, %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.us.i.i.epil ], [ 0, %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa ]
  %mul.us.i.i.epil = mul nsw i64 %temp.088.us.i.i.epil, %indvars.iv.next.i.i
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.do.cond_crit_edge.us.i.i, label %for.body.us.i.i.epil, !llvm.loop !32

for.cond.do.cond_crit_edge.us.i.i:                ; preds = %for.body.us.i.i.epil, %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa
  %mul.us.i.i.lcssa = phi i64 [ %mul.us.i.i.lcssa.ph, %for.cond.do.cond_crit_edge.us.i.i.unr-lcssa ], [ %mul.us.i.i.epil, %for.body.us.i.i.epil ]
  %cmp5.not.us.i.i = icmp sgt i64 %mul.us.i.i.lcssa, %conv4.i.i
  br i1 %cmp5.not.us.i.i, label %do.end.i.i, label %do.body.us.i.i, !llvm.loop !34

do.end.i.i:                                       ; preds = %for.cond.do.cond_crit_edge.us.i.i, %do.body.preheader.i.i
  %.us-phi.in.i.i = phi i64 [ %16, %do.body.preheader.i.i ], [ %indvars.iv.i.i, %for.cond.do.cond_crit_edge.us.i.i ]
  %.us-phi89.i.i = phi i64 [ %17, %do.body.preheader.i.i ], [ %mul.us.i.i.lcssa, %for.cond.do.cond_crit_edge.us.i.i ]
  %.us-phi.i.i = trunc i64 %.us-phi.in.i.i to i32
  %cmp7.i.i = icmp ult i32 %.us-phi.i.i, 2
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.end.i.i
  %18 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code.i.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 55, ptr %msg_code.i.i, align 8, !tbaa !25
  %conv9.i.i = trunc i64 %.us-phi89.i.i to i32
  %msg_parm.i.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %conv9.i.i, ptr %msg_parm.i.i, align 4, !tbaa !27
  %19 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  tail call void %20(ptr noundef nonnull %cinfo) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.end.i.i
  %cmp1390.i.i = icmp sgt i32 %12, 0
  br i1 %cmp1390.i.i, label %for.body15.preheader.i.i, label %select_ncolors.exit.i

for.body15.preheader.i.i:                         ; preds = %if.end.i.i
  %wide.trip.count.i.i = zext i32 %12 to i64
  %min.iters.check = icmp ult i32 %12, 8
  br i1 %min.iters.check, label %for.body15.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body15.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.us-phi.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %.us-phi.i.i, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer
  %21 = add nsw i64 %n.vec, -8
  %22 = lshr exact i64 %21, 3
  %23 = add nuw nsw i64 %22, 1
  %xtraiter80 = and i64 %23, 3
  %24 = icmp ult i64 %21, 24
  br i1 %24, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter85 = and i64 %23, 4611686018427387900
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph.new ], [ %39, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph.new ], [ %40, %vector.body ]
  %niter86 = phi i64 [ 0, %vector.ph.new ], [ %niter86.next.3, %vector.body ]
  %25 = getelementptr inbounds i32, ptr %Ncolors.i, i64 %index
  store <4 x i32> %broadcast.splat, ptr %25, align 4, !tbaa !35
  %26 = getelementptr inbounds i32, ptr %25, i64 4
  store <4 x i32> %broadcast.splat75, ptr %26, align 4, !tbaa !35
  %27 = mul <4 x i32> %vec.phi, %broadcast.splat
  %28 = mul <4 x i32> %vec.phi73, %broadcast.splat75
  %index.next = or i64 %index, 8
  %29 = getelementptr inbounds i32, ptr %Ncolors.i, i64 %index.next
  store <4 x i32> %broadcast.splat, ptr %29, align 4, !tbaa !35
  %30 = getelementptr inbounds i32, ptr %29, i64 4
  store <4 x i32> %broadcast.splat75, ptr %30, align 4, !tbaa !35
  %31 = mul <4 x i32> %27, %broadcast.splat
  %32 = mul <4 x i32> %28, %broadcast.splat75
  %index.next.1 = or i64 %index, 16
  %33 = getelementptr inbounds i32, ptr %Ncolors.i, i64 %index.next.1
  store <4 x i32> %broadcast.splat, ptr %33, align 4, !tbaa !35
  %34 = getelementptr inbounds i32, ptr %33, i64 4
  store <4 x i32> %broadcast.splat75, ptr %34, align 4, !tbaa !35
  %35 = mul <4 x i32> %31, %broadcast.splat
  %36 = mul <4 x i32> %32, %broadcast.splat75
  %index.next.2 = or i64 %index, 24
  %37 = getelementptr inbounds i32, ptr %Ncolors.i, i64 %index.next.2
  store <4 x i32> %broadcast.splat, ptr %37, align 4, !tbaa !35
  %38 = getelementptr inbounds i32, ptr %37, i64 4
  store <4 x i32> %broadcast.splat75, ptr %38, align 4, !tbaa !35
  %39 = mul <4 x i32> %35, %broadcast.splat
  %40 = mul <4 x i32> %36, %broadcast.splat75
  %index.next.3 = add nuw i64 %index, 32
  %niter86.next.3 = add i64 %niter86, 4
  %niter86.ncmp.3 = icmp eq i64 %niter86.next.3, %unroll_iter85
  br i1 %niter86.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !36

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa78.ph = phi <4 x i32> [ undef, %vector.ph ], [ %39, %vector.body ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %40, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.phi.unr = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %39, %vector.body ]
  %vec.phi73.unr = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %40, %vector.body ]
  %lcmp.mod82.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod82.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.phi.epil = phi <4 x i32> [ %43, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi73.epil = phi <4 x i32> [ %44, %vector.body.epil ], [ %vec.phi73.unr, %middle.block.unr-lcssa ]
  %epil.iter81 = phi i64 [ %epil.iter81.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %41 = getelementptr inbounds i32, ptr %Ncolors.i, i64 %index.epil
  store <4 x i32> %broadcast.splat, ptr %41, align 4, !tbaa !35
  %42 = getelementptr inbounds i32, ptr %41, i64 4
  store <4 x i32> %broadcast.splat75, ptr %42, align 4, !tbaa !35
  %43 = mul <4 x i32> %vec.phi.epil, %broadcast.splat
  %44 = mul <4 x i32> %vec.phi73.epil, %broadcast.splat75
  %index.next.epil = add nuw i64 %index.epil, 8
  %epil.iter81.next = add i64 %epil.iter81, 1
  %epil.iter81.cmp.not = icmp eq i64 %epil.iter81.next, %xtraiter80
  br i1 %epil.iter81.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !38

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa78 = phi <4 x i32> [ %.lcssa78.ph, %middle.block.unr-lcssa ], [ %43, %vector.body.epil ]
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %44, %vector.body.epil ]
  %bin.rdx = mul <4 x i32> %.lcssa, %.lcssa78
  %45 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %do.body21.preheader.split.us.i.i, label %for.body15.i.i.preheader

for.body15.i.i.preheader:                         ; preds = %for.body15.preheader.i.i, %middle.block
  %indvars.iv157.i.i.ph = phi i64 [ 0, %for.body15.preheader.i.i ], [ %n.vec, %middle.block ]
  %total_colors.092.i.i.ph = phi i32 [ 1, %for.body15.preheader.i.i ], [ %45, %middle.block ]
  br label %for.body15.i.i

do.body21.preheader.split.us.i.i:                 ; preds = %for.body15.i.i, %middle.block
  %mul17.i.i.lcssa = phi i32 [ %45, %middle.block ], [ %mul17.i.i, %for.body15.i.i ]
  %arrayidx31.us118.i.i = getelementptr inbounds i32, ptr %Ncolors.i, i64 1
  %out_color_space.i.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 10
  %46 = load i32, ptr %out_color_space.i.i, align 8, !tbaa !39
  %cmp26.us.i.i = icmp eq i32 %46, 2
  %47 = add nsw i32 %12, -1
  %wide.trip.count169.i.i = zext i32 %47 to i64
  br i1 %cmp26.us.i.i, label %do.body21.us.us.i.i.preheader, label %do.body21.us.i.i.preheader

do.body21.us.i.i.preheader:                       ; preds = %do.body21.preheader.split.us.i.i
  %48 = load i32, ptr %Ncolors.i, align 4, !tbaa !35
  %div106.us.i.i49 = sdiv i32 %mul17.i.i.lcssa, %48
  %conv32107.us.i.i50 = sext i32 %div106.us.i.i49 to i64
  %add108.us.i.i51 = add nsw i32 %48, 1
  %conv35109.us.i.i52 = sext i32 %add108.us.i.i51 to i64
  %mul36110.us.i.i53 = mul nsw i64 %conv32107.us.i.i50, %conv35109.us.i.i52
  %cmp38111.us.i.i54 = icmp sgt i64 %mul36110.us.i.i53, %conv4.i.i
  br i1 %cmp38111.us.i.i54, label %select_ncolors.exit.i, label %if.end41.us140.i.i

do.body21.us.us.i.i.preheader:                    ; preds = %do.body21.preheader.split.us.i.i
  %49 = load i32, ptr %arrayidx31.us118.i.i, align 4, !tbaa !35
  %div.us119.us.us.i.i57 = sdiv i32 %mul17.i.i.lcssa, %49
  %conv32.us120.us.us.i.i58 = sext i32 %div.us119.us.us.i.i57 to i64
  %add.us121.us.us.i.i59 = add nsw i32 %49, 1
  %conv35.us122.us.us.i.i60 = sext i32 %add.us121.us.us.i.i59 to i64
  %mul36.us123.us.us.i.i61 = mul nsw i64 %conv32.us120.us.us.i.i58, %conv35.us122.us.us.i.i60
  %cmp38.us124.us.us.i.i62 = icmp sgt i64 %mul36.us123.us.us.i.i61, %conv4.i.i
  br i1 %cmp38.us124.us.us.i.i62, label %select_ncolors.exit.i, label %if.end41.us.us.us.i.i

do.cond49.us.us.i.i:                              ; preds = %for.body25.us.us.us.i.i, %if.end41.us.us.us.i.i
  %conv45.us.us.us.i.i.le = trunc i64 %mul36.us128.us.us.i.i to i32
  %50 = load i32, ptr %arrayidx31.us118.i.i, align 4, !tbaa !35
  %div.us119.us.us.i.i = sdiv i32 %conv45.us.us.us.i.i.le, %50
  %conv32.us120.us.us.i.i = sext i32 %div.us119.us.us.i.i to i64
  %add.us121.us.us.i.i = add nsw i32 %50, 1
  %conv35.us122.us.us.i.i = sext i32 %add.us121.us.us.i.i to i64
  %mul36.us123.us.us.i.i = mul nsw i64 %conv32.us120.us.us.i.i, %conv35.us122.us.us.i.i
  %cmp38.us124.us.us.i.i = icmp sgt i64 %mul36.us123.us.us.i.i, %conv4.i.i
  br i1 %cmp38.us124.us.us.i.i, label %select_ncolors.exit.i.loopexit, label %if.end41.us.us.us.i.i.backedge

for.body25.us.us.us.i.i:                          ; preds = %if.end41.us.us.us.i.i
  %indvars.iv.next167.i.i = add nuw nsw i64 %indvars.iv166.i.i, 1
  %conv45.us.us.us.i.i = trunc i64 %mul36.us128.us.us.i.i to i32
  %arrayidx29.us.us.us.i.i = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %indvars.iv.next167.i.i
  %51 = load i32, ptr %arrayidx29.us.us.us.i.i, align 4, !tbaa !35
  %idxprom30.us.us.us.i.i = sext i32 %51 to i64
  %arrayidx31.us.us.us.i.i = getelementptr inbounds i32, ptr %Ncolors.i, i64 %idxprom30.us.us.us.i.i
  %52 = load i32, ptr %arrayidx31.us.us.us.i.i, align 4, !tbaa !35
  %div.us.us.us.i.i = sdiv i32 %conv45.us.us.us.i.i, %52
  %conv32.us.us.us.i.i = sext i32 %div.us.us.us.i.i to i64
  %add.us.us.us.i.i = add nsw i32 %52, 1
  %conv35.us.us.us.i.i = sext i32 %add.us.us.us.i.i to i64
  %mul36.us.us.us.i.i = mul nsw i64 %conv32.us.us.us.i.i, %conv35.us.us.us.i.i
  %cmp38.us.us.us.i.i = icmp sgt i64 %mul36.us.us.us.i.i, %conv4.i.i
  br i1 %cmp38.us.us.us.i.i, label %do.cond49.us.us.i.i, label %if.end41.us.us.us.i.i.backedge

if.end41.us.us.us.i.i.backedge:                   ; preds = %for.body25.us.us.us.i.i, %do.cond49.us.us.i.i
  %indvars.iv166.i.i.be = phi i64 [ %indvars.iv.next167.i.i, %for.body25.us.us.us.i.i ], [ 0, %do.cond49.us.us.i.i ]
  %mul36.us128.us.us.i.i.be = phi i64 [ %mul36.us.us.us.i.i, %for.body25.us.us.us.i.i ], [ %mul36.us123.us.us.i.i, %do.cond49.us.us.i.i ]
  %add.us127.us.us.i.i.be = phi i32 [ %add.us.us.us.i.i, %for.body25.us.us.us.i.i ], [ %add.us121.us.us.i.i, %do.cond49.us.us.i.i ]
  %arrayidx31.us126.us.us.i.i.be = phi ptr [ %arrayidx31.us.us.us.i.i, %for.body25.us.us.us.i.i ], [ %arrayidx31.us118.i.i, %do.cond49.us.us.i.i ]
  br label %if.end41.us.us.us.i.i, !llvm.loop !40

if.end41.us.us.us.i.i:                            ; preds = %do.body21.us.us.i.i.preheader, %if.end41.us.us.us.i.i.backedge
  %indvars.iv166.i.i = phi i64 [ %indvars.iv166.i.i.be, %if.end41.us.us.us.i.i.backedge ], [ 0, %do.body21.us.us.i.i.preheader ]
  %mul36.us128.us.us.i.i = phi i64 [ %mul36.us128.us.us.i.i.be, %if.end41.us.us.us.i.i.backedge ], [ %mul36.us123.us.us.i.i61, %do.body21.us.us.i.i.preheader ]
  %add.us127.us.us.i.i = phi i32 [ %add.us127.us.us.i.i.be, %if.end41.us.us.us.i.i.backedge ], [ %add.us121.us.us.i.i59, %do.body21.us.us.i.i.preheader ]
  %arrayidx31.us126.us.us.i.i = phi ptr [ %arrayidx31.us126.us.us.i.i.be, %if.end41.us.us.us.i.i.backedge ], [ %arrayidx31.us118.i.i, %do.body21.us.us.i.i.preheader ]
  store i32 %add.us127.us.us.i.i, ptr %arrayidx31.us126.us.us.i.i, align 4, !tbaa !35
  %exitcond170.not.i.i = icmp eq i64 %indvars.iv166.i.i, %wide.trip.count169.i.i
  br i1 %exitcond170.not.i.i, label %do.cond49.us.us.i.i, label %for.body25.us.us.us.i.i, !llvm.loop !41

for.body25.us131.i.i:                             ; preds = %if.end41.us140.i.i
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1
  %conv45.us141.i.i = trunc i64 %mul36115.us.i.i to i32
  %arrayidx31.us133.i.i = getelementptr inbounds i32, ptr %Ncolors.i, i64 %indvars.iv.next162.i.i
  %53 = load i32, ptr %arrayidx31.us133.i.i, align 4, !tbaa !35
  %div.us134.i.i = sdiv i32 %conv45.us141.i.i, %53
  %conv32.us135.i.i = sext i32 %div.us134.i.i to i64
  %add.us136.i.i = add nsw i32 %53, 1
  %conv35.us137.i.i = sext i32 %add.us136.i.i to i64
  %mul36.us138.i.i = mul nsw i64 %conv32.us135.i.i, %conv35.us137.i.i
  %cmp38.us139.i.i = icmp sgt i64 %mul36.us138.i.i, %conv4.i.i
  br i1 %cmp38.us139.i.i, label %do.cond49.us.i.i, label %if.end41.us140.i.i.backedge

if.end41.us140.i.i.backedge:                      ; preds = %for.body25.us131.i.i, %do.cond49.us.i.i
  %indvars.iv161.i.i.be = phi i64 [ %indvars.iv.next162.i.i, %for.body25.us131.i.i ], [ 0, %do.cond49.us.i.i ]
  %mul36115.us.i.i.be = phi i64 [ %mul36.us138.i.i, %for.body25.us131.i.i ], [ %mul36110.us.i.i, %do.cond49.us.i.i ]
  %add114.us.i.i.be = phi i32 [ %add.us136.i.i, %for.body25.us131.i.i ], [ %add108.us.i.i, %do.cond49.us.i.i ]
  %arrayidx31113.us.i.i.be = phi ptr [ %arrayidx31.us133.i.i, %for.body25.us131.i.i ], [ %Ncolors.i, %do.cond49.us.i.i ]
  br label %if.end41.us140.i.i, !llvm.loop !40

if.end41.us140.i.i:                               ; preds = %do.body21.us.i.i.preheader, %if.end41.us140.i.i.backedge
  %indvars.iv161.i.i = phi i64 [ %indvars.iv161.i.i.be, %if.end41.us140.i.i.backedge ], [ 0, %do.body21.us.i.i.preheader ]
  %mul36115.us.i.i = phi i64 [ %mul36115.us.i.i.be, %if.end41.us140.i.i.backedge ], [ %mul36110.us.i.i53, %do.body21.us.i.i.preheader ]
  %add114.us.i.i = phi i32 [ %add114.us.i.i.be, %if.end41.us140.i.i.backedge ], [ %add108.us.i.i51, %do.body21.us.i.i.preheader ]
  %arrayidx31113.us.i.i = phi ptr [ %arrayidx31113.us.i.i.be, %if.end41.us140.i.i.backedge ], [ %Ncolors.i, %do.body21.us.i.i.preheader ]
  store i32 %add114.us.i.i, ptr %arrayidx31113.us.i.i, align 4, !tbaa !35
  %exitcond165.not.i.i = icmp eq i64 %indvars.iv161.i.i, %wide.trip.count169.i.i
  br i1 %exitcond165.not.i.i, label %do.cond49.us.i.i, label %for.body25.us131.i.i, !llvm.loop !41

do.cond49.us.i.i:                                 ; preds = %for.body25.us131.i.i, %if.end41.us140.i.i
  %conv45.us141.i.i.le = trunc i64 %mul36115.us.i.i to i32
  %54 = load i32, ptr %Ncolors.i, align 4, !tbaa !35
  %div106.us.i.i = sdiv i32 %conv45.us141.i.i.le, %54
  %conv32107.us.i.i = sext i32 %div106.us.i.i to i64
  %add108.us.i.i = add nsw i32 %54, 1
  %conv35109.us.i.i = sext i32 %add108.us.i.i to i64
  %mul36110.us.i.i = mul nsw i64 %conv32107.us.i.i, %conv35109.us.i.i
  %cmp38111.us.i.i = icmp sgt i64 %mul36110.us.i.i, %conv4.i.i
  br i1 %cmp38111.us.i.i, label %select_ncolors.exit.i.loopexit76, label %if.end41.us140.i.i.backedge

for.body15.i.i:                                   ; preds = %for.body15.i.i.preheader, %for.body15.i.i
  %indvars.iv157.i.i = phi i64 [ %indvars.iv.next158.i.i, %for.body15.i.i ], [ %indvars.iv157.i.i.ph, %for.body15.i.i.preheader ]
  %total_colors.092.i.i = phi i32 [ %mul17.i.i, %for.body15.i.i ], [ %total_colors.092.i.i.ph, %for.body15.i.i.preheader ]
  %arrayidx16.i.i = getelementptr inbounds i32, ptr %Ncolors.i, i64 %indvars.iv157.i.i
  store i32 %.us-phi.i.i, ptr %arrayidx16.i.i, align 4, !tbaa !35
  %mul17.i.i = mul nsw i32 %total_colors.092.i.i, %.us-phi.i.i
  %indvars.iv.next158.i.i = add nuw nsw i64 %indvars.iv157.i.i, 1
  %exitcond160.not.i.i = icmp eq i64 %indvars.iv.next158.i.i, %wide.trip.count.i.i
  br i1 %exitcond160.not.i.i, label %do.body21.preheader.split.us.i.i, label %for.body15.i.i, !llvm.loop !42

select_ncolors.exit.i.loopexit:                   ; preds = %do.cond49.us.us.i.i
  %conv45.us.us.us.i.i.le.le = trunc i64 %mul36.us128.us.us.i.i to i32
  br label %select_ncolors.exit.i

select_ncolors.exit.i.loopexit76:                 ; preds = %do.cond49.us.i.i
  %conv45.us141.i.i.le.le = trunc i64 %mul36115.us.i.i to i32
  br label %select_ncolors.exit.i

select_ncolors.exit.i:                            ; preds = %select_ncolors.exit.i.loopexit76, %select_ncolors.exit.i.loopexit, %do.body21.us.i.i.preheader, %do.body21.us.us.i.i.preheader, %if.end.i.i
  %.us-phi150.i.i = phi i32 [ 1, %if.end.i.i ], [ %mul17.i.i.lcssa, %do.body21.us.us.i.i.preheader ], [ %mul17.i.i.lcssa, %do.body21.us.i.i.preheader ], [ %conv45.us.us.us.i.i.le.le, %select_ncolors.exit.i.loopexit ], [ %conv45.us141.i.i.le.le, %select_ncolors.exit.i.loopexit76 ]
  %55 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp.i = icmp eq i32 %55, 3
  %56 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %.us-phi150.i.i, ptr %msg_parm.i, align 4, !tbaa !27
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %select_ncolors.exit.i
  %57 = load i32, ptr %Ncolors.i, align 4, !tbaa !35
  %arrayidx5.i = getelementptr inbounds i32, ptr %msg_parm.i, i64 1
  store i32 %57, ptr %arrayidx5.i, align 4, !tbaa !35
  %arrayidx7.i = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 5, i64 1
  %58 = load i32, ptr %arrayidx7.i, align 4, !tbaa !35
  %arrayidx8.i = getelementptr inbounds i32, ptr %msg_parm.i, i64 2
  store i32 %58, ptr %arrayidx8.i, align 4, !tbaa !35
  %arrayidx10.i = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 5, i64 2
  %59 = load i32, ptr %arrayidx10.i, align 4, !tbaa !35
  %arrayidx11.i = getelementptr inbounds i32, ptr %msg_parm.i, i64 3
  store i32 %59, ptr %arrayidx11.i, align 4, !tbaa !35
  br label %if.end.i

if.else.i:                                        ; preds = %select_ncolors.exit.i
  %60 = load ptr, ptr %cinfo, align 8, !tbaa !24
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.body.i
  %.sink = phi i32 [ 93, %do.body.i ], [ 94, %if.else.i ]
  %.sink.i = phi ptr [ %56, %do.body.i ], [ %60, %if.else.i ]
  %61 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 %.sink, ptr %61, align 8
  %emit_message20.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %.sink.i, i64 0, i32 1
  %62 = load ptr, ptr %emit_message20.i, align 8, !tbaa !44
  tail call void %62(ptr noundef nonnull %cinfo, i32 noundef 1) #7
  %63 = load ptr, ptr %mem, align 8, !tbaa !5
  %alloc_sarray.i = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %63, i64 0, i32 2
  %64 = load ptr, ptr %alloc_sarray.i, align 8, !tbaa !45
  %65 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %call22.i = tail call ptr %64(ptr noundef nonnull %cinfo, i32 noundef 1, i32 noundef %.us-phi150.i.i, i32 noundef %65) #7
  %66 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp24110.i = icmp sgt i32 %66, 0
  br i1 %cmp24110.i, label %for.body.preheader.i, label %create_colormap.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %67 = sext i32 %.us-phi150.i.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.end46.i, %for.body.preheader.i
  %68 = phi i32 [ %66, %for.body.preheader.i ], [ %85, %for.end46.i ]
  %indvars.iv129.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next130.i, %for.end46.i ]
  %blkdist.0111.i = phi i32 [ %.us-phi150.i.i, %for.body.preheader.i ], [ %div.i, %for.end46.i ]
  %arrayidx26.i = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 5, i64 %indvars.iv129.i
  %69 = load i32, ptr %arrayidx26.i, align 4, !tbaa !35
  %div.i = sdiv i32 %blkdist.0111.i, %69
  %cmp28108.i = icmp sgt i32 %69, 0
  br i1 %cmp28108.i, label %for.body29.lr.ph.i, label %for.end46.i

for.body29.lr.ph.i:                               ; preds = %for.body.i
  %sub.i = add nsw i32 %69, -1
  %div.i134142.i = lshr i32 %sub.i, 1
  %conv1.i135.i = zext i32 %div.i134142.i to i64
  %conv2.i136.i = zext i32 %sub.i to i64
  %cmp35103.i = icmp sgt i32 %div.i, 0
  %arrayidx38.i = getelementptr inbounds ptr, ptr %call22.i, i64 %indvars.iv129.i
  br i1 %cmp35103.i, label %for.body29.us.preheader.i, label %for.end46.i

for.body29.us.preheader.i:                        ; preds = %for.body29.lr.ph.i
  %70 = sext i32 %blkdist.0111.i to i64
  %wide.trip.count127.i = zext i32 %69 to i64
  %wide.trip.count.i = zext i32 %div.i to i64
  %71 = add nsw i64 %wide.trip.count.i, -1
  %xtraiter87 = and i64 %wide.trip.count.i, 3
  %72 = icmp ult i64 %71, 3
  %unroll_iter90 = and i64 %wide.trip.count.i, 4294967292
  %lcmp.mod89.not = icmp eq i64 %xtraiter87, 0
  br label %for.body29.us.i

for.body29.us.i:                                  ; preds = %for.inc44.us.i, %for.body29.us.preheader.i
  %indvars.iv124.i = phi i64 [ 0, %for.body29.us.preheader.i ], [ %indvars.iv.next125.i, %for.inc44.us.i ]
  %indvars.iv119.i = phi i32 [ 0, %for.body29.us.preheader.i ], [ %indvars.iv.next120.i, %for.inc44.us.i ]
  %73 = trunc i64 %indvars.iv124.i to i32
  %mul.us.i = mul nsw i32 %div.i, %73
  %cmp32105.us.i = icmp slt i32 %mul.us.i, %.us-phi150.i.i
  br i1 %cmp32105.us.i, label %for.cond34.preheader.lr.ph.us.i, label %for.inc44.us.i

for.inc44.us.i:                                   ; preds = %for.cond34.for.inc41_crit_edge.us.us.i, %for.body29.us.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1
  %indvars.iv.next120.i = add i32 %indvars.iv119.i, %div.i
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count127.i
  br i1 %exitcond128.not.i, label %for.end46.loopexit.i, label %for.body29.us.i, !llvm.loop !46

for.cond34.preheader.lr.ph.us.i:                  ; preds = %for.body29.us.i
  %74 = sext i32 %indvars.iv119.i to i64
  %mul.i.us.i = mul nuw nsw i64 %indvars.iv124.i, 255
  %add.i.us.i = add nuw nsw i64 %mul.i.us.i, %conv1.i135.i
  %div3.i.us.i = udiv i64 %add.i.us.i, %conv2.i136.i
  %conv.us.i = trunc i64 %div3.i.us.i to i8
  br label %for.cond34.preheader.us.us.i

for.cond34.preheader.us.us.i:                     ; preds = %for.cond34.for.inc41_crit_edge.us.us.i, %for.cond34.preheader.lr.ph.us.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %for.cond34.for.inc41_crit_edge.us.us.i ], [ %74, %for.cond34.preheader.lr.ph.us.i ]
  br i1 %72, label %for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa, label %for.body36.us.us.i

for.body36.us.us.i:                               ; preds = %for.cond34.preheader.us.us.i, %for.body36.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body36.us.us.i ], [ 0, %for.cond34.preheader.us.us.i ]
  %niter91 = phi i64 [ %niter91.next.3, %for.body36.us.us.i ], [ 0, %for.cond34.preheader.us.us.i ]
  %75 = load ptr, ptr %arrayidx38.i, align 8, !tbaa !22
  %76 = add nsw i64 %indvars.iv.i, %indvars.iv121.i
  %arrayidx40.us.us.i = getelementptr inbounds i8, ptr %75, i64 %76
  store i8 %conv.us.i, ptr %arrayidx40.us.us.i, align 1, !tbaa !27
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %77 = load ptr, ptr %arrayidx38.i, align 8, !tbaa !22
  %78 = add nsw i64 %indvars.iv.next.i, %indvars.iv121.i
  %arrayidx40.us.us.i.1 = getelementptr inbounds i8, ptr %77, i64 %78
  store i8 %conv.us.i, ptr %arrayidx40.us.us.i.1, align 1, !tbaa !27
  %indvars.iv.next.i.1 = or i64 %indvars.iv.i, 2
  %79 = load ptr, ptr %arrayidx38.i, align 8, !tbaa !22
  %80 = add nsw i64 %indvars.iv.next.i.1, %indvars.iv121.i
  %arrayidx40.us.us.i.2 = getelementptr inbounds i8, ptr %79, i64 %80
  store i8 %conv.us.i, ptr %arrayidx40.us.us.i.2, align 1, !tbaa !27
  %indvars.iv.next.i.2 = or i64 %indvars.iv.i, 3
  %81 = load ptr, ptr %arrayidx38.i, align 8, !tbaa !22
  %82 = add nsw i64 %indvars.iv.next.i.2, %indvars.iv121.i
  %arrayidx40.us.us.i.3 = getelementptr inbounds i8, ptr %81, i64 %82
  store i8 %conv.us.i, ptr %arrayidx40.us.us.i.3, align 1, !tbaa !27
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter91.next.3 = add i64 %niter91, 4
  %niter91.ncmp.3 = icmp eq i64 %niter91.next.3, %unroll_iter90
  br i1 %niter91.ncmp.3, label %for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa, label %for.body36.us.us.i, !llvm.loop !47

for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa: ; preds = %for.body36.us.us.i, %for.cond34.preheader.us.us.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.cond34.preheader.us.us.i ], [ %indvars.iv.next.i.3, %for.body36.us.us.i ]
  br i1 %lcmp.mod89.not, label %for.cond34.for.inc41_crit_edge.us.us.i, label %for.body36.us.us.i.epil

for.body36.us.us.i.epil:                          ; preds = %for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa, %for.body36.us.us.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body36.us.us.i.epil ], [ %indvars.iv.i.unr, %for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa ]
  %epil.iter88 = phi i64 [ %epil.iter88.next, %for.body36.us.us.i.epil ], [ 0, %for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa ]
  %83 = load ptr, ptr %arrayidx38.i, align 8, !tbaa !22
  %84 = add nsw i64 %indvars.iv.i.epil, %indvars.iv121.i
  %arrayidx40.us.us.i.epil = getelementptr inbounds i8, ptr %83, i64 %84
  store i8 %conv.us.i, ptr %arrayidx40.us.us.i.epil, align 1, !tbaa !27
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter88.next = add i64 %epil.iter88, 1
  %epil.iter88.cmp.not = icmp eq i64 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %for.cond34.for.inc41_crit_edge.us.us.i, label %for.body36.us.us.i.epil, !llvm.loop !48

for.cond34.for.inc41_crit_edge.us.us.i:           ; preds = %for.body36.us.us.i.epil, %for.cond34.for.inc41_crit_edge.us.us.i.unr-lcssa
  %indvars.iv.next122.i = add i64 %indvars.iv121.i, %70
  %cmp32.us.us.i = icmp slt i64 %indvars.iv.next122.i, %67
  br i1 %cmp32.us.us.i, label %for.cond34.preheader.us.us.i, label %for.inc44.us.i, !llvm.loop !49

for.end46.loopexit.i:                             ; preds = %for.inc44.us.i
  %.pre.i = load i32, ptr %out_color_components, align 8, !tbaa !23
  br label %for.end46.i

for.end46.i:                                      ; preds = %for.end46.loopexit.i, %for.body29.lr.ph.i, %for.body.i
  %85 = phi i32 [ %.pre.i, %for.end46.loopexit.i ], [ %68, %for.body.i ], [ %68, %for.body29.lr.ph.i ]
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1
  %86 = sext i32 %85 to i64
  %cmp24.i = icmp slt i64 %indvars.iv.next130.i, %86
  br i1 %cmp24.i, label %for.body.i, label %create_colormap.exit, !llvm.loop !50

create_colormap.exit:                             ; preds = %for.end46.i, %if.end.i
  %sv_colormap.i = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 1
  store ptr %call22.i, ptr %sv_colormap.i, align 8, !tbaa !51
  %sv_actual.i = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 2
  store i32 %.us-phi150.i.i, ptr %sv_actual.i, align 8, !tbaa !52
  tail call fastcc void @create_colorindex(ptr noundef nonnull %cinfo)
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 20
  %87 = load i32, ptr %dither_mode, align 8, !tbaa !53
  %cmp18 = icmp eq i32 %87, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %create_colormap.exit
  %88 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %output_width.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %89 = load i32, ptr %output_width.i, align 8, !tbaa !54
  %add.i = add i32 %89, 2
  %conv.i = zext i32 %add.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  %90 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp9.i = icmp sgt i32 %90, 0
  br i1 %cmp9.i, label %for.body.i47, label %if.end20

for.body.i47:                                     ; preds = %if.then19, %for.body.i47
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i45, %for.body.i47 ], [ 0, %if.then19 ]
  %91 = load ptr, ptr %mem, align 8, !tbaa !5
  %alloc_large.i = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %91, i64 0, i32 1
  %92 = load ptr, ptr %alloc_large.i, align 8, !tbaa !55
  %call.i = tail call ptr %92(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef %mul.i) #7
  %arrayidx.i = getelementptr inbounds %struct.my_cquantizer, ptr %88, i64 0, i32 8, i64 %indvars.iv.i44
  store ptr %call.i, ptr %arrayidx.i, align 8, !tbaa !22
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1
  %93 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %94 = sext i32 %93 to i64
  %cmp.i46 = icmp slt i64 %indvars.iv.next.i45, %94
  br i1 %cmp.i46, label %for.body.i47, label %if.end20, !llvm.loop !56

if.end20:                                         ; preds = %for.body.i47, %if.then19, %create_colormap.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef %cinfo, i32 noundef %is_pre_scan) #0 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %sv_colormap, align 8, !tbaa !51
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 32
  store ptr %1, ptr %colormap, align 8, !tbaa !57
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 2
  %2 = load i32, ptr %sv_actual, align 8, !tbaa !52
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 31
  store i32 %2, ptr %actual_number_of_colors, align 4, !tbaa !58
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 20
  %3 = load i32, ptr %dither_mode, align 8, !tbaa !53
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp = icmp eq i32 %4, 3
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %0, i64 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store ptr @color_quantize3, ptr %color_quantize, align 8, !tbaa !59
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  store ptr @color_quantize, ptr %color_quantize, align 8, !tbaa !59
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %5 = load i32, ptr %out_color_components5, align 8, !tbaa !23
  %cmp6 = icmp eq i32 %5, 3
  %spec.select = select i1 %cmp6, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  %6 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %0, i64 0, i32 1
  store ptr %spec.select, ptr %6, align 8
  %row_index = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 6
  store i32 0, ptr %row_index, align 4, !tbaa !60
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %is_padded, align 8, !tbaa !61
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sw.bb4
  tail call fastcc void @create_colorindex(ptr noundef nonnull %cinfo)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.bb4
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %odither, align 8, !tbaa !22
  %cmp16 = icmp eq ptr %8, null
  br i1 %cmp16, label %if.then17, label %sw.epilog

if.then17:                                        ; preds = %if.end15
  %9 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %10 = load i32, ptr %out_color_components5, align 8, !tbaa !23
  %cmp39.i = icmp sgt i32 %10, 0
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %if.then17
  %mem.i.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i, %for.body.lr.ph.i
  %11 = phi i32 [ %10, %for.body.lr.ph.i ], [ %19, %if.end14.i ]
  %indvars.iv46.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next47.i, %if.end14.i ]
  %arrayidx.i = getelementptr inbounds %struct.my_cquantizer, ptr %9, i64 0, i32 5, i64 %indvars.iv46.i
  %12 = load i32, ptr %arrayidx.i, align 4, !tbaa !35
  %cmp337.not.i = icmp eq i64 %indvars.iv46.i, 0
  br i1 %cmp337.not.i, label %if.then13.i, label %for.body4.i

for.body4.i:                                      ; preds = %for.body.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.body.i ]
  %arrayidx7.i = getelementptr inbounds %struct.my_cquantizer, ptr %9, i64 0, i32 5, i64 %indvars.iv.i
  %13 = load i32, ptr %arrayidx7.i, align 4, !tbaa !35
  %cmp8.i = icmp eq i32 %12, %13
  br i1 %cmp8.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body4.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv46.i
  br i1 %exitcond.not.i, label %if.then13.i, label %for.body4.i, !llvm.loop !62

for.end.i:                                        ; preds = %for.body4.i
  %idxprom6.le.i = and i64 %indvars.iv.i, 4294967295
  %arrayidx11.i = getelementptr inbounds %struct.my_cquantizer, ptr %9, i64 0, i32 7, i64 %idxprom6.le.i
  %14 = load ptr, ptr %arrayidx11.i, align 8, !tbaa !22
  %cmp12.i = icmp eq ptr %14, null
  br i1 %cmp12.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %for.inc.i, %for.end.i, %for.body.i
  %15 = load ptr, ptr %mem.i.i, align 8, !tbaa !5
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %call.i.i = tail call ptr %16(ptr noundef %cinfo, i32 noundef 1, i64 noundef 1024) #7
  %sub.i.i = add nsw i32 %12, -1
  %conv.i.i = sext i32 %sub.i.i to i64
  %mul.i.i = shl nsw i64 %conv.i.i, 9
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %for.inc23.i.i, %if.then13.i
  %indvars.iv40.i.i = phi i64 [ 0, %if.then13.i ], [ %indvars.iv.next41.i.i, %for.inc23.i.i ]
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %cond.end.i.i, %for.cond2.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.cond2.preheader.i.i ], [ %indvars.iv.next.i.i, %cond.end.i.i ]
  %arrayidx7.i.i = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %indvars.iv40.i.i, i64 %indvars.iv.i.i
  %17 = load i8, ptr %arrayidx7.i.i, align 1, !tbaa !27
  %conv8.i.i = zext i8 %17 to i64
  %18 = mul nsw i64 %conv8.i.i, -510
  %cmp13.i.i = icmp slt i64 %18, -65025
  br i1 %cmp13.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %for.body5.i.i
  %sub15.i.i = sub nuw nsw i64 -65025, %18
  %div.i.i = sdiv i64 %sub15.i.i, %mul.i.i
  %sub16.i.i = sub nsw i64 0, %div.i.i
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body5.i.i
  %mul12.i.i = add nsw i64 %18, 65025
  %div17.i.i = sdiv i64 %mul12.i.i, %mul.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub16.i.i, %cond.true.i.i ], [ %div17.i.i, %cond.false.i.i ]
  %conv18.i.i = trunc i64 %cond.i.i to i32
  %arrayidx22.i.i = getelementptr inbounds [16 x i32], ptr %call.i.i, i64 %indvars.iv40.i.i, i64 %indvars.iv.i.i
  store i32 %conv18.i.i, ptr %arrayidx22.i.i, align 4, !tbaa !35
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc23.i.i, label %for.body5.i.i, !llvm.loop !63

for.inc23.i.i:                                    ; preds = %cond.end.i.i
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1
  %exitcond43.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, 16
  br i1 %exitcond43.not.i.i, label %if.end14.loopexit.i, label %for.cond2.preheader.i.i, !llvm.loop !64

if.end14.loopexit.i:                              ; preds = %for.inc23.i.i
  %.pre.i = load i32, ptr %out_color_components5, align 8, !tbaa !23
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.loopexit.i, %for.end.i
  %19 = phi i32 [ %11, %for.end.i ], [ %.pre.i, %if.end14.loopexit.i ]
  %odither.1.i = phi ptr [ %14, %for.end.i ], [ %call.i.i, %if.end14.loopexit.i ]
  %arrayidx17.i = getelementptr inbounds %struct.my_cquantizer, ptr %9, i64 0, i32 7, i64 %indvars.iv46.i
  store ptr %odither.1.i, ptr %arrayidx17.i, align 8, !tbaa !22
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %20 = sext i32 %19 to i64
  %cmp.i = icmp slt i64 %indvars.iv.next47.i, %20
  br i1 %cmp.i, label %for.body.i, label %sw.epilog, !llvm.loop !65

sw.bb19:                                          ; preds = %entry
  %color_quantize21 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %0, i64 0, i32 1
  store ptr @quantize_fs_dither, ptr %color_quantize21, align 8, !tbaa !59
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 9
  store i32 0, ptr %on_odd_row, align 8, !tbaa !66
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %fserrors, align 8, !tbaa !22
  %cmp23 = icmp eq ptr %21, null
  br i1 %cmp23, label %if.then24, label %sw.bb19.if.end25_crit_edge

sw.bb19.if.end25_crit_edge:                       ; preds = %sw.bb19
  %out_color_components26.phi.trans.insert = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %.pre = load i32, ptr %out_color_components26.phi.trans.insert, align 8, !tbaa !23
  br label %if.end25

if.then24:                                        ; preds = %sw.bb19
  %output_width.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %22 = load i32, ptr %output_width.i, align 8, !tbaa !54
  %add.i = add i32 %22, 2
  %conv.i = zext i32 %add.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  %out_color_components.i60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %23 = load i32, ptr %out_color_components.i60, align 8, !tbaa !23
  %cmp9.i = icmp sgt i32 %23, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i61, label %sw.epilog

for.body.lr.ph.i61:                               ; preds = %if.then24
  %mem.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  br label %for.body.i66

for.body.i66:                                     ; preds = %for.body.i66, %for.body.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ 0, %for.body.lr.ph.i61 ], [ %indvars.iv.next.i64, %for.body.i66 ]
  %24 = load ptr, ptr %mem.i, align 8, !tbaa !5
  %alloc_large.i = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %alloc_large.i, align 8, !tbaa !55
  %call.i = tail call ptr %25(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef %mul.i) #7
  %arrayidx.i63 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.i62
  store ptr %call.i, ptr %arrayidx.i63, align 8, !tbaa !22
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i62, 1
  %26 = load i32, ptr %out_color_components.i60, align 8, !tbaa !23
  %27 = sext i32 %26 to i64
  %cmp.i65 = icmp slt i64 %indvars.iv.next.i64, %27
  br i1 %cmp.i65, label %for.body.i66, label %if.end25, !llvm.loop !56

if.end25:                                         ; preds = %for.body.i66, %sw.bb19.if.end25_crit_edge
  %28 = phi i32 [ %.pre, %sw.bb19.if.end25_crit_edge ], [ %26, %for.body.i66 ]
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %29 = load i32, ptr %output_width, align 8, !tbaa !54
  %add = add i32 %29, 2
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 1
  %out_color_components26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %cmp2770 = icmp sgt i32 %28, 0
  br i1 %cmp2770, label %for.body, label %sw.epilog

for.body:                                         ; preds = %if.end25, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end25 ]
  %arrayidx30 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv
  %30 = load ptr, ptr %arrayidx30, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %30, i64 noundef %mul) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %31 = load i32, ptr %out_color_components26, align 8, !tbaa !23
  %32 = sext i32 %31 to i64
  %cmp27 = icmp slt i64 %indvars.iv.next, %32
  br i1 %cmp27, label %for.body, label %sw.epilog, !llvm.loop !67

sw.default:                                       ; preds = %entry
  %33 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 5
  store i32 47, ptr %msg_code, align 8, !tbaa !25
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  tail call void %34(ptr noundef nonnull %cinfo) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end14.i, %if.then24, %if.end25, %if.then17, %if.end15, %if.then, %if.else, %sw.default
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal void @finish_pass_1_quant(ptr nocapture noundef %cinfo) #1 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_1_quant(ptr noundef %cinfo) #0 {
entry:
  %0 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 5
  store i32 45, ptr %msg_code, align 8, !tbaa !25
  %1 = load ptr, ptr %0, align 8, !tbaa !28
  tail call void %1(ptr noundef nonnull %cinfo) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_colorindex(ptr noundef %cinfo) unnamed_addr #0 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 20
  %1 = load i32, ptr %dither_mode, align 8, !tbaa !53
  %cmp = icmp eq i32 %1, 1
  %spec.select = zext i1 %cmp to i32
  %spec.select109 = select i1 %cmp, i32 766, i32 256
  %2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 4
  store i32 %spec.select, ptr %2, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %3 = load ptr, ptr %mem, align 8, !tbaa !5
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %alloc_sarray, align 8, !tbaa !45
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %5 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %call = tail call ptr %4(ptr noundef nonnull %cinfo, i32 noundef 1, i32 noundef %spec.select109, i32 noundef %5) #7
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  store ptr %call, ptr %colorindex, align 8, !tbaa !68
  %6 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp493 = icmp sgt i32 %6, 0
  br i1 %cmp493, label %for.body.preheader, label %for.end43

for.body.preheader:                               ; preds = %entry
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %sv_actual, align 8, !tbaa !52
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc41
  %indvars.iv106 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next107, %for.inc41 ]
  %blksize.095 = phi i32 [ %7, %for.body.preheader ], [ %div, %for.inc41 ]
  %arrayidx = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 5, i64 %indvars.iv106
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !35
  %div = sdiv i32 %blksize.095, %8
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %9 = load ptr, ptr %colorindex, align 8, !tbaa !68
  %arrayidx8 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv106
  %10 = load ptr, ptr %arrayidx8, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 255
  store ptr %add.ptr, ptr %arrayidx8, align 8, !tbaa !22
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body
  %11 = load ptr, ptr %colorindex, align 8, !tbaa !68
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv106
  %12 = load ptr, ptr %arrayidx12, align 8, !tbaa !22
  %sub = add nsw i32 %8, -1
  %conv2.i = sext i32 %sub to i64
  %add3.i = add nsw i64 %conv2.i, 255
  %mul4.i = shl nsw i32 %sub, 1
  %conv5.i = sext i32 %mul4.i to i64
  %div.i = sdiv i64 %add3.i, %conv5.i
  %conv6.i = trunc i64 %div.i to i32
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9, %while.end
  %indvars.iv97 = phi i64 [ 0, %if.end9 ], [ %indvars.iv.next98, %while.end ]
  %val.091 = phi i32 [ 0, %if.end9 ], [ %val.1.lcssa, %while.end ]
  %k.090 = phi i32 [ %conv6.i, %if.end9 ], [ %k.1.lcssa, %while.end ]
  %13 = sext i32 %k.090 to i64
  %cmp1786 = icmp sgt i64 %indvars.iv97, %13
  br i1 %cmp1786, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %14 = zext i32 %val.091 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %14, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = trunc i64 %indvars.iv.next to i32
  %mul.i = shl nsw i32 %15, 1
  %add.i = or i32 %mul.i, 1
  %conv.i = sext i32 %add.i to i64
  %mul1.i = mul nsw i64 %conv.i, 255
  %add3.i81 = add nsw i64 %mul1.i, %conv2.i
  %div.i84 = sdiv i64 %add3.i81, %conv5.i
  %sext = shl i64 %div.i84, 32
  %16 = ashr exact i64 %sext, 32
  %cmp17 = icmp sgt i64 %indvars.iv97, %16
  br i1 %cmp17, label %while.body, label %while.cond.while.end_crit_edge, !llvm.loop !69

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %17 = trunc i64 %indvars.iv.next to i32
  %conv6.i85 = trunc i64 %div.i84 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %k.1.lcssa = phi i32 [ %conv6.i85, %while.cond.while.end_crit_edge ], [ %k.090, %while.cond.preheader ]
  %val.1.lcssa = phi i32 [ %17, %while.cond.while.end_crit_edge ], [ %val.091, %while.cond.preheader ]
  %mul = mul nsw i32 %val.1.lcssa, %div
  %conv = trunc i32 %mul to i8
  %arrayidx21 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv97
  store i8 %conv, ptr %arrayidx21, align 1, !tbaa !27
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next98, 256
  br i1 %exitcond.not, label %for.end, label %while.cond.preheader, !llvm.loop !70

for.end:                                          ; preds = %while.end
  br i1 %cmp, label %for.cond25.preheader, label %for.inc41

for.cond25.preheader:                             ; preds = %for.end
  %arrayidx33 = getelementptr inbounds i8, ptr %12, i64 255
  br label %for.body28

for.body28:                                       ; preds = %for.body28.1, %for.cond25.preheader
  %indvars.iv100 = phi i64 [ 1, %for.cond25.preheader ], [ %indvars.iv.next101.1, %for.body28.1 ]
  %18 = load i8, ptr %12, align 1, !tbaa !27
  %19 = sub nsw i64 0, %indvars.iv100
  %arrayidx32 = getelementptr inbounds i8, ptr %12, i64 %19
  store i8 %18, ptr %arrayidx32, align 1, !tbaa !27
  %20 = load i8, ptr %arrayidx33, align 1, !tbaa !27
  %21 = add nuw nsw i64 %indvars.iv100, 255
  %arrayidx36 = getelementptr inbounds i8, ptr %12, i64 %21
  store i8 %20, ptr %arrayidx36, align 1, !tbaa !27
  %exitcond105.not = icmp eq i64 %indvars.iv100, 255
  br i1 %exitcond105.not, label %for.inc41, label %for.body28.1, !llvm.loop !71

for.body28.1:                                     ; preds = %for.body28
  %22 = load i8, ptr %12, align 1, !tbaa !27
  %23 = xor i64 %indvars.iv100, -1
  %arrayidx32.1 = getelementptr inbounds i8, ptr %12, i64 %23
  store i8 %22, ptr %arrayidx32.1, align 1, !tbaa !27
  %24 = load i8, ptr %arrayidx33, align 1, !tbaa !27
  %25 = add nuw nsw i64 %indvars.iv100, 256
  %arrayidx36.1 = getelementptr inbounds i8, ptr %12, i64 %25
  store i8 %24, ptr %arrayidx36.1, align 1, !tbaa !27
  %indvars.iv.next101.1 = add nuw nsw i64 %indvars.iv100, 2
  br label %for.body28

for.inc41:                                        ; preds = %for.body28, %for.end
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %26 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %27 = sext i32 %26 to i64
  %cmp4 = icmp slt i64 %indvars.iv.next107, %27
  br i1 %cmp4, label %for.body, label %for.end43, !llvm.loop !72

for.end43:                                        ; preds = %for.inc41, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @color_quantize3(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %input_buf, ptr nocapture noundef readonly %output_buf, i32 noundef %num_rows) #2 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %colorindex, align 8, !tbaa !68
  %2 = load ptr, ptr %1, align 8, !tbaa !22
  %arrayidx3 = getelementptr inbounds ptr, ptr %1, i64 1
  %3 = load ptr, ptr %arrayidx3, align 8, !tbaa !22
  %arrayidx6 = getelementptr inbounds ptr, ptr %1, i64 2
  %4 = load ptr, ptr %arrayidx6, align 8, !tbaa !22
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %5 = load i32, ptr %output_width, align 8, !tbaa !54
  %cmp46 = icmp slt i32 %num_rows, 1
  %cmp11.not42 = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp46, i1 true, i1 %cmp11.not42
  br i1 %or.cond, label %for.end30, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num_rows to i64
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %dec.prol = add i32 %5, -1
  %6 = icmp eq i32 %5, 1
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond10.for.inc29_crit_edge
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond10.for.inc29_crit_edge ]
  %arrayidx7 = getelementptr inbounds ptr, ptr %input_buf, i64 %indvars.iv
  %7 = load ptr, ptr %arrayidx7, align 8, !tbaa !22
  %arrayidx9 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv
  %8 = load ptr, ptr %arrayidx9, align 8, !tbaa !22
  br i1 %lcmp.mod.not, label %for.body12.prol.loopexit, label %for.body12.prol

for.body12.prol:                                  ; preds = %for.body
  %incdec.ptr.prol = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !27
  %10 = zext i8 %9 to i64
  %arrayidx14.prol = getelementptr inbounds i8, ptr %2, i64 %10
  %11 = load i8, ptr %arrayidx14.prol, align 1, !tbaa !27
  %incdec.ptr16.prol = getelementptr inbounds i8, ptr %7, i64 2
  %12 = load i8, ptr %incdec.ptr.prol, align 1, !tbaa !27
  %13 = zext i8 %12 to i64
  %arrayidx19.prol = getelementptr inbounds i8, ptr %3, i64 %13
  %14 = load i8, ptr %arrayidx19.prol, align 1, !tbaa !27
  %add.prol = add i8 %14, %11
  %incdec.ptr21.prol = getelementptr inbounds i8, ptr %7, i64 3
  %15 = load i8, ptr %incdec.ptr16.prol, align 1, !tbaa !27
  %16 = zext i8 %15 to i64
  %arrayidx24.prol = getelementptr inbounds i8, ptr %4, i64 %16
  %17 = load i8, ptr %arrayidx24.prol, align 1, !tbaa !27
  %add26.prol = add i8 %add.prol, %17
  %incdec.ptr28.prol = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %add26.prol, ptr %8, align 1, !tbaa !27
  br label %for.body12.prol.loopexit

for.body12.prol.loopexit:                         ; preds = %for.body12.prol, %for.body
  %ptrin.045.unr = phi ptr [ %7, %for.body ], [ %incdec.ptr21.prol, %for.body12.prol ]
  %col.044.unr = phi i32 [ %5, %for.body ], [ %dec.prol, %for.body12.prol ]
  %ptrout.043.unr = phi ptr [ %8, %for.body ], [ %incdec.ptr28.prol, %for.body12.prol ]
  br i1 %6, label %for.cond10.for.inc29_crit_edge, label %for.body12

for.body12:                                       ; preds = %for.body12.prol.loopexit, %for.body12
  %ptrin.045 = phi ptr [ %incdec.ptr21.1, %for.body12 ], [ %ptrin.045.unr, %for.body12.prol.loopexit ]
  %col.044 = phi i32 [ %dec.1, %for.body12 ], [ %col.044.unr, %for.body12.prol.loopexit ]
  %ptrout.043 = phi ptr [ %incdec.ptr28.1, %for.body12 ], [ %ptrout.043.unr, %for.body12.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i8, ptr %ptrin.045, i64 1
  %18 = load i8, ptr %ptrin.045, align 1, !tbaa !27
  %19 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %2, i64 %19
  %20 = load i8, ptr %arrayidx14, align 1, !tbaa !27
  %incdec.ptr16 = getelementptr inbounds i8, ptr %ptrin.045, i64 2
  %21 = load i8, ptr %incdec.ptr, align 1, !tbaa !27
  %22 = zext i8 %21 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %3, i64 %22
  %23 = load i8, ptr %arrayidx19, align 1, !tbaa !27
  %add = add i8 %23, %20
  %incdec.ptr21 = getelementptr inbounds i8, ptr %ptrin.045, i64 3
  %24 = load i8, ptr %incdec.ptr16, align 1, !tbaa !27
  %25 = zext i8 %24 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %4, i64 %25
  %26 = load i8, ptr %arrayidx24, align 1, !tbaa !27
  %add26 = add i8 %add, %26
  %incdec.ptr28 = getelementptr inbounds i8, ptr %ptrout.043, i64 1
  store i8 %add26, ptr %ptrout.043, align 1, !tbaa !27
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %ptrin.045, i64 4
  %27 = load i8, ptr %incdec.ptr21, align 1, !tbaa !27
  %28 = zext i8 %27 to i64
  %arrayidx14.1 = getelementptr inbounds i8, ptr %2, i64 %28
  %29 = load i8, ptr %arrayidx14.1, align 1, !tbaa !27
  %incdec.ptr16.1 = getelementptr inbounds i8, ptr %ptrin.045, i64 5
  %30 = load i8, ptr %incdec.ptr.1, align 1, !tbaa !27
  %31 = zext i8 %30 to i64
  %arrayidx19.1 = getelementptr inbounds i8, ptr %3, i64 %31
  %32 = load i8, ptr %arrayidx19.1, align 1, !tbaa !27
  %add.1 = add i8 %32, %29
  %incdec.ptr21.1 = getelementptr inbounds i8, ptr %ptrin.045, i64 6
  %33 = load i8, ptr %incdec.ptr16.1, align 1, !tbaa !27
  %34 = zext i8 %33 to i64
  %arrayidx24.1 = getelementptr inbounds i8, ptr %4, i64 %34
  %35 = load i8, ptr %arrayidx24.1, align 1, !tbaa !27
  %add26.1 = add i8 %add.1, %35
  %incdec.ptr28.1 = getelementptr inbounds i8, ptr %ptrout.043, i64 2
  store i8 %add26.1, ptr %incdec.ptr28, align 1, !tbaa !27
  %dec.1 = add i32 %col.044, -2
  %cmp11.not.1 = icmp eq i32 %dec.1, 0
  br i1 %cmp11.not.1, label %for.cond10.for.inc29_crit_edge, label %for.body12, !llvm.loop !73

for.cond10.for.inc29_crit_edge:                   ; preds = %for.body12, %for.body12.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end30, label %for.body, !llvm.loop !74

for.end30:                                        ; preds = %for.cond10.for.inc29_crit_edge, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @color_quantize(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %input_buf, ptr nocapture noundef readonly %output_buf, i32 noundef %num_rows) #2 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %colorindex2, align 8, !tbaa !68
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8, !tbaa !54
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %3 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %cmp41 = icmp slt i32 %num_rows, 1
  %cmp6.not37 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp41, i1 true, i1 %cmp6.not37
  br i1 %or.cond, label %for.end22, label %for.body.lr.ph.split

for.body.lr.ph.split:                             ; preds = %entry
  %cmp932 = icmp sgt i32 %3, 0
  br i1 %cmp932, label %for.body.us43.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph.split
  %4 = zext i32 %2 to i64
  %wide.trip.count = zext i32 %num_rows to i64
  %5 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 7
  %6 = icmp ult i64 %5, 7
  br i1 %6, label %for.end22.loopexit64.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %for.body

for.body.us43.preheader:                          ; preds = %for.body.lr.ph.split
  %7 = add nsw i32 %3, -1
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %8, 1
  %wide.trip.count60 = zext i32 %num_rows to i64
  %wide.trip.count55 = zext i32 %3 to i64
  %10 = add nsw i64 %wide.trip.count55, -1
  %xtraiter65 = and i64 %wide.trip.count55, 3
  %11 = icmp ult i64 %10, 3
  %unroll_iter69 = and i64 %wide.trip.count55, 4294967292
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br label %for.body.us43

for.body.us43:                                    ; preds = %for.body.us43.preheader, %for.cond5.for.inc20_crit_edge.split.us.us
  %indvars.iv57 = phi i64 [ 0, %for.body.us43.preheader ], [ %indvars.iv.next58, %for.cond5.for.inc20_crit_edge.split.us.us ]
  %arrayidx.us46 = getelementptr inbounds ptr, ptr %input_buf, i64 %indvars.iv57
  %12 = load ptr, ptr %arrayidx.us46, align 8, !tbaa !22
  %arrayidx4.us47 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv57
  %13 = load ptr, ptr %arrayidx4.us47, align 8, !tbaa !22
  br label %for.cond8.preheader.us.us

for.cond8.preheader.us.us:                        ; preds = %for.cond8.for.end_crit_edge.us.us, %for.body.us43
  %col.040.us.us = phi i32 [ %2, %for.body.us43 ], [ %dec.us.us, %for.cond8.for.end_crit_edge.us.us ]
  %ptrout.039.us.us = phi ptr [ %13, %for.body.us43 ], [ %incdec.ptr17.us.us, %for.cond8.for.end_crit_edge.us.us ]
  %ptrin.038.us.us = phi ptr [ %12, %for.body.us43 ], [ %uglygep, %for.cond8.for.end_crit_edge.us.us ]
  br i1 %11, label %for.cond8.for.end_crit_edge.us.us.unr-lcssa, label %for.body10.us.us

for.body10.us.us:                                 ; preds = %for.cond8.preheader.us.us, %for.body10.us.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.3, %for.body10.us.us ], [ 0, %for.cond8.preheader.us.us ]
  %pixcode.035.us.us = phi i8 [ %add.us.us.3, %for.body10.us.us ], [ 0, %for.cond8.preheader.us.us ]
  %ptrin.133.us.us = phi ptr [ %incdec.ptr.us.us.3, %for.body10.us.us ], [ %ptrin.038.us.us, %for.cond8.preheader.us.us ]
  %niter70 = phi i64 [ %niter70.next.3, %for.body10.us.us ], [ 0, %for.cond8.preheader.us.us ]
  %arrayidx12.us.us = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv53
  %14 = load ptr, ptr %arrayidx12.us.us, align 8, !tbaa !22
  %incdec.ptr.us.us = getelementptr inbounds i8, ptr %ptrin.133.us.us, i64 1
  %15 = load i8, ptr %ptrin.133.us.us, align 1, !tbaa !27
  %16 = zext i8 %15 to i64
  %arrayidx14.us.us = getelementptr inbounds i8, ptr %14, i64 %16
  %17 = load i8, ptr %arrayidx14.us.us, align 1, !tbaa !27
  %add.us.us = add i8 %17, %pixcode.035.us.us
  %indvars.iv.next54 = or i64 %indvars.iv53, 1
  %arrayidx12.us.us.1 = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.next54
  %18 = load ptr, ptr %arrayidx12.us.us.1, align 8, !tbaa !22
  %incdec.ptr.us.us.1 = getelementptr inbounds i8, ptr %ptrin.133.us.us, i64 2
  %19 = load i8, ptr %incdec.ptr.us.us, align 1, !tbaa !27
  %20 = zext i8 %19 to i64
  %arrayidx14.us.us.1 = getelementptr inbounds i8, ptr %18, i64 %20
  %21 = load i8, ptr %arrayidx14.us.us.1, align 1, !tbaa !27
  %add.us.us.1 = add i8 %21, %add.us.us
  %indvars.iv.next54.1 = or i64 %indvars.iv53, 2
  %arrayidx12.us.us.2 = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.next54.1
  %22 = load ptr, ptr %arrayidx12.us.us.2, align 8, !tbaa !22
  %incdec.ptr.us.us.2 = getelementptr inbounds i8, ptr %ptrin.133.us.us, i64 3
  %23 = load i8, ptr %incdec.ptr.us.us.1, align 1, !tbaa !27
  %24 = zext i8 %23 to i64
  %arrayidx14.us.us.2 = getelementptr inbounds i8, ptr %22, i64 %24
  %25 = load i8, ptr %arrayidx14.us.us.2, align 1, !tbaa !27
  %add.us.us.2 = add i8 %25, %add.us.us.1
  %indvars.iv.next54.2 = or i64 %indvars.iv53, 3
  %arrayidx12.us.us.3 = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.next54.2
  %26 = load ptr, ptr %arrayidx12.us.us.3, align 8, !tbaa !22
  %incdec.ptr.us.us.3 = getelementptr inbounds i8, ptr %ptrin.133.us.us, i64 4
  %27 = load i8, ptr %incdec.ptr.us.us.2, align 1, !tbaa !27
  %28 = zext i8 %27 to i64
  %arrayidx14.us.us.3 = getelementptr inbounds i8, ptr %26, i64 %28
  %29 = load i8, ptr %arrayidx14.us.us.3, align 1, !tbaa !27
  %add.us.us.3 = add i8 %29, %add.us.us.2
  %indvars.iv.next54.3 = add nuw nsw i64 %indvars.iv53, 4
  %niter70.next.3 = add i64 %niter70, 4
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %for.cond8.for.end_crit_edge.us.us.unr-lcssa, label %for.body10.us.us, !llvm.loop !75

for.cond8.for.end_crit_edge.us.us.unr-lcssa:      ; preds = %for.body10.us.us, %for.cond8.preheader.us.us
  %add.us.us.lcssa.ph = phi i8 [ undef, %for.cond8.preheader.us.us ], [ %add.us.us.3, %for.body10.us.us ]
  %indvars.iv53.unr = phi i64 [ 0, %for.cond8.preheader.us.us ], [ %indvars.iv.next54.3, %for.body10.us.us ]
  %pixcode.035.us.us.unr = phi i8 [ 0, %for.cond8.preheader.us.us ], [ %add.us.us.3, %for.body10.us.us ]
  %ptrin.133.us.us.unr = phi ptr [ %ptrin.038.us.us, %for.cond8.preheader.us.us ], [ %incdec.ptr.us.us.3, %for.body10.us.us ]
  br i1 %lcmp.mod67.not, label %for.cond8.for.end_crit_edge.us.us, label %for.body10.us.us.epil

for.body10.us.us.epil:                            ; preds = %for.cond8.for.end_crit_edge.us.us.unr-lcssa, %for.body10.us.us.epil
  %indvars.iv53.epil = phi i64 [ %indvars.iv.next54.epil, %for.body10.us.us.epil ], [ %indvars.iv53.unr, %for.cond8.for.end_crit_edge.us.us.unr-lcssa ]
  %pixcode.035.us.us.epil = phi i8 [ %add.us.us.epil, %for.body10.us.us.epil ], [ %pixcode.035.us.us.unr, %for.cond8.for.end_crit_edge.us.us.unr-lcssa ]
  %ptrin.133.us.us.epil = phi ptr [ %incdec.ptr.us.us.epil, %for.body10.us.us.epil ], [ %ptrin.133.us.us.unr, %for.cond8.for.end_crit_edge.us.us.unr-lcssa ]
  %epil.iter66 = phi i64 [ %epil.iter66.next, %for.body10.us.us.epil ], [ 0, %for.cond8.for.end_crit_edge.us.us.unr-lcssa ]
  %arrayidx12.us.us.epil = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv53.epil
  %30 = load ptr, ptr %arrayidx12.us.us.epil, align 8, !tbaa !22
  %incdec.ptr.us.us.epil = getelementptr inbounds i8, ptr %ptrin.133.us.us.epil, i64 1
  %31 = load i8, ptr %ptrin.133.us.us.epil, align 1, !tbaa !27
  %32 = zext i8 %31 to i64
  %arrayidx14.us.us.epil = getelementptr inbounds i8, ptr %30, i64 %32
  %33 = load i8, ptr %arrayidx14.us.us.epil, align 1, !tbaa !27
  %add.us.us.epil = add i8 %33, %pixcode.035.us.us.epil
  %indvars.iv.next54.epil = add nuw nsw i64 %indvars.iv53.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %for.cond8.for.end_crit_edge.us.us, label %for.body10.us.us.epil, !llvm.loop !76

for.cond8.for.end_crit_edge.us.us:                ; preds = %for.body10.us.us.epil, %for.cond8.for.end_crit_edge.us.us.unr-lcssa
  %add.us.us.lcssa = phi i8 [ %add.us.us.lcssa.ph, %for.cond8.for.end_crit_edge.us.us.unr-lcssa ], [ %add.us.us.epil, %for.body10.us.us.epil ]
  %uglygep = getelementptr i8, ptr %ptrin.038.us.us, i64 %9
  %incdec.ptr17.us.us = getelementptr inbounds i8, ptr %ptrout.039.us.us, i64 1
  store i8 %add.us.us.lcssa, ptr %ptrout.039.us.us, align 1, !tbaa !27
  %dec.us.us = add i32 %col.040.us.us, -1
  %cmp6.not.us.us = icmp eq i32 %dec.us.us, 0
  br i1 %cmp6.not.us.us, label %for.cond5.for.inc20_crit_edge.split.us.us, label %for.cond8.preheader.us.us, !llvm.loop !77

for.cond5.for.inc20_crit_edge.split.us.us:        ; preds = %for.cond8.for.end_crit_edge.us.us
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %for.end22, label %for.body.us43, !llvm.loop !78

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.7, %for.body ]
  %arrayidx4 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv
  %34 = load ptr, ptr %arrayidx4, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %34, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx4.1 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next
  %35 = load ptr, ptr %arrayidx4.1, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx4.2 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next.1
  %36 = load ptr, ptr %arrayidx4.2, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx4.3 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next.2
  %37 = load ptr, ptr %arrayidx4.3, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %37, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.3 = or i64 %indvars.iv, 4
  %arrayidx4.4 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next.3
  %38 = load ptr, ptr %arrayidx4.4, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %38, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.4 = or i64 %indvars.iv, 5
  %arrayidx4.5 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next.4
  %39 = load ptr, ptr %arrayidx4.5, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %39, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.5 = or i64 %indvars.iv, 6
  %arrayidx4.6 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next.5
  %40 = load ptr, ptr %arrayidx4.6, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %40, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.6 = or i64 %indvars.iv, 7
  %arrayidx4.7 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.next.6
  %41 = load ptr, ptr %arrayidx4.7, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %41, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.end22.loopexit64.unr-lcssa, label %for.body, !llvm.loop !78

for.end22.loopexit64.unr-lcssa:                   ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end22, label %for.body.epil

for.body.epil:                                    ; preds = %for.end22.loopexit64.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end22.loopexit64.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end22.loopexit64.unr-lcssa ]
  %arrayidx4.epil = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv.epil
  %42 = load ptr, ptr %arrayidx4.epil, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %42, i8 0, i64 %4, i1 false), !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end22, label %for.body.epil, !llvm.loop !79

for.end22:                                        ; preds = %for.end22.loopexit64.unr-lcssa, %for.body.epil, %for.cond5.for.inc20_crit_edge.split.us.us, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @quantize3_ord_dither(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %input_buf, ptr nocapture noundef readonly %output_buf, i32 noundef %num_rows) #2 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %colorindex, align 8, !tbaa !68
  %2 = load ptr, ptr %1, align 8, !tbaa !22
  %arrayidx3 = getelementptr inbounds ptr, ptr %1, i64 1
  %3 = load ptr, ptr %arrayidx3, align 8, !tbaa !22
  %arrayidx6 = getelementptr inbounds ptr, ptr %1, i64 2
  %4 = load ptr, ptr %arrayidx6, align 8, !tbaa !22
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %5 = load i32, ptr %output_width, align 8, !tbaa !54
  %cmp86 = icmp sgt i32 %num_rows, 0
  br i1 %cmp86, label %for.body.lr.ph, label %for.end57

for.body.lr.ph:                                   ; preds = %entry
  %row_index7 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 6
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 7
  %arrayidx15 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 7, i64 1
  %arrayidx20 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 7, i64 2
  %cmp25.not81 = icmp eq i32 %5, 0
  br i1 %cmp25.not81, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext i32 %num_rows to i64
  %.pre = load i32, ptr %row_index7, align 4, !tbaa !60
  br label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %row_index7.promoted = load i32, ptr %row_index7, align 4, !tbaa !60
  %6 = add i32 %num_rows, -1
  %xtraiter = and i32 %num_rows, 7
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %for.cond.for.end57_crit_edge.split.us.unr-lcssa, label %for.body.lr.ph.split.us.new

for.body.lr.ph.split.us.new:                      ; preds = %for.body.lr.ph.split.us
  %unroll_iter = and i32 %num_rows, -8
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us, %for.body.lr.ph.split.us.new
  %and54.us88 = phi i32 [ %row_index7.promoted, %for.body.lr.ph.split.us.new ], [ %and54.us.7, %for.body.us ]
  %niter = phi i32 [ 0, %for.body.lr.ph.split.us.new ], [ %niter.next.7, %for.body.us ]
  %add53.us.7 = add i32 %and54.us88, 8
  %and54.us.7 = and i32 %add53.us.7, 15
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond.for.end57_crit_edge.split.us.unr-lcssa, label %for.body.us, !llvm.loop !80

for.cond.for.end57_crit_edge.split.us.unr-lcssa:  ; preds = %for.body.us, %for.body.lr.ph.split.us
  %and54.us.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.split.us ], [ %and54.us.7, %for.body.us ]
  %and54.us88.unr = phi i32 [ %row_index7.promoted, %for.body.lr.ph.split.us ], [ %and54.us.7, %for.body.us ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.for.end57_crit_edge.split.us, label %for.body.us.epil

for.body.us.epil:                                 ; preds = %for.cond.for.end57_crit_edge.split.us.unr-lcssa, %for.body.us.epil
  %and54.us88.epil = phi i32 [ %and54.us.epil, %for.body.us.epil ], [ %and54.us88.unr, %for.cond.for.end57_crit_edge.split.us.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.us.epil ], [ 0, %for.cond.for.end57_crit_edge.split.us.unr-lcssa ]
  %add53.us.epil = add nsw i32 %and54.us88.epil, 1
  %and54.us.epil = and i32 %add53.us.epil, 15
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.for.end57_crit_edge.split.us, label %for.body.us.epil, !llvm.loop !81

for.cond.for.end57_crit_edge.split.us:            ; preds = %for.body.us.epil, %for.cond.for.end57_crit_edge.split.us.unr-lcssa
  %and54.us.lcssa = phi i32 [ %and54.us.lcssa.ph, %for.cond.for.end57_crit_edge.split.us.unr-lcssa ], [ %and54.us.epil, %for.body.us.epil ]
  store i32 %and54.us.lcssa, ptr %row_index7, align 4, !tbaa !60
  br label %for.end57

for.body:                                         ; preds = %for.body.preheader, %for.cond24.for.end_crit_edge
  %8 = phi i32 [ %.pre, %for.body.preheader ], [ %and54, %for.cond24.for.end_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond24.for.end_crit_edge ]
  %arrayidx8 = getelementptr inbounds ptr, ptr %input_buf, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx8, align 8, !tbaa !22
  %arrayidx10 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv
  %10 = load ptr, ptr %arrayidx10, align 8, !tbaa !22
  %11 = load ptr, ptr %odither, align 8, !tbaa !22
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %11, i64 %idxprom12
  %12 = load ptr, ptr %arrayidx15, align 8, !tbaa !22
  %arrayidx17 = getelementptr inbounds [16 x i32], ptr %12, i64 %idxprom12
  %13 = load ptr, ptr %arrayidx20, align 8, !tbaa !22
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %13, i64 %idxprom12
  br label %for.body26

for.body26:                                       ; preds = %for.body, %for.body26
  %input_ptr.085 = phi ptr [ %9, %for.body ], [ %incdec.ptr41, %for.body26 ]
  %col.084 = phi i32 [ %5, %for.body ], [ %dec, %for.body26 ]
  %col_index.083 = phi i32 [ 0, %for.body ], [ %and, %for.body26 ]
  %output_ptr.082 = phi ptr [ %10, %for.body ], [ %incdec.ptr51, %for.body26 ]
  %incdec.ptr = getelementptr inbounds i8, ptr %input_ptr.085, i64 1
  %14 = load i8, ptr %input_ptr.085, align 1, !tbaa !27
  %conv = zext i8 %14 to i32
  %idxprom27 = zext i32 %col_index.083 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %arrayidx13, i64 %idxprom27
  %15 = load i32, ptr %arrayidx28, align 4, !tbaa !35
  %add = add nsw i32 %15, %conv
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %2, i64 %idxprom29
  %16 = load i8, ptr %arrayidx30, align 1, !tbaa !27
  %incdec.ptr32 = getelementptr inbounds i8, ptr %input_ptr.085, i64 2
  %17 = load i8, ptr %incdec.ptr, align 1, !tbaa !27
  %conv33 = zext i8 %17 to i32
  %arrayidx35 = getelementptr inbounds i32, ptr %arrayidx17, i64 %idxprom27
  %18 = load i32, ptr %arrayidx35, align 4, !tbaa !35
  %add36 = add nsw i32 %18, %conv33
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %3, i64 %idxprom37
  %19 = load i8, ptr %arrayidx38, align 1, !tbaa !27
  %add40 = add i8 %19, %16
  %incdec.ptr41 = getelementptr inbounds i8, ptr %input_ptr.085, i64 3
  %20 = load i8, ptr %incdec.ptr32, align 1, !tbaa !27
  %conv42 = zext i8 %20 to i32
  %arrayidx44 = getelementptr inbounds i32, ptr %arrayidx22, i64 %idxprom27
  %21 = load i32, ptr %arrayidx44, align 4, !tbaa !35
  %add45 = add nsw i32 %21, %conv42
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %4, i64 %idxprom46
  %22 = load i8, ptr %arrayidx47, align 1, !tbaa !27
  %add49 = add i8 %add40, %22
  %incdec.ptr51 = getelementptr inbounds i8, ptr %output_ptr.082, i64 1
  store i8 %add49, ptr %output_ptr.082, align 1, !tbaa !27
  %add52 = add nuw nsw i32 %col_index.083, 1
  %and = and i32 %add52, 15
  %dec = add i32 %col.084, -1
  %cmp25.not = icmp eq i32 %dec, 0
  br i1 %cmp25.not, label %for.cond24.for.end_crit_edge, label %for.body26, !llvm.loop !82

for.cond24.for.end_crit_edge:                     ; preds = %for.body26
  %add53 = add nsw i32 %8, 1
  %and54 = and i32 %add53, 15
  store i32 %and54, ptr %row_index7, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end57, label %for.body, !llvm.loop !80

for.end57:                                        ; preds = %for.cond24.for.end_crit_edge, %for.cond.for.end57_crit_edge.split.us, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %input_buf, ptr nocapture noundef readonly %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %1 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8, !tbaa !54
  %cmp70 = icmp sgt i32 %num_rows, 0
  br i1 %cmp70, label %for.body.lr.ph, label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %2 to i64
  %row_index2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 6
  %cmp468 = icmp sgt i32 %1, 0
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %idx.ext30 = sext i32 %1 to i64
  br i1 %cmp468, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext i32 %num_rows to i64
  br label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %cmp18.not63 = icmp eq i32 %2, 0
  %wide.trip.count94 = zext i32 %num_rows to i64
  br i1 %cmp18.not63, label %for.body.us.us, label %for.body.us.preheader

for.body.us.preheader:                            ; preds = %for.body.lr.ph.split.us
  %wide.trip.count84 = zext i32 %1 to i64
  %xtraiter = and i32 %2, 1
  %3 = icmp eq i32 %2, 1
  %unroll_iter = and i32 %2, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %for.body.us

for.body.us.us:                                   ; preds = %for.body.lr.ph.split.us, %for.body.us.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body.us.us ], [ 0, %for.body.lr.ph.split.us ]
  %arrayidx.us.us = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv91
  %4 = load ptr, ptr %arrayidx.us.us, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %4, i64 noundef %conv) #7
  %5 = load i32, ptr %row_index2, align 4, !tbaa !60
  %add35.us.us = add nsw i32 %5, 1
  %and36.us.us = and i32 %add35.us.us, 15
  store i32 %and36.us.us, ptr %row_index2, align 4, !tbaa !60
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %for.end40, label %for.body.us.us, !llvm.loop !83

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond3.for.end34_crit_edge.split.us76
  %indvars.iv86 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next87, %for.cond3.for.end34_crit_edge.split.us76 ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv86
  %6 = load ptr, ptr %arrayidx.us, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %6, i64 noundef %conv) #7
  %7 = load i32, ptr %row_index2, align 4, !tbaa !60
  %arrayidx8.us = getelementptr inbounds ptr, ptr %input_buf, i64 %indvars.iv86
  %idxprom15.us = sext i32 %7 to i64
  br label %for.body6.us72

for.body6.us72:                                   ; preds = %for.body.us, %for.cond17.for.inc33_crit_edge.us
  %indvars.iv81 = phi i64 [ 0, %for.body.us ], [ %indvars.iv.next82, %for.cond17.for.inc33_crit_edge.us ]
  %8 = load ptr, ptr %arrayidx8.us, align 8, !tbaa !22
  %add.ptr.us = getelementptr inbounds i8, ptr %8, i64 %indvars.iv81
  %9 = load ptr, ptr %arrayidx.us, align 8, !tbaa !22
  %10 = load ptr, ptr %colorindex, align 8, !tbaa !68
  %arrayidx12.us = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv81
  %11 = load ptr, ptr %arrayidx12.us, align 8, !tbaa !22
  %arrayidx14.us = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 7, i64 %indvars.iv81
  %12 = load ptr, ptr %arrayidx14.us, align 8, !tbaa !22
  %arrayidx16.us = getelementptr inbounds [16 x i32], ptr %12, i64 %idxprom15.us
  br i1 %3, label %for.cond17.for.inc33_crit_edge.us.unr-lcssa, label %for.body20.us

for.body20.us:                                    ; preds = %for.body6.us72, %for.body20.us
  %input_ptr.067.us = phi ptr [ %add.ptr31.us.1, %for.body20.us ], [ %add.ptr.us, %for.body6.us72 ]
  %output_ptr.065.us = phi ptr [ %incdec.ptr.us.1, %for.body20.us ], [ %9, %for.body6.us72 ]
  %col_index.064.us = phi i32 [ %and.us.1, %for.body20.us ], [ 0, %for.body6.us72 ]
  %niter = phi i32 [ %niter.next.1, %for.body20.us ], [ 0, %for.body6.us72 ]
  %13 = load i8, ptr %input_ptr.067.us, align 1, !tbaa !27
  %conv21.us = zext i8 %13 to i32
  %idxprom22.us = zext i32 %col_index.064.us to i64
  %arrayidx23.us = getelementptr inbounds i32, ptr %arrayidx16.us, i64 %idxprom22.us
  %14 = load i32, ptr %arrayidx23.us, align 4, !tbaa !35
  %add.us = add nsw i32 %14, %conv21.us
  %idxprom24.us = sext i32 %add.us to i64
  %arrayidx25.us = getelementptr inbounds i8, ptr %11, i64 %idxprom24.us
  %15 = load i8, ptr %arrayidx25.us, align 1, !tbaa !27
  %16 = load i8, ptr %output_ptr.065.us, align 1, !tbaa !27
  %add28.us = add i8 %16, %15
  store i8 %add28.us, ptr %output_ptr.065.us, align 1, !tbaa !27
  %add.ptr31.us = getelementptr inbounds i8, ptr %input_ptr.067.us, i64 %idx.ext30
  %incdec.ptr.us = getelementptr inbounds i8, ptr %output_ptr.065.us, i64 1
  %add32.us = add nuw nsw i32 %col_index.064.us, 1
  %and.us = and i32 %add32.us, 15
  %17 = load i8, ptr %add.ptr31.us, align 1, !tbaa !27
  %conv21.us.1 = zext i8 %17 to i32
  %idxprom22.us.1 = zext i32 %and.us to i64
  %arrayidx23.us.1 = getelementptr inbounds i32, ptr %arrayidx16.us, i64 %idxprom22.us.1
  %18 = load i32, ptr %arrayidx23.us.1, align 4, !tbaa !35
  %add.us.1 = add nsw i32 %18, %conv21.us.1
  %idxprom24.us.1 = sext i32 %add.us.1 to i64
  %arrayidx25.us.1 = getelementptr inbounds i8, ptr %11, i64 %idxprom24.us.1
  %19 = load i8, ptr %arrayidx25.us.1, align 1, !tbaa !27
  %20 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !27
  %add28.us.1 = add i8 %20, %19
  store i8 %add28.us.1, ptr %incdec.ptr.us, align 1, !tbaa !27
  %add.ptr31.us.1 = getelementptr inbounds i8, ptr %add.ptr31.us, i64 %idx.ext30
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %output_ptr.065.us, i64 2
  %add32.us.1 = add nuw nsw i32 %col_index.064.us, 2
  %and.us.1 = and i32 %add32.us.1, 15
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond17.for.inc33_crit_edge.us.unr-lcssa, label %for.body20.us, !llvm.loop !84

for.cond17.for.inc33_crit_edge.us.unr-lcssa:      ; preds = %for.body20.us, %for.body6.us72
  %input_ptr.067.us.unr = phi ptr [ %add.ptr.us, %for.body6.us72 ], [ %add.ptr31.us.1, %for.body20.us ]
  %output_ptr.065.us.unr = phi ptr [ %9, %for.body6.us72 ], [ %incdec.ptr.us.1, %for.body20.us ]
  %col_index.064.us.unr = phi i32 [ 0, %for.body6.us72 ], [ %and.us.1, %for.body20.us ]
  br i1 %lcmp.mod.not, label %for.cond17.for.inc33_crit_edge.us, label %for.body20.us.epil

for.body20.us.epil:                               ; preds = %for.cond17.for.inc33_crit_edge.us.unr-lcssa
  %21 = load i8, ptr %input_ptr.067.us.unr, align 1, !tbaa !27
  %conv21.us.epil = zext i8 %21 to i32
  %idxprom22.us.epil = zext i32 %col_index.064.us.unr to i64
  %arrayidx23.us.epil = getelementptr inbounds i32, ptr %arrayidx16.us, i64 %idxprom22.us.epil
  %22 = load i32, ptr %arrayidx23.us.epil, align 4, !tbaa !35
  %add.us.epil = add nsw i32 %22, %conv21.us.epil
  %idxprom24.us.epil = sext i32 %add.us.epil to i64
  %arrayidx25.us.epil = getelementptr inbounds i8, ptr %11, i64 %idxprom24.us.epil
  %23 = load i8, ptr %arrayidx25.us.epil, align 1, !tbaa !27
  %24 = load i8, ptr %output_ptr.065.us.unr, align 1, !tbaa !27
  %add28.us.epil = add i8 %24, %23
  store i8 %add28.us.epil, ptr %output_ptr.065.us.unr, align 1, !tbaa !27
  br label %for.cond17.for.inc33_crit_edge.us

for.cond17.for.inc33_crit_edge.us:                ; preds = %for.cond17.for.inc33_crit_edge.us.unr-lcssa, %for.body20.us.epil
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %for.cond3.for.end34_crit_edge.split.us76, label %for.body6.us72, !llvm.loop !85

for.cond3.for.end34_crit_edge.split.us76:         ; preds = %for.cond17.for.inc33_crit_edge.us
  %add35.us = add nsw i32 %7, 1
  %and36.us = and i32 %add35.us, 15
  store i32 %and36.us, ptr %row_index2, align 4, !tbaa !60
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count94
  br i1 %exitcond90.not, label %for.end40, label %for.body.us, !llvm.loop !83

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv
  %25 = load ptr, ptr %arrayidx, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %25, i64 noundef %conv) #7
  %26 = load i32, ptr %row_index2, align 4, !tbaa !60
  %add35 = add nsw i32 %26, 1
  %and36 = and i32 %add35, 15
  store i32 %and36, ptr %row_index2, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end40, label %for.body, !llvm.loop !83

for.end40:                                        ; preds = %for.body, %for.cond3.for.end34_crit_edge.split.us76, %for.body.us.us, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %input_buf, ptr nocapture noundef readonly %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %1 = load i32, ptr %out_color_components, align 8, !tbaa !23
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8, !tbaa !54
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 61
  %3 = load ptr, ptr %sample_range_limit, align 8, !tbaa !86
  %cmp141 = icmp sgt i32 %num_rows, 0
  br i1 %cmp141, label %for.body.lr.ph, label %for.end77

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %2 to i64
  %cmp3139 = icmp sgt i32 %1, 0
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 9
  %sub = add i32 %2, -1
  %mul10 = mul i32 %sub, %1
  %idx.ext11 = zext i32 %mul10 to i64
  %idx.ext14 = zext i32 %sub to i64
  %sub16 = sub nsw i32 0, %1
  %add = add i32 %2, 1
  %idx.ext19 = zext i32 %add to i64
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 1
  br i1 %cmp3139, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext i32 %num_rows to i64
  br label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %cmp29.not130 = icmp eq i32 %2, 0
  %wide.trip.count187 = zext i32 %num_rows to i64
  %wide.trip.count177 = zext i32 %1 to i64
  br i1 %cmp29.not130, label %for.body.us.us.preheader, label %for.body.us

for.body.us.us.preheader:                         ; preds = %for.body.lr.ph.split.us
  %4 = add nsw i64 %wide.trip.count177, -1
  %xtraiter = and i64 %wide.trip.count177, 3
  %5 = icmp ult i64 %4, 3
  %unroll_iter = and i64 %wide.trip.count177, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter198 = and i64 %wide.trip.count177, 7
  %6 = icmp ult i64 %4, 7
  %unroll_iter201 = and i64 %wide.trip.count177, 4294967288
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond2.for.end71_crit_edge.split.us.us.us
  %indvars.iv184 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next185, %for.cond2.for.end71_crit_edge.split.us.us.us ]
  %arrayidx.us.us = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv184
  %7 = load ptr, ptr %arrayidx.us.us, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %7, i64 noundef %conv) #7
  %8 = load i32, ptr %on_odd_row, align 8, !tbaa !66
  %tobool.not.us.us.us = icmp eq i32 %8, 0
  br i1 %tobool.not.us.us.us, label %for.body5.us.us.us.us.preheader, label %for.body5.us.us153.us.preheader

for.body5.us.us153.us.preheader:                  ; preds = %for.body.us.us
  br i1 %5, label %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa, label %for.body5.us.us153.us

for.body5.us.us.us.us.preheader:                  ; preds = %for.body.us.us
  br i1 %6, label %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa, label %for.body5.us.us.us.us

for.body5.us.us153.us:                            ; preds = %for.body5.us.us153.us.preheader, %for.body5.us.us153.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.3, %for.body5.us.us153.us ], [ 0, %for.body5.us.us153.us.preheader ]
  %niter = phi i64 [ %niter.next.3, %for.body5.us.us153.us ], [ 0, %for.body5.us.us153.us.preheader ]
  %arrayidx18.us.us.us = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv174
  %9 = load ptr, ptr %arrayidx18.us.us.us, align 8, !tbaa !22
  %add.ptr20.us.us.us = getelementptr inbounds i16, ptr %9, i64 %idx.ext19
  store i16 0, ptr %add.ptr20.us.us.us, align 2, !tbaa !87
  %indvars.iv.next175 = or i64 %indvars.iv174, 1
  %arrayidx18.us.us.us.1 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next175
  %10 = load ptr, ptr %arrayidx18.us.us.us.1, align 8, !tbaa !22
  %add.ptr20.us.us.us.1 = getelementptr inbounds i16, ptr %10, i64 %idx.ext19
  store i16 0, ptr %add.ptr20.us.us.us.1, align 2, !tbaa !87
  %indvars.iv.next175.1 = or i64 %indvars.iv174, 2
  %arrayidx18.us.us.us.2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next175.1
  %11 = load ptr, ptr %arrayidx18.us.us.us.2, align 8, !tbaa !22
  %add.ptr20.us.us.us.2 = getelementptr inbounds i16, ptr %11, i64 %idx.ext19
  store i16 0, ptr %add.ptr20.us.us.us.2, align 2, !tbaa !87
  %indvars.iv.next175.2 = or i64 %indvars.iv174, 3
  %arrayidx18.us.us.us.3 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next175.2
  %12 = load ptr, ptr %arrayidx18.us.us.us.3, align 8, !tbaa !22
  %add.ptr20.us.us.us.3 = getelementptr inbounds i16, ptr %12, i64 %idx.ext19
  store i16 0, ptr %add.ptr20.us.us.us.3, align 2, !tbaa !87
  %indvars.iv.next175.3 = add nuw nsw i64 %indvars.iv174, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa, label %for.body5.us.us153.us, !llvm.loop !88

for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa: ; preds = %for.body5.us.us.us.us, %for.body5.us.us.us.us.preheader
  %indvars.iv179.unr = phi i64 [ 0, %for.body5.us.us.us.us.preheader ], [ %indvars.iv.next180.7, %for.body5.us.us.us.us ]
  br i1 %lcmp.mod200.not, label %for.cond2.for.end71_crit_edge.split.us.us.us, label %for.body5.us.us.us.us.epil

for.body5.us.us.us.us.epil:                       ; preds = %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa, %for.body5.us.us.us.us.epil
  %indvars.iv179.epil = phi i64 [ %indvars.iv.next180.epil, %for.body5.us.us.us.us.epil ], [ %indvars.iv179.unr, %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa ]
  %epil.iter199 = phi i64 [ %epil.iter199.next, %for.body5.us.us.us.us.epil ], [ 0, %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa ]
  %arrayidx23.us.us.us.us.epil = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv179.epil
  %13 = load ptr, ptr %arrayidx23.us.us.us.us.epil, align 8, !tbaa !22
  store i16 0, ptr %13, align 2, !tbaa !87
  %indvars.iv.next180.epil = add nuw nsw i64 %indvars.iv179.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %for.cond2.for.end71_crit_edge.split.us.us.us, label %for.body5.us.us.us.us.epil, !llvm.loop !89

for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa: ; preds = %for.body5.us.us153.us, %for.body5.us.us153.us.preheader
  %indvars.iv174.unr = phi i64 [ 0, %for.body5.us.us153.us.preheader ], [ %indvars.iv.next175.3, %for.body5.us.us153.us ]
  br i1 %lcmp.mod.not, label %for.cond2.for.end71_crit_edge.split.us.us.us, label %for.body5.us.us153.us.epil

for.body5.us.us153.us.epil:                       ; preds = %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa, %for.body5.us.us153.us.epil
  %indvars.iv174.epil = phi i64 [ %indvars.iv.next175.epil, %for.body5.us.us153.us.epil ], [ %indvars.iv174.unr, %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body5.us.us153.us.epil ], [ 0, %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa ]
  %arrayidx18.us.us.us.epil = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv174.epil
  %14 = load ptr, ptr %arrayidx18.us.us.us.epil, align 8, !tbaa !22
  %add.ptr20.us.us.us.epil = getelementptr inbounds i16, ptr %14, i64 %idx.ext19
  store i16 0, ptr %add.ptr20.us.us.us.epil, align 2, !tbaa !87
  %indvars.iv.next175.epil = add nuw nsw i64 %indvars.iv174.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond2.for.end71_crit_edge.split.us.us.us, label %for.body5.us.us153.us.epil, !llvm.loop !90

for.cond2.for.end71_crit_edge.split.us.us.us:     ; preds = %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit195.unr-lcssa, %for.body5.us.us153.us.epil, %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa, %for.body5.us.us.us.us.epil
  %cond.us.us = zext i1 %tobool.not.us.us.us to i32
  store i32 %cond.us.us, ptr %on_odd_row, align 8, !tbaa !66
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %for.end77, label %for.body.us.us, !llvm.loop !91

for.body5.us.us.us.us:                            ; preds = %for.body5.us.us.us.us.preheader, %for.body5.us.us.us.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.7, %for.body5.us.us.us.us ], [ 0, %for.body5.us.us.us.us.preheader ]
  %niter202 = phi i64 [ %niter202.next.7, %for.body5.us.us.us.us ], [ 0, %for.body5.us.us.us.us.preheader ]
  %arrayidx23.us.us.us.us = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv179
  %15 = load ptr, ptr %arrayidx23.us.us.us.us, align 8, !tbaa !22
  store i16 0, ptr %15, align 2, !tbaa !87
  %indvars.iv.next180 = or i64 %indvars.iv179, 1
  %arrayidx23.us.us.us.us.1 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180
  %16 = load ptr, ptr %arrayidx23.us.us.us.us.1, align 8, !tbaa !22
  store i16 0, ptr %16, align 2, !tbaa !87
  %indvars.iv.next180.1 = or i64 %indvars.iv179, 2
  %arrayidx23.us.us.us.us.2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180.1
  %17 = load ptr, ptr %arrayidx23.us.us.us.us.2, align 8, !tbaa !22
  store i16 0, ptr %17, align 2, !tbaa !87
  %indvars.iv.next180.2 = or i64 %indvars.iv179, 3
  %arrayidx23.us.us.us.us.3 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180.2
  %18 = load ptr, ptr %arrayidx23.us.us.us.us.3, align 8, !tbaa !22
  store i16 0, ptr %18, align 2, !tbaa !87
  %indvars.iv.next180.3 = or i64 %indvars.iv179, 4
  %arrayidx23.us.us.us.us.4 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180.3
  %19 = load ptr, ptr %arrayidx23.us.us.us.us.4, align 8, !tbaa !22
  store i16 0, ptr %19, align 2, !tbaa !87
  %indvars.iv.next180.4 = or i64 %indvars.iv179, 5
  %arrayidx23.us.us.us.us.5 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180.4
  %20 = load ptr, ptr %arrayidx23.us.us.us.us.5, align 8, !tbaa !22
  store i16 0, ptr %20, align 2, !tbaa !87
  %indvars.iv.next180.5 = or i64 %indvars.iv179, 6
  %arrayidx23.us.us.us.us.6 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180.5
  %21 = load ptr, ptr %arrayidx23.us.us.us.us.6, align 8, !tbaa !22
  store i16 0, ptr %21, align 2, !tbaa !87
  %indvars.iv.next180.6 = or i64 %indvars.iv179, 7
  %arrayidx23.us.us.us.us.7 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv.next180.6
  %22 = load ptr, ptr %arrayidx23.us.us.us.us.7, align 8, !tbaa !22
  store i16 0, ptr %22, align 2, !tbaa !87
  %indvars.iv.next180.7 = add nuw nsw i64 %indvars.iv179, 8
  %niter202.next.7 = add i64 %niter202, 8
  %niter202.ncmp.7 = icmp eq i64 %niter202.next.7, %unroll_iter201
  br i1 %niter202.ncmp.7, label %for.cond2.for.end71_crit_edge.split.us.us.us.loopexit.unr-lcssa, label %for.body5.us.us.us.us, !llvm.loop !88

for.body.us:                                      ; preds = %for.body.lr.ph.split.us, %for.cond2.for.end71_crit_edge.split.us151
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.cond2.for.end71_crit_edge.split.us151 ], [ 0, %for.body.lr.ph.split.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv169
  %23 = load ptr, ptr %arrayidx.us, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %23, i64 noundef %conv) #7
  %arrayidx7.us = getelementptr inbounds ptr, ptr %input_buf, i64 %indvars.iv169
  br label %for.body5.us143

for.body5.us143:                                  ; preds = %for.body.us, %for.cond28.for.end_crit_edge.us
  %indvars.iv164 = phi i64 [ 0, %for.body.us ], [ %indvars.iv.next165, %for.cond28.for.end_crit_edge.us ]
  %24 = load ptr, ptr %arrayidx7.us, align 8, !tbaa !22
  %add.ptr.us = getelementptr inbounds i8, ptr %24, i64 %indvars.iv164
  %25 = load ptr, ptr %arrayidx.us, align 8, !tbaa !22
  %26 = load i32, ptr %on_odd_row, align 8, !tbaa !66
  %tobool.not.us146 = icmp eq i32 %26, 0
  br i1 %tobool.not.us146, label %if.else.us, label %if.then.us

if.then.us:                                       ; preds = %for.body5.us143
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext11
  %add.ptr15.us = getelementptr inbounds i8, ptr %25, i64 %idx.ext14
  %arrayidx18.us147 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv164
  %27 = load ptr, ptr %arrayidx18.us147, align 8, !tbaa !22
  %add.ptr20.us148 = getelementptr inbounds i16, ptr %27, i64 %idx.ext19
  br label %if.end.us

if.else.us:                                       ; preds = %for.body5.us143
  %arrayidx23.us = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 8, i64 %indvars.iv164
  %28 = load ptr, ptr %arrayidx23.us, align 8, !tbaa !22
  br label %if.end.us

if.end.us:                                        ; preds = %if.else.us, %if.then.us
  %output_ptr.0.us = phi ptr [ %add.ptr15.us, %if.then.us ], [ %25, %if.else.us ]
  %input_ptr.0.us = phi ptr [ %add.ptr12.us, %if.then.us ], [ %add.ptr.us, %if.else.us ]
  %errorptr.0.us = phi ptr [ %add.ptr20.us148, %if.then.us ], [ %28, %if.else.us ]
  %dir.0.us = phi i64 [ -1, %if.then.us ], [ 1, %if.else.us ]
  %dirnc.0.us = phi i32 [ %sub16, %if.then.us ], [ %1, %if.else.us ]
  %29 = load ptr, ptr %colorindex, align 8, !tbaa !68
  %arrayidx25.us = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv164
  %30 = load ptr, ptr %arrayidx25.us, align 8, !tbaa !22
  %31 = load ptr, ptr %sv_colormap, align 8, !tbaa !51
  %arrayidx27.us = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv164
  %32 = load ptr, ptr %arrayidx27.us, align 8, !tbaa !22
  %idx.ext62.us = sext i32 %dirnc.0.us to i64
  br label %for.body31.us

for.body31.us:                                    ; preds = %for.body31.us, %if.end.us
  %cur.0137.us = phi i32 [ 0, %if.end.us ], [ %add61.us, %for.body31.us ]
  %belowerr.0136.us = phi i32 [ 0, %if.end.us ], [ %sub53.us, %for.body31.us ]
  %col.0135.us = phi i32 [ %2, %if.end.us ], [ %dec.us, %for.body31.us ]
  %bpreverr.0134.us = phi i32 [ 0, %if.end.us ], [ %add60.us, %for.body31.us ]
  %errorptr.1133.us = phi ptr [ %errorptr.0.us, %if.end.us ], [ %arrayidx33.us, %for.body31.us ]
  %input_ptr.1132.us = phi ptr [ %input_ptr.0.us, %if.end.us ], [ %add.ptr63.us, %for.body31.us ]
  %output_ptr.1131.us = phi ptr [ %output_ptr.0.us, %if.end.us ], [ %add.ptr65.us, %for.body31.us ]
  %arrayidx33.us = getelementptr inbounds i16, ptr %errorptr.1133.us, i64 %dir.0.us
  %33 = load i16, ptr %arrayidx33.us, align 2, !tbaa !87
  %conv34.us = sext i16 %33 to i32
  %add35.us = add nsw i32 %cur.0137.us, 8
  %add36.us = add nsw i32 %add35.us, %conv34.us
  %shr.us = ashr i32 %add36.us, 4
  %34 = load i8, ptr %input_ptr.1132.us, align 1, !tbaa !27
  %conv37.us = zext i8 %34 to i32
  %add38.us = add nsw i32 %shr.us, %conv37.us
  %idxprom39.us = sext i32 %add38.us to i64
  %arrayidx40.us = getelementptr inbounds i8, ptr %3, i64 %idxprom39.us
  %35 = load i8, ptr %arrayidx40.us, align 1, !tbaa !27
  %conv41.us = zext i8 %35 to i32
  %36 = zext i8 %35 to i64
  %arrayidx43.us = getelementptr inbounds i8, ptr %30, i64 %36
  %37 = load i8, ptr %arrayidx43.us, align 1, !tbaa !27
  %38 = load i8, ptr %output_ptr.1131.us, align 1, !tbaa !27
  %add48.us = add i8 %38, %37
  store i8 %add48.us, ptr %output_ptr.1131.us, align 1, !tbaa !27
  %39 = zext i8 %37 to i64
  %arrayidx51.us = getelementptr inbounds i8, ptr %32, i64 %39
  %40 = load i8, ptr %arrayidx51.us, align 1, !tbaa !27
  %conv52.us = zext i8 %40 to i32
  %sub53.us = sub nsw i32 %conv41.us, %conv52.us
  %add55.us = mul nsw i32 %sub53.us, 3
  %add56.us = add nsw i32 %add55.us, %bpreverr.0134.us
  %conv57.us = trunc i32 %add56.us to i16
  store i16 %conv57.us, ptr %errorptr.1133.us, align 2, !tbaa !87
  %add59.us = mul nsw i32 %sub53.us, 5
  %add60.us = add nsw i32 %add59.us, %belowerr.0136.us
  %add61.us = mul nsw i32 %sub53.us, 7
  %add.ptr63.us = getelementptr inbounds i8, ptr %input_ptr.1132.us, i64 %idx.ext62.us
  %add.ptr65.us = getelementptr inbounds i8, ptr %output_ptr.1131.us, i64 %dir.0.us
  %dec.us = add i32 %col.0135.us, -1
  %cmp29.not.us = icmp eq i32 %dec.us, 0
  br i1 %cmp29.not.us, label %for.cond28.for.end_crit_edge.us, label %for.body31.us, !llvm.loop !92

for.cond28.for.end_crit_edge.us:                  ; preds = %for.body31.us
  %conv68.us = trunc i32 %add60.us to i16
  store i16 %conv68.us, ptr %arrayidx33.us, align 2, !tbaa !87
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count177
  br i1 %exitcond168.not, label %for.cond2.for.end71_crit_edge.split.us151, label %for.body5.us143, !llvm.loop !88

for.cond2.for.end71_crit_edge.split.us151:        ; preds = %for.cond28.for.end_crit_edge.us
  %41 = load i32, ptr %on_odd_row, align 8, !tbaa !66
  %tobool73.not.us = icmp eq i32 %41, 0
  %cond.us = zext i1 %tobool73.not.us to i32
  store i32 %cond.us, ptr %on_odd_row, align 8, !tbaa !66
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count187
  br i1 %exitcond173.not, label %for.end77, label %for.body.us, !llvm.loop !91

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv
  %42 = load ptr, ptr %arrayidx, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %42, i64 noundef %conv) #7
  %43 = load i32, ptr %on_odd_row, align 8, !tbaa !66
  %tobool73.not = icmp eq i32 %43, 0
  %cond = zext i1 %tobool73.not to i32
  store i32 %cond, ptr %on_odd_row, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end77, label %for.body, !llvm.loop !91

for.end77:                                        ; preds = %for.body, %for.cond2.for.end71_crit_edge.split.us151, %for.cond2.for.end71_crit_edge.split.us.us.us, %entry
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !8, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !8, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !8, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 608}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56, !8, i64 60, !10, i64 76, !8, i64 80, !8, i64 112, !10, i64 144}
!19 = !{!"jpeg_color_quantizer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!20 = !{!18, !7, i64 16}
!21 = !{!18, !7, i64 24}
!22 = !{!7, !7, i64 0}
!23 = !{!6, !10, i64 136}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!8, !8, i64 0}
!28 = !{!26, !7, i64 0}
!29 = !{!6, !10, i64 112}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !31}
!35 = !{!10, !10, i64 0}
!36 = distinct !{!36, !31, !37}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = distinct !{!38, !33}
!39 = !{!6, !8, i64 56}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31, !43, !37}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!26, !7, i64 8}
!45 = !{!14, !7, i64 16}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !31}
!51 = !{!18, !7, i64 32}
!52 = !{!18, !10, i64 40}
!53 = !{!6, !8, i64 104}
!54 = !{!6, !10, i64 128}
!55 = !{!14, !7, i64 8}
!56 = distinct !{!56, !31}
!57 = !{!6, !7, i64 152}
!58 = !{!6, !10, i64 148}
!59 = !{!18, !7, i64 8}
!60 = !{!18, !10, i64 76}
!61 = !{!18, !10, i64 56}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31}
!66 = !{!18, !10, i64 144}
!67 = distinct !{!67, !31}
!68 = !{!18, !7, i64 48}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = !{!6, !7, i64 408}
!87 = !{!12, !12, i64 0}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
