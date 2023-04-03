; ModuleID = 'jcmaster.c'
source_filename = "jcmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_master_control(ptr noundef %cinfo, i32 noundef %transcode_only) local_unnamed_addr #0 {
entry:
  %component_sent.i = alloca [10 x i32], align 16
  %last_bitpos.i = alloca [10 x [64 x i32]], align 16
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !13
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 48) #5
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  store ptr %call, ptr %master1, align 8, !tbaa !16
  store ptr @prepare_for_pass, ptr %call, align 8, !tbaa !17
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %call, i64 0, i32 1
  store ptr @pass_startup, ptr %pass_startup, align 8, !tbaa !20
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %call, i64 0, i32 2
  store ptr @finish_pass_master, ptr %finish_pass, align 8, !tbaa !21
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %call, i64 0, i32 4
  store i32 0, ptr %is_last_pass, align 4, !tbaa !22
  %image_height.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  %2 = load i32, ptr %image_height.i, align 4, !tbaa !23
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %image_width.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %3 = load i32, ptr %image_width.i, align 8, !tbaa !24
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %if.then.i, label %lor.lhs.false2.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %num_components.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %4 = load i32, ptr %num_components.i, align 4, !tbaa !25
  %cmp3.i = icmp slt i32 %4, 1
  br i1 %cmp3.i, label %if.then.i, label %lor.lhs.false4.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %input_components.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 8
  %5 = load i32, ptr %input_components.i, align 8, !tbaa !26
  %cmp5.i = icmp slt i32 %5, 1
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false4.i, %lor.lhs.false2.i, %lor.lhs.false.i, %entry
  %6 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 31, ptr %msg_code.i, align 8, !tbaa !28
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  tail call void %7(ptr noundef nonnull %cinfo) #5
  %.pre.i = load i32, ptr %image_height.i, align 4, !tbaa !23
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false4.i
  %8 = phi i32 [ %.pre.i, %if.then.i ], [ %2, %lor.lhs.false4.i ]
  %cmp8.i = icmp ugt i32 %8, 65500
  br i1 %cmp8.i, label %if.then15.i, label %lor.lhs.false10.i

lor.lhs.false10.i:                                ; preds = %if.end.i
  %image_width11.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %9 = load i32, ptr %image_width11.i, align 8, !tbaa !24
  %cmp13.i = icmp ugt i32 %9, 65500
  br i1 %cmp13.i, label %if.then15.i, label %if.end21.i

if.then15.i:                                      ; preds = %lor.lhs.false10.i, %if.end.i
  %10 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code17.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 40, ptr %msg_code17.i, align 8, !tbaa !28
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 6
  store i32 65500, ptr %msg_parm.i, align 4, !tbaa !31
  %11 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  tail call void %12(ptr noundef nonnull %cinfo) #5
  %image_width22.phi.trans.insert.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %.pre253.i = load i32, ptr %image_width22.phi.trans.insert.i, align 8, !tbaa !24
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %lor.lhs.false10.i
  %13 = phi i32 [ %.pre253.i, %if.then15.i ], [ %9, %lor.lhs.false10.i ]
  %image_width22.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %conv23.i = zext i32 %13 to i64
  %input_components24.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 8
  %14 = load i32, ptr %input_components24.i, align 8, !tbaa !26
  %conv25.i = sext i32 %14 to i64
  %mul.i = mul nsw i64 %conv25.i, %conv23.i
  %15 = icmp ult i64 %mul.i, 4294967296
  br i1 %15, label %if.end35.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end21.i
  %16 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code32.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 69, ptr %msg_code32.i, align 8, !tbaa !28
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  tail call void %17(ptr noundef nonnull %cinfo) #5
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.end21.i
  %data_precision.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 11
  %18 = load i32, ptr %data_precision.i, align 8, !tbaa !32
  %cmp36.not.i = icmp eq i32 %18, 8
  br i1 %cmp36.not.i, label %if.end47.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  %19 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code40.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 13, ptr %msg_code40.i, align 8, !tbaa !28
  %msg_parm43.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 6
  store i32 %18, ptr %msg_parm43.i, align 4, !tbaa !31
  %20 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  tail call void %21(ptr noundef nonnull %cinfo) #5
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then38.i, %if.end35.i
  %num_components48.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %22 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  %cmp49.i = icmp sgt i32 %22, 10
  br i1 %cmp49.i, label %if.then51.i, label %if.end63.i

if.then51.i:                                      ; preds = %if.end47.i
  %23 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code53.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 5
  store i32 24, ptr %msg_code53.i, align 8, !tbaa !28
  %msg_parm56.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 %22, ptr %msg_parm56.i, align 4, !tbaa !31
  %24 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_parm59.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 6
  %arrayidx60.i = getelementptr inbounds [8 x i32], ptr %msg_parm59.i, i64 0, i64 1
  store i32 10, ptr %arrayidx60.i, align 4, !tbaa !31
  %25 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  tail call void %26(ptr noundef nonnull %cinfo) #5
  %.pre254.i = load i32, ptr %num_components48.i, align 4, !tbaa !25
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then51.i, %if.end47.i
  %27 = phi i32 [ %.pre254.i, %if.then51.i ], [ %22, %if.end47.i ]
  %max_h_samp_factor.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 38
  store i32 1, ptr %max_h_samp_factor.i, align 8, !tbaa !33
  %max_v_samp_factor.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 39
  store i32 1, ptr %max_v_samp_factor.i, align 4, !tbaa !34
  %comp_info.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %cmp65245.i = icmp sgt i32 %27, 0
  br i1 %cmp65245.i, label %for.body.i.preheader, label %initial_setup.exit

for.body.i.preheader:                             ; preds = %if.end63.i
  %28 = load ptr, ptr %comp_info.i, align 8, !tbaa !35
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %if.end85.i
  %29 = phi i32 [ %40, %if.end85.i ], [ %27, %for.body.i.preheader ]
  %30 = phi i32 [ %46, %if.end85.i ], [ 1, %for.body.i.preheader ]
  %31 = phi i32 [ %45, %if.end85.i ], [ 1, %for.body.i.preheader ]
  %ci.0249.i = phi i32 [ %inc.i, %if.end85.i ], [ 0, %for.body.i.preheader ]
  %compptr.0246.i = phi ptr [ %incdec.ptr.i, %if.end85.i ], [ %28, %for.body.i.preheader ]
  %h_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0246.i, i64 0, i32 2
  %32 = load i32, ptr %h_samp_factor.i, align 8, !tbaa !36
  %33 = add i32 %32, -5
  %34 = icmp ult i32 %33, -4
  br i1 %34, label %if.then80.i, label %lor.lhs.false73.i

lor.lhs.false73.i:                                ; preds = %for.body.i
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0246.i, i64 0, i32 3
  %35 = load i32, ptr %v_samp_factor.i, align 4, !tbaa !38
  %36 = add i32 %35, -5
  %37 = icmp ult i32 %36, -4
  br i1 %37, label %if.then80.i, label %if.end85.i

if.then80.i:                                      ; preds = %lor.lhs.false73.i, %for.body.i
  %38 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code82.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 16, ptr %msg_code82.i, align 8, !tbaa !28
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void %39(ptr noundef nonnull %cinfo) #5
  %.pre255.i = load i32, ptr %max_h_samp_factor.i, align 8, !tbaa !33
  %.pre256.i = load i32, ptr %h_samp_factor.i, align 8, !tbaa !36
  %.pre257.i = load i32, ptr %max_v_samp_factor.i, align 4, !tbaa !34
  %v_samp_factor94.phi.trans.insert.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0246.i, i64 0, i32 3
  %.pre258.i = load i32, ptr %v_samp_factor94.phi.trans.insert.i, align 4, !tbaa !38
  %.pre259.i = load i32, ptr %num_components48.i, align 4, !tbaa !25
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then80.i, %lor.lhs.false73.i
  %40 = phi i32 [ %29, %lor.lhs.false73.i ], [ %.pre259.i, %if.then80.i ]
  %41 = phi i32 [ %35, %lor.lhs.false73.i ], [ %.pre258.i, %if.then80.i ]
  %42 = phi i32 [ %30, %lor.lhs.false73.i ], [ %.pre257.i, %if.then80.i ]
  %43 = phi i32 [ %32, %lor.lhs.false73.i ], [ %.pre256.i, %if.then80.i ]
  %44 = phi i32 [ %31, %lor.lhs.false73.i ], [ %.pre255.i, %if.then80.i ]
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 %43) #5
  store i32 %45, ptr %max_h_samp_factor.i, align 8, !tbaa !33
  %46 = tail call i32 @llvm.smax.i32(i32 %42, i32 %41) #5
  store i32 %46, ptr %max_v_samp_factor.i, align 4, !tbaa !34
  %inc.i = add nuw nsw i32 %ci.0249.i, 1
  %incdec.ptr.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0246.i, i64 1
  %cmp65.i = icmp slt i32 %inc.i, %40
  br i1 %cmp65.i, label %for.body.i, label %for.end.i, !llvm.loop !39

for.end.i:                                        ; preds = %if.end85.i
  %cmp107250.i = icmp sgt i32 %40, 0
  br i1 %cmp107250.i, label %for.body109.i.preheader, label %initial_setup.exit

for.body109.i.preheader:                          ; preds = %for.end.i
  %.pre260.i = load ptr, ptr %comp_info.i, align 8, !tbaa !35
  br label %for.body109.i

for.body109.i:                                    ; preds = %for.body109.i.preheader, %for.body109.for.body109_crit_edge.i
  %47 = phi i32 [ %.pre261.i, %for.body109.for.body109_crit_edge.i ], [ %45, %for.body109.i.preheader ]
  %ci.1252.i = phi i32 [ %inc148.i, %for.body109.for.body109_crit_edge.i ], [ 0, %for.body109.i.preheader ]
  %compptr.1251.i = phi ptr [ %incdec.ptr149.i, %for.body109.for.body109_crit_edge.i ], [ %.pre260.i, %for.body109.i.preheader ]
  %component_index.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 1
  store i32 %ci.1252.i, ptr %component_index.i, align 4, !tbaa !41
  %DCT_scaled_size.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 9
  store i32 8, ptr %DCT_scaled_size.i, align 4, !tbaa !42
  %48 = load i32, ptr %image_width22.i, align 8, !tbaa !24
  %conv111.i = zext i32 %48 to i64
  %h_samp_factor112.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 2
  %49 = load i32, ptr %h_samp_factor112.i, align 8, !tbaa !36
  %conv113.i = sext i32 %49 to i64
  %mul114.i = mul nsw i64 %conv113.i, %conv111.i
  %mul116.i = shl nsw i32 %47, 3
  %conv117.i = sext i32 %mul116.i to i64
  %call.i = tail call i64 @jdiv_round_up(i64 noundef %mul114.i, i64 noundef %conv117.i) #5
  %conv118.i = trunc i64 %call.i to i32
  %width_in_blocks.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 7
  store i32 %conv118.i, ptr %width_in_blocks.i, align 4, !tbaa !43
  %50 = load i32, ptr %image_height.i, align 4, !tbaa !23
  %conv120.i = zext i32 %50 to i64
  %v_samp_factor121.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 3
  %51 = load i32, ptr %v_samp_factor121.i, align 4, !tbaa !38
  %conv122.i = sext i32 %51 to i64
  %mul123.i = mul nsw i64 %conv122.i, %conv120.i
  %52 = load i32, ptr %max_v_samp_factor.i, align 4, !tbaa !34
  %mul125.i = shl nsw i32 %52, 3
  %conv126.i = sext i32 %mul125.i to i64
  %call127.i = tail call i64 @jdiv_round_up(i64 noundef %mul123.i, i64 noundef %conv126.i) #5
  %conv128.i = trunc i64 %call127.i to i32
  %height_in_blocks.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 8
  store i32 %conv128.i, ptr %height_in_blocks.i, align 8, !tbaa !44
  %53 = load i32, ptr %image_width22.i, align 8, !tbaa !24
  %conv130.i = zext i32 %53 to i64
  %54 = load i32, ptr %h_samp_factor112.i, align 8, !tbaa !36
  %conv132.i = sext i32 %54 to i64
  %mul133.i = mul nsw i64 %conv132.i, %conv130.i
  %55 = load i32, ptr %max_h_samp_factor.i, align 8, !tbaa !33
  %conv135.i = sext i32 %55 to i64
  %call136.i = tail call i64 @jdiv_round_up(i64 noundef %mul133.i, i64 noundef %conv135.i) #5
  %conv137.i = trunc i64 %call136.i to i32
  %downsampled_width.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 10
  store i32 %conv137.i, ptr %downsampled_width.i, align 8, !tbaa !45
  %56 = load i32, ptr %image_height.i, align 4, !tbaa !23
  %conv139.i = zext i32 %56 to i64
  %57 = load i32, ptr %v_samp_factor121.i, align 4, !tbaa !38
  %conv141.i = sext i32 %57 to i64
  %mul142.i = mul nsw i64 %conv141.i, %conv139.i
  %58 = load i32, ptr %max_v_samp_factor.i, align 4, !tbaa !34
  %conv144.i = sext i32 %58 to i64
  %call145.i = tail call i64 @jdiv_round_up(i64 noundef %mul142.i, i64 noundef %conv144.i) #5
  %conv146.i = trunc i64 %call145.i to i32
  %downsampled_height.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 11
  store i32 %conv146.i, ptr %downsampled_height.i, align 4, !tbaa !46
  %component_needed.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 0, i32 12
  store i32 1, ptr %component_needed.i, align 8, !tbaa !47
  %inc148.i = add nuw nsw i32 %ci.1252.i, 1
  %59 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  %cmp107.i = icmp slt i32 %inc148.i, %59
  br i1 %cmp107.i, label %for.body109.for.body109_crit_edge.i, label %for.end150.loopexit.i, !llvm.loop !48

for.body109.for.body109_crit_edge.i:              ; preds = %for.body109.i
  %incdec.ptr149.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.1251.i, i64 1
  %.pre261.i = load i32, ptr %max_h_samp_factor.i, align 8, !tbaa !33
  br label %for.body109.i

for.end150.loopexit.i:                            ; preds = %for.body109.i
  %.pre262.i = load i32, ptr %max_v_samp_factor.i, align 4, !tbaa !34
  br label %initial_setup.exit

initial_setup.exit:                               ; preds = %if.end63.i, %for.end.i, %for.end150.loopexit.i
  %60 = phi i32 [ %.pre262.i, %for.end150.loopexit.i ], [ %46, %for.end.i ], [ 1, %if.end63.i ]
  %61 = load i32, ptr %image_height.i, align 4, !tbaa !23
  %conv152.i = zext i32 %61 to i64
  %mul154.i = shl nsw i32 %60, 3
  %conv155.i = sext i32 %mul154.i to i64
  %call156.i = tail call i64 @jdiv_round_up(i64 noundef %conv152.i, i64 noundef %conv155.i) #5
  %conv157.i = trunc i64 %call156.i to i32
  %total_iMCU_rows.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 40
  store i32 %conv157.i, ptr %total_iMCU_rows.i, align 8, !tbaa !49
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 22
  %62 = load ptr, ptr %scan_info, align 8, !tbaa !50
  %cmp.not = icmp eq ptr %62, null
  br i1 %cmp.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %initial_setup.exit
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %component_sent.i) #5
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %last_bitpos.i) #5
  %num_scans.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 21
  %63 = load i32, ptr %num_scans.i, align 8, !tbaa !51
  %cmp.i51 = icmp slt i32 %63, 1
  br i1 %cmp.i51, label %if.then.i54, label %if.end.i55

if.then.i54:                                      ; preds = %if.then
  %64 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code.i52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 5
  store i32 17, ptr %msg_code.i52, align 8, !tbaa !28
  %msg_parm.i53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 6
  store i32 0, ptr %msg_parm.i53, align 4, !tbaa !31
  %65 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  tail call void %66(ptr noundef nonnull %cinfo) #5
  %.pre = load ptr, ptr %scan_info, align 8, !tbaa !50
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.then.i54, %if.then
  %67 = phi ptr [ %.pre, %if.then.i54 ], [ %62, %if.then ]
  %Ss3.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %Ss3.i, align 4, !tbaa !52
  %cmp4.not.i = icmp eq i32 %68, 0
  br i1 %cmp4.not.i, label %lor.lhs.false.i56, label %if.then7.i

lor.lhs.false.i56:                                ; preds = %if.end.i55
  %Se5.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %Se5.i, align 4, !tbaa !54
  %cmp6.not.i = icmp eq i32 %69, 63
  br i1 %cmp6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i56, %if.end.i55
  %progressive_mode.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 37
  store i32 1, ptr %progressive_mode.i, align 4, !tbaa !55
  %70 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  %cmp10448.i = icmp sgt i32 %70, 0
  br i1 %cmp10448.i, label %for.cond11.preheader.i.preheader, label %if.end26.i

for.cond11.preheader.i.preheader:                 ; preds = %if.then7.i
  %71 = zext i32 %70 to i64
  %72 = shl nuw nsw i64 %71, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %last_bitpos.i, i8 -1, i64 %72, i1 false), !tbaa !56
  br label %if.end26.i

if.else.i:                                        ; preds = %lor.lhs.false.i56
  %progressive_mode17.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 37
  store i32 0, ptr %progressive_mode17.i, align 4, !tbaa !55
  %73 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  %cmp20451.i = icmp sgt i32 %73, 0
  br i1 %cmp20451.i, label %for.body21.preheader.i, label %if.end26.i

for.body21.preheader.i:                           ; preds = %if.else.i
  %74 = zext i32 %73 to i64
  %75 = shl nuw nsw i64 %74, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %component_sent.i, i8 0, i64 %75, i1 false) #5, !tbaa !56
  br label %if.end26.i

if.end26.i:                                       ; preds = %for.cond11.preheader.i.preheader, %for.body21.preheader.i, %if.else.i, %if.then7.i
  %76 = phi i32 [ %73, %for.body21.preheader.i ], [ %70, %if.then7.i ], [ %73, %if.else.i ], [ %70, %for.cond11.preheader.i.preheader ]
  %77 = phi i32 [ 0, %for.body21.preheader.i ], [ 1, %if.then7.i ], [ 0, %if.else.i ], [ 1, %for.cond11.preheader.i.preheader ]
  %78 = load i32, ptr %num_scans.i, align 8, !tbaa !51
  %cmp29.not462.i = icmp slt i32 %78, 1
  br i1 %cmp29.not462.i, label %for.end243.i, label %for.body30.lr.ph.i

for.body30.lr.ph.i:                               ; preds = %if.end26.i
  %progressive_mode85.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 37
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.inc240.i, %for.body30.lr.ph.i
  %scanptr.0466.i = phi ptr [ %67, %for.body30.lr.ph.i ], [ %incdec.ptr241.i, %for.inc240.i ]
  %scanno.0463.i = phi i32 [ 1, %for.body30.lr.ph.i ], [ %inc242.i, %for.inc240.i ]
  %79 = load i32, ptr %scanptr.0466.i, align 4, !tbaa !57
  %80 = add i32 %79, -5
  %81 = icmp ult i32 %80, -4
  br i1 %81, label %if.end45.i, label %for.body48.preheader.i

if.end45.i:                                       ; preds = %for.body30.i
  %82 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code36.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 5
  store i32 24, ptr %msg_code36.i, align 8, !tbaa !28
  %msg_parm38.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 6
  store i32 %79, ptr %msg_parm38.i, align 4, !tbaa !31
  %83 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_parm41.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 6
  %arrayidx42.i = getelementptr inbounds [8 x i32], ptr %msg_parm41.i, i64 0, i64 1
  store i32 4, ptr %arrayidx42.i, align 4, !tbaa !31
  %84 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %85 = load ptr, ptr %84, align 8, !tbaa !30
  tail call void %85(ptr noundef nonnull %cinfo) #5
  %cmp47453.i = icmp sgt i32 %79, 0
  br i1 %cmp47453.i, label %for.body48.preheader.i, label %for.end80.i

for.body48.preheader.i:                           ; preds = %if.end45.i, %for.body30.i
  %wide.trip.count.i = zext i32 %79 to i64
  %arrayidx50.peel.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 1, i64 0
  %86 = load i32, ptr %arrayidx50.peel.i, align 4, !tbaa !56
  %cmp51.peel.i = icmp slt i32 %86, 0
  br i1 %cmp51.peel.i, label %if.then55.peel.i, label %lor.lhs.false52.peel.i

lor.lhs.false52.peel.i:                           ; preds = %for.body48.preheader.i
  %87 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  %cmp54.not.peel.i = icmp slt i32 %86, %87
  br i1 %cmp54.not.peel.i, label %for.inc78.peel.i, label %if.then55.peel.i

if.then55.peel.i:                                 ; preds = %lor.lhs.false52.peel.i, %for.body48.preheader.i
  %88 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code57.peel.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 5
  store i32 17, ptr %msg_code57.peel.i, align 8, !tbaa !28
  %msg_parm59.peel.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm59.peel.i, align 4, !tbaa !31
  %89 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %90 = load ptr, ptr %89, align 8, !tbaa !30
  tail call void %90(ptr noundef nonnull %cinfo) #5
  br label %for.inc78.peel.i

for.inc78.peel.i:                                 ; preds = %if.then55.peel.i, %lor.lhs.false52.peel.i
  %exitcond.peel.not.i = icmp eq i32 %79, 1
  br i1 %exitcond.peel.not.i, label %for.end80.i, label %for.body48.i

for.body48.i:                                     ; preds = %for.inc78.peel.i, %for.inc78.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc78.i ], [ 1, %for.inc78.peel.i ]
  %arrayidx50.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 1, i64 %indvars.iv.i
  %91 = load i32, ptr %arrayidx50.i, align 4, !tbaa !56
  %cmp51.i = icmp slt i32 %91, 0
  br i1 %cmp51.i, label %if.then55.i, label %lor.lhs.false52.i

lor.lhs.false52.i:                                ; preds = %for.body48.i
  %92 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  %cmp54.not.i = icmp slt i32 %91, %92
  br i1 %cmp54.not.i, label %land.lhs.true.i, label %if.then55.i

if.then55.i:                                      ; preds = %lor.lhs.false52.i, %for.body48.i
  %93 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code57.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 5
  store i32 17, ptr %msg_code57.i, align 8, !tbaa !28
  %msg_parm59.i58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm59.i58, align 4, !tbaa !31
  %94 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  tail call void %95(ptr noundef %cinfo) #5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then55.i, %lor.lhs.false52.i
  %96 = add nuw i64 %indvars.iv.i, 4294967295
  %97 = and i64 %96, 4294967295
  %arrayidx67.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 1, i64 %97
  %98 = load i32, ptr %arrayidx67.i, align 4, !tbaa !56
  %cmp68.not.i = icmp sgt i32 %91, %98
  br i1 %cmp68.not.i, label %for.inc78.i, label %if.then69.i

if.then69.i:                                      ; preds = %land.lhs.true.i
  %99 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code71.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 5
  store i32 17, ptr %msg_code71.i, align 8, !tbaa !28
  %msg_parm73.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm73.i, align 4, !tbaa !31
  %100 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %101 = load ptr, ptr %100, align 8, !tbaa !30
  tail call void %101(ptr noundef nonnull %cinfo) #5
  br label %for.inc78.i

for.inc78.i:                                      ; preds = %if.then69.i, %land.lhs.true.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end80.i, label %for.body48.i, !llvm.loop !58

for.end80.i:                                      ; preds = %for.inc78.i, %for.inc78.peel.i, %if.end45.i
  %cmp47453518.i = phi i1 [ false, %if.end45.i ], [ true, %for.inc78.peel.i ], [ true, %for.inc78.i ]
  %Ss81.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 2
  %102 = load i32, ptr %Ss81.i, align 4, !tbaa !52
  %Se82.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 3
  %103 = load i32, ptr %Se82.i, align 4, !tbaa !54
  %Ah83.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 4
  %104 = load i32, ptr %Ah83.i, align 4, !tbaa !60
  %Al84.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 5
  %105 = load i32, ptr %Al84.i, align 4, !tbaa !61
  %106 = load i32, ptr %progressive_mode85.i, align 4, !tbaa !55
  %tobool.not.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i, label %if.else199.i, label %if.then86.i

if.then86.i:                                      ; preds = %for.end80.i
  %107 = icmp ugt i32 %102, 63
  br i1 %107, label %if.then102.i, label %lor.lhs.false90.i

lor.lhs.false90.i:                                ; preds = %if.then86.i
  %cmp91.i = icmp slt i32 %103, %102
  %cmp93.i = icmp sgt i32 %103, 63
  %or.cond283.i = or i1 %cmp91.i, %cmp93.i
  %cmp95.i = icmp slt i32 %104, 0
  %or.cond284.i = select i1 %or.cond283.i, i1 true, i1 %cmp95.i
  %cmp97.i = icmp sgt i32 %104, 13
  %or.cond285.i = select i1 %or.cond284.i, i1 true, i1 %cmp97.i
  %cmp99.i = icmp slt i32 %105, 0
  %or.cond286.i = select i1 %or.cond285.i, i1 true, i1 %cmp99.i
  %cmp101.i = icmp sgt i32 %105, 13
  %or.cond287.i = select i1 %or.cond286.i, i1 true, i1 %cmp101.i
  br i1 %or.cond287.i, label %if.then102.i, label %if.end110.i

if.then102.i:                                     ; preds = %lor.lhs.false90.i, %if.then86.i
  %108 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code104.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 5
  store i32 15, ptr %msg_code104.i, align 8, !tbaa !28
  %msg_parm106.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm106.i, align 4, !tbaa !31
  %109 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %110 = load ptr, ptr %109, align 8, !tbaa !30
  tail call void %110(ptr noundef nonnull %cinfo) #5
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then102.i, %lor.lhs.false90.i
  %cmp111.i = icmp eq i32 %102, 0
  br i1 %cmp111.i, label %if.then112.i, label %if.else123.i

if.then112.i:                                     ; preds = %if.end110.i
  %cmp113.not.i = icmp eq i32 %103, 0
  br i1 %cmp113.not.i, label %if.end134.i, label %if.end134.sink.split.i

if.else123.i:                                     ; preds = %if.end110.i
  %cmp124.not.i = icmp eq i32 %79, 1
  br i1 %cmp124.not.i, label %if.end134.i, label %if.end134.sink.split.i

if.end134.sink.split.i:                           ; preds = %if.else123.i, %if.then112.i
  %111 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code127.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %111, i64 0, i32 5
  store i32 15, ptr %msg_code127.i, align 8, !tbaa !28
  %msg_parm129.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %111, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm129.i, align 4, !tbaa !31
  %112 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %113 = load ptr, ptr %112, align 8, !tbaa !30
  tail call void %113(ptr noundef nonnull %cinfo) #5
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.end134.sink.split.i, %if.else123.i, %if.then112.i
  br i1 %cmp47453518.i, label %for.body137.lr.ph.i, label %for.inc240.i

for.body137.lr.ph.i:                              ; preds = %if.end134.i
  %cmp158.not456.i = icmp sgt i32 %102, %103
  %sub179.i = add nsw i32 %104, -1
  %cmp180.not.i = icmp eq i32 %105, %sub179.i
  %cmp164.not.i = icmp eq i32 %104, 0
  %114 = sext i32 %102 to i64
  %115 = add i32 %103, 1
  %wide.trip.count502.i = zext i32 %79 to i64
  br label %for.body137.i

for.body137.i:                                    ; preds = %for.inc196.i, %for.body137.lr.ph.i
  %indvars.iv499.i = phi i64 [ 0, %for.body137.lr.ph.i ], [ %indvars.iv.next500.i, %for.inc196.i ]
  %arrayidx140.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 1, i64 %indvars.iv499.i
  %116 = load i32, ptr %arrayidx140.i, align 4, !tbaa !56
  %idxprom141.i = sext i32 %116 to i64
  %arrayidx142.i = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos.i, i64 0, i64 %idxprom141.i
  br i1 %cmp111.i, label %if.end156.i, label %land.lhs.true145.i

land.lhs.true145.i:                               ; preds = %for.body137.i
  %117 = load i32, ptr %arrayidx142.i, align 16, !tbaa !56
  %cmp147.i = icmp slt i32 %117, 0
  br i1 %cmp147.i, label %if.then148.i, label %if.end156.i

if.then148.i:                                     ; preds = %land.lhs.true145.i
  %118 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code150.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 15, ptr %msg_code150.i, align 8, !tbaa !28
  %msg_parm152.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm152.i, align 4, !tbaa !31
  %119 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %120 = load ptr, ptr %119, align 8, !tbaa !30
  tail call void %120(ptr noundef nonnull %cinfo) #5
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then148.i, %land.lhs.true145.i, %for.body137.i
  br i1 %cmp158.not456.i, label %for.inc196.i, label %for.body159.lr.ph.i

for.body159.lr.ph.i:                              ; preds = %if.end156.i
  br i1 %cmp164.not.i, label %for.body159.lr.ph.split.us.i, label %for.body159.i

for.body159.lr.ph.split.us.i:                     ; preds = %for.body159.lr.ph.i
  br i1 %cmp180.not.i, label %for.body159.us.i, label %for.body159.us.us.i

for.body159.us.us.i:                              ; preds = %for.body159.lr.ph.split.us.i, %if.end190.us.us.i
  %indvars.iv489.i = phi i64 [ %indvars.iv.next490.i, %if.end190.us.us.i ], [ %114, %for.body159.lr.ph.split.us.i ]
  %arrayidx161.us.us.i = getelementptr inbounds i32, ptr %arrayidx142.i, i64 %indvars.iv489.i
  %121 = load i32, ptr %arrayidx161.us.us.i, align 4, !tbaa !56
  %cmp162.us.us.i = icmp slt i32 %121, 0
  br i1 %cmp162.us.us.i, label %if.end190.us.us.i, label %if.else174.us.us.i

if.else174.us.us.i:                               ; preds = %for.body159.us.us.i
  %122 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code183.us.us.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %122, i64 0, i32 5
  store i32 15, ptr %msg_code183.us.us.i, align 8, !tbaa !28
  %msg_parm185.us.us.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %122, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm185.us.us.i, align 4, !tbaa !31
  %123 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %124 = load ptr, ptr %123, align 8, !tbaa !30
  tail call void %124(ptr noundef nonnull %cinfo) #5
  br label %if.end190.us.us.i

if.end190.us.us.i:                                ; preds = %if.else174.us.us.i, %for.body159.us.us.i
  store i32 %105, ptr %arrayidx161.us.us.i, align 4, !tbaa !56
  %indvars.iv.next490.i = add nsw i64 %indvars.iv489.i, 1
  %lftr.wideiv492.i = trunc i64 %indvars.iv.next490.i to i32
  %exitcond493.not.i = icmp eq i32 %115, %lftr.wideiv492.i
  br i1 %exitcond493.not.i, label %for.inc196.i, label %for.body159.us.us.i, !llvm.loop !62

for.body159.us.i:                                 ; preds = %for.body159.lr.ph.split.us.i, %if.end190.us.i
  %indvars.iv494.i = phi i64 [ %indvars.iv.next495.i, %if.end190.us.i ], [ %114, %for.body159.lr.ph.split.us.i ]
  %arrayidx161.us.i = getelementptr inbounds i32, ptr %arrayidx142.i, i64 %indvars.iv494.i
  %125 = load i32, ptr %arrayidx161.us.i, align 4, !tbaa !56
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %if.end190.us.i, label %if.then181.us.i

if.then181.us.i:                                  ; preds = %for.body159.us.i
  %127 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code183.us.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 5
  store i32 15, ptr %msg_code183.us.i, align 8, !tbaa !28
  %msg_parm185.us.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm185.us.i, align 4, !tbaa !31
  %128 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %129 = load ptr, ptr %128, align 8, !tbaa !30
  tail call void %129(ptr noundef nonnull %cinfo) #5
  br label %if.end190.us.i

if.end190.us.i:                                   ; preds = %if.then181.us.i, %for.body159.us.i
  store i32 %105, ptr %arrayidx161.us.i, align 4, !tbaa !56
  %indvars.iv.next495.i = add nsw i64 %indvars.iv494.i, 1
  %lftr.wideiv497.i = trunc i64 %indvars.iv.next495.i to i32
  %exitcond498.not.i = icmp eq i32 %115, %lftr.wideiv497.i
  br i1 %exitcond498.not.i, label %for.inc196.i, label %for.body159.us.i, !llvm.loop !62

for.body159.i:                                    ; preds = %for.body159.lr.ph.i, %if.end190.i
  %indvars.iv485.i = phi i64 [ %indvars.iv.next486.i, %if.end190.i ], [ %114, %for.body159.lr.ph.i ]
  %arrayidx161.i = getelementptr inbounds i32, ptr %arrayidx142.i, i64 %indvars.iv485.i
  %130 = load i32, ptr %arrayidx161.i, align 4, !tbaa !56
  %cmp162.i = icmp sgt i32 %130, -1
  %cmp177.not.i = icmp eq i32 %104, %130
  %131 = select i1 %cmp162.i, i1 %cmp177.not.i, i1 false
  %or.cond530.i = select i1 %131, i1 %cmp180.not.i, i1 false
  br i1 %or.cond530.i, label %if.end190.i, label %if.end190.sink.split.i

if.end190.sink.split.i:                           ; preds = %for.body159.i
  %132 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code183.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 5
  store i32 15, ptr %msg_code183.i, align 8, !tbaa !28
  %msg_parm185.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm185.i, align 4, !tbaa !31
  %133 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %134 = load ptr, ptr %133, align 8, !tbaa !30
  tail call void %134(ptr noundef nonnull %cinfo) #5
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.end190.sink.split.i, %for.body159.i
  store i32 %105, ptr %arrayidx161.i, align 4, !tbaa !56
  %indvars.iv.next486.i = add nsw i64 %indvars.iv485.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next486.i to i32
  %exitcond488.not.i = icmp eq i32 %115, %lftr.wideiv.i
  br i1 %exitcond488.not.i, label %for.inc196.i, label %for.body159.i, !llvm.loop !62

for.inc196.i:                                     ; preds = %if.end190.i, %if.end190.us.us.i, %if.end190.us.i, %if.end156.i
  %indvars.iv.next500.i = add nuw nsw i64 %indvars.iv499.i, 1
  %exitcond503.not.i = icmp eq i64 %indvars.iv.next500.i, %wide.trip.count502.i
  br i1 %exitcond503.not.i, label %for.inc240.i, label %for.body137.i, !llvm.loop !63

if.else199.i:                                     ; preds = %for.end80.i
  %cmp200.i = icmp ne i32 %102, 0
  %cmp202.i = icmp ne i32 %103, 63
  %or.cond288.i = select i1 %cmp200.i, i1 true, i1 %cmp202.i
  %cmp204.i = icmp ne i32 %104, 0
  %or.cond289.i = select i1 %or.cond288.i, i1 true, i1 %cmp204.i
  %cmp206.i = icmp ne i32 %105, 0
  %or.cond290.i = select i1 %or.cond289.i, i1 true, i1 %cmp206.i
  br i1 %or.cond290.i, label %if.then207.i, label %if.end215.i

if.then207.i:                                     ; preds = %if.else199.i
  %135 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code209.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 5
  store i32 15, ptr %msg_code209.i, align 8, !tbaa !28
  %msg_parm211.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm211.i, align 4, !tbaa !31
  %136 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %137 = load ptr, ptr %136, align 8, !tbaa !30
  tail call void %137(ptr noundef nonnull %cinfo) #5
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then207.i, %if.else199.i
  br i1 %cmp47453518.i, label %for.body218.preheader.i, label %for.inc240.i

for.body218.preheader.i:                          ; preds = %if.end215.i
  %wide.trip.count507.i = zext i32 %79 to i64
  br label %for.body218.i

for.body218.i:                                    ; preds = %if.end233.i, %for.body218.preheader.i
  %indvars.iv504.i = phi i64 [ 0, %for.body218.preheader.i ], [ %indvars.iv.next505.i, %if.end233.i ]
  %arrayidx221.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 0, i32 1, i64 %indvars.iv504.i
  %138 = load i32, ptr %arrayidx221.i, align 4, !tbaa !56
  %idxprom222.i = sext i32 %138 to i64
  %arrayidx223.i = getelementptr inbounds [10 x i32], ptr %component_sent.i, i64 0, i64 %idxprom222.i
  %139 = load i32, ptr %arrayidx223.i, align 4, !tbaa !56
  %tobool224.not.i = icmp eq i32 %139, 0
  br i1 %tobool224.not.i, label %if.end233.i, label %if.then225.i

if.then225.i:                                     ; preds = %for.body218.i
  %140 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code227.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 5
  store i32 17, ptr %msg_code227.i, align 8, !tbaa !28
  %msg_parm229.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 6
  store i32 %scanno.0463.i, ptr %msg_parm229.i, align 4, !tbaa !31
  %141 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %142 = load ptr, ptr %141, align 8, !tbaa !30
  tail call void %142(ptr noundef nonnull %cinfo) #5
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.then225.i, %for.body218.i
  store i32 1, ptr %arrayidx223.i, align 4, !tbaa !56
  %indvars.iv.next505.i = add nuw nsw i64 %indvars.iv504.i, 1
  %exitcond508.not.i = icmp eq i64 %indvars.iv.next505.i, %wide.trip.count507.i
  br i1 %exitcond508.not.i, label %for.inc240.i, label %for.body218.i, !llvm.loop !64

for.inc240.i:                                     ; preds = %for.inc196.i, %if.end233.i, %if.end215.i, %if.end134.i
  %incdec.ptr241.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0466.i, i64 1
  %inc242.i = add nuw nsw i32 %scanno.0463.i, 1
  %143 = load i32, ptr %num_scans.i, align 8, !tbaa !51
  %cmp29.not.not.i = icmp slt i32 %scanno.0463.i, %143
  br i1 %cmp29.not.not.i, label %for.body30.i, label %for.end243.loopexit.i, !llvm.loop !65

for.end243.loopexit.i:                            ; preds = %for.inc240.i
  %.pre.i59 = load i32, ptr %progressive_mode85.i, align 4, !tbaa !55
  %.pre72 = load i32, ptr %num_components48.i, align 4, !tbaa !25
  br label %for.end243.i

for.end243.i:                                     ; preds = %for.end243.loopexit.i, %if.end26.i
  %144 = phi i32 [ %.pre72, %for.end243.loopexit.i ], [ %76, %if.end26.i ]
  %145 = phi i32 [ %.pre.i59, %for.end243.loopexit.i ], [ %77, %if.end26.i ]
  %tobool245.not.i = icmp eq i32 %145, 0
  %cmp267473.i = icmp sgt i32 %144, 0
  br i1 %tobool245.not.i, label %for.cond265.preheader.i, label %for.cond247.preheader.i

for.cond247.preheader.i:                          ; preds = %for.end243.i
  br i1 %cmp267473.i, label %for.body250.i, label %if.end

for.cond265.preheader.i:                          ; preds = %for.end243.i
  br i1 %cmp267473.i, label %for.body268.i, label %if.end

for.body250.i:                                    ; preds = %for.cond247.preheader.i, %for.inc261.i
  %146 = phi i32 [ %150, %for.inc261.i ], [ %144, %for.cond247.preheader.i ]
  %indvars.iv509.i = phi i64 [ %indvars.iv.next510.i, %for.inc261.i ], [ 0, %for.cond247.preheader.i ]
  %arrayidx252.i = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos.i, i64 0, i64 %indvars.iv509.i
  %147 = load i32, ptr %arrayidx252.i, align 16, !tbaa !56
  %cmp254.i = icmp slt i32 %147, 0
  br i1 %cmp254.i, label %if.then255.i, label %for.inc261.i

if.then255.i:                                     ; preds = %for.body250.i
  %148 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code257.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %148, i64 0, i32 5
  store i32 44, ptr %msg_code257.i, align 8, !tbaa !28
  %149 = load ptr, ptr %148, align 8, !tbaa !30
  tail call void %149(ptr noundef nonnull %cinfo) #5
  %.pre515.i = load i32, ptr %num_components48.i, align 4, !tbaa !25
  br label %for.inc261.i

for.inc261.i:                                     ; preds = %if.then255.i, %for.body250.i
  %150 = phi i32 [ %146, %for.body250.i ], [ %.pre515.i, %if.then255.i ]
  %indvars.iv.next510.i = add nuw nsw i64 %indvars.iv509.i, 1
  %151 = sext i32 %150 to i64
  %cmp249.i = icmp slt i64 %indvars.iv.next510.i, %151
  br i1 %cmp249.i, label %for.body250.i, label %if.end, !llvm.loop !66

for.body268.i:                                    ; preds = %for.cond265.preheader.i, %for.inc278.i
  %152 = phi i32 [ %156, %for.inc278.i ], [ %144, %for.cond265.preheader.i ]
  %indvars.iv512.i = phi i64 [ %indvars.iv.next513.i, %for.inc278.i ], [ 0, %for.cond265.preheader.i ]
  %arrayidx270.i = getelementptr inbounds [10 x i32], ptr %component_sent.i, i64 0, i64 %indvars.iv512.i
  %153 = load i32, ptr %arrayidx270.i, align 4, !tbaa !56
  %tobool271.not.i = icmp eq i32 %153, 0
  br i1 %tobool271.not.i, label %if.then272.i, label %for.inc278.i

if.then272.i:                                     ; preds = %for.body268.i
  %154 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code274.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i64 0, i32 5
  store i32 44, ptr %msg_code274.i, align 8, !tbaa !28
  %155 = load ptr, ptr %154, align 8, !tbaa !30
  tail call void %155(ptr noundef nonnull %cinfo) #5
  %.pre516.i = load i32, ptr %num_components48.i, align 4, !tbaa !25
  br label %for.inc278.i

for.inc278.i:                                     ; preds = %if.then272.i, %for.body268.i
  %156 = phi i32 [ %152, %for.body268.i ], [ %.pre516.i, %if.then272.i ]
  %indvars.iv.next513.i = add nuw nsw i64 %indvars.iv512.i, 1
  %157 = sext i32 %156 to i64
  %cmp267.i = icmp slt i64 %indvars.iv.next513.i, %157
  br i1 %cmp267.i, label %for.body268.i, label %if.end, !llvm.loop !67

if.end.thread:                                    ; preds = %initial_setup.exit
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 37
  store i32 0, ptr %progressive_mode, align 4, !tbaa !55
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 21
  br label %if.end7.sink.split

if.end:                                           ; preds = %for.inc261.i, %for.inc278.i, %for.cond265.preheader.i, %for.cond247.preheader.i
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %last_bitpos.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %component_sent.i) #5
  %progressive_mode5.phi.trans.insert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 37
  %.pre73 = load i32, ptr %progressive_mode5.phi.trans.insert, align 4, !tbaa !55
  %phi.cmp = icmp eq i32 %.pre73, 0
  br i1 %phi.cmp, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then6, %if.end.thread
  %num_scans.sink = phi ptr [ %num_scans, %if.end.thread ], [ %optimize_coding, %if.then6 ]
  store i32 1, ptr %num_scans.sink, align 8, !tbaa !56
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.end
  %tobool8.not = icmp eq i32 %transcode_only, 0
  br i1 %tobool8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end7
  %optimize_coding10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  %158 = load i32, ptr %optimize_coding10, align 8, !tbaa !68
  %tobool11.not = icmp eq i32 %158, 0
  %pass_type14 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 1
  br i1 %tobool11.not, label %if.end18.thread, label %if.end18.thread78

if.end18.thread78:                                ; preds = %if.then9
  store i32 1, ptr %pass_type14, align 8, !tbaa !69
  %scan_number79 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 4
  store i32 0, ptr %scan_number79, align 4, !tbaa !70
  %pass_number80 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 2
  store i32 0, ptr %pass_number80, align 4, !tbaa !71
  br label %if.then21

if.end18.thread:                                  ; preds = %if.then9
  store i32 2, ptr %pass_type14, align 8, !tbaa !69
  %scan_number76 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 4
  store i32 0, ptr %scan_number76, align 4, !tbaa !70
  %pass_number77 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 2
  store i32 0, ptr %pass_number77, align 4, !tbaa !71
  br label %if.else23

if.end18:                                         ; preds = %if.end7
  %pass_type17 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 1
  store i32 0, ptr %pass_type17, align 8, !tbaa !69
  %optimize_coding19.phi.trans.insert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  %.pre74 = load i32, ptr %optimize_coding19.phi.trans.insert, align 8, !tbaa !68
  %phi.cmp75 = icmp eq i32 %.pre74, 0
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 4
  store i32 0, ptr %scan_number, align 4, !tbaa !70
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 2
  store i32 0, ptr %pass_number, align 4, !tbaa !71
  br i1 %phi.cmp75, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.end18.thread78, %if.end18
  %num_scans22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 21
  %159 = load i32, ptr %num_scans22, align 8, !tbaa !51
  %mul = shl nsw i32 %159, 1
  br label %if.end26

if.else23:                                        ; preds = %if.end18.thread, %if.end18
  %num_scans24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 21
  %160 = load i32, ptr %num_scans24, align 8, !tbaa !51
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then21
  %mul.sink = phi i32 [ %160, %if.else23 ], [ %mul, %if.then21 ]
  %161 = getelementptr inbounds %struct.my_comp_master, ptr %call, i64 0, i32 3
  store i32 %mul.sink, ptr %161, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @prepare_for_pass(ptr noundef %cinfo) #0 {
entry:
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  %0 = load ptr, ptr %master1, align 8, !tbaa !16
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %pass_type, align 8, !tbaa !69
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb28
  ]

sw.bb:                                            ; preds = %entry
  %scan_info.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 22
  %2 = load ptr, ptr %scan_info.i, align 8, !tbaa !50
  %cmp.not.i = icmp eq ptr %2, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %scan_number.i = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %scan_number.i, align 4, !tbaa !70
  %idx.ext.i = sext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i
  %4 = load i32, ptr %add.ptr.i, align 4, !tbaa !57
  %comps_in_scan3.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  store i32 %4, ptr %comps_in_scan3.i, align 4, !tbaa !72
  %cmp581.i = icmp sgt i32 %4, 0
  br i1 %cmp581.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %comp_info.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %5 = load ptr, ptr %comp_info.i, align 8, !tbaa !35
  %wide.trip.count.i = zext i32 %4 to i64
  %min.iters.check270 = icmp ult i32 %4, 4
  br i1 %min.iters.check270, label %for.body.i.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %for.body.lr.ph.i
  %n.vec273 = and i64 %wide.trip.count.i, 4294967292
  %6 = add nsw i64 %n.vec273, -4
  %7 = lshr exact i64 %6, 2
  %8 = add nuw nsw i64 %7, 1
  %xtraiter308 = and i64 %8, 1
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %middle.block268.unr-lcssa, label %vector.ph271.new

vector.ph271.new:                                 ; preds = %vector.ph271
  %unroll_iter310 = and i64 %8, 9223372036854775806
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph271.new
  %index277 = phi i64 [ 0, %vector.ph271.new ], [ %index.next280.1, %vector.body276 ]
  %niter311 = phi i64 [ 0, %vector.ph271.new ], [ %niter311.next.1, %vector.body276 ]
  %10 = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 1, i64 %index277
  %wide.load278 = load <2 x i32>, ptr %10, align 4, !tbaa !56
  %11 = getelementptr inbounds i32, ptr %10, i64 2
  %wide.load279 = load <2 x i32>, ptr %11, align 4, !tbaa !56
  %12 = sext <2 x i32> %wide.load278 to <2 x i64>
  %13 = sext <2 x i32> %wide.load279 to <2 x i64>
  %14 = getelementptr inbounds %struct.jpeg_component_info, ptr %5, <2 x i64> %12
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %5, <2 x i64> %13
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index277
  store <2 x ptr> %14, ptr %16, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  store <2 x ptr> %15, ptr %17, align 8, !tbaa !73
  %index.next280 = or i64 %index277, 4
  %18 = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 1, i64 %index.next280
  %wide.load278.1 = load <2 x i32>, ptr %18, align 4, !tbaa !56
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  %wide.load279.1 = load <2 x i32>, ptr %19, align 4, !tbaa !56
  %20 = sext <2 x i32> %wide.load278.1 to <2 x i64>
  %21 = sext <2 x i32> %wide.load279.1 to <2 x i64>
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %5, <2 x i64> %20
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %5, <2 x i64> %21
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.next280
  store <2 x ptr> %22, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  store <2 x ptr> %23, ptr %25, align 8, !tbaa !73
  %index.next280.1 = add nuw i64 %index277, 8
  %niter311.next.1 = add i64 %niter311, 2
  %niter311.ncmp.1 = icmp eq i64 %niter311.next.1, %unroll_iter310
  br i1 %niter311.ncmp.1, label %middle.block268.unr-lcssa, label %vector.body276, !llvm.loop !74

middle.block268.unr-lcssa:                        ; preds = %vector.body276, %vector.ph271
  %index277.unr = phi i64 [ 0, %vector.ph271 ], [ %index.next280.1, %vector.body276 ]
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %middle.block268, label %vector.body276.epil

vector.body276.epil:                              ; preds = %middle.block268.unr-lcssa
  %26 = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 1, i64 %index277.unr
  %wide.load278.epil = load <2 x i32>, ptr %26, align 4, !tbaa !56
  %27 = getelementptr inbounds i32, ptr %26, i64 2
  %wide.load279.epil = load <2 x i32>, ptr %27, align 4, !tbaa !56
  %28 = sext <2 x i32> %wide.load278.epil to <2 x i64>
  %29 = sext <2 x i32> %wide.load279.epil to <2 x i64>
  %30 = getelementptr inbounds %struct.jpeg_component_info, ptr %5, <2 x i64> %28
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %5, <2 x i64> %29
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index277.unr
  store <2 x ptr> %30, ptr %32, align 8, !tbaa !73
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  store <2 x ptr> %31, ptr %33, align 8, !tbaa !73
  br label %middle.block268

middle.block268:                                  ; preds = %middle.block268.unr-lcssa, %vector.body276.epil
  %cmp.n275 = icmp eq i64 %n.vec273, %wide.trip.count.i
  br i1 %cmp.n275, label %for.end.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.lr.ph.i, %middle.block268
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.lr.ph.i ], [ %n.vec273, %middle.block268 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 1, i64 %indvars.iv.i
  %34 = load i32, ptr %arrayidx.i, align 4, !tbaa !56
  %idxprom6.i = sext i32 %34 to i64
  %arrayidx7.i = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 %idxprom6.i
  %arrayidx9.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv.i
  store ptr %arrayidx7.i, ptr %arrayidx9.i, align 8, !tbaa !73
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !llvm.loop !76

for.end.i:                                        ; preds = %for.body.i, %middle.block268, %if.then.i
  %Ss.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 2
  %35 = load i32, ptr %Ss.i, align 4, !tbaa !52
  %Ss10.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  store i32 %35, ptr %Ss10.i, align 4, !tbaa !78
  %Se.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 3
  %36 = load i32, ptr %Se.i, align 4, !tbaa !54
  %Se11.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  store i32 %36, ptr %Se11.i, align 8, !tbaa !79
  %Ah.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 4
  %37 = load i32, ptr %Ah.i, align 4, !tbaa !60
  %Ah12.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  store i32 %37, ptr %Ah12.i, align 4, !tbaa !80
  %Al.i = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i64 %idx.ext.i, i32 5
  %38 = load i32, ptr %Al.i, align 4, !tbaa !61
  br label %select_scan_parameters.exit

if.else.i:                                        ; preds = %sw.bb
  %num_components.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %39 = load i32, ptr %num_components.i, align 4, !tbaa !25
  %cmp14.i = icmp sgt i32 %39, 4
  br i1 %cmp14.i, label %if.then15.i, label %if.end.i

if.then15.i:                                      ; preds = %if.else.i
  %40 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 24, ptr %msg_code.i, align 8, !tbaa !28
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 6
  store i32 %39, ptr %msg_parm.i, align 4, !tbaa !31
  %41 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_parm20.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 6
  %arrayidx21.i = getelementptr inbounds [8 x i32], ptr %msg_parm20.i, i64 0, i64 1
  store i32 4, ptr %arrayidx21.i, align 4, !tbaa !31
  %42 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void %43(ptr noundef nonnull %cinfo) #5
  %.pre.i = load i32, ptr %num_components.i, align 4, !tbaa !25
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i, %if.else.i
  %44 = phi i32 [ %.pre.i, %if.then15.i ], [ %39, %if.else.i ]
  %comps_in_scan24.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  store i32 %44, ptr %comps_in_scan24.i, align 4, !tbaa !72
  %cmp2783.i = icmp sgt i32 %44, 0
  br i1 %cmp2783.i, label %for.body28.lr.ph.i, label %for.end37.i

for.body28.lr.ph.i:                               ; preds = %if.end.i
  %comp_info29.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %45 = load ptr, ptr %comp_info29.i, align 8, !tbaa !35
  %wide.trip.count89.i = zext i32 %44 to i64
  %min.iters.check283 = icmp ult i32 %44, 4
  br i1 %min.iters.check283, label %for.body28.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %for.body28.lr.ph.i
  %n.vec286 = and i64 %wide.trip.count89.i, 4294967292
  %46 = add nsw i64 %n.vec286, -4
  %47 = lshr exact i64 %46, 2
  %48 = add nuw nsw i64 %47, 1
  %xtraiter312 = and i64 %48, 1
  %49 = icmp eq i64 %46, 0
  br i1 %49, label %middle.block281.unr-lcssa, label %vector.ph284.new

vector.ph284.new:                                 ; preds = %vector.ph284
  %unroll_iter314 = and i64 %48, 9223372036854775806
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph284.new
  %index290 = phi i64 [ 0, %vector.ph284.new ], [ %index.next295.1, %vector.body289 ]
  %vec.ind291 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph284.new ], [ %vec.ind.next294.1, %vector.body289 ]
  %niter315 = phi i64 [ 0, %vector.ph284.new ], [ %niter315.next.1, %vector.body289 ]
  %step.add292 = add <2 x i64> %vec.ind291, <i64 2, i64 2>
  %50 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, <2 x i64> %vec.ind291
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, <2 x i64> %step.add292
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index290
  store <2 x ptr> %50, ptr %52, align 8, !tbaa !73
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  store <2 x ptr> %51, ptr %53, align 8, !tbaa !73
  %index.next295 = or i64 %index290, 4
  %vec.ind.next294 = add <2 x i64> %vec.ind291, <i64 4, i64 4>
  %step.add292.1 = add <2 x i64> %vec.ind291, <i64 6, i64 6>
  %54 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, <2 x i64> %vec.ind.next294
  %55 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, <2 x i64> %step.add292.1
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.next295
  store <2 x ptr> %54, ptr %56, align 8, !tbaa !73
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  store <2 x ptr> %55, ptr %57, align 8, !tbaa !73
  %index.next295.1 = add nuw i64 %index290, 8
  %vec.ind.next294.1 = add <2 x i64> %vec.ind291, <i64 8, i64 8>
  %niter315.next.1 = add i64 %niter315, 2
  %niter315.ncmp.1 = icmp eq i64 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %middle.block281.unr-lcssa, label %vector.body289, !llvm.loop !81

middle.block281.unr-lcssa:                        ; preds = %vector.body289, %vector.ph284
  %index290.unr = phi i64 [ 0, %vector.ph284 ], [ %index.next295.1, %vector.body289 ]
  %vec.ind291.unr = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph284 ], [ %vec.ind.next294.1, %vector.body289 ]
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %middle.block281, label %vector.body289.epil

vector.body289.epil:                              ; preds = %middle.block281.unr-lcssa
  %step.add292.epil = add <2 x i64> %vec.ind291.unr, <i64 2, i64 2>
  %58 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, <2 x i64> %vec.ind291.unr
  %59 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, <2 x i64> %step.add292.epil
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index290.unr
  store <2 x ptr> %58, ptr %60, align 8, !tbaa !73
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  store <2 x ptr> %59, ptr %61, align 8, !tbaa !73
  br label %middle.block281

middle.block281:                                  ; preds = %middle.block281.unr-lcssa, %vector.body289.epil
  %cmp.n288 = icmp eq i64 %n.vec286, %wide.trip.count89.i
  br i1 %cmp.n288, label %for.end37.i, label %for.body28.i.preheader

for.body28.i.preheader:                           ; preds = %for.body28.lr.ph.i, %middle.block281
  %indvars.iv86.i.ph = phi i64 [ 0, %for.body28.lr.ph.i ], [ %n.vec286, %middle.block281 ]
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.preheader, %for.body28.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %for.body28.i ], [ %indvars.iv86.i.ph, %for.body28.i.preheader ]
  %arrayidx31.i = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 %indvars.iv86.i
  %arrayidx34.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv86.i
  store ptr %arrayidx31.i, ptr %arrayidx34.i, align 8, !tbaa !73
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next87.i, %wide.trip.count89.i
  br i1 %exitcond90.not.i, label %for.end37.i, label %for.body28.i, !llvm.loop !82

for.end37.i:                                      ; preds = %for.body28.i, %middle.block281, %if.end.i
  %Ss38.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  store i32 0, ptr %Ss38.i, align 4, !tbaa !78
  %Se39.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  store i32 63, ptr %Se39.i, align 8, !tbaa !79
  %Ah40.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  store i32 0, ptr %Ah40.i, align 4, !tbaa !80
  br label %select_scan_parameters.exit

select_scan_parameters.exit:                      ; preds = %for.end.i, %for.end37.i
  %.sink.i = phi i32 [ 0, %for.end37.i ], [ %38, %for.end.i ]
  %Al41.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 50
  store i32 %.sink.i, ptr %Al41.i, align 8, !tbaa !83
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %cinfo)
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 23
  %62 = load i32, ptr %raw_data_in, align 8, !tbaa !84
  %tobool.not = icmp eq i32 %62, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %select_scan_parameters.exit
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 56
  %63 = load ptr, ptr %cconvert, align 8, !tbaa !85
  %64 = load ptr, ptr %63, align 8, !tbaa !86
  tail call void %64(ptr noundef nonnull %cinfo) #5
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 57
  %65 = load ptr, ptr %downsample, align 8, !tbaa !88
  %66 = load ptr, ptr %65, align 8, !tbaa !89
  tail call void %66(ptr noundef nonnull %cinfo) #5
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 53
  %67 = load ptr, ptr %prep, align 8, !tbaa !91
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  tail call void %68(ptr noundef nonnull %cinfo, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %select_scan_parameters.exit
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 58
  %69 = load ptr, ptr %fdct, align 8, !tbaa !94
  %70 = load ptr, ptr %69, align 8, !tbaa !95
  tail call void %70(ptr noundef nonnull %cinfo) #5
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %71 = load ptr, ptr %entropy, align 8, !tbaa !97
  %72 = load ptr, ptr %71, align 8, !tbaa !98
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  %73 = load i32, ptr %optimize_coding, align 8, !tbaa !68
  tail call void %72(ptr noundef nonnull %cinfo, i32 noundef %73) #5
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %74 = load ptr, ptr %coef, align 8, !tbaa !100
  %75 = load ptr, ptr %74, align 8, !tbaa !101
  %total_passes = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 3
  %76 = load i32, ptr %total_passes, align 8, !tbaa !103
  %cmp = icmp sgt i32 %76, 1
  %cond = select i1 %cmp, i32 3, i32 0
  tail call void %75(ptr noundef nonnull %cinfo, i32 noundef %cond) #5
  %main = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 52
  %77 = load ptr, ptr %main, align 8, !tbaa !104
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  tail call void %78(ptr noundef nonnull %cinfo, i32 noundef 0) #5
  %79 = load i32, ptr %optimize_coding, align 8, !tbaa !68
  %tobool9.not = icmp eq i32 %79, 0
  %call_pass_startup12 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 3
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %call_pass_startup12, align 8, !tbaa !107
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  store i32 1, ptr %call_pass_startup12, align 8, !tbaa !107
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %scan_info.i115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 22
  %80 = load ptr, ptr %scan_info.i115, align 8, !tbaa !50
  %cmp.not.i116 = icmp eq ptr %80, null
  br i1 %cmp.not.i116, label %if.else.i145, label %if.then.i123

if.then.i123:                                     ; preds = %sw.bb14
  %scan_number.i118 = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 4
  %81 = load i32, ptr %scan_number.i118, align 4, !tbaa !70
  %idx.ext.i119 = sext i32 %81 to i64
  %add.ptr.i120 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119
  %82 = load i32, ptr %add.ptr.i120, align 4, !tbaa !57
  %comps_in_scan3.i121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  store i32 %82, ptr %comps_in_scan3.i121, align 4, !tbaa !72
  %cmp581.i122 = icmp sgt i32 %82, 0
  br i1 %cmp581.i122, label %for.body.lr.ph.i126, label %for.end.i142

for.body.lr.ph.i126:                              ; preds = %if.then.i123
  %comp_info.i124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %83 = load ptr, ptr %comp_info.i124, align 8, !tbaa !35
  %wide.trip.count.i125 = zext i32 %82 to i64
  %min.iters.check = icmp ult i32 %82, 4
  br i1 %min.iters.check, label %for.body.i134.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph.i126
  %n.vec = and i64 %wide.trip.count.i125, 4294967292
  %84 = add nsw i64 %n.vec, -4
  %85 = lshr exact i64 %84, 2
  %86 = add nuw nsw i64 %85, 1
  %xtraiter = and i64 %86, 1
  %87 = icmp eq i64 %84, 0
  br i1 %87, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %86, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %88 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 1, i64 %index
  %wide.load = load <2 x i32>, ptr %88, align 4, !tbaa !56
  %89 = getelementptr inbounds i32, ptr %88, i64 2
  %wide.load227 = load <2 x i32>, ptr %89, align 4, !tbaa !56
  %90 = sext <2 x i32> %wide.load to <2 x i64>
  %91 = sext <2 x i32> %wide.load227 to <2 x i64>
  %92 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, <2 x i64> %90
  %93 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, <2 x i64> %91
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index
  store <2 x ptr> %92, ptr %94, align 8, !tbaa !73
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  store <2 x ptr> %93, ptr %95, align 8, !tbaa !73
  %index.next = or i64 %index, 4
  %96 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 1, i64 %index.next
  %wide.load.1 = load <2 x i32>, ptr %96, align 4, !tbaa !56
  %97 = getelementptr inbounds i32, ptr %96, i64 2
  %wide.load227.1 = load <2 x i32>, ptr %97, align 4, !tbaa !56
  %98 = sext <2 x i32> %wide.load.1 to <2 x i64>
  %99 = sext <2 x i32> %wide.load227.1 to <2 x i64>
  %100 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, <2 x i64> %98
  %101 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, <2 x i64> %99
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.next
  store <2 x ptr> %100, ptr %102, align 8, !tbaa !73
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  store <2 x ptr> %101, ptr %103, align 8, !tbaa !73
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !108

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %104 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 1, i64 %index.unr
  %wide.load.epil = load <2 x i32>, ptr %104, align 4, !tbaa !56
  %105 = getelementptr inbounds i32, ptr %104, i64 2
  %wide.load227.epil = load <2 x i32>, ptr %105, align 4, !tbaa !56
  %106 = sext <2 x i32> %wide.load.epil to <2 x i64>
  %107 = sext <2 x i32> %wide.load227.epil to <2 x i64>
  %108 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, <2 x i64> %106
  %109 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, <2 x i64> %107
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.unr
  store <2 x ptr> %108, ptr %110, align 8, !tbaa !73
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  store <2 x ptr> %109, ptr %111, align 8, !tbaa !73
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i125
  br i1 %cmp.n, label %for.end.i142, label %for.body.i134.preheader

for.body.i134.preheader:                          ; preds = %for.body.lr.ph.i126, %middle.block
  %indvars.iv.i127.ph = phi i64 [ 0, %for.body.lr.ph.i126 ], [ %n.vec, %middle.block ]
  br label %for.body.i134

for.body.i134:                                    ; preds = %for.body.i134.preheader, %for.body.i134
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i132, %for.body.i134 ], [ %indvars.iv.i127.ph, %for.body.i134.preheader ]
  %arrayidx.i128 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 1, i64 %indvars.iv.i127
  %112 = load i32, ptr %arrayidx.i128, align 4, !tbaa !56
  %idxprom6.i129 = sext i32 %112 to i64
  %arrayidx7.i130 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i64 %idxprom6.i129
  %arrayidx9.i131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv.i127
  store ptr %arrayidx7.i130, ptr %arrayidx9.i131, align 8, !tbaa !73
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i127, 1
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, %wide.trip.count.i125
  br i1 %exitcond.not.i133, label %for.end.i142, label %for.body.i134, !llvm.loop !109

for.end.i142:                                     ; preds = %for.body.i134, %middle.block, %if.then.i123
  %Ss.i135 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 2
  %113 = load i32, ptr %Ss.i135, align 4, !tbaa !52
  %Ss10.i136 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  store i32 %113, ptr %Ss10.i136, align 4, !tbaa !78
  %Se.i137 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 3
  %114 = load i32, ptr %Se.i137, align 4, !tbaa !54
  %Se11.i138 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  store i32 %114, ptr %Se11.i138, align 8, !tbaa !79
  %Ah.i139 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 4
  %115 = load i32, ptr %Ah.i139, align 4, !tbaa !60
  %Ah12.i140 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  store i32 %115, ptr %Ah12.i140, align 4, !tbaa !80
  %Al.i141 = getelementptr inbounds %struct.jpeg_scan_info, ptr %80, i64 %idx.ext.i119, i32 5
  %116 = load i32, ptr %Al.i141, align 4, !tbaa !61
  br label %select_scan_parameters.exit170

if.else.i145:                                     ; preds = %sw.bb14
  %num_components.i143 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %117 = load i32, ptr %num_components.i143, align 4, !tbaa !25
  %cmp14.i144 = icmp sgt i32 %117, 4
  br i1 %cmp14.i144, label %if.then15.i151, label %if.end.i154

if.then15.i151:                                   ; preds = %if.else.i145
  %118 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code.i146 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 24, ptr %msg_code.i146, align 8, !tbaa !28
  %msg_parm.i147 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 6
  store i32 %117, ptr %msg_parm.i147, align 4, !tbaa !31
  %119 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_parm20.i148 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %119, i64 0, i32 6
  %arrayidx21.i149 = getelementptr inbounds [8 x i32], ptr %msg_parm20.i148, i64 0, i64 1
  store i32 4, ptr %arrayidx21.i149, align 4, !tbaa !31
  %120 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %121 = load ptr, ptr %120, align 8, !tbaa !30
  tail call void %121(ptr noundef nonnull %cinfo) #5
  %.pre.i150 = load i32, ptr %num_components.i143, align 4, !tbaa !25
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.then15.i151, %if.else.i145
  %122 = phi i32 [ %.pre.i150, %if.then15.i151 ], [ %117, %if.else.i145 ]
  %comps_in_scan24.i152 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  store i32 %122, ptr %comps_in_scan24.i152, align 4, !tbaa !72
  %cmp2783.i153 = icmp sgt i32 %122, 0
  br i1 %cmp2783.i153, label %for.body28.lr.ph.i157, label %for.end37.i167

for.body28.lr.ph.i157:                            ; preds = %if.end.i154
  %comp_info29.i155 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %123 = load ptr, ptr %comp_info29.i155, align 8, !tbaa !35
  %wide.trip.count89.i156 = zext i32 %122 to i64
  %min.iters.check230 = icmp ult i32 %122, 4
  br i1 %min.iters.check230, label %for.body28.i163.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %for.body28.lr.ph.i157
  %n.vec233 = and i64 %wide.trip.count89.i156, 4294967292
  %124 = add nsw i64 %n.vec233, -4
  %125 = lshr exact i64 %124, 2
  %126 = add nuw nsw i64 %125, 1
  %xtraiter296 = and i64 %126, 1
  %127 = icmp eq i64 %124, 0
  br i1 %127, label %middle.block228.unr-lcssa, label %vector.ph231.new

vector.ph231.new:                                 ; preds = %vector.ph231
  %unroll_iter298 = and i64 %126, 9223372036854775806
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph231.new
  %index237 = phi i64 [ 0, %vector.ph231.new ], [ %index.next239.1, %vector.body236 ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph231.new ], [ %vec.ind.next.1, %vector.body236 ]
  %niter299 = phi i64 [ 0, %vector.ph231.new ], [ %niter299.next.1, %vector.body236 ]
  %step.add = add <2 x i64> %vec.ind, <i64 2, i64 2>
  %128 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, <2 x i64> %vec.ind
  %129 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, <2 x i64> %step.add
  %130 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index237
  store <2 x ptr> %128, ptr %130, align 8, !tbaa !73
  %131 = getelementptr inbounds ptr, ptr %130, i64 2
  store <2 x ptr> %129, ptr %131, align 8, !tbaa !73
  %index.next239 = or i64 %index237, 4
  %vec.ind.next = add <2 x i64> %vec.ind, <i64 4, i64 4>
  %step.add.1 = add <2 x i64> %vec.ind, <i64 6, i64 6>
  %132 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, <2 x i64> %vec.ind.next
  %133 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, <2 x i64> %step.add.1
  %134 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.next239
  store <2 x ptr> %132, ptr %134, align 8, !tbaa !73
  %135 = getelementptr inbounds ptr, ptr %134, i64 2
  store <2 x ptr> %133, ptr %135, align 8, !tbaa !73
  %index.next239.1 = add nuw i64 %index237, 8
  %vec.ind.next.1 = add <2 x i64> %vec.ind, <i64 8, i64 8>
  %niter299.next.1 = add i64 %niter299, 2
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %middle.block228.unr-lcssa, label %vector.body236, !llvm.loop !110

middle.block228.unr-lcssa:                        ; preds = %vector.body236, %vector.ph231
  %index237.unr = phi i64 [ 0, %vector.ph231 ], [ %index.next239.1, %vector.body236 ]
  %vec.ind.unr = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph231 ], [ %vec.ind.next.1, %vector.body236 ]
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %middle.block228, label %vector.body236.epil

vector.body236.epil:                              ; preds = %middle.block228.unr-lcssa
  %step.add.epil = add <2 x i64> %vec.ind.unr, <i64 2, i64 2>
  %136 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, <2 x i64> %vec.ind.unr
  %137 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, <2 x i64> %step.add.epil
  %138 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index237.unr
  store <2 x ptr> %136, ptr %138, align 8, !tbaa !73
  %139 = getelementptr inbounds ptr, ptr %138, i64 2
  store <2 x ptr> %137, ptr %139, align 8, !tbaa !73
  br label %middle.block228

middle.block228:                                  ; preds = %middle.block228.unr-lcssa, %vector.body236.epil
  %cmp.n235 = icmp eq i64 %n.vec233, %wide.trip.count89.i156
  br i1 %cmp.n235, label %for.end37.i167, label %for.body28.i163.preheader

for.body28.i163.preheader:                        ; preds = %for.body28.lr.ph.i157, %middle.block228
  %indvars.iv86.i158.ph = phi i64 [ 0, %for.body28.lr.ph.i157 ], [ %n.vec233, %middle.block228 ]
  br label %for.body28.i163

for.body28.i163:                                  ; preds = %for.body28.i163.preheader, %for.body28.i163
  %indvars.iv86.i158 = phi i64 [ %indvars.iv.next87.i161, %for.body28.i163 ], [ %indvars.iv86.i158.ph, %for.body28.i163.preheader ]
  %arrayidx31.i159 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 %indvars.iv86.i158
  %arrayidx34.i160 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv86.i158
  store ptr %arrayidx31.i159, ptr %arrayidx34.i160, align 8, !tbaa !73
  %indvars.iv.next87.i161 = add nuw nsw i64 %indvars.iv86.i158, 1
  %exitcond90.not.i162 = icmp eq i64 %indvars.iv.next87.i161, %wide.trip.count89.i156
  br i1 %exitcond90.not.i162, label %for.end37.i167, label %for.body28.i163, !llvm.loop !111

for.end37.i167:                                   ; preds = %for.body28.i163, %middle.block228, %if.end.i154
  %Ss38.i164 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  store i32 0, ptr %Ss38.i164, align 4, !tbaa !78
  %Se39.i165 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  store i32 63, ptr %Se39.i165, align 8, !tbaa !79
  %Ah40.i166 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  store i32 0, ptr %Ah40.i166, align 4, !tbaa !80
  br label %select_scan_parameters.exit170

select_scan_parameters.exit170:                   ; preds = %for.end.i142, %for.end37.i167
  %.sink.i168 = phi i32 [ 0, %for.end37.i167 ], [ %116, %for.end.i142 ]
  %Al41.i169 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 50
  store i32 %.sink.i168, ptr %Al41.i169, align 8, !tbaa !83
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %cinfo)
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  %140 = load i32, ptr %Ss, align 4, !tbaa !78
  %cmp15.not = icmp eq i32 %140, 0
  br i1 %cmp15.not, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %select_scan_parameters.exit170
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  %141 = load i32, ptr %Ah, align 4, !tbaa !80
  %cmp16 = icmp eq i32 %141, 0
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 24
  %142 = load i32, ptr %arith_code, align 4, !tbaa !112
  %tobool18.not = icmp eq i32 %142, 0
  br i1 %tobool18.not, label %if.end26, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %select_scan_parameters.exit170
  %entropy20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %143 = load ptr, ptr %entropy20, align 8, !tbaa !97
  %144 = load ptr, ptr %143, align 8, !tbaa !98
  tail call void %144(ptr noundef nonnull %cinfo, i32 noundef 1) #5
  %coef22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %145 = load ptr, ptr %coef22, align 8, !tbaa !100
  %146 = load ptr, ptr %145, align 8, !tbaa !101
  tail call void %146(ptr noundef nonnull %cinfo, i32 noundef 2) #5
  %call_pass_startup25 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 3
  store i32 0, ptr %call_pass_startup25, align 8, !tbaa !107
  br label %sw.epilog

if.end26:                                         ; preds = %lor.lhs.false17
  store i32 2, ptr %pass_type, align 8, !tbaa !69
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 2
  %147 = load i32, ptr %pass_number, align 4, !tbaa !71
  %inc = add nsw i32 %147, 1
  store i32 %inc, ptr %pass_number, align 4, !tbaa !71
  br label %sw.bb28

sw.bb28:                                          ; preds = %entry, %if.end26
  %optimize_coding29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  %148 = load i32, ptr %optimize_coding29, align 8, !tbaa !68
  %tobool30.not = icmp eq i32 %148, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb28
  %scan_info.i171 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 22
  %149 = load ptr, ptr %scan_info.i171, align 8, !tbaa !50
  %cmp.not.i172 = icmp eq ptr %149, null
  br i1 %cmp.not.i172, label %if.else.i201, label %if.then.i179

if.then.i179:                                     ; preds = %if.then31
  %150 = load ptr, ptr %master1, align 8, !tbaa !16
  %scan_number.i174 = getelementptr inbounds %struct.my_comp_master, ptr %150, i64 0, i32 4
  %151 = load i32, ptr %scan_number.i174, align 4, !tbaa !70
  %idx.ext.i175 = sext i32 %151 to i64
  %add.ptr.i176 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175
  %152 = load i32, ptr %add.ptr.i176, align 4, !tbaa !57
  %comps_in_scan3.i177 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  store i32 %152, ptr %comps_in_scan3.i177, align 4, !tbaa !72
  %cmp581.i178 = icmp sgt i32 %152, 0
  br i1 %cmp581.i178, label %for.body.lr.ph.i182, label %for.end.i198

for.body.lr.ph.i182:                              ; preds = %if.then.i179
  %comp_info.i180 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %153 = load ptr, ptr %comp_info.i180, align 8, !tbaa !35
  %wide.trip.count.i181 = zext i32 %152 to i64
  %min.iters.check242 = icmp ult i32 %152, 4
  br i1 %min.iters.check242, label %for.body.i190.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %for.body.lr.ph.i182
  %n.vec245 = and i64 %wide.trip.count.i181, 4294967292
  %154 = add nsw i64 %n.vec245, -4
  %155 = lshr exact i64 %154, 2
  %156 = add nuw nsw i64 %155, 1
  %xtraiter300 = and i64 %156, 1
  %157 = icmp eq i64 %154, 0
  br i1 %157, label %middle.block240.unr-lcssa, label %vector.ph243.new

vector.ph243.new:                                 ; preds = %vector.ph243
  %unroll_iter302 = and i64 %156, 9223372036854775806
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph243.new
  %index249 = phi i64 [ 0, %vector.ph243.new ], [ %index.next252.1, %vector.body248 ]
  %niter303 = phi i64 [ 0, %vector.ph243.new ], [ %niter303.next.1, %vector.body248 ]
  %158 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 1, i64 %index249
  %wide.load250 = load <2 x i32>, ptr %158, align 4, !tbaa !56
  %159 = getelementptr inbounds i32, ptr %158, i64 2
  %wide.load251 = load <2 x i32>, ptr %159, align 4, !tbaa !56
  %160 = sext <2 x i32> %wide.load250 to <2 x i64>
  %161 = sext <2 x i32> %wide.load251 to <2 x i64>
  %162 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, <2 x i64> %160
  %163 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, <2 x i64> %161
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index249
  store <2 x ptr> %162, ptr %164, align 8, !tbaa !73
  %165 = getelementptr inbounds ptr, ptr %164, i64 2
  store <2 x ptr> %163, ptr %165, align 8, !tbaa !73
  %index.next252 = or i64 %index249, 4
  %166 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 1, i64 %index.next252
  %wide.load250.1 = load <2 x i32>, ptr %166, align 4, !tbaa !56
  %167 = getelementptr inbounds i32, ptr %166, i64 2
  %wide.load251.1 = load <2 x i32>, ptr %167, align 4, !tbaa !56
  %168 = sext <2 x i32> %wide.load250.1 to <2 x i64>
  %169 = sext <2 x i32> %wide.load251.1 to <2 x i64>
  %170 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, <2 x i64> %168
  %171 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, <2 x i64> %169
  %172 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.next252
  store <2 x ptr> %170, ptr %172, align 8, !tbaa !73
  %173 = getelementptr inbounds ptr, ptr %172, i64 2
  store <2 x ptr> %171, ptr %173, align 8, !tbaa !73
  %index.next252.1 = add nuw i64 %index249, 8
  %niter303.next.1 = add i64 %niter303, 2
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %middle.block240.unr-lcssa, label %vector.body248, !llvm.loop !113

middle.block240.unr-lcssa:                        ; preds = %vector.body248, %vector.ph243
  %index249.unr = phi i64 [ 0, %vector.ph243 ], [ %index.next252.1, %vector.body248 ]
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %middle.block240, label %vector.body248.epil

vector.body248.epil:                              ; preds = %middle.block240.unr-lcssa
  %174 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 1, i64 %index249.unr
  %wide.load250.epil = load <2 x i32>, ptr %174, align 4, !tbaa !56
  %175 = getelementptr inbounds i32, ptr %174, i64 2
  %wide.load251.epil = load <2 x i32>, ptr %175, align 4, !tbaa !56
  %176 = sext <2 x i32> %wide.load250.epil to <2 x i64>
  %177 = sext <2 x i32> %wide.load251.epil to <2 x i64>
  %178 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, <2 x i64> %176
  %179 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, <2 x i64> %177
  %180 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index249.unr
  store <2 x ptr> %178, ptr %180, align 8, !tbaa !73
  %181 = getelementptr inbounds ptr, ptr %180, i64 2
  store <2 x ptr> %179, ptr %181, align 8, !tbaa !73
  br label %middle.block240

middle.block240:                                  ; preds = %middle.block240.unr-lcssa, %vector.body248.epil
  %cmp.n247 = icmp eq i64 %n.vec245, %wide.trip.count.i181
  br i1 %cmp.n247, label %for.end.i198, label %for.body.i190.preheader

for.body.i190.preheader:                          ; preds = %for.body.lr.ph.i182, %middle.block240
  %indvars.iv.i183.ph = phi i64 [ 0, %for.body.lr.ph.i182 ], [ %n.vec245, %middle.block240 ]
  br label %for.body.i190

for.body.i190:                                    ; preds = %for.body.i190.preheader, %for.body.i190
  %indvars.iv.i183 = phi i64 [ %indvars.iv.next.i188, %for.body.i190 ], [ %indvars.iv.i183.ph, %for.body.i190.preheader ]
  %arrayidx.i184 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 1, i64 %indvars.iv.i183
  %182 = load i32, ptr %arrayidx.i184, align 4, !tbaa !56
  %idxprom6.i185 = sext i32 %182 to i64
  %arrayidx7.i186 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, i64 %idxprom6.i185
  %arrayidx9.i187 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv.i183
  store ptr %arrayidx7.i186, ptr %arrayidx9.i187, align 8, !tbaa !73
  %indvars.iv.next.i188 = add nuw nsw i64 %indvars.iv.i183, 1
  %exitcond.not.i189 = icmp eq i64 %indvars.iv.next.i188, %wide.trip.count.i181
  br i1 %exitcond.not.i189, label %for.end.i198, label %for.body.i190, !llvm.loop !114

for.end.i198:                                     ; preds = %for.body.i190, %middle.block240, %if.then.i179
  %Ss.i191 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 2
  %183 = load i32, ptr %Ss.i191, align 4, !tbaa !52
  %Ss10.i192 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  store i32 %183, ptr %Ss10.i192, align 4, !tbaa !78
  %Se.i193 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 3
  %184 = load i32, ptr %Se.i193, align 4, !tbaa !54
  %Se11.i194 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  store i32 %184, ptr %Se11.i194, align 8, !tbaa !79
  %Ah.i195 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 4
  %185 = load i32, ptr %Ah.i195, align 4, !tbaa !60
  %Ah12.i196 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  store i32 %185, ptr %Ah12.i196, align 4, !tbaa !80
  %Al.i197 = getelementptr inbounds %struct.jpeg_scan_info, ptr %149, i64 %idx.ext.i175, i32 5
  %186 = load i32, ptr %Al.i197, align 4, !tbaa !61
  br label %select_scan_parameters.exit226

if.else.i201:                                     ; preds = %if.then31
  %num_components.i199 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %187 = load i32, ptr %num_components.i199, align 4, !tbaa !25
  %cmp14.i200 = icmp sgt i32 %187, 4
  br i1 %cmp14.i200, label %if.then15.i207, label %if.end.i210

if.then15.i207:                                   ; preds = %if.else.i201
  %188 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code.i202 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %188, i64 0, i32 5
  store i32 24, ptr %msg_code.i202, align 8, !tbaa !28
  %msg_parm.i203 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %188, i64 0, i32 6
  store i32 %187, ptr %msg_parm.i203, align 4, !tbaa !31
  %189 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_parm20.i204 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %189, i64 0, i32 6
  %arrayidx21.i205 = getelementptr inbounds [8 x i32], ptr %msg_parm20.i204, i64 0, i64 1
  store i32 4, ptr %arrayidx21.i205, align 4, !tbaa !31
  %190 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %191 = load ptr, ptr %190, align 8, !tbaa !30
  tail call void %191(ptr noundef nonnull %cinfo) #5
  %.pre.i206 = load i32, ptr %num_components.i199, align 4, !tbaa !25
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then15.i207, %if.else.i201
  %192 = phi i32 [ %.pre.i206, %if.then15.i207 ], [ %187, %if.else.i201 ]
  %comps_in_scan24.i208 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  store i32 %192, ptr %comps_in_scan24.i208, align 4, !tbaa !72
  %cmp2783.i209 = icmp sgt i32 %192, 0
  br i1 %cmp2783.i209, label %for.body28.lr.ph.i213, label %for.end37.i223

for.body28.lr.ph.i213:                            ; preds = %if.end.i210
  %comp_info29.i211 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %193 = load ptr, ptr %comp_info29.i211, align 8, !tbaa !35
  %wide.trip.count89.i212 = zext i32 %192 to i64
  %min.iters.check255 = icmp ult i32 %192, 4
  br i1 %min.iters.check255, label %for.body28.i219.preheader, label %vector.ph256

vector.ph256:                                     ; preds = %for.body28.lr.ph.i213
  %n.vec258 = and i64 %wide.trip.count89.i212, 4294967292
  %194 = add nsw i64 %n.vec258, -4
  %195 = lshr exact i64 %194, 2
  %196 = add nuw nsw i64 %195, 1
  %xtraiter304 = and i64 %196, 1
  %197 = icmp eq i64 %194, 0
  br i1 %197, label %middle.block253.unr-lcssa, label %vector.ph256.new

vector.ph256.new:                                 ; preds = %vector.ph256
  %unroll_iter306 = and i64 %196, 9223372036854775806
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph256.new
  %index262 = phi i64 [ 0, %vector.ph256.new ], [ %index.next267.1, %vector.body261 ]
  %vec.ind263 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph256.new ], [ %vec.ind.next266.1, %vector.body261 ]
  %niter307 = phi i64 [ 0, %vector.ph256.new ], [ %niter307.next.1, %vector.body261 ]
  %step.add264 = add <2 x i64> %vec.ind263, <i64 2, i64 2>
  %198 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, <2 x i64> %vec.ind263
  %199 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, <2 x i64> %step.add264
  %200 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index262
  store <2 x ptr> %198, ptr %200, align 8, !tbaa !73
  %201 = getelementptr inbounds ptr, ptr %200, i64 2
  store <2 x ptr> %199, ptr %201, align 8, !tbaa !73
  %index.next267 = or i64 %index262, 4
  %vec.ind.next266 = add <2 x i64> %vec.ind263, <i64 4, i64 4>
  %step.add264.1 = add <2 x i64> %vec.ind263, <i64 6, i64 6>
  %202 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, <2 x i64> %vec.ind.next266
  %203 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, <2 x i64> %step.add264.1
  %204 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index.next267
  store <2 x ptr> %202, ptr %204, align 8, !tbaa !73
  %205 = getelementptr inbounds ptr, ptr %204, i64 2
  store <2 x ptr> %203, ptr %205, align 8, !tbaa !73
  %index.next267.1 = add nuw i64 %index262, 8
  %vec.ind.next266.1 = add <2 x i64> %vec.ind263, <i64 8, i64 8>
  %niter307.next.1 = add i64 %niter307, 2
  %niter307.ncmp.1 = icmp eq i64 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %middle.block253.unr-lcssa, label %vector.body261, !llvm.loop !115

middle.block253.unr-lcssa:                        ; preds = %vector.body261, %vector.ph256
  %index262.unr = phi i64 [ 0, %vector.ph256 ], [ %index.next267.1, %vector.body261 ]
  %vec.ind263.unr = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph256 ], [ %vec.ind.next266.1, %vector.body261 ]
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %middle.block253, label %vector.body261.epil

vector.body261.epil:                              ; preds = %middle.block253.unr-lcssa
  %step.add264.epil = add <2 x i64> %vec.ind263.unr, <i64 2, i64 2>
  %206 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, <2 x i64> %vec.ind263.unr
  %207 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, <2 x i64> %step.add264.epil
  %208 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %index262.unr
  store <2 x ptr> %206, ptr %208, align 8, !tbaa !73
  %209 = getelementptr inbounds ptr, ptr %208, i64 2
  store <2 x ptr> %207, ptr %209, align 8, !tbaa !73
  br label %middle.block253

middle.block253:                                  ; preds = %middle.block253.unr-lcssa, %vector.body261.epil
  %cmp.n260 = icmp eq i64 %n.vec258, %wide.trip.count89.i212
  br i1 %cmp.n260, label %for.end37.i223, label %for.body28.i219.preheader

for.body28.i219.preheader:                        ; preds = %for.body28.lr.ph.i213, %middle.block253
  %indvars.iv86.i214.ph = phi i64 [ 0, %for.body28.lr.ph.i213 ], [ %n.vec258, %middle.block253 ]
  br label %for.body28.i219

for.body28.i219:                                  ; preds = %for.body28.i219.preheader, %for.body28.i219
  %indvars.iv86.i214 = phi i64 [ %indvars.iv.next87.i217, %for.body28.i219 ], [ %indvars.iv86.i214.ph, %for.body28.i219.preheader ]
  %arrayidx31.i215 = getelementptr inbounds %struct.jpeg_component_info, ptr %193, i64 %indvars.iv86.i214
  %arrayidx34.i216 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv86.i214
  store ptr %arrayidx31.i215, ptr %arrayidx34.i216, align 8, !tbaa !73
  %indvars.iv.next87.i217 = add nuw nsw i64 %indvars.iv86.i214, 1
  %exitcond90.not.i218 = icmp eq i64 %indvars.iv.next87.i217, %wide.trip.count89.i212
  br i1 %exitcond90.not.i218, label %for.end37.i223, label %for.body28.i219, !llvm.loop !116

for.end37.i223:                                   ; preds = %for.body28.i219, %middle.block253, %if.end.i210
  %Ss38.i220 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  store i32 0, ptr %Ss38.i220, align 4, !tbaa !78
  %Se39.i221 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  store i32 63, ptr %Se39.i221, align 8, !tbaa !79
  %Ah40.i222 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 49
  store i32 0, ptr %Ah40.i222, align 4, !tbaa !80
  br label %select_scan_parameters.exit226

select_scan_parameters.exit226:                   ; preds = %for.end.i198, %for.end37.i223
  %.sink.i224 = phi i32 [ 0, %for.end37.i223 ], [ %186, %for.end.i198 ]
  %Al41.i225 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 50
  store i32 %.sink.i224, ptr %Al41.i225, align 8, !tbaa !83
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %cinfo)
  br label %if.end32

if.end32:                                         ; preds = %select_scan_parameters.exit226, %sw.bb28
  %entropy33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %210 = load ptr, ptr %entropy33, align 8, !tbaa !97
  %211 = load ptr, ptr %210, align 8, !tbaa !98
  tail call void %211(ptr noundef nonnull %cinfo, i32 noundef 0) #5
  %coef35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %212 = load ptr, ptr %coef35, align 8, !tbaa !100
  %213 = load ptr, ptr %212, align 8, !tbaa !101
  tail call void %213(ptr noundef nonnull %cinfo, i32 noundef 2) #5
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 4
  %214 = load i32, ptr %scan_number, align 4, !tbaa !70
  %cmp37 = icmp eq i32 %214, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 55
  %215 = load ptr, ptr %marker, align 8, !tbaa !117
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %215, i64 0, i32 2
  %216 = load ptr, ptr %write_frame_header, align 8, !tbaa !118
  tail call void %216(ptr noundef nonnull %cinfo) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end32
  %marker40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 55
  %217 = load ptr, ptr %marker40, align 8, !tbaa !117
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %217, i64 0, i32 3
  %218 = load ptr, ptr %write_scan_header, align 8, !tbaa !120
  tail call void %218(ptr noundef nonnull %cinfo) #5
  %call_pass_startup42 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 3
  store i32 0, ptr %call_pass_startup42, align 8, !tbaa !107
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %219 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %219, i64 0, i32 5
  store i32 47, ptr %msg_code, align 8, !tbaa !28
  %220 = load ptr, ptr %219, align 8, !tbaa !30
  tail call void %220(ptr noundef nonnull %cinfo) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %if.else, %sw.default, %if.end39, %if.then19
  %pass_number44 = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 2
  %221 = load i32, ptr %pass_number44, align 4, !tbaa !71
  %total_passes45 = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 3
  %222 = load i32, ptr %total_passes45, align 8, !tbaa !103
  %sub = add nsw i32 %222, -1
  %cmp46 = icmp eq i32 %221, %sub
  %conv = zext i1 %cmp46 to i32
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 4
  store i32 %conv, ptr %is_last_pass, align 4, !tbaa !22
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 2
  %223 = load ptr, ptr %progress, align 8, !tbaa !121
  %cmp48.not = icmp eq ptr %223, null
  br i1 %cmp48.not, label %if.end56, label %if.then50

if.then50:                                        ; preds = %sw.epilog
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %223, i64 0, i32 3
  store i32 %221, ptr %completed_passes, align 8, !tbaa !122
  %total_passes55 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %223, i64 0, i32 4
  store i32 %222, ptr %total_passes55, align 4, !tbaa !124
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_startup(ptr noundef %cinfo) #0 {
entry:
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  %0 = load ptr, ptr %master, align 8, !tbaa !16
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 3
  store i32 0, ptr %call_pass_startup, align 8, !tbaa !125
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 55
  %1 = load ptr, ptr %marker, align 8, !tbaa !117
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %write_frame_header, align 8, !tbaa !118
  tail call void %2(ptr noundef %cinfo) #5
  %3 = load ptr, ptr %marker, align 8, !tbaa !117
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %write_scan_header, align 8, !tbaa !120
  tail call void %4(ptr noundef %cinfo) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_master(ptr noundef %cinfo) #0 {
entry:
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  %0 = load ptr, ptr %master1, align 8, !tbaa !16
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %1 = load ptr, ptr %entropy, align 8, !tbaa !97
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %finish_pass, align 8, !tbaa !126
  tail call void %2(ptr noundef %cinfo) #5
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %pass_type, align 8, !tbaa !69
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, ptr %pass_type, align 8, !tbaa !69
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  %4 = load i32, ptr %optimize_coding, align 8, !tbaa !68
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %scan_number, align 4, !tbaa !70
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %scan_number, align 4, !tbaa !70
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 2, ptr %pass_type, align 8, !tbaa !69
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %optimize_coding6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 25
  %6 = load i32, ptr %optimize_coding6, align 8, !tbaa !68
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  store i32 1, ptr %pass_type, align 8, !tbaa !69
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb5
  %scan_number11 = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %scan_number11, align 4, !tbaa !70
  %inc12 = add nsw i32 %7, 1
  store i32 %inc12, ptr %scan_number11, align 4, !tbaa !70
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then, %entry, %if.end10, %sw.bb3
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %pass_number, align 4, !tbaa !71
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, ptr %pass_number, align 4, !tbaa !71
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @per_scan_setup(ptr noundef %cinfo) unnamed_addr #0 {
entry:
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  %0 = load i32, ptr %comps_in_scan, align 4, !tbaa !72
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42
  %1 = load ptr, ptr %cur_comp_info, align 8, !tbaa !73
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %width_in_blocks, align 4, !tbaa !43
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 43
  store i32 %2, ptr %MCUs_per_row, align 8, !tbaa !127
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 8
  %3 = load i32, ptr %height_in_blocks, align 8, !tbaa !44
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 44
  store i32 %3, ptr %MCU_rows_in_scan, align 4, !tbaa !128
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 13
  store <4 x i32> <i32 1, i32 1, i32 1, i32 8>, ptr %MCU_width, align 4, !tbaa !56
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 17
  store i32 1, ptr %last_col_width, align 4, !tbaa !129
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %v_samp_factor, align 4, !tbaa !38
  %rem = urem i32 %3, %4
  %cmp2 = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp2, i32 %4, i32 %rem
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 18
  store i32 %spec.select, ptr %last_row_height, align 8, !tbaa !130
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 45
  store i32 1, ptr %blocks_in_MCU, align 8, !tbaa !131
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 46
  store i32 0, ptr %MCU_membership, align 4, !tbaa !56
  br label %if.end79

if.else:                                          ; preds = %entry
  %5 = add i32 %0, -5
  %6 = icmp ult i32 %5, -4
  br i1 %6, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.else
  %7 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 24, ptr %msg_code, align 8, !tbaa !28
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %0, ptr %msg_parm, align 4, !tbaa !31
  %8 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_parm15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %msg_parm15, i64 0, i64 1
  store i32 4, ptr %arrayidx16, align 4, !tbaa !31
  %9 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  tail call void %10(ptr noundef nonnull %cinfo) #5
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then10
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %11 = load i32, ptr %image_width, align 8, !tbaa !24
  %conv = zext i32 %11 to i64
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 38
  %12 = load i32, ptr %max_h_samp_factor, align 8, !tbaa !33
  %mul = shl nsw i32 %12, 3
  %conv19 = sext i32 %mul to i64
  %call = tail call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef %conv19) #5
  %conv20 = trunc i64 %call to i32
  %MCUs_per_row21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 43
  store i32 %conv20, ptr %MCUs_per_row21, align 8, !tbaa !127
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  %13 = load i32, ptr %image_height, align 4, !tbaa !23
  %conv22 = zext i32 %13 to i64
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 39
  %14 = load i32, ptr %max_v_samp_factor, align 4, !tbaa !34
  %mul23 = shl nsw i32 %14, 3
  %conv24 = sext i32 %mul23 to i64
  %call25 = tail call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef %conv24) #5
  %conv26 = trunc i64 %call25 to i32
  %MCU_rows_in_scan27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 44
  store i32 %conv26, ptr %MCU_rows_in_scan27, align 4, !tbaa !128
  %blocks_in_MCU28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 45
  store i32 0, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %15 = load i32, ptr %comps_in_scan, align 4, !tbaa !72
  %cmp30168 = icmp sgt i32 %15, 0
  br i1 %cmp30168, label %for.body, label %if.end79

for.body:                                         ; preds = %if.end18, %for.inc.for.body_crit_edge
  %16 = phi i32 [ %.pre, %for.inc.for.body_crit_edge ], [ 0, %if.end18 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.end18 ]
  %arrayidx33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv
  %17 = load ptr, ptr %arrayidx33, align 8, !tbaa !73
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 2
  %18 = load i32, ptr %h_samp_factor, align 8, !tbaa !36
  %MCU_width34 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 13
  store i32 %18, ptr %MCU_width34, align 4, !tbaa !132
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %v_samp_factor35, align 4, !tbaa !38
  %MCU_height36 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 14
  store i32 %19, ptr %MCU_height36, align 8, !tbaa !133
  %mul39 = mul i32 %19, %18
  %MCU_blocks40 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 15
  store i32 %mul39, ptr %MCU_blocks40, align 4, !tbaa !134
  %mul42 = shl nsw i32 %18, 3
  %MCU_sample_width43 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 16
  store i32 %mul42, ptr %MCU_sample_width43, align 8, !tbaa !135
  %width_in_blocks44 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %width_in_blocks44, align 4, !tbaa !43
  %rem46 = urem i32 %20, %18
  %cmp47 = icmp eq i32 %rem46, 0
  %spec.select163 = select i1 %cmp47, i32 %18, i32 %rem46
  %last_col_width52 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 17
  store i32 %spec.select163, ptr %last_col_width52, align 4, !tbaa !129
  %height_in_blocks53 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 8
  %21 = load i32, ptr %height_in_blocks53, align 8, !tbaa !44
  %rem55 = urem i32 %21, %19
  %cmp56 = icmp eq i32 %rem55, 0
  %spec.select164 = select i1 %cmp56, i32 %19, i32 %rem55
  %last_row_height61 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 18
  store i32 %spec.select164, ptr %last_row_height61, align 8, !tbaa !130
  %add = add nsw i32 %16, %mul39
  %cmp64 = icmp sgt i32 %add, 10
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %for.body
  %22 = load ptr, ptr %cinfo, align 8, !tbaa !27
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 11, ptr %msg_code68, align 8, !tbaa !28
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  tail call void %23(ptr noundef nonnull %cinfo) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %for.body
  %cmp72166 = icmp sgt i32 %mul39, 0
  br i1 %cmp72166, label %while.body.preheader, label %for.inc

while.body.preheader:                             ; preds = %if.end71
  %24 = trunc i64 %indvars.iv to i32
  %25 = add i32 %mul39, -1
  %xtraiter = and i32 %mul39, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader, %while.body.prol
  %mcublks.0167.prol = phi i32 [ %dec.prol, %while.body.prol ], [ %mul39, %while.body.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.prol ], [ 0, %while.body.preheader ]
  %dec.prol = add nsw i32 %mcublks.0167.prol, -1
  %26 = load i32, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %inc.prol = add nsw i32 %26, 1
  store i32 %inc.prol, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %idxprom76.prol = sext i32 %26 to i64
  %arrayidx77.prol = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 46, i64 %idxprom76.prol
  store i32 %24, ptr %arrayidx77.prol, align 4, !tbaa !56
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.prol.loopexit, label %while.body.prol, !llvm.loop !136

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %mcublks.0167.unr = phi i32 [ %mul39, %while.body.preheader ], [ %dec.prol, %while.body.prol ]
  %27 = icmp ult i32 %25, 3
  br i1 %27, label %for.inc, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %mcublks.0167 = phi i32 [ %dec.3, %while.body ], [ %mcublks.0167.unr, %while.body.prol.loopexit ]
  %28 = load i32, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %idxprom76 = sext i32 %28 to i64
  %arrayidx77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 46, i64 %idxprom76
  store i32 %24, ptr %arrayidx77, align 4, !tbaa !56
  %29 = load i32, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %inc.1 = add nsw i32 %29, 1
  store i32 %inc.1, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %idxprom76.1 = sext i32 %29 to i64
  %arrayidx77.1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 46, i64 %idxprom76.1
  store i32 %24, ptr %arrayidx77.1, align 4, !tbaa !56
  %30 = load i32, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %inc.2 = add nsw i32 %30, 1
  store i32 %inc.2, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %idxprom76.2 = sext i32 %30 to i64
  %arrayidx77.2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 46, i64 %idxprom76.2
  store i32 %24, ptr %arrayidx77.2, align 4, !tbaa !56
  %dec.3 = add nsw i32 %mcublks.0167, -4
  %31 = load i32, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %inc.3 = add nsw i32 %31, 1
  store i32 %inc.3, ptr %blocks_in_MCU28, align 8, !tbaa !131
  %idxprom76.3 = sext i32 %31 to i64
  %arrayidx77.3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 46, i64 %idxprom76.3
  store i32 %24, ptr %arrayidx77.3, align 4, !tbaa !56
  %32 = add i32 %mcublks.0167, -5
  %cmp72.3 = icmp ult i32 %32, -2
  br i1 %cmp72.3, label %while.body, label %for.inc, !llvm.loop !138

for.inc:                                          ; preds = %while.body.prol.loopexit, %while.body, %if.end71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = load i32, ptr %comps_in_scan, align 4, !tbaa !72
  %34 = sext i32 %33 to i64
  %cmp30 = icmp slt i64 %indvars.iv.next, %34
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %if.end79, !llvm.loop !139

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, ptr %blocks_in_MCU28, align 8, !tbaa !131
  br label %for.body

if.end79:                                         ; preds = %for.inc, %if.end18, %if.then
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 30
  %35 = load i32, ptr %restart_in_rows, align 4, !tbaa !140
  %cmp80 = icmp sgt i32 %35, 0
  br i1 %cmp80, label %if.then82, label %if.end91

if.then82:                                        ; preds = %if.end79
  %conv84165 = zext i32 %35 to i64
  %MCUs_per_row85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 43
  %36 = load i32, ptr %MCUs_per_row85, align 8, !tbaa !127
  %conv86 = zext i32 %36 to i64
  %mul87 = mul nuw nsw i64 %conv86, %conv84165
  %37 = tail call i64 @llvm.smin.i64(i64 %mul87, i64 65535)
  %conv90 = trunc i64 %37 to i32
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 29
  store i32 %conv90, ptr %restart_interval, align 8, !tbaa !141
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.end79
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !8, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !8, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 424}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!19 = !{!"jpeg_comp_master", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !7, i64 16}
!22 = !{!18, !10, i64 28}
!23 = !{!6, !10, i64 44}
!24 = !{!6, !10, i64 40}
!25 = !{!6, !10, i64 68}
!26 = !{!6, !10, i64 48}
!27 = !{!6, !7, i64 0}
!28 = !{!29, !10, i64 40}
!29 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!30 = !{!29, !7, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!6, !10, i64 64}
!33 = !{!6, !10, i64 304}
!34 = !{!6, !10, i64 308}
!35 = !{!6, !7, i64 80}
!36 = !{!37, !10, i64 8}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!38 = !{!37, !10, i64 12}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!37, !10, i64 4}
!42 = !{!37, !10, i64 36}
!43 = !{!37, !10, i64 28}
!44 = !{!37, !10, i64 32}
!45 = !{!37, !10, i64 40}
!46 = !{!37, !10, i64 44}
!47 = !{!37, !10, i64 48}
!48 = distinct !{!48, !40}
!49 = !{!6, !10, i64 312}
!50 = !{!6, !7, i64 240}
!51 = !{!6, !10, i64 232}
!52 = !{!53, !10, i64 20}
!53 = !{!"", !10, i64 0, !8, i64 4, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!54 = !{!53, !10, i64 24}
!55 = !{!6, !10, i64 300}
!56 = !{!10, !10, i64 0}
!57 = !{!53, !10, i64 0}
!58 = distinct !{!58, !40, !59}
!59 = !{!"llvm.loop.peeled.count", i32 1}
!60 = !{!53, !10, i64 28}
!61 = !{!53, !10, i64 32}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = !{!6, !10, i64 256}
!69 = !{!18, !8, i64 32}
!70 = !{!18, !10, i64 44}
!71 = !{!18, !10, i64 36}
!72 = !{!6, !10, i64 316}
!73 = !{!7, !7, i64 0}
!74 = distinct !{!74, !40, !75}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = distinct !{!76, !40, !77, !75}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!6, !10, i64 404}
!79 = !{!6, !10, i64 408}
!80 = !{!6, !10, i64 412}
!81 = distinct !{!81, !40, !75}
!82 = distinct !{!82, !40, !77, !75}
!83 = !{!6, !10, i64 416}
!84 = !{!6, !10, i64 248}
!85 = !{!6, !7, i64 464}
!86 = !{!87, !7, i64 0}
!87 = !{!"jpeg_color_converter", !7, i64 0, !7, i64 8}
!88 = !{!6, !7, i64 472}
!89 = !{!90, !7, i64 0}
!90 = !{!"jpeg_downsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!91 = !{!6, !7, i64 440}
!92 = !{!93, !7, i64 0}
!93 = !{!"jpeg_c_prep_controller", !7, i64 0, !7, i64 8}
!94 = !{!6, !7, i64 480}
!95 = !{!96, !7, i64 0}
!96 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!97 = !{!6, !7, i64 488}
!98 = !{!99, !7, i64 0}
!99 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!100 = !{!6, !7, i64 448}
!101 = !{!102, !7, i64 0}
!102 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!103 = !{!18, !10, i64 40}
!104 = !{!6, !7, i64 432}
!105 = !{!106, !7, i64 0}
!106 = !{!"jpeg_c_main_controller", !7, i64 0, !7, i64 8}
!107 = !{!18, !10, i64 24}
!108 = distinct !{!108, !40, !75}
!109 = distinct !{!109, !40, !77, !75}
!110 = distinct !{!110, !40, !75}
!111 = distinct !{!111, !40, !77, !75}
!112 = !{!6, !10, i64 252}
!113 = distinct !{!113, !40, !75}
!114 = distinct !{!114, !40, !77, !75}
!115 = distinct !{!115, !40, !75}
!116 = distinct !{!116, !40, !77, !75}
!117 = !{!6, !7, i64 456}
!118 = !{!119, !7, i64 16}
!119 = !{!"jpeg_marker_writer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!120 = !{!119, !7, i64 24}
!121 = !{!6, !7, i64 16}
!122 = !{!123, !10, i64 24}
!123 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!124 = !{!123, !10, i64 28}
!125 = !{!19, !10, i64 24}
!126 = !{!99, !7, i64 16}
!127 = !{!6, !10, i64 352}
!128 = !{!6, !10, i64 356}
!129 = !{!37, !10, i64 68}
!130 = !{!37, !10, i64 72}
!131 = !{!6, !10, i64 360}
!132 = !{!37, !10, i64 52}
!133 = !{!37, !10, i64 56}
!134 = !{!37, !10, i64 60}
!135 = !{!37, !10, i64 64}
!136 = distinct !{!136, !137}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = distinct !{!138, !40}
!139 = distinct !{!139, !40}
!140 = !{!6, !10, i64 276}
!141 = !{!6, !10, i64 272}
