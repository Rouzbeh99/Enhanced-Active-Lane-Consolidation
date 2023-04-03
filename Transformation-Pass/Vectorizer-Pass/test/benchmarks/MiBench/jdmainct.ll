; ModuleID = 'jdmainct.c'
source_filename = "jdmainct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x ptr], i32, i32, [2 x ptr], i32, i32, i32, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_post_controller = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_d_main_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) local_unnamed_addr #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !13
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 136) #2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  store ptr %call, ptr %main1, align 8, !tbaa !16
  store ptr @start_pass_main, ptr %call, align 8, !tbaa !17
  %tobool.not = icmp eq i32 %need_full_buffer, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8, !tbaa !21
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  tail call void %3(ptr noundef nonnull %cinfo) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %4 = load ptr, ptr %upsample, align 8, !tbaa !24
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %need_context_rows, align 8, !tbaa !25
  %tobool3.not = icmp eq i32 %5, 0
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %6 = load i32, ptr %min_DCT_scaled_size12, align 4, !tbaa !27
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then4
  %7 = load ptr, ptr %cinfo, align 8, !tbaa !20
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 46, ptr %msg_code7, align 8, !tbaa !21
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  tail call void %8(ptr noundef nonnull %cinfo) #2
  %.pre = load i32, ptr %min_DCT_scaled_size12, align 4, !tbaa !27
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then4
  %9 = phi i32 [ %.pre, %if.then5 ], [ %6, %if.then4 ]
  %10 = load ptr, ptr %main1, align 8, !tbaa !16
  %11 = load ptr, ptr %mem, align 8, !tbaa !5
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %num_components.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %13 = load i32, ptr %num_components.i, align 8, !tbaa !28
  %mul.i = shl nsw i32 %13, 1
  %conv.i = sext i32 %mul.i to i64
  %mul2.i = shl nsw i64 %conv.i, 3
  %call.i = tail call ptr %12(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef %mul2.i) #2
  %xbuffer.i = getelementptr inbounds %struct.my_main_controller, ptr %10, i64 0, i32 4
  store ptr %call.i, ptr %xbuffer.i, align 8, !tbaa !29
  %14 = load i32, ptr %num_components.i, align 8, !tbaa !28
  %idx.ext.i = sext i32 %14 to i64
  %add.ptr.i = getelementptr inbounds ptr, ptr %call.i, i64 %idx.ext.i
  %arrayidx7.i = getelementptr inbounds %struct.my_main_controller, ptr %10, i64 0, i32 4, i64 1
  store ptr %add.ptr.i, ptr %arrayidx7.i, align 8, !tbaa !29
  %cmp57.i = icmp sgt i32 %14, 0
  br i1 %cmp57.i, label %for.body.lr.ph.i, label %alloc_funny_pointers.exit

for.body.lr.ph.i:                                 ; preds = %if.end10
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %15 = load ptr, ptr %comp_info.i, align 8, !tbaa !30
  %add.i = add nsw i32 %9, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %compptr.058.i = phi ptr [ %15, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i ]
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.058.i, i64 0, i32 3
  %16 = load i32, ptr %v_samp_factor.i, align 4, !tbaa !31
  %DCT_scaled_size.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.058.i, i64 0, i32 9
  %17 = load i32, ptr %DCT_scaled_size.i, align 4, !tbaa !33
  %mul10.i = mul nsw i32 %17, %16
  %18 = load i32, ptr %min_DCT_scaled_size12, align 4, !tbaa !27
  %div.i = sdiv i32 %mul10.i, %18
  %19 = load ptr, ptr %mem, align 8, !tbaa !5
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %mul14.i = mul nsw i32 %div.i, %add.i
  %mul15.i = shl nsw i32 %mul14.i, 1
  %conv16.i = sext i32 %mul15.i to i64
  %mul17.i = shl nsw i64 %conv16.i, 3
  %call18.i = tail call ptr %20(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef %mul17.i) #2
  %idx.ext19.i = sext i32 %div.i to i64
  %add.ptr20.i = getelementptr inbounds ptr, ptr %call18.i, i64 %idx.ext19.i
  %21 = load ptr, ptr %xbuffer.i, align 8, !tbaa !29
  %arrayidx23.i = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv.i
  store ptr %add.ptr20.i, ptr %arrayidx23.i, align 8, !tbaa !29
  %idx.ext26.i = sext i32 %mul14.i to i64
  %add.ptr27.i = getelementptr inbounds ptr, ptr %add.ptr20.i, i64 %idx.ext26.i
  %22 = load ptr, ptr %arrayidx7.i, align 8, !tbaa !29
  %arrayidx31.i = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv.i
  store ptr %add.ptr27.i, ptr %arrayidx31.i, align 8, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %incdec.ptr.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.058.i, i64 1
  %23 = load i32, ptr %num_components.i, align 8, !tbaa !28
  %24 = sext i32 %23 to i64
  %cmp.i = icmp slt i64 %indvars.iv.next.i, %24
  br i1 %cmp.i, label %for.body.i, label %alloc_funny_pointers.exit, !llvm.loop !34

alloc_funny_pointers.exit:                        ; preds = %for.body.i, %if.end10
  %25 = phi i32 [ %14, %if.end10 ], [ %23, %for.body.i ]
  %26 = load i32, ptr %min_DCT_scaled_size12, align 4, !tbaa !27
  %add = add nsw i32 %26, 2
  br label %if.end13

if.else:                                          ; preds = %if.end
  %num_components.phi.trans.insert = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %.pre51 = load i32, ptr %num_components.phi.trans.insert, align 8, !tbaa !28
  br label %if.end13

if.end13:                                         ; preds = %if.else, %alloc_funny_pointers.exit
  %27 = phi i32 [ %26, %alloc_funny_pointers.exit ], [ %6, %if.else ]
  %28 = phi i32 [ %25, %alloc_funny_pointers.exit ], [ %.pre51, %if.else ]
  %ngroups.0 = phi i32 [ %add, %alloc_funny_pointers.exit ], [ %6, %if.else ]
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %cmp1447 = icmp sgt i32 %28, 0
  br i1 %cmp1447, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %29 = load ptr, ptr %comp_info, align 8, !tbaa !30
  %min_DCT_scaled_size15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %30 = phi i32 [ %27, %for.body.lr.ph ], [ %.pre52, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %compptr.049 = phi ptr [ %29, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.049, i64 0, i32 3
  %31 = load i32, ptr %v_samp_factor, align 4, !tbaa !31
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.049, i64 0, i32 9
  %32 = load i32, ptr %DCT_scaled_size, align 4, !tbaa !33
  %mul = mul nsw i32 %32, %31
  %div = sdiv i32 %mul, %30
  %33 = load ptr, ptr %mem, align 8, !tbaa !5
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %33, i64 0, i32 2
  %34 = load ptr, ptr %alloc_sarray, align 8, !tbaa !36
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.049, i64 0, i32 7
  %35 = load i32, ptr %width_in_blocks, align 4, !tbaa !37
  %mul18 = mul i32 %35, %32
  %mul19 = mul nsw i32 %div, %ngroups.0
  %call20 = tail call ptr %34(ptr noundef nonnull %cinfo, i32 noundef 1, i32 noundef %mul18, i32 noundef %mul19) #2
  %arrayidx = getelementptr inbounds %struct.my_main_controller, ptr %call, i64 0, i32 1, i64 %indvars.iv
  store ptr %call20, ptr %arrayidx, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = load i32, ptr %num_components, align 8, !tbaa !28
  %37 = sext i32 %36 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next, %37
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.end, !llvm.loop !38

for.body.for.body_crit_edge:                      ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.049, i64 1
  %.pre52 = load i32, ptr %min_DCT_scaled_size15, align 4, !tbaa !27
  br label %for.body

for.end:                                          ; preds = %for.body, %if.end13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8, !tbaa !16
  switch i32 %pass_mode, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %1 = load ptr, ptr %upsample, align 8, !tbaa !24
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %need_context_rows, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %2, 0
  %process_data3 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %0, i64 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  store ptr @process_data_context_main, ptr %process_data3, align 8, !tbaa !39
  %min_DCT_scaled_size.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %3 = load i32, ptr %min_DCT_scaled_size.i, align 4, !tbaa !27
  %num_components.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %4 = load i32, ptr %num_components.i, align 8, !tbaa !28
  %cmp105.i = icmp sgt i32 %4, 0
  br i1 %cmp105.i, label %for.body.lr.ph.i, label %make_funny_pointers.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %5 = load ptr, ptr %comp_info.i, align 8, !tbaa !30
  %xbuffer.i = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 4
  %arrayidx5.i = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 4, i64 1
  %add.i = add nsw i32 %3, 2
  %sub.i = add nsw i32 %3, -2
  %wide.trip.count125.i = zext i32 %4 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc54.i, %for.body.lr.ph.i
  %indvars.iv122.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next123.i, %for.inc54.i ]
  %compptr.0106.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc54.i ]
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0106.i, i64 0, i32 3
  %6 = load i32, ptr %v_samp_factor.i, align 4, !tbaa !31
  %DCT_scaled_size.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0106.i, i64 0, i32 9
  %7 = load i32, ptr %DCT_scaled_size.i, align 4, !tbaa !33
  %mul.i = mul nsw i32 %7, %6
  %div.i = sdiv i32 %mul.i, %3
  %8 = load ptr, ptr %xbuffer.i, align 8, !tbaa !29
  %arrayidx3.i = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv122.i
  %9 = load ptr, ptr %arrayidx3.i, align 8, !tbaa !29
  %10 = load ptr, ptr %arrayidx5.i, align 8, !tbaa !29
  %arrayidx7.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv122.i
  %11 = load ptr, ptr %arrayidx7.i, align 8, !tbaa !29
  %arrayidx9.i = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 1, i64 %indvars.iv122.i
  %12 = load ptr, ptr %arrayidx9.i, align 8, !tbaa !29
  %mul11.i = mul i32 %div.i, %add.i
  %cmp1299.i = icmp sgt i32 %mul11.i, 0
  br i1 %cmp1299.i, label %for.body13.preheader.i, label %for.cond20.preheader.i

for.body13.preheader.i:                           ; preds = %for.body.i
  %wide.trip.count.i = zext i32 %mul11.i to i64
  %min.iters.check62 = icmp ult i32 %mul11.i, 4
  br i1 %min.iters.check62, label %for.body13.i.preheader, label %vector.memcheck45

vector.memcheck45:                                ; preds = %for.body13.preheader.i
  %13 = shl nuw nsw i64 %wide.trip.count.i, 3
  %uglygep46 = getelementptr i8, ptr %11, i64 %13
  %uglygep47 = getelementptr i8, ptr %9, i64 %13
  %uglygep48 = getelementptr i8, ptr %12, i64 %13
  %bound049 = icmp ult ptr %11, %uglygep47
  %bound150 = icmp ult ptr %9, %uglygep46
  %found.conflict51 = and i1 %bound049, %bound150
  %bound052 = icmp ult ptr %11, %uglygep48
  %bound153 = icmp ult ptr %12, %uglygep46
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %found.conflict51, %found.conflict54
  %bound056 = icmp ult ptr %9, %uglygep48
  %bound157 = icmp ult ptr %12, %uglygep47
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  br i1 %conflict.rdx59, label %for.body13.i.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck45
  %n.vec65 = and i64 %wide.trip.count.i, 4294967292
  %14 = add nsw i64 %n.vec65, -4
  %15 = lshr exact i64 %14, 2
  %16 = add nuw nsw i64 %15, 1
  %xtraiter = and i64 %16, 1
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %middle.block60.unr-lcssa, label %vector.ph63.new

vector.ph63.new:                                  ; preds = %vector.ph63
  %unroll_iter = and i64 %16, 9223372036854775806
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph63.new
  %index69 = phi i64 [ 0, %vector.ph63.new ], [ %index.next72.1, %vector.body68 ]
  %niter = phi i64 [ 0, %vector.ph63.new ], [ %niter.next.1, %vector.body68 ]
  %18 = getelementptr inbounds ptr, ptr %12, i64 %index69
  %wide.load70 = load <2 x ptr>, ptr %18, align 8, !tbaa !29, !alias.scope !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %wide.load71 = load <2 x ptr>, ptr %19, align 8, !tbaa !29, !alias.scope !40
  %20 = getelementptr inbounds ptr, ptr %11, i64 %index69
  store <2 x ptr> %wide.load70, ptr %20, align 8, !tbaa !29, !alias.scope !43, !noalias !45
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  store <2 x ptr> %wide.load71, ptr %21, align 8, !tbaa !29, !alias.scope !43, !noalias !45
  %22 = getelementptr inbounds ptr, ptr %9, i64 %index69
  store <2 x ptr> %wide.load70, ptr %22, align 8, !tbaa !29, !alias.scope !47, !noalias !40
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  store <2 x ptr> %wide.load71, ptr %23, align 8, !tbaa !29, !alias.scope !47, !noalias !40
  %index.next72 = or i64 %index69, 4
  %24 = getelementptr inbounds ptr, ptr %12, i64 %index.next72
  %wide.load70.1 = load <2 x ptr>, ptr %24, align 8, !tbaa !29, !alias.scope !40
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %wide.load71.1 = load <2 x ptr>, ptr %25, align 8, !tbaa !29, !alias.scope !40
  %26 = getelementptr inbounds ptr, ptr %11, i64 %index.next72
  store <2 x ptr> %wide.load70.1, ptr %26, align 8, !tbaa !29, !alias.scope !43, !noalias !45
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  store <2 x ptr> %wide.load71.1, ptr %27, align 8, !tbaa !29, !alias.scope !43, !noalias !45
  %28 = getelementptr inbounds ptr, ptr %9, i64 %index.next72
  store <2 x ptr> %wide.load70.1, ptr %28, align 8, !tbaa !29, !alias.scope !47, !noalias !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  store <2 x ptr> %wide.load71.1, ptr %29, align 8, !tbaa !29, !alias.scope !47, !noalias !40
  %index.next72.1 = add nuw i64 %index69, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block60.unr-lcssa, label %vector.body68, !llvm.loop !48

middle.block60.unr-lcssa:                         ; preds = %vector.body68, %vector.ph63
  %index69.unr = phi i64 [ 0, %vector.ph63 ], [ %index.next72.1, %vector.body68 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block60, label %vector.body68.epil

vector.body68.epil:                               ; preds = %middle.block60.unr-lcssa
  %30 = getelementptr inbounds ptr, ptr %12, i64 %index69.unr
  %wide.load70.epil = load <2 x ptr>, ptr %30, align 8, !tbaa !29, !alias.scope !40
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %wide.load71.epil = load <2 x ptr>, ptr %31, align 8, !tbaa !29, !alias.scope !40
  %32 = getelementptr inbounds ptr, ptr %11, i64 %index69.unr
  store <2 x ptr> %wide.load70.epil, ptr %32, align 8, !tbaa !29, !alias.scope !43, !noalias !45
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  store <2 x ptr> %wide.load71.epil, ptr %33, align 8, !tbaa !29, !alias.scope !43, !noalias !45
  %34 = getelementptr inbounds ptr, ptr %9, i64 %index69.unr
  store <2 x ptr> %wide.load70.epil, ptr %34, align 8, !tbaa !29, !alias.scope !47, !noalias !40
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  store <2 x ptr> %wide.load71.epil, ptr %35, align 8, !tbaa !29, !alias.scope !47, !noalias !40
  br label %middle.block60

middle.block60:                                   ; preds = %middle.block60.unr-lcssa, %vector.body68.epil
  %cmp.n67 = icmp eq i64 %n.vec65, %wide.trip.count.i
  br i1 %cmp.n67, label %for.cond20.preheader.i, label %for.body13.i.preheader

for.body13.i.preheader:                           ; preds = %vector.memcheck45, %for.body13.preheader.i, %middle.block60
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck45 ], [ 0, %for.body13.preheader.i ], [ %n.vec65, %middle.block60 ]
  %36 = xor i64 %indvars.iv.i.ph, -1
  %37 = add nsw i64 %36, %wide.trip.count.i
  %xtraiter73 = and i64 %wide.trip.count.i, 3
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %for.body13.i.prol.loopexit, label %for.body13.i.prol

for.body13.i.prol:                                ; preds = %for.body13.i.preheader, %for.body13.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body13.i.prol ], [ %indvars.iv.i.ph, %for.body13.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body13.i.prol ], [ 0, %for.body13.i.preheader ]
  %arrayidx15.i.prol = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.i.prol
  %38 = load ptr, ptr %arrayidx15.i.prol, align 8, !tbaa !29
  %arrayidx17.i.prol = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv.i.prol
  store ptr %38, ptr %arrayidx17.i.prol, align 8, !tbaa !29
  %arrayidx19.i.prol = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.i.prol
  store ptr %38, ptr %arrayidx19.i.prol, align 8, !tbaa !29
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter73
  br i1 %prol.iter.cmp.not, label %for.body13.i.prol.loopexit, label %for.body13.i.prol, !llvm.loop !50

for.body13.i.prol.loopexit:                       ; preds = %for.body13.i.prol, %for.body13.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body13.i.preheader ], [ %indvars.iv.next.i.prol, %for.body13.i.prol ]
  %39 = icmp ult i64 %37, 3
  br i1 %39, label %for.cond20.preheader.i, label %for.body13.i

for.cond20.preheader.i:                           ; preds = %for.body13.i.prol.loopexit, %for.body13.i, %middle.block60, %for.body.i
  %cmp22101.i = icmp sgt i32 %div.i, 0
  br i1 %cmp22101.i, label %for.body23.lr.ph.i, label %for.inc54.i

for.body23.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  %mul21.i = shl nuw i32 %div.i, 1
  %mul24.i = mul nsw i32 %div.i, %3
  %mul28.i = mul nsw i32 %div.i, %sub.i
  %40 = sext i32 %mul24.i to i64
  %41 = sext i32 %mul28.i to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %mul21.i, i32 1) #2
  %wide.trip.count114.i = zext i32 %smax.i to i64
  %min.iters.check = icmp ult i32 %smax.i, 4
  br i1 %min.iters.check, label %for.body23.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body23.lr.ph.i
  %42 = shl nsw i64 %41, 3
  %uglygep = getelementptr i8, ptr %11, i64 %42
  %43 = shl nuw nsw i64 %wide.trip.count114.i, 3
  %44 = add nsw i64 %42, %43
  %uglygep20 = getelementptr i8, ptr %11, i64 %44
  %45 = shl nsw i64 %40, 3
  %uglygep21 = getelementptr i8, ptr %11, i64 %45
  %46 = add nsw i64 %45, %43
  %uglygep22 = getelementptr i8, ptr %11, i64 %46
  %uglygep23 = getelementptr i8, ptr %12, i64 %45
  %uglygep24 = getelementptr i8, ptr %12, i64 %46
  %uglygep25 = getelementptr i8, ptr %12, i64 %42
  %uglygep26 = getelementptr i8, ptr %12, i64 %44
  %bound0 = icmp ult ptr %uglygep, %uglygep22
  %bound1 = icmp ult ptr %uglygep21, %uglygep20
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %uglygep, %uglygep24
  %bound128 = icmp ult ptr %uglygep23, %uglygep20
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  %bound030 = icmp ult ptr %uglygep, %uglygep26
  %bound131 = icmp ult ptr %uglygep25, %uglygep20
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx, %found.conflict32
  %bound034 = icmp ult ptr %uglygep21, %uglygep24
  %bound135 = icmp ult ptr %uglygep23, %uglygep22
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  %bound038 = icmp ult ptr %uglygep21, %uglygep26
  %bound139 = icmp ult ptr %uglygep25, %uglygep22
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx37, %found.conflict40
  br i1 %conflict.rdx41, label %for.body23.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count114.i, 2147483644
  %47 = add nsw i64 %n.vec, -4
  %48 = lshr exact i64 %47, 2
  %49 = add nuw nsw i64 %48, 1
  %xtraiter75 = and i64 %49, 1
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter77 = and i64 %49, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter78 = phi i64 [ 0, %vector.ph.new ], [ %niter78.next.1, %vector.body ]
  %51 = add nsw i64 %index, %40
  %52 = getelementptr inbounds ptr, ptr %12, i64 %51
  %wide.load = load <2 x ptr>, ptr %52, align 8, !tbaa !29, !alias.scope !52
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %wide.load42 = load <2 x ptr>, ptr %53, align 8, !tbaa !29, !alias.scope !52
  %54 = add nsw i64 %index, %41
  %55 = getelementptr inbounds ptr, ptr %11, i64 %54
  store <2 x ptr> %wide.load, ptr %55, align 8, !tbaa !29, !alias.scope !55, !noalias !57
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  store <2 x ptr> %wide.load42, ptr %56, align 8, !tbaa !29, !alias.scope !55, !noalias !57
  %57 = getelementptr inbounds ptr, ptr %12, i64 %54
  %wide.load43 = load <2 x ptr>, ptr %57, align 8, !tbaa !29, !alias.scope !60
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %wide.load44 = load <2 x ptr>, ptr %58, align 8, !tbaa !29, !alias.scope !60
  %59 = getelementptr inbounds ptr, ptr %11, i64 %51
  store <2 x ptr> %wide.load43, ptr %59, align 8, !tbaa !29, !alias.scope !61, !noalias !62
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  store <2 x ptr> %wide.load44, ptr %60, align 8, !tbaa !29, !alias.scope !61, !noalias !62
  %index.next = or i64 %index, 4
  %61 = add nsw i64 %index.next, %40
  %62 = getelementptr inbounds ptr, ptr %12, i64 %61
  %wide.load.1 = load <2 x ptr>, ptr %62, align 8, !tbaa !29, !alias.scope !52
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %wide.load42.1 = load <2 x ptr>, ptr %63, align 8, !tbaa !29, !alias.scope !52
  %64 = add nsw i64 %index.next, %41
  %65 = getelementptr inbounds ptr, ptr %11, i64 %64
  store <2 x ptr> %wide.load.1, ptr %65, align 8, !tbaa !29, !alias.scope !55, !noalias !57
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  store <2 x ptr> %wide.load42.1, ptr %66, align 8, !tbaa !29, !alias.scope !55, !noalias !57
  %67 = getelementptr inbounds ptr, ptr %12, i64 %64
  %wide.load43.1 = load <2 x ptr>, ptr %67, align 8, !tbaa !29, !alias.scope !60
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %wide.load44.1 = load <2 x ptr>, ptr %68, align 8, !tbaa !29, !alias.scope !60
  %69 = getelementptr inbounds ptr, ptr %11, i64 %61
  store <2 x ptr> %wide.load43.1, ptr %69, align 8, !tbaa !29, !alias.scope !61, !noalias !62
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  store <2 x ptr> %wide.load44.1, ptr %70, align 8, !tbaa !29, !alias.scope !61, !noalias !62
  %index.next.1 = add nuw i64 %index, 8
  %niter78.next.1 = add i64 %niter78, 2
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !63

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %71 = add nsw i64 %index.unr, %40
  %72 = getelementptr inbounds ptr, ptr %12, i64 %71
  %wide.load.epil = load <2 x ptr>, ptr %72, align 8, !tbaa !29, !alias.scope !52
  %73 = getelementptr inbounds ptr, ptr %72, i64 2
  %wide.load42.epil = load <2 x ptr>, ptr %73, align 8, !tbaa !29, !alias.scope !52
  %74 = add nsw i64 %index.unr, %41
  %75 = getelementptr inbounds ptr, ptr %11, i64 %74
  store <2 x ptr> %wide.load.epil, ptr %75, align 8, !tbaa !29, !alias.scope !55, !noalias !57
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  store <2 x ptr> %wide.load42.epil, ptr %76, align 8, !tbaa !29, !alias.scope !55, !noalias !57
  %77 = getelementptr inbounds ptr, ptr %12, i64 %74
  %wide.load43.epil = load <2 x ptr>, ptr %77, align 8, !tbaa !29, !alias.scope !60
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %wide.load44.epil = load <2 x ptr>, ptr %78, align 8, !tbaa !29, !alias.scope !60
  %79 = getelementptr inbounds ptr, ptr %11, i64 %71
  store <2 x ptr> %wide.load43.epil, ptr %79, align 8, !tbaa !29, !alias.scope !61, !noalias !62
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  store <2 x ptr> %wide.load44.epil, ptr %80, align 8, !tbaa !29, !alias.scope !61, !noalias !62
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count114.i
  br i1 %cmp.n, label %for.body46.preheader.i, label %for.body23.i.preheader

for.body23.i.preheader:                           ; preds = %vector.memcheck, %for.body23.lr.ph.i, %middle.block
  %indvars.iv109.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body23.lr.ph.i ], [ %n.vec, %middle.block ]
  %81 = xor i64 %indvars.iv109.i.ph, -1
  %xtraiter79 = and i64 %wide.trip.count114.i, 1
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %for.body23.i.prol.loopexit, label %for.body23.i.prol

for.body23.i.prol:                                ; preds = %for.body23.i.preheader
  %82 = add nsw i64 %indvars.iv109.i.ph, %40
  %arrayidx27.i.prol = getelementptr inbounds ptr, ptr %12, i64 %82
  %83 = load ptr, ptr %arrayidx27.i.prol, align 8, !tbaa !29
  %84 = add nsw i64 %indvars.iv109.i.ph, %41
  %arrayidx31.i.prol = getelementptr inbounds ptr, ptr %11, i64 %84
  store ptr %83, ptr %arrayidx31.i.prol, align 8, !tbaa !29
  %arrayidx36.i.prol = getelementptr inbounds ptr, ptr %12, i64 %84
  %85 = load ptr, ptr %arrayidx36.i.prol, align 8, !tbaa !29
  %arrayidx40.i.prol = getelementptr inbounds ptr, ptr %11, i64 %82
  store ptr %85, ptr %arrayidx40.i.prol, align 8, !tbaa !29
  %indvars.iv.next110.i.prol = or i64 %indvars.iv109.i.ph, 1
  br label %for.body23.i.prol.loopexit

for.body23.i.prol.loopexit:                       ; preds = %for.body23.i.prol, %for.body23.i.preheader
  %indvars.iv109.i.unr = phi i64 [ %indvars.iv109.i.ph, %for.body23.i.preheader ], [ %indvars.iv.next110.i.prol, %for.body23.i.prol ]
  %86 = sub nsw i64 0, %wide.trip.count114.i
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %for.body46.preheader.i, label %for.body23.i

for.body13.i:                                     ; preds = %for.body13.i.prol.loopexit, %for.body13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body13.i ], [ %indvars.iv.i.unr, %for.body13.i.prol.loopexit ]
  %arrayidx15.i = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.i
  %88 = load ptr, ptr %arrayidx15.i, align 8, !tbaa !29
  %arrayidx17.i = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv.i
  store ptr %88, ptr %arrayidx17.i, align 8, !tbaa !29
  %arrayidx19.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.i
  store ptr %88, ptr %arrayidx19.i, align 8, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx15.i.1 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next.i
  %89 = load ptr, ptr %arrayidx15.i.1, align 8, !tbaa !29
  %arrayidx17.i.1 = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv.next.i
  store ptr %89, ptr %arrayidx17.i.1, align 8, !tbaa !29
  %arrayidx19.i.1 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next.i
  store ptr %89, ptr %arrayidx19.i.1, align 8, !tbaa !29
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx15.i.2 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next.i.1
  %90 = load ptr, ptr %arrayidx15.i.2, align 8, !tbaa !29
  %arrayidx17.i.2 = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv.next.i.1
  store ptr %90, ptr %arrayidx17.i.2, align 8, !tbaa !29
  %arrayidx19.i.2 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next.i.1
  store ptr %90, ptr %arrayidx19.i.2, align 8, !tbaa !29
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx15.i.3 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next.i.2
  %91 = load ptr, ptr %arrayidx15.i.3, align 8, !tbaa !29
  %arrayidx17.i.3 = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv.next.i.2
  store ptr %91, ptr %arrayidx17.i.3, align 8, !tbaa !29
  %arrayidx19.i.3 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next.i.2
  store ptr %91, ptr %arrayidx19.i.3, align 8, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %for.cond20.preheader.i, label %for.body13.i, !llvm.loop !64

for.body46.preheader.i:                           ; preds = %for.body23.i.prol.loopexit, %for.body23.i, %middle.block
  %92 = zext i32 %div.i to i64
  %93 = add nsw i64 %92, -1
  %xtraiter82 = and i64 %92, 3
  %94 = icmp ult i64 %93, 3
  br i1 %94, label %for.inc54.i.loopexit.unr-lcssa, label %for.body46.preheader.i.new

for.body46.preheader.i.new:                       ; preds = %for.body46.preheader.i
  %unroll_iter84 = and i64 %92, 4294967292
  br label %for.body46.i

for.body23.i:                                     ; preds = %for.body23.i.prol.loopexit, %for.body23.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i.1, %for.body23.i ], [ %indvars.iv109.i.unr, %for.body23.i.prol.loopexit ]
  %95 = add nsw i64 %indvars.iv109.i, %40
  %arrayidx27.i = getelementptr inbounds ptr, ptr %12, i64 %95
  %96 = load ptr, ptr %arrayidx27.i, align 8, !tbaa !29
  %97 = add nsw i64 %indvars.iv109.i, %41
  %arrayidx31.i = getelementptr inbounds ptr, ptr %11, i64 %97
  store ptr %96, ptr %arrayidx31.i, align 8, !tbaa !29
  %arrayidx36.i = getelementptr inbounds ptr, ptr %12, i64 %97
  %98 = load ptr, ptr %arrayidx36.i, align 8, !tbaa !29
  %arrayidx40.i = getelementptr inbounds ptr, ptr %11, i64 %95
  store ptr %98, ptr %arrayidx40.i, align 8, !tbaa !29
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  %99 = add nsw i64 %indvars.iv.next110.i, %40
  %arrayidx27.i.1 = getelementptr inbounds ptr, ptr %12, i64 %99
  %100 = load ptr, ptr %arrayidx27.i.1, align 8, !tbaa !29
  %101 = add nsw i64 %indvars.iv.next110.i, %41
  %arrayidx31.i.1 = getelementptr inbounds ptr, ptr %11, i64 %101
  store ptr %100, ptr %arrayidx31.i.1, align 8, !tbaa !29
  %arrayidx36.i.1 = getelementptr inbounds ptr, ptr %12, i64 %101
  %102 = load ptr, ptr %arrayidx36.i.1, align 8, !tbaa !29
  %arrayidx40.i.1 = getelementptr inbounds ptr, ptr %11, i64 %99
  store ptr %102, ptr %arrayidx40.i.1, align 8, !tbaa !29
  %indvars.iv.next110.i.1 = add nuw nsw i64 %indvars.iv109.i, 2
  %exitcond115.not.i.1 = icmp eq i64 %indvars.iv.next110.i.1, %wide.trip.count114.i
  br i1 %exitcond115.not.i.1, label %for.body46.preheader.i, label %for.body23.i, !llvm.loop !65

for.body46.i:                                     ; preds = %for.body46.i, %for.body46.preheader.i.new
  %indvars.iv116.i = phi i64 [ 0, %for.body46.preheader.i.new ], [ %indvars.iv.next117.i.3, %for.body46.i ]
  %niter85 = phi i64 [ 0, %for.body46.preheader.i.new ], [ %niter85.next.3, %for.body46.i ]
  %103 = load ptr, ptr %9, align 8, !tbaa !29
  %104 = sub nsw i64 %indvars.iv116.i, %92
  %arrayidx50.i = getelementptr inbounds ptr, ptr %9, i64 %104
  store ptr %103, ptr %arrayidx50.i, align 8, !tbaa !29
  %indvars.iv.next117.i = or i64 %indvars.iv116.i, 1
  %105 = load ptr, ptr %9, align 8, !tbaa !29
  %106 = sub nsw i64 %indvars.iv.next117.i, %92
  %arrayidx50.i.1 = getelementptr inbounds ptr, ptr %9, i64 %106
  store ptr %105, ptr %arrayidx50.i.1, align 8, !tbaa !29
  %indvars.iv.next117.i.1 = or i64 %indvars.iv116.i, 2
  %107 = load ptr, ptr %9, align 8, !tbaa !29
  %108 = sub nsw i64 %indvars.iv.next117.i.1, %92
  %arrayidx50.i.2 = getelementptr inbounds ptr, ptr %9, i64 %108
  store ptr %107, ptr %arrayidx50.i.2, align 8, !tbaa !29
  %indvars.iv.next117.i.2 = or i64 %indvars.iv116.i, 3
  %109 = load ptr, ptr %9, align 8, !tbaa !29
  %110 = sub nsw i64 %indvars.iv.next117.i.2, %92
  %arrayidx50.i.3 = getelementptr inbounds ptr, ptr %9, i64 %110
  store ptr %109, ptr %arrayidx50.i.3, align 8, !tbaa !29
  %indvars.iv.next117.i.3 = add nuw nsw i64 %indvars.iv116.i, 4
  %niter85.next.3 = add i64 %niter85, 4
  %niter85.ncmp.3 = icmp eq i64 %niter85.next.3, %unroll_iter84
  br i1 %niter85.ncmp.3, label %for.inc54.i.loopexit.unr-lcssa, label %for.body46.i, !llvm.loop !66

for.inc54.i.loopexit.unr-lcssa:                   ; preds = %for.body46.i, %for.body46.preheader.i
  %indvars.iv116.i.unr = phi i64 [ 0, %for.body46.preheader.i ], [ %indvars.iv.next117.i.3, %for.body46.i ]
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %for.inc54.i, label %for.body46.i.epil

for.body46.i.epil:                                ; preds = %for.inc54.i.loopexit.unr-lcssa, %for.body46.i.epil
  %indvars.iv116.i.epil = phi i64 [ %indvars.iv.next117.i.epil, %for.body46.i.epil ], [ %indvars.iv116.i.unr, %for.inc54.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body46.i.epil ], [ 0, %for.inc54.i.loopexit.unr-lcssa ]
  %111 = load ptr, ptr %9, align 8, !tbaa !29
  %112 = sub nsw i64 %indvars.iv116.i.epil, %92
  %arrayidx50.i.epil = getelementptr inbounds ptr, ptr %9, i64 %112
  store ptr %111, ptr %arrayidx50.i.epil, align 8, !tbaa !29
  %indvars.iv.next117.i.epil = add nuw nsw i64 %indvars.iv116.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter82
  br i1 %epil.iter.cmp.not, label %for.inc54.i, label %for.body46.i.epil, !llvm.loop !67

for.inc54.i:                                      ; preds = %for.inc54.i.loopexit.unr-lcssa, %for.body46.i.epil, %for.cond20.preheader.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  %incdec.ptr.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0106.i, i64 1
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %make_funny_pointers.exit, label %for.body.i, !llvm.loop !68

make_funny_pointers.exit:                         ; preds = %for.inc54.i, %if.then
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 5
  store i32 0, ptr %whichptr, align 8, !tbaa !69
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 6
  store i32 0, ptr %context_state, align 4, !tbaa !70
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 8
  store i32 0, ptr %iMCU_row_ctr, align 4, !tbaa !71
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store ptr @process_data_simple_main, ptr %process_data3, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.else, %make_funny_pointers.exit
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 2
  store i32 0, ptr %buffer_full, align 8, !tbaa !72
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 3
  store i32 0, ptr %rowgroup_ctr, align 4, !tbaa !73
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %process_data6 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %0, i64 0, i32 1
  store ptr @process_data_crank_post, ptr %process_data6, align 8, !tbaa !39
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %113 = load ptr, ptr %cinfo, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8, !tbaa !21
  %114 = load ptr, ptr %113, align 8, !tbaa !23
  tail call void %114(ptr noundef nonnull %cinfo) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_context_main(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8, !tbaa !16
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %buffer_full, align 8, !tbaa !72
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %2 = load ptr, ptr %coef, align 8, !tbaa !74
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %decompress_data, align 8, !tbaa !75
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %whichptr, align 8, !tbaa !69
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 4, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !29
  %call = tail call i32 %3(ptr noundef nonnull %cinfo, ptr noundef %5) #2
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i32 1, ptr %buffer_full, align 8, !tbaa !72
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %iMCU_row_ctr, align 4, !tbaa !71
  %inc = add i32 %6, 1
  store i32 %inc, ptr %iMCU_row_ctr, align 4, !tbaa !71
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %context_state, align 4, !tbaa !70
  switch i32 %7, label %cleanup [
    i32 2, label %sw.bb
    i32 0, label %sw.bb18
    i32 1, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end5
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 76
  %8 = load ptr, ptr %post, align 8, !tbaa !77
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %post_process_data, align 8, !tbaa !78
  %whichptr7 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %whichptr7, align 8, !tbaa !69
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 4, i64 %idxprom8
  %11 = load ptr, ptr %arrayidx9, align 8, !tbaa !29
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 3
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %rowgroups_avail, align 8, !tbaa !80
  tail call void %9(ptr noundef nonnull %cinfo, ptr noundef %11, ptr noundef nonnull %rowgroup_ctr, i32 noundef %12, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #2
  %13 = load i32, ptr %rowgroup_ctr, align 4, !tbaa !73
  %14 = load i32, ptr %rowgroups_avail, align 8, !tbaa !80
  %cmp = icmp ult i32 %13, %14
  br i1 %cmp, label %cleanup, label %if.end13

if.end13:                                         ; preds = %sw.bb
  store i32 0, ptr %context_state, align 4, !tbaa !70
  %15 = load i32, ptr %out_row_ctr, align 4, !tbaa !81
  %cmp15.not = icmp ult i32 %15, %out_rows_avail
  br i1 %cmp15.not, label %sw.bb18, label %cleanup

sw.bb18:                                          ; preds = %if.end13, %if.end5
  %rowgroup_ctr19 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 3
  store i32 0, ptr %rowgroup_ctr19, align 4, !tbaa !73
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %16 = load i32, ptr %min_DCT_scaled_size, align 4, !tbaa !27
  %sub = add nsw i32 %16, -1
  %rowgroups_avail20 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 7
  store i32 %sub, ptr %rowgroups_avail20, align 8, !tbaa !80
  %iMCU_row_ctr21 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %iMCU_row_ctr21, align 4, !tbaa !71
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 60
  %18 = load i32, ptr %total_iMCU_rows, align 8, !tbaa !82
  %cmp22 = icmp eq i32 %17, %18
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb18
  %num_components.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %19 = load i32, ptr %num_components.i, align 8, !tbaa !28
  %cmp44.i = icmp sgt i32 %19, 0
  br i1 %cmp44.i, label %for.body.lr.ph.i, label %if.end24

for.body.lr.ph.i:                                 ; preds = %if.then23
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %20 = load ptr, ptr %comp_info.i, align 8, !tbaa !30
  %21 = load ptr, ptr %main1, align 8, !tbaa !16
  %rowgroups_avail.i = getelementptr inbounds %struct.my_main_controller, ptr %21, i64 0, i32 7
  %whichptr.i = getelementptr inbounds %struct.my_main_controller, ptr %21, i64 0, i32 5
  %22 = load i32, ptr %whichptr.i, align 8, !tbaa !69
  %idxprom.i = sext i32 %22 to i64
  %arrayidx.i = getelementptr inbounds %struct.my_main_controller, ptr %21, i64 0, i32 4, i64 %idxprom.i
  %wide.trip.count52.i = zext i32 %19 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i, %for.body.lr.ph.i
  %indvars.iv49.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next50.i, %for.inc19.i ]
  %compptr.045.i = phi ptr [ %20, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc19.i ]
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.045.i, i64 0, i32 3
  %23 = load i32, ptr %v_samp_factor.i, align 4, !tbaa !31
  %DCT_scaled_size.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.045.i, i64 0, i32 9
  %24 = load i32, ptr %DCT_scaled_size.i, align 4, !tbaa !33
  %mul.i = mul nsw i32 %24, %23
  %div.i = sdiv i32 %mul.i, %16
  %downsampled_height.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.045.i, i64 0, i32 11
  %25 = load i32, ptr %downsampled_height.i, align 4, !tbaa !83
  %rem.i = urem i32 %25, %mul.i
  %cmp2.i = icmp eq i32 %rem.i, 0
  %spec.select.i = select i1 %cmp2.i, i32 %mul.i, i32 %rem.i
  %cmp3.i = icmp eq i64 %indvars.iv49.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %for.body.i
  %sub.i = add nsw i32 %spec.select.i, -1
  %div5.i = sdiv i32 %sub.i, %div.i
  %add.i = add nsw i32 %div5.i, 1
  store i32 %add.i, ptr %rowgroups_avail.i, align 8, !tbaa !80
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %for.body.i
  %26 = load ptr, ptr %arrayidx.i, align 8, !tbaa !29
  %arrayidx8.i = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv49.i
  %27 = load ptr, ptr %arrayidx8.i, align 8, !tbaa !29
  %cmp1142.i = icmp sgt i32 %div.i, 0
  br i1 %cmp1142.i, label %for.body12.lr.ph.i, label %for.inc19.i

for.body12.lr.ph.i:                               ; preds = %if.end6.i
  %mul10.i = shl nuw i32 %div.i, 1
  %sub13.i = add nsw i32 %spec.select.i, -1
  %idxprom14.i = sext i32 %sub13.i to i64
  %arrayidx15.i = getelementptr inbounds ptr, ptr %27, i64 %idxprom14.i
  %28 = sext i32 %spec.select.i to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %mul10.i, i32 1) #2
  %wide.trip.count.i = zext i32 %smax.i to i64
  %29 = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %wide.trip.count.i, 3
  %30 = icmp ult i64 %29, 3
  br i1 %30, label %for.inc19.i.loopexit.unr-lcssa, label %for.body12.lr.ph.i.new

for.body12.lr.ph.i.new:                           ; preds = %for.body12.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body12.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body12.i ]
  %niter = phi i64 [ 0, %for.body12.lr.ph.i.new ], [ %niter.next.3, %for.body12.i ]
  %31 = load ptr, ptr %arrayidx15.i, align 8, !tbaa !29
  %32 = add nsw i64 %indvars.iv.i, %28
  %arrayidx18.i = getelementptr inbounds ptr, ptr %27, i64 %32
  store ptr %31, ptr %arrayidx18.i, align 8, !tbaa !29
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %33 = load ptr, ptr %arrayidx15.i, align 8, !tbaa !29
  %34 = add nsw i64 %indvars.iv.next.i, %28
  %arrayidx18.i.1 = getelementptr inbounds ptr, ptr %27, i64 %34
  store ptr %33, ptr %arrayidx18.i.1, align 8, !tbaa !29
  %indvars.iv.next.i.1 = or i64 %indvars.iv.i, 2
  %35 = load ptr, ptr %arrayidx15.i, align 8, !tbaa !29
  %36 = add nsw i64 %indvars.iv.next.i.1, %28
  %arrayidx18.i.2 = getelementptr inbounds ptr, ptr %27, i64 %36
  store ptr %35, ptr %arrayidx18.i.2, align 8, !tbaa !29
  %indvars.iv.next.i.2 = or i64 %indvars.iv.i, 3
  %37 = load ptr, ptr %arrayidx15.i, align 8, !tbaa !29
  %38 = add nsw i64 %indvars.iv.next.i.2, %28
  %arrayidx18.i.3 = getelementptr inbounds ptr, ptr %27, i64 %38
  store ptr %37, ptr %arrayidx18.i.3, align 8, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.inc19.i.loopexit.unr-lcssa, label %for.body12.i, !llvm.loop !84

for.inc19.i.loopexit.unr-lcssa:                   ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body12.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.inc19.i, label %for.body12.i.epil

for.body12.i.epil:                                ; preds = %for.inc19.i.loopexit.unr-lcssa, %for.body12.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body12.i.epil ], [ %indvars.iv.i.unr, %for.inc19.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body12.i.epil ], [ 0, %for.inc19.i.loopexit.unr-lcssa ]
  %39 = load ptr, ptr %arrayidx15.i, align 8, !tbaa !29
  %40 = add nsw i64 %indvars.iv.i.epil, %28
  %arrayidx18.i.epil = getelementptr inbounds ptr, ptr %27, i64 %40
  store ptr %39, ptr %arrayidx18.i.epil, align 8, !tbaa !29
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.inc19.i, label %for.body12.i.epil, !llvm.loop !85

for.inc19.i:                                      ; preds = %for.inc19.i.loopexit.unr-lcssa, %for.body12.i.epil, %if.end6.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  %incdec.ptr.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.045.i, i64 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %if.end24, label %for.body.i, !llvm.loop !86

if.end24:                                         ; preds = %for.inc19.i, %if.then23, %sw.bb18
  store i32 1, ptr %context_state, align 4, !tbaa !70
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end5, %if.end24
  %post27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 76
  %41 = load ptr, ptr %post27, align 8, !tbaa !77
  %post_process_data28 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %41, i64 0, i32 1
  %42 = load ptr, ptr %post_process_data28, align 8, !tbaa !78
  %whichptr30 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 5
  %43 = load i32, ptr %whichptr30, align 8, !tbaa !69
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 4, i64 %idxprom31
  %44 = load ptr, ptr %arrayidx32, align 8, !tbaa !29
  %rowgroup_ctr33 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 3
  %rowgroups_avail34 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 7
  %45 = load i32, ptr %rowgroups_avail34, align 8, !tbaa !80
  tail call void %42(ptr noundef %cinfo, ptr noundef %44, ptr noundef nonnull %rowgroup_ctr33, i32 noundef %45, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #2
  %46 = load i32, ptr %rowgroup_ctr33, align 4, !tbaa !73
  %47 = load i32, ptr %rowgroups_avail34, align 8, !tbaa !80
  %cmp37 = icmp ult i32 %46, %47
  br i1 %cmp37, label %cleanup, label %if.end39

if.end39:                                         ; preds = %sw.bb26
  %iMCU_row_ctr40 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %iMCU_row_ctr40, align 4, !tbaa !71
  %cmp41 = icmp eq i32 %48, 1
  %min_DCT_scaled_size.i97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %49 = load i32, ptr %min_DCT_scaled_size.i97, align 4, !tbaa !27
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  %num_components.i98 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %50 = load i32, ptr %num_components.i98, align 8, !tbaa !28
  %cmp78.i = icmp sgt i32 %50, 0
  br i1 %cmp78.i, label %for.body.lr.ph.i102, label %if.end43

for.body.lr.ph.i102:                              ; preds = %if.then42
  %comp_info.i99 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %51 = load ptr, ptr %comp_info.i99, align 8, !tbaa !30
  %52 = load ptr, ptr %main1, align 8, !tbaa !16
  %xbuffer.i = getelementptr inbounds %struct.my_main_controller, ptr %52, i64 0, i32 4
  %arrayidx5.i = getelementptr inbounds %struct.my_main_controller, ptr %52, i64 0, i32 4, i64 1
  %add.i101 = add nsw i32 %49, 1
  %add27.i = add nsw i32 %49, 2
  %wide.trip.count88.i = zext i32 %50 to i64
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.inc39.i, %for.body.lr.ph.i102
  %indvars.iv85.i = phi i64 [ 0, %for.body.lr.ph.i102 ], [ %indvars.iv.next86.i, %for.inc39.i ]
  %compptr.079.i = phi ptr [ %51, %for.body.lr.ph.i102 ], [ %incdec.ptr.i112, %for.inc39.i ]
  %v_samp_factor.i103 = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.079.i, i64 0, i32 3
  %53 = load i32, ptr %v_samp_factor.i103, align 4, !tbaa !31
  %DCT_scaled_size.i104 = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.079.i, i64 0, i32 9
  %54 = load i32, ptr %DCT_scaled_size.i104, align 4, !tbaa !33
  %mul.i105 = mul nsw i32 %54, %53
  %div.i106 = sdiv i32 %mul.i105, %49
  %55 = load ptr, ptr %xbuffer.i, align 8, !tbaa !29
  %arrayidx3.i = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv85.i
  %56 = load ptr, ptr %arrayidx3.i, align 8, !tbaa !29
  %57 = load ptr, ptr %arrayidx5.i, align 8, !tbaa !29
  %arrayidx7.i = getelementptr inbounds ptr, ptr %57, i64 %indvars.iv85.i
  %58 = load ptr, ptr %arrayidx7.i, align 8, !tbaa !29
  %cmp976.i = icmp sgt i32 %div.i106, 0
  br i1 %cmp976.i, label %for.body10.lr.ph.i, label %for.inc39.i

for.body10.lr.ph.i:                               ; preds = %for.body.i107
  %mul11.i = mul nsw i32 %div.i106, %add.i101
  %mul28.i = mul nsw i32 %div.i106, %add27.i
  %59 = sext i32 %mul11.i to i64
  %60 = zext i32 %div.i106 to i64
  %61 = sext i32 %mul28.i to i64
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i, %for.body10.lr.ph.i
  %indvars.iv.i109 = phi i64 [ 0, %for.body10.lr.ph.i ], [ %indvars.iv.next.i110, %for.body10.i ]
  %62 = add nsw i64 %indvars.iv.i109, %59
  %arrayidx14.i = getelementptr inbounds ptr, ptr %56, i64 %62
  %63 = load ptr, ptr %arrayidx14.i, align 8, !tbaa !29
  %64 = sub nsw i64 %indvars.iv.i109, %60
  %arrayidx16.i = getelementptr inbounds ptr, ptr %56, i64 %64
  store ptr %63, ptr %arrayidx16.i, align 8, !tbaa !29
  %arrayidx21.i = getelementptr inbounds ptr, ptr %58, i64 %62
  %65 = load ptr, ptr %arrayidx21.i, align 8, !tbaa !29
  %arrayidx24.i = getelementptr inbounds ptr, ptr %58, i64 %64
  store ptr %65, ptr %arrayidx24.i, align 8, !tbaa !29
  %arrayidx26.i = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv.i109
  %66 = load ptr, ptr %arrayidx26.i, align 8, !tbaa !29
  %67 = add nsw i64 %indvars.iv.i109, %61
  %arrayidx31.i = getelementptr inbounds ptr, ptr %56, i64 %67
  store ptr %66, ptr %arrayidx31.i, align 8, !tbaa !29
  %arrayidx33.i = getelementptr inbounds ptr, ptr %58, i64 %indvars.iv.i109
  %68 = load ptr, ptr %arrayidx33.i, align 8, !tbaa !29
  %arrayidx38.i = getelementptr inbounds ptr, ptr %58, i64 %67
  store ptr %68, ptr %arrayidx38.i, align 8, !tbaa !29
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 1
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i110, %60
  br i1 %exitcond.not.i111, label %for.inc39.i, label %for.body10.i, !llvm.loop !87

for.inc39.i:                                      ; preds = %for.body10.i, %for.body.i107
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1
  %incdec.ptr.i112 = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.079.i, i64 1
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count88.i
  br i1 %exitcond89.not.i, label %if.end43, label %for.body.i107, !llvm.loop !88

if.end43:                                         ; preds = %for.inc39.i, %if.end39, %if.then42
  %69 = load i32, ptr %whichptr30, align 8, !tbaa !69
  %xor = xor i32 %69, 1
  store i32 %xor, ptr %whichptr30, align 8, !tbaa !69
  store i32 0, ptr %buffer_full, align 8, !tbaa !72
  %add = add nsw i32 %49, 1
  store i32 %add, ptr %rowgroup_ctr33, align 4, !tbaa !73
  %add49 = add nsw i32 %49, 2
  store i32 %add49, ptr %rowgroups_avail34, align 8, !tbaa !80
  store i32 2, ptr %context_state, align 4, !tbaa !70
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end43, %sw.bb26, %if.end13, %sw.bb, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8, !tbaa !16
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %buffer_full, align 8, !tbaa !72
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %2 = load ptr, ptr %coef, align 8, !tbaa !74
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %decompress_data, align 8, !tbaa !75
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 1
  %call = tail call i32 %3(ptr noundef nonnull %cinfo, ptr noundef nonnull %buffer) #2
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i32 1, ptr %buffer_full, align 8, !tbaa !72
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %4 = load i32, ptr %min_DCT_scaled_size, align 4, !tbaa !27
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 76
  %5 = load ptr, ptr %post, align 8, !tbaa !77
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %post_process_data, align 8, !tbaa !78
  %buffer6 = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 3
  tail call void %6(ptr noundef nonnull %cinfo, ptr noundef nonnull %buffer6, ptr noundef nonnull %rowgroup_ctr, i32 noundef %4, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #2
  %7 = load i32, ptr %rowgroup_ctr, align 4, !tbaa !73
  %cmp.not = icmp ult i32 %7, %4
  br i1 %cmp.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end5
  store i32 0, ptr %buffer_full, align 8, !tbaa !72
  store i32 0, ptr %rowgroup_ctr, align 4, !tbaa !73
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_crank_post(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 76
  %0 = load ptr, ptr %post, align 8, !tbaa !77
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %post_process_data, align 8, !tbaa !78
  tail call void %1(ptr noundef %cinfo, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

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
!16 = !{!6, !7, i64 536}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 16, !10, i64 96, !10, i64 100, !8, i64 104, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132}
!19 = !{!"jpeg_d_main_controller", !7, i64 0, !7, i64 8}
!20 = !{!6, !7, i64 0}
!21 = !{!22, !10, i64 40}
!22 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!23 = !{!22, !7, i64 0}
!24 = !{!6, !7, i64 592}
!25 = !{!26, !10, i64 16}
!26 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!27 = !{!6, !10, i64 396}
!28 = !{!6, !10, i64 48}
!29 = !{!7, !7, i64 0}
!30 = !{!6, !7, i64 296}
!31 = !{!32, !10, i64 12}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!32, !10, i64 36}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!14, !7, i64 16}
!37 = !{!32, !10, i64 28}
!38 = distinct !{!38, !35}
!39 = !{!18, !7, i64 8}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = !{!46, !41}
!46 = distinct !{!46, !42}
!47 = !{!46}
!48 = distinct !{!48, !35, !49}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = !{!58, !53, !59}
!58 = distinct !{!58, !54}
!59 = distinct !{!59, !54}
!60 = !{!59}
!61 = !{!58}
!62 = !{!53, !59}
!63 = distinct !{!63, !35, !49}
!64 = distinct !{!64, !35, !49}
!65 = distinct !{!65, !35, !49}
!66 = distinct !{!66, !35}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !35}
!69 = !{!18, !10, i64 120}
!70 = !{!18, !10, i64 124}
!71 = !{!18, !10, i64 132}
!72 = !{!18, !10, i64 96}
!73 = !{!18, !10, i64 100}
!74 = !{!6, !7, i64 544}
!75 = !{!76, !7, i64 24}
!76 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!77 = !{!6, !7, i64 552}
!78 = !{!79, !7, i64 8}
!79 = !{!"jpeg_d_post_controller", !7, i64 0, !7, i64 8}
!80 = !{!18, !10, i64 128}
!81 = !{!10, !10, i64 0}
!82 = !{!6, !10, i64 400}
!83 = !{!32, !10, i64 44}
!84 = distinct !{!84, !35}
!85 = distinct !{!85, !51}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !35}
