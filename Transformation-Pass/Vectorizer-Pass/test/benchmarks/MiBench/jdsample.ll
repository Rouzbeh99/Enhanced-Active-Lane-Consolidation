; ModuleID = 'jdsample.c'
source_filename = "jdsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x ptr], [10 x ptr], i32, i32, [10 x i32], [10 x i8], [10 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_color_deconverter = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_upsampler(ptr noundef %cinfo) local_unnamed_addr #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !13
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 256) #7
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  store ptr %call, ptr %upsample1, align 8, !tbaa !16
  store ptr @start_pass_upsample, ptr %call, align 8, !tbaa !17
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, ptr %call, i64 0, i32 1
  store ptr @sep_upsample, ptr %upsample3, align 8, !tbaa !20
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %call, i64 0, i32 2
  store i32 0, ptr %need_context_rows, align 8, !tbaa !21
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 56
  %2 = load i32, ptr %CCIR601_sampling, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 23, ptr %msg_code, align 8, !tbaa !24
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  tail call void %4(ptr noundef nonnull %cinfo) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 17
  %5 = load i32, ptr %do_fancy_upsampling, align 4, !tbaa !27
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %6 = load i32, ptr %min_DCT_scaled_size, align 4, !tbaa !28
  %cmp = icmp sgt i32 %6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ]
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %8 = load i32, ptr %num_components, align 8, !tbaa !29
  %cmp7183 = icmp sgt i32 %8, 0
  br i1 %cmp7183, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %land.end
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %9 = load ptr, ptr %comp_info, align 8, !tbaa !30
  %min_DCT_scaled_size8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 57
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %compptr.0184 = phi ptr [ %9, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 0, i32 2
  %10 = load i32, ptr %h_samp_factor, align 8, !tbaa !31
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 0, i32 9
  %11 = load i32, ptr %DCT_scaled_size, align 4, !tbaa !33
  %mul = mul nsw i32 %11, %10
  %12 = load i32, ptr %min_DCT_scaled_size8, align 4, !tbaa !28
  %div = sdiv i32 %mul, %12
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 0, i32 3
  %13 = load i32, ptr %v_samp_factor, align 4, !tbaa !34
  %mul10 = mul nsw i32 %13, %11
  %div12 = sdiv i32 %mul10, %12
  %14 = load i32, ptr %max_h_samp_factor, align 4, !tbaa !35
  %15 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 5, i64 %indvars.iv
  store i32 %div12, ptr %arrayidx, align 4, !tbaa !37
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 0, i32 12
  %16 = load i32, ptr %component_needed, align 8, !tbaa !38
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body
  %arrayidx16 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @noop_upsample, ptr %arrayidx16, align 8, !tbaa !39
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp17 = icmp eq i32 %div, %14
  %cmp18 = icmp eq i32 %div12, %15
  %or.cond = select i1 %cmp17, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else
  %arrayidx22 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @fullsize_upsample, ptr %arrayidx22, align 8, !tbaa !39
  br label %for.inc

if.else23:                                        ; preds = %if.else
  %mul24 = shl nsw i32 %div, 1
  %cmp25 = icmp eq i32 %mul24, %14
  %or.cond176 = select i1 %cmp25, i1 %cmp18, i1 false
  br i1 %or.cond176, label %if.then28, label %if.else41

if.then28:                                        ; preds = %if.else23
  br i1 %7, label %land.lhs.true30, label %if.else36

land.lhs.true30:                                  ; preds = %if.then28
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 0, i32 10
  %17 = load i32, ptr %downsampled_width, align 8, !tbaa !40
  %cmp31 = icmp ugt i32 %17, 2
  br i1 %cmp31, label %if.then32, label %if.else36

if.then32:                                        ; preds = %land.lhs.true30
  %arrayidx35 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @h2v1_fancy_upsample, ptr %arrayidx35, align 8, !tbaa !39
  br label %if.then90

if.else36:                                        ; preds = %land.lhs.true30, %if.then28
  %arrayidx39 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @h2v1_upsample, ptr %arrayidx39, align 8, !tbaa !39
  br label %if.then90

if.else41:                                        ; preds = %if.else23
  %mul45 = shl nsw i32 %div12, 1
  %cmp46 = icmp eq i32 %mul45, %15
  %or.cond177 = select i1 %cmp25, i1 %cmp46, i1 false
  br i1 %or.cond177, label %if.then47, label %if.else63

if.then47:                                        ; preds = %if.else41
  br i1 %7, label %land.lhs.true49, label %if.else58

land.lhs.true49:                                  ; preds = %if.then47
  %downsampled_width50 = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 0, i32 10
  %18 = load i32, ptr %downsampled_width50, align 8, !tbaa !40
  %cmp51 = icmp ugt i32 %18, 2
  br i1 %cmp51, label %if.then52, label %if.else58

if.then52:                                        ; preds = %land.lhs.true49
  %arrayidx55 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @h2v2_fancy_upsample, ptr %arrayidx55, align 8, !tbaa !39
  store i32 1, ptr %need_context_rows, align 8, !tbaa !21
  br label %if.then90

if.else58:                                        ; preds = %land.lhs.true49, %if.then47
  %arrayidx61 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @h2v2_upsample, ptr %arrayidx61, align 8, !tbaa !39
  br label %if.then90

if.else63:                                        ; preds = %if.else41
  %rem = srem i32 %14, %div
  %div72 = sdiv i32 %14, %div
  %cmp64 = icmp eq i32 %rem, 0
  br i1 %cmp64, label %land.lhs.true65, label %if.else79

land.lhs.true65:                                  ; preds = %if.else63
  %rem66 = srem i32 %15, %div12
  %div75 = sdiv i32 %15, %div12
  %cmp67 = icmp eq i32 %rem66, 0
  br i1 %cmp67, label %if.then68, label %if.else79

if.then68:                                        ; preds = %land.lhs.true65
  %arrayidx71 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 2, i64 %indvars.iv
  store ptr @int_upsample, ptr %arrayidx71, align 8, !tbaa !39
  %conv = trunc i32 %div72 to i8
  %arrayidx74 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 6, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx74, align 1, !tbaa !41
  %conv76 = trunc i32 %div75 to i8
  %arrayidx78 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 7, i64 %indvars.iv
  store i8 %conv76, ptr %arrayidx78, align 1, !tbaa !41
  br label %if.then90

if.else79:                                        ; preds = %land.lhs.true65, %if.else63
  %19 = load ptr, ptr %cinfo, align 8, !tbaa !23
  %msg_code81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 37, ptr %msg_code81, align 8, !tbaa !24
  %20 = load ptr, ptr %19, align 8, !tbaa !26
  tail call void %20(ptr noundef nonnull %cinfo) #7
  br label %if.then90

if.then90:                                        ; preds = %if.else36, %if.then32, %if.then68, %if.else79, %if.then52, %if.else58
  %21 = load ptr, ptr %mem, align 8, !tbaa !5
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %21, i64 0, i32 2
  %22 = load ptr, ptr %alloc_sarray, align 8, !tbaa !42
  %23 = load i32, ptr %output_width, align 8, !tbaa !43
  %conv92 = zext i32 %23 to i64
  %24 = load i32, ptr %max_h_samp_factor, align 4, !tbaa !35
  %conv94 = sext i32 %24 to i64
  %call95 = tail call i64 @jround_up(i64 noundef %conv92, i64 noundef %conv94) #7
  %conv96 = trunc i64 %call95 to i32
  %25 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %call98 = tail call ptr %22(ptr noundef nonnull %cinfo, i32 noundef 1, i32 noundef %conv96, i32 noundef %25) #7
  %arrayidx100 = getelementptr inbounds %struct.my_upsampler, ptr %call, i64 0, i32 1, i64 %indvars.iv
  store ptr %call98, ptr %arrayidx100, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.then19, %if.then90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0184, i64 1
  %26 = load i32, ptr %num_components, align 8, !tbaa !29
  %27 = sext i32 %26 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next, %27
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !44

for.end:                                          ; preds = %for.inc, %land.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @start_pass_upsample(ptr nocapture noundef readonly %cinfo) #1 {
entry:
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8, !tbaa !16
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %1 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %next_row_out = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 3
  store i32 %1, ptr %next_row_out, align 8, !tbaa !46
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 27
  %2 = load i32, ptr %output_height, align 4, !tbaa !47
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 4
  store i32 %2, ptr %rows_to_go, align 4, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sep_upsample(ptr noundef %cinfo, ptr nocapture noundef readonly %input_buf, ptr nocapture noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr nocapture noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8, !tbaa !16
  %next_row_out = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %next_row_out, align 8, !tbaa !46
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %2 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp.not = icmp slt i32 %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %3 = load i32, ptr %num_components, align 8, !tbaa !29
  %cmp272 = icmp sgt i32 %3, 0
  br i1 %cmp272, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %4 = load ptr, ptr %comp_info, align 8, !tbaa !30
  %color_buf = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %compptr.074 = phi ptr [ %4, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %arrayidx = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 2, i64 %indvars.iv
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !39
  %arrayidx4 = getelementptr inbounds ptr, ptr %input_buf, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx4, align 8, !tbaa !39
  %7 = load i32, ptr %in_row_group_ctr, align 4, !tbaa !37
  %arrayidx6 = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 5, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx6, align 4, !tbaa !37
  %mul = mul i32 %8, %7
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  %add.ptr8 = getelementptr inbounds ptr, ptr %color_buf, i64 %indvars.iv
  tail call void %5(ptr noundef nonnull %cinfo, ptr noundef %compptr.074, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr8) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.074, i64 1
  %9 = load i32, ptr %num_components, align 8, !tbaa !29
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp2, label %for.body, label %for.end.loopexit, !llvm.loop !49

for.end.loopexit:                                 ; preds = %for.body
  %.pre.pre = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then
  %.pre = phi i32 [ %.pre.pre, %for.end.loopexit ], [ %2, %if.then ]
  store i32 0, ptr %next_row_out, align 8, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %11 = phi i32 [ 0, %for.end ], [ %1, %entry ]
  %12 = phi i32 [ %.pre, %for.end ], [ %2, %entry ]
  %sub = sub nsw i32 %12, %11
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %rows_to_go, align 4, !tbaa !48
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %13)
  %15 = load i32, ptr %out_row_ctr, align 4, !tbaa !37
  %sub16 = sub i32 %out_rows_avail, %15
  %16 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub16)
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 82
  %17 = load ptr, ptr %cconvert, align 8, !tbaa !50
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %color_convert, align 8, !tbaa !51
  %color_buf20 = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 1
  %idx.ext23 = zext i32 %15 to i64
  %add.ptr24 = getelementptr inbounds ptr, ptr %output_buf, i64 %idx.ext23
  tail call void %18(ptr noundef nonnull %cinfo, ptr noundef nonnull %color_buf20, i32 noundef %11, ptr noundef %add.ptr24, i32 noundef %16) #7
  %19 = load i32, ptr %out_row_ctr, align 4, !tbaa !37
  %add = add i32 %19, %16
  store i32 %add, ptr %out_row_ctr, align 4, !tbaa !37
  %20 = load i32, ptr %rows_to_go, align 4, !tbaa !48
  %sub26 = sub i32 %20, %16
  store i32 %sub26, ptr %rows_to_go, align 4, !tbaa !48
  %21 = load i32, ptr %next_row_out, align 8, !tbaa !46
  %add28 = add i32 %21, %16
  store i32 %add28, ptr %next_row_out, align 8, !tbaa !46
  %22 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp31.not = icmp slt i32 %add28, %22
  br i1 %cmp31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end
  %23 = load i32, ptr %in_row_group_ctr, align 4, !tbaa !37
  %inc33 = add i32 %23, 1
  store i32 %inc33, ptr %in_row_group_ctr, align 4, !tbaa !37
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @noop_upsample(ptr nocapture noundef readnone %cinfo, ptr nocapture noundef readnone %compptr, ptr nocapture noundef readnone %input_data, ptr nocapture noundef writeonly %output_data_ptr) #2 {
entry:
  store ptr null, ptr %output_data_ptr, align 8, !tbaa !39
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @fullsize_upsample(ptr nocapture noundef readnone %cinfo, ptr nocapture noundef readnone %compptr, ptr noundef %input_data, ptr nocapture noundef writeonly %output_data_ptr) #2 {
entry:
  store ptr %input_data, ptr %output_data_ptr, align 8, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @h2v1_fancy_upsample(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %compptr, ptr nocapture noundef readonly %input_data, ptr nocapture noundef readonly %output_data_ptr) #3 {
entry:
  %0 = load ptr, ptr %output_data_ptr, align 8, !tbaa !39
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %1 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp70 = icmp sgt i32 %1, 0
  br i1 %cmp70, label %for.body.lr.ph, label %for.end41

for.body.lr.ph:                                   ; preds = %entry
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %arrayidx = getelementptr inbounds ptr, ptr %input_data, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !39
  %arrayidx2 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx2, align 8, !tbaa !39
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  %4 = load i8, ptr %2, align 1, !tbaa !41
  %conv = zext i8 %4 to i16
  %incdec.ptr4 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %4, ptr %3, align 1, !tbaa !41
  %mul = mul nuw nsw i16 %conv, 3
  %5 = load i8, ptr %incdec.ptr, align 1, !tbaa !41
  %conv5 = zext i8 %5 to i16
  %add = add nuw nsw i16 %mul, 2
  %add6 = add nuw nsw i16 %add, %conv5
  %6 = lshr i16 %add6, 2
  %conv7 = trunc i16 %6 to i8
  store i8 %conv7, ptr %incdec.ptr4, align 1, !tbaa !41
  %7 = load i32, ptr %downsampled_width, align 8, !tbaa !40
  %sub = add i32 %7, -2
  %outptr.062 = getelementptr i8, ptr %3, i64 2
  %cmp10.not63 = icmp eq i32 %sub, 0
  br i1 %cmp10.not63, label %for.end, label %for.body12.preheader

for.body12.preheader:                             ; preds = %for.body
  %8 = add i32 %7, -3
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  %min.iters.check = icmp ult i32 %8, 7
  br i1 %min.iters.check, label %for.body12.preheader89, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body12.preheader
  %uglygep = getelementptr i8, ptr %3, i64 4
  %11 = add i32 %7, -3
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  %uglygep76 = getelementptr i8, ptr %uglygep, i64 %13
  %uglygep77 = getelementptr i8, ptr %2, i64 3
  %uglygep78 = getelementptr i8, ptr %uglygep77, i64 %12
  %bound0 = icmp ult ptr %outptr.062, %uglygep78
  %bound1 = icmp ult ptr %2, %uglygep76
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body12.preheader89, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %10, 8589934584
  %14 = shl nuw nsw i64 %n.vec, 1
  %ind.end = getelementptr i8, ptr %outptr.062, i64 %14
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end80 = sub i32 %sub, %cast.crd
  %15 = shl nuw nsw i64 %n.vec, 1
  %ind.end82 = getelementptr i8, ptr %3, i64 %15
  %ind.end84 = getelementptr i8, ptr %incdec.ptr, i64 %n.vec
  %16 = getelementptr i8, ptr %3, i64 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %17 = shl i64 %index, 1
  %next.gep86 = getelementptr i8, ptr %incdec.ptr, i64 %index
  %18 = getelementptr inbounds i8, ptr %next.gep86, i64 1
  %wide.load = load <8 x i8>, ptr %next.gep86, align 1, !tbaa !41, !alias.scope !53
  %19 = zext <8 x i8> %wide.load to <8 x i32>
  %20 = mul nuw nsw <8 x i32> %19, <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %21 = getelementptr inbounds i8, ptr %next.gep86, i64 -1
  %wide.load87 = load <8 x i8>, ptr %21, align 1, !tbaa !41, !alias.scope !53
  %22 = zext <8 x i8> %wide.load87 to <8 x i32>
  %23 = add nuw nsw <8 x i32> %22, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %24 = add nuw nsw <8 x i32> %23, %20
  %25 = lshr <8 x i32> %24, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %26 = trunc <8 x i32> %25 to <8 x i8>
  %wide.load88 = load <8 x i8>, ptr %18, align 1, !tbaa !41, !alias.scope !53
  %27 = zext <8 x i8> %wide.load88 to <8 x i32>
  %28 = add nuw nsw <8 x i32> %20, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %29 = add nuw nsw <8 x i32> %28, %27
  %30 = lshr <8 x i32> %29, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %31 = trunc <8 x i32> %30 to <8 x i8>
  %32 = getelementptr inbounds i8, ptr %16, i64 %17
  %interleaved.vec = shufflevector <8 x i8> %26, <8 x i8> %31, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %32, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 8
  %33 = icmp eq i64 %index.next, %n.vec
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  %cast.cmo = shl nuw nsw i64 %n.vec, 1
  %ind.escape = getelementptr i8, ptr %3, i64 %cast.cmo
  br i1 %cmp.n, label %for.end, label %for.body12.preheader89

for.body12.preheader89:                           ; preds = %vector.memcheck, %for.body12.preheader, %middle.block
  %outptr.067.ph = phi ptr [ %outptr.062, %vector.memcheck ], [ %outptr.062, %for.body12.preheader ], [ %ind.end, %middle.block ]
  %colctr.066.ph = phi i32 [ %sub, %vector.memcheck ], [ %sub, %for.body12.preheader ], [ %ind.end80, %middle.block ]
  %.pn65.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %for.body12.preheader ], [ %ind.end82, %middle.block ]
  %inptr.064.ph = phi ptr [ %incdec.ptr, %vector.memcheck ], [ %incdec.ptr, %for.body12.preheader ], [ %ind.end84, %middle.block ]
  %xtraiter = and i32 %colctr.066.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body12.prol.loopexit, label %for.body12.prol

for.body12.prol:                                  ; preds = %for.body12.preheader89
  %incdec.ptr13.prol = getelementptr inbounds i8, ptr %inptr.064.ph, i64 1
  %34 = load i8, ptr %inptr.064.ph, align 1, !tbaa !41
  %conv14.prol = zext i8 %34 to i32
  %mul15.prol = mul nuw nsw i32 %conv14.prol, 3
  %arrayidx16.prol = getelementptr inbounds i8, ptr %inptr.064.ph, i64 -1
  %35 = load i8, ptr %arrayidx16.prol, align 1, !tbaa !41
  %conv17.prol = zext i8 %35 to i32
  %add18.prol = add nuw nsw i32 %conv17.prol, 1
  %add19.prol = add nuw nsw i32 %add18.prol, %mul15.prol
  %36 = lshr i32 %add19.prol, 2
  %conv21.prol = trunc i32 %36 to i8
  %incdec.ptr22.prol = getelementptr inbounds i8, ptr %.pn65.ph, i64 3
  store i8 %conv21.prol, ptr %outptr.067.ph, align 1, !tbaa !41
  %37 = load i8, ptr %incdec.ptr13.prol, align 1, !tbaa !41
  %conv23.prol = zext i8 %37 to i32
  %add24.prol = add nuw nsw i32 %mul15.prol, 2
  %add25.prol = add nuw nsw i32 %add24.prol, %conv23.prol
  %38 = lshr i32 %add25.prol, 2
  %conv27.prol = trunc i32 %38 to i8
  store i8 %conv27.prol, ptr %incdec.ptr22.prol, align 1, !tbaa !41
  %dec.prol = add i32 %colctr.066.ph, -1
  %outptr.0.prol = getelementptr inbounds i8, ptr %outptr.067.ph, i64 2
  br label %for.body12.prol.loopexit

for.body12.prol.loopexit:                         ; preds = %for.body12.prol, %for.body12.preheader89
  %incdec.ptr13.lcssa.unr = phi ptr [ undef, %for.body12.preheader89 ], [ %incdec.ptr13.prol, %for.body12.prol ]
  %outptr.0.lcssa90.unr = phi ptr [ undef, %for.body12.preheader89 ], [ %outptr.0.prol, %for.body12.prol ]
  %outptr.067.unr = phi ptr [ %outptr.067.ph, %for.body12.preheader89 ], [ %outptr.0.prol, %for.body12.prol ]
  %colctr.066.unr = phi i32 [ %colctr.066.ph, %for.body12.preheader89 ], [ %dec.prol, %for.body12.prol ]
  %.pn65.unr = phi ptr [ %.pn65.ph, %for.body12.preheader89 ], [ %outptr.067.ph, %for.body12.prol ]
  %inptr.064.unr = phi ptr [ %inptr.064.ph, %for.body12.preheader89 ], [ %incdec.ptr13.prol, %for.body12.prol ]
  %39 = icmp eq i32 %colctr.066.ph, 1
  br i1 %39, label %for.end, label %for.body12

for.body12:                                       ; preds = %for.body12.prol.loopexit, %for.body12
  %outptr.067 = phi ptr [ %outptr.0.1, %for.body12 ], [ %outptr.067.unr, %for.body12.prol.loopexit ]
  %colctr.066 = phi i32 [ %dec.1, %for.body12 ], [ %colctr.066.unr, %for.body12.prol.loopexit ]
  %.pn65 = phi ptr [ %outptr.0, %for.body12 ], [ %.pn65.unr, %for.body12.prol.loopexit ]
  %inptr.064 = phi ptr [ %incdec.ptr13.1, %for.body12 ], [ %inptr.064.unr, %for.body12.prol.loopexit ]
  %incdec.ptr13 = getelementptr inbounds i8, ptr %inptr.064, i64 1
  %40 = load i8, ptr %inptr.064, align 1, !tbaa !41
  %conv14 = zext i8 %40 to i32
  %mul15 = mul nuw nsw i32 %conv14, 3
  %arrayidx16 = getelementptr inbounds i8, ptr %inptr.064, i64 -1
  %41 = load i8, ptr %arrayidx16, align 1, !tbaa !41
  %conv17 = zext i8 %41 to i32
  %add18 = add nuw nsw i32 %conv17, 1
  %add19 = add nuw nsw i32 %add18, %mul15
  %42 = lshr i32 %add19, 2
  %conv21 = trunc i32 %42 to i8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %.pn65, i64 3
  store i8 %conv21, ptr %outptr.067, align 1, !tbaa !41
  %43 = load i8, ptr %incdec.ptr13, align 1, !tbaa !41
  %conv23 = zext i8 %43 to i32
  %add24 = add nuw nsw i32 %mul15, 2
  %add25 = add nuw nsw i32 %add24, %conv23
  %44 = lshr i32 %add25, 2
  %conv27 = trunc i32 %44 to i8
  store i8 %conv27, ptr %incdec.ptr22, align 1, !tbaa !41
  %outptr.0 = getelementptr inbounds i8, ptr %outptr.067, i64 2
  %incdec.ptr13.1 = getelementptr inbounds i8, ptr %inptr.064, i64 2
  %45 = load i8, ptr %incdec.ptr13, align 1, !tbaa !41
  %conv14.1 = zext i8 %45 to i32
  %mul15.1 = mul nuw nsw i32 %conv14.1, 3
  %46 = load i8, ptr %inptr.064, align 1, !tbaa !41
  %conv17.1 = zext i8 %46 to i32
  %add18.1 = add nuw nsw i32 %conv17.1, 1
  %add19.1 = add nuw nsw i32 %add18.1, %mul15.1
  %47 = lshr i32 %add19.1, 2
  %conv21.1 = trunc i32 %47 to i8
  %incdec.ptr22.1 = getelementptr inbounds i8, ptr %outptr.067, i64 3
  store i8 %conv21.1, ptr %outptr.0, align 1, !tbaa !41
  %48 = load i8, ptr %incdec.ptr13.1, align 1, !tbaa !41
  %conv23.1 = zext i8 %48 to i32
  %add24.1 = add nuw nsw i32 %mul15.1, 2
  %add25.1 = add nuw nsw i32 %add24.1, %conv23.1
  %49 = lshr i32 %add25.1, 2
  %conv27.1 = trunc i32 %49 to i8
  store i8 %conv27.1, ptr %incdec.ptr22.1, align 1, !tbaa !41
  %dec.1 = add i32 %colctr.066, -2
  %outptr.0.1 = getelementptr inbounds i8, ptr %outptr.067, i64 4
  %cmp10.not.1 = icmp eq i32 %dec.1, 0
  br i1 %cmp10.not.1, label %for.end, label %for.body12, !llvm.loop !58

for.end:                                          ; preds = %for.body12.prol.loopexit, %for.body12, %middle.block, %for.body
  %inptr.0.lcssa = phi ptr [ %incdec.ptr, %for.body ], [ %ind.end84, %middle.block ], [ %incdec.ptr13.lcssa.unr, %for.body12.prol.loopexit ], [ %incdec.ptr13.1, %for.body12 ]
  %.pn.lcssa = phi ptr [ %3, %for.body ], [ %ind.escape, %middle.block ], [ %outptr.067.ph, %for.body12.prol.loopexit ], [ %outptr.0, %for.body12 ]
  %outptr.0.lcssa = phi ptr [ %outptr.062, %for.body ], [ %ind.end, %middle.block ], [ %outptr.0.lcssa90.unr, %for.body12.prol.loopexit ], [ %outptr.0.1, %for.body12 ]
  %50 = load i8, ptr %inptr.0.lcssa, align 1, !tbaa !41
  %conv29 = zext i8 %50 to i16
  %mul30 = mul nuw nsw i16 %conv29, 3
  %arrayidx31 = getelementptr inbounds i8, ptr %inptr.0.lcssa, i64 -1
  %51 = load i8, ptr %arrayidx31, align 1, !tbaa !41
  %conv32 = zext i8 %51 to i16
  %add33 = add nuw nsw i16 %conv32, 1
  %add34 = add nuw nsw i16 %add33, %mul30
  %52 = lshr i16 %add34, 2
  %conv36 = trunc i16 %52 to i8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %.pn.lcssa, i64 3
  store i8 %conv36, ptr %outptr.0.lcssa, align 1, !tbaa !41
  store i8 %50, ptr %incdec.ptr37, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %53 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %54 = sext i32 %53 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %54
  br i1 %cmp, label %for.body, label %for.end41, !llvm.loop !59

for.end41:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @h2v1_upsample(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readnone %compptr, ptr nocapture noundef readonly %input_data, ptr nocapture noundef readonly %output_data_ptr) #3 {
entry:
  %0 = load ptr, ptr %output_data_ptr, align 8, !tbaa !39
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %1 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp17 = icmp sgt i32 %1, 0
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %30, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx2 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx2, align 8, !tbaa !39
  %4 = ptrtoint ptr %3 to i64
  %5 = load i32, ptr %output_width, align 8, !tbaa !43
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %cmp314.not = icmp eq i32 %5, 0
  br i1 %cmp314.not, label %for.inc, label %while.body.preheader

while.body.preheader:                             ; preds = %for.body
  %arrayidx = getelementptr inbounds ptr, ptr %input_data, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !39
  %7 = add i64 %4, %idx.ext
  %8 = add i64 %4, 2
  %umax23 = call i64 @llvm.umax.i64(i64 %7, i64 %8)
  %9 = xor i64 %4, -1
  %10 = add i64 %umax23, %9
  %11 = lshr i64 %10, 1
  %12 = add nuw i64 %11, 1
  %min.iters.check = icmp ult i64 %10, 30
  br i1 %min.iters.check, label %while.body.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %uglygep = getelementptr i8, ptr %3, i64 2
  %13 = add i64 %4, %idx.ext
  %14 = add i64 %4, 2
  %umax = call i64 @llvm.umax.i64(i64 %13, i64 %14)
  %15 = xor i64 %4, -1
  %16 = add i64 %umax, %15
  %17 = lshr i64 %16, 1
  %18 = and i64 %16, -2
  %uglygep20 = getelementptr i8, ptr %uglygep, i64 %18
  %uglygep21 = getelementptr i8, ptr %6, i64 1
  %uglygep22 = getelementptr i8, ptr %uglygep21, i64 %17
  %bound0 = icmp ult ptr %3, %uglygep22
  %bound1 = icmp ult ptr %6, %uglygep20
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %while.body.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %12, -16
  %ind.end = getelementptr i8, ptr %6, i64 %n.vec
  %19 = shl i64 %n.vec, 1
  %ind.end25 = getelementptr i8, ptr %3, i64 %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %6, i64 %index
  %20 = shl i64 %index, 1
  %21 = shl i64 %index, 1
  %22 = or i64 %21, 16
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !41, !alias.scope !60
  %23 = getelementptr i8, ptr %next.gep, i64 8
  %wide.load29 = load <8 x i8>, ptr %23, align 1, !tbaa !41, !alias.scope !60
  %24 = getelementptr inbounds i8, ptr %3, i64 %20
  %25 = getelementptr inbounds i8, ptr %3, i64 %22
  %26 = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <16 x i8> %26, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %24, align 1, !tbaa !41
  %27 = shufflevector <8 x i8> %wide.load29, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec30 = shufflevector <16 x i8> %27, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec30, ptr %25, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 16
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %for.inc.loopexit, label %while.body.preheader31

while.body.preheader31:                           ; preds = %vector.memcheck, %while.body.preheader, %middle.block
  %inptr.016.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %while.body.preheader ], [ %ind.end, %middle.block ]
  %outptr.015.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %while.body.preheader ], [ %ind.end25, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader31, %while.body
  %inptr.016 = phi ptr [ %incdec.ptr, %while.body ], [ %inptr.016.ph, %while.body.preheader31 ]
  %outptr.015 = phi ptr [ %incdec.ptr5, %while.body ], [ %outptr.015.ph, %while.body.preheader31 ]
  %incdec.ptr = getelementptr inbounds i8, ptr %inptr.016, i64 1
  %29 = load i8, ptr %inptr.016, align 1, !tbaa !41
  %incdec.ptr4 = getelementptr inbounds i8, ptr %outptr.015, i64 1
  store i8 %29, ptr %outptr.015, align 1, !tbaa !41
  %incdec.ptr5 = getelementptr inbounds i8, ptr %outptr.015, i64 2
  store i8 %29, ptr %incdec.ptr4, align 1, !tbaa !41
  %cmp3 = icmp ult ptr %incdec.ptr5, %add.ptr
  br i1 %cmp3, label %while.body, label %for.inc.loopexit, !llvm.loop !64

for.inc.loopexit:                                 ; preds = %while.body, %middle.block
  %.pre = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.inc.loopexit, %for.body
  %30 = phi i32 [ %.pre, %for.inc.loopexit ], [ %2, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %31 = sext i32 %30 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %31
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !65

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @h2v2_fancy_upsample(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %compptr, ptr nocapture noundef readonly %input_data, ptr nocapture noundef readonly %output_data_ptr) #3 {
entry:
  %0 = load ptr, ptr %output_data_ptr, align 8, !tbaa !39
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %1 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp109 = icmp sgt i32 %1, 0
  br i1 %cmp109, label %for.cond.preheader.lr.ph, label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end.1
  %indvars.iv = phi i64 [ 0, %for.cond.preheader.lr.ph ], [ %indvars.iv.next114, %for.end.1 ]
  %outrow.0111 = phi i64 [ 0, %for.cond.preheader.lr.ph ], [ %indvars.iv.next.1, %for.end.1 ]
  %arrayidx = getelementptr inbounds ptr, ptr %input_data, i64 %indvars.iv
  %indvars.iv.next114 = add nuw i64 %indvars.iv, 1
  %idxprom5 = and i64 %indvars.iv.next114, 4294967295
  %2 = add nsw i64 %indvars.iv, -1
  %sext = shl i64 %outrow.0111, 32
  %3 = ashr exact i64 %sext, 32
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !39
  %inptr1.0.in = getelementptr inbounds ptr, ptr %input_data, i64 %2
  %inptr1.0 = load ptr, ptr %inptr1.0.in, align 8, !tbaa !39
  %indvars.iv.next = add nsw i64 %3, 1
  %arrayidx8 = getelementptr inbounds ptr, ptr %0, i64 %3
  %5 = load ptr, ptr %arrayidx8, align 8, !tbaa !39
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %4, align 1, !tbaa !41
  %conv = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv, 3
  %incdec.ptr9 = getelementptr inbounds i8, ptr %inptr1.0, i64 1
  %7 = load i8, ptr %inptr1.0, align 1, !tbaa !41
  %conv10 = zext i8 %7 to i32
  %add11 = add nuw nsw i32 %mul, %conv10
  %8 = load i8, ptr %incdec.ptr, align 1, !tbaa !41
  %conv13 = zext i8 %8 to i32
  %mul14 = mul nuw nsw i32 %conv13, 3
  %9 = load i8, ptr %incdec.ptr9, align 1, !tbaa !41
  %conv16 = zext i8 %9 to i32
  %add17 = add nuw nsw i32 %mul14, %conv16
  %mul18 = shl nuw nsw i32 %add11, 2
  %add19 = add nuw nsw i32 %mul18, 8
  %10 = lshr i32 %add19, 4
  %conv20 = trunc i32 %10 to i8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %conv20, ptr %5, align 1, !tbaa !41
  %mul22 = mul nuw nsw i32 %add11, 3
  %add23 = add nuw nsw i32 %mul22, 7
  %add24 = add nuw nsw i32 %add23, %add17
  %shr25 = lshr i32 %add24, 4
  %conv26 = trunc i32 %shr25 to i8
  store i8 %conv26, ptr %incdec.ptr21, align 1, !tbaa !41
  %11 = load i32, ptr %downsampled_width, align 8, !tbaa !40
  %sub28 = add i32 %11, -2
  %outptr.095 = getelementptr inbounds i8, ptr %5, i64 2
  %cmp30.not96 = icmp eq i32 %sub28, 0
  br i1 %cmp30.not96, label %for.end, label %for.body32.preheader

for.body32.preheader:                             ; preds = %for.cond.preheader
  %incdec.ptr15 = getelementptr inbounds i8, ptr %inptr1.0, i64 2
  %incdec.ptr12 = getelementptr inbounds i8, ptr %4, i64 2
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader, %for.body32
  %outptr.0103 = phi ptr [ %outptr.0, %for.body32 ], [ %outptr.095, %for.body32.preheader ]
  %colctr.0102 = phi i32 [ %dec, %for.body32 ], [ %sub28, %for.body32.preheader ]
  %lastcolsum.0101 = phi i32 [ %thiscolsum.0100, %for.body32 ], [ %add11, %for.body32.preheader ]
  %thiscolsum.0100 = phi i32 [ %add38, %for.body32 ], [ %add17, %for.body32.preheader ]
  %.pn99 = phi ptr [ %outptr.0103, %for.body32 ], [ %5, %for.body32.preheader ]
  %inptr1.198 = phi ptr [ %incdec.ptr36, %for.body32 ], [ %incdec.ptr15, %for.body32.preheader ]
  %inptr0.097 = phi ptr [ %incdec.ptr33, %for.body32 ], [ %incdec.ptr12, %for.body32.preheader ]
  %incdec.ptr33 = getelementptr inbounds i8, ptr %inptr0.097, i64 1
  %12 = load i8, ptr %inptr0.097, align 1, !tbaa !41
  %conv34 = zext i8 %12 to i32
  %mul35 = mul nuw nsw i32 %conv34, 3
  %incdec.ptr36 = getelementptr inbounds i8, ptr %inptr1.198, i64 1
  %13 = load i8, ptr %inptr1.198, align 1, !tbaa !41
  %conv37 = zext i8 %13 to i32
  %add38 = add nuw nsw i32 %mul35, %conv37
  %mul39 = mul nuw nsw i32 %thiscolsum.0100, 3
  %add40 = add nuw nsw i32 %lastcolsum.0101, 8
  %add41 = add nuw nsw i32 %add40, %mul39
  %14 = lshr i32 %add41, 4
  %conv43 = trunc i32 %14 to i8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %.pn99, i64 3
  store i8 %conv43, ptr %outptr.0103, align 1, !tbaa !41
  %add46 = add nuw nsw i32 %mul39, 7
  %add47 = add nuw nsw i32 %add46, %add38
  %15 = lshr i32 %add47, 4
  %conv49 = trunc i32 %15 to i8
  store i8 %conv49, ptr %incdec.ptr44, align 1, !tbaa !41
  %dec = add i32 %colctr.0102, -1
  %outptr.0 = getelementptr inbounds i8, ptr %outptr.0103, i64 2
  %cmp30.not = icmp eq i32 %dec, 0
  br i1 %cmp30.not, label %for.end, label %for.body32, !llvm.loop !66

for.end:                                          ; preds = %for.body32, %for.cond.preheader
  %.pn.lcssa = phi ptr [ %5, %for.cond.preheader ], [ %outptr.0103, %for.body32 ]
  %thiscolsum.0.lcssa = phi i32 [ %add17, %for.cond.preheader ], [ %add38, %for.body32 ]
  %lastcolsum.0.lcssa = phi i32 [ %add11, %for.cond.preheader ], [ %thiscolsum.0100, %for.body32 ]
  %outptr.0.lcssa = phi ptr [ %outptr.095, %for.cond.preheader ], [ %outptr.0, %for.body32 ]
  %mul51 = mul nuw nsw i32 %thiscolsum.0.lcssa, 3
  %add52 = add nuw nsw i32 %lastcolsum.0.lcssa, 8
  %add53 = add nuw nsw i32 %add52, %mul51
  %16 = lshr i32 %add53, 4
  %conv55 = trunc i32 %16 to i8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %.pn.lcssa, i64 3
  store i8 %conv55, ptr %outptr.0.lcssa, align 1, !tbaa !41
  %mul57 = shl nuw nsw i32 %thiscolsum.0.lcssa, 2
  %add58 = add nuw nsw i32 %mul57, 7
  %17 = lshr i32 %add58, 4
  %conv60 = trunc i32 %17 to i8
  store i8 %conv60, ptr %incdec.ptr56, align 1, !tbaa !41
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !39
  %inptr1.0.in.1 = getelementptr inbounds ptr, ptr %input_data, i64 %idxprom5
  %inptr1.0.1 = load ptr, ptr %inptr1.0.in.1, align 8, !tbaa !39
  %indvars.iv.next.1 = add nsw i64 %3, 2
  %arrayidx8.1 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next
  %19 = load ptr, ptr %arrayidx8.1, align 8, !tbaa !39
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %18, align 1, !tbaa !41
  %conv.1 = zext i8 %20 to i32
  %mul.1 = mul nuw nsw i32 %conv.1, 3
  %incdec.ptr9.1 = getelementptr inbounds i8, ptr %inptr1.0.1, i64 1
  %21 = load i8, ptr %inptr1.0.1, align 1, !tbaa !41
  %conv10.1 = zext i8 %21 to i32
  %add11.1 = add nuw nsw i32 %mul.1, %conv10.1
  %22 = load i8, ptr %incdec.ptr.1, align 1, !tbaa !41
  %conv13.1 = zext i8 %22 to i32
  %mul14.1 = mul nuw nsw i32 %conv13.1, 3
  %23 = load i8, ptr %incdec.ptr9.1, align 1, !tbaa !41
  %conv16.1 = zext i8 %23 to i32
  %add17.1 = add nuw nsw i32 %mul14.1, %conv16.1
  %mul18.1 = shl nuw nsw i32 %add11.1, 2
  %add19.1 = add nuw nsw i32 %mul18.1, 8
  %24 = lshr i32 %add19.1, 4
  %conv20.1 = trunc i32 %24 to i8
  %incdec.ptr21.1 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %conv20.1, ptr %19, align 1, !tbaa !41
  %mul22.1 = mul nuw nsw i32 %add11.1, 3
  %add23.1 = add nuw nsw i32 %mul22.1, 7
  %add24.1 = add nuw nsw i32 %add23.1, %add17.1
  %shr25.1 = lshr i32 %add24.1, 4
  %conv26.1 = trunc i32 %shr25.1 to i8
  store i8 %conv26.1, ptr %incdec.ptr21.1, align 1, !tbaa !41
  %25 = load i32, ptr %downsampled_width, align 8, !tbaa !40
  %sub28.1 = add i32 %25, -2
  %outptr.095.1 = getelementptr inbounds i8, ptr %19, i64 2
  %cmp30.not96.1 = icmp eq i32 %sub28.1, 0
  br i1 %cmp30.not96.1, label %for.end.1, label %for.body32.preheader.1

for.body32.preheader.1:                           ; preds = %for.end
  %incdec.ptr15.1 = getelementptr inbounds i8, ptr %inptr1.0.1, i64 2
  %incdec.ptr12.1 = getelementptr inbounds i8, ptr %18, i64 2
  br label %for.body32.1

for.body32.1:                                     ; preds = %for.body32.1, %for.body32.preheader.1
  %outptr.0103.1 = phi ptr [ %outptr.0.1, %for.body32.1 ], [ %outptr.095.1, %for.body32.preheader.1 ]
  %colctr.0102.1 = phi i32 [ %dec.1, %for.body32.1 ], [ %sub28.1, %for.body32.preheader.1 ]
  %lastcolsum.0101.1 = phi i32 [ %thiscolsum.0100.1, %for.body32.1 ], [ %add11.1, %for.body32.preheader.1 ]
  %thiscolsum.0100.1 = phi i32 [ %add38.1, %for.body32.1 ], [ %add17.1, %for.body32.preheader.1 ]
  %.pn99.1 = phi ptr [ %outptr.0103.1, %for.body32.1 ], [ %19, %for.body32.preheader.1 ]
  %inptr1.198.1 = phi ptr [ %incdec.ptr36.1, %for.body32.1 ], [ %incdec.ptr15.1, %for.body32.preheader.1 ]
  %inptr0.097.1 = phi ptr [ %incdec.ptr33.1, %for.body32.1 ], [ %incdec.ptr12.1, %for.body32.preheader.1 ]
  %incdec.ptr33.1 = getelementptr inbounds i8, ptr %inptr0.097.1, i64 1
  %26 = load i8, ptr %inptr0.097.1, align 1, !tbaa !41
  %conv34.1 = zext i8 %26 to i32
  %mul35.1 = mul nuw nsw i32 %conv34.1, 3
  %incdec.ptr36.1 = getelementptr inbounds i8, ptr %inptr1.198.1, i64 1
  %27 = load i8, ptr %inptr1.198.1, align 1, !tbaa !41
  %conv37.1 = zext i8 %27 to i32
  %add38.1 = add nuw nsw i32 %mul35.1, %conv37.1
  %mul39.1 = mul nuw nsw i32 %thiscolsum.0100.1, 3
  %add40.1 = add nuw nsw i32 %lastcolsum.0101.1, 8
  %add41.1 = add nuw nsw i32 %add40.1, %mul39.1
  %28 = lshr i32 %add41.1, 4
  %conv43.1 = trunc i32 %28 to i8
  %incdec.ptr44.1 = getelementptr inbounds i8, ptr %.pn99.1, i64 3
  store i8 %conv43.1, ptr %outptr.0103.1, align 1, !tbaa !41
  %add46.1 = add nuw nsw i32 %mul39.1, 7
  %add47.1 = add nuw nsw i32 %add46.1, %add38.1
  %29 = lshr i32 %add47.1, 4
  %conv49.1 = trunc i32 %29 to i8
  store i8 %conv49.1, ptr %incdec.ptr44.1, align 1, !tbaa !41
  %dec.1 = add i32 %colctr.0102.1, -1
  %outptr.0.1 = getelementptr inbounds i8, ptr %outptr.0103.1, i64 2
  %cmp30.not.1 = icmp eq i32 %dec.1, 0
  br i1 %cmp30.not.1, label %for.end.1, label %for.body32.1, !llvm.loop !66

for.end.1:                                        ; preds = %for.body32.1, %for.end
  %.pn.lcssa.1 = phi ptr [ %19, %for.end ], [ %outptr.0103.1, %for.body32.1 ]
  %thiscolsum.0.lcssa.1 = phi i32 [ %add17.1, %for.end ], [ %add38.1, %for.body32.1 ]
  %lastcolsum.0.lcssa.1 = phi i32 [ %add11.1, %for.end ], [ %thiscolsum.0100.1, %for.body32.1 ]
  %outptr.0.lcssa.1 = phi ptr [ %outptr.095.1, %for.end ], [ %outptr.0.1, %for.body32.1 ]
  %mul51.1 = mul nuw nsw i32 %thiscolsum.0.lcssa.1, 3
  %add52.1 = add nuw nsw i32 %lastcolsum.0.lcssa.1, 8
  %add53.1 = add nuw nsw i32 %add52.1, %mul51.1
  %30 = lshr i32 %add53.1, 4
  %conv55.1 = trunc i32 %30 to i8
  %incdec.ptr56.1 = getelementptr inbounds i8, ptr %.pn.lcssa.1, i64 3
  store i8 %conv55.1, ptr %outptr.0.lcssa.1, align 1, !tbaa !41
  %mul57.1 = shl nuw nsw i32 %thiscolsum.0.lcssa.1, 2
  %add58.1 = add nuw nsw i32 %mul57.1, 7
  %31 = lshr i32 %add58.1, 4
  %conv60.1 = trunc i32 %31 to i8
  store i8 %conv60.1, ptr %incdec.ptr56.1, align 1, !tbaa !41
  %32 = trunc i64 %indvars.iv.next.1 to i32
  %33 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp = icmp sgt i32 %33, %32
  br i1 %cmp, label %for.cond.preheader, label %while.end, !llvm.loop !67

while.end:                                        ; preds = %for.end.1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readnone %compptr, ptr nocapture noundef readonly %input_data, ptr nocapture noundef readonly %output_data_ptr) #0 {
entry:
  %0 = load ptr, ptr %output_data_ptr, align 8, !tbaa !39
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %1 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %while.body.lr.ph, label %while.end10

while.body.lr.ph:                                 ; preds = %entry
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.end
  %indvars.iv31 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next32, %while.end ]
  %indvars.iv = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %while.end ]
  %indvars33 = trunc i64 %indvars.iv to i32
  %arrayidx2 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx2, align 8, !tbaa !39
  %3 = ptrtoint ptr %2 to i64
  %4 = load i32, ptr %output_width, align 8, !tbaa !43
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %cmp424.not = icmp eq i32 %4, 0
  br i1 %cmp424.not, label %while.end, label %while.body5.preheader

while.body5.preheader:                            ; preds = %while.body
  %arrayidx = getelementptr inbounds ptr, ptr %input_data, i64 %indvars.iv31
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !39
  %6 = add i64 %3, %idx.ext
  %7 = add i64 %3, 2
  %umax39 = call i64 @llvm.umax.i64(i64 %6, i64 %7)
  %8 = xor i64 %3, -1
  %9 = add i64 %umax39, %8
  %10 = lshr i64 %9, 1
  %11 = add nuw i64 %10, 1
  %min.iters.check = icmp ult i64 %9, 30
  br i1 %min.iters.check, label %while.body5.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body5.preheader
  %uglygep = getelementptr i8, ptr %2, i64 2
  %12 = add i64 %3, %idx.ext
  %13 = add i64 %3, 2
  %umax = call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %14 = xor i64 %3, -1
  %15 = add i64 %umax, %14
  %16 = lshr i64 %15, 1
  %17 = and i64 %15, -2
  %uglygep36 = getelementptr i8, ptr %uglygep, i64 %17
  %uglygep37 = getelementptr i8, ptr %5, i64 1
  %uglygep38 = getelementptr i8, ptr %uglygep37, i64 %16
  %bound0 = icmp ult ptr %2, %uglygep38
  %bound1 = icmp ult ptr %5, %uglygep36
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %while.body5.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %11, -16
  %ind.end = getelementptr i8, ptr %5, i64 %n.vec
  %18 = shl i64 %n.vec, 1
  %ind.end41 = getelementptr i8, ptr %2, i64 %18
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %5, i64 %index
  %19 = shl i64 %index, 1
  %20 = shl i64 %index, 1
  %21 = or i64 %20, 16
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !41, !alias.scope !68
  %22 = getelementptr i8, ptr %next.gep, i64 8
  %wide.load45 = load <8 x i8>, ptr %22, align 1, !tbaa !41, !alias.scope !68
  %23 = getelementptr inbounds i8, ptr %2, i64 %19
  %24 = getelementptr inbounds i8, ptr %2, i64 %21
  %25 = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <16 x i8> %25, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %23, align 1, !tbaa !41
  %26 = shufflevector <8 x i8> %wide.load45, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec46 = shufflevector <16 x i8> %26, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec46, ptr %24, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 16
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %while.end.loopexit, label %while.body5.preheader47

while.body5.preheader47:                          ; preds = %vector.memcheck, %while.body5.preheader, %middle.block
  %inptr.026.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %while.body5.preheader ], [ %ind.end, %middle.block ]
  %outptr.025.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %while.body5.preheader ], [ %ind.end41, %middle.block ]
  br label %while.body5

while.body5:                                      ; preds = %while.body5.preheader47, %while.body5
  %inptr.026 = phi ptr [ %incdec.ptr, %while.body5 ], [ %inptr.026.ph, %while.body5.preheader47 ]
  %outptr.025 = phi ptr [ %incdec.ptr7, %while.body5 ], [ %outptr.025.ph, %while.body5.preheader47 ]
  %incdec.ptr = getelementptr inbounds i8, ptr %inptr.026, i64 1
  %28 = load i8, ptr %inptr.026, align 1, !tbaa !41
  %incdec.ptr6 = getelementptr inbounds i8, ptr %outptr.025, i64 1
  store i8 %28, ptr %outptr.025, align 1, !tbaa !41
  %incdec.ptr7 = getelementptr inbounds i8, ptr %outptr.025, i64 2
  store i8 %28, ptr %incdec.ptr6, align 1, !tbaa !41
  %cmp4 = icmp ult ptr %incdec.ptr7, %add.ptr
  br i1 %cmp4, label %while.body5, label %while.end.loopexit, !llvm.loop !72

while.end.loopexit:                               ; preds = %while.body5, %middle.block
  %.pre = load i32, ptr %output_width, align 8, !tbaa !43
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.body
  %29 = phi i32 [ %.pre, %while.end.loopexit ], [ 0, %while.body ]
  %add = or i32 %indvars33, 1
  tail call void @jcopy_sample_rows(ptr noundef %0, i32 noundef %indvars33, ptr noundef %0, i32 noundef %add, i32 noundef 1, i32 noundef %29) #7
  %indvars.iv.next32 = add nuw i64 %indvars.iv31, 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 2
  %30 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %31 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %30, %31
  br i1 %cmp, label %while.body, label %while.end10, !llvm.loop !73

while.end10:                                      ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %compptr, ptr nocapture noundef readonly %input_data, ptr nocapture noundef readonly %output_data_ptr) #0 {
entry:
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8, !tbaa !16
  %1 = load ptr, ptr %output_data_ptr, align 8, !tbaa !39
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 1
  %2 = load i32, ptr %component_index, align 4, !tbaa !74
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 6, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !41
  %conv = zext i8 %3 to i64
  %arrayidx6 = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 7, i64 %idxprom
  %4 = load i8, ptr %arrayidx6, align 1, !tbaa !41
  %conv7 = zext i8 %4 to i32
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 58
  %5 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp48 = icmp sgt i32 %5, 0
  br i1 %cmp48, label %while.body.lr.ph, label %while.end24

while.body.lr.ph:                                 ; preds = %entry
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %cmp1742.not = icmp eq i8 %3, 0
  %cmp20 = icmp ugt i8 %4, 1
  %sub = add nsw i32 %conv7, -1
  br i1 %cmp1742.not, label %while.body.lr.ph.split, label %while.body.lr.ph.split.us

while.body.lr.ph.split.us:                        ; preds = %while.body.lr.ph
  %6 = zext i8 %3 to i64
  %7 = add nuw nsw i64 %conv, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = add nuw nsw i64 %8, 1
  %10 = zext i8 %4 to i64
  br i1 %cmp20, label %while.body.us.us, label %while.body.us

while.body.us.us:                                 ; preds = %while.body.lr.ph.split.us, %while.end.us.us
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %while.end.us.us ], [ 0, %while.body.lr.ph.split.us ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %while.end.us.us ], [ 0, %while.body.lr.ph.split.us ]
  %indvars84 = trunc i64 %indvars.iv79 to i32
  %arrayidx12.us.us = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv79
  %11 = load ptr, ptr %arrayidx12.us.us, align 8, !tbaa !39
  %12 = load i32, ptr %output_width, align 8, !tbaa !43
  %idx.ext.us.us = zext i32 %12 to i64
  %add.ptr.us.us = getelementptr inbounds i8, ptr %11, i64 %idx.ext.us.us
  %cmp1445.us.us.not = icmp eq i32 %12, 0
  br i1 %cmp1445.us.us.not, label %while.end.us.us, label %while.body16.us.us.us.preheader

while.body16.us.us.us.preheader:                  ; preds = %while.body.us.us
  %arrayidx10.us.us = getelementptr inbounds ptr, ptr %input_data, i64 %indvars.iv82
  %13 = load ptr, ptr %arrayidx10.us.us, align 8, !tbaa !39
  br label %while.body16.us.us.us

while.end.us.us.loopexit:                         ; preds = %while.body16.us.us.us
  %.pre87 = load i32, ptr %output_width, align 8, !tbaa !43
  br label %while.end.us.us

while.end.us.us:                                  ; preds = %while.end.us.us.loopexit, %while.body.us.us
  %14 = phi i32 [ %.pre87, %while.end.us.us.loopexit ], [ 0, %while.body.us.us ]
  %add.us.us = add nuw nsw i32 %indvars84, 1
  tail call void @jcopy_sample_rows(ptr noundef %1, i32 noundef %indvars84, ptr noundef %1, i32 noundef %add.us.us, i32 noundef %sub, i32 noundef %14) #7
  %indvars.iv.next83 = add nuw i64 %indvars.iv82, 1
  %indvars.iv.next80 = add i64 %indvars.iv79, %10
  %15 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %16 = trunc i64 %indvars.iv.next80 to i32
  %cmp.us.us = icmp sgt i32 %15, %16
  br i1 %cmp.us.us, label %while.body.us.us, label %while.end24, !llvm.loop !75

while.body16.us.us.us:                            ; preds = %while.body16.us.us.us.preheader, %while.body16.us.us.us
  %inptr.047.us.us.us = phi ptr [ %incdec.ptr.us.us.us, %while.body16.us.us.us ], [ %13, %while.body16.us.us.us.preheader ]
  %outptr.046.us.us.us = phi ptr [ %uglygep78, %while.body16.us.us.us ], [ %11, %while.body16.us.us.us.preheader ]
  %17 = load i8, ptr %inptr.047.us.us.us, align 1, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %outptr.046.us.us.us, i8 %17, i64 %6, i1 false), !tbaa !41
  %incdec.ptr.us.us.us = getelementptr inbounds i8, ptr %inptr.047.us.us.us, i64 1
  %uglygep78 = getelementptr i8, ptr %outptr.046.us.us.us, i64 %9
  %cmp14.us.us.us = icmp ult ptr %uglygep78, %add.ptr.us.us
  br i1 %cmp14.us.us.us, label %while.body16.us.us.us, label %while.end.us.us.loopexit, !llvm.loop !76

while.body.us:                                    ; preds = %while.body.lr.ph.split.us, %while.end.us
  %18 = phi i32 [ %22, %while.end.us ], [ %5, %while.body.lr.ph.split.us ]
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %while.end.us ], [ 0, %while.body.lr.ph.split.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.end.us ], [ 0, %while.body.lr.ph.split.us ]
  %arrayidx12.us = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv
  %19 = load ptr, ptr %arrayidx12.us, align 8, !tbaa !39
  %20 = load i32, ptr %output_width, align 8, !tbaa !43
  %idx.ext.us = zext i32 %20 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %19, i64 %idx.ext.us
  %cmp1445.us.not = icmp eq i32 %20, 0
  br i1 %cmp1445.us.not, label %while.end.us, label %while.body16.us.us.preheader

while.body16.us.us.preheader:                     ; preds = %while.body.us
  %arrayidx10.us = getelementptr inbounds ptr, ptr %input_data, i64 %indvars.iv73
  %21 = load ptr, ptr %arrayidx10.us, align 8, !tbaa !39
  br label %while.body16.us.us

while.end.us.loopexit:                            ; preds = %while.body16.us.us
  %.pre = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  br label %while.end.us

while.end.us:                                     ; preds = %while.end.us.loopexit, %while.body.us
  %22 = phi i32 [ %.pre, %while.end.us.loopexit ], [ %18, %while.body.us ]
  %indvars.iv.next74 = add nuw i64 %indvars.iv73, 1
  %indvars.iv.next = add i64 %indvars.iv, %10
  %23 = sext i32 %22 to i64
  %cmp.us = icmp slt i64 %indvars.iv.next, %23
  br i1 %cmp.us, label %while.body.us, label %while.end24, !llvm.loop !75

while.body16.us.us:                               ; preds = %while.body16.us.us.preheader, %while.body16.us.us
  %inptr.047.us.us = phi ptr [ %incdec.ptr.us.us, %while.body16.us.us ], [ %21, %while.body16.us.us.preheader ]
  %outptr.046.us.us = phi ptr [ %uglygep, %while.body16.us.us ], [ %19, %while.body16.us.us.preheader ]
  %24 = load i8, ptr %inptr.047.us.us, align 1, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %outptr.046.us.us, i8 %24, i64 %6, i1 false), !tbaa !41
  %incdec.ptr.us.us = getelementptr inbounds i8, ptr %inptr.047.us.us, i64 1
  %uglygep = getelementptr i8, ptr %outptr.046.us.us, i64 %9
  %cmp14.us.us = icmp ult ptr %uglygep, %add.ptr.us
  br i1 %cmp14.us.us, label %while.body16.us.us, label %while.end.us.loopexit, !llvm.loop !76

while.body.lr.ph.split:                           ; preds = %while.body.lr.ph
  br i1 %cmp20, label %while.body.us52, label %while.body.lr.ph.split.split

while.body.us52:                                  ; preds = %while.body.lr.ph.split, %while.end.us62
  %outrow.050.us53 = phi i32 [ %add23.us67, %while.end.us62 ], [ 0, %while.body.lr.ph.split ]
  %25 = load i32, ptr %output_width, align 8, !tbaa !43
  %cmp1445.us61.not = icmp eq i32 %25, 0
  br i1 %cmp1445.us61.not, label %while.end.us62, label %while.body16.preheader

while.end.us62:                                   ; preds = %while.body.us52
  %add.us64 = add nuw nsw i32 %outrow.050.us53, 1
  tail call void @jcopy_sample_rows(ptr noundef %1, i32 noundef %outrow.050.us53, ptr noundef %1, i32 noundef %add.us64, i32 noundef %sub, i32 noundef 0) #7
  %add23.us67 = add nuw nsw i32 %outrow.050.us53, %conv7
  %26 = load i32, ptr %max_v_samp_factor, align 8, !tbaa !36
  %cmp.us68 = icmp slt i32 %add23.us67, %26
  br i1 %cmp.us68, label %while.body.us52, label %while.end24, !llvm.loop !75

while.body.lr.ph.split.split:                     ; preds = %while.body.lr.ph.split
  %27 = load i32, ptr %output_width, align 8, !tbaa !43
  %cmp1445.not = icmp eq i32 %27, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph.split.split, %while.end
  %outrow.050 = phi i32 [ 0, %while.body.lr.ph.split.split ], [ %add23, %while.end ]
  br i1 %cmp1445.not, label %while.end, label %while.body16.preheader

while.body16.preheader:                           ; preds = %while.body, %while.body.us52
  br label %while.body16

while.body16:                                     ; preds = %while.body16.preheader, %while.body16
  br label %while.body16

while.end:                                        ; preds = %while.body
  %add23 = add nuw nsw i32 %outrow.050, %conv7
  %cmp = icmp slt i32 %add23, %5
  br i1 %cmp, label %while.body, label %while.end24, !llvm.loop !75

while.end24:                                      ; preds = %while.end.us, %while.end.us.us, %while.end, %while.end.us62, %entry
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!16 = !{!6, !7, i64 592}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 24, !8, i64 104, !10, i64 184, !10, i64 188, !8, i64 192, !8, i64 232, !8, i64 242}
!19 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !10, i64 16}
!22 = !{!6, !10, i64 384}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!25, !7, i64 0}
!27 = !{!6, !10, i64 92}
!28 = !{!6, !10, i64 396}
!29 = !{!6, !10, i64 48}
!30 = !{!6, !7, i64 296}
!31 = !{!32, !10, i64 8}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!32, !10, i64 36}
!34 = !{!32, !10, i64 12}
!35 = !{!6, !10, i64 388}
!36 = !{!6, !10, i64 392}
!37 = !{!10, !10, i64 0}
!38 = !{!32, !10, i64 48}
!39 = !{!7, !7, i64 0}
!40 = !{!32, !10, i64 40}
!41 = !{!8, !8, i64 0}
!42 = !{!14, !7, i64 16}
!43 = !{!6, !10, i64 128}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!18, !10, i64 184}
!47 = !{!6, !10, i64 132}
!48 = !{!18, !10, i64 188}
!49 = distinct !{!49, !45}
!50 = !{!6, !7, i64 600}
!51 = !{!52, !7, i64 8}
!52 = !{!"jpeg_color_deconverter", !7, i64 0, !7, i64 8}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = distinct !{!56, !45, !57}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = distinct !{!58, !45, !57}
!59 = distinct !{!59, !45}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = distinct !{!63, !45, !57}
!64 = distinct !{!64, !45, !57}
!65 = distinct !{!65, !45}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !45}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = distinct !{!71, !45, !57}
!72 = distinct !{!72, !45, !57}
!73 = distinct !{!73, !45}
!74 = !{!32, !10, i64 4}
!75 = distinct !{!75, !45}
!76 = distinct !{!76, !45}
