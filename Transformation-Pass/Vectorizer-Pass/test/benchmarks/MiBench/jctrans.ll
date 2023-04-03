; ModuleID = 'jctrans.c'
source_filename = "jctrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, ptr, [10 x ptr] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_write_coefficients(ptr noundef %cinfo, ptr noundef %coef_arrays) local_unnamed_addr #0 {
entry:
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 6
  store i32 %0, ptr %msg_parm, align 4, !tbaa !17
  %2 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void %3(ptr noundef nonnull %cinfo) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @jpeg_suppress_tables(ptr noundef nonnull %cinfo, i32 noundef 0) #4
  %4 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %reset_error_mgr, align 8, !tbaa !19
  tail call void %5(ptr noundef nonnull %cinfo) #4
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %6 = load ptr, ptr %dest, align 8, !tbaa !20
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %init_destination, align 8, !tbaa !21
  tail call void %7(ptr noundef nonnull %cinfo) #4
  %input_components.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 8
  store i32 1, ptr %input_components.i, align 8, !tbaa !23
  tail call void @jinit_c_master_control(ptr noundef nonnull %cinfo, i32 noundef 1) #4
  %arith_code.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 24
  %8 = load i32, ptr %arith_code.i, align 4, !tbaa !24
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %9 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 1, ptr %msg_code.i, align 8, !tbaa !14
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  tail call void %10(ptr noundef nonnull %cinfo) #4
  br label %transencode_master_selection.exit

if.else.i:                                        ; preds = %if.end
  %progressive_mode.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 37
  %11 = load i32, ptr %progressive_mode.i, align 4, !tbaa !25
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  tail call void @jinit_phuff_encoder(ptr noundef nonnull %cinfo) #4
  br label %transencode_master_selection.exit

if.else4.i:                                       ; preds = %if.else.i
  tail call void @jinit_huff_encoder(ptr noundef nonnull %cinfo) #4
  br label %transencode_master_selection.exit

transencode_master_selection.exit:                ; preds = %if.then.i, %if.then3.i, %if.else4.i
  %mem.i.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %12 = load ptr, ptr %mem.i.i, align 8, !tbaa !26
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %call.i.i = tail call ptr %13(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef 120) #4
  %coef1.i.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  store ptr %call.i.i, ptr %coef1.i.i, align 8, !tbaa !29
  store ptr @start_pass_coef, ptr %call.i.i, align 8, !tbaa !30
  %compress_data.i.i = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %call.i.i, i64 0, i32 1
  store ptr @compress_output, ptr %compress_data.i.i, align 8, !tbaa !33
  %whole_image.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 5
  store ptr %coef_arrays, ptr %whole_image.i.i, align 8, !tbaa !34
  %14 = load ptr, ptr %mem.i.i, align 8, !tbaa !26
  %alloc_large.i.i = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %alloc_large.i.i, align 8, !tbaa !35
  %call4.i.i = tail call ptr %15(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef 1280) #4
  tail call void @jzero_far(ptr noundef %call4.i.i, i64 noundef 1280) #4
  %arrayidx.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 6, i64 0
  store ptr %call4.i.i, ptr %arrayidx.i.i, align 8, !tbaa !36
  %arrayidx.1.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 6, i64 1
  %16 = insertelement <2 x ptr> poison, ptr %call4.i.i, i64 0
  %17 = shufflevector <2 x ptr> %16, <2 x ptr> poison, <2 x i32> zeroinitializer
  %18 = getelementptr [64 x i16], <2 x ptr> %17, <2 x i64> <i64 1, i64 2>
  store <2 x ptr> %18, ptr %arrayidx.1.i.i, align 8, !tbaa !36
  %arrayidx.3.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 6, i64 3
  %19 = getelementptr [64 x i16], <2 x ptr> %17, <2 x i64> <i64 3, i64 4>
  store <2 x ptr> %19, ptr %arrayidx.3.i.i, align 8, !tbaa !36
  %arrayidx.5.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 6, i64 5
  %20 = getelementptr [64 x i16], <2 x ptr> %17, <2 x i64> <i64 5, i64 6>
  store <2 x ptr> %20, ptr %arrayidx.5.i.i, align 8, !tbaa !36
  %arrayidx.7.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 6, i64 7
  %21 = getelementptr [64 x i16], <2 x ptr> %17, <2 x i64> <i64 7, i64 8>
  store <2 x ptr> %21, ptr %arrayidx.7.i.i, align 8, !tbaa !36
  %add.ptr.9.i.i = getelementptr inbounds [64 x i16], ptr %call4.i.i, i64 9
  %arrayidx.9.i.i = getelementptr inbounds %struct.my_coef_controller, ptr %call.i.i, i64 0, i32 6, i64 9
  store ptr %add.ptr.9.i.i, ptr %arrayidx.9.i.i, align 8, !tbaa !36
  tail call void @jinit_marker_writer(ptr noundef nonnull %cinfo) #4
  %22 = load ptr, ptr %mem.i.i, align 8, !tbaa !26
  %realize_virt_arrays.i = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %22, i64 0, i32 6
  %23 = load ptr, ptr %realize_virt_arrays.i, align 8, !tbaa !37
  tail call void %23(ptr noundef nonnull %cinfo) #4
  %marker.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 55
  %24 = load ptr, ptr %marker.i, align 8, !tbaa !38
  %write_file_header.i = getelementptr inbounds %struct.jpeg_marker_writer, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %write_file_header.i, align 8, !tbaa !39
  tail call void %25(ptr noundef nonnull %cinfo) #4
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 36
  store i32 0, ptr %next_scanline, align 8, !tbaa !41
  store i32 103, ptr %global_state, align 4, !tbaa !5
  ret void
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_copy_critical_parameters(ptr nocapture noundef readonly %srcinfo, ptr noundef %dstinfo) local_unnamed_addr #0 {
entry:
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 6
  store i32 %0, ptr %msg_parm, align 4, !tbaa !17
  %2 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void %3(ptr noundef nonnull %dstinfo) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 6
  %image_width4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 6
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 9
  %4 = load <4 x i32>, ptr %image_width, align 8, !tbaa !17
  store <4 x i32> %4, ptr %image_width4, align 8, !tbaa !17
  tail call void @jpeg_set_defaults(ptr noundef nonnull %dstinfo) #4
  %5 = load i32, ptr %jpeg_color_space, align 4, !tbaa !42
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %dstinfo, i32 noundef %5) #4
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 42
  %6 = load i32, ptr %data_precision, align 8, !tbaa !44
  %data_precision7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 11
  store i32 %6, ptr %data_precision7, align 8, !tbaa !45
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 56
  %7 = load i32, ptr %CCIR601_sampling, align 8, !tbaa !46
  %CCIR601_sampling8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 26
  store i32 %7, ptr %CCIR601_sampling8, align 4, !tbaa !47
  %arrayidx10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 39, i64 0
  %8 = load ptr, ptr %arrayidx10, align 8, !tbaa !36
  %cmp11.not = icmp eq ptr %8, null
  br i1 %cmp11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %if.end
  %arrayidx15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 15, i64 0
  %9 = load ptr, ptr %arrayidx15, align 8, !tbaa !36
  %cmp16 = icmp eq ptr %9, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then12
  %call = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %dstinfo) #4
  store ptr %call, ptr %arrayidx15, align 8, !tbaa !36
  %.pre = load ptr, ptr %arrayidx10, align 8, !tbaa !36
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then12
  %10 = phi ptr [ %.pre, %if.then17 ], [ %8, %if.then12 ]
  %11 = phi ptr [ %call, %if.then17 ], [ %9, %if.then12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %11, ptr noundef nonnull align 4 dereferenceable(128) %10, i64 128, i1 false)
  %12 = load ptr, ptr %arrayidx15, align 8, !tbaa !36
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %12, i64 0, i32 1
  store i32 0, ptr %sent_table, align 4, !tbaa !48
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.end18
  %arrayidx10.1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 39, i64 1
  %13 = load ptr, ptr %arrayidx10.1, align 8, !tbaa !36
  %cmp11.not.1 = icmp eq ptr %13, null
  br i1 %cmp11.not.1, label %for.inc.1, label %if.then12.1

if.then12.1:                                      ; preds = %for.inc
  %arrayidx15.1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 15, i64 1
  %14 = load ptr, ptr %arrayidx15.1, align 8, !tbaa !36
  %cmp16.1 = icmp eq ptr %14, null
  br i1 %cmp16.1, label %if.then17.1, label %if.end18.1

if.then17.1:                                      ; preds = %if.then12.1
  %call.1 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %dstinfo) #4
  store ptr %call.1, ptr %arrayidx15.1, align 8, !tbaa !36
  %.pre190 = load ptr, ptr %arrayidx10.1, align 8, !tbaa !36
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.then17.1, %if.then12.1
  %15 = phi ptr [ %.pre190, %if.then17.1 ], [ %13, %if.then12.1 ]
  %16 = phi ptr [ %call.1, %if.then17.1 ], [ %14, %if.then12.1 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %16, ptr noundef nonnull align 4 dereferenceable(128) %15, i64 128, i1 false)
  %17 = load ptr, ptr %arrayidx15.1, align 8, !tbaa !36
  %sent_table.1 = getelementptr inbounds %struct.JQUANT_TBL, ptr %17, i64 0, i32 1
  store i32 0, ptr %sent_table.1, align 4, !tbaa !48
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end18.1, %for.inc
  %arrayidx10.2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 39, i64 2
  %18 = load ptr, ptr %arrayidx10.2, align 8, !tbaa !36
  %cmp11.not.2 = icmp eq ptr %18, null
  br i1 %cmp11.not.2, label %for.inc.2, label %if.then12.2

if.then12.2:                                      ; preds = %for.inc.1
  %arrayidx15.2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 15, i64 2
  %19 = load ptr, ptr %arrayidx15.2, align 8, !tbaa !36
  %cmp16.2 = icmp eq ptr %19, null
  br i1 %cmp16.2, label %if.then17.2, label %if.end18.2

if.then17.2:                                      ; preds = %if.then12.2
  %call.2 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %dstinfo) #4
  store ptr %call.2, ptr %arrayidx15.2, align 8, !tbaa !36
  %.pre191 = load ptr, ptr %arrayidx10.2, align 8, !tbaa !36
  br label %if.end18.2

if.end18.2:                                       ; preds = %if.then17.2, %if.then12.2
  %20 = phi ptr [ %.pre191, %if.then17.2 ], [ %18, %if.then12.2 ]
  %21 = phi ptr [ %call.2, %if.then17.2 ], [ %19, %if.then12.2 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %21, ptr noundef nonnull align 4 dereferenceable(128) %20, i64 128, i1 false)
  %22 = load ptr, ptr %arrayidx15.2, align 8, !tbaa !36
  %sent_table.2 = getelementptr inbounds %struct.JQUANT_TBL, ptr %22, i64 0, i32 1
  store i32 0, ptr %sent_table.2, align 4, !tbaa !48
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end18.2, %for.inc.1
  %arrayidx10.3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 39, i64 3
  %23 = load ptr, ptr %arrayidx10.3, align 8, !tbaa !36
  %cmp11.not.3 = icmp eq ptr %23, null
  br i1 %cmp11.not.3, label %for.inc.3, label %if.then12.3

if.then12.3:                                      ; preds = %for.inc.2
  %arrayidx15.3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 15, i64 3
  %24 = load ptr, ptr %arrayidx15.3, align 8, !tbaa !36
  %cmp16.3 = icmp eq ptr %24, null
  br i1 %cmp16.3, label %if.then17.3, label %if.end18.3

if.then17.3:                                      ; preds = %if.then12.3
  %call.3 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %dstinfo) #4
  store ptr %call.3, ptr %arrayidx15.3, align 8, !tbaa !36
  %.pre192 = load ptr, ptr %arrayidx10.3, align 8, !tbaa !36
  br label %if.end18.3

if.end18.3:                                       ; preds = %if.then17.3, %if.then12.3
  %25 = phi ptr [ %.pre192, %if.then17.3 ], [ %23, %if.then12.3 ]
  %26 = phi ptr [ %call.3, %if.then17.3 ], [ %24, %if.then12.3 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %26, ptr noundef nonnull align 4 dereferenceable(128) %25, i64 128, i1 false)
  %27 = load ptr, ptr %arrayidx15.3, align 8, !tbaa !36
  %sent_table.3 = getelementptr inbounds %struct.JQUANT_TBL, ptr %27, i64 0, i32 1
  store i32 0, ptr %sent_table.3, align 4, !tbaa !48
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end18.3, %for.inc.2
  %28 = load i32, ptr %num_components, align 8, !tbaa !50
  %num_components26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 12
  store i32 %28, ptr %num_components26, align 4, !tbaa !51
  %29 = add i32 %28, -11
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %if.end43, label %for.body48.preheader

if.end43:                                         ; preds = %for.inc.3
  %31 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %msg_code33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 24, ptr %msg_code33, align 8, !tbaa !14
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %28, ptr %msg_parm36, align 4, !tbaa !17
  %32 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 6
  %arrayidx40 = getelementptr inbounds [8 x i32], ptr %msg_parm39, i64 0, i64 1
  store i32 10, ptr %arrayidx40, align 4, !tbaa !17
  %33 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %34 = load ptr, ptr %33, align 8, !tbaa !18
  tail call void %34(ptr noundef nonnull %dstinfo) #4
  %.pre193 = load i32, ptr %num_components26, align 4, !tbaa !51
  %cmp47184 = icmp sgt i32 %.pre193, 0
  br i1 %cmp47184, label %for.body48.preheader, label %for.end104

for.body48.preheader:                             ; preds = %for.inc.3, %if.end43
  %comp_info44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 14
  %35 = load ptr, ptr %comp_info44, align 8, !tbaa !52
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 43
  %36 = load ptr, ptr %comp_info, align 8, !tbaa !53
  br label %for.body48

for.body48:                                       ; preds = %for.body48.preheader, %for.inc101
  %ci.0187 = phi i32 [ %inc102, %for.inc101 ], [ 0, %for.body48.preheader ]
  %incomp.0186 = phi ptr [ %incdec.ptr, %for.inc101 ], [ %36, %for.body48.preheader ]
  %outcomp.0185 = phi ptr [ %incdec.ptr103, %for.inc101 ], [ %35, %for.body48.preheader ]
  %37 = load i32, ptr %incomp.0186, align 8, !tbaa !54
  store i32 %37, ptr %outcomp.0185, align 8, !tbaa !54
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %incomp.0186, i64 0, i32 2
  %38 = load i32, ptr %h_samp_factor, align 8, !tbaa !56
  %h_samp_factor50 = getelementptr inbounds %struct.jpeg_component_info, ptr %outcomp.0185, i64 0, i32 2
  store i32 %38, ptr %h_samp_factor50, align 8, !tbaa !56
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %incomp.0186, i64 0, i32 3
  %39 = load i32, ptr %v_samp_factor, align 4, !tbaa !57
  %v_samp_factor51 = getelementptr inbounds %struct.jpeg_component_info, ptr %outcomp.0185, i64 0, i32 3
  store i32 %39, ptr %v_samp_factor51, align 4, !tbaa !57
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %incomp.0186, i64 0, i32 4
  %40 = load i32, ptr %quant_tbl_no, align 8, !tbaa !58
  %quant_tbl_no52 = getelementptr inbounds %struct.jpeg_component_info, ptr %outcomp.0185, i64 0, i32 4
  store i32 %40, ptr %quant_tbl_no52, align 8, !tbaa !58
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %for.body48
  %idxprom59181 = zext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 39, i64 %idxprom59181
  %42 = load ptr, ptr %arrayidx60, align 8, !tbaa !36
  %cmp61 = icmp eq ptr %42, null
  br i1 %cmp61, label %if.then62, label %if.end70

if.then62:                                        ; preds = %lor.lhs.false57, %for.body48
  %43 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 5
  store i32 51, ptr %msg_code64, align 8, !tbaa !14
  %msg_parm66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 6
  store i32 %40, ptr %msg_parm66, align 4, !tbaa !17
  %44 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  tail call void %45(ptr noundef nonnull %dstinfo) #4
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %lor.lhs.false57
  %idxprom72 = sext i32 %40 to i64
  %arrayidx73 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 39, i64 %idxprom72
  %46 = load ptr, ptr %arrayidx73, align 8, !tbaa !36
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %incomp.0186, i64 0, i32 19
  %47 = load ptr, ptr %quant_table, align 8, !tbaa !59
  %cmp74.not = icmp eq ptr %47, null
  br i1 %cmp74.not, label %for.inc101, label %for.body78

for.body78:                                       ; preds = %if.end70, %for.inc97
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc97 ], [ 0, %if.end70 ]
  %arrayidx81 = getelementptr inbounds [64 x i16], ptr %47, i64 0, i64 %indvars.iv
  %48 = load i16, ptr %arrayidx81, align 2, !tbaa !60
  %arrayidx84 = getelementptr inbounds [64 x i16], ptr %46, i64 0, i64 %indvars.iv
  %49 = load i16, ptr %arrayidx84, align 2, !tbaa !60
  %cmp86.not = icmp eq i16 %48, %49
  br i1 %cmp86.not, label %for.inc97, label %if.then88

if.then88:                                        ; preds = %for.body78
  %50 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 43, ptr %msg_code90, align 8, !tbaa !14
  %msg_parm92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6
  store i32 %40, ptr %msg_parm92, align 4, !tbaa !17
  %51 = load ptr, ptr %dstinfo, align 8, !tbaa !13
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  tail call void %52(ptr noundef nonnull %dstinfo) #4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body78, %if.then88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc101, label %for.body78, !llvm.loop !61

for.inc101:                                       ; preds = %for.inc97, %if.end70
  %inc102 = add nuw nsw i32 %ci.0187, 1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %incomp.0186, i64 1
  %incdec.ptr103 = getelementptr inbounds %struct.jpeg_component_info, ptr %outcomp.0185, i64 1
  %53 = load i32, ptr %num_components26, align 4, !tbaa !51
  %cmp47 = icmp slt i32 %inc102, %53
  br i1 %cmp47, label %for.body48, label %for.end104, !llvm.loop !63

for.end104:                                       ; preds = %for.inc101, %if.end43
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @jinit_c_master_control(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jinit_phuff_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_huff_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_marker_writer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8, !tbaa !29
  %cmp.not = icmp eq i32 %pass_mode, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8, !tbaa !14
  %2 = load ptr, ptr %1, align 8, !tbaa !18
  tail call void %2(ptr noundef nonnull %cinfo) #4
  %.pre = load ptr, ptr %coef1, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi ptr [ %.pre, %if.then ], [ %0, %entry ]
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 1
  store i32 0, ptr %iMCU_row_num, align 8, !tbaa !64
  %comps_in_scan.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  %4 = load i32, ptr %comps_in_scan.i, align 4, !tbaa !65
  %cmp.i = icmp sgt i32 %4, 1
  br i1 %cmp.i, label %start_iMCU_row.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end
  %iMCU_row_num.i = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %iMCU_row_num.i, align 8, !tbaa !64
  %total_iMCU_rows.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 40
  %6 = load i32, ptr %total_iMCU_rows.i, align 8, !tbaa !66
  %sub.i = add i32 %6, -1
  %cmp2.i = icmp ult i32 %5, %sub.i
  %cur_comp_info.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42
  %7 = load ptr, ptr %cur_comp_info.i, align 8, !tbaa !36
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %v_samp_factor.i, align 4, !tbaa !57
  br label %start_iMCU_row.exit

if.else5.i:                                       ; preds = %if.else.i
  %last_row_height.i = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 18
  %9 = load i32, ptr %last_row_height.i, align 8, !tbaa !67
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %if.end, %if.then3.i, %if.else5.i
  %.sink.i = phi i32 [ %8, %if.then3.i ], [ %9, %if.else5.i ], [ 1, %if.end ]
  %MCU_rows_per_iMCU_row4.i = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 4
  store i32 %.sink.i, ptr %MCU_rows_per_iMCU_row4.i, align 4, !tbaa !68
  %mcu_ctr.i = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 2
  store i32 0, ptr %mcu_ctr.i, align 4, !tbaa !69
  %MCU_vert_offset.i = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 3
  store i32 0, ptr %MCU_vert_offset.i, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_output(ptr noundef %cinfo, ptr nocapture noundef readnone %input_buf) #0 {
entry:
  %buffer = alloca [4 x ptr], align 16
  %MCU_buffer = alloca [10 x ptr], align 16
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8, !tbaa !29
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 43
  %1 = load i32, ptr %MCUs_per_row, align 8, !tbaa !71
  %sub = add i32 %1, -1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 40
  %2 = load i32, ptr %total_iMCU_rows, align 8, !tbaa !66
  %sub2 = add i32 %2, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %MCU_buffer) #4
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  %3 = load i32, ptr %comps_in_scan, align 4, !tbaa !65
  %cmp158 = icmp sgt i32 %3, 0
  br i1 %cmp158, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 5
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !36
  %5 = load ptr, ptr %mem, align 8, !tbaa !26
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i64 0, i32 8
  %6 = load ptr, ptr %access_virt_barray, align 8, !tbaa !72
  %7 = load ptr, ptr %whole_image, align 8, !tbaa !34
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %component_index, align 4, !tbaa !73
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom3
  %9 = load ptr, ptr %arrayidx4, align 8, !tbaa !36
  %10 = load i32, ptr %iMCU_row_num, align 8, !tbaa !64
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %v_samp_factor, align 4, !tbaa !57
  %mul = mul i32 %11, %10
  %call = tail call ptr %6(ptr noundef nonnull %cinfo, ptr noundef %9, i32 noundef %mul, i32 noundef %11, i32 noundef 0) #4
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %indvars.iv
  store ptr %call, ptr %arrayidx7, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32, ptr %comps_in_scan, align 4, !tbaa !65
  %13 = sext i32 %12 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !74

for.end:                                          ; preds = %for.body, %entry
  %14 = phi i32 [ %3, %entry ], [ %12, %for.body ]
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %MCU_vert_offset, align 8, !tbaa !70
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %MCU_rows_per_iMCU_row, align 4, !tbaa !68
  %cmp9216 = icmp slt i32 %15, %16
  br i1 %cmp9216, label %for.body10.lr.ph, label %for.end83

for.body10.lr.ph:                                 ; preds = %for.end
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 2
  %iMCU_row_num28 = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 1
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %17 = sext i32 %15 to i64
  %.pre = load i32, ptr %mcu_ctr, align 4, !tbaa !69
  %.pre253 = load i32, ptr %MCUs_per_row, align 8, !tbaa !71
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.end79
  %18 = phi i32 [ %16, %for.body10.lr.ph ], [ %96, %for.end79 ]
  %19 = phi i32 [ %.pre253, %for.body10.lr.ph ], [ %97, %for.end79 ]
  %20 = phi i32 [ %.pre, %for.body10.lr.ph ], [ 0, %for.end79 ]
  %indvars.iv250 = phi i64 [ %17, %for.body10.lr.ph ], [ %indvars.iv.next251, %for.end79 ]
  %cmp13214 = icmp ult i32 %20, %19
  br i1 %cmp13214, label %for.cond15.preheader, label %for.end79

for.cond15.preheader:                             ; preds = %for.body10, %for.inc77
  %MCU_col_num.0215 = phi i32 [ %inc78, %for.inc77 ], [ %20, %for.body10 ]
  %21 = load i32, ptr %comps_in_scan, align 4, !tbaa !65
  %cmp17211 = icmp sgt i32 %21, 0
  br i1 %cmp17211, label %for.body18.lr.ph, label %for.end71

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader
  %cmp23 = icmp ult i32 %MCU_col_num.0215, %sub
  %wide.trip.count248 = zext i32 %21 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc69
  %indvars.iv245 = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next246, %for.inc69 ]
  %blkn.0212 = phi i32 [ 0, %for.body18.lr.ph ], [ %blkn.1.lcssa, %for.inc69 ]
  %arrayidx21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42, i64 %indvars.iv245
  %22 = load ptr, ptr %arrayidx21, align 8, !tbaa !36
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0, i32 13
  %23 = load i32, ptr %MCU_width, align 4, !tbaa !75
  %mul22 = mul i32 %23, %MCU_col_num.0215
  br i1 %cmp23, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body18
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %last_col_width, align 4, !tbaa !76
  br label %cond.end

cond.end:                                         ; preds = %for.body18, %cond.false
  %cond = phi i32 [ %24, %cond.false ], [ %23, %for.body18 ]
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0, i32 14
  %25 = load i32, ptr %MCU_height, align 8, !tbaa !77
  %cmp26169 = icmp sgt i32 %25, 0
  br i1 %cmp26169, label %for.body27.lr.ph, label %for.inc69

for.body27.lr.ph:                                 ; preds = %cond.end
  %26 = load i32, ptr %iMCU_row_num28, align 8, !tbaa !64
  %cmp29 = icmp ult i32 %26, %sub2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0, i32 18
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %indvars.iv245
  %idx.ext = zext i32 %mul22 to i64
  %cmp37160 = icmp sgt i32 %cond, 0
  br i1 %cmp37160, label %for.body27.us.preheader, label %for.body27.lr.ph.split

for.body27.us.preheader:                          ; preds = %for.body27.lr.ph
  %wide.trip.count = zext i32 %25 to i64
  %27 = add i32 %cond, -1
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %28, 1
  %30 = and i64 %29, 8589934588
  %31 = add nsw i64 %30, -4
  %32 = lshr exact i64 %31, 2
  %33 = add nuw nsw i64 %32, 1
  %min.iters.check = icmp ult i32 %27, 3
  %n.vec = and i64 %29, 8589934588
  %34 = shl nuw nsw i64 %n.vec, 7
  %ind.end268 = trunc i64 %n.vec to i32
  %xtraiter274 = and i64 %33, 3
  %35 = icmp ult i64 %31, 12
  %unroll_iter276 = and i64 %33, 9223372036854775804
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  %cmp.n = icmp eq i64 %29, %n.vec
  br label %for.body27.us

for.body27.us:                                    ; preds = %for.body27.us.preheader, %for.inc66.us
  %indvars.iv239 = phi i64 [ 0, %for.body27.us.preheader ], [ %indvars.iv.next240, %for.inc66.us ]
  %blkn.1170.us = phi i32 [ %blkn.0212, %for.body27.us.preheader ], [ %blkn.4.lcssa.us, %for.inc66.us ]
  %.pre256 = add nsw i64 %indvars.iv239, %indvars.iv250
  br i1 %cmp29, label %if.then.us, label %lor.lhs.false.us

lor.lhs.false.us:                                 ; preds = %for.body27.us
  %36 = load i32, ptr %last_row_height, align 8, !tbaa !67
  %37 = sext i32 %36 to i64
  %cmp30.us = icmp slt i64 %.pre256, %37
  br i1 %cmp30.us, label %if.then.us, label %if.end.us

if.then.us:                                       ; preds = %for.body27.us, %lor.lhs.false.us
  %38 = load ptr, ptr %arrayidx32, align 8, !tbaa !36
  %arrayidx35.us = getelementptr inbounds ptr, ptr %38, i64 %.pre256
  %39 = load ptr, ptr %arrayidx35.us, align 8, !tbaa !36
  %add.ptr.us = getelementptr inbounds [64 x i16], ptr %39, i64 %idx.ext
  %40 = sext i32 %blkn.1170.us to i64
  br i1 %min.iters.check, label %for.body38.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %if.then.us
  %ind.end = add nsw i64 %n.vec, %40
  %ind.end266 = getelementptr i8, ptr %add.ptr.us, i64 %34
  br i1 %35, label %middle.block.unr-lcssa, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %pointer.phi = phi ptr [ %ptr.ind.3, %vector.body ], [ %add.ptr.us, %vector.ph ]
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.ph ]
  %niter277 = phi i64 [ %niter277.next.3, %vector.body ], [ 0, %vector.ph ]
  %41 = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128>
  %42 = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 256, i64 384>
  %offset.idx = add i64 %index, %40
  %43 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %offset.idx
  store <2 x ptr> %41, ptr %43, align 8, !tbaa !36
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  store <2 x ptr> %42, ptr %44, align 8, !tbaa !36
  %index.next = or i64 %index, 4
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %45 = getelementptr i8, ptr %ptr.ind, <2 x i64> <i64 0, i64 128>
  %46 = getelementptr i8, ptr %ptr.ind, <2 x i64> <i64 256, i64 384>
  %offset.idx.1 = add i64 %index.next, %40
  %47 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %offset.idx.1
  store <2 x ptr> %45, ptr %47, align 8, !tbaa !36
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  store <2 x ptr> %46, ptr %48, align 8, !tbaa !36
  %index.next.1 = or i64 %index, 8
  %ptr.ind.1 = getelementptr i8, ptr %pointer.phi, i64 1024
  %49 = getelementptr i8, ptr %ptr.ind.1, <2 x i64> <i64 0, i64 128>
  %50 = getelementptr i8, ptr %ptr.ind.1, <2 x i64> <i64 256, i64 384>
  %offset.idx.2 = add i64 %index.next.1, %40
  %51 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %offset.idx.2
  store <2 x ptr> %49, ptr %51, align 8, !tbaa !36
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  store <2 x ptr> %50, ptr %52, align 8, !tbaa !36
  %index.next.2 = or i64 %index, 12
  %ptr.ind.2 = getelementptr i8, ptr %pointer.phi, i64 1536
  %53 = getelementptr i8, ptr %ptr.ind.2, <2 x i64> <i64 0, i64 128>
  %54 = getelementptr i8, ptr %ptr.ind.2, <2 x i64> <i64 256, i64 384>
  %offset.idx.3 = add i64 %index.next.2, %40
  %55 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %offset.idx.3
  store <2 x ptr> %53, ptr %55, align 8, !tbaa !36
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  store <2 x ptr> %54, ptr %56, align 8, !tbaa !36
  %index.next.3 = add nuw i64 %index, 16
  %ptr.ind.3 = getelementptr i8, ptr %pointer.phi, i64 2048
  %niter277.next.3 = add nuw i64 %niter277, 4
  %niter277.ncmp.3 = icmp eq i64 %niter277.next.3, %unroll_iter276
  br i1 %niter277.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !78

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %pointer.phi.unr = phi ptr [ %add.ptr.us, %vector.ph ], [ %ptr.ind.3, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  br i1 %lcmp.mod275.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %pointer.phi.epil = phi ptr [ %ptr.ind.epil, %vector.body.epil ], [ %pointer.phi.unr, %middle.block.unr-lcssa ]
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %57 = getelementptr i8, ptr %pointer.phi.epil, <2 x i64> <i64 0, i64 128>
  %58 = getelementptr i8, ptr %pointer.phi.epil, <2 x i64> <i64 256, i64 384>
  %offset.idx.epil = add i64 %index.epil, %40
  %59 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %offset.idx.epil
  store <2 x ptr> %57, ptr %59, align 8, !tbaa !36
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  store <2 x ptr> %58, ptr %60, align 8, !tbaa !36
  %index.next.epil = add nuw i64 %index.epil, 4
  %ptr.ind.epil = getelementptr i8, ptr %pointer.phi.epil, i64 512
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter274
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !80

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  br i1 %cmp.n, label %if.end.us.loopexit, label %for.body38.us.preheader

for.body38.us.preheader:                          ; preds = %if.then.us, %middle.block
  %indvars.iv230.ph = phi i64 [ %40, %if.then.us ], [ %ind.end, %middle.block ]
  %buffer_ptr.0163.us.ph = phi ptr [ %add.ptr.us, %if.then.us ], [ %ind.end266, %middle.block ]
  %xindex.0162.us.ph = phi i32 [ 0, %if.then.us ], [ %ind.end268, %middle.block ]
  br label %for.body38.us

if.end.us.loopexit:                               ; preds = %for.body38.us, %middle.block
  %indvars.iv.next231.lcssa = phi i64 [ %ind.end, %middle.block ], [ %indvars.iv.next231, %for.body38.us ]
  %61 = trunc i64 %indvars.iv.next231.lcssa to i32
  br label %if.end.us

if.end.us:                                        ; preds = %if.end.us.loopexit, %lor.lhs.false.us
  %blkn.3.us = phi i32 [ %blkn.1170.us, %lor.lhs.false.us ], [ %61, %if.end.us.loopexit ]
  %xindex.1.us = phi i32 [ 0, %lor.lhs.false.us ], [ %cond, %if.end.us.loopexit ]
  %cmp47165.us = icmp sgt i32 %23, %xindex.1.us
  br i1 %cmp47165.us, label %for.body48.us.preheader, label %for.inc66.us

for.body48.us.preheader:                          ; preds = %if.end.us
  %62 = sext i32 %blkn.3.us to i64
  %63 = sub i32 %23, %xindex.1.us
  %.neg = add i32 %xindex.1.us, 1
  %xtraiter278 = and i32 %63, 1
  %lcmp.mod279.not = icmp eq i32 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %for.body48.us.prol.loopexit, label %for.body48.us.prol

for.body48.us.prol:                               ; preds = %for.body48.us.preheader
  %arrayidx50.us.prol = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 6, i64 %62
  %64 = load ptr, ptr %arrayidx50.us.prol, align 8, !tbaa !36
  %arrayidx52.us.prol = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %62
  store ptr %64, ptr %arrayidx52.us.prol, align 8, !tbaa !36
  %65 = add nsw i64 %62, -1
  %arrayidx55.us.prol = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %65
  %66 = load ptr, ptr %arrayidx55.us.prol, align 8, !tbaa !36
  %67 = load i16, ptr %66, align 2, !tbaa !60
  store i16 %67, ptr %64, align 2, !tbaa !60
  %indvars.iv.next235.prol = add nsw i64 %62, 1
  %inc64.us.prol = add nuw nsw i32 %xindex.1.us, 1
  br label %for.body48.us.prol.loopexit

for.body48.us.prol.loopexit:                      ; preds = %for.body48.us.prol, %for.body48.us.preheader
  %indvars.iv.next235.lcssa.unr = phi i64 [ undef, %for.body48.us.preheader ], [ %indvars.iv.next235.prol, %for.body48.us.prol ]
  %indvars.iv234.unr = phi i64 [ %62, %for.body48.us.preheader ], [ %indvars.iv.next235.prol, %for.body48.us.prol ]
  %xindex.2167.us.unr = phi i32 [ %xindex.1.us, %for.body48.us.preheader ], [ %inc64.us.prol, %for.body48.us.prol ]
  %68 = icmp eq i32 %23, %.neg
  br i1 %68, label %for.inc66.us.loopexit, label %for.body48.us

for.inc66.us.loopexit:                            ; preds = %for.body48.us, %for.body48.us.prol.loopexit
  %indvars.iv.next235.lcssa = phi i64 [ %indvars.iv.next235.lcssa.unr, %for.body48.us.prol.loopexit ], [ %indvars.iv.next235.1, %for.body48.us ]
  %69 = trunc i64 %indvars.iv.next235.lcssa to i32
  br label %for.inc66.us

for.inc66.us:                                     ; preds = %for.inc66.us.loopexit, %if.end.us
  %blkn.4.lcssa.us = phi i32 [ %blkn.3.us, %if.end.us ], [ %69, %for.inc66.us.loopexit ]
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  %exitcond244.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count
  br i1 %exitcond244.not, label %for.inc69, label %for.body27.us, !llvm.loop !82

for.body48.us:                                    ; preds = %for.body48.us.prol.loopexit, %for.body48.us
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.1, %for.body48.us ], [ %indvars.iv234.unr, %for.body48.us.prol.loopexit ]
  %xindex.2167.us = phi i32 [ %inc64.us.1, %for.body48.us ], [ %xindex.2167.us.unr, %for.body48.us.prol.loopexit ]
  %arrayidx50.us = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 6, i64 %indvars.iv234
  %70 = load ptr, ptr %arrayidx50.us, align 8, !tbaa !36
  %arrayidx52.us = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv234
  store ptr %70, ptr %arrayidx52.us, align 8, !tbaa !36
  %71 = add nsw i64 %indvars.iv234, -1
  %arrayidx55.us = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %71
  %72 = load ptr, ptr %arrayidx55.us, align 8, !tbaa !36
  %73 = load i16, ptr %72, align 2, !tbaa !60
  store i16 %73, ptr %70, align 2, !tbaa !60
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1
  %arrayidx50.us.1 = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 6, i64 %indvars.iv.next235
  %74 = load ptr, ptr %arrayidx50.us.1, align 8, !tbaa !36
  %arrayidx52.us.1 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv.next235
  store ptr %74, ptr %arrayidx52.us.1, align 8, !tbaa !36
  %arrayidx55.us.1 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv234
  %75 = load ptr, ptr %arrayidx55.us.1, align 8, !tbaa !36
  %76 = load i16, ptr %75, align 2, !tbaa !60
  store i16 %76, ptr %74, align 2, !tbaa !60
  %indvars.iv.next235.1 = add nsw i64 %indvars.iv234, 2
  %inc64.us.1 = add nuw nsw i32 %xindex.2167.us, 2
  %exitcond238.not.1 = icmp eq i32 %inc64.us.1, %23
  br i1 %exitcond238.not.1, label %for.inc66.us.loopexit, label %for.body48.us, !llvm.loop !83

for.body38.us:                                    ; preds = %for.body38.us.preheader, %for.body38.us
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %for.body38.us ], [ %indvars.iv230.ph, %for.body38.us.preheader ]
  %buffer_ptr.0163.us = phi ptr [ %incdec.ptr.us, %for.body38.us ], [ %buffer_ptr.0163.us.ph, %for.body38.us.preheader ]
  %xindex.0162.us = phi i32 [ %inc43.us, %for.body38.us ], [ %xindex.0162.us.ph, %for.body38.us.preheader ]
  %incdec.ptr.us = getelementptr inbounds [64 x i16], ptr %buffer_ptr.0163.us, i64 1
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, 1
  %arrayidx41.us = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv230
  store ptr %buffer_ptr.0163.us, ptr %arrayidx41.us, align 8, !tbaa !36
  %inc43.us = add nuw nsw i32 %xindex.0162.us, 1
  %exitcond233.not = icmp eq i32 %inc43.us, %cond
  br i1 %exitcond233.not, label %if.end.us.loopexit, label %for.body38.us, !llvm.loop !84

for.body27.lr.ph.split:                           ; preds = %for.body27.lr.ph
  %cmp47165 = icmp sgt i32 %23, 0
  br i1 %cmp47165, label %for.body27.us174.preheader, label %for.inc69

for.body27.us174.preheader:                       ; preds = %for.body27.lr.ph.split
  %xtraiter = and i32 %23, 1
  %77 = icmp eq i32 %23, 1
  %unroll_iter = and i32 %23, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %for.body27.us174

for.body27.us174:                                 ; preds = %for.body27.us174.preheader, %for.cond45.for.inc66_crit_edge.us199
  %yindex.0171.us175 = phi i32 [ %inc67.us184, %for.cond45.for.inc66_crit_edge.us199 ], [ 0, %for.body27.us174.preheader ]
  %blkn.1170.us176 = phi i32 [ %90, %for.cond45.for.inc66_crit_edge.us199 ], [ %blkn.0212, %for.body27.us174.preheader ]
  %78 = sext i32 %blkn.1170.us176 to i64
  br i1 %77, label %for.cond45.for.inc66_crit_edge.us199.unr-lcssa, label %for.body48.us186

for.body48.us186:                                 ; preds = %for.body27.us174, %for.body48.us186
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %for.body48.us186 ], [ %78, %for.body27.us174 ]
  %niter = phi i32 [ %niter.next.1, %for.body48.us186 ], [ 0, %for.body27.us174 ]
  %arrayidx50.us190 = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 6, i64 %indvars.iv225
  %79 = load ptr, ptr %arrayidx50.us190, align 8, !tbaa !36
  %arrayidx52.us191 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv225
  store ptr %79, ptr %arrayidx52.us191, align 8, !tbaa !36
  %80 = add nsw i64 %indvars.iv225, -1
  %arrayidx55.us194 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %80
  %81 = load ptr, ptr %arrayidx55.us194, align 8, !tbaa !36
  %82 = load i16, ptr %81, align 2, !tbaa !60
  store i16 %82, ptr %79, align 2, !tbaa !60
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1
  %arrayidx50.us190.1 = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 6, i64 %indvars.iv.next226
  %83 = load ptr, ptr %arrayidx50.us190.1, align 8, !tbaa !36
  %arrayidx52.us191.1 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv.next226
  store ptr %83, ptr %arrayidx52.us191.1, align 8, !tbaa !36
  %arrayidx55.us194.1 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv225
  %84 = load ptr, ptr %arrayidx55.us194.1, align 8, !tbaa !36
  %85 = load i16, ptr %84, align 2, !tbaa !60
  store i16 %85, ptr %83, align 2, !tbaa !60
  %indvars.iv.next226.1 = add nsw i64 %indvars.iv225, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond45.for.inc66_crit_edge.us199.unr-lcssa, label %for.body48.us186, !llvm.loop !83

for.cond45.for.inc66_crit_edge.us199.unr-lcssa:   ; preds = %for.body48.us186, %for.body27.us174
  %indvars.iv.next226.lcssa.ph = phi i64 [ undef, %for.body27.us174 ], [ %indvars.iv.next226.1, %for.body48.us186 ]
  %indvars.iv225.unr = phi i64 [ %78, %for.body27.us174 ], [ %indvars.iv.next226.1, %for.body48.us186 ]
  br i1 %lcmp.mod.not, label %for.cond45.for.inc66_crit_edge.us199, label %for.body48.us186.epil

for.body48.us186.epil:                            ; preds = %for.cond45.for.inc66_crit_edge.us199.unr-lcssa
  %arrayidx50.us190.epil = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 6, i64 %indvars.iv225.unr
  %86 = load ptr, ptr %arrayidx50.us190.epil, align 8, !tbaa !36
  %arrayidx52.us191.epil = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %indvars.iv225.unr
  store ptr %86, ptr %arrayidx52.us191.epil, align 8, !tbaa !36
  %87 = add nsw i64 %indvars.iv225.unr, -1
  %arrayidx55.us194.epil = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %87
  %88 = load ptr, ptr %arrayidx55.us194.epil, align 8, !tbaa !36
  %89 = load i16, ptr %88, align 2, !tbaa !60
  store i16 %89, ptr %86, align 2, !tbaa !60
  %indvars.iv.next226.epil = add nsw i64 %indvars.iv225.unr, 1
  br label %for.cond45.for.inc66_crit_edge.us199

for.cond45.for.inc66_crit_edge.us199:             ; preds = %for.cond45.for.inc66_crit_edge.us199.unr-lcssa, %for.body48.us186.epil
  %indvars.iv.next226.lcssa = phi i64 [ %indvars.iv.next226.lcssa.ph, %for.cond45.for.inc66_crit_edge.us199.unr-lcssa ], [ %indvars.iv.next226.epil, %for.body48.us186.epil ]
  %90 = trunc i64 %indvars.iv.next226.lcssa to i32
  %inc67.us184 = add nuw nsw i32 %yindex.0171.us175, 1
  %exitcond229.not = icmp eq i32 %inc67.us184, %25
  br i1 %exitcond229.not, label %for.inc69.loopexit257, label %for.body27.us174, !llvm.loop !82

for.inc69.loopexit257:                            ; preds = %for.cond45.for.inc66_crit_edge.us199
  %91 = trunc i64 %indvars.iv.next226.lcssa to i32
  br label %for.inc69

for.inc69:                                        ; preds = %for.inc66.us, %for.body27.lr.ph.split, %for.inc69.loopexit257, %cond.end
  %blkn.1.lcssa = phi i32 [ %blkn.0212, %cond.end ], [ %91, %for.inc69.loopexit257 ], [ %blkn.0212, %for.body27.lr.ph.split ], [ %blkn.4.lcssa.us, %for.inc66.us ]
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %for.end71, label %for.body18, !llvm.loop !86

for.end71:                                        ; preds = %for.inc69, %for.cond15.preheader
  %92 = load ptr, ptr %entropy, align 8, !tbaa !87
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %92, i64 0, i32 1
  %93 = load ptr, ptr %encode_mcu, align 8, !tbaa !88
  %call72 = call i32 %93(ptr noundef nonnull %cinfo, ptr noundef nonnull %MCU_buffer) #4
  %tobool.not = icmp eq i32 %call72, 0
  br i1 %tobool.not, label %if.then73, label %for.inc77

if.then73:                                        ; preds = %for.end71
  %94 = trunc i64 %indvars.iv250 to i32
  store i32 %94, ptr %MCU_vert_offset, align 8, !tbaa !70
  store i32 %MCU_col_num.0215, ptr %mcu_ctr, align 4, !tbaa !69
  br label %cleanup

for.inc77:                                        ; preds = %for.end71
  %inc78 = add nuw i32 %MCU_col_num.0215, 1
  %95 = load i32, ptr %MCUs_per_row, align 8, !tbaa !71
  %cmp13 = icmp ult i32 %inc78, %95
  br i1 %cmp13, label %for.cond15.preheader, label %for.end79.loopexit, !llvm.loop !90

for.end79.loopexit:                               ; preds = %for.inc77
  %.pre254 = load i32, ptr %MCU_rows_per_iMCU_row, align 4, !tbaa !68
  br label %for.end79

for.end79:                                        ; preds = %for.end79.loopexit, %for.body10
  %96 = phi i32 [ %.pre254, %for.end79.loopexit ], [ %18, %for.body10 ]
  %97 = phi i32 [ %95, %for.end79.loopexit ], [ %19, %for.body10 ]
  store i32 0, ptr %mcu_ctr, align 4, !tbaa !69
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, 1
  %98 = sext i32 %96 to i64
  %cmp9 = icmp slt i64 %indvars.iv.next251, %98
  br i1 %cmp9, label %for.body10, label %for.end83.loopexit, !llvm.loop !91

for.end83.loopexit:                               ; preds = %for.end79
  %.pre255 = load i32, ptr %comps_in_scan, align 4, !tbaa !65
  br label %for.end83

for.end83:                                        ; preds = %for.end83.loopexit, %for.end
  %99 = phi i32 [ %.pre255, %for.end83.loopexit ], [ %14, %for.end ]
  %iMCU_row_num84 = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 1
  %100 = load i32, ptr %iMCU_row_num84, align 8, !tbaa !64
  %inc85 = add i32 %100, 1
  store i32 %inc85, ptr %iMCU_row_num84, align 8, !tbaa !64
  %101 = load ptr, ptr %coef1, align 8, !tbaa !29
  %cmp.i = icmp sgt i32 %99, 1
  br i1 %cmp.i, label %start_iMCU_row.exit, label %if.else.i

if.else.i:                                        ; preds = %for.end83
  %iMCU_row_num.i = getelementptr inbounds %struct.my_coef_controller, ptr %101, i64 0, i32 1
  %102 = load i32, ptr %iMCU_row_num.i, align 8, !tbaa !64
  %103 = load i32, ptr %total_iMCU_rows, align 8, !tbaa !66
  %sub.i = add i32 %103, -1
  %cmp2.i = icmp ult i32 %102, %sub.i
  %cur_comp_info.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 42
  %104 = load ptr, ptr %cur_comp_info.i, align 8, !tbaa !36
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i64 0, i32 3
  %105 = load i32, ptr %v_samp_factor.i, align 4, !tbaa !57
  br label %start_iMCU_row.exit

if.else5.i:                                       ; preds = %if.else.i
  %last_row_height.i = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i64 0, i32 18
  %106 = load i32, ptr %last_row_height.i, align 8, !tbaa !67
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %for.end83, %if.then3.i, %if.else5.i
  %.sink.i = phi i32 [ %105, %if.then3.i ], [ %106, %if.else5.i ], [ 1, %for.end83 ]
  %MCU_rows_per_iMCU_row4.i = getelementptr inbounds %struct.my_coef_controller, ptr %101, i64 0, i32 4
  store i32 %.sink.i, ptr %MCU_rows_per_iMCU_row4.i, align 4, !tbaa !68
  %mcu_ctr.i = getelementptr inbounds %struct.my_coef_controller, ptr %101, i64 0, i32 2
  store i32 0, ptr %mcu_ctr.i, align 4, !tbaa !69
  %MCU_vert_offset.i = getelementptr inbounds %struct.my_coef_controller, ptr %101, i64 0, i32 3
  store i32 0, ptr %MCU_vert_offset.i, align 8, !tbaa !70
  br label %cleanup

cleanup:                                          ; preds = %start_iMCU_row.exit, %if.then73
  %retval.0 = phi i32 [ 0, %if.then73 ], [ 1, %start_iMCU_row.exit ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %MCU_buffer) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #4
  ret i32 %retval.0
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !8, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !8, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !16, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !7, i64 0}
!19 = !{!15, !7, i64 32}
!20 = !{!6, !7, i64 32}
!21 = !{!22, !7, i64 16}
!22 = !{!"jpeg_destination_mgr", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!23 = !{!6, !10, i64 48}
!24 = !{!6, !10, i64 252}
!25 = !{!6, !10, i64 300}
!26 = !{!6, !7, i64 8}
!27 = !{!28, !7, i64 0}
!28 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!29 = !{!6, !7, i64 448}
!30 = !{!31, !7, i64 0}
!31 = !{!"", !32, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32, !8, i64 40}
!32 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!33 = !{!31, !7, i64 8}
!34 = !{!31, !7, i64 32}
!35 = !{!28, !7, i64 8}
!36 = !{!7, !7, i64 0}
!37 = !{!28, !7, i64 48}
!38 = !{!6, !7, i64 456}
!39 = !{!40, !7, i64 8}
!40 = !{!"jpeg_marker_writer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!41 = !{!6, !10, i64 296}
!42 = !{!43, !8, i64 52}
!43 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !8, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !8, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !8, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!44 = !{!43, !10, i64 288}
!45 = !{!6, !10, i64 64}
!46 = !{!43, !10, i64 384}
!47 = !{!6, !10, i64 260}
!48 = !{!49, !10, i64 128}
!49 = !{!"", !8, i64 0, !10, i64 128}
!50 = !{!43, !10, i64 48}
!51 = !{!6, !10, i64 68}
!52 = !{!6, !7, i64 80}
!53 = !{!43, !7, i64 296}
!54 = !{!55, !10, i64 0}
!55 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!56 = !{!55, !10, i64 8}
!57 = !{!55, !10, i64 12}
!58 = !{!55, !10, i64 16}
!59 = !{!55, !7, i64 80}
!60 = !{!12, !12, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = distinct !{!63, !62}
!64 = !{!31, !10, i64 16}
!65 = !{!6, !10, i64 316}
!66 = !{!6, !10, i64 312}
!67 = !{!55, !10, i64 72}
!68 = !{!31, !10, i64 28}
!69 = !{!31, !10, i64 20}
!70 = !{!31, !10, i64 24}
!71 = !{!6, !10, i64 352}
!72 = !{!28, !7, i64 64}
!73 = !{!55, !10, i64 4}
!74 = distinct !{!74, !62}
!75 = !{!55, !10, i64 52}
!76 = !{!55, !10, i64 68}
!77 = !{!55, !10, i64 56}
!78 = distinct !{!78, !62, !79}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !62}
!83 = distinct !{!83, !62}
!84 = distinct !{!84, !62, !85, !79}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !62}
!87 = !{!6, !7, i64 488}
!88 = !{!89, !7, i64 8}
!89 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!90 = distinct !{!90, !62}
!91 = distinct !{!91, !62}
