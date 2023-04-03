; ModuleID = 'jdmarker.c'
source_filename = "jdmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_resync_to_restart(ptr noundef %cinfo, i32 noundef %desired) local_unnamed_addr #0 {
entry:
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %0 = load i32, ptr %unread_marker, align 4, !tbaa !5
  %1 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 117, ptr %msg_code, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 6
  store i32 %0, ptr %msg_parm, align 4, !tbaa !17
  %2 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 6
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %msg_parm3, i64 0, i64 1
  store i32 %desired, ptr %arrayidx4, align 4, !tbaa !17
  %3 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %4(ptr noundef nonnull %cinfo, i32 noundef -1) #6
  %add = add nsw i32 %desired, 1
  %and = and i32 %add, 7
  %add10 = or i32 %and, 208
  %add13 = add nsw i32 %desired, 2
  %and14 = and i32 %add13, 7
  %add15 = or i32 %and14, 208
  %sub = add i32 %desired, 7
  %and19 = and i32 %sub, 7
  %add20 = or i32 %and19, 208
  %sub23 = add i32 %desired, 6
  %and24 = and i32 %sub23, 7
  %add25 = or i32 %and24, 208
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %marker.0 = phi i32 [ %0, %entry ], [ %19, %sw.epilog ]
  %cmp = icmp slt i32 %marker.0, 192
  br i1 %cmp, label %sw.bb43, label %if.else

if.else:                                          ; preds = %for.cond
  %5 = add nsw i32 %marker.0, -216
  %6 = icmp ult i32 %5, -8
  %cmp11 = icmp eq i32 %marker.0, %add10
  %or.cond = select i1 %6, i1 true, i1 %cmp11
  %cmp16 = icmp eq i32 %marker.0, %add15
  %or.cond91 = select i1 %or.cond, i1 true, i1 %cmp16
  br i1 %or.cond91, label %if.end31.thread82, label %if.else18

if.else18:                                        ; preds = %if.else
  %cmp21 = icmp eq i32 %marker.0, %add20
  %cmp26 = icmp eq i32 %marker.0, %add25
  %or.cond92 = or i1 %cmp21, %cmp26
  br i1 %or.cond92, label %sw.bb43, label %sw.bb

if.end31.thread82:                                ; preds = %if.else
  %7 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code3384 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 96, ptr %msg_code3384, align 8, !tbaa !14
  %msg_parm3585 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %marker.0, ptr %msg_parm3585, align 4, !tbaa !17
  %8 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm3886 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  %arrayidx3987 = getelementptr inbounds [8 x i32], ptr %msg_parm3886, i64 0, i64 1
  store i32 3, ptr %arrayidx3987, align 4, !tbaa !17
  %9 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message4188 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %emit_message4188, align 8, !tbaa !18
  tail call void %10(ptr noundef nonnull %cinfo, i32 noundef 4) #6
  br label %cleanup

sw.bb:                                            ; preds = %if.else18
  %11 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 96, ptr %msg_code33, align 8, !tbaa !14
  %msg_parm35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %marker.0, ptr %msg_parm35, align 4, !tbaa !17
  %12 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %msg_parm38, i64 0, i64 1
  store i32 1, ptr %arrayidx39, align 4, !tbaa !17
  %13 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %emit_message41, align 8, !tbaa !18
  tail call void %14(ptr noundef nonnull %cinfo, i32 noundef 4) #6
  store i32 0, ptr %unread_marker, align 4, !tbaa !5
  br label %cleanup

sw.bb43:                                          ; preds = %for.cond, %if.else18
  %15 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code3376 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 96, ptr %msg_code3376, align 8, !tbaa !14
  %msg_parm3577 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 %marker.0, ptr %msg_parm3577, align 4, !tbaa !17
  %16 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm3878 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 6
  %arrayidx3979 = getelementptr inbounds [8 x i32], ptr %msg_parm3878, i64 0, i64 1
  store i32 2, ptr %arrayidx3979, align 4, !tbaa !17
  %17 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message4180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %emit_message4180, align 8, !tbaa !18
  tail call void %18(ptr noundef nonnull %cinfo, i32 noundef 4) #6
  %call = tail call fastcc i32 @next_marker(ptr noundef nonnull %cinfo)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43
  %19 = load i32, ptr %unread_marker, align 4, !tbaa !5
  br label %for.cond

cleanup:                                          ; preds = %sw.bb43, %if.end31.thread82, %sw.bb
  %retval.0 = phi i32 [ 1, %sw.bb ], [ 1, %if.end31.thread82 ], [ 0, %sw.bb43 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @next_marker(ptr noundef %cinfo) unnamed_addr #0 {
entry:
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8, !tbaa !19
  %1 = load ptr, ptr %0, align 8, !tbaa !20
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %entry
  %next_input_byte.0 = phi ptr [ %1, %entry ], [ %incdec.ptr42, %if.end53 ]
  %bytes_in_buffer.0 = phi i64 [ %2, %entry ], [ %dec41, %if.end53 ]
  %cmp = icmp eq i64 %bytes_in_buffer.0, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %for.cond
  %3 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call = tail call i32 %3(ptr noundef nonnull %cinfo) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.cond
  %next_input_byte.1 = phi ptr [ %4, %if.end ], [ %next_input_byte.0, %for.cond ]
  %bytes_in_buffer.1 = phi i64 [ %5, %if.end ], [ %bytes_in_buffer.0, %for.cond ]
  %next_input_byte.2133 = getelementptr inbounds i8, ptr %next_input_byte.1, i64 1
  %bytes_in_buffer.2134 = add i64 %bytes_in_buffer.1, -1
  %c.0.in135 = load i8, ptr %next_input_byte.1, align 1, !tbaa !17
  %cmp7.not136 = icmp eq i8 %c.0.in135, -1
  br i1 %cmp7.not136, label %do.body28.preheader, label %while.body

while.body:                                       ; preds = %if.end6, %if.end22
  %bytes_in_buffer.2138 = phi i64 [ %bytes_in_buffer.2, %if.end22 ], [ %bytes_in_buffer.2134, %if.end6 ]
  %next_input_byte.2137 = phi ptr [ %next_input_byte.2, %if.end22 ], [ %next_input_byte.2133, %if.end6 ]
  %6 = load ptr, ptr %marker, align 8, !tbaa !24
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i64 0, i32 8
  %7 = load i32, ptr %discarded_bytes, align 4, !tbaa !25
  %inc = add i32 %7, 1
  store i32 %inc, ptr %discarded_bytes, align 4, !tbaa !25
  store ptr %next_input_byte.2137, ptr %0, align 8, !tbaa !20
  store i64 %bytes_in_buffer.2138, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %cmp12 = icmp eq i64 %bytes_in_buffer.2138, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %while.body
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call16 = tail call i32 %8(ptr noundef nonnull %cinfo) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then14
  %9 = load ptr, ptr %0, align 8, !tbaa !20
  %10 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %while.body
  %next_input_byte.3 = phi ptr [ %9, %if.end19 ], [ %next_input_byte.2137, %while.body ]
  %bytes_in_buffer.3 = phi i64 [ %10, %if.end19 ], [ %bytes_in_buffer.2138, %while.body ]
  %next_input_byte.2 = getelementptr inbounds i8, ptr %next_input_byte.3, i64 1
  %bytes_in_buffer.2 = add i64 %bytes_in_buffer.3, -1
  %c.0.in = load i8, ptr %next_input_byte.3, align 1, !tbaa !17
  %cmp7.not = icmp eq i8 %c.0.in, -1
  br i1 %cmp7.not, label %do.body28.preheader, label %while.body, !llvm.loop !27

do.body28.preheader:                              ; preds = %if.end22, %if.end6
  %next_input_byte.4.ph = phi ptr [ %next_input_byte.2133, %if.end6 ], [ %next_input_byte.2, %if.end22 ]
  %bytes_in_buffer.4.ph = phi i64 [ %bytes_in_buffer.2134, %if.end6 ], [ %bytes_in_buffer.2, %if.end22 ]
  br label %do.body28

do.body28:                                        ; preds = %do.body28.preheader, %if.end40
  %next_input_byte.4 = phi ptr [ %incdec.ptr42, %if.end40 ], [ %next_input_byte.4.ph, %do.body28.preheader ]
  %bytes_in_buffer.4 = phi i64 [ %dec41, %if.end40 ], [ %bytes_in_buffer.4.ph, %do.body28.preheader ]
  %cmp30 = icmp eq i64 %bytes_in_buffer.4, 0
  br i1 %cmp30, label %if.then32, label %if.end40

if.then32:                                        ; preds = %do.body28
  %11 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call34 = tail call i32 %11(ptr noundef %cinfo) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.then32
  %12 = load ptr, ptr %0, align 8, !tbaa !20
  %13 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %do.body28
  %next_input_byte.5 = phi ptr [ %12, %if.end37 ], [ %next_input_byte.4, %do.body28 ]
  %bytes_in_buffer.5 = phi i64 [ %13, %if.end37 ], [ %bytes_in_buffer.4, %do.body28 ]
  %dec41 = add i64 %bytes_in_buffer.5, -1
  %incdec.ptr42 = getelementptr inbounds i8, ptr %next_input_byte.5, i64 1
  %14 = load i8, ptr %next_input_byte.5, align 1, !tbaa !17
  switch i8 %14, label %for.end [
    i8 -1, label %do.body28
    i8 0, label %if.end53
  ]

if.end53:                                         ; preds = %if.end40
  %15 = load ptr, ptr %marker, align 8, !tbaa !24
  %discarded_bytes55 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %15, i64 0, i32 8
  %16 = load i32, ptr %discarded_bytes55, align 4, !tbaa !25
  %add = add i32 %16, 2
  store i32 %add, ptr %discarded_bytes55, align 4, !tbaa !25
  store ptr %incdec.ptr42, ptr %0, align 8, !tbaa !20
  store i64 %dec41, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %if.end40
  %conv43.le = zext i8 %14 to i32
  %17 = load ptr, ptr %marker, align 8, !tbaa !24
  %discarded_bytes59 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %17, i64 0, i32 8
  %18 = load i32, ptr %discarded_bytes59, align 4, !tbaa !25
  %cmp60.not = icmp eq i32 %18, 0
  br i1 %cmp60.not, label %if.end72, label %if.then62

if.then62:                                        ; preds = %for.end
  %19 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 112, ptr %msg_code, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 6
  store i32 %18, ptr %msg_parm, align 4, !tbaa !17
  %20 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 6
  %arrayidx68 = getelementptr inbounds [8 x i32], ptr %msg_parm67, i64 0, i64 1
  store i32 %conv43.le, ptr %arrayidx68, align 4, !tbaa !17
  %21 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %22(ptr noundef nonnull %cinfo, i32 noundef -1) #6
  %23 = load ptr, ptr %marker, align 8, !tbaa !24
  %discarded_bytes71 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %23, i64 0, i32 8
  store i32 0, ptr %discarded_bytes71, align 4, !tbaa !25
  br label %if.end72

if.end72:                                         ; preds = %if.then62, %for.end
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  store i32 %conv43.le, ptr %unread_marker, align 4, !tbaa !5
  store ptr %incdec.ptr42, ptr %0, align 8, !tbaa !20
  store i64 %dec41, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then14, %if.then32, %if.end72
  %retval.0 = phi i32 [ 1, %if.end72 ], [ 0, %if.then32 ], [ 0, %if.then14 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @jinit_marker_reader(ptr noundef %cinfo) local_unnamed_addr #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !29
  %1 = load ptr, ptr %0, align 8, !tbaa !30
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 0, i64 noundef 176) #6
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  store ptr %call, ptr %marker, align 8, !tbaa !24
  store ptr @reset_marker_reader, ptr %call, align 8, !tbaa !32
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, ptr %call, i64 0, i32 1
  store ptr @read_markers, ptr %read_markers, align 8, !tbaa !33
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %call, i64 0, i32 2
  store ptr @read_restart_marker, ptr %read_restart_marker, align 8, !tbaa !34
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %call, i64 0, i32 3
  store ptr @skip_variable, ptr %process_COM, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds %struct.jpeg_marker_reader, ptr %call, i64 0, i32 4, i64 0
  store ptr @skip_variable, ptr %arrayidx, align 8, !tbaa !36
  %2 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.1 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %2, i64 0, i32 4, i64 1
  store ptr @skip_variable, ptr %arrayidx.1, align 8, !tbaa !36
  %3 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.2 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i64 0, i32 4, i64 2
  store ptr @skip_variable, ptr %arrayidx.2, align 8, !tbaa !36
  %4 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.3 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i64 0, i32 4, i64 3
  store ptr @skip_variable, ptr %arrayidx.3, align 8, !tbaa !36
  %5 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.4 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %5, i64 0, i32 4, i64 4
  store ptr @skip_variable, ptr %arrayidx.4, align 8, !tbaa !36
  %6 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.5 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i64 0, i32 4, i64 5
  store ptr @skip_variable, ptr %arrayidx.5, align 8, !tbaa !36
  %7 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.6 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i64 0, i32 4, i64 6
  store ptr @skip_variable, ptr %arrayidx.6, align 8, !tbaa !36
  %8 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %8, i64 0, i32 4, i64 7
  store ptr @skip_variable, ptr %arrayidx.7, align 8, !tbaa !36
  %9 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.8 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %9, i64 0, i32 4, i64 8
  store ptr @skip_variable, ptr %arrayidx.8, align 8, !tbaa !36
  %10 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.9 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %10, i64 0, i32 4, i64 9
  store ptr @skip_variable, ptr %arrayidx.9, align 8, !tbaa !36
  %11 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.10 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %11, i64 0, i32 4, i64 10
  store ptr @skip_variable, ptr %arrayidx.10, align 8, !tbaa !36
  %12 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.11 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %12, i64 0, i32 4, i64 11
  store ptr @skip_variable, ptr %arrayidx.11, align 8, !tbaa !36
  %13 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.12 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %13, i64 0, i32 4, i64 12
  store ptr @skip_variable, ptr %arrayidx.12, align 8, !tbaa !36
  %14 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.13 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %14, i64 0, i32 4, i64 13
  store ptr @skip_variable, ptr %arrayidx.13, align 8, !tbaa !36
  %15 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.14 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %15, i64 0, i32 4, i64 14
  store ptr @skip_variable, ptr %arrayidx.14, align 8, !tbaa !36
  %16 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx.15 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %16, i64 0, i32 4, i64 15
  store ptr @skip_variable, ptr %arrayidx.15, align 8, !tbaa !36
  %17 = load ptr, ptr %marker, align 8, !tbaa !24
  %process_APPn7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %17, i64 0, i32 4
  store ptr @get_app0, ptr %process_APPn7, align 8, !tbaa !36
  %18 = load ptr, ptr %marker, align 8, !tbaa !24
  %arrayidx11 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %18, i64 0, i32 4, i64 14
  store ptr @get_app14, ptr %arrayidx11, align 8, !tbaa !36
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  store ptr null, ptr %comp_info.i, align 8, !tbaa !37
  %input_scan_number.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 34
  store i32 0, ptr %input_scan_number.i, align 4, !tbaa !38
  %unread_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  store i32 0, ptr %unread_marker.i, align 4, !tbaa !5
  %19 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOI.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 5
  store i32 0, ptr %saw_SOI.i, align 8, !tbaa !39
  %saw_SOF.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 6
  store i32 0, ptr %saw_SOF.i, align 4, !tbaa !40
  %discarded_bytes.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 8
  store i32 0, ptr %discarded_bytes.i, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @reset_marker_reader(ptr nocapture noundef %cinfo) #2 {
entry:
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  store ptr null, ptr %comp_info, align 8, !tbaa !37
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 34
  store i32 0, ptr %input_scan_number, align 4, !tbaa !38
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  store i32 0, ptr %unread_marker, align 4, !tbaa !5
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  %0 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %0, i64 0, i32 5
  store i32 0, ptr %saw_SOI, align 8, !tbaa !39
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %0, i64 0, i32 6
  store i32 0, ptr %saw_SOF, align 4, !tbaa !40
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %0, i64 0, i32 8
  store i32 0, ptr %discarded_bytes, align 4, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_markers(ptr noundef %cinfo) #0 {
entry:
  %huffval.i = alloca [256 x i8], align 16
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  %src.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %restart_interval.i383 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 49
  %uglygep.i = getelementptr i8, ptr %cinfo, i64 312
  %uglygep2.i = getelementptr i8, ptr %cinfo, i64 328
  %uglygep3.i = getelementptr i8, ptr %cinfo, i64 344
  %jpeg_color_space.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 9
  %CCIR601_sampling.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 56
  %X_density.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 52
  %Y_density.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 53
  %saw_Adobe_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 54
  %Adobe_transform.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 55
  %.pre = load i32, ptr %unread_marker, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = phi i32 [ 0, %sw.epilog ], [ %.pre, %entry ]
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %1 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %1, i64 0, i32 5
  %2 = load i32, ptr %saw_SOI, align 8, !tbaa !39
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %src.i, align 8, !tbaa !19
  %bytes_in_buffer2.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 1
  %4 = load i64, ptr %bytes_in_buffer2.i, align 8, !tbaa !22
  %cmp.i = icmp eq i64 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.then1
  %fill_input_buffer.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer.i, align 8, !tbaa !23
  %call.i = tail call i32 %5(ptr noundef nonnull %cinfo) #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  %6 = load i64, ptr %bytes_in_buffer2.i, align 8, !tbaa !22
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %if.then1
  %bytes_in_buffer.0.i = phi i64 [ %6, %if.end.i ], [ %4, %if.then1 ]
  %next_input_byte.0.i = load ptr, ptr %3, align 8, !tbaa !20
  %dec.i = add i64 %bytes_in_buffer.0.i, -1
  %incdec.ptr.i = getelementptr inbounds i8, ptr %next_input_byte.0.i, i64 1
  %7 = load i8, ptr %next_input_byte.0.i, align 1, !tbaa !17
  %conv.i = zext i8 %7 to i32
  %cmp8.i = icmp eq i64 %dec.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.end18.i

if.then10.i:                                      ; preds = %if.end6.i
  %fill_input_buffer11.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer11.i, align 8, !tbaa !23
  %call12.i = tail call i32 %8(ptr noundef nonnull %cinfo) #6
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %return, label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i
  %9 = load ptr, ptr %3, align 8, !tbaa !20
  %10 = load i64, ptr %bytes_in_buffer2.i, align 8, !tbaa !22
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end15.i, %if.end6.i
  %next_input_byte.1.i = phi ptr [ %9, %if.end15.i ], [ %incdec.ptr.i, %if.end6.i ]
  %bytes_in_buffer.1.i = phi i64 [ %10, %if.end15.i ], [ %dec.i, %if.end6.i ]
  %dec19.i = add i64 %bytes_in_buffer.1.i, -1
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %next_input_byte.1.i, i64 1
  %11 = load i8, ptr %next_input_byte.1.i, align 1, !tbaa !17
  %conv21.i = zext i8 %11 to i32
  %cmp24.i = icmp ne i8 %7, -1
  %cmp26.i = icmp ne i8 %11, -40
  %or.cond.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  br i1 %or.cond.i, label %if.then28.i, label %first_marker.exit

if.then28.i:                                      ; preds = %if.end18.i
  %12 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 52, ptr %msg_code.i, align 8, !tbaa !14
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 6
  store i32 %conv.i, ptr %msg_parm.i, align 4, !tbaa !17
  %13 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm31.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 6
  %arrayidx32.i = getelementptr inbounds [8 x i32], ptr %msg_parm31.i, i64 0, i64 1
  store i32 %conv21.i, ptr %arrayidx32.i, align 4, !tbaa !17
  %14 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  tail call void %15(ptr noundef nonnull %cinfo) #6
  br label %first_marker.exit

first_marker.exit:                                ; preds = %if.end18.i, %if.then28.i
  store i32 %conv21.i, ptr %unread_marker, align 4, !tbaa !5
  store ptr %incdec.ptr20.i, ptr %3, align 8, !tbaa !20
  store i64 %dec19.i, ptr %bytes_in_buffer2.i, align 8, !tbaa !22
  br label %if.end9

if.else:                                          ; preds = %if.then
  %call4 = tail call fastcc i32 @next_marker(ptr noundef nonnull %cinfo)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end9thread-pre-split

if.end9thread-pre-split:                          ; preds = %if.else
  %.pr = load i32, ptr %unread_marker, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %first_marker.exit, %for.cond
  %16 = phi i32 [ %.pr, %if.end9thread-pre-split ], [ %conv21.i, %first_marker.exit ], [ %0, %for.cond ]
  switch i32 %16, label %sw.default [
    i32 216, label %sw.bb
    i32 192, label %sw.bb15
    i32 193, label %sw.bb15
    i32 194, label %sw.bb20
    i32 201, label %sw.bb25
    i32 202, label %sw.bb30
    i32 195, label %sw.bb35
    i32 197, label %sw.bb35
    i32 198, label %sw.bb35
    i32 199, label %sw.bb35
    i32 200, label %sw.bb35
    i32 203, label %sw.bb35
    i32 205, label %sw.bb35
    i32 206, label %sw.bb35
    i32 207, label %sw.bb35
    i32 218, label %sw.bb39
    i32 217, label %sw.bb45
    i32 204, label %sw.bb50
    i32 196, label %sw.bb55
    i32 219, label %sw.bb60
    i32 221, label %sw.bb65
    i32 224, label %sw.bb70
    i32 225, label %sw.bb70
    i32 226, label %sw.bb70
    i32 227, label %sw.bb70
    i32 228, label %sw.bb70
    i32 229, label %sw.bb70
    i32 230, label %sw.bb70
    i32 231, label %sw.bb70
    i32 232, label %sw.bb70
    i32 233, label %sw.bb70
    i32 234, label %sw.bb70
    i32 235, label %sw.bb70
    i32 236, label %sw.bb70
    i32 237, label %sw.bb70
    i32 238, label %sw.bb70
    i32 239, label %sw.bb70
    i32 254, label %sw.bb78
    i32 208, label %sw.bb84
    i32 209, label %sw.bb84
    i32 210, label %sw.bb84
    i32 211, label %sw.bb84
    i32 212, label %sw.bb84
    i32 213, label %sw.bb84
    i32 214, label %sw.bb84
    i32 215, label %sw.bb84
    i32 1, label %sw.bb84
    i32 220, label %sw.bb93
  ]

sw.bb:                                            ; preds = %if.end9
  %17 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i148 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 101, ptr %msg_code.i148, align 8, !tbaa !14
  %emit_message.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %emit_message.i, align 8, !tbaa !18
  tail call void %18(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %19 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOI.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 5
  %20 = load i32, ptr %saw_SOI.i, align 8, !tbaa !39
  %tobool.not.i149 = icmp eq i32 %20, 0
  br i1 %tobool.not.i149, label %get_soi.exit, label %if.then.i150

if.then.i150:                                     ; preds = %sw.bb
  %21 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code3.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 60, ptr %msg_code3.i, align 8, !tbaa !14
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  tail call void %22(ptr noundef nonnull %cinfo) #6
  %.pre.i = load ptr, ptr %marker, align 8, !tbaa !24
  br label %get_soi.exit

get_soi.exit:                                     ; preds = %sw.bb, %if.then.i150
  %23 = phi ptr [ %.pre.i, %if.then.i150 ], [ %19, %sw.bb ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uglygep.i, i8 0, i64 16, i1 false) #6, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uglygep2.i, i8 1, i64 16, i1 false) #6, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uglygep3.i, i8 5, i64 16, i1 false) #6, !tbaa !17
  store i32 0, ptr %jpeg_color_space.i, align 4, !tbaa !42
  store i32 0, ptr %CCIR601_sampling.i, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %restart_interval.i383, i8 0, i64 9, i1 false) #6
  store i16 1, ptr %X_density.i, align 2, !tbaa !44
  store i16 1, ptr %Y_density.i, align 4, !tbaa !45
  store i32 0, ptr %saw_Adobe_marker.i, align 8, !tbaa !46
  store i8 0, ptr %Adobe_transform.i, align 4, !tbaa !47
  %saw_SOI10.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %23, i64 0, i32 5
  store i32 1, ptr %saw_SOI10.i, align 8, !tbaa !39
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9, %if.end9
  %call16 = tail call fastcc i32 @get_sof(ptr noundef %cinfo, i32 noundef 0, i32 noundef 0)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %sw.epilog

sw.bb20:                                          ; preds = %if.end9
  %call21 = tail call fastcc i32 @get_sof(ptr noundef %cinfo, i32 noundef 1, i32 noundef 0)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %return, label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  %call26 = tail call fastcc i32 @get_sof(ptr noundef %cinfo, i32 noundef 0, i32 noundef 1)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %return, label %sw.epilog

sw.bb30:                                          ; preds = %if.end9
  %call31 = tail call fastcc i32 @get_sof(ptr noundef %cinfo, i32 noundef 1, i32 noundef 1)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %return, label %sw.epilog

sw.bb35:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %24 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 59, ptr %msg_code, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 6
  store i32 %16, ptr %msg_parm, align 4, !tbaa !17
  %25 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  tail call void %26(ptr noundef nonnull %cinfo) #6
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end9
  %27 = load ptr, ptr %src.i, align 8, !tbaa !19
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %bytes_in_buffer2.i153 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 1
  %29 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  %30 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOF.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %30, i64 0, i32 6
  %31 = load i32, ptr %saw_SOF.i, align 4, !tbaa !40
  %tobool.not.i155 = icmp eq i32 %31, 0
  br i1 %tobool.not.i155, label %if.then.i157, label %do.body.i

if.then.i157:                                     ; preds = %sw.bb39
  %32 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i156 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 61, ptr %msg_code.i156, align 8, !tbaa !14
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  tail call void %33(ptr noundef nonnull %cinfo) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i157, %sw.bb39
  %cmp.i158 = icmp eq i64 %29, 0
  br i1 %cmp.i158, label %if.then4.i, label %if.end10.i

if.then4.i:                                       ; preds = %do.body.i
  %fill_input_buffer.i159 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %34 = load ptr, ptr %fill_input_buffer.i159, align 8, !tbaa !23
  %call.i160 = tail call i32 %34(ptr noundef nonnull %cinfo) #6
  %tobool5.not.i = icmp eq i32 %call.i160, 0
  br i1 %tobool5.not.i, label %return, label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i
  %35 = load ptr, ptr %27, align 8, !tbaa !20
  %36 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end7.i, %do.body.i
  %next_input_byte.0.i161 = phi ptr [ %35, %if.end7.i ], [ %28, %do.body.i ]
  %bytes_in_buffer.0.i162 = phi i64 [ %36, %if.end7.i ], [ %29, %do.body.i ]
  %dec.i163 = add i64 %bytes_in_buffer.0.i162, -1
  %incdec.ptr.i164 = getelementptr inbounds i8, ptr %next_input_byte.0.i161, i64 1
  %37 = load i8, ptr %next_input_byte.0.i161, align 1, !tbaa !17
  %conv.i165 = zext i8 %37 to i64
  %shl.i = shl nuw nsw i64 %conv.i165, 8
  %cmp12.i = icmp eq i64 %dec.i163, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end22.i

if.then14.i:                                      ; preds = %if.end10.i
  %fill_input_buffer15.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer15.i, align 8, !tbaa !23
  %call16.i = tail call i32 %38(ptr noundef nonnull %cinfo) #6
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %return, label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i
  %39 = load ptr, ptr %27, align 8, !tbaa !20
  %40 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i, %if.end10.i
  %next_input_byte.1.i166 = phi ptr [ %39, %if.end19.i ], [ %incdec.ptr.i164, %if.end10.i ]
  %bytes_in_buffer.1.i167 = phi i64 [ %40, %if.end19.i ], [ %dec.i163, %if.end10.i ]
  %dec23.i = add i64 %bytes_in_buffer.1.i167, -1
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %next_input_byte.1.i166, i64 1
  %41 = load i8, ptr %next_input_byte.1.i166, align 1, !tbaa !17
  %conv25.i = zext i8 %41 to i64
  %add.i = or i64 %shl.i, %conv25.i
  %cmp27.i = icmp eq i64 %dec23.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.end37.i

if.then29.i:                                      ; preds = %if.end22.i
  %fill_input_buffer30.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %42 = load ptr, ptr %fill_input_buffer30.i, align 8, !tbaa !23
  %call31.i = tail call i32 %42(ptr noundef nonnull %cinfo) #6
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %return, label %if.end34.i168

if.end34.i168:                                    ; preds = %if.then29.i
  %43 = load ptr, ptr %27, align 8, !tbaa !20
  %44 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i168, %if.end22.i
  %next_input_byte.2.i = phi ptr [ %43, %if.end34.i168 ], [ %incdec.ptr24.i, %if.end22.i ]
  %bytes_in_buffer.2.i = phi i64 [ %44, %if.end34.i168 ], [ %dec23.i, %if.end22.i ]
  %45 = load i8, ptr %next_input_byte.2.i, align 1, !tbaa !17
  %conv40.i = zext i8 %45 to i32
  %mul.i = shl nuw nsw i32 %conv40.i, 1
  %add43.i = add nuw nsw i32 %mul.i, 6
  %46 = zext i32 %add43.i to i64
  %cmp45.i = icmp ne i64 %add.i, %46
  %cmp47.i = icmp eq i8 %45, 0
  %or.cond.i169 = select i1 %cmp45.i, i1 true, i1 %cmp47.i
  %cmp50.i = icmp ugt i8 %45, 4
  %or.cond219.i = select i1 %or.cond.i169, i1 true, i1 %cmp50.i
  br i1 %or.cond219.i, label %if.then52.i, label %if.end57.i

if.then52.i:                                      ; preds = %if.end37.i
  %47 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code54.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 5
  store i32 9, ptr %msg_code54.i, align 8, !tbaa !14
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  tail call void %48(ptr noundef nonnull %cinfo) #6
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then52.i, %if.end37.i
  %49 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code59.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 102, ptr %msg_code59.i, align 8, !tbaa !14
  %msg_parm.i170 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 6
  store i32 %conv40.i, ptr %msg_parm.i170, align 4, !tbaa !17
  %50 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message.i171 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 1
  %51 = load ptr, ptr %emit_message.i171, align 8, !tbaa !18
  tail call void %51(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %comps_in_scan.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 62
  store i32 %conv40.i, ptr %comps_in_scan.i, align 8, !tbaa !48
  %next_input_byte.3350.i = getelementptr inbounds i8, ptr %next_input_byte.2.i, i64 1
  %bytes_in_buffer.3351.i = add i64 %bytes_in_buffer.2.i, -1
  br i1 %cmp47.i, label %do.body133.i, label %do.body64.lr.ph.i

do.body64.lr.ph.i:                                ; preds = %if.end57.i
  %fill_input_buffer68.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %num_components.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %wide.trip.count.i = zext i8 %45 to i64
  br label %do.body64.i

do.body64.i:                                      ; preds = %id_found.i, %do.body64.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %do.body64.lr.ph.i ], [ %indvars.iv.next.i, %id_found.i ]
  %bytes_in_buffer.3355.i = phi i64 [ %bytes_in_buffer.3351.i, %do.body64.lr.ph.i ], [ %bytes_in_buffer.3.i, %id_found.i ]
  %next_input_byte.3354.i = phi ptr [ %next_input_byte.3350.i, %do.body64.lr.ph.i ], [ %next_input_byte.3.i, %id_found.i ]
  %cmp65.i = icmp eq i64 %bytes_in_buffer.3355.i, 0
  br i1 %cmp65.i, label %if.then67.i, label %if.end75.i

if.then67.i:                                      ; preds = %do.body64.i
  %52 = load ptr, ptr %fill_input_buffer68.i, align 8, !tbaa !23
  %call69.i = tail call i32 %52(ptr noundef nonnull %cinfo) #6
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %return, label %if.end72.i

if.end72.i:                                       ; preds = %if.then67.i
  %53 = load ptr, ptr %27, align 8, !tbaa !20
  %54 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end72.i, %do.body64.i
  %next_input_byte.4.i = phi ptr [ %53, %if.end72.i ], [ %next_input_byte.3354.i, %do.body64.i ]
  %bytes_in_buffer.4.i = phi i64 [ %54, %if.end72.i ], [ %bytes_in_buffer.3355.i, %do.body64.i ]
  %dec76.i = add i64 %bytes_in_buffer.4.i, -1
  %incdec.ptr77.i = getelementptr inbounds i8, ptr %next_input_byte.4.i, i64 1
  %55 = load i8, ptr %next_input_byte.4.i, align 1, !tbaa !17
  %conv78.i = zext i8 %55 to i32
  %cmp82.i = icmp eq i64 %dec76.i, 0
  br i1 %cmp82.i, label %if.then84.i, label %if.end92.i

if.then84.i:                                      ; preds = %if.end75.i
  %56 = load ptr, ptr %fill_input_buffer68.i, align 8, !tbaa !23
  %call86.i = tail call i32 %56(ptr noundef nonnull %cinfo) #6
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %return, label %if.end89.i

if.end89.i:                                       ; preds = %if.then84.i
  %57 = load ptr, ptr %27, align 8, !tbaa !20
  %58 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.end89.i, %if.end75.i
  %next_input_byte.5.i = phi ptr [ %57, %if.end89.i ], [ %incdec.ptr77.i, %if.end75.i ]
  %bytes_in_buffer.5.i = phi i64 [ %58, %if.end89.i ], [ %dec76.i, %if.end75.i ]
  %59 = load i8, ptr %next_input_byte.5.i, align 1, !tbaa !17
  %conv95.i = zext i8 %59 to i32
  %60 = load ptr, ptr %comp_info.i, align 8, !tbaa !37
  %61 = load i32, ptr %num_components.i, align 8, !tbaa !49
  %cmp99347.i = icmp sgt i32 %61, 0
  br i1 %cmp99347.i, label %for.body101.i, label %for.end.i

for.body101.i:                                    ; preds = %if.end92.i, %for.inc.i
  %compptr.0349.i = phi ptr [ %incdec.ptr106.i, %for.inc.i ], [ %60, %if.end92.i ]
  %ci.0348.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %if.end92.i ]
  %62 = load i32, ptr %compptr.0349.i, align 8, !tbaa !50
  %cmp102.i = icmp eq i32 %62, %conv78.i
  br i1 %cmp102.i, label %id_found.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body101.i
  %inc.i = add nuw nsw i32 %ci.0348.i, 1
  %incdec.ptr106.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0349.i, i64 1
  %exitcond.not.i = icmp eq i32 %inc.i, %61
  br i1 %exitcond.not.i, label %for.end.i, label %for.body101.i, !llvm.loop !52

for.end.i:                                        ; preds = %for.inc.i, %if.end92.i
  %compptr.0.lcssa.i = phi ptr [ %60, %if.end92.i ], [ %incdec.ptr106.i, %for.inc.i ]
  %63 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code108.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 5
  store i32 5, ptr %msg_code108.i, align 8, !tbaa !14
  %msg_parm110.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 6
  store i32 %conv78.i, ptr %msg_parm110.i, align 4, !tbaa !17
  %64 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  tail call void %65(ptr noundef nonnull %cinfo) #6
  br label %id_found.i

id_found.i:                                       ; preds = %for.body101.i, %for.end.i
  %compptr.0344.i = phi ptr [ %compptr.0.lcssa.i, %for.end.i ], [ %compptr.0349.i, %for.body101.i ]
  %arrayidx114.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 63, i64 %indvars.iv.i
  store ptr %compptr.0344.i, ptr %arrayidx114.i, align 8, !tbaa !36
  %66 = lshr i32 %conv95.i, 4
  %dc_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0344.i, i64 0, i32 5
  store i32 %66, ptr %dc_tbl_no.i, align 4, !tbaa !53
  %and115.i = and i32 %conv95.i, 15
  %ac_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0344.i, i64 0, i32 6
  store i32 %and115.i, ptr %ac_tbl_no.i, align 8, !tbaa !54
  %67 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm118.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 6
  store i32 %conv78.i, ptr %msg_parm118.i, align 4, !tbaa !55
  %68 = load i32, ptr %dc_tbl_no.i, align 4, !tbaa !53
  %arrayidx121.i = getelementptr inbounds i32, ptr %msg_parm118.i, i64 1
  store i32 %68, ptr %arrayidx121.i, align 4, !tbaa !55
  %69 = load i32, ptr %ac_tbl_no.i, align 8, !tbaa !54
  %arrayidx123.i = getelementptr inbounds i32, ptr %msg_parm118.i, i64 2
  store i32 %69, ptr %arrayidx123.i, align 4, !tbaa !55
  %msg_code125.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 103, ptr %msg_code125.i, align 8, !tbaa !14
  %emit_message127.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 1
  %70 = load ptr, ptr %emit_message127.i, align 8, !tbaa !18
  tail call void %70(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %next_input_byte.3.i = getelementptr inbounds i8, ptr %next_input_byte.5.i, i64 1
  %bytes_in_buffer.3.i = add i64 %bytes_in_buffer.5.i, -1
  %exitcond362.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond362.not.i, label %do.body133.i, label %do.body64.i, !llvm.loop !56

do.body133.i:                                     ; preds = %id_found.i, %if.end57.i
  %next_input_byte.3.lcssa.i = phi ptr [ %next_input_byte.3350.i, %if.end57.i ], [ %next_input_byte.3.i, %id_found.i ]
  %bytes_in_buffer.3.lcssa.i = phi i64 [ %bytes_in_buffer.3351.i, %if.end57.i ], [ %bytes_in_buffer.3.i, %id_found.i ]
  %cmp134.i = icmp eq i64 %bytes_in_buffer.3.lcssa.i, 0
  br i1 %cmp134.i, label %if.then136.i, label %if.end144.i

if.then136.i:                                     ; preds = %do.body133.i
  %fill_input_buffer137.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %71 = load ptr, ptr %fill_input_buffer137.i, align 8, !tbaa !23
  %call138.i = tail call i32 %71(ptr noundef nonnull %cinfo) #6
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %return, label %if.end141.i

if.end141.i:                                      ; preds = %if.then136.i
  %72 = load ptr, ptr %27, align 8, !tbaa !20
  %73 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.end141.i, %do.body133.i
  %next_input_byte.6.i = phi ptr [ %72, %if.end141.i ], [ %next_input_byte.3.lcssa.i, %do.body133.i ]
  %bytes_in_buffer.6.i = phi i64 [ %73, %if.end141.i ], [ %bytes_in_buffer.3.lcssa.i, %do.body133.i ]
  %dec145.i = add i64 %bytes_in_buffer.6.i, -1
  %incdec.ptr146.i = getelementptr inbounds i8, ptr %next_input_byte.6.i, i64 1
  %74 = load i8, ptr %next_input_byte.6.i, align 1, !tbaa !17
  %conv147.i = zext i8 %74 to i32
  %Ss.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 68
  store i32 %conv147.i, ptr %Ss.i, align 4, !tbaa !57
  %cmp151.i = icmp eq i64 %dec145.i, 0
  br i1 %cmp151.i, label %if.then153.i, label %if.end161.i

if.then153.i:                                     ; preds = %if.end144.i
  %fill_input_buffer154.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %75 = load ptr, ptr %fill_input_buffer154.i, align 8, !tbaa !23
  %call155.i = tail call i32 %75(ptr noundef nonnull %cinfo) #6
  %tobool156.not.i = icmp eq i32 %call155.i, 0
  br i1 %tobool156.not.i, label %return, label %if.end158.i

if.end158.i:                                      ; preds = %if.then153.i
  %76 = load ptr, ptr %27, align 8, !tbaa !20
  %77 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.end158.i, %if.end144.i
  %next_input_byte.7.i = phi ptr [ %76, %if.end158.i ], [ %incdec.ptr146.i, %if.end144.i ]
  %bytes_in_buffer.7.i = phi i64 [ %77, %if.end158.i ], [ %dec145.i, %if.end144.i ]
  %dec162.i = add i64 %bytes_in_buffer.7.i, -1
  %incdec.ptr163.i = getelementptr inbounds i8, ptr %next_input_byte.7.i, i64 1
  %78 = load i8, ptr %next_input_byte.7.i, align 1, !tbaa !17
  %conv164.i = zext i8 %78 to i32
  %Se.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 69
  store i32 %conv164.i, ptr %Se.i, align 8, !tbaa !58
  %cmp168.i = icmp eq i64 %dec162.i, 0
  br i1 %cmp168.i, label %if.then170.i, label %if.end43

if.then170.i:                                     ; preds = %if.end161.i
  %fill_input_buffer171.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %79 = load ptr, ptr %fill_input_buffer171.i, align 8, !tbaa !23
  %call172.i = tail call i32 %79(ptr noundef nonnull %cinfo) #6
  %tobool173.not.i = icmp eq i32 %call172.i, 0
  br i1 %tobool173.not.i, label %return, label %if.end175.i

if.end175.i:                                      ; preds = %if.then170.i
  %80 = load ptr, ptr %27, align 8, !tbaa !20
  %81 = load i64, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  br label %if.end43

if.end43:                                         ; preds = %if.end175.i, %if.end161.i
  %next_input_byte.8.i = phi ptr [ %80, %if.end175.i ], [ %incdec.ptr163.i, %if.end161.i ]
  %bytes_in_buffer.8.i = phi i64 [ %81, %if.end175.i ], [ %dec162.i, %if.end161.i ]
  %dec179.i = add i64 %bytes_in_buffer.8.i, -1
  %incdec.ptr180.i = getelementptr inbounds i8, ptr %next_input_byte.8.i, i64 1
  %82 = load i8, ptr %next_input_byte.8.i, align 1, !tbaa !17
  %conv181.i = zext i8 %82 to i32
  %83 = lshr i32 %conv181.i, 4
  %Ah.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 70
  store i32 %83, ptr %Ah.i, align 4, !tbaa !59
  %and186.i = and i32 %conv181.i, 15
  %Al.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 71
  store i32 %and186.i, ptr %Al.i, align 8, !tbaa !60
  %84 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm190.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 6
  %85 = load i32, ptr %Ss.i, align 4, !tbaa !57
  store i32 %85, ptr %msg_parm190.i, align 4, !tbaa !55
  %86 = load i32, ptr %Se.i, align 8, !tbaa !58
  %arrayidx195.i = getelementptr inbounds i32, ptr %msg_parm190.i, i64 1
  store i32 %86, ptr %arrayidx195.i, align 4, !tbaa !55
  %87 = load i32, ptr %Ah.i, align 4, !tbaa !59
  %arrayidx197.i = getelementptr inbounds i32, ptr %msg_parm190.i, i64 2
  store i32 %87, ptr %arrayidx197.i, align 4, !tbaa !55
  %88 = load i32, ptr %Al.i, align 8, !tbaa !60
  %arrayidx199.i = getelementptr inbounds i32, ptr %msg_parm190.i, i64 3
  store i32 %88, ptr %arrayidx199.i, align 4, !tbaa !55
  %msg_code201.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 104, ptr %msg_code201.i, align 8, !tbaa !14
  %emit_message203.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 1
  %89 = load ptr, ptr %emit_message203.i, align 8, !tbaa !18
  tail call void %89(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %90 = load ptr, ptr %marker, align 8, !tbaa !24
  %next_restart_num.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %90, i64 0, i32 7
  store i32 0, ptr %next_restart_num.i, align 8, !tbaa !61
  %input_scan_number.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 34
  %91 = load i32, ptr %input_scan_number.i, align 4, !tbaa !38
  %inc207.i = add nsw i32 %91, 1
  store i32 %inc207.i, ptr %input_scan_number.i, align 4, !tbaa !38
  store ptr %incdec.ptr180.i, ptr %27, align 8, !tbaa !20
  store i64 %dec179.i, ptr %bytes_in_buffer2.i153, align 8, !tbaa !22
  store i32 0, ptr %unread_marker, align 4, !tbaa !5
  br label %return

sw.bb45:                                          ; preds = %if.end9
  %92 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 84, ptr %msg_code47, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 1
  %93 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %93(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  store i32 0, ptr %unread_marker, align 4, !tbaa !5
  br label %return

sw.bb50:                                          ; preds = %if.end9
  %94 = load ptr, ptr %src.i, align 8, !tbaa !19
  %bytes_in_buffer2.i174 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %94, i64 0, i32 1
  %95 = load i64, ptr %bytes_in_buffer2.i174, align 8, !tbaa !22
  %cmp.i175 = icmp eq i64 %95, 0
  br i1 %cmp.i175, label %if.then.i179, label %if.end6.i188

if.then.i179:                                     ; preds = %sw.bb50
  %fill_input_buffer.i176 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %fill_input_buffer.i176, align 8, !tbaa !23
  %call.i177 = tail call i32 %96(ptr noundef nonnull %cinfo) #6
  %tobool.not.i178 = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i178, label %return, label %if.end.i180

if.end.i180:                                      ; preds = %if.then.i179
  %97 = load i64, ptr %bytes_in_buffer2.i174, align 8, !tbaa !22
  br label %if.end6.i188

if.end6.i188:                                     ; preds = %if.end.i180, %sw.bb50
  %bytes_in_buffer.0.i181 = phi i64 [ %97, %if.end.i180 ], [ %95, %sw.bb50 ]
  %next_input_byte.0.i182 = load ptr, ptr %94, align 8, !tbaa !20
  %dec.i183 = add i64 %bytes_in_buffer.0.i181, -1
  %incdec.ptr.i184 = getelementptr inbounds i8, ptr %next_input_byte.0.i182, i64 1
  %98 = load i8, ptr %next_input_byte.0.i182, align 1, !tbaa !17
  %conv.i185 = zext i8 %98 to i64
  %shl.i186 = shl nuw nsw i64 %conv.i185, 8
  %cmp8.i187 = icmp eq i64 %dec.i183, 0
  br i1 %cmp8.i187, label %if.then10.i192, label %if.end18.i198

if.then10.i192:                                   ; preds = %if.end6.i188
  %fill_input_buffer11.i189 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %94, i64 0, i32 3
  %99 = load ptr, ptr %fill_input_buffer11.i189, align 8, !tbaa !23
  %call12.i190 = tail call i32 %99(ptr noundef nonnull %cinfo) #6
  %tobool13.not.i191 = icmp eq i32 %call12.i190, 0
  br i1 %tobool13.not.i191, label %return, label %if.end15.i193

if.end15.i193:                                    ; preds = %if.then10.i192
  %100 = load ptr, ptr %94, align 8, !tbaa !20
  %101 = load i64, ptr %bytes_in_buffer2.i174, align 8, !tbaa !22
  br label %if.end18.i198

if.end18.i198:                                    ; preds = %if.end15.i193, %if.end6.i188
  %next_input_byte.1.i194 = phi ptr [ %100, %if.end15.i193 ], [ %incdec.ptr.i184, %if.end6.i188 ]
  %bytes_in_buffer.1.i195 = phi i64 [ %101, %if.end15.i193 ], [ %dec.i183, %if.end6.i188 ]
  %102 = load i8, ptr %next_input_byte.1.i194, align 1, !tbaa !17
  %conv21.i196 = zext i8 %102 to i64
  %add.i197 = or i64 %shl.i186, %conv21.i196
  %next_input_byte.2184.i = getelementptr inbounds i8, ptr %next_input_byte.1.i194, i64 1
  %bytes_in_buffer.2185.i = add i64 %bytes_in_buffer.1.i195, -1
  %cmp22186.i = icmp ugt i64 %add.i197, 2
  br i1 %cmp22186.i, label %do.body24.lr.ph.i, label %get_dac.exit

do.body24.lr.ph.i:                                ; preds = %if.end18.i198
  %fill_input_buffer28.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %94, i64 0, i32 3
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.end107.i, %do.body24.lr.ph.i
  %bytes_in_buffer.2189.i = phi i64 [ %bytes_in_buffer.2185.i, %do.body24.lr.ph.i ], [ %bytes_in_buffer.2.i208, %if.end107.i ]
  %next_input_byte.2188.i = phi ptr [ %next_input_byte.2184.i, %do.body24.lr.ph.i ], [ %next_input_byte.2.i207, %if.end107.i ]
  %length.0187.in.i = phi i64 [ %add.i197, %do.body24.lr.ph.i ], [ %length.0187.i, %if.end107.i ]
  %length.0187.i = add nsw i64 %length.0187.in.i, -2
  %cmp25.i = icmp eq i64 %bytes_in_buffer.2189.i, 0
  br i1 %cmp25.i, label %if.then27.i, label %if.end35.i

if.then27.i:                                      ; preds = %do.body24.i
  %103 = load ptr, ptr %fill_input_buffer28.i, align 8, !tbaa !23
  %call29.i = tail call i32 %103(ptr noundef nonnull %cinfo) #6
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %return, label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i
  %104 = load ptr, ptr %94, align 8, !tbaa !20
  %105 = load i64, ptr %bytes_in_buffer2.i174, align 8, !tbaa !22
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end32.i, %do.body24.i
  %next_input_byte.3.i199 = phi ptr [ %104, %if.end32.i ], [ %next_input_byte.2188.i, %do.body24.i ]
  %bytes_in_buffer.3.i200 = phi i64 [ %105, %if.end32.i ], [ %bytes_in_buffer.2189.i, %do.body24.i ]
  %dec36.i = add i64 %bytes_in_buffer.3.i200, -1
  %incdec.ptr37.i = getelementptr inbounds i8, ptr %next_input_byte.3.i199, i64 1
  %106 = load i8, ptr %next_input_byte.3.i199, align 1, !tbaa !17
  %conv38.i = zext i8 %106 to i32
  %cmp42.i = icmp eq i64 %dec36.i, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.end52.i

if.then44.i:                                      ; preds = %if.end35.i
  %107 = load ptr, ptr %fill_input_buffer28.i, align 8, !tbaa !23
  %call46.i = tail call i32 %107(ptr noundef nonnull %cinfo) #6
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %return, label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i
  %108 = load ptr, ptr %94, align 8, !tbaa !20
  %109 = load i64, ptr %bytes_in_buffer2.i174, align 8, !tbaa !22
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end49.i, %if.end35.i
  %next_input_byte.4.i201 = phi ptr [ %108, %if.end49.i ], [ %incdec.ptr37.i, %if.end35.i ]
  %bytes_in_buffer.4.i202 = phi i64 [ %109, %if.end49.i ], [ %dec36.i, %if.end35.i ]
  %110 = load i8, ptr %next_input_byte.4.i201, align 1, !tbaa !17
  %conv55.i = zext i8 %110 to i32
  %111 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i203 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %111, i64 0, i32 5
  store i32 78, ptr %msg_code.i203, align 8, !tbaa !14
  %msg_parm.i204 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %111, i64 0, i32 6
  store i32 %conv38.i, ptr %msg_parm.i204, align 4, !tbaa !17
  %112 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm61.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6
  %arrayidx62.i = getelementptr inbounds [8 x i32], ptr %msg_parm61.i, i64 0, i64 1
  store i32 %conv55.i, ptr %arrayidx62.i, align 4, !tbaa !17
  %113 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message.i205 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 1
  %114 = load ptr, ptr %emit_message.i205, align 8, !tbaa !18
  tail call void %114(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %cmp66.i = icmp ugt i8 %106, 31
  br i1 %cmp66.i, label %if.end75.thread.i, label %if.end75.i206

if.end75.thread.i:                                ; preds = %if.end52.i
  %115 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code70.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i64 0, i32 5
  store i32 26, ptr %msg_code70.i, align 8, !tbaa !14
  %msg_parm72.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i64 0, i32 6
  store i32 %conv38.i, ptr %msg_parm72.i, align 4, !tbaa !17
  %116 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %117 = load ptr, ptr %116, align 8, !tbaa !41
  tail call void %117(ptr noundef nonnull %cinfo) #6
  br label %if.then78.i

if.end75.i206:                                    ; preds = %if.end52.i
  %cmp76.i = icmp ugt i8 %106, 15
  br i1 %cmp76.i, label %if.then78.i, label %if.else.i

if.then78.i:                                      ; preds = %if.end75.i206, %if.end75.thread.i
  %sub80.i = add nsw i32 %conv38.i, -16
  %118 = zext i32 %sub80.i to i64
  %arrayidx81.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 48, i64 %118
  store i8 %110, ptr %arrayidx81.i, align 1, !tbaa !17
  br label %if.end107.i

if.else.i:                                        ; preds = %if.end75.i206
  %and.i = and i8 %110, 15
  %idxprom83.i = zext i8 %106 to i64
  %arrayidx84.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 46, i64 %idxprom83.i
  store i8 %and.i, ptr %arrayidx84.i, align 1, !tbaa !17
  %119 = lshr i8 %110, 4
  %arrayidx87.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 47, i64 %idxprom83.i
  store i8 %119, ptr %arrayidx87.i, align 1, !tbaa !17
  %cmp96.i = icmp ugt i8 %and.i, %119
  br i1 %cmp96.i, label %if.then98.i, label %if.end107.i

if.then98.i:                                      ; preds = %if.else.i
  %120 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code100.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %120, i64 0, i32 5
  store i32 27, ptr %msg_code100.i, align 8, !tbaa !14
  %msg_parm102.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %120, i64 0, i32 6
  store i32 %conv55.i, ptr %msg_parm102.i, align 4, !tbaa !17
  %121 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %122 = load ptr, ptr %121, align 8, !tbaa !41
  tail call void %122(ptr noundef nonnull %cinfo) #6
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then98.i, %if.else.i, %if.then78.i
  %next_input_byte.2.i207 = getelementptr inbounds i8, ptr %next_input_byte.4.i201, i64 1
  %bytes_in_buffer.2.i208 = add i64 %bytes_in_buffer.4.i202, -1
  %cmp22.i = icmp sgt i64 %length.0187.in.i, 4
  br i1 %cmp22.i, label %do.body24.i, label %get_dac.exit, !llvm.loop !62

get_dac.exit:                                     ; preds = %if.end107.i, %if.end18.i198
  %next_input_byte.2.lcssa.i = phi ptr [ %next_input_byte.2184.i, %if.end18.i198 ], [ %next_input_byte.2.i207, %if.end107.i ]
  %bytes_in_buffer.2.lcssa.i = phi i64 [ %bytes_in_buffer.2185.i, %if.end18.i198 ], [ %bytes_in_buffer.2.i208, %if.end107.i ]
  store ptr %next_input_byte.2.lcssa.i, ptr %94, align 8, !tbaa !20
  store i64 %bytes_in_buffer.2.lcssa.i, ptr %bytes_in_buffer2.i174, align 8, !tbaa !22
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %huffval.i) #6
  %123 = load ptr, ptr %src.i, align 8, !tbaa !19
  %bytes_in_buffer2.i211 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %123, i64 0, i32 1
  %124 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  %cmp.i212 = icmp eq i64 %124, 0
  br i1 %cmp.i212, label %if.then.i216, label %if.end6.i225

if.then.i216:                                     ; preds = %sw.bb55
  %fill_input_buffer.i213 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %123, i64 0, i32 3
  %125 = load ptr, ptr %fill_input_buffer.i213, align 8, !tbaa !23
  %call.i214 = tail call i32 %125(ptr noundef nonnull %cinfo) #6
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %get_dht.exit.thread, label %if.end.i217

if.end.i217:                                      ; preds = %if.then.i216
  %126 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end6.i225

if.end6.i225:                                     ; preds = %if.end.i217, %sw.bb55
  %bytes_in_buffer.0.i218 = phi i64 [ %126, %if.end.i217 ], [ %124, %sw.bb55 ]
  %next_input_byte.0.i219 = load ptr, ptr %123, align 8, !tbaa !20
  %dec.i220 = add i64 %bytes_in_buffer.0.i218, -1
  %incdec.ptr.i221 = getelementptr inbounds i8, ptr %next_input_byte.0.i219, i64 1
  %127 = load i8, ptr %next_input_byte.0.i219, align 1, !tbaa !17
  %conv.i222 = zext i8 %127 to i64
  %shl.i223 = shl nuw nsw i64 %conv.i222, 8
  %cmp8.i224 = icmp eq i64 %dec.i220, 0
  br i1 %cmp8.i224, label %if.then10.i229, label %if.end18.i237

if.then10.i229:                                   ; preds = %if.end6.i225
  %fill_input_buffer11.i226 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %123, i64 0, i32 3
  %128 = load ptr, ptr %fill_input_buffer11.i226, align 8, !tbaa !23
  %call12.i227 = tail call i32 %128(ptr noundef nonnull %cinfo) #6
  %tobool13.not.i228 = icmp eq i32 %call12.i227, 0
  br i1 %tobool13.not.i228, label %get_dht.exit.thread, label %if.end15.i230

if.end15.i230:                                    ; preds = %if.then10.i229
  %129 = load ptr, ptr %123, align 8, !tbaa !20
  %130 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end18.i237

if.end18.i237:                                    ; preds = %if.end15.i230, %if.end6.i225
  %next_input_byte.1.i231 = phi ptr [ %129, %if.end15.i230 ], [ %incdec.ptr.i221, %if.end6.i225 ]
  %bytes_in_buffer.1.i232 = phi i64 [ %130, %if.end15.i230 ], [ %dec.i220, %if.end6.i225 ]
  %dec19.i233 = add i64 %bytes_in_buffer.1.i232, -1
  %incdec.ptr20.i234 = getelementptr inbounds i8, ptr %next_input_byte.1.i231, i64 1
  %131 = load i8, ptr %next_input_byte.1.i231, align 1, !tbaa !17
  %conv21.i235 = zext i8 %131 to i64
  %add.i236 = or i64 %shl.i223, %conv21.i235
  %cmp22340.i = icmp ugt i64 %add.i236, 2
  br i1 %cmp22340.i, label %do.body24.lr.ph.i239, label %get_dht.exit

do.body24.lr.ph.i239:                             ; preds = %if.end18.i237
  %sub.i = add nsw i64 %add.i236, -2
  %fill_input_buffer28.i238 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %123, i64 0, i32 3
  br label %do.body24.i241

do.body24.i241:                                   ; preds = %if.end199.i, %do.body24.lr.ph.i239
  %length.0343.i = phi i64 [ %sub.i, %do.body24.lr.ph.i239 ], [ %sub172.i, %if.end199.i ]
  %bytes_in_buffer.2342.i = phi i64 [ %dec19.i233, %do.body24.lr.ph.i239 ], [ %bytes_in_buffer.6.lcssa.i, %if.end199.i ]
  %next_input_byte.2341.i = phi ptr [ %incdec.ptr20.i234, %do.body24.lr.ph.i239 ], [ %next_input_byte.6.lcssa.i, %if.end199.i ]
  %cmp25.i240 = icmp eq i64 %bytes_in_buffer.2342.i, 0
  br i1 %cmp25.i240, label %if.then27.i244, label %if.end35.i253

if.then27.i244:                                   ; preds = %do.body24.i241
  %132 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call29.i242 = tail call i32 %132(ptr noundef %cinfo) #6
  %tobool30.not.i243 = icmp eq i32 %call29.i242, 0
  br i1 %tobool30.not.i243, label %get_dht.exit.thread, label %if.end32.i245

if.end32.i245:                                    ; preds = %if.then27.i244
  %133 = load ptr, ptr %123, align 8, !tbaa !20
  %134 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end35.i253

if.end35.i253:                                    ; preds = %if.end32.i245, %do.body24.i241
  %next_input_byte.3.i246 = phi ptr [ %133, %if.end32.i245 ], [ %next_input_byte.2341.i, %do.body24.i241 ]
  %bytes_in_buffer.3.i247 = phi i64 [ %134, %if.end32.i245 ], [ %bytes_in_buffer.2342.i, %do.body24.i241 ]
  %135 = load i8, ptr %next_input_byte.3.i246, align 1, !tbaa !17
  %conv38.i248 = zext i8 %135 to i32
  %136 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i249 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 5
  store i32 79, ptr %msg_code.i249, align 8, !tbaa !14
  %msg_parm.i250 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 6
  store i32 %conv38.i248, ptr %msg_parm.i250, align 4, !tbaa !17
  %137 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message.i251 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %137, i64 0, i32 1
  %138 = load ptr, ptr %emit_message.i251, align 8, !tbaa !18
  tail call void %138(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %next_input_byte.4329.i = getelementptr inbounds i8, ptr %next_input_byte.3.i246, i64 1
  %bytes_in_buffer.4330.i = add i64 %bytes_in_buffer.3.i247, -1
  %cmp47.i252 = icmp eq i64 %bytes_in_buffer.4330.i, 0
  br i1 %cmp47.i252, label %if.then49.i, label %if.end57.i258

if.then49.i:                                      ; preds = %if.end35.i253
  %139 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.i = tail call i32 %139(ptr noundef nonnull %cinfo) #6
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %get_dht.exit.thread, label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i
  %140 = load ptr, ptr %123, align 8, !tbaa !20
  %141 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.i258

if.end57.i258:                                    ; preds = %if.end54.i, %if.end35.i253
  %next_input_byte.5.i254 = phi ptr [ %140, %if.end54.i ], [ %next_input_byte.4329.i, %if.end35.i253 ]
  %bytes_in_buffer.5.i255 = phi i64 [ %141, %if.end54.i ], [ %bytes_in_buffer.4330.i, %if.end35.i253 ]
  %142 = load i8, ptr %next_input_byte.5.i254, align 1, !tbaa !17
  %conv65.i = zext i8 %142 to i32
  %next_input_byte.4.i256 = getelementptr inbounds i8, ptr %next_input_byte.5.i254, i64 1
  %bytes_in_buffer.4.i257 = add i64 %bytes_in_buffer.5.i255, -1
  %cmp47.1.i = icmp eq i64 %bytes_in_buffer.4.i257, 0
  br i1 %cmp47.1.i, label %if.then49.1.i, label %if.end57.1.i

if.then49.1.i:                                    ; preds = %if.end57.i258
  %143 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.1.i = tail call i32 %143(ptr noundef nonnull %cinfo) #6
  %tobool52.not.1.i = icmp eq i32 %call51.1.i, 0
  br i1 %tobool52.not.1.i, label %get_dht.exit.thread, label %if.end54.1.i

if.end54.1.i:                                     ; preds = %if.then49.1.i
  %144 = load ptr, ptr %123, align 8, !tbaa !20
  %145 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.1.i

if.end57.1.i:                                     ; preds = %if.end54.1.i, %if.end57.i258
  %next_input_byte.5.1.i = phi ptr [ %144, %if.end54.1.i ], [ %next_input_byte.4.i256, %if.end57.i258 ]
  %bytes_in_buffer.5.1.i = phi i64 [ %145, %if.end54.1.i ], [ %bytes_in_buffer.4.i257, %if.end57.i258 ]
  %146 = load i8, ptr %next_input_byte.5.1.i, align 1, !tbaa !17
  %conv65.1.i = zext i8 %146 to i32
  %add66.1.i = add nuw nsw i32 %conv65.1.i, %conv65.i
  %next_input_byte.4.1.i = getelementptr inbounds i8, ptr %next_input_byte.5.1.i, i64 1
  %bytes_in_buffer.4.1.i = add i64 %bytes_in_buffer.5.1.i, -1
  %cmp47.2.i = icmp eq i64 %bytes_in_buffer.4.1.i, 0
  br i1 %cmp47.2.i, label %if.then49.2.i, label %if.end57.2.i

if.then49.2.i:                                    ; preds = %if.end57.1.i
  %147 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.2.i = tail call i32 %147(ptr noundef nonnull %cinfo) #6
  %tobool52.not.2.i = icmp eq i32 %call51.2.i, 0
  br i1 %tobool52.not.2.i, label %get_dht.exit.thread, label %if.end54.2.i

if.end54.2.i:                                     ; preds = %if.then49.2.i
  %148 = load ptr, ptr %123, align 8, !tbaa !20
  %149 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.2.i

if.end57.2.i:                                     ; preds = %if.end54.2.i, %if.end57.1.i
  %next_input_byte.5.2.i = phi ptr [ %148, %if.end54.2.i ], [ %next_input_byte.4.1.i, %if.end57.1.i ]
  %bytes_in_buffer.5.2.i = phi i64 [ %149, %if.end54.2.i ], [ %bytes_in_buffer.4.1.i, %if.end57.1.i ]
  %150 = load i8, ptr %next_input_byte.5.2.i, align 1, !tbaa !17
  %conv65.2.i = zext i8 %150 to i32
  %add66.2.i = add nuw nsw i32 %add66.1.i, %conv65.2.i
  %next_input_byte.4.2.i = getelementptr inbounds i8, ptr %next_input_byte.5.2.i, i64 1
  %bytes_in_buffer.4.2.i = add i64 %bytes_in_buffer.5.2.i, -1
  %cmp47.3.i = icmp eq i64 %bytes_in_buffer.4.2.i, 0
  br i1 %cmp47.3.i, label %if.then49.3.i, label %if.end57.3.i

if.then49.3.i:                                    ; preds = %if.end57.2.i
  %151 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.3.i = tail call i32 %151(ptr noundef nonnull %cinfo) #6
  %tobool52.not.3.i = icmp eq i32 %call51.3.i, 0
  br i1 %tobool52.not.3.i, label %get_dht.exit.thread, label %if.end54.3.i

if.end54.3.i:                                     ; preds = %if.then49.3.i
  %152 = load ptr, ptr %123, align 8, !tbaa !20
  %153 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.3.i

if.end57.3.i:                                     ; preds = %if.end54.3.i, %if.end57.2.i
  %next_input_byte.5.3.i = phi ptr [ %152, %if.end54.3.i ], [ %next_input_byte.4.2.i, %if.end57.2.i ]
  %bytes_in_buffer.5.3.i = phi i64 [ %153, %if.end54.3.i ], [ %bytes_in_buffer.4.2.i, %if.end57.2.i ]
  %154 = load i8, ptr %next_input_byte.5.3.i, align 1, !tbaa !17
  %conv65.3.i = zext i8 %154 to i32
  %add66.3.i = add nuw nsw i32 %add66.2.i, %conv65.3.i
  %next_input_byte.4.3.i = getelementptr inbounds i8, ptr %next_input_byte.5.3.i, i64 1
  %bytes_in_buffer.4.3.i = add i64 %bytes_in_buffer.5.3.i, -1
  %cmp47.4.i = icmp eq i64 %bytes_in_buffer.4.3.i, 0
  br i1 %cmp47.4.i, label %if.then49.4.i, label %if.end57.4.i

if.then49.4.i:                                    ; preds = %if.end57.3.i
  %155 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.4.i = tail call i32 %155(ptr noundef nonnull %cinfo) #6
  %tobool52.not.4.i = icmp eq i32 %call51.4.i, 0
  br i1 %tobool52.not.4.i, label %get_dht.exit.thread, label %if.end54.4.i

if.end54.4.i:                                     ; preds = %if.then49.4.i
  %156 = load ptr, ptr %123, align 8, !tbaa !20
  %157 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.4.i

if.end57.4.i:                                     ; preds = %if.end54.4.i, %if.end57.3.i
  %next_input_byte.5.4.i = phi ptr [ %156, %if.end54.4.i ], [ %next_input_byte.4.3.i, %if.end57.3.i ]
  %bytes_in_buffer.5.4.i = phi i64 [ %157, %if.end54.4.i ], [ %bytes_in_buffer.4.3.i, %if.end57.3.i ]
  %158 = load i8, ptr %next_input_byte.5.4.i, align 1, !tbaa !17
  %conv65.4.i = zext i8 %158 to i32
  %add66.4.i = add nuw nsw i32 %add66.3.i, %conv65.4.i
  %next_input_byte.4.4.i = getelementptr inbounds i8, ptr %next_input_byte.5.4.i, i64 1
  %bytes_in_buffer.4.4.i = add i64 %bytes_in_buffer.5.4.i, -1
  %cmp47.5.i = icmp eq i64 %bytes_in_buffer.4.4.i, 0
  br i1 %cmp47.5.i, label %if.then49.5.i, label %if.end57.5.i

if.then49.5.i:                                    ; preds = %if.end57.4.i
  %159 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.5.i = tail call i32 %159(ptr noundef nonnull %cinfo) #6
  %tobool52.not.5.i = icmp eq i32 %call51.5.i, 0
  br i1 %tobool52.not.5.i, label %get_dht.exit.thread, label %if.end54.5.i

if.end54.5.i:                                     ; preds = %if.then49.5.i
  %160 = load ptr, ptr %123, align 8, !tbaa !20
  %161 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.5.i

if.end57.5.i:                                     ; preds = %if.end54.5.i, %if.end57.4.i
  %next_input_byte.5.5.i = phi ptr [ %160, %if.end54.5.i ], [ %next_input_byte.4.4.i, %if.end57.4.i ]
  %bytes_in_buffer.5.5.i = phi i64 [ %161, %if.end54.5.i ], [ %bytes_in_buffer.4.4.i, %if.end57.4.i ]
  %162 = load i8, ptr %next_input_byte.5.5.i, align 1, !tbaa !17
  %conv65.5.i = zext i8 %162 to i32
  %add66.5.i = add nuw nsw i32 %add66.4.i, %conv65.5.i
  %next_input_byte.4.5.i = getelementptr inbounds i8, ptr %next_input_byte.5.5.i, i64 1
  %bytes_in_buffer.4.5.i = add i64 %bytes_in_buffer.5.5.i, -1
  %cmp47.6.i = icmp eq i64 %bytes_in_buffer.4.5.i, 0
  br i1 %cmp47.6.i, label %if.then49.6.i, label %if.end57.6.i

if.then49.6.i:                                    ; preds = %if.end57.5.i
  %163 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.6.i = tail call i32 %163(ptr noundef nonnull %cinfo) #6
  %tobool52.not.6.i = icmp eq i32 %call51.6.i, 0
  br i1 %tobool52.not.6.i, label %get_dht.exit.thread, label %if.end54.6.i

if.end54.6.i:                                     ; preds = %if.then49.6.i
  %164 = load ptr, ptr %123, align 8, !tbaa !20
  %165 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.6.i

if.end57.6.i:                                     ; preds = %if.end54.6.i, %if.end57.5.i
  %next_input_byte.5.6.i = phi ptr [ %164, %if.end54.6.i ], [ %next_input_byte.4.5.i, %if.end57.5.i ]
  %bytes_in_buffer.5.6.i = phi i64 [ %165, %if.end54.6.i ], [ %bytes_in_buffer.4.5.i, %if.end57.5.i ]
  %166 = load i8, ptr %next_input_byte.5.6.i, align 1, !tbaa !17
  %conv65.6.i = zext i8 %166 to i32
  %add66.6.i = add nuw nsw i32 %add66.5.i, %conv65.6.i
  %next_input_byte.4.6.i = getelementptr inbounds i8, ptr %next_input_byte.5.6.i, i64 1
  %bytes_in_buffer.4.6.i = add i64 %bytes_in_buffer.5.6.i, -1
  %cmp47.7.i = icmp eq i64 %bytes_in_buffer.4.6.i, 0
  br i1 %cmp47.7.i, label %if.then49.7.i, label %if.end57.7.i

if.then49.7.i:                                    ; preds = %if.end57.6.i
  %167 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.7.i = tail call i32 %167(ptr noundef nonnull %cinfo) #6
  %tobool52.not.7.i = icmp eq i32 %call51.7.i, 0
  br i1 %tobool52.not.7.i, label %get_dht.exit.thread, label %if.end54.7.i

if.end54.7.i:                                     ; preds = %if.then49.7.i
  %168 = load ptr, ptr %123, align 8, !tbaa !20
  %169 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.7.i

if.end57.7.i:                                     ; preds = %if.end54.7.i, %if.end57.6.i
  %next_input_byte.5.7.i = phi ptr [ %168, %if.end54.7.i ], [ %next_input_byte.4.6.i, %if.end57.6.i ]
  %bytes_in_buffer.5.7.i = phi i64 [ %169, %if.end54.7.i ], [ %bytes_in_buffer.4.6.i, %if.end57.6.i ]
  %170 = load i8, ptr %next_input_byte.5.7.i, align 1, !tbaa !17
  %conv65.7.i = zext i8 %170 to i32
  %add66.7.i = add nuw nsw i32 %add66.6.i, %conv65.7.i
  %next_input_byte.4.7.i = getelementptr inbounds i8, ptr %next_input_byte.5.7.i, i64 1
  %bytes_in_buffer.4.7.i = add i64 %bytes_in_buffer.5.7.i, -1
  %cmp47.8.i = icmp eq i64 %bytes_in_buffer.4.7.i, 0
  br i1 %cmp47.8.i, label %if.then49.8.i, label %if.end57.8.i

if.then49.8.i:                                    ; preds = %if.end57.7.i
  %171 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.8.i = tail call i32 %171(ptr noundef nonnull %cinfo) #6
  %tobool52.not.8.i = icmp eq i32 %call51.8.i, 0
  br i1 %tobool52.not.8.i, label %get_dht.exit.thread, label %if.end54.8.i

if.end54.8.i:                                     ; preds = %if.then49.8.i
  %172 = load ptr, ptr %123, align 8, !tbaa !20
  %173 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.8.i

if.end57.8.i:                                     ; preds = %if.end54.8.i, %if.end57.7.i
  %next_input_byte.5.8.i = phi ptr [ %172, %if.end54.8.i ], [ %next_input_byte.4.7.i, %if.end57.7.i ]
  %bytes_in_buffer.5.8.i = phi i64 [ %173, %if.end54.8.i ], [ %bytes_in_buffer.4.7.i, %if.end57.7.i ]
  %174 = load i8, ptr %next_input_byte.5.8.i, align 1, !tbaa !17
  %conv65.8.i = zext i8 %174 to i32
  %add66.8.i = add nuw nsw i32 %add66.7.i, %conv65.8.i
  %next_input_byte.4.8.i = getelementptr inbounds i8, ptr %next_input_byte.5.8.i, i64 1
  %bytes_in_buffer.4.8.i = add i64 %bytes_in_buffer.5.8.i, -1
  %cmp47.9.i = icmp eq i64 %bytes_in_buffer.4.8.i, 0
  br i1 %cmp47.9.i, label %if.then49.9.i, label %if.end57.9.i

if.then49.9.i:                                    ; preds = %if.end57.8.i
  %175 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.9.i = tail call i32 %175(ptr noundef nonnull %cinfo) #6
  %tobool52.not.9.i = icmp eq i32 %call51.9.i, 0
  br i1 %tobool52.not.9.i, label %get_dht.exit.thread, label %if.end54.9.i

if.end54.9.i:                                     ; preds = %if.then49.9.i
  %176 = load ptr, ptr %123, align 8, !tbaa !20
  %177 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.9.i

if.end57.9.i:                                     ; preds = %if.end54.9.i, %if.end57.8.i
  %next_input_byte.5.9.i = phi ptr [ %176, %if.end54.9.i ], [ %next_input_byte.4.8.i, %if.end57.8.i ]
  %bytes_in_buffer.5.9.i = phi i64 [ %177, %if.end54.9.i ], [ %bytes_in_buffer.4.8.i, %if.end57.8.i ]
  %178 = load i8, ptr %next_input_byte.5.9.i, align 1, !tbaa !17
  %conv65.9.i = zext i8 %178 to i32
  %add66.9.i = add nuw nsw i32 %add66.8.i, %conv65.9.i
  %next_input_byte.4.9.i = getelementptr inbounds i8, ptr %next_input_byte.5.9.i, i64 1
  %bytes_in_buffer.4.9.i = add i64 %bytes_in_buffer.5.9.i, -1
  %cmp47.10.i = icmp eq i64 %bytes_in_buffer.4.9.i, 0
  br i1 %cmp47.10.i, label %if.then49.10.i, label %if.end57.10.i

if.then49.10.i:                                   ; preds = %if.end57.9.i
  %179 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.10.i = tail call i32 %179(ptr noundef nonnull %cinfo) #6
  %tobool52.not.10.i = icmp eq i32 %call51.10.i, 0
  br i1 %tobool52.not.10.i, label %get_dht.exit.thread, label %if.end54.10.i

if.end54.10.i:                                    ; preds = %if.then49.10.i
  %180 = load ptr, ptr %123, align 8, !tbaa !20
  %181 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.10.i

if.end57.10.i:                                    ; preds = %if.end54.10.i, %if.end57.9.i
  %next_input_byte.5.10.i = phi ptr [ %180, %if.end54.10.i ], [ %next_input_byte.4.9.i, %if.end57.9.i ]
  %bytes_in_buffer.5.10.i = phi i64 [ %181, %if.end54.10.i ], [ %bytes_in_buffer.4.9.i, %if.end57.9.i ]
  %182 = load i8, ptr %next_input_byte.5.10.i, align 1, !tbaa !17
  %conv65.10.i = zext i8 %182 to i32
  %add66.10.i = add nuw nsw i32 %add66.9.i, %conv65.10.i
  %next_input_byte.4.10.i = getelementptr inbounds i8, ptr %next_input_byte.5.10.i, i64 1
  %bytes_in_buffer.4.10.i = add i64 %bytes_in_buffer.5.10.i, -1
  %cmp47.11.i = icmp eq i64 %bytes_in_buffer.4.10.i, 0
  br i1 %cmp47.11.i, label %if.then49.11.i, label %if.end57.11.i

if.then49.11.i:                                   ; preds = %if.end57.10.i
  %183 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.11.i = tail call i32 %183(ptr noundef nonnull %cinfo) #6
  %tobool52.not.11.i = icmp eq i32 %call51.11.i, 0
  br i1 %tobool52.not.11.i, label %get_dht.exit.thread, label %if.end54.11.i

if.end54.11.i:                                    ; preds = %if.then49.11.i
  %184 = load ptr, ptr %123, align 8, !tbaa !20
  %185 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.11.i

if.end57.11.i:                                    ; preds = %if.end54.11.i, %if.end57.10.i
  %next_input_byte.5.11.i = phi ptr [ %184, %if.end54.11.i ], [ %next_input_byte.4.10.i, %if.end57.10.i ]
  %bytes_in_buffer.5.11.i = phi i64 [ %185, %if.end54.11.i ], [ %bytes_in_buffer.4.10.i, %if.end57.10.i ]
  %186 = load i8, ptr %next_input_byte.5.11.i, align 1, !tbaa !17
  %conv65.11.i = zext i8 %186 to i32
  %add66.11.i = add nuw nsw i32 %add66.10.i, %conv65.11.i
  %next_input_byte.4.11.i = getelementptr inbounds i8, ptr %next_input_byte.5.11.i, i64 1
  %bytes_in_buffer.4.11.i = add i64 %bytes_in_buffer.5.11.i, -1
  %cmp47.12.i = icmp eq i64 %bytes_in_buffer.4.11.i, 0
  br i1 %cmp47.12.i, label %if.then49.12.i, label %if.end57.12.i

if.then49.12.i:                                   ; preds = %if.end57.11.i
  %187 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.12.i = tail call i32 %187(ptr noundef nonnull %cinfo) #6
  %tobool52.not.12.i = icmp eq i32 %call51.12.i, 0
  br i1 %tobool52.not.12.i, label %get_dht.exit.thread, label %if.end54.12.i

if.end54.12.i:                                    ; preds = %if.then49.12.i
  %188 = load ptr, ptr %123, align 8, !tbaa !20
  %189 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.12.i

if.end57.12.i:                                    ; preds = %if.end54.12.i, %if.end57.11.i
  %next_input_byte.5.12.i = phi ptr [ %188, %if.end54.12.i ], [ %next_input_byte.4.11.i, %if.end57.11.i ]
  %bytes_in_buffer.5.12.i = phi i64 [ %189, %if.end54.12.i ], [ %bytes_in_buffer.4.11.i, %if.end57.11.i ]
  %190 = load i8, ptr %next_input_byte.5.12.i, align 1, !tbaa !17
  %conv65.12.i = zext i8 %190 to i32
  %add66.12.i = add nuw nsw i32 %add66.11.i, %conv65.12.i
  %next_input_byte.4.12.i = getelementptr inbounds i8, ptr %next_input_byte.5.12.i, i64 1
  %bytes_in_buffer.4.12.i = add i64 %bytes_in_buffer.5.12.i, -1
  %cmp47.13.i = icmp eq i64 %bytes_in_buffer.4.12.i, 0
  br i1 %cmp47.13.i, label %if.then49.13.i, label %if.end57.13.i

if.then49.13.i:                                   ; preds = %if.end57.12.i
  %191 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.13.i = tail call i32 %191(ptr noundef nonnull %cinfo) #6
  %tobool52.not.13.i = icmp eq i32 %call51.13.i, 0
  br i1 %tobool52.not.13.i, label %get_dht.exit.thread, label %if.end54.13.i

if.end54.13.i:                                    ; preds = %if.then49.13.i
  %192 = load ptr, ptr %123, align 8, !tbaa !20
  %193 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.13.i

if.end57.13.i:                                    ; preds = %if.end54.13.i, %if.end57.12.i
  %next_input_byte.5.13.i = phi ptr [ %192, %if.end54.13.i ], [ %next_input_byte.4.12.i, %if.end57.12.i ]
  %bytes_in_buffer.5.13.i = phi i64 [ %193, %if.end54.13.i ], [ %bytes_in_buffer.4.12.i, %if.end57.12.i ]
  %194 = load i8, ptr %next_input_byte.5.13.i, align 1, !tbaa !17
  %conv65.13.i = zext i8 %194 to i32
  %add66.13.i = add nuw nsw i32 %add66.12.i, %conv65.13.i
  %next_input_byte.4.13.i = getelementptr inbounds i8, ptr %next_input_byte.5.13.i, i64 1
  %bytes_in_buffer.4.13.i = add i64 %bytes_in_buffer.5.13.i, -1
  %cmp47.14.i = icmp eq i64 %bytes_in_buffer.4.13.i, 0
  br i1 %cmp47.14.i, label %if.then49.14.i, label %if.end57.14.i

if.then49.14.i:                                   ; preds = %if.end57.13.i
  %195 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.14.i = tail call i32 %195(ptr noundef nonnull %cinfo) #6
  %tobool52.not.14.i = icmp eq i32 %call51.14.i, 0
  br i1 %tobool52.not.14.i, label %get_dht.exit.thread, label %if.end54.14.i

if.end54.14.i:                                    ; preds = %if.then49.14.i
  %196 = load ptr, ptr %123, align 8, !tbaa !20
  %197 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.14.i

if.end57.14.i:                                    ; preds = %if.end54.14.i, %if.end57.13.i
  %next_input_byte.5.14.i = phi ptr [ %196, %if.end54.14.i ], [ %next_input_byte.4.13.i, %if.end57.13.i ]
  %bytes_in_buffer.5.14.i = phi i64 [ %197, %if.end54.14.i ], [ %bytes_in_buffer.4.13.i, %if.end57.13.i ]
  %198 = load i8, ptr %next_input_byte.5.14.i, align 1, !tbaa !17
  %conv65.14.i = zext i8 %198 to i32
  %add66.14.i = add nuw nsw i32 %add66.13.i, %conv65.14.i
  %next_input_byte.4.14.i = getelementptr inbounds i8, ptr %next_input_byte.5.14.i, i64 1
  %bytes_in_buffer.4.14.i = add i64 %bytes_in_buffer.5.14.i, -1
  %cmp47.15.i = icmp eq i64 %bytes_in_buffer.4.14.i, 0
  br i1 %cmp47.15.i, label %if.then49.15.i, label %if.end57.15.i

if.then49.15.i:                                   ; preds = %if.end57.14.i
  %199 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call51.15.i = tail call i32 %199(ptr noundef nonnull %cinfo) #6
  %tobool52.not.15.i = icmp eq i32 %call51.15.i, 0
  br i1 %tobool52.not.15.i, label %get_dht.exit.thread, label %if.end54.15.i

if.end54.15.i:                                    ; preds = %if.then49.15.i
  %200 = load ptr, ptr %123, align 8, !tbaa !20
  %201 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end57.15.i

if.end57.15.i:                                    ; preds = %if.end54.15.i, %if.end57.14.i
  %next_input_byte.5.15.i = phi ptr [ %200, %if.end54.15.i ], [ %next_input_byte.4.14.i, %if.end57.14.i ]
  %bytes_in_buffer.5.15.i = phi i64 [ %201, %if.end54.15.i ], [ %bytes_in_buffer.4.14.i, %if.end57.14.i ]
  %202 = load i8, ptr %next_input_byte.5.15.i, align 1, !tbaa !17
  %conv65.15.i = zext i8 %202 to i32
  %add66.15.i = add nuw nsw i32 %add66.14.i, %conv65.15.i
  %next_input_byte.4.15.i = getelementptr inbounds i8, ptr %next_input_byte.5.15.i, i64 1
  %bytes_in_buffer.4.15.i = add i64 %bytes_in_buffer.5.15.i, -1
  %sub67.i = add nsw i64 %length.0343.i, -17
  %203 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm70.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %203, i64 0, i32 6
  store i32 %conv65.i, ptr %msg_parm70.i, align 4, !tbaa !55
  %arrayidx76.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 1
  store i32 %conv65.1.i, ptr %arrayidx76.i, align 4, !tbaa !55
  %arrayidx79.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 2
  store i32 %conv65.2.i, ptr %arrayidx79.i, align 4, !tbaa !55
  %arrayidx82.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 3
  store i32 %conv65.3.i, ptr %arrayidx82.i, align 4, !tbaa !55
  %arrayidx85.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 4
  store i32 %conv65.4.i, ptr %arrayidx85.i, align 4, !tbaa !55
  %arrayidx88.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 5
  store i32 %conv65.5.i, ptr %arrayidx88.i, align 4, !tbaa !55
  %arrayidx91.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 6
  store i32 %conv65.6.i, ptr %arrayidx91.i, align 4, !tbaa !55
  %arrayidx94.i = getelementptr inbounds i32, ptr %msg_parm70.i, i64 7
  store i32 %conv65.7.i, ptr %arrayidx94.i, align 4, !tbaa !55
  %msg_code96.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %203, i64 0, i32 5
  store i32 85, ptr %msg_code96.i, align 8, !tbaa !14
  %emit_message98.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %203, i64 0, i32 1
  %204 = load ptr, ptr %emit_message98.i, align 8, !tbaa !18
  tail call void %204(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %205 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm104.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %205, i64 0, i32 6
  store i32 %conv65.8.i, ptr %msg_parm104.i, align 4, !tbaa !55
  %arrayidx111.i = getelementptr inbounds i32, ptr %msg_parm104.i, i64 1
  store i32 %conv65.9.i, ptr %arrayidx111.i, align 4, !tbaa !55
  %arrayidx114.i259 = getelementptr inbounds i32, ptr %msg_parm104.i, i64 2
  store i32 %conv65.10.i, ptr %arrayidx114.i259, align 4, !tbaa !55
  %arrayidx117.i = getelementptr inbounds i32, ptr %msg_parm104.i, i64 3
  store i32 %conv65.11.i, ptr %arrayidx117.i, align 4, !tbaa !55
  %arrayidx120.i = getelementptr inbounds i32, ptr %msg_parm104.i, i64 4
  store i32 %conv65.12.i, ptr %arrayidx120.i, align 4, !tbaa !55
  %arrayidx123.i260 = getelementptr inbounds i32, ptr %msg_parm104.i, i64 5
  store i32 %conv65.13.i, ptr %arrayidx123.i260, align 4, !tbaa !55
  %arrayidx126.i = getelementptr inbounds i32, ptr %msg_parm104.i, i64 6
  store i32 %conv65.14.i, ptr %arrayidx126.i, align 4, !tbaa !55
  %arrayidx129.i = getelementptr inbounds i32, ptr %msg_parm104.i, i64 7
  store i32 %conv65.15.i, ptr %arrayidx129.i, align 4, !tbaa !55
  %msg_code131.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %205, i64 0, i32 5
  store i32 85, ptr %msg_code131.i, align 8, !tbaa !14
  %emit_message133.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %205, i64 0, i32 1
  %206 = load ptr, ptr %emit_message133.i, align 8, !tbaa !18
  tail call void %206(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %cmp136.i = icmp ugt i32 %add66.15.i, 256
  %conv138.i = zext i32 %add66.15.i to i64
  %cmp139.i = icmp slt i64 %sub67.i, %conv138.i
  %or.cond.i261 = select i1 %cmp136.i, i1 true, i1 %cmp139.i
  br i1 %or.cond.i261, label %if.then141.i, label %if.end145.i

if.then141.i:                                     ; preds = %if.end57.15.i
  %207 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code143.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %207, i64 0, i32 5
  store i32 28, ptr %msg_code143.i, align 8, !tbaa !14
  %208 = load ptr, ptr %207, align 8, !tbaa !41
  tail call void %208(ptr noundef nonnull %cinfo) #6
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then141.i, %if.end57.15.i
  %cmp147335.not.i = icmp eq i32 %add66.15.i, 0
  br i1 %cmp147335.not.i, label %for.end170.i, label %do.body150.i

do.body150.i:                                     ; preds = %if.end145.i, %if.end161.i273
  %indvars.iv.i262 = phi i64 [ %indvars.iv.next.i272, %if.end161.i273 ], [ 0, %if.end145.i ]
  %bytes_in_buffer.6338.i = phi i64 [ %dec162.i270, %if.end161.i273 ], [ %bytes_in_buffer.4.15.i, %if.end145.i ]
  %next_input_byte.6337.i = phi ptr [ %incdec.ptr163.i271, %if.end161.i273 ], [ %next_input_byte.4.15.i, %if.end145.i ]
  %cmp151.i263 = icmp eq i64 %bytes_in_buffer.6338.i, 0
  br i1 %cmp151.i263, label %if.then153.i266, label %if.end161.i273

if.then153.i266:                                  ; preds = %do.body150.i
  %209 = load ptr, ptr %fill_input_buffer28.i238, align 8, !tbaa !23
  %call155.i264 = tail call i32 %209(ptr noundef nonnull %cinfo) #6
  %tobool156.not.i265 = icmp eq i32 %call155.i264, 0
  br i1 %tobool156.not.i265, label %get_dht.exit.thread, label %if.end158.i267

if.end158.i267:                                   ; preds = %if.then153.i266
  %210 = load ptr, ptr %123, align 8, !tbaa !20
  %211 = load i64, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  br label %if.end161.i273

if.end161.i273:                                   ; preds = %if.end158.i267, %do.body150.i
  %next_input_byte.7.i268 = phi ptr [ %210, %if.end158.i267 ], [ %next_input_byte.6337.i, %do.body150.i ]
  %bytes_in_buffer.7.i269 = phi i64 [ %211, %if.end158.i267 ], [ %bytes_in_buffer.6338.i, %do.body150.i ]
  %dec162.i270 = add i64 %bytes_in_buffer.7.i269, -1
  %incdec.ptr163.i271 = getelementptr inbounds i8, ptr %next_input_byte.7.i268, i64 1
  %212 = load i8, ptr %next_input_byte.7.i268, align 1, !tbaa !17
  %arrayidx165.i = getelementptr inbounds [256 x i8], ptr %huffval.i, i64 0, i64 %indvars.iv.i262
  store i8 %212, ptr %arrayidx165.i, align 1, !tbaa !17
  %indvars.iv.next.i272 = add nuw nsw i64 %indvars.iv.i262, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next.i272, %conv138.i
  br i1 %exitcond.not, label %for.end170.i, label %do.body150.i, !llvm.loop !63

for.end170.i:                                     ; preds = %if.end161.i273, %if.end145.i
  %next_input_byte.6.lcssa.i = phi ptr [ %next_input_byte.4.15.i, %if.end145.i ], [ %incdec.ptr163.i271, %if.end161.i273 ]
  %bytes_in_buffer.6.lcssa.i = phi i64 [ %bytes_in_buffer.4.15.i, %if.end145.i ], [ %dec162.i270, %if.end161.i273 ]
  %sub172.i = sub nsw i64 %sub67.i, %conv138.i
  %and.i274 = and i32 %conv38.i248, 16
  %tobool173.not.i275 = icmp eq i32 %and.i274, 0
  br i1 %tobool173.not.i275, label %if.else.i276, label %if.then174.i

if.then174.i:                                     ; preds = %for.end170.i
  %sub175.i = add nsw i32 %conv38.i248, -16
  %idxprom176.i = sext i32 %sub175.i to i64
  %arrayidx177.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 41, i64 %idxprom176.i
  br label %if.end180.i

if.else.i276:                                     ; preds = %for.end170.i
  %213 = zext i8 %135 to i64
  %arrayidx179.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 40, i64 %213
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else.i276, %if.then174.i
  %index.0.i = phi i32 [ %sub175.i, %if.then174.i ], [ %conv38.i248, %if.else.i276 ]
  %htblptr.0.i = phi ptr [ %arrayidx177.i, %if.then174.i ], [ %arrayidx179.i, %if.else.i276 ]
  %214 = icmp ugt i32 %index.0.i, 3
  br i1 %214, label %if.then186.i, label %if.end194.i

if.then186.i:                                     ; preds = %if.end180.i
  %215 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code188.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %215, i64 0, i32 5
  store i32 29, ptr %msg_code188.i, align 8, !tbaa !14
  %msg_parm190.i277 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %215, i64 0, i32 6
  store i32 %index.0.i, ptr %msg_parm190.i277, align 4, !tbaa !17
  %216 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %217 = load ptr, ptr %216, align 8, !tbaa !41
  tail call void %217(ptr noundef nonnull %cinfo) #6
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.then186.i, %if.end180.i
  %218 = load ptr, ptr %htblptr.0.i, align 8, !tbaa !36
  %cmp195.i = icmp eq ptr %218, null
  br i1 %cmp195.i, label %if.then197.i, label %if.end199.i

if.then197.i:                                     ; preds = %if.end194.i
  %call198.i = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %cinfo) #6
  store ptr %call198.i, ptr %htblptr.0.i, align 8, !tbaa !36
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then197.i, %if.end194.i
  %219 = phi ptr [ %call198.i, %if.then197.i ], [ %218, %if.end194.i ]
  store i8 0, ptr %219, align 4
  %bits.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 1
  store i8 %142, ptr %bits.sroa.4.0..sroa_idx.i, align 1
  %bits.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 2
  store i8 %146, ptr %bits.sroa.6.0..sroa_idx.i, align 2
  %bits.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 3
  store i8 %150, ptr %bits.sroa.8.0..sroa_idx.i, align 1
  %bits.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 4
  store i8 %154, ptr %bits.sroa.10.0..sroa_idx.i, align 4
  %bits.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 5
  store i8 %158, ptr %bits.sroa.12.0..sroa_idx.i, align 1
  %bits.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 6
  store i8 %162, ptr %bits.sroa.14.0..sroa_idx.i, align 2
  %bits.sroa.16.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 7
  store i8 %166, ptr %bits.sroa.16.0..sroa_idx.i, align 1
  %bits.sroa.18.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 8
  store i8 %170, ptr %bits.sroa.18.0..sroa_idx.i, align 4
  %bits.sroa.20.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 9
  store i8 %174, ptr %bits.sroa.20.0..sroa_idx.i, align 1
  %bits.sroa.22.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 10
  store i8 %178, ptr %bits.sroa.22.0..sroa_idx.i, align 2
  %bits.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 11
  store i8 %182, ptr %bits.sroa.24.0..sroa_idx.i, align 1
  %bits.sroa.26.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 12
  store i8 %186, ptr %bits.sroa.26.0..sroa_idx.i, align 4
  %bits.sroa.28.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 13
  store i8 %190, ptr %bits.sroa.28.0..sroa_idx.i, align 1
  %bits.sroa.30.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 14
  store i8 %194, ptr %bits.sroa.30.0..sroa_idx.i, align 2
  %bits.sroa.32.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 15
  store i8 %198, ptr %bits.sroa.32.0..sroa_idx.i, align 1
  %bits.sroa.34.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i64 16
  store i8 %202, ptr %bits.sroa.34.0..sroa_idx.i, align 4
  %220 = load ptr, ptr %htblptr.0.i, align 8, !tbaa !36
  %huffval203.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %220, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %huffval203.i, ptr noundef nonnull align 16 dereferenceable(256) %huffval.i, i64 256, i1 false) #6
  %cmp22.i278 = icmp sgt i64 %sub172.i, 0
  br i1 %cmp22.i278, label %do.body24.i241, label %get_dht.exit, !llvm.loop !64

get_dht.exit.thread:                              ; preds = %if.then.i216, %if.then10.i229, %if.then49.15.i, %if.then49.14.i, %if.then49.13.i, %if.then49.12.i, %if.then49.11.i, %if.then49.10.i, %if.then49.9.i, %if.then49.8.i, %if.then49.7.i, %if.then49.6.i, %if.then49.5.i, %if.then49.4.i, %if.then49.3.i, %if.then49.2.i, %if.then49.1.i, %if.then49.i, %if.then27.i244, %if.then153.i266
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %huffval.i) #6
  br label %return

get_dht.exit:                                     ; preds = %if.end199.i, %if.end18.i237
  %next_input_byte.2.lcssa.i279 = phi ptr [ %incdec.ptr20.i234, %if.end18.i237 ], [ %next_input_byte.6.lcssa.i, %if.end199.i ]
  %bytes_in_buffer.2.lcssa.i280 = phi i64 [ %dec19.i233, %if.end18.i237 ], [ %bytes_in_buffer.6.lcssa.i, %if.end199.i ]
  store ptr %next_input_byte.2.lcssa.i279, ptr %123, align 8, !tbaa !20
  store i64 %bytes_in_buffer.2.lcssa.i280, ptr %bytes_in_buffer2.i211, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %huffval.i) #6
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end9
  %221 = load ptr, ptr %src.i, align 8, !tbaa !19
  %bytes_in_buffer2.i284 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %221, i64 0, i32 1
  %222 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  %cmp.i285 = icmp eq i64 %222, 0
  br i1 %cmp.i285, label %if.then.i289, label %if.end6.i298

if.then.i289:                                     ; preds = %sw.bb60
  %fill_input_buffer.i286 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %221, i64 0, i32 3
  %223 = load ptr, ptr %fill_input_buffer.i286, align 8, !tbaa !23
  %call.i287 = tail call i32 %223(ptr noundef nonnull %cinfo) #6
  %tobool.not.i288 = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i288, label %return, label %if.end.i290

if.end.i290:                                      ; preds = %if.then.i289
  %224 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %if.end6.i298

if.end6.i298:                                     ; preds = %if.end.i290, %sw.bb60
  %bytes_in_buffer.0.i291 = phi i64 [ %224, %if.end.i290 ], [ %222, %sw.bb60 ]
  %next_input_byte.0.i292 = load ptr, ptr %221, align 8, !tbaa !20
  %dec.i293 = add i64 %bytes_in_buffer.0.i291, -1
  %incdec.ptr.i294 = getelementptr inbounds i8, ptr %next_input_byte.0.i292, i64 1
  %225 = load i8, ptr %next_input_byte.0.i292, align 1, !tbaa !17
  %conv.i295 = zext i8 %225 to i64
  %shl.i296 = shl nuw nsw i64 %conv.i295, 8
  %cmp8.i297 = icmp eq i64 %dec.i293, 0
  br i1 %cmp8.i297, label %if.then10.i302, label %if.end18.i310

if.then10.i302:                                   ; preds = %if.end6.i298
  %fill_input_buffer11.i299 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %221, i64 0, i32 3
  %226 = load ptr, ptr %fill_input_buffer11.i299, align 8, !tbaa !23
  %call12.i300 = tail call i32 %226(ptr noundef nonnull %cinfo) #6
  %tobool13.not.i301 = icmp eq i32 %call12.i300, 0
  br i1 %tobool13.not.i301, label %return, label %if.end15.i303

if.end15.i303:                                    ; preds = %if.then10.i302
  %227 = load ptr, ptr %221, align 8, !tbaa !20
  %228 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %if.end18.i310

if.end18.i310:                                    ; preds = %if.end15.i303, %if.end6.i298
  %next_input_byte.1.i304 = phi ptr [ %227, %if.end15.i303 ], [ %incdec.ptr.i294, %if.end6.i298 ]
  %bytes_in_buffer.1.i305 = phi i64 [ %228, %if.end15.i303 ], [ %dec.i293, %if.end6.i298 ]
  %dec19.i306 = add i64 %bytes_in_buffer.1.i305, -1
  %incdec.ptr20.i307 = getelementptr inbounds i8, ptr %next_input_byte.1.i304, i64 1
  %229 = load i8, ptr %next_input_byte.1.i304, align 1, !tbaa !17
  %conv21.i308 = zext i8 %229 to i64
  %add.i309 = or i64 %shl.i296, %conv21.i308
  %cmp22329.i = icmp ugt i64 %add.i309, 2
  br i1 %cmp22329.i, label %do.body24.lr.ph.i313, label %get_dqt.exit

do.body24.lr.ph.i313:                             ; preds = %if.end18.i310
  %sub.i311 = add nsw i64 %add.i309, -2
  %fill_input_buffer28.i312 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %221, i64 0, i32 3
  br label %do.body24.i315

do.body24.i315:                                   ; preds = %if.end195.i, %do.body24.lr.ph.i313
  %bytes_in_buffer.2332.i = phi i64 [ %dec19.i306, %do.body24.lr.ph.i313 ], [ %.us-phi327.i, %if.end195.i ]
  %next_input_byte.2331.i = phi ptr [ %incdec.ptr20.i307, %do.body24.lr.ph.i313 ], [ %.us-phi.i, %if.end195.i ]
  %length.0330.i = phi i64 [ %sub.i311, %do.body24.lr.ph.i313 ], [ %spec.select.i, %if.end195.i ]
  %cmp25.i314 = icmp eq i64 %bytes_in_buffer.2332.i, 0
  br i1 %cmp25.i314, label %if.then27.i318, label %if.end35.i327

if.then27.i318:                                   ; preds = %do.body24.i315
  %230 = load ptr, ptr %fill_input_buffer28.i312, align 8, !tbaa !23
  %call29.i316 = tail call i32 %230(ptr noundef nonnull %cinfo) #6
  %tobool30.not.i317 = icmp eq i32 %call29.i316, 0
  br i1 %tobool30.not.i317, label %return, label %if.end32.i319

if.end32.i319:                                    ; preds = %if.then27.i318
  %231 = load ptr, ptr %221, align 8, !tbaa !20
  %232 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %if.end35.i327

if.end35.i327:                                    ; preds = %if.end32.i319, %do.body24.i315
  %next_input_byte.3.i320 = phi ptr [ %231, %if.end32.i319 ], [ %next_input_byte.2331.i, %do.body24.i315 ]
  %bytes_in_buffer.3.i321 = phi i64 [ %232, %if.end32.i319 ], [ %bytes_in_buffer.2332.i, %do.body24.i315 ]
  %233 = load i8, ptr %next_input_byte.3.i320, align 1, !tbaa !17
  %conv38.i322 = zext i8 %233 to i32
  %234 = lshr i32 %conv38.i322, 4
  %and.i323 = and i32 %conv38.i322, 15
  %235 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i324 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %235, i64 0, i32 5
  store i32 80, ptr %msg_code.i324, align 8, !tbaa !14
  %msg_parm.i325 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %235, i64 0, i32 6
  store i32 %and.i323, ptr %msg_parm.i325, align 4, !tbaa !17
  %236 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm43.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %236, i64 0, i32 6
  %arrayidx44.i = getelementptr inbounds [8 x i32], ptr %msg_parm43.i, i64 0, i64 1
  store i32 %234, ptr %arrayidx44.i, align 4, !tbaa !17
  %237 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message.i326 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %237, i64 0, i32 1
  %238 = load ptr, ptr %emit_message.i326, align 8, !tbaa !18
  tail call void %238(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %cmp46.i = icmp ugt i32 %and.i323, 3
  br i1 %cmp46.i, label %if.then48.i, label %if.end55.i

if.then48.i:                                      ; preds = %if.end35.i327
  %239 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code50.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %239, i64 0, i32 5
  store i32 30, ptr %msg_code50.i, align 8, !tbaa !14
  %msg_parm52.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %239, i64 0, i32 6
  store i32 %and.i323, ptr %msg_parm52.i, align 4, !tbaa !17
  %240 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %241 = load ptr, ptr %240, align 8, !tbaa !41
  tail call void %241(ptr noundef nonnull %cinfo) #6
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then48.i, %if.end35.i327
  %242 = zext i32 %and.i323 to i64
  %arrayidx56.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 39, i64 %242
  %243 = load ptr, ptr %arrayidx56.i, align 8, !tbaa !36
  %cmp57.i = icmp eq ptr %243, null
  br i1 %cmp57.i, label %if.then59.i, label %if.end64.i

if.then59.i:                                      ; preds = %if.end55.i
  %call60.i = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %cinfo) #6
  store ptr %call60.i, ptr %arrayidx56.i, align 8, !tbaa !36
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then59.i, %if.end55.i
  %244 = phi ptr [ %call60.i, %if.then59.i ], [ %243, %if.end55.i ]
  %tobool70.not.i328 = icmp ult i8 %233, 16
  %next_input_byte.4322.i = getelementptr inbounds i8, ptr %next_input_byte.3.i320, i64 1
  %bytes_in_buffer.4323.i = add i64 %bytes_in_buffer.3.i321, -1
  br i1 %tobool70.not.i328, label %for.body.us.i, label %for.body.i

for.body.us.i:                                    ; preds = %if.end64.i, %if.end116.us.i
  %indvars.iv338.i = phi i64 [ %indvars.iv.next339.i, %if.end116.us.i ], [ 0, %if.end64.i ]
  %bytes_in_buffer.4326.us.i = phi i64 [ %bytes_in_buffer.4.us.i, %if.end116.us.i ], [ %bytes_in_buffer.4323.i, %if.end64.i ]
  %next_input_byte.4325.us.i = phi ptr [ %next_input_byte.4.us.i, %if.end116.us.i ], [ %next_input_byte.4322.i, %if.end64.i ]
  %cmp106.us.i = icmp eq i64 %bytes_in_buffer.4326.us.i, 0
  br i1 %cmp106.us.i, label %if.then108.us.i, label %if.end116.us.i

if.then108.us.i:                                  ; preds = %for.body.us.i
  %245 = load ptr, ptr %fill_input_buffer28.i312, align 8, !tbaa !23
  %call110.us.i = tail call i32 %245(ptr noundef nonnull %cinfo) #6
  %tobool111.not.us.i = icmp eq i32 %call110.us.i, 0
  br i1 %tobool111.not.us.i, label %return, label %if.end113.us.i

if.end113.us.i:                                   ; preds = %if.then108.us.i
  %246 = load ptr, ptr %221, align 8, !tbaa !20
  %247 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %if.end116.us.i

if.end116.us.i:                                   ; preds = %if.end113.us.i, %for.body.us.i
  %next_input_byte.7.us.i = phi ptr [ %246, %if.end113.us.i ], [ %next_input_byte.4325.us.i, %for.body.us.i ]
  %bytes_in_buffer.7.us.i = phi i64 [ %247, %if.end113.us.i ], [ %bytes_in_buffer.4326.us.i, %for.body.us.i ]
  %248 = load i8, ptr %next_input_byte.7.us.i, align 1, !tbaa !17
  %conv119.us.i = zext i8 %248 to i16
  %arrayidx125.us.i = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %indvars.iv338.i
  %249 = load i32, ptr %arrayidx125.us.i, align 4, !tbaa !55
  %idxprom126.us.i = sext i32 %249 to i64
  %arrayidx127.us.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 %idxprom126.us.i
  store i16 %conv119.us.i, ptr %arrayidx127.us.i, align 2, !tbaa !65
  %indvars.iv.next339.i = add nuw nsw i64 %indvars.iv338.i, 1
  %next_input_byte.4.us.i = getelementptr inbounds i8, ptr %next_input_byte.7.us.i, i64 1
  %bytes_in_buffer.4.us.i = add i64 %bytes_in_buffer.7.us.i, -1
  %exitcond341.not.i = icmp eq i64 %indvars.iv.next339.i, 64
  br i1 %exitcond341.not.i, label %for.end.i338, label %for.body.us.i, !llvm.loop !66

for.body.i:                                       ; preds = %if.end64.i, %if.end98.i
  %indvars.iv.i329 = phi i64 [ %indvars.iv.next.i334, %if.end98.i ], [ 0, %if.end64.i ]
  %bytes_in_buffer.4326.i = phi i64 [ %bytes_in_buffer.4.i336, %if.end98.i ], [ %bytes_in_buffer.4323.i, %if.end64.i ]
  %next_input_byte.4325.i = phi ptr [ %next_input_byte.4.i335, %if.end98.i ], [ %next_input_byte.4322.i, %if.end64.i ]
  %cmp73.i = icmp eq i64 %bytes_in_buffer.4326.i, 0
  br i1 %cmp73.i, label %if.then75.i, label %if.end83.i

if.then75.i:                                      ; preds = %for.body.i
  %250 = load ptr, ptr %fill_input_buffer28.i312, align 8, !tbaa !23
  %call77.i = tail call i32 %250(ptr noundef nonnull %cinfo) #6
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %return, label %if.end80.i

if.end80.i:                                       ; preds = %if.then75.i
  %251 = load ptr, ptr %221, align 8, !tbaa !20
  %252 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end80.i, %for.body.i
  %next_input_byte.5.i330 = phi ptr [ %251, %if.end80.i ], [ %next_input_byte.4325.i, %for.body.i ]
  %bytes_in_buffer.5.i331 = phi i64 [ %252, %if.end80.i ], [ %bytes_in_buffer.4326.i, %for.body.i ]
  %dec84.i = add i64 %bytes_in_buffer.5.i331, -1
  %incdec.ptr85.i = getelementptr inbounds i8, ptr %next_input_byte.5.i330, i64 1
  %253 = load i8, ptr %next_input_byte.5.i330, align 1, !tbaa !17
  %conv86.i = zext i8 %253 to i16
  %shl87.i = shl nuw i16 %conv86.i, 8
  %cmp88.i = icmp eq i64 %dec84.i, 0
  br i1 %cmp88.i, label %if.then90.i, label %if.end98.i

if.then90.i:                                      ; preds = %if.end83.i
  %254 = load ptr, ptr %fill_input_buffer28.i312, align 8, !tbaa !23
  %call92.i = tail call i32 %254(ptr noundef nonnull %cinfo) #6
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %return, label %if.end95.i

if.end95.i:                                       ; preds = %if.then90.i
  %255 = load ptr, ptr %221, align 8, !tbaa !20
  %256 = load i64, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end95.i, %if.end83.i
  %next_input_byte.6.i332 = phi ptr [ %255, %if.end95.i ], [ %incdec.ptr85.i, %if.end83.i ]
  %bytes_in_buffer.6.i333 = phi i64 [ %256, %if.end95.i ], [ %dec84.i, %if.end83.i ]
  %257 = load i8, ptr %next_input_byte.6.i332, align 1, !tbaa !17
  %conv101.i = zext i8 %257 to i16
  %add102.i = or i16 %shl87.i, %conv101.i
  %arrayidx125.i = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %indvars.iv.i329
  %258 = load i32, ptr %arrayidx125.i, align 4, !tbaa !55
  %idxprom126.i = sext i32 %258 to i64
  %arrayidx127.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 %idxprom126.i
  store i16 %add102.i, ptr %arrayidx127.i, align 2, !tbaa !65
  %indvars.iv.next.i334 = add nuw nsw i64 %indvars.iv.i329, 1
  %next_input_byte.4.i335 = getelementptr inbounds i8, ptr %next_input_byte.6.i332, i64 1
  %bytes_in_buffer.4.i336 = add i64 %bytes_in_buffer.6.i333, -1
  %exitcond.not.i337 = icmp eq i64 %indvars.iv.next.i334, 64
  br i1 %exitcond.not.i337, label %for.end.i338, label %for.body.i, !llvm.loop !66

for.end.i338:                                     ; preds = %if.end98.i, %if.end116.us.i
  %.us-phi.i = phi ptr [ %next_input_byte.4.us.i, %if.end116.us.i ], [ %next_input_byte.4.i335, %if.end98.i ]
  %.us-phi327.i = phi i64 [ %bytes_in_buffer.4.us.i, %if.end116.us.i ], [ %bytes_in_buffer.4.i336, %if.end98.i ]
  %259 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %trace_level.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 7
  %260 = load i32, ptr %trace_level.i, align 4, !tbaa !67
  %cmp129.i = icmp sgt i32 %260, 1
  br i1 %cmp129.i, label %do.body136.preheader.i, label %if.end195.i

do.body136.preheader.i:                           ; preds = %for.end.i338
  %msg_parm138.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 6
  %261 = load <4 x i16>, ptr %244, align 2, !tbaa !65
  %262 = zext <4 x i16> %261 to <4 x i32>
  store <4 x i32> %262, ptr %msg_parm138.i, align 4, !tbaa !55
  %arrayidx165.i339 = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 4
  %arrayidx167.i = getelementptr inbounds i32, ptr %msg_parm138.i, i64 4
  %263 = load <4 x i16>, ptr %arrayidx165.i339, align 2, !tbaa !65
  %264 = zext <4 x i16> %263 to <4 x i32>
  store <4 x i32> %264, ptr %arrayidx167.i, align 4, !tbaa !55
  %msg_code187.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 5
  store i32 92, ptr %msg_code187.i, align 8, !tbaa !14
  %emit_message189.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 1
  %265 = load ptr, ptr %emit_message189.i, align 8, !tbaa !18
  tail call void %265(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %266 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.1.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 6
  %arrayidx141.1.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 8
  %267 = load <4 x i16>, ptr %arrayidx141.1.i, align 2, !tbaa !65
  %268 = zext <4 x i16> %267 to <4 x i32>
  store <4 x i32> %268, ptr %msg_parm138.1.i, align 4, !tbaa !55
  %arrayidx165.1.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 12
  %arrayidx167.1.i = getelementptr inbounds i32, ptr %msg_parm138.1.i, i64 4
  %269 = load <4 x i16>, ptr %arrayidx165.1.i, align 2, !tbaa !65
  %270 = zext <4 x i16> %269 to <4 x i32>
  store <4 x i32> %270, ptr %arrayidx167.1.i, align 4, !tbaa !55
  %msg_code187.1.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 5
  store i32 92, ptr %msg_code187.1.i, align 8, !tbaa !14
  %emit_message189.1.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 1
  %271 = load ptr, ptr %emit_message189.1.i, align 8, !tbaa !18
  tail call void %271(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %272 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.2.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %272, i64 0, i32 6
  %arrayidx141.2.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 16
  %273 = load <4 x i16>, ptr %arrayidx141.2.i, align 2, !tbaa !65
  %274 = zext <4 x i16> %273 to <4 x i32>
  store <4 x i32> %274, ptr %msg_parm138.2.i, align 4, !tbaa !55
  %arrayidx165.2.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 20
  %arrayidx167.2.i = getelementptr inbounds i32, ptr %msg_parm138.2.i, i64 4
  %275 = load <4 x i16>, ptr %arrayidx165.2.i, align 2, !tbaa !65
  %276 = zext <4 x i16> %275 to <4 x i32>
  store <4 x i32> %276, ptr %arrayidx167.2.i, align 4, !tbaa !55
  %msg_code187.2.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %272, i64 0, i32 5
  store i32 92, ptr %msg_code187.2.i, align 8, !tbaa !14
  %emit_message189.2.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %272, i64 0, i32 1
  %277 = load ptr, ptr %emit_message189.2.i, align 8, !tbaa !18
  tail call void %277(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %278 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.3.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %278, i64 0, i32 6
  %arrayidx141.3.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 24
  %279 = load <4 x i16>, ptr %arrayidx141.3.i, align 2, !tbaa !65
  %280 = zext <4 x i16> %279 to <4 x i32>
  store <4 x i32> %280, ptr %msg_parm138.3.i, align 4, !tbaa !55
  %arrayidx165.3.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 28
  %arrayidx167.3.i = getelementptr inbounds i32, ptr %msg_parm138.3.i, i64 4
  %281 = load <4 x i16>, ptr %arrayidx165.3.i, align 2, !tbaa !65
  %282 = zext <4 x i16> %281 to <4 x i32>
  store <4 x i32> %282, ptr %arrayidx167.3.i, align 4, !tbaa !55
  %msg_code187.3.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %278, i64 0, i32 5
  store i32 92, ptr %msg_code187.3.i, align 8, !tbaa !14
  %emit_message189.3.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %278, i64 0, i32 1
  %283 = load ptr, ptr %emit_message189.3.i, align 8, !tbaa !18
  tail call void %283(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %284 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.4.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %284, i64 0, i32 6
  %arrayidx141.4.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 32
  %285 = load <4 x i16>, ptr %arrayidx141.4.i, align 2, !tbaa !65
  %286 = zext <4 x i16> %285 to <4 x i32>
  store <4 x i32> %286, ptr %msg_parm138.4.i, align 4, !tbaa !55
  %arrayidx165.4.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 36
  %arrayidx167.4.i = getelementptr inbounds i32, ptr %msg_parm138.4.i, i64 4
  %287 = load <4 x i16>, ptr %arrayidx165.4.i, align 2, !tbaa !65
  %288 = zext <4 x i16> %287 to <4 x i32>
  store <4 x i32> %288, ptr %arrayidx167.4.i, align 4, !tbaa !55
  %msg_code187.4.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %284, i64 0, i32 5
  store i32 92, ptr %msg_code187.4.i, align 8, !tbaa !14
  %emit_message189.4.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %284, i64 0, i32 1
  %289 = load ptr, ptr %emit_message189.4.i, align 8, !tbaa !18
  tail call void %289(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %290 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.5.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %290, i64 0, i32 6
  %arrayidx141.5.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 40
  %291 = load <4 x i16>, ptr %arrayidx141.5.i, align 2, !tbaa !65
  %292 = zext <4 x i16> %291 to <4 x i32>
  store <4 x i32> %292, ptr %msg_parm138.5.i, align 4, !tbaa !55
  %arrayidx165.5.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 44
  %arrayidx167.5.i = getelementptr inbounds i32, ptr %msg_parm138.5.i, i64 4
  %293 = load <4 x i16>, ptr %arrayidx165.5.i, align 2, !tbaa !65
  %294 = zext <4 x i16> %293 to <4 x i32>
  store <4 x i32> %294, ptr %arrayidx167.5.i, align 4, !tbaa !55
  %msg_code187.5.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %290, i64 0, i32 5
  store i32 92, ptr %msg_code187.5.i, align 8, !tbaa !14
  %emit_message189.5.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %290, i64 0, i32 1
  %295 = load ptr, ptr %emit_message189.5.i, align 8, !tbaa !18
  tail call void %295(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %296 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.6.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %296, i64 0, i32 6
  %arrayidx141.6.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 48
  %297 = load <4 x i16>, ptr %arrayidx141.6.i, align 2, !tbaa !65
  %298 = zext <4 x i16> %297 to <4 x i32>
  store <4 x i32> %298, ptr %msg_parm138.6.i, align 4, !tbaa !55
  %arrayidx165.6.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 52
  %arrayidx167.6.i = getelementptr inbounds i32, ptr %msg_parm138.6.i, i64 4
  %299 = load <4 x i16>, ptr %arrayidx165.6.i, align 2, !tbaa !65
  %300 = zext <4 x i16> %299 to <4 x i32>
  store <4 x i32> %300, ptr %arrayidx167.6.i, align 4, !tbaa !55
  %msg_code187.6.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %296, i64 0, i32 5
  store i32 92, ptr %msg_code187.6.i, align 8, !tbaa !14
  %emit_message189.6.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %296, i64 0, i32 1
  %301 = load ptr, ptr %emit_message189.6.i, align 8, !tbaa !18
  tail call void %301(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  %302 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm138.7.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %302, i64 0, i32 6
  %arrayidx141.7.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 56
  %303 = load <4 x i16>, ptr %arrayidx141.7.i, align 2, !tbaa !65
  %304 = zext <4 x i16> %303 to <4 x i32>
  store <4 x i32> %304, ptr %msg_parm138.7.i, align 4, !tbaa !55
  %arrayidx165.7.i = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 60
  %arrayidx167.7.i = getelementptr inbounds i32, ptr %msg_parm138.7.i, i64 4
  %305 = load <4 x i16>, ptr %arrayidx165.7.i, align 2, !tbaa !65
  %306 = zext <4 x i16> %305 to <4 x i32>
  store <4 x i32> %306, ptr %arrayidx167.7.i, align 4, !tbaa !55
  %msg_code187.7.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %302, i64 0, i32 5
  store i32 92, ptr %msg_code187.7.i, align 8, !tbaa !14
  %emit_message189.7.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %302, i64 0, i32 1
  %307 = load ptr, ptr %emit_message189.7.i, align 8, !tbaa !18
  tail call void %307(ptr noundef nonnull %cinfo, i32 noundef 2) #6
  br label %if.end195.i

if.end195.i:                                      ; preds = %do.body136.preheader.i, %for.end.i338
  %spec.select.v.i = select i1 %tobool70.not.i328, i64 -65, i64 -129
  %spec.select.i = add nsw i64 %spec.select.v.i, %length.0330.i
  %cmp22.i342 = icmp sgt i64 %spec.select.i, 0
  br i1 %cmp22.i342, label %do.body24.i315, label %get_dqt.exit, !llvm.loop !68

get_dqt.exit:                                     ; preds = %if.end195.i, %if.end18.i310
  %next_input_byte.2.lcssa.i343 = phi ptr [ %incdec.ptr20.i307, %if.end18.i310 ], [ %.us-phi.i, %if.end195.i ]
  %bytes_in_buffer.2.lcssa.i344 = phi i64 [ %dec19.i306, %if.end18.i310 ], [ %.us-phi327.i, %if.end195.i ]
  store ptr %next_input_byte.2.lcssa.i343, ptr %221, align 8, !tbaa !20
  store i64 %bytes_in_buffer.2.lcssa.i344, ptr %bytes_in_buffer2.i284, align 8, !tbaa !22
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end9
  %308 = load ptr, ptr %src.i, align 8, !tbaa !19
  %bytes_in_buffer2.i348 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %308, i64 0, i32 1
  %309 = load i64, ptr %bytes_in_buffer2.i348, align 8, !tbaa !22
  %cmp.i349 = icmp eq i64 %309, 0
  br i1 %cmp.i349, label %if.then.i353, label %if.end6.i362

if.then.i353:                                     ; preds = %sw.bb65
  %fill_input_buffer.i350 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %fill_input_buffer.i350, align 8, !tbaa !23
  %call.i351 = tail call i32 %310(ptr noundef nonnull %cinfo) #6
  %tobool.not.i352 = icmp eq i32 %call.i351, 0
  br i1 %tobool.not.i352, label %return, label %if.end.i354

if.end.i354:                                      ; preds = %if.then.i353
  %311 = load i64, ptr %bytes_in_buffer2.i348, align 8, !tbaa !22
  br label %if.end6.i362

if.end6.i362:                                     ; preds = %if.end.i354, %sw.bb65
  %bytes_in_buffer.0.i355 = phi i64 [ %311, %if.end.i354 ], [ %309, %sw.bb65 ]
  %next_input_byte.0.i356 = load ptr, ptr %308, align 8, !tbaa !20
  %dec.i357 = add i64 %bytes_in_buffer.0.i355, -1
  %incdec.ptr.i358 = getelementptr inbounds i8, ptr %next_input_byte.0.i356, i64 1
  %312 = load i8, ptr %next_input_byte.0.i356, align 1, !tbaa !17
  %conv.i359 = zext i8 %312 to i64
  %shl.i360 = shl nuw nsw i64 %conv.i359, 8
  %cmp8.i361 = icmp eq i64 %dec.i357, 0
  br i1 %cmp8.i361, label %if.then10.i366, label %if.end18.i374

if.then10.i366:                                   ; preds = %if.end6.i362
  %fill_input_buffer11.i363 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %308, i64 0, i32 3
  %313 = load ptr, ptr %fill_input_buffer11.i363, align 8, !tbaa !23
  %call12.i364 = tail call i32 %313(ptr noundef nonnull %cinfo) #6
  %tobool13.not.i365 = icmp eq i32 %call12.i364, 0
  br i1 %tobool13.not.i365, label %return, label %if.end15.i367

if.end15.i367:                                    ; preds = %if.then10.i366
  %314 = load ptr, ptr %308, align 8, !tbaa !20
  %315 = load i64, ptr %bytes_in_buffer2.i348, align 8, !tbaa !22
  br label %if.end18.i374

if.end18.i374:                                    ; preds = %if.end15.i367, %if.end6.i362
  %next_input_byte.1.i368 = phi ptr [ %314, %if.end15.i367 ], [ %incdec.ptr.i358, %if.end6.i362 ]
  %bytes_in_buffer.1.i369 = phi i64 [ %315, %if.end15.i367 ], [ %dec.i357, %if.end6.i362 ]
  %dec19.i370 = add i64 %bytes_in_buffer.1.i369, -1
  %incdec.ptr20.i371 = getelementptr inbounds i8, ptr %next_input_byte.1.i368, i64 1
  %316 = load i8, ptr %next_input_byte.1.i368, align 1, !tbaa !17
  %conv21.i372 = zext i8 %316 to i64
  %add.i373 = or i64 %shl.i360, %conv21.i372
  %cmp22.not.i = icmp eq i64 %add.i373, 4
  br i1 %cmp22.not.i, label %do.body27.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end18.i374
  %317 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i375 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %317, i64 0, i32 5
  store i32 9, ptr %msg_code.i375, align 8, !tbaa !14
  %318 = load ptr, ptr %317, align 8, !tbaa !41
  tail call void %318(ptr noundef nonnull %cinfo) #6
  br label %do.body27.i

do.body27.i:                                      ; preds = %if.then24.i, %if.end18.i374
  %cmp28.i = icmp eq i64 %dec19.i370, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end38.i

if.then30.i:                                      ; preds = %do.body27.i
  %fill_input_buffer31.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %308, i64 0, i32 3
  %319 = load ptr, ptr %fill_input_buffer31.i, align 8, !tbaa !23
  %call32.i = tail call i32 %319(ptr noundef nonnull %cinfo) #6
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %return, label %if.end35.i376

if.end35.i376:                                    ; preds = %if.then30.i
  %320 = load ptr, ptr %308, align 8, !tbaa !20
  %321 = load i64, ptr %bytes_in_buffer2.i348, align 8, !tbaa !22
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end35.i376, %do.body27.i
  %next_input_byte.2.i377 = phi ptr [ %320, %if.end35.i376 ], [ %incdec.ptr20.i371, %do.body27.i ]
  %bytes_in_buffer.2.i378 = phi i64 [ %321, %if.end35.i376 ], [ %dec19.i370, %do.body27.i ]
  %dec39.i = add i64 %bytes_in_buffer.2.i378, -1
  %incdec.ptr40.i = getelementptr inbounds i8, ptr %next_input_byte.2.i377, i64 1
  %322 = load i8, ptr %next_input_byte.2.i377, align 1, !tbaa !17
  %conv41.i = zext i8 %322 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 8
  %cmp43.i = icmp eq i64 %dec39.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %get_dri.exit

if.then45.i:                                      ; preds = %if.end38.i
  %fill_input_buffer46.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %308, i64 0, i32 3
  %323 = load ptr, ptr %fill_input_buffer46.i, align 8, !tbaa !23
  %call47.i = tail call i32 %323(ptr noundef nonnull %cinfo) #6
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %return, label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i
  %324 = load ptr, ptr %308, align 8, !tbaa !20
  %325 = load i64, ptr %bytes_in_buffer2.i348, align 8, !tbaa !22
  br label %get_dri.exit

get_dri.exit:                                     ; preds = %if.end38.i, %if.end50.i
  %next_input_byte.3.i379 = phi ptr [ %324, %if.end50.i ], [ %incdec.ptr40.i, %if.end38.i ]
  %bytes_in_buffer.3.i380 = phi i64 [ %325, %if.end50.i ], [ %dec39.i, %if.end38.i ]
  %dec54.i = add i64 %bytes_in_buffer.3.i380, -1
  %incdec.ptr55.i = getelementptr inbounds i8, ptr %next_input_byte.3.i379, i64 1
  %326 = load i8, ptr %next_input_byte.3.i379, align 1, !tbaa !17
  %conv56.i = zext i8 %326 to i32
  %add57.i = or i32 %shl42.i, %conv56.i
  %327 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code61.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %327, i64 0, i32 5
  store i32 81, ptr %msg_code61.i, align 8, !tbaa !14
  %msg_parm.i381 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %327, i64 0, i32 6
  store i32 %add57.i, ptr %msg_parm.i381, align 4, !tbaa !17
  %328 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message.i382 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %328, i64 0, i32 1
  %329 = load ptr, ptr %emit_message.i382, align 8, !tbaa !18
  tail call void %329(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  store i32 %add57.i, ptr %restart_interval.i383, align 8, !tbaa !69
  store ptr %incdec.ptr55.i, ptr %308, align 8, !tbaa !20
  store i64 %dec54.i, ptr %bytes_in_buffer2.i348, align 8, !tbaa !22
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %330 = load ptr, ptr %marker, align 8, !tbaa !24
  %sub = add nsw i32 %16, -224
  %idxprom433 = zext i32 %sub to i64
  %arrayidx73 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %330, i64 0, i32 4, i64 %idxprom433
  %331 = load ptr, ptr %arrayidx73, align 8, !tbaa !36
  %call74 = tail call i32 %331(ptr noundef %cinfo) #6
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %return, label %sw.epilog

sw.bb78:                                          ; preds = %if.end9
  %332 = load ptr, ptr %marker, align 8, !tbaa !24
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %332, i64 0, i32 3
  %333 = load ptr, ptr %process_COM, align 8, !tbaa !35
  %call80 = tail call i32 %333(ptr noundef %cinfo) #6
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %return, label %sw.epilog

sw.bb84:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %334 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %334, i64 0, i32 5
  store i32 91, ptr %msg_code86, align 8, !tbaa !14
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %334, i64 0, i32 6
  store i32 %16, ptr %msg_parm89, align 4, !tbaa !17
  %335 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %335, i64 0, i32 1
  %336 = load ptr, ptr %emit_message92, align 8, !tbaa !18
  tail call void %336(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end9
  %337 = load ptr, ptr %src.i, align 8, !tbaa !19
  %bytes_in_buffer2.i386 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %337, i64 0, i32 1
  %338 = load i64, ptr %bytes_in_buffer2.i386, align 8, !tbaa !22
  %cmp.i387 = icmp eq i64 %338, 0
  br i1 %cmp.i387, label %if.then.i391, label %if.end6.i400

if.then.i391:                                     ; preds = %sw.bb93
  %fill_input_buffer.i388 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %337, i64 0, i32 3
  %339 = load ptr, ptr %fill_input_buffer.i388, align 8, !tbaa !23
  %call.i389 = tail call i32 %339(ptr noundef nonnull %cinfo) #6
  %tobool.not.i390 = icmp eq i32 %call.i389, 0
  br i1 %tobool.not.i390, label %return, label %if.end.i392

if.end.i392:                                      ; preds = %if.then.i391
  %340 = load i64, ptr %bytes_in_buffer2.i386, align 8, !tbaa !22
  br label %if.end6.i400

if.end6.i400:                                     ; preds = %if.end.i392, %sw.bb93
  %bytes_in_buffer.0.i393 = phi i64 [ %340, %if.end.i392 ], [ %338, %sw.bb93 ]
  %next_input_byte.0.i394 = load ptr, ptr %337, align 8, !tbaa !20
  %dec.i395 = add i64 %bytes_in_buffer.0.i393, -1
  %incdec.ptr.i396 = getelementptr inbounds i8, ptr %next_input_byte.0.i394, i64 1
  %341 = load i8, ptr %next_input_byte.0.i394, align 1, !tbaa !17
  %conv.i397 = zext i8 %341 to i64
  %shl.i398 = shl nuw nsw i64 %conv.i397, 8
  %cmp8.i399 = icmp eq i64 %dec.i395, 0
  br i1 %cmp8.i399, label %if.then10.i404, label %skip_variable.exit

if.then10.i404:                                   ; preds = %if.end6.i400
  %fill_input_buffer11.i401 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %337, i64 0, i32 3
  %342 = load ptr, ptr %fill_input_buffer11.i401, align 8, !tbaa !23
  %call12.i402 = tail call i32 %342(ptr noundef nonnull %cinfo) #6
  %tobool13.not.i403 = icmp eq i32 %call12.i402, 0
  br i1 %tobool13.not.i403, label %return, label %if.end15.i405

if.end15.i405:                                    ; preds = %if.then10.i404
  %343 = load ptr, ptr %337, align 8, !tbaa !20
  %344 = load i64, ptr %bytes_in_buffer2.i386, align 8, !tbaa !22
  br label %skip_variable.exit

skip_variable.exit:                               ; preds = %if.end6.i400, %if.end15.i405
  %next_input_byte.1.i406 = phi ptr [ %343, %if.end15.i405 ], [ %incdec.ptr.i396, %if.end6.i400 ]
  %bytes_in_buffer.1.i407 = phi i64 [ %344, %if.end15.i405 ], [ %dec.i395, %if.end6.i400 ]
  %dec19.i408 = add i64 %bytes_in_buffer.1.i407, -1
  %incdec.ptr20.i409 = getelementptr inbounds i8, ptr %next_input_byte.1.i406, i64 1
  %345 = load i8, ptr %next_input_byte.1.i406, align 1, !tbaa !17
  %conv21.i410 = zext i8 %345 to i64
  %add.i411 = or i64 %shl.i398, %conv21.i410
  %346 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code.i412 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %346, i64 0, i32 5
  store i32 90, ptr %msg_code.i412, align 8, !tbaa !14
  %347 = load i32, ptr %unread_marker, align 4, !tbaa !5
  %msg_parm.i414 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %346, i64 0, i32 6
  store i32 %347, ptr %msg_parm.i414, align 4, !tbaa !17
  %conv23.i = trunc i64 %add.i411 to i32
  %348 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm25.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %348, i64 0, i32 6
  %arrayidx26.i = getelementptr inbounds [8 x i32], ptr %msg_parm25.i, i64 0, i64 1
  store i32 %conv23.i, ptr %arrayidx26.i, align 4, !tbaa !17
  %349 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message.i415 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %349, i64 0, i32 1
  %350 = load ptr, ptr %emit_message.i415, align 8, !tbaa !18
  tail call void %350(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  store ptr %incdec.ptr20.i409, ptr %337, align 8, !tbaa !20
  store i64 %dec19.i408, ptr %bytes_in_buffer2.i386, align 8, !tbaa !22
  %351 = load ptr, ptr %src.i, align 8, !tbaa !19
  %skip_input_data.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %351, i64 0, i32 4
  %352 = load ptr, ptr %skip_input_data.i, align 8, !tbaa !70
  %sub.i416 = add nsw i64 %add.i411, -2
  tail call void %352(ptr noundef nonnull %cinfo, i64 noundef %sub.i416) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  %353 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %353, i64 0, i32 5
  store i32 67, ptr %msg_code99, align 8, !tbaa !14
  %msg_parm102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %353, i64 0, i32 6
  store i32 %16, ptr %msg_parm102, align 4, !tbaa !17
  %354 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %355 = load ptr, ptr %354, align 8, !tbaa !41
  tail call void %355(ptr noundef nonnull %cinfo) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %skip_variable.exit, %get_dri.exit, %get_dqt.exit, %get_dht.exit, %get_dac.exit, %get_soi.exit, %sw.bb78, %sw.bb70, %sw.bb30, %sw.bb25, %sw.bb20, %sw.bb15, %sw.default, %sw.bb84, %sw.bb35
  store i32 0, ptr %unread_marker, align 4, !tbaa !5
  br label %for.cond

return:                                           ; preds = %if.then10.i404, %if.then.i391, %if.then45.i, %if.then30.i, %if.then10.i366, %if.then.i353, %if.then10.i302, %if.then.i289, %if.then10.i192, %if.then.i179, %if.then10.i, %if.then.i, %sw.bb78, %sw.bb70, %sw.bb30, %sw.bb25, %sw.bb20, %sw.bb15, %if.else, %if.then27.i318, %if.then44.i, %if.then27.i, %if.then75.i, %if.then90.i, %if.then108.us.i, %if.then84.i, %if.then67.i, %if.then170.i, %if.then153.i, %if.then136.i, %if.then29.i, %if.then14.i, %if.then4.i, %get_dht.exit.thread, %sw.bb45, %if.end43
  %retval.0 = phi i32 [ 2, %sw.bb45 ], [ 1, %if.end43 ], [ 0, %get_dht.exit.thread ], [ 0, %if.then4.i ], [ 0, %if.then14.i ], [ 0, %if.then29.i ], [ 0, %if.then136.i ], [ 0, %if.then153.i ], [ 0, %if.then170.i ], [ 0, %if.then67.i ], [ 0, %if.then84.i ], [ 0, %if.then108.us.i ], [ 0, %if.then90.i ], [ 0, %if.then75.i ], [ 0, %if.then27.i ], [ 0, %if.then44.i ], [ 0, %if.then27.i318 ], [ 0, %if.else ], [ 0, %sw.bb15 ], [ 0, %sw.bb20 ], [ 0, %sw.bb25 ], [ 0, %sw.bb30 ], [ 0, %sw.bb70 ], [ 0, %sw.bb78 ], [ 0, %if.then.i ], [ 0, %if.then10.i ], [ 0, %if.then.i179 ], [ 0, %if.then10.i192 ], [ 0, %if.then.i289 ], [ 0, %if.then10.i302 ], [ 0, %if.then.i353 ], [ 0, %if.then10.i366 ], [ 0, %if.then30.i ], [ 0, %if.then45.i ], [ 0, %if.then.i391 ], [ 0, %if.then10.i404 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @read_restart_marker(ptr noundef %cinfo) #0 {
entry:
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %0 = load i32, ptr %unread_marker, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @next_marker(ptr noundef nonnull %cinfo)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  %.pre = load i32, ptr %unread_marker, align 4, !tbaa !5
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry
  %1 = phi i32 [ %.pre, %if.then.if.end2_crit_edge ], [ %0, %entry ]
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  %2 = load ptr, ptr %marker, align 8, !tbaa !24
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %2, i64 0, i32 7
  %3 = load i32, ptr %next_restart_num, align 8, !tbaa !61
  %add = add nsw i32 %3, 208
  %cmp4 = icmp eq i32 %1, %add
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %4 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 97, ptr %msg_code, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4, !tbaa !17
  %5 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %6(ptr noundef nonnull %cinfo, i32 noundef 3) #6
  store i32 0, ptr %unread_marker, align 4, !tbaa !5
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %7 = load ptr, ptr %src, align 8, !tbaa !19
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %resync_to_restart, align 8, !tbaa !71
  %call13 = tail call i32 %8(ptr noundef nonnull %cinfo, i32 noundef %3) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %if.end17

if.end17:                                         ; preds = %if.else, %if.then5
  %9 = load ptr, ptr %marker, align 8, !tbaa !24
  %next_restart_num19 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %9, i64 0, i32 7
  %10 = load i32, ptr %next_restart_num19, align 8, !tbaa !61
  %add20 = add nsw i32 %10, 1
  %and = and i32 %add20, 7
  store i32 %and, ptr %next_restart_num19, align 8, !tbaa !61
  br label %return

return:                                           ; preds = %if.else, %if.then, %if.end17
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 0, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @skip_variable(ptr noundef %cinfo) #0 {
entry:
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8, !tbaa !19
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %2 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call = tail call i32 %2(ptr noundef nonnull %cinfo) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %bytes_in_buffer.0 = phi i64 [ %3, %if.end ], [ %1, %entry ]
  %next_input_byte.0 = load ptr, ptr %0, align 8, !tbaa !20
  %dec = add i64 %bytes_in_buffer.0, -1
  %incdec.ptr = getelementptr inbounds i8, ptr %next_input_byte.0, i64 1
  %4 = load i8, ptr %next_input_byte.0, align 1, !tbaa !17
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %cmp8 = icmp eq i64 %dec, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer11, align 8, !tbaa !23
  %call12 = tail call i32 %5(ptr noundef nonnull %cinfo) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10
  %6 = load ptr, ptr %0, align 8, !tbaa !20
  %7 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %next_input_byte.1 = phi ptr [ %6, %if.end15 ], [ %incdec.ptr, %if.end6 ]
  %bytes_in_buffer.1 = phi i64 [ %7, %if.end15 ], [ %dec, %if.end6 ]
  %dec19 = add i64 %bytes_in_buffer.1, -1
  %incdec.ptr20 = getelementptr inbounds i8, ptr %next_input_byte.1, i64 1
  %8 = load i8, ptr %next_input_byte.1, align 1, !tbaa !17
  %conv21 = zext i8 %8 to i64
  %add = or i64 %shl, %conv21
  %9 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 90, ptr %msg_code, align 8, !tbaa !14
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %10 = load i32, ptr %unread_marker, align 4, !tbaa !5
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %10, ptr %msg_parm, align 4, !tbaa !17
  %conv23 = trunc i64 %add to i32
  %11 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %msg_parm25, i64 0, i64 1
  store i32 %conv23, ptr %arrayidx26, align 4, !tbaa !17
  %12 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  store ptr %incdec.ptr20, ptr %0, align 8, !tbaa !20
  store i64 %dec19, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %14 = load ptr, ptr %src, align 8, !tbaa !19
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i64 0, i32 4
  %15 = load ptr, ptr %skip_input_data, align 8, !tbaa !70
  %sub = add nsw i64 %add, -2
  tail call void %15(ptr noundef nonnull %cinfo, i64 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then, %if.end18
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 0, %if.then ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_app0(ptr noundef %cinfo) #0 {
entry:
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8, !tbaa !19
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %2 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call = tail call i32 %2(ptr noundef nonnull %cinfo) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %bytes_in_buffer.0 = phi i64 [ %3, %if.end ], [ %1, %entry ]
  %next_input_byte.0 = load ptr, ptr %0, align 8, !tbaa !20
  %dec = add i64 %bytes_in_buffer.0, -1
  %incdec.ptr = getelementptr inbounds i8, ptr %next_input_byte.0, i64 1
  %4 = load i8, ptr %next_input_byte.0, align 1, !tbaa !17
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %cmp8 = icmp eq i64 %dec, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer11, align 8, !tbaa !23
  %call12 = tail call i32 %5(ptr noundef nonnull %cinfo) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10
  %6 = load ptr, ptr %0, align 8, !tbaa !20
  %7 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %next_input_byte.1 = phi ptr [ %6, %if.end15 ], [ %incdec.ptr, %if.end6 ]
  %bytes_in_buffer.1 = phi i64 [ %7, %if.end15 ], [ %dec, %if.end6 ]
  %dec19 = add i64 %bytes_in_buffer.1, -1
  %incdec.ptr20 = getelementptr inbounds i8, ptr %next_input_byte.1, i64 1
  %8 = load i8, ptr %next_input_byte.1, align 1, !tbaa !17
  %conv21 = zext i8 %8 to i64
  %add = or i64 %shl, %conv21
  %cmp22 = icmp ugt i64 %add, 15
  br i1 %cmp22, label %for.cond.preheader, label %if.else186

for.cond.preheader:                               ; preds = %if.end18
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %cmp28 = icmp eq i64 %dec19, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %for.cond.preheader
  %9 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32 = tail call i32 %9(ptr noundef nonnull %cinfo) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.then30
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %for.cond.preheader
  %next_input_byte.3 = phi ptr [ %10, %if.end35 ], [ %incdec.ptr20, %for.cond.preheader ]
  %bytes_in_buffer.3 = phi i64 [ %11, %if.end35 ], [ %dec19, %for.cond.preheader ]
  %dec39 = add i64 %bytes_in_buffer.3, -1
  %incdec.ptr40 = getelementptr inbounds i8, ptr %next_input_byte.3, i64 1
  %12 = load i8, ptr %next_input_byte.3, align 1, !tbaa !17
  %cmp28.1 = icmp eq i64 %dec39, 0
  br i1 %cmp28.1, label %if.then30.1, label %if.end38.1

if.then30.1:                                      ; preds = %if.end38
  %13 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.1 = tail call i32 %13(ptr noundef nonnull %cinfo) #6
  %tobool33.not.1 = icmp eq i32 %call32.1, 0
  br i1 %tobool33.not.1, label %cleanup, label %if.end35.1

if.end35.1:                                       ; preds = %if.then30.1
  %14 = load ptr, ptr %0, align 8, !tbaa !20
  %15 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.1

if.end38.1:                                       ; preds = %if.end35.1, %if.end38
  %next_input_byte.3.1 = phi ptr [ %14, %if.end35.1 ], [ %incdec.ptr40, %if.end38 ]
  %bytes_in_buffer.3.1 = phi i64 [ %15, %if.end35.1 ], [ %dec39, %if.end38 ]
  %dec39.1 = add i64 %bytes_in_buffer.3.1, -1
  %incdec.ptr40.1 = getelementptr inbounds i8, ptr %next_input_byte.3.1, i64 1
  %16 = load i8, ptr %next_input_byte.3.1, align 1, !tbaa !17
  %cmp28.2 = icmp eq i64 %dec39.1, 0
  br i1 %cmp28.2, label %if.then30.2, label %if.end38.2

if.then30.2:                                      ; preds = %if.end38.1
  %17 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.2 = tail call i32 %17(ptr noundef nonnull %cinfo) #6
  %tobool33.not.2 = icmp eq i32 %call32.2, 0
  br i1 %tobool33.not.2, label %cleanup, label %if.end35.2

if.end35.2:                                       ; preds = %if.then30.2
  %18 = load ptr, ptr %0, align 8, !tbaa !20
  %19 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.2

if.end38.2:                                       ; preds = %if.end35.2, %if.end38.1
  %next_input_byte.3.2 = phi ptr [ %18, %if.end35.2 ], [ %incdec.ptr40.1, %if.end38.1 ]
  %bytes_in_buffer.3.2 = phi i64 [ %19, %if.end35.2 ], [ %dec39.1, %if.end38.1 ]
  %dec39.2 = add i64 %bytes_in_buffer.3.2, -1
  %incdec.ptr40.2 = getelementptr inbounds i8, ptr %next_input_byte.3.2, i64 1
  %20 = load i8, ptr %next_input_byte.3.2, align 1, !tbaa !17
  %cmp28.3 = icmp eq i64 %dec39.2, 0
  br i1 %cmp28.3, label %if.then30.3, label %if.end38.3

if.then30.3:                                      ; preds = %if.end38.2
  %21 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.3 = tail call i32 %21(ptr noundef nonnull %cinfo) #6
  %tobool33.not.3 = icmp eq i32 %call32.3, 0
  br i1 %tobool33.not.3, label %cleanup, label %if.end35.3

if.end35.3:                                       ; preds = %if.then30.3
  %22 = load ptr, ptr %0, align 8, !tbaa !20
  %23 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.3

if.end38.3:                                       ; preds = %if.end35.3, %if.end38.2
  %next_input_byte.3.3 = phi ptr [ %22, %if.end35.3 ], [ %incdec.ptr40.2, %if.end38.2 ]
  %bytes_in_buffer.3.3 = phi i64 [ %23, %if.end35.3 ], [ %dec39.2, %if.end38.2 ]
  %dec39.3 = add i64 %bytes_in_buffer.3.3, -1
  %incdec.ptr40.3 = getelementptr inbounds i8, ptr %next_input_byte.3.3, i64 1
  %24 = load i8, ptr %next_input_byte.3.3, align 1, !tbaa !17
  %cmp28.4 = icmp eq i64 %dec39.3, 0
  br i1 %cmp28.4, label %if.then30.4, label %if.end38.4

if.then30.4:                                      ; preds = %if.end38.3
  %25 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.4 = tail call i32 %25(ptr noundef nonnull %cinfo) #6
  %tobool33.not.4 = icmp eq i32 %call32.4, 0
  br i1 %tobool33.not.4, label %cleanup, label %if.end35.4

if.end35.4:                                       ; preds = %if.then30.4
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.4

if.end38.4:                                       ; preds = %if.end35.4, %if.end38.3
  %next_input_byte.3.4 = phi ptr [ %26, %if.end35.4 ], [ %incdec.ptr40.3, %if.end38.3 ]
  %bytes_in_buffer.3.4 = phi i64 [ %27, %if.end35.4 ], [ %dec39.3, %if.end38.3 ]
  %dec39.4 = add i64 %bytes_in_buffer.3.4, -1
  %incdec.ptr40.4 = getelementptr inbounds i8, ptr %next_input_byte.3.4, i64 1
  %28 = load i8, ptr %next_input_byte.3.4, align 1, !tbaa !17
  %cmp28.5 = icmp eq i64 %dec39.4, 0
  br i1 %cmp28.5, label %if.then30.5, label %if.end38.5

if.then30.5:                                      ; preds = %if.end38.4
  %29 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.5 = tail call i32 %29(ptr noundef nonnull %cinfo) #6
  %tobool33.not.5 = icmp eq i32 %call32.5, 0
  br i1 %tobool33.not.5, label %cleanup, label %if.end35.5

if.end35.5:                                       ; preds = %if.then30.5
  %30 = load ptr, ptr %0, align 8, !tbaa !20
  %31 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.5

if.end38.5:                                       ; preds = %if.end35.5, %if.end38.4
  %next_input_byte.3.5 = phi ptr [ %30, %if.end35.5 ], [ %incdec.ptr40.4, %if.end38.4 ]
  %bytes_in_buffer.3.5 = phi i64 [ %31, %if.end35.5 ], [ %dec39.4, %if.end38.4 ]
  %dec39.5 = add i64 %bytes_in_buffer.3.5, -1
  %incdec.ptr40.5 = getelementptr inbounds i8, ptr %next_input_byte.3.5, i64 1
  %32 = load i8, ptr %next_input_byte.3.5, align 1, !tbaa !17
  %cmp28.6 = icmp eq i64 %dec39.5, 0
  br i1 %cmp28.6, label %if.then30.6, label %if.end38.6

if.then30.6:                                      ; preds = %if.end38.5
  %33 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.6 = tail call i32 %33(ptr noundef nonnull %cinfo) #6
  %tobool33.not.6 = icmp eq i32 %call32.6, 0
  br i1 %tobool33.not.6, label %cleanup, label %if.end35.6

if.end35.6:                                       ; preds = %if.then30.6
  %34 = load ptr, ptr %0, align 8, !tbaa !20
  %35 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.6

if.end38.6:                                       ; preds = %if.end35.6, %if.end38.5
  %next_input_byte.3.6 = phi ptr [ %34, %if.end35.6 ], [ %incdec.ptr40.5, %if.end38.5 ]
  %bytes_in_buffer.3.6 = phi i64 [ %35, %if.end35.6 ], [ %dec39.5, %if.end38.5 ]
  %dec39.6 = add i64 %bytes_in_buffer.3.6, -1
  %incdec.ptr40.6 = getelementptr inbounds i8, ptr %next_input_byte.3.6, i64 1
  %36 = load i8, ptr %next_input_byte.3.6, align 1, !tbaa !17
  %cmp28.7 = icmp eq i64 %dec39.6, 0
  br i1 %cmp28.7, label %if.then30.7, label %if.end38.7

if.then30.7:                                      ; preds = %if.end38.6
  %37 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.7 = tail call i32 %37(ptr noundef nonnull %cinfo) #6
  %tobool33.not.7 = icmp eq i32 %call32.7, 0
  br i1 %tobool33.not.7, label %cleanup, label %if.end35.7

if.end35.7:                                       ; preds = %if.then30.7
  %38 = load ptr, ptr %0, align 8, !tbaa !20
  %39 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.7

if.end38.7:                                       ; preds = %if.end35.7, %if.end38.6
  %next_input_byte.3.7 = phi ptr [ %38, %if.end35.7 ], [ %incdec.ptr40.6, %if.end38.6 ]
  %bytes_in_buffer.3.7 = phi i64 [ %39, %if.end35.7 ], [ %dec39.6, %if.end38.6 ]
  %dec39.7 = add i64 %bytes_in_buffer.3.7, -1
  %incdec.ptr40.7 = getelementptr inbounds i8, ptr %next_input_byte.3.7, i64 1
  %40 = load i8, ptr %next_input_byte.3.7, align 1, !tbaa !17
  %cmp28.8 = icmp eq i64 %dec39.7, 0
  br i1 %cmp28.8, label %if.then30.8, label %if.end38.8

if.then30.8:                                      ; preds = %if.end38.7
  %41 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.8 = tail call i32 %41(ptr noundef nonnull %cinfo) #6
  %tobool33.not.8 = icmp eq i32 %call32.8, 0
  br i1 %tobool33.not.8, label %cleanup, label %if.end35.8

if.end35.8:                                       ; preds = %if.then30.8
  %42 = load ptr, ptr %0, align 8, !tbaa !20
  %43 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.8

if.end38.8:                                       ; preds = %if.end35.8, %if.end38.7
  %next_input_byte.3.8 = phi ptr [ %42, %if.end35.8 ], [ %incdec.ptr40.7, %if.end38.7 ]
  %bytes_in_buffer.3.8 = phi i64 [ %43, %if.end35.8 ], [ %dec39.7, %if.end38.7 ]
  %dec39.8 = add i64 %bytes_in_buffer.3.8, -1
  %incdec.ptr40.8 = getelementptr inbounds i8, ptr %next_input_byte.3.8, i64 1
  %44 = load i8, ptr %next_input_byte.3.8, align 1, !tbaa !17
  %cmp28.9 = icmp eq i64 %dec39.8, 0
  br i1 %cmp28.9, label %if.then30.9, label %if.end38.9

if.then30.9:                                      ; preds = %if.end38.8
  %45 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.9 = tail call i32 %45(ptr noundef nonnull %cinfo) #6
  %tobool33.not.9 = icmp eq i32 %call32.9, 0
  br i1 %tobool33.not.9, label %cleanup, label %if.end35.9

if.end35.9:                                       ; preds = %if.then30.9
  %46 = load ptr, ptr %0, align 8, !tbaa !20
  %47 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.9

if.end38.9:                                       ; preds = %if.end35.9, %if.end38.8
  %next_input_byte.3.9 = phi ptr [ %46, %if.end35.9 ], [ %incdec.ptr40.8, %if.end38.8 ]
  %bytes_in_buffer.3.9 = phi i64 [ %47, %if.end35.9 ], [ %dec39.8, %if.end38.8 ]
  %dec39.9 = add i64 %bytes_in_buffer.3.9, -1
  %incdec.ptr40.9 = getelementptr inbounds i8, ptr %next_input_byte.3.9, i64 1
  %48 = load i8, ptr %next_input_byte.3.9, align 1, !tbaa !17
  %cmp28.10 = icmp eq i64 %dec39.9, 0
  br i1 %cmp28.10, label %if.then30.10, label %if.end38.10

if.then30.10:                                     ; preds = %if.end38.9
  %49 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.10 = tail call i32 %49(ptr noundef nonnull %cinfo) #6
  %tobool33.not.10 = icmp eq i32 %call32.10, 0
  br i1 %tobool33.not.10, label %cleanup, label %if.end35.10

if.end35.10:                                      ; preds = %if.then30.10
  %50 = load ptr, ptr %0, align 8, !tbaa !20
  %51 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.10

if.end38.10:                                      ; preds = %if.end35.10, %if.end38.9
  %next_input_byte.3.10 = phi ptr [ %50, %if.end35.10 ], [ %incdec.ptr40.9, %if.end38.9 ]
  %bytes_in_buffer.3.10 = phi i64 [ %51, %if.end35.10 ], [ %dec39.9, %if.end38.9 ]
  %dec39.10 = add i64 %bytes_in_buffer.3.10, -1
  %incdec.ptr40.10 = getelementptr inbounds i8, ptr %next_input_byte.3.10, i64 1
  %52 = load i8, ptr %next_input_byte.3.10, align 1, !tbaa !17
  %cmp28.11 = icmp eq i64 %dec39.10, 0
  br i1 %cmp28.11, label %if.then30.11, label %if.end38.11

if.then30.11:                                     ; preds = %if.end38.10
  %53 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.11 = tail call i32 %53(ptr noundef nonnull %cinfo) #6
  %tobool33.not.11 = icmp eq i32 %call32.11, 0
  br i1 %tobool33.not.11, label %cleanup, label %if.end35.11

if.end35.11:                                      ; preds = %if.then30.11
  %54 = load ptr, ptr %0, align 8, !tbaa !20
  %55 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.11

if.end38.11:                                      ; preds = %if.end35.11, %if.end38.10
  %next_input_byte.3.11 = phi ptr [ %54, %if.end35.11 ], [ %incdec.ptr40.10, %if.end38.10 ]
  %bytes_in_buffer.3.11 = phi i64 [ %55, %if.end35.11 ], [ %dec39.10, %if.end38.10 ]
  %dec39.11 = add i64 %bytes_in_buffer.3.11, -1
  %incdec.ptr40.11 = getelementptr inbounds i8, ptr %next_input_byte.3.11, i64 1
  %56 = load i8, ptr %next_input_byte.3.11, align 1, !tbaa !17
  %cmp28.12 = icmp eq i64 %dec39.11, 0
  br i1 %cmp28.12, label %if.then30.12, label %if.end38.12

if.then30.12:                                     ; preds = %if.end38.11
  %57 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.12 = tail call i32 %57(ptr noundef nonnull %cinfo) #6
  %tobool33.not.12 = icmp eq i32 %call32.12, 0
  br i1 %tobool33.not.12, label %cleanup, label %if.end35.12

if.end35.12:                                      ; preds = %if.then30.12
  %58 = load ptr, ptr %0, align 8, !tbaa !20
  %59 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.12

if.end38.12:                                      ; preds = %if.end35.12, %if.end38.11
  %next_input_byte.3.12 = phi ptr [ %58, %if.end35.12 ], [ %incdec.ptr40.11, %if.end38.11 ]
  %bytes_in_buffer.3.12 = phi i64 [ %59, %if.end35.12 ], [ %dec39.11, %if.end38.11 ]
  %dec39.12 = add i64 %bytes_in_buffer.3.12, -1
  %incdec.ptr40.12 = getelementptr inbounds i8, ptr %next_input_byte.3.12, i64 1
  %60 = load i8, ptr %next_input_byte.3.12, align 1, !tbaa !17
  %cmp28.13 = icmp eq i64 %dec39.12, 0
  br i1 %cmp28.13, label %if.then30.13, label %if.end38.13

if.then30.13:                                     ; preds = %if.end38.12
  %61 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.13 = tail call i32 %61(ptr noundef nonnull %cinfo) #6
  %tobool33.not.13 = icmp eq i32 %call32.13, 0
  br i1 %tobool33.not.13, label %cleanup, label %if.end35.13

if.end35.13:                                      ; preds = %if.then30.13
  %62 = load ptr, ptr %0, align 8, !tbaa !20
  %63 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.13

if.end38.13:                                      ; preds = %if.end35.13, %if.end38.12
  %next_input_byte.3.13 = phi ptr [ %62, %if.end35.13 ], [ %incdec.ptr40.12, %if.end38.12 ]
  %bytes_in_buffer.3.13 = phi i64 [ %63, %if.end35.13 ], [ %dec39.12, %if.end38.12 ]
  %dec39.13 = add i64 %bytes_in_buffer.3.13, -1
  %incdec.ptr40.13 = getelementptr inbounds i8, ptr %next_input_byte.3.13, i64 1
  %64 = load i8, ptr %next_input_byte.3.13, align 1, !tbaa !17
  %sub43 = add nsw i64 %add, -16
  %cmp46 = icmp eq i8 %12, 74
  %cmp50 = icmp eq i8 %16, 70
  %or.cond = select i1 %cmp46, i1 %cmp50, i1 false
  %cmp55 = icmp eq i8 %20, 73
  %or.cond208 = select i1 %or.cond, i1 %cmp55, i1 false
  %cmp60 = icmp eq i8 %24, 70
  %or.cond209 = select i1 %or.cond208, i1 %cmp60, i1 false
  %cmp65 = icmp eq i8 %28, 0
  %or.cond210 = select i1 %or.cond209, i1 %cmp65, i1 false
  br i1 %or.cond210, label %if.then67, label %if.else175

if.then67:                                        ; preds = %if.end38.13
  %cmp70.not = icmp eq i8 %32, 1
  br i1 %cmp70.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.then67
  %65 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 115, ptr %msg_code, align 8, !tbaa !14
  %conv74 = zext i8 %32 to i32
  br label %if.end103.sink.split

if.else:                                          ; preds = %if.then67
  %cmp85 = icmp ugt i8 %36, 2
  br i1 %cmp85, label %if.then87, label %if.end103

if.then87:                                        ; preds = %if.else
  %66 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 88, ptr %msg_code89, align 8, !tbaa !14
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %if.then72, %if.then87
  %.sink300 = phi ptr [ %66, %if.then87 ], [ %65, %if.then72 ]
  %.sink299 = phi i32 [ 1, %if.then87 ], [ %conv74, %if.then72 ]
  %.sink = phi i32 [ 1, %if.then87 ], [ -1, %if.then72 ]
  %msg_parm93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %.sink300, i64 0, i32 6
  store i32 %.sink299, ptr %msg_parm93, align 4, !tbaa !17
  %conv96 = zext i8 %36 to i32
  %67 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 6
  %arrayidx99 = getelementptr inbounds [8 x i32], ptr %msg_parm98, i64 0, i64 1
  store i32 %conv96, ptr %arrayidx99, align 4, !tbaa !17
  %68 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 1
  %69 = load ptr, ptr %emit_message101, align 8, !tbaa !18
  tail call void %69(ptr noundef nonnull %cinfo, i32 noundef %.sink) #6
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %if.else
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 50
  store i32 1, ptr %saw_JFIF_marker, align 4, !tbaa !72
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 51
  store i8 %40, ptr %density_unit, align 8, !tbaa !73
  %conv106 = zext i8 %44 to i16
  %shl107 = shl nuw i16 %conv106, 8
  %conv109 = zext i8 %48 to i16
  %add110 = or i16 %shl107, %conv109
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 52
  store i16 %add110, ptr %X_density, align 2, !tbaa !44
  %conv113 = zext i8 %52 to i16
  %shl114 = shl nuw i16 %conv113, 8
  %conv116 = zext i8 %56 to i16
  %add117 = or i16 %shl114, %conv116
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 53
  store i16 %add117, ptr %Y_density, align 4, !tbaa !45
  %70 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm121 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 6
  %conv123 = zext i16 %add110 to i32
  store i32 %conv123, ptr %msg_parm121, align 4, !tbaa !55
  %conv126 = zext i16 %add117 to i32
  %arrayidx127 = getelementptr inbounds i32, ptr %msg_parm121, i64 1
  store i32 %conv126, ptr %arrayidx127, align 4, !tbaa !55
  %conv129 = zext i8 %40 to i32
  %arrayidx130 = getelementptr inbounds i32, ptr %msg_parm121, i64 2
  store i32 %conv129, ptr %arrayidx130, align 4, !tbaa !55
  %msg_code132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 5
  store i32 86, ptr %msg_code132, align 8, !tbaa !14
  %emit_message134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 1
  %71 = load ptr, ptr %emit_message134, align 8, !tbaa !18
  tail call void %71(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %or288 = or i8 %64, %60
  %tobool141.not = icmp eq i8 %or288, 0
  br i1 %tobool141.not, label %if.end157, label %if.then142

if.then142:                                       ; preds = %if.end103
  %72 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code144 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i64 0, i32 5
  store i32 89, ptr %msg_code144, align 8, !tbaa !14
  %conv146 = zext i8 %60 to i32
  %msg_parm148 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i64 0, i32 6
  store i32 %conv146, ptr %msg_parm148, align 4, !tbaa !17
  %conv151 = zext i8 %64 to i32
  %73 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm153 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 6
  %arrayidx154 = getelementptr inbounds [8 x i32], ptr %msg_parm153, i64 0, i64 1
  store i32 %conv151, ptr %arrayidx154, align 4, !tbaa !17
  %74 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message156 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 1
  %75 = load ptr, ptr %emit_message156, align 8, !tbaa !18
  tail call void %75(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  br label %if.end157

if.end157:                                        ; preds = %if.then142, %if.end103
  %conv159 = zext i8 %60 to i64
  %conv161 = zext i8 %64 to i64
  %mul = mul nuw nsw i64 %conv159, 3
  %mul162 = mul nuw nsw i64 %mul, %conv161
  %cmp163.not = icmp eq i64 %sub43, %mul162
  br i1 %cmp163.not, label %if.end195, label %if.then165

if.then165:                                       ; preds = %if.end157
  %76 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code167 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 5
  store i32 87, ptr %msg_code167, align 8, !tbaa !14
  %conv168 = trunc i64 %sub43 to i32
  br label %if.end195.sink.split

if.else175:                                       ; preds = %if.end38.13
  %77 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code177 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 5
  store i32 76, ptr %msg_code177, align 8, !tbaa !14
  %conv178 = trunc i64 %sub43 to i32
  %add179 = add nsw i32 %conv178, 14
  br label %if.end195.sink.split

if.else186:                                       ; preds = %if.end18
  %sub = add nsw i64 %add, -2
  %78 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code188 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 5
  store i32 76, ptr %msg_code188, align 8, !tbaa !14
  %conv189 = trunc i64 %sub to i32
  br label %if.end195.sink.split

if.end195.sink.split:                             ; preds = %if.else186, %if.then165, %if.else175
  %.sink303 = phi ptr [ %77, %if.else175 ], [ %76, %if.then165 ], [ %78, %if.else186 ]
  %add179.sink = phi i32 [ %add179, %if.else175 ], [ %conv168, %if.then165 ], [ %conv189, %if.else186 ]
  %length.0.ph = phi i64 [ %sub43, %if.else175 ], [ %sub43, %if.then165 ], [ %sub, %if.else186 ]
  %next_input_byte.4.ph = phi ptr [ %incdec.ptr40.13, %if.else175 ], [ %incdec.ptr40.13, %if.then165 ], [ %incdec.ptr20, %if.else186 ]
  %bytes_in_buffer.4.ph = phi i64 [ %dec39.13, %if.else175 ], [ %dec39.13, %if.then165 ], [ %dec19, %if.else186 ]
  %msg_parm181 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %.sink303, i64 0, i32 6
  store i32 %add179.sink, ptr %msg_parm181, align 4, !tbaa !17
  %79 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message184 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i64 0, i32 1
  %80 = load ptr, ptr %emit_message184, align 8, !tbaa !18
  tail call void %80(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  br label %if.end195

if.end195:                                        ; preds = %if.end195.sink.split, %if.end157
  %length.0 = phi i64 [ %sub43, %if.end157 ], [ %length.0.ph, %if.end195.sink.split ]
  %next_input_byte.4 = phi ptr [ %incdec.ptr40.13, %if.end157 ], [ %next_input_byte.4.ph, %if.end195.sink.split ]
  %bytes_in_buffer.4 = phi i64 [ %dec39.13, %if.end157 ], [ %bytes_in_buffer.4.ph, %if.end195.sink.split ]
  store ptr %next_input_byte.4, ptr %0, align 8, !tbaa !20
  store i64 %bytes_in_buffer.4, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %cmp198 = icmp sgt i64 %length.0, 0
  br i1 %cmp198, label %if.then200, label %cleanup

if.then200:                                       ; preds = %if.end195
  %81 = load ptr, ptr %src, align 8, !tbaa !19
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %81, i64 0, i32 4
  %82 = load ptr, ptr %skip_input_data, align 8, !tbaa !70
  tail call void %82(ptr noundef nonnull %cinfo, i64 noundef %length.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then30.1, %if.then30.2, %if.then30.3, %if.then30.4, %if.then30.5, %if.then30.6, %if.then30.7, %if.then30.8, %if.then30.9, %if.then30.10, %if.then30.11, %if.then30.12, %if.then30.13, %if.end195, %if.then200, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 1, %if.then200 ], [ 1, %if.end195 ], [ 0, %if.then30.13 ], [ 0, %if.then30.12 ], [ 0, %if.then30.11 ], [ 0, %if.then30.10 ], [ 0, %if.then30.9 ], [ 0, %if.then30.8 ], [ 0, %if.then30.7 ], [ 0, %if.then30.6 ], [ 0, %if.then30.5 ], [ 0, %if.then30.4 ], [ 0, %if.then30.3 ], [ 0, %if.then30.2 ], [ 0, %if.then30.1 ], [ 0, %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_app14(ptr noundef %cinfo) #0 {
entry:
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8, !tbaa !19
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %2 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call = tail call i32 %2(ptr noundef nonnull %cinfo) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %bytes_in_buffer.0 = phi i64 [ %3, %if.end ], [ %1, %entry ]
  %next_input_byte.0 = load ptr, ptr %0, align 8, !tbaa !20
  %dec = add i64 %bytes_in_buffer.0, -1
  %incdec.ptr = getelementptr inbounds i8, ptr %next_input_byte.0, i64 1
  %4 = load i8, ptr %next_input_byte.0, align 1, !tbaa !17
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %cmp8 = icmp eq i64 %dec, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer11, align 8, !tbaa !23
  %call12 = tail call i32 %5(ptr noundef nonnull %cinfo) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10
  %6 = load ptr, ptr %0, align 8, !tbaa !20
  %7 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %next_input_byte.1 = phi ptr [ %6, %if.end15 ], [ %incdec.ptr, %if.end6 ]
  %bytes_in_buffer.1 = phi i64 [ %7, %if.end15 ], [ %dec, %if.end6 ]
  %dec19 = add i64 %bytes_in_buffer.1, -1
  %incdec.ptr20 = getelementptr inbounds i8, ptr %next_input_byte.1, i64 1
  %8 = load i8, ptr %next_input_byte.1, align 1, !tbaa !17
  %conv21 = zext i8 %8 to i64
  %add = or i64 %shl, %conv21
  %cmp22 = icmp ugt i64 %add, 13
  br i1 %cmp22, label %for.cond.preheader, label %if.else108

for.cond.preheader:                               ; preds = %if.end18
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %cmp28 = icmp eq i64 %dec19, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %for.cond.preheader
  %9 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32 = tail call i32 %9(ptr noundef nonnull %cinfo) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.then30
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %for.cond.preheader
  %next_input_byte.3 = phi ptr [ %10, %if.end35 ], [ %incdec.ptr20, %for.cond.preheader ]
  %bytes_in_buffer.3 = phi i64 [ %11, %if.end35 ], [ %dec19, %for.cond.preheader ]
  %dec39 = add i64 %bytes_in_buffer.3, -1
  %incdec.ptr40 = getelementptr inbounds i8, ptr %next_input_byte.3, i64 1
  %12 = load i8, ptr %next_input_byte.3, align 1, !tbaa !17
  %cmp28.1 = icmp eq i64 %dec39, 0
  br i1 %cmp28.1, label %if.then30.1, label %if.end38.1

if.then30.1:                                      ; preds = %if.end38
  %13 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.1 = tail call i32 %13(ptr noundef nonnull %cinfo) #6
  %tobool33.not.1 = icmp eq i32 %call32.1, 0
  br i1 %tobool33.not.1, label %cleanup, label %if.end35.1

if.end35.1:                                       ; preds = %if.then30.1
  %14 = load ptr, ptr %0, align 8, !tbaa !20
  %15 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.1

if.end38.1:                                       ; preds = %if.end35.1, %if.end38
  %next_input_byte.3.1 = phi ptr [ %14, %if.end35.1 ], [ %incdec.ptr40, %if.end38 ]
  %bytes_in_buffer.3.1 = phi i64 [ %15, %if.end35.1 ], [ %dec39, %if.end38 ]
  %dec39.1 = add i64 %bytes_in_buffer.3.1, -1
  %incdec.ptr40.1 = getelementptr inbounds i8, ptr %next_input_byte.3.1, i64 1
  %16 = load i8, ptr %next_input_byte.3.1, align 1, !tbaa !17
  %cmp28.2 = icmp eq i64 %dec39.1, 0
  br i1 %cmp28.2, label %if.then30.2, label %if.end38.2

if.then30.2:                                      ; preds = %if.end38.1
  %17 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.2 = tail call i32 %17(ptr noundef nonnull %cinfo) #6
  %tobool33.not.2 = icmp eq i32 %call32.2, 0
  br i1 %tobool33.not.2, label %cleanup, label %if.end35.2

if.end35.2:                                       ; preds = %if.then30.2
  %18 = load ptr, ptr %0, align 8, !tbaa !20
  %19 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.2

if.end38.2:                                       ; preds = %if.end35.2, %if.end38.1
  %next_input_byte.3.2 = phi ptr [ %18, %if.end35.2 ], [ %incdec.ptr40.1, %if.end38.1 ]
  %bytes_in_buffer.3.2 = phi i64 [ %19, %if.end35.2 ], [ %dec39.1, %if.end38.1 ]
  %dec39.2 = add i64 %bytes_in_buffer.3.2, -1
  %incdec.ptr40.2 = getelementptr inbounds i8, ptr %next_input_byte.3.2, i64 1
  %20 = load i8, ptr %next_input_byte.3.2, align 1, !tbaa !17
  %cmp28.3 = icmp eq i64 %dec39.2, 0
  br i1 %cmp28.3, label %if.then30.3, label %if.end38.3

if.then30.3:                                      ; preds = %if.end38.2
  %21 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.3 = tail call i32 %21(ptr noundef nonnull %cinfo) #6
  %tobool33.not.3 = icmp eq i32 %call32.3, 0
  br i1 %tobool33.not.3, label %cleanup, label %if.end35.3

if.end35.3:                                       ; preds = %if.then30.3
  %22 = load ptr, ptr %0, align 8, !tbaa !20
  %23 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.3

if.end38.3:                                       ; preds = %if.end35.3, %if.end38.2
  %next_input_byte.3.3 = phi ptr [ %22, %if.end35.3 ], [ %incdec.ptr40.2, %if.end38.2 ]
  %bytes_in_buffer.3.3 = phi i64 [ %23, %if.end35.3 ], [ %dec39.2, %if.end38.2 ]
  %dec39.3 = add i64 %bytes_in_buffer.3.3, -1
  %incdec.ptr40.3 = getelementptr inbounds i8, ptr %next_input_byte.3.3, i64 1
  %24 = load i8, ptr %next_input_byte.3.3, align 1, !tbaa !17
  %cmp28.4 = icmp eq i64 %dec39.3, 0
  br i1 %cmp28.4, label %if.then30.4, label %if.end38.4

if.then30.4:                                      ; preds = %if.end38.3
  %25 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.4 = tail call i32 %25(ptr noundef nonnull %cinfo) #6
  %tobool33.not.4 = icmp eq i32 %call32.4, 0
  br i1 %tobool33.not.4, label %cleanup, label %if.end35.4

if.end35.4:                                       ; preds = %if.then30.4
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.4

if.end38.4:                                       ; preds = %if.end35.4, %if.end38.3
  %next_input_byte.3.4 = phi ptr [ %26, %if.end35.4 ], [ %incdec.ptr40.3, %if.end38.3 ]
  %bytes_in_buffer.3.4 = phi i64 [ %27, %if.end35.4 ], [ %dec39.3, %if.end38.3 ]
  %dec39.4 = add i64 %bytes_in_buffer.3.4, -1
  %incdec.ptr40.4 = getelementptr inbounds i8, ptr %next_input_byte.3.4, i64 1
  %28 = load i8, ptr %next_input_byte.3.4, align 1, !tbaa !17
  %cmp28.5 = icmp eq i64 %dec39.4, 0
  br i1 %cmp28.5, label %if.then30.5, label %if.end38.5

if.then30.5:                                      ; preds = %if.end38.4
  %29 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.5 = tail call i32 %29(ptr noundef nonnull %cinfo) #6
  %tobool33.not.5 = icmp eq i32 %call32.5, 0
  br i1 %tobool33.not.5, label %cleanup, label %if.end35.5

if.end35.5:                                       ; preds = %if.then30.5
  %30 = load ptr, ptr %0, align 8, !tbaa !20
  %31 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.5

if.end38.5:                                       ; preds = %if.end35.5, %if.end38.4
  %next_input_byte.3.5 = phi ptr [ %30, %if.end35.5 ], [ %incdec.ptr40.4, %if.end38.4 ]
  %bytes_in_buffer.3.5 = phi i64 [ %31, %if.end35.5 ], [ %dec39.4, %if.end38.4 ]
  %dec39.5 = add i64 %bytes_in_buffer.3.5, -1
  %incdec.ptr40.5 = getelementptr inbounds i8, ptr %next_input_byte.3.5, i64 1
  %32 = load i8, ptr %next_input_byte.3.5, align 1, !tbaa !17
  %cmp28.6 = icmp eq i64 %dec39.5, 0
  br i1 %cmp28.6, label %if.then30.6, label %if.end38.6

if.then30.6:                                      ; preds = %if.end38.5
  %33 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.6 = tail call i32 %33(ptr noundef nonnull %cinfo) #6
  %tobool33.not.6 = icmp eq i32 %call32.6, 0
  br i1 %tobool33.not.6, label %cleanup, label %if.end35.6

if.end35.6:                                       ; preds = %if.then30.6
  %34 = load ptr, ptr %0, align 8, !tbaa !20
  %35 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.6

if.end38.6:                                       ; preds = %if.end35.6, %if.end38.5
  %next_input_byte.3.6 = phi ptr [ %34, %if.end35.6 ], [ %incdec.ptr40.5, %if.end38.5 ]
  %bytes_in_buffer.3.6 = phi i64 [ %35, %if.end35.6 ], [ %dec39.5, %if.end38.5 ]
  %dec39.6 = add i64 %bytes_in_buffer.3.6, -1
  %incdec.ptr40.6 = getelementptr inbounds i8, ptr %next_input_byte.3.6, i64 1
  %36 = load i8, ptr %next_input_byte.3.6, align 1, !tbaa !17
  %cmp28.7 = icmp eq i64 %dec39.6, 0
  br i1 %cmp28.7, label %if.then30.7, label %if.end38.7

if.then30.7:                                      ; preds = %if.end38.6
  %37 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.7 = tail call i32 %37(ptr noundef nonnull %cinfo) #6
  %tobool33.not.7 = icmp eq i32 %call32.7, 0
  br i1 %tobool33.not.7, label %cleanup, label %if.end35.7

if.end35.7:                                       ; preds = %if.then30.7
  %38 = load ptr, ptr %0, align 8, !tbaa !20
  %39 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.7

if.end38.7:                                       ; preds = %if.end35.7, %if.end38.6
  %next_input_byte.3.7 = phi ptr [ %38, %if.end35.7 ], [ %incdec.ptr40.6, %if.end38.6 ]
  %bytes_in_buffer.3.7 = phi i64 [ %39, %if.end35.7 ], [ %dec39.6, %if.end38.6 ]
  %dec39.7 = add i64 %bytes_in_buffer.3.7, -1
  %incdec.ptr40.7 = getelementptr inbounds i8, ptr %next_input_byte.3.7, i64 1
  %40 = load i8, ptr %next_input_byte.3.7, align 1, !tbaa !17
  %cmp28.8 = icmp eq i64 %dec39.7, 0
  br i1 %cmp28.8, label %if.then30.8, label %if.end38.8

if.then30.8:                                      ; preds = %if.end38.7
  %41 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.8 = tail call i32 %41(ptr noundef nonnull %cinfo) #6
  %tobool33.not.8 = icmp eq i32 %call32.8, 0
  br i1 %tobool33.not.8, label %cleanup, label %if.end35.8

if.end35.8:                                       ; preds = %if.then30.8
  %42 = load ptr, ptr %0, align 8, !tbaa !20
  %43 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.8

if.end38.8:                                       ; preds = %if.end35.8, %if.end38.7
  %next_input_byte.3.8 = phi ptr [ %42, %if.end35.8 ], [ %incdec.ptr40.7, %if.end38.7 ]
  %bytes_in_buffer.3.8 = phi i64 [ %43, %if.end35.8 ], [ %dec39.7, %if.end38.7 ]
  %dec39.8 = add i64 %bytes_in_buffer.3.8, -1
  %incdec.ptr40.8 = getelementptr inbounds i8, ptr %next_input_byte.3.8, i64 1
  %44 = load i8, ptr %next_input_byte.3.8, align 1, !tbaa !17
  %cmp28.9 = icmp eq i64 %dec39.8, 0
  br i1 %cmp28.9, label %if.then30.9, label %if.end38.9

if.then30.9:                                      ; preds = %if.end38.8
  %45 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.9 = tail call i32 %45(ptr noundef nonnull %cinfo) #6
  %tobool33.not.9 = icmp eq i32 %call32.9, 0
  br i1 %tobool33.not.9, label %cleanup, label %if.end35.9

if.end35.9:                                       ; preds = %if.then30.9
  %46 = load ptr, ptr %0, align 8, !tbaa !20
  %47 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.9

if.end38.9:                                       ; preds = %if.end35.9, %if.end38.8
  %next_input_byte.3.9 = phi ptr [ %46, %if.end35.9 ], [ %incdec.ptr40.8, %if.end38.8 ]
  %bytes_in_buffer.3.9 = phi i64 [ %47, %if.end35.9 ], [ %dec39.8, %if.end38.8 ]
  %dec39.9 = add i64 %bytes_in_buffer.3.9, -1
  %incdec.ptr40.9 = getelementptr inbounds i8, ptr %next_input_byte.3.9, i64 1
  %48 = load i8, ptr %next_input_byte.3.9, align 1, !tbaa !17
  %cmp28.10 = icmp eq i64 %dec39.9, 0
  br i1 %cmp28.10, label %if.then30.10, label %if.end38.10

if.then30.10:                                     ; preds = %if.end38.9
  %49 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.10 = tail call i32 %49(ptr noundef nonnull %cinfo) #6
  %tobool33.not.10 = icmp eq i32 %call32.10, 0
  br i1 %tobool33.not.10, label %cleanup, label %if.end35.10

if.end35.10:                                      ; preds = %if.then30.10
  %50 = load ptr, ptr %0, align 8, !tbaa !20
  %51 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.10

if.end38.10:                                      ; preds = %if.end35.10, %if.end38.9
  %next_input_byte.3.10 = phi ptr [ %50, %if.end35.10 ], [ %incdec.ptr40.9, %if.end38.9 ]
  %bytes_in_buffer.3.10 = phi i64 [ %51, %if.end35.10 ], [ %dec39.9, %if.end38.9 ]
  %dec39.10 = add i64 %bytes_in_buffer.3.10, -1
  %incdec.ptr40.10 = getelementptr inbounds i8, ptr %next_input_byte.3.10, i64 1
  %52 = load i8, ptr %next_input_byte.3.10, align 1, !tbaa !17
  %cmp28.11 = icmp eq i64 %dec39.10, 0
  br i1 %cmp28.11, label %if.then30.11, label %if.end38.11

if.then30.11:                                     ; preds = %if.end38.10
  %53 = load ptr, ptr %fill_input_buffer31, align 8, !tbaa !23
  %call32.11 = tail call i32 %53(ptr noundef nonnull %cinfo) #6
  %tobool33.not.11 = icmp eq i32 %call32.11, 0
  br i1 %tobool33.not.11, label %cleanup, label %if.end35.11

if.end35.11:                                      ; preds = %if.then30.11
  %54 = load ptr, ptr %0, align 8, !tbaa !20
  %55 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end38.11

if.end38.11:                                      ; preds = %if.end35.11, %if.end38.10
  %next_input_byte.3.11 = phi ptr [ %54, %if.end35.11 ], [ %incdec.ptr40.10, %if.end38.10 ]
  %bytes_in_buffer.3.11 = phi i64 [ %55, %if.end35.11 ], [ %dec39.10, %if.end38.10 ]
  %dec39.11 = add i64 %bytes_in_buffer.3.11, -1
  %incdec.ptr40.11 = getelementptr inbounds i8, ptr %next_input_byte.3.11, i64 1
  %sub43 = add nsw i64 %add, -14
  %cmp46 = icmp eq i8 %12, 65
  %cmp50 = icmp eq i8 %16, 100
  %or.cond = select i1 %cmp46, i1 %cmp50, i1 false
  %cmp55 = icmp eq i8 %20, 111
  %or.cond134 = select i1 %or.cond, i1 %cmp55, i1 false
  %cmp60 = icmp eq i8 %24, 98
  %or.cond135 = select i1 %or.cond134, i1 %cmp60, i1 false
  %cmp65 = icmp eq i8 %28, 101
  %or.cond136 = select i1 %or.cond135, i1 %cmp65, i1 false
  br i1 %or.cond136, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end38.11
  %56 = load i8, ptr %next_input_byte.3.11, align 1, !tbaa !17
  %conv69 = zext i8 %32 to i32
  %shl70 = shl nuw nsw i32 %conv69, 8
  %conv72 = zext i8 %36 to i32
  %add73 = or i32 %shl70, %conv72
  %conv75 = zext i8 %40 to i32
  %shl76 = shl nuw nsw i32 %conv75, 8
  %conv78 = zext i8 %44 to i32
  %add79 = or i32 %shl76, %conv78
  %conv81 = zext i8 %48 to i32
  %shl82 = shl nuw nsw i32 %conv81, 8
  %conv84 = zext i8 %52 to i32
  %add85 = or i32 %shl82, %conv84
  %conv87 = zext i8 %56 to i32
  %57 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 6
  store i32 %add73, ptr %msg_parm, align 4, !tbaa !55
  %arrayidx90 = getelementptr inbounds i32, ptr %msg_parm, i64 1
  store i32 %add79, ptr %arrayidx90, align 4, !tbaa !55
  %arrayidx91 = getelementptr inbounds i32, ptr %msg_parm, i64 2
  store i32 %add85, ptr %arrayidx91, align 4, !tbaa !55
  %arrayidx92 = getelementptr inbounds i32, ptr %msg_parm, i64 3
  store i32 %conv87, ptr %arrayidx92, align 4, !tbaa !55
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 75, ptr %msg_code, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 1
  %58 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %58(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 54
  store i32 1, ptr %saw_Adobe_marker, align 8, !tbaa !46
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 55
  store i8 %56, ptr %Adobe_transform, align 4, !tbaa !47
  br label %if.end117

if.else:                                          ; preds = %if.end38.11
  %59 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 5
  store i32 77, ptr %msg_code99, align 8, !tbaa !14
  %conv100 = trunc i64 %sub43 to i32
  %add101 = add nsw i32 %conv100, 12
  %msg_parm103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 6
  store i32 %add101, ptr %msg_parm103, align 4, !tbaa !17
  %60 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 1
  %61 = load ptr, ptr %emit_message106, align 8, !tbaa !18
  tail call void %61(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  br label %if.end117

if.else108:                                       ; preds = %if.end18
  %sub = add nsw i64 %add, -2
  %62 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 77, ptr %msg_code110, align 8, !tbaa !14
  %conv111 = trunc i64 %sub to i32
  %msg_parm113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 6
  store i32 %conv111, ptr %msg_parm113, align 4, !tbaa !17
  %63 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %emit_message116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 1
  %64 = load ptr, ptr %emit_message116, align 8, !tbaa !18
  tail call void %64(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  br label %if.end117

if.end117:                                        ; preds = %if.then67, %if.else, %if.else108
  %length.0 = phi i64 [ %sub43, %if.then67 ], [ %sub43, %if.else ], [ %sub, %if.else108 ]
  %next_input_byte.4 = phi ptr [ %incdec.ptr40.11, %if.then67 ], [ %incdec.ptr40.11, %if.else ], [ %incdec.ptr20, %if.else108 ]
  %bytes_in_buffer.4 = phi i64 [ %dec39.11, %if.then67 ], [ %dec39.11, %if.else ], [ %dec19, %if.else108 ]
  store ptr %next_input_byte.4, ptr %0, align 8, !tbaa !20
  store i64 %bytes_in_buffer.4, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %cmp120 = icmp sgt i64 %length.0, 0
  br i1 %cmp120, label %if.then122, label %cleanup

if.then122:                                       ; preds = %if.end117
  %65 = load ptr, ptr %src, align 8, !tbaa !19
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %65, i64 0, i32 4
  %66 = load ptr, ptr %skip_input_data, align 8, !tbaa !70
  tail call void %66(ptr noundef nonnull %cinfo, i64 noundef %length.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then30.1, %if.then30.2, %if.then30.3, %if.then30.4, %if.then30.5, %if.then30.6, %if.then30.7, %if.then30.8, %if.then30.9, %if.then30.10, %if.then30.11, %if.end117, %if.then122, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 1, %if.then122 ], [ 1, %if.end117 ], [ 0, %if.then30.11 ], [ 0, %if.then30.10 ], [ 0, %if.then30.9 ], [ 0, %if.then30.8 ], [ 0, %if.then30.7 ], [ 0, %if.then30.6 ], [ 0, %if.then30.5 ], [ 0, %if.then30.4 ], [ 0, %if.then30.3 ], [ 0, %if.then30.2 ], [ 0, %if.then30.1 ], [ 0, %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_sof(ptr noundef %cinfo, i32 noundef %is_prog, i32 noundef %is_arith) unnamed_addr #0 {
entry:
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8, !tbaa !19
  %1 = load ptr, ptr %0, align 8, !tbaa !20
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 44
  store i32 %is_prog, ptr %progressive_mode, align 8, !tbaa !74
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 45
  store i32 %is_arith, ptr %arith_code, align 4, !tbaa !75
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !23
  %call = tail call i32 %3(ptr noundef nonnull %cinfo) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %next_input_byte.0 = phi ptr [ %4, %if.end ], [ %1, %entry ]
  %bytes_in_buffer.0 = phi i64 [ %5, %if.end ], [ %2, %entry ]
  %dec = add i64 %bytes_in_buffer.0, -1
  %incdec.ptr = getelementptr inbounds i8, ptr %next_input_byte.0, i64 1
  %6 = load i8, ptr %next_input_byte.0, align 1, !tbaa !17
  %conv = zext i8 %6 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %cmp8 = icmp eq i64 %dec, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %fill_input_buffer11, align 8, !tbaa !23
  %call12 = tail call i32 %7(ptr noundef nonnull %cinfo) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10
  %8 = load ptr, ptr %0, align 8, !tbaa !20
  %9 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %next_input_byte.1 = phi ptr [ %8, %if.end15 ], [ %incdec.ptr, %if.end6 ]
  %bytes_in_buffer.1 = phi i64 [ %9, %if.end15 ], [ %dec, %if.end6 ]
  %dec19 = add i64 %bytes_in_buffer.1, -1
  %incdec.ptr20 = getelementptr inbounds i8, ptr %next_input_byte.1, i64 1
  %10 = load i8, ptr %next_input_byte.1, align 1, !tbaa !17
  %conv21 = zext i8 %10 to i64
  %add = or i64 %shl, %conv21
  %cmp23 = icmp eq i64 %dec19, 0
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end18
  %fill_input_buffer26 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %fill_input_buffer26, align 8, !tbaa !23
  %call27 = tail call i32 %11(ptr noundef nonnull %cinfo) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.then25
  %12 = load ptr, ptr %0, align 8, !tbaa !20
  %13 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.end18
  %next_input_byte.2 = phi ptr [ %12, %if.end30 ], [ %incdec.ptr20, %if.end18 ]
  %bytes_in_buffer.2 = phi i64 [ %13, %if.end30 ], [ %dec19, %if.end18 ]
  %dec34 = add i64 %bytes_in_buffer.2, -1
  %incdec.ptr35 = getelementptr inbounds i8, ptr %next_input_byte.2, i64 1
  %14 = load i8, ptr %next_input_byte.2, align 1, !tbaa !17
  %conv36 = zext i8 %14 to i32
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 42
  store i32 %conv36, ptr %data_precision, align 8, !tbaa !76
  %cmp40 = icmp eq i64 %dec34, 0
  br i1 %cmp40, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.end33
  %fill_input_buffer43 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %fill_input_buffer43, align 8, !tbaa !23
  %call44 = tail call i32 %15(ptr noundef nonnull %cinfo) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.then42
  %16 = load ptr, ptr %0, align 8, !tbaa !20
  %17 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.end33
  %next_input_byte.3 = phi ptr [ %16, %if.end47 ], [ %incdec.ptr35, %if.end33 ]
  %bytes_in_buffer.3 = phi i64 [ %17, %if.end47 ], [ %dec34, %if.end33 ]
  %dec51 = add i64 %bytes_in_buffer.3, -1
  %incdec.ptr52 = getelementptr inbounds i8, ptr %next_input_byte.3, i64 1
  %18 = load i8, ptr %next_input_byte.3, align 1, !tbaa !17
  %conv53 = zext i8 %18 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 7
  store i32 %shl54, ptr %image_height, align 4, !tbaa !77
  %cmp55 = icmp eq i64 %dec51, 0
  br i1 %cmp55, label %if.then57, label %if.end65

if.then57:                                        ; preds = %if.end50
  %fill_input_buffer58 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer58, align 8, !tbaa !23
  %call59 = tail call i32 %19(ptr noundef nonnull %cinfo) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.then57
  %20 = load ptr, ptr %0, align 8, !tbaa !20
  %21 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %.pre = load i32, ptr %image_height, align 4, !tbaa !77
  br label %if.end65

if.end65:                                         ; preds = %if.end62, %if.end50
  %22 = phi i32 [ %.pre, %if.end62 ], [ %shl54, %if.end50 ]
  %next_input_byte.4 = phi ptr [ %20, %if.end62 ], [ %incdec.ptr52, %if.end50 ]
  %bytes_in_buffer.4 = phi i64 [ %21, %if.end62 ], [ %dec51, %if.end50 ]
  %dec66 = add i64 %bytes_in_buffer.4, -1
  %incdec.ptr67 = getelementptr inbounds i8, ptr %next_input_byte.4, i64 1
  %23 = load i8, ptr %next_input_byte.4, align 1, !tbaa !17
  %conv68 = zext i8 %23 to i32
  %add70 = add i32 %22, %conv68
  store i32 %add70, ptr %image_height, align 4, !tbaa !77
  %cmp74 = icmp eq i64 %dec66, 0
  br i1 %cmp74, label %if.then76, label %if.end84

if.then76:                                        ; preds = %if.end65
  %fill_input_buffer77 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %fill_input_buffer77, align 8, !tbaa !23
  %call78 = tail call i32 %24(ptr noundef nonnull %cinfo) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup, label %if.end81

if.end81:                                         ; preds = %if.then76
  %25 = load ptr, ptr %0, align 8, !tbaa !20
  %26 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end84

if.end84:                                         ; preds = %if.end81, %if.end65
  %next_input_byte.5 = phi ptr [ %25, %if.end81 ], [ %incdec.ptr67, %if.end65 ]
  %bytes_in_buffer.5 = phi i64 [ %26, %if.end81 ], [ %dec66, %if.end65 ]
  %dec85 = add i64 %bytes_in_buffer.5, -1
  %incdec.ptr86 = getelementptr inbounds i8, ptr %next_input_byte.5, i64 1
  %27 = load i8, ptr %next_input_byte.5, align 1, !tbaa !17
  %conv87 = zext i8 %27 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 6
  store i32 %shl88, ptr %image_width, align 8, !tbaa !78
  %cmp89 = icmp eq i64 %dec85, 0
  br i1 %cmp89, label %if.then91, label %if.end99

if.then91:                                        ; preds = %if.end84
  %fill_input_buffer92 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %fill_input_buffer92, align 8, !tbaa !23
  %call93 = tail call i32 %28(ptr noundef nonnull %cinfo) #6
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cleanup, label %if.end96

if.end96:                                         ; preds = %if.then91
  %29 = load ptr, ptr %0, align 8, !tbaa !20
  %30 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  %.pre416 = load i32, ptr %image_width, align 8, !tbaa !78
  br label %if.end99

if.end99:                                         ; preds = %if.end96, %if.end84
  %31 = phi i32 [ %.pre416, %if.end96 ], [ %shl88, %if.end84 ]
  %next_input_byte.6 = phi ptr [ %29, %if.end96 ], [ %incdec.ptr86, %if.end84 ]
  %bytes_in_buffer.6 = phi i64 [ %30, %if.end96 ], [ %dec85, %if.end84 ]
  %dec100 = add i64 %bytes_in_buffer.6, -1
  %incdec.ptr101 = getelementptr inbounds i8, ptr %next_input_byte.6, i64 1
  %32 = load i8, ptr %next_input_byte.6, align 1, !tbaa !17
  %conv102 = zext i8 %32 to i32
  %add104 = add i32 %31, %conv102
  store i32 %add104, ptr %image_width, align 8, !tbaa !78
  %cmp108 = icmp eq i64 %dec100, 0
  br i1 %cmp108, label %if.then110, label %if.end118

if.then110:                                       ; preds = %if.end99
  %fill_input_buffer111 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer111, align 8, !tbaa !23
  %call112 = tail call i32 %33(ptr noundef nonnull %cinfo) #6
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %cleanup, label %if.end115

if.end115:                                        ; preds = %if.then110
  %34 = load ptr, ptr %0, align 8, !tbaa !20
  %35 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end118

if.end118:                                        ; preds = %if.end115, %if.end99
  %next_input_byte.7 = phi ptr [ %34, %if.end115 ], [ %incdec.ptr101, %if.end99 ]
  %bytes_in_buffer.7 = phi i64 [ %35, %if.end115 ], [ %dec100, %if.end99 ]
  %36 = load i8, ptr %next_input_byte.7, align 1, !tbaa !17
  %conv121 = zext i8 %36 to i32
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  store i32 %conv121, ptr %num_components, align 8, !tbaa !49
  %sub = add nsw i64 %add, -8
  %37 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 6
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %38 = load i32, ptr %unread_marker, align 4, !tbaa !5
  store i32 %38, ptr %msg_parm, align 4, !tbaa !55
  %39 = load i32, ptr %image_width, align 8, !tbaa !78
  %arrayidx126 = getelementptr inbounds i32, ptr %msg_parm, i64 1
  store i32 %39, ptr %arrayidx126, align 4, !tbaa !55
  %40 = load i32, ptr %image_height, align 4, !tbaa !77
  %arrayidx128 = getelementptr inbounds i32, ptr %msg_parm, i64 2
  store i32 %40, ptr %arrayidx128, align 4, !tbaa !55
  %41 = load i32, ptr %num_components, align 8, !tbaa !49
  %arrayidx130 = getelementptr inbounds i32, ptr %msg_parm, i64 3
  store i32 %41, ptr %arrayidx130, align 4, !tbaa !55
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 99, ptr %msg_code, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %emit_message, align 8, !tbaa !18
  tail call void %42(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  %43 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %43, i64 0, i32 6
  %44 = load i32, ptr %saw_SOF, align 4, !tbaa !40
  %tobool135.not = icmp eq i32 %44, 0
  br i1 %tobool135.not, label %if.end140, label %if.then136

if.then136:                                       ; preds = %if.end118
  %45 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 57, ptr %msg_code138, align 8, !tbaa !14
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  tail call void %46(ptr noundef nonnull %cinfo) #6
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end118
  %47 = load i32, ptr %image_height, align 4, !tbaa !77
  %cmp142 = icmp eq i32 %47, 0
  br i1 %cmp142, label %if.then151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end140
  %48 = load i32, ptr %image_width, align 8, !tbaa !78
  %cmp145 = icmp eq i32 %48, 0
  br i1 %cmp145, label %if.then151, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false
  %49 = load i32, ptr %num_components, align 8, !tbaa !49
  %cmp149 = icmp slt i32 %49, 1
  br i1 %cmp149, label %if.then151, label %if.end156

if.then151:                                       ; preds = %lor.lhs.false147, %lor.lhs.false, %if.end140
  %50 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code153 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 31, ptr %msg_code153, align 8, !tbaa !14
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  tail call void %51(ptr noundef nonnull %cinfo) #6
  %.pre417 = load i32, ptr %num_components, align 8, !tbaa !49
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %lor.lhs.false147
  %52 = phi i32 [ %.pre417, %if.then151 ], [ %49, %lor.lhs.false147 ]
  %mul = mul nsw i32 %52, 3
  %conv158 = sext i32 %mul to i64
  %cmp159.not = icmp eq i64 %sub, %conv158
  br i1 %cmp159.not, label %if.end166, label %if.then161

if.then161:                                       ; preds = %if.end156
  %53 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_code163 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 5
  store i32 9, ptr %msg_code163, align 8, !tbaa !14
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  tail call void %54(ptr noundef nonnull %cinfo) #6
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end156
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %55 = load ptr, ptr %comp_info, align 8, !tbaa !37
  %cmp167 = icmp eq ptr %55, null
  br i1 %cmp167, label %if.then169, label %if.end175

if.then169:                                       ; preds = %if.end166
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %56 = load ptr, ptr %mem, align 8, !tbaa !29
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  %58 = load i32, ptr %num_components, align 8, !tbaa !49
  %conv171 = sext i32 %58 to i64
  %mul172 = mul nsw i64 %conv171, 96
  %call173 = tail call ptr %57(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef %mul172) #6
  store ptr %call173, ptr %comp_info, align 8, !tbaa !37
  br label %if.end175

if.end175:                                        ; preds = %if.then169, %if.end166
  %59 = phi ptr [ %call173, %if.then169 ], [ %55, %if.end166 ]
  %next_input_byte.8406 = getelementptr inbounds i8, ptr %next_input_byte.7, i64 1
  %bytes_in_buffer.8407 = add i64 %bytes_in_buffer.7, -1
  %60 = load i32, ptr %num_components, align 8, !tbaa !49
  %cmp178408 = icmp sgt i32 %60, 0
  br i1 %cmp178408, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end175
  %fill_input_buffer184 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end226
  %bytes_in_buffer.8412 = phi i64 [ %bytes_in_buffer.8407, %for.body.lr.ph ], [ %bytes_in_buffer.8, %if.end226 ]
  %next_input_byte.8411 = phi ptr [ %next_input_byte.8406, %for.body.lr.ph ], [ %next_input_byte.8, %if.end226 ]
  %ci.0410 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end226 ]
  %compptr.0409 = phi ptr [ %59, %for.body.lr.ph ], [ %incdec.ptr251, %if.end226 ]
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0409, i64 0, i32 1
  store i32 %ci.0410, ptr %component_index, align 4, !tbaa !79
  %cmp181 = icmp eq i64 %bytes_in_buffer.8412, 0
  br i1 %cmp181, label %if.then183, label %if.end191

if.then183:                                       ; preds = %for.body
  %61 = load ptr, ptr %fill_input_buffer184, align 8, !tbaa !23
  %call185 = tail call i32 %61(ptr noundef nonnull %cinfo) #6
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %cleanup, label %if.end188

if.end188:                                        ; preds = %if.then183
  %62 = load ptr, ptr %0, align 8, !tbaa !20
  %63 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end191

if.end191:                                        ; preds = %if.end188, %for.body
  %next_input_byte.9 = phi ptr [ %62, %if.end188 ], [ %next_input_byte.8411, %for.body ]
  %bytes_in_buffer.9 = phi i64 [ %63, %if.end188 ], [ %bytes_in_buffer.8412, %for.body ]
  %dec192 = add i64 %bytes_in_buffer.9, -1
  %incdec.ptr193 = getelementptr inbounds i8, ptr %next_input_byte.9, i64 1
  %64 = load i8, ptr %next_input_byte.9, align 1, !tbaa !17
  %conv194 = zext i8 %64 to i32
  store i32 %conv194, ptr %compptr.0409, align 8, !tbaa !50
  %cmp198 = icmp eq i64 %dec192, 0
  br i1 %cmp198, label %if.then200, label %if.end208

if.then200:                                       ; preds = %if.end191
  %65 = load ptr, ptr %fill_input_buffer184, align 8, !tbaa !23
  %call202 = tail call i32 %65(ptr noundef nonnull %cinfo) #6
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %cleanup, label %if.end205

if.end205:                                        ; preds = %if.then200
  %66 = load ptr, ptr %0, align 8, !tbaa !20
  %67 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end208

if.end208:                                        ; preds = %if.end205, %if.end191
  %next_input_byte.10 = phi ptr [ %66, %if.end205 ], [ %incdec.ptr193, %if.end191 ]
  %bytes_in_buffer.10 = phi i64 [ %67, %if.end205 ], [ %dec192, %if.end191 ]
  %dec209 = add i64 %bytes_in_buffer.10, -1
  %incdec.ptr210 = getelementptr inbounds i8, ptr %next_input_byte.10, i64 1
  %68 = load i8, ptr %next_input_byte.10, align 1, !tbaa !17
  %conv211 = zext i8 %68 to i32
  %69 = lshr i32 %conv211, 4
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0409, i64 0, i32 2
  store i32 %69, ptr %h_samp_factor, align 8, !tbaa !80
  %and214 = and i32 %conv211, 15
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0409, i64 0, i32 3
  store i32 %and214, ptr %v_samp_factor, align 4, !tbaa !81
  %cmp216 = icmp eq i64 %dec209, 0
  br i1 %cmp216, label %if.then218, label %if.end226

if.then218:                                       ; preds = %if.end208
  %70 = load ptr, ptr %fill_input_buffer184, align 8, !tbaa !23
  %call220 = tail call i32 %70(ptr noundef nonnull %cinfo) #6
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %cleanup, label %if.end223

if.end223:                                        ; preds = %if.then218
  %71 = load ptr, ptr %0, align 8, !tbaa !20
  %72 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %if.end226

if.end226:                                        ; preds = %if.end223, %if.end208
  %next_input_byte.11 = phi ptr [ %71, %if.end223 ], [ %incdec.ptr210, %if.end208 ]
  %bytes_in_buffer.11 = phi i64 [ %72, %if.end223 ], [ %dec209, %if.end208 ]
  %73 = load i8, ptr %next_input_byte.11, align 1, !tbaa !17
  %conv229 = zext i8 %73 to i32
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0409, i64 0, i32 4
  store i32 %conv229, ptr %quant_tbl_no, align 8, !tbaa !82
  %74 = load ptr, ptr %cinfo, align 8, !tbaa !13
  %msg_parm235 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 6
  %75 = load i32, ptr %compptr.0409, align 8, !tbaa !50
  store i32 %75, ptr %msg_parm235, align 4, !tbaa !55
  %76 = load i32, ptr %h_samp_factor, align 8, !tbaa !80
  %arrayidx240 = getelementptr inbounds i32, ptr %msg_parm235, i64 1
  store i32 %76, ptr %arrayidx240, align 4, !tbaa !55
  %77 = load i32, ptr %v_samp_factor, align 4, !tbaa !81
  %arrayidx242 = getelementptr inbounds i32, ptr %msg_parm235, i64 2
  store i32 %77, ptr %arrayidx242, align 4, !tbaa !55
  %78 = load i32, ptr %quant_tbl_no, align 8, !tbaa !82
  %arrayidx244 = getelementptr inbounds i32, ptr %msg_parm235, i64 3
  store i32 %78, ptr %arrayidx244, align 4, !tbaa !55
  %msg_code246 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 100, ptr %msg_code246, align 8, !tbaa !14
  %emit_message248 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %emit_message248, align 8, !tbaa !18
  tail call void %79(ptr noundef nonnull %cinfo, i32 noundef 1) #6
  %inc = add nuw nsw i32 %ci.0410, 1
  %incdec.ptr251 = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0409, i64 1
  %next_input_byte.8 = getelementptr inbounds i8, ptr %next_input_byte.11, i64 1
  %bytes_in_buffer.8 = add i64 %bytes_in_buffer.11, -1
  %80 = load i32, ptr %num_components, align 8, !tbaa !49
  %cmp178 = icmp slt i32 %inc, %80
  br i1 %cmp178, label %for.body, label %for.end, !llvm.loop !83

for.end:                                          ; preds = %if.end226, %if.end175
  %next_input_byte.8.lcssa = phi ptr [ %next_input_byte.8406, %if.end175 ], [ %next_input_byte.8, %if.end226 ]
  %bytes_in_buffer.8.lcssa = phi i64 [ %bytes_in_buffer.8407, %if.end175 ], [ %bytes_in_buffer.8, %if.end226 ]
  %81 = load ptr, ptr %marker, align 8, !tbaa !24
  %saw_SOF253 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %81, i64 0, i32 6
  store i32 1, ptr %saw_SOF253, align 4, !tbaa !40
  store ptr %next_input_byte.8.lcssa, ptr %0, align 8, !tbaa !20
  store i64 %bytes_in_buffer.8.lcssa, ptr %bytes_in_buffer2, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.then218, %if.then200, %if.then183, %if.then110, %if.then91, %if.then76, %if.then57, %if.then42, %if.then25, %if.then10, %if.then, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then25 ], [ 0, %if.then42 ], [ 0, %if.then57 ], [ 0, %if.then76 ], [ 0, %if.then91 ], [ 0, %if.then110 ], [ 0, %if.then183 ], [ 0, %if.then200 ], [ 0, %if.then218 ]
  ret i32 %retval.0
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 524}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !8, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !8, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !8, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
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
!18 = !{!15, !7, i64 8}
!19 = !{!6, !7, i64 32}
!20 = !{!21, !7, i64 0}
!21 = !{!"jpeg_source_mgr", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!22 = !{!21, !16, i64 8}
!23 = !{!21, !7, i64 24}
!24 = !{!6, !7, i64 568}
!25 = !{!26, !10, i64 172}
!26 = !{!"jpeg_marker_reader", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!6, !7, i64 8}
!30 = !{!31, !7, i64 0}
!31 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!32 = !{!26, !7, i64 0}
!33 = !{!26, !7, i64 8}
!34 = !{!26, !7, i64 16}
!35 = !{!26, !7, i64 24}
!36 = !{!7, !7, i64 0}
!37 = !{!6, !7, i64 296}
!38 = !{!6, !10, i64 164}
!39 = !{!26, !10, i64 160}
!40 = !{!26, !10, i64 164}
!41 = !{!15, !7, i64 0}
!42 = !{!6, !8, i64 52}
!43 = !{!6, !10, i64 384}
!44 = !{!6, !12, i64 370}
!45 = !{!6, !12, i64 372}
!46 = !{!6, !10, i64 376}
!47 = !{!6, !8, i64 380}
!48 = !{!6, !10, i64 416}
!49 = !{!6, !10, i64 48}
!50 = !{!51, !10, i64 0}
!51 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!52 = distinct !{!52, !28}
!53 = !{!51, !10, i64 20}
!54 = !{!51, !10, i64 24}
!55 = !{!10, !10, i64 0}
!56 = distinct !{!56, !28}
!57 = !{!6, !10, i64 508}
!58 = !{!6, !10, i64 512}
!59 = !{!6, !10, i64 516}
!60 = !{!6, !10, i64 520}
!61 = !{!26, !10, i64 168}
!62 = distinct !{!62, !28}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28}
!65 = !{!12, !12, i64 0}
!66 = distinct !{!66, !28}
!67 = !{!15, !10, i64 124}
!68 = distinct !{!68, !28}
!69 = !{!6, !10, i64 360}
!70 = !{!21, !7, i64 32}
!71 = !{!21, !7, i64 40}
!72 = !{!6, !10, i64 364}
!73 = !{!6, !8, i64 368}
!74 = !{!6, !10, i64 304}
!75 = !{!6, !10, i64 308}
!76 = !{!6, !10, i64 288}
!77 = !{!6, !10, i64 44}
!78 = !{!6, !10, i64 40}
!79 = !{!51, !10, i64 4}
!80 = !{!51, !10, i64 8}
!81 = !{!51, !10, i64 12}
!82 = !{!51, !10, i64 16}
!83 = distinct !{!83, !28}
