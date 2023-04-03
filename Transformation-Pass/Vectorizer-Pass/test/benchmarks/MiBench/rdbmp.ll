; ModuleID = 'rdbmp.c'
source_filename = "rdbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local ptr @jinit_read_bmp(ptr noundef %cinfo) local_unnamed_addr #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !13
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 88) #4
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, ptr %call, i64 0, i32 1
  store ptr %cinfo, ptr %cinfo1, align 8, !tbaa !16
  store ptr @start_input_bmp, ptr %call, align 8, !tbaa !19
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call, i64 0, i32 2
  store ptr @finish_input_bmp, ptr %finish_input, align 8, !tbaa !20
  ret ptr %call
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_bmp(ptr noundef %cinfo, ptr nocapture noundef %sinfo) #0 {
entry:
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpinfoheader = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %bmpfileheader) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bmpinfoheader) #4
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call = call i64 @fread(ptr noundef nonnull %bmpfileheader, i64 noundef 1, i64 noundef 14, ptr noundef %0)
  %cmp = icmp eq i64 %call, 14
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8, !tbaa !23
  %2 = load ptr, ptr %1, align 8, !tbaa !25
  tail call void %2(ptr noundef nonnull %cinfo) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %bmpfileheader, align 1, !tbaa !26
  %conv = zext i8 %3 to i32
  %arrayidx2 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  %4 = load i8, ptr %arrayidx2, align 1, !tbaa !26
  %conv3 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %add = or i32 %shl, %conv
  %cmp4.not = icmp eq i32 %add, 19778
  br i1 %cmp4.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 1007, ptr %msg_code8, align 8, !tbaa !23
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  tail call void %6(ptr noundef %cinfo) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end
  %arrayidx12 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  %7 = load i8, ptr %arrayidx12, align 1, !tbaa !26
  %8 = zext i8 %7 to i64
  %arrayidx15 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  %9 = load i8, ptr %arrayidx15, align 1, !tbaa !26
  %10 = zext i8 %9 to i64
  %shl18 = shl nuw nsw i64 %10, 8
  %add19 = or i64 %shl18, %8
  %arrayidx20 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  %11 = load i8, ptr %arrayidx20, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %shl23 = shl nuw nsw i64 %12, 16
  %add24 = or i64 %add19, %shl23
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  %13 = load i8, ptr %arrayidx25, align 1, !tbaa !26
  %14 = zext i8 %13 to i64
  %shl28 = shl nuw nsw i64 %14, 24
  %add29 = or i64 %add24, %shl28
  %15 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call33 = call i64 @fread(ptr noundef nonnull %bmpinfoheader, i64 noundef 1, i64 noundef 4, ptr noundef %15)
  %cmp34 = icmp eq i64 %call33, 4
  br i1 %cmp34, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end11
  %16 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 42, ptr %msg_code38, align 8, !tbaa !23
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  tail call void %17(ptr noundef nonnull %cinfo) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end11
  %18 = load i8, ptr %bmpinfoheader, align 16, !tbaa !26
  %19 = zext i8 %18 to i64
  %arrayidx45 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 1
  %20 = load i8, ptr %arrayidx45, align 1, !tbaa !26
  %21 = zext i8 %20 to i64
  %shl48 = shl nuw nsw i64 %21, 8
  %add49 = or i64 %shl48, %19
  %arrayidx50 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 2
  %22 = load i8, ptr %arrayidx50, align 2, !tbaa !26
  %23 = zext i8 %22 to i64
  %shl53 = shl nuw nsw i64 %23, 16
  %add54 = or i64 %add49, %shl53
  %arrayidx55 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 3
  %24 = load i8, ptr %arrayidx55, align 1, !tbaa !26
  %25 = zext i8 %24 to i64
  %shl58 = shl nuw nsw i64 %25, 24
  %add59 = or i64 %add54, %shl58
  %26 = add nsw i64 %add59, -65
  %27 = icmp ult i64 %26, -53
  br i1 %27, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end41
  %28 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 1003, ptr %msg_code66, align 8, !tbaa !23
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  tail call void %29(ptr noundef %cinfo) #4
  br label %if.end69

if.end69:                                         ; preds = %if.end41, %if.then64
  %add.ptr = getelementptr inbounds i8, ptr %bmpinfoheader, i64 4
  %sub = add nsw i64 %add59, -4
  %30 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call73 = call i64 @fread(ptr noundef nonnull %add.ptr, i64 noundef 1, i64 noundef %sub, ptr noundef %30)
  %cmp75 = icmp eq i64 %call73, %sub
  br i1 %cmp75, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.end69
  %31 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 42, ptr %msg_code79, align 8, !tbaa !23
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  tail call void %32(ptr noundef nonnull %cinfo) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end69
  %conv83 = trunc i64 %add59 to i32
  switch i32 %conv83, label %sw.epilog332.thread [
    i32 12, label %sw.bb
    i32 40, label %sw.bb147
    i32 64, label %sw.bb147
  ]

sw.bb:                                            ; preds = %if.end82
  %arrayidx84 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 4
  %33 = load i8, ptr %arrayidx84, align 4, !tbaa !26
  %conv85 = zext i8 %33 to i32
  %arrayidx86 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 5
  %34 = load i8, ptr %arrayidx86, align 1, !tbaa !26
  %conv87 = zext i8 %34 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %add89 = or i32 %shl88, %conv85
  %conv90 = zext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 6
  %35 = load i8, ptr %arrayidx91, align 2, !tbaa !26
  %conv92 = zext i8 %35 to i32
  %arrayidx93 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 7
  %36 = load i8, ptr %arrayidx93, align 1, !tbaa !26
  %conv94 = zext i8 %36 to i32
  %shl95 = shl nuw nsw i32 %conv94, 8
  %add96 = or i32 %shl95, %conv92
  %conv97 = zext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 8
  %37 = load i8, ptr %arrayidx98, align 8, !tbaa !26
  %conv99 = zext i8 %37 to i32
  %arrayidx100 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 9
  %38 = load i8, ptr %arrayidx100, align 1, !tbaa !26
  %conv101 = zext i8 %38 to i32
  %shl102 = shl nuw nsw i32 %conv101, 8
  %add103 = or i32 %shl102, %conv99
  %arrayidx104 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 10
  %39 = load i8, ptr %arrayidx104, align 2, !tbaa !26
  %conv105 = zext i8 %39 to i32
  %arrayidx106 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 11
  %40 = load i8, ptr %arrayidx106, align 1, !tbaa !26
  %conv107 = zext i8 %40 to i32
  %shl108 = shl nuw nsw i32 %conv107, 8
  %add109 = or i32 %shl108, %conv105
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 6
  store i32 %add109, ptr %bits_per_pixel, align 8, !tbaa !27
  %trunc523 = trunc i32 %add109 to i16
  switch i16 %trunc523, label %sw.default [
    i16 8, label %sw.bb111
    i16 24, label %sw.bb122
  ]

sw.bb111:                                         ; preds = %sw.bb
  %41 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 5
  store i32 1011, ptr %msg_code113, align 8, !tbaa !23
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 6
  store i32 %add89, ptr %msg_parm, align 4, !tbaa !26
  %42 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_parm119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6
  %arrayidx120 = getelementptr inbounds [8 x i32], ptr %msg_parm119, i64 0, i64 1
  store i32 %add96, ptr %arrayidx120, align 4, !tbaa !26
  %43 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 1
  %44 = load ptr, ptr %emit_message, align 8, !tbaa !28
  tail call void %44(ptr noundef nonnull %cinfo, i32 noundef 1) #4
  br label %sw.epilog

sw.bb122:                                         ; preds = %sw.bb
  %45 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 1010, ptr %msg_code124, align 8, !tbaa !23
  %msg_parm127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6
  store i32 %add89, ptr %msg_parm127, align 4, !tbaa !26
  %46 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_parm131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 6
  %arrayidx132 = getelementptr inbounds [8 x i32], ptr %msg_parm131, i64 0, i64 1
  store i32 %add96, ptr %arrayidx132, align 4, !tbaa !26
  %47 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %emit_message134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 1
  %48 = load ptr, ptr %emit_message134, align 8, !tbaa !28
  tail call void %48(ptr noundef nonnull %cinfo, i32 noundef 1) #4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %49 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 1002, ptr %msg_code136, align 8, !tbaa !23
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  tail call void %50(ptr noundef nonnull %cinfo) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb122, %sw.bb111
  %mapentrysize.0 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb122 ], [ 3, %sw.bb111 ]
  %cmp139.not = icmp eq i32 %add103, 1
  br i1 %cmp139.not, label %sw.epilog332, label %if.then141

if.then141:                                       ; preds = %sw.epilog
  %51 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code143 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 5
  store i32 1004, ptr %msg_code143, align 8, !tbaa !23
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  tail call void %52(ptr noundef nonnull %cinfo) #4
  br label %sw.epilog332

sw.bb147:                                         ; preds = %if.end82, %if.end82
  %arrayidx148 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 4
  %53 = load i8, ptr %arrayidx148, align 4, !tbaa !26
  %54 = zext i8 %53 to i64
  %arrayidx151 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 5
  %55 = load i8, ptr %arrayidx151, align 1, !tbaa !26
  %56 = zext i8 %55 to i64
  %shl154 = shl nuw nsw i64 %56, 8
  %add155 = or i64 %shl154, %54
  %arrayidx156 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 6
  %57 = load i8, ptr %arrayidx156, align 2, !tbaa !26
  %58 = zext i8 %57 to i64
  %shl159 = shl nuw nsw i64 %58, 16
  %add160 = or i64 %add155, %shl159
  %arrayidx161 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 7
  %59 = load i8, ptr %arrayidx161, align 1, !tbaa !26
  %60 = zext i8 %59 to i64
  %shl164 = shl nuw nsw i64 %60, 24
  %add165 = or i64 %add160, %shl164
  %arrayidx166 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 8
  %61 = load i8, ptr %arrayidx166, align 8, !tbaa !26
  %62 = zext i8 %61 to i64
  %arrayidx169 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 9
  %63 = load i8, ptr %arrayidx169, align 1, !tbaa !26
  %64 = zext i8 %63 to i64
  %shl172 = shl nuw nsw i64 %64, 8
  %add173 = or i64 %shl172, %62
  %arrayidx174 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 10
  %65 = load i8, ptr %arrayidx174, align 2, !tbaa !26
  %66 = zext i8 %65 to i64
  %shl177 = shl nuw nsw i64 %66, 16
  %add178 = or i64 %add173, %shl177
  %arrayidx179 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 11
  %67 = load i8, ptr %arrayidx179, align 1, !tbaa !26
  %68 = zext i8 %67 to i64
  %shl182 = shl nuw nsw i64 %68, 24
  %add183 = or i64 %add178, %shl182
  %arrayidx184 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 12
  %69 = load i8, ptr %arrayidx184, align 4, !tbaa !26
  %conv185 = zext i8 %69 to i32
  %arrayidx186 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 13
  %70 = load i8, ptr %arrayidx186, align 1, !tbaa !26
  %conv187 = zext i8 %70 to i32
  %shl188 = shl nuw nsw i32 %conv187, 8
  %add189 = or i32 %shl188, %conv185
  %arrayidx190 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 14
  %71 = load i8, ptr %arrayidx190, align 2, !tbaa !26
  %conv191 = zext i8 %71 to i32
  %arrayidx192 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 15
  %72 = load i8, ptr %arrayidx192, align 1, !tbaa !26
  %conv193 = zext i8 %72 to i32
  %shl194 = shl nuw nsw i32 %conv193, 8
  %add195 = or i32 %shl194, %conv191
  %bits_per_pixel196 = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 6
  store i32 %add195, ptr %bits_per_pixel196, align 8, !tbaa !27
  %arrayidx197 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 16
  %73 = load i8, ptr %arrayidx197, align 16, !tbaa !26
  %74 = zext i8 %73 to i64
  %arrayidx200 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 17
  %75 = load i8, ptr %arrayidx200, align 1, !tbaa !26
  %76 = zext i8 %75 to i64
  %shl203 = shl nuw nsw i64 %76, 8
  %add204 = or i64 %shl203, %74
  %arrayidx205 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 18
  %77 = load i8, ptr %arrayidx205, align 2, !tbaa !26
  %78 = zext i8 %77 to i64
  %shl208 = shl nuw nsw i64 %78, 16
  %add209 = or i64 %add204, %shl208
  %arrayidx210 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 19
  %79 = load i8, ptr %arrayidx210, align 1, !tbaa !26
  %80 = zext i8 %79 to i64
  %shl213 = shl nuw nsw i64 %80, 24
  %add214 = or i64 %add209, %shl213
  %arrayidx215 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 24
  %81 = load i8, ptr %arrayidx215, align 8, !tbaa !26
  %82 = zext i8 %81 to i64
  %arrayidx218 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 25
  %83 = load i8, ptr %arrayidx218, align 1, !tbaa !26
  %84 = zext i8 %83 to i64
  %shl221 = shl nuw nsw i64 %84, 8
  %add222 = or i64 %shl221, %82
  %arrayidx223 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 26
  %85 = load i8, ptr %arrayidx223, align 2, !tbaa !26
  %86 = zext i8 %85 to i64
  %shl226 = shl nuw nsw i64 %86, 16
  %add227 = or i64 %add222, %shl226
  %arrayidx228 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 27
  %87 = load i8, ptr %arrayidx228, align 1, !tbaa !26
  %88 = zext i8 %87 to i64
  %shl231 = shl nuw nsw i64 %88, 24
  %add232 = or i64 %add227, %shl231
  %arrayidx233 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 28
  %89 = load i8, ptr %arrayidx233, align 4, !tbaa !26
  %90 = zext i8 %89 to i64
  %arrayidx236 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 29
  %91 = load i8, ptr %arrayidx236, align 1, !tbaa !26
  %92 = zext i8 %91 to i64
  %shl239 = shl nuw nsw i64 %92, 8
  %add240 = or i64 %shl239, %90
  %arrayidx241 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 30
  %93 = load i8, ptr %arrayidx241, align 2, !tbaa !26
  %94 = zext i8 %93 to i64
  %shl244 = shl nuw nsw i64 %94, 16
  %add245 = or i64 %add240, %shl244
  %arrayidx246 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 31
  %95 = load i8, ptr %arrayidx246, align 1, !tbaa !26
  %96 = zext i8 %95 to i64
  %shl249 = shl nuw nsw i64 %96, 24
  %add250 = or i64 %add245, %shl249
  %arrayidx251 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 32
  %97 = load i8, ptr %arrayidx251, align 16, !tbaa !26
  %98 = zext i8 %97 to i64
  %arrayidx254 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 33
  %99 = load i8, ptr %arrayidx254, align 1, !tbaa !26
  %100 = zext i8 %99 to i64
  %shl257 = shl nuw nsw i64 %100, 8
  %add258 = or i64 %shl257, %98
  %arrayidx259 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 34
  %101 = load i8, ptr %arrayidx259, align 2, !tbaa !26
  %102 = zext i8 %101 to i64
  %shl262 = shl nuw nsw i64 %102, 16
  %add263 = or i64 %add258, %shl262
  %arrayidx264 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 35
  %103 = load i8, ptr %arrayidx264, align 1, !tbaa !26
  %104 = zext i8 %103 to i64
  %shl267 = shl nuw nsw i64 %104, 24
  %add268 = or i64 %add263, %shl267
  %trunc = trunc i32 %add195 to i16
  switch i16 %trunc, label %sw.default296 [
    i16 8, label %sw.bb270
    i16 24, label %sw.bb283
  ]

sw.bb270:                                         ; preds = %sw.bb147
  %105 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code272 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 5
  store i32 1009, ptr %msg_code272, align 8, !tbaa !23
  %conv273 = trunc i64 %add165 to i32
  %msg_parm275 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 6
  store i32 %conv273, ptr %msg_parm275, align 4, !tbaa !26
  %conv277 = trunc i64 %add183 to i32
  %106 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_parm279 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 6
  %arrayidx280 = getelementptr inbounds [8 x i32], ptr %msg_parm279, i64 0, i64 1
  store i32 %conv277, ptr %arrayidx280, align 4, !tbaa !26
  %107 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %emit_message282 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 1
  %108 = load ptr, ptr %emit_message282, align 8, !tbaa !28
  tail call void %108(ptr noundef nonnull %cinfo, i32 noundef 1) #4
  br label %sw.epilog301

sw.bb283:                                         ; preds = %sw.bb147
  %109 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code285 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 1008, ptr %msg_code285, align 8, !tbaa !23
  %conv286 = trunc i64 %add165 to i32
  %msg_parm288 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 6
  store i32 %conv286, ptr %msg_parm288, align 4, !tbaa !26
  %conv290 = trunc i64 %add183 to i32
  %110 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_parm292 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i64 0, i32 6
  %arrayidx293 = getelementptr inbounds [8 x i32], ptr %msg_parm292, i64 0, i64 1
  store i32 %conv290, ptr %arrayidx293, align 4, !tbaa !26
  %111 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %emit_message295 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %111, i64 0, i32 1
  %112 = load ptr, ptr %emit_message295, align 8, !tbaa !28
  tail call void %112(ptr noundef nonnull %cinfo, i32 noundef 1) #4
  br label %sw.epilog301

sw.default296:                                    ; preds = %sw.bb147
  %113 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code298 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 1002, ptr %msg_code298, align 8, !tbaa !23
  %114 = load ptr, ptr %113, align 8, !tbaa !25
  tail call void %114(ptr noundef nonnull %cinfo) #4
  br label %sw.epilog301

sw.epilog301:                                     ; preds = %sw.default296, %sw.bb283, %sw.bb270
  %mapentrysize.1 = phi i32 [ 0, %sw.default296 ], [ 0, %sw.bb283 ], [ 4, %sw.bb270 ]
  %cmp302.not = icmp eq i32 %add189, 1
  br i1 %cmp302.not, label %if.end309, label %if.then304

if.then304:                                       ; preds = %sw.epilog301
  %115 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code306 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i64 0, i32 5
  store i32 1004, ptr %msg_code306, align 8, !tbaa !23
  %116 = load ptr, ptr %115, align 8, !tbaa !25
  tail call void %116(ptr noundef nonnull %cinfo) #4
  br label %if.end309

if.end309:                                        ; preds = %if.then304, %sw.epilog301
  %cmp310.not = icmp eq i64 %add214, 0
  br i1 %cmp310.not, label %if.end317, label %if.then312

if.then312:                                       ; preds = %if.end309
  %117 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code314 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i64 0, i32 5
  store i32 1006, ptr %msg_code314, align 8, !tbaa !23
  %118 = load ptr, ptr %117, align 8, !tbaa !25
  tail call void %118(ptr noundef nonnull %cinfo) #4
  br label %if.end317

if.end317:                                        ; preds = %if.then312, %if.end309
  %cmp318 = icmp ne i64 %add232, 0
  %cmp320 = icmp ne i64 %add250, 0
  %or.cond402 = select i1 %cmp318, i1 %cmp320, i1 false
  br i1 %or.cond402, label %if.then322, label %sw.epilog332

if.then322:                                       ; preds = %if.end317
  %div = udiv i64 %add232, 100
  %conv323 = trunc i64 %div to i16
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 33
  store i16 %conv323, ptr %X_density, align 2, !tbaa !29
  %div324 = udiv i64 %add250, 100
  %conv325 = trunc i64 %div324 to i16
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 34
  store i16 %conv325, ptr %Y_density, align 8, !tbaa !30
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 32
  store i8 2, ptr %density_unit, align 4, !tbaa !31
  br label %sw.epilog332

sw.epilog332.thread:                              ; preds = %if.end82
  %119 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code329 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %119, i64 0, i32 5
  store i32 1003, ptr %msg_code329, align 8, !tbaa !23
  %120 = load ptr, ptr %119, align 8, !tbaa !25
  tail call void %120(ptr noundef %cinfo) #4
  %add333530.neg = add nsw i64 %add29, -14
  %sub334531 = sub nsw i64 %add333530.neg, %add59
  br label %if.end355

sw.epilog332:                                     ; preds = %if.end317, %if.then322, %sw.epilog, %if.then141
  %biHeight.0 = phi i64 [ %add183, %if.then322 ], [ %add183, %if.end317 ], [ %conv97, %if.then141 ], [ %conv97, %sw.epilog ]
  %biClrUsed.0 = phi i64 [ %add268, %if.then322 ], [ %add268, %if.end317 ], [ 0, %if.then141 ], [ 0, %sw.epilog ]
  %mapentrysize.2 = phi i32 [ %mapentrysize.1, %if.then322 ], [ %mapentrysize.1, %if.end317 ], [ %mapentrysize.0, %if.then141 ], [ %mapentrysize.0, %sw.epilog ]
  %biWidth.0 = phi i64 [ %add165, %if.then322 ], [ %add165, %if.end317 ], [ %conv90, %if.then141 ], [ %conv90, %sw.epilog ]
  %add333.neg = add nsw i64 %add29, -14
  %sub334 = sub nsw i64 %add333.neg, %add59
  %cmp335.not = icmp eq i32 %mapentrysize.2, 0
  br i1 %cmp335.not, label %if.end355, label %if.then337

if.then337:                                       ; preds = %sw.epilog332
  %cmp338 = icmp slt i64 %biClrUsed.0, 1
  br i1 %cmp338, label %if.end349, label %if.else

if.else:                                          ; preds = %if.then337
  %cmp341 = icmp ugt i64 %biClrUsed.0, 256
  br i1 %cmp341, label %if.then343, label %if.end349

if.then343:                                       ; preds = %if.else
  %121 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code345 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 1001, ptr %msg_code345, align 8, !tbaa !23
  %122 = load ptr, ptr %121, align 8, !tbaa !25
  tail call void %122(ptr noundef nonnull %cinfo) #4
  br label %if.end349

if.end349:                                        ; preds = %if.then337, %if.else, %if.then343
  %biClrUsed.1 = phi i64 [ %biClrUsed.0, %if.then343 ], [ %biClrUsed.0, %if.else ], [ 256, %if.then337 ]
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %123 = load ptr, ptr %mem, align 8, !tbaa !5
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %123, i64 0, i32 2
  %124 = load ptr, ptr %alloc_sarray, align 8, !tbaa !32
  %conv350 = trunc i64 %biClrUsed.1 to i32
  %call351 = tail call ptr %124(ptr noundef nonnull %cinfo, i32 noundef 1, i32 noundef %conv350, i32 noundef 3) #4
  %colormap = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 2
  store ptr %call351, ptr %colormap, align 8, !tbaa !33
  switch i32 %mapentrysize.2, label %sw.default.i [
    i32 3, label %for.cond.preheader.i
    i32 4, label %for.cond15.preheader.i
  ]

for.cond15.preheader.i:                           ; preds = %if.end349
  %cmp16112.i = icmp sgt i32 %conv350, 0
  br i1 %cmp16112.i, label %for.body18.lr.ph.i, label %read_colormap.exit

for.body18.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %cinfo.i86.i = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 1
  %wide.trip.count.i = and i64 %biClrUsed.1, 4294967295
  br label %for.body18.i

for.cond.preheader.i:                             ; preds = %if.end349
  %cmp114.i = icmp sgt i32 %conv350, 0
  br i1 %cmp114.i, label %for.body.lr.ph.i, label %read_colormap.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cinfo.i.i = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 1
  %wide.trip.count121.i = and i64 %biClrUsed.1, 4294967295
  br label %for.body.i

for.body.i:                                       ; preds = %read_byte.exit82.i, %for.body.lr.ph.i
  %indvars.iv118.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next119.i, %read_byte.exit82.i ]
  %125 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i.i = tail call i32 @getc(ptr noundef %125) #4
  %cmp.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %read_byte.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %126 = load ptr, ptr %cinfo.i.i, align 8, !tbaa !16
  %127 = load ptr, ptr %126, align 8, !tbaa !22
  %msg_code.i.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 5
  store i32 42, ptr %msg_code.i.i, align 8, !tbaa !23
  %128 = load ptr, ptr %127, align 8, !tbaa !25
  tail call void %128(ptr noundef nonnull %126) #4
  br label %read_byte.exit.i

read_byte.exit.i:                                 ; preds = %if.then.i.i, %for.body.i
  %conv.i = trunc i32 %call.i.i to i8
  %129 = load ptr, ptr %colormap, align 8, !tbaa !33
  %arrayidx.i = getelementptr inbounds ptr, ptr %129, i64 2
  %130 = load ptr, ptr %arrayidx.i, align 8, !tbaa !34
  %arrayidx1.i = getelementptr inbounds i8, ptr %130, i64 %indvars.iv118.i
  store i8 %conv.i, ptr %arrayidx1.i, align 1, !tbaa !26
  %131 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i70.i = tail call i32 @getc(ptr noundef %131) #4
  %cmp.i71.i = icmp eq i32 %call.i70.i, -1
  br i1 %cmp.i71.i, label %if.then.i74.i, label %read_byte.exit75.i

if.then.i74.i:                                    ; preds = %read_byte.exit.i
  %132 = load ptr, ptr %cinfo.i.i, align 8, !tbaa !16
  %133 = load ptr, ptr %132, align 8, !tbaa !22
  %msg_code.i73.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 5
  store i32 42, ptr %msg_code.i73.i, align 8, !tbaa !23
  %134 = load ptr, ptr %133, align 8, !tbaa !25
  tail call void %134(ptr noundef nonnull %132) #4
  br label %read_byte.exit75.i

read_byte.exit75.i:                               ; preds = %if.then.i74.i, %read_byte.exit.i
  %conv3.i = trunc i32 %call.i70.i to i8
  %135 = load ptr, ptr %colormap, align 8, !tbaa !33
  %arrayidx5.i = getelementptr inbounds ptr, ptr %135, i64 1
  %136 = load ptr, ptr %arrayidx5.i, align 8, !tbaa !34
  %arrayidx7.i = getelementptr inbounds i8, ptr %136, i64 %indvars.iv118.i
  store i8 %conv3.i, ptr %arrayidx7.i, align 1, !tbaa !26
  %137 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i77.i = tail call i32 @getc(ptr noundef %137) #4
  %cmp.i78.i = icmp eq i32 %call.i77.i, -1
  br i1 %cmp.i78.i, label %if.then.i81.i, label %read_byte.exit82.i

if.then.i81.i:                                    ; preds = %read_byte.exit75.i
  %138 = load ptr, ptr %cinfo.i.i, align 8, !tbaa !16
  %139 = load ptr, ptr %138, align 8, !tbaa !22
  %msg_code.i80.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i64 0, i32 5
  store i32 42, ptr %msg_code.i80.i, align 8, !tbaa !23
  %140 = load ptr, ptr %139, align 8, !tbaa !25
  tail call void %140(ptr noundef nonnull %138) #4
  br label %read_byte.exit82.i

read_byte.exit82.i:                               ; preds = %if.then.i81.i, %read_byte.exit75.i
  %conv9.i = trunc i32 %call.i77.i to i8
  %141 = load ptr, ptr %colormap, align 8, !tbaa !33
  %142 = load ptr, ptr %141, align 8, !tbaa !34
  %arrayidx13.i = getelementptr inbounds i8, ptr %142, i64 %indvars.iv118.i
  store i8 %conv9.i, ptr %arrayidx13.i, align 1, !tbaa !26
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next119.i, %wide.trip.count121.i
  br i1 %exitcond122.not.i, label %read_colormap.exit, label %for.body.i, !llvm.loop !35

for.body18.i:                                     ; preds = %read_byte.exit110.i, %for.body18.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next.i, %read_byte.exit110.i ]
  %143 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i84.i = tail call i32 @getc(ptr noundef %143) #4
  %cmp.i85.i = icmp eq i32 %call.i84.i, -1
  br i1 %cmp.i85.i, label %if.then.i88.i, label %read_byte.exit89.i

if.then.i88.i:                                    ; preds = %for.body18.i
  %144 = load ptr, ptr %cinfo.i86.i, align 8, !tbaa !16
  %145 = load ptr, ptr %144, align 8, !tbaa !22
  %msg_code.i87.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %145, i64 0, i32 5
  store i32 42, ptr %msg_code.i87.i, align 8, !tbaa !23
  %146 = load ptr, ptr %145, align 8, !tbaa !25
  tail call void %146(ptr noundef nonnull %144) #4
  br label %read_byte.exit89.i

read_byte.exit89.i:                               ; preds = %if.then.i88.i, %for.body18.i
  %conv20.i = trunc i32 %call.i84.i to i8
  %147 = load ptr, ptr %colormap, align 8, !tbaa !33
  %arrayidx22.i = getelementptr inbounds ptr, ptr %147, i64 2
  %148 = load ptr, ptr %arrayidx22.i, align 8, !tbaa !34
  %arrayidx24.i = getelementptr inbounds i8, ptr %148, i64 %indvars.iv.i
  store i8 %conv20.i, ptr %arrayidx24.i, align 1, !tbaa !26
  %149 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i91.i = tail call i32 @getc(ptr noundef %149) #4
  %cmp.i92.i = icmp eq i32 %call.i91.i, -1
  br i1 %cmp.i92.i, label %if.then.i95.i, label %read_byte.exit96.i

if.then.i95.i:                                    ; preds = %read_byte.exit89.i
  %150 = load ptr, ptr %cinfo.i86.i, align 8, !tbaa !16
  %151 = load ptr, ptr %150, align 8, !tbaa !22
  %msg_code.i94.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %151, i64 0, i32 5
  store i32 42, ptr %msg_code.i94.i, align 8, !tbaa !23
  %152 = load ptr, ptr %151, align 8, !tbaa !25
  tail call void %152(ptr noundef nonnull %150) #4
  br label %read_byte.exit96.i

read_byte.exit96.i:                               ; preds = %if.then.i95.i, %read_byte.exit89.i
  %conv26.i = trunc i32 %call.i91.i to i8
  %153 = load ptr, ptr %colormap, align 8, !tbaa !33
  %arrayidx28.i = getelementptr inbounds ptr, ptr %153, i64 1
  %154 = load ptr, ptr %arrayidx28.i, align 8, !tbaa !34
  %arrayidx30.i = getelementptr inbounds i8, ptr %154, i64 %indvars.iv.i
  store i8 %conv26.i, ptr %arrayidx30.i, align 1, !tbaa !26
  %155 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i98.i = tail call i32 @getc(ptr noundef %155) #4
  %cmp.i99.i = icmp eq i32 %call.i98.i, -1
  br i1 %cmp.i99.i, label %if.then.i102.i, label %read_byte.exit103.i

if.then.i102.i:                                   ; preds = %read_byte.exit96.i
  %156 = load ptr, ptr %cinfo.i86.i, align 8, !tbaa !16
  %157 = load ptr, ptr %156, align 8, !tbaa !22
  %msg_code.i101.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %157, i64 0, i32 5
  store i32 42, ptr %msg_code.i101.i, align 8, !tbaa !23
  %158 = load ptr, ptr %157, align 8, !tbaa !25
  tail call void %158(ptr noundef nonnull %156) #4
  br label %read_byte.exit103.i

read_byte.exit103.i:                              ; preds = %if.then.i102.i, %read_byte.exit96.i
  %conv32.i = trunc i32 %call.i98.i to i8
  %159 = load ptr, ptr %colormap, align 8, !tbaa !33
  %160 = load ptr, ptr %159, align 8, !tbaa !34
  %arrayidx36.i = getelementptr inbounds i8, ptr %160, i64 %indvars.iv.i
  store i8 %conv32.i, ptr %arrayidx36.i, align 1, !tbaa !26
  %161 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i105.i = tail call i32 @getc(ptr noundef %161) #4
  %cmp.i106.i = icmp eq i32 %call.i105.i, -1
  br i1 %cmp.i106.i, label %if.then.i109.i, label %read_byte.exit110.i

if.then.i109.i:                                   ; preds = %read_byte.exit103.i
  %162 = load ptr, ptr %cinfo.i86.i, align 8, !tbaa !16
  %163 = load ptr, ptr %162, align 8, !tbaa !22
  %msg_code.i108.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %163, i64 0, i32 5
  store i32 42, ptr %msg_code.i108.i, align 8, !tbaa !23
  %164 = load ptr, ptr %163, align 8, !tbaa !25
  tail call void %164(ptr noundef nonnull %162) #4
  br label %read_byte.exit110.i

read_byte.exit110.i:                              ; preds = %if.then.i109.i, %read_byte.exit103.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %read_colormap.exit, label %for.body18.i, !llvm.loop !37

sw.default.i:                                     ; preds = %if.end349
  %cinfo.i = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 1
  %165 = load ptr, ptr %cinfo.i, align 8, !tbaa !16
  %166 = load ptr, ptr %165, align 8, !tbaa !22
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %166, i64 0, i32 5
  store i32 1001, ptr %msg_code.i, align 8, !tbaa !23
  %167 = load ptr, ptr %166, align 8, !tbaa !25
  tail call void %167(ptr noundef nonnull %165) #4
  br label %read_colormap.exit

read_colormap.exit:                               ; preds = %read_byte.exit110.i, %read_byte.exit82.i, %for.cond15.preheader.i, %for.cond.preheader.i, %sw.default.i
  %168 = zext i32 %mapentrysize.2 to i64
  %mul = mul nsw i64 %biClrUsed.1, %168
  %sub354 = sub nsw i64 %sub334, %mul
  br label %if.end355

if.end355:                                        ; preds = %sw.epilog332.thread, %read_colormap.exit, %sw.epilog332
  %biWidth.0534 = phi i64 [ %biWidth.0, %read_colormap.exit ], [ %biWidth.0, %sw.epilog332 ], [ 0, %sw.epilog332.thread ]
  %biHeight.0533 = phi i64 [ %biHeight.0, %read_colormap.exit ], [ %biHeight.0, %sw.epilog332 ], [ 0, %sw.epilog332.thread ]
  %bPad.0 = phi i64 [ %sub354, %read_colormap.exit ], [ %sub334, %sw.epilog332 ], [ %sub334531, %sw.epilog332.thread ]
  %cmp356 = icmp slt i64 %bPad.0, 0
  br i1 %cmp356, label %if.end363.thread, label %if.end363

if.end363.thread:                                 ; preds = %if.end355
  %169 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code360 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %169, i64 0, i32 5
  store i32 1003, ptr %msg_code360, align 8, !tbaa !23
  %170 = load ptr, ptr %169, align 8, !tbaa !25
  tail call void %170(ptr noundef %cinfo) #4
  br label %while.end

if.end363:                                        ; preds = %if.end355
  %cmp364536.not = icmp eq i64 %bPad.0, 0
  br i1 %cmp364536.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end363
  %cinfo.i524 = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %read_byte.exit
  %bPad.1537 = phi i64 [ %bPad.0, %while.body.lr.ph ], [ %dec, %read_byte.exit ]
  %dec = add nsw i64 %bPad.1537, -1
  %171 = load ptr, ptr %input_file, align 8, !tbaa !21
  %call.i = tail call i32 @getc(ptr noundef %171) #4
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %read_byte.exit

if.then.i:                                        ; preds = %while.body
  %172 = load ptr, ptr %cinfo.i524, align 8, !tbaa !16
  %173 = load ptr, ptr %172, align 8, !tbaa !22
  %msg_code.i525 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %173, i64 0, i32 5
  store i32 42, ptr %msg_code.i525, align 8, !tbaa !23
  %174 = load ptr, ptr %173, align 8, !tbaa !25
  tail call void %174(ptr noundef nonnull %172) #4
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %while.body, %if.then.i
  %cmp364 = icmp ugt i64 %bPad.1537, 1
  br i1 %cmp364, label %while.body, label %while.end, !llvm.loop !38

while.end:                                        ; preds = %read_byte.exit, %if.end363.thread, %if.end363
  %bits_per_pixel367 = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 6
  %175 = load i32, ptr %bits_per_pixel367, align 8, !tbaa !27
  %cmp368 = icmp eq i32 %175, 24
  %mul371 = mul nsw i64 %biWidth.0534, 3
  %spec.select = select i1 %cmp368, i64 %mul371, i64 %biWidth.0534
  %row_width.0 = trunc i64 %spec.select to i32
  %176 = trunc i64 %spec.select to i32
  %177 = sub i32 0, %176
  %178 = and i32 %177, 3
  %179 = add i32 %178, %row_width.0
  %row_width381 = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 5
  store i32 %179, ptr %row_width381, align 4, !tbaa !39
  %mem382 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %180 = load ptr, ptr %mem382, align 8, !tbaa !5
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %180, i64 0, i32 4
  %181 = load ptr, ptr %request_virt_sarray, align 8, !tbaa !40
  %conv383 = trunc i64 %biHeight.0533 to i32
  %call384 = tail call ptr %181(ptr noundef %cinfo, i32 noundef 1, i32 noundef 0, i32 noundef %179, i32 noundef %conv383, i32 noundef 1) #4
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 3
  store ptr %call384, ptr %whole_image, align 8, !tbaa !41
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 1
  store ptr @preload_image, ptr %get_pixel_rows, align 8, !tbaa !42
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 2
  %182 = load ptr, ptr %progress, align 8, !tbaa !43
  %cmp386.not = icmp eq ptr %182, null
  br i1 %cmp386.not, label %if.end392, label %if.then388

if.then388:                                       ; preds = %while.end
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %182, i64 0, i32 2
  %183 = load i32, ptr %total_extra_passes, align 4, !tbaa !44
  %inc391 = add nsw i32 %183, 1
  store i32 %inc391, ptr %total_extra_passes, align 4, !tbaa !44
  br label %if.end392

if.end392:                                        ; preds = %if.then388, %while.end
  %184 = load ptr, ptr %mem382, align 8, !tbaa !5
  %alloc_sarray394 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %184, i64 0, i32 2
  %185 = load ptr, ptr %alloc_sarray394, align 8, !tbaa !32
  %186 = trunc i64 %biWidth.0534 to i32
  %conv396 = mul i32 %186, 3
  %call397 = tail call ptr %185(ptr noundef nonnull %cinfo, i32 noundef 1, i32 noundef %conv396, i32 noundef 1) #4
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  store ptr %call397, ptr %buffer, align 8, !tbaa !47
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8, !tbaa !48
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 9
  store i32 2, ptr %in_color_space, align 4, !tbaa !49
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 8
  store i32 3, ptr %input_components, align 8, !tbaa !50
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8, !tbaa !51
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  store i32 %186, ptr %image_width, align 8, !tbaa !52
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  store i32 %conv383, ptr %image_height, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bmpinfoheader) #4
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %bmpfileheader) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal void @finish_input_bmp(ptr nocapture noundef %cinfo, ptr nocapture noundef %sinfo) #2 {
entry:
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @preload_image(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8, !tbaa !21
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 2
  %1 = load ptr, ptr %progress1, align 8, !tbaa !43
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  %2 = load i32, ptr %image_height, align 4, !tbaa !53
  %cmp71.not = icmp eq i32 %2, 0
  br i1 %cmp71.not, label %for.end20, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp2.not = icmp eq ptr %1, null
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %1, i64 0, i32 1
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %1, i64 0, i32 2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 3
  %row_width = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 5
  br i1 %cmp2.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc19.us
  %row.072.us = phi i32 [ %inc.us, %for.inc19.us ], [ 0, %for.body.lr.ph ]
  %3 = load ptr, ptr %mem, align 8, !tbaa !5
  %access_virt_sarray.us = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %access_virt_sarray.us, align 8, !tbaa !54
  %5 = load ptr, ptr %whole_image, align 8, !tbaa !41
  %call.us = tail call ptr %4(ptr noundef nonnull %cinfo, ptr noundef %5, i32 noundef %row.072.us, i32 noundef 1, i32 noundef 1) #4
  %6 = load i32, ptr %row_width, align 4, !tbaa !39
  %cmp9.not68.us = icmp eq i32 %6, 0
  br i1 %cmp9.not68.us, label %for.inc19.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %for.body.us
  %7 = load ptr, ptr %call.us, align 8, !tbaa !34
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %if.end17.us
  %out_ptr.070.us = phi ptr [ %incdec.ptr.us, %if.end17.us ], [ %7, %for.body11.us.preheader ]
  %col.069.us = phi i32 [ %dec.us, %if.end17.us ], [ %6, %for.body11.us.preheader ]
  %call12.us = tail call i32 @getc(ptr noundef %0)
  %cmp13.us = icmp eq i32 %call12.us, -1
  br i1 %cmp13.us, label %if.then15.us, label %if.end17.us

if.then15.us:                                     ; preds = %for.body11.us
  %8 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code.us = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 42, ptr %msg_code.us, align 8, !tbaa !23
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  tail call void %9(ptr noundef nonnull %cinfo) #4
  br label %if.end17.us

if.end17.us:                                      ; preds = %if.then15.us, %for.body11.us
  %conv18.us = trunc i32 %call12.us to i8
  %incdec.ptr.us = getelementptr inbounds i8, ptr %out_ptr.070.us, i64 1
  store i8 %conv18.us, ptr %out_ptr.070.us, align 1, !tbaa !26
  %dec.us = add i32 %col.069.us, -1
  %cmp9.not.us = icmp eq i32 %dec.us, 0
  br i1 %cmp9.not.us, label %for.inc19.us, label %for.body11.us, !llvm.loop !55

for.inc19.us:                                     ; preds = %if.end17.us, %for.body.us
  %inc.us = add nuw i32 %row.072.us, 1
  %10 = load i32, ptr %image_height, align 4, !tbaa !53
  %cmp.us = icmp ult i32 %inc.us, %10
  br i1 %cmp.us, label %for.body.us, label %for.end20, !llvm.loop !56

for.body:                                         ; preds = %for.body.lr.ph, %for.inc19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc19 ], [ 0, %for.body.lr.ph ]
  %11 = phi i32 [ %21, %for.inc19 ], [ %2, %for.body.lr.ph ]
  store i64 %indvars.iv, ptr %pass_counter, align 8, !tbaa !57
  %conv5 = zext i32 %11 to i64
  store i64 %conv5, ptr %pass_limit, align 8, !tbaa !58
  %12 = load ptr, ptr %1, align 8, !tbaa !59
  tail call void %12(ptr noundef nonnull %cinfo) #4
  %13 = load ptr, ptr %mem, align 8, !tbaa !5
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i64 0, i32 7
  %14 = load ptr, ptr %access_virt_sarray, align 8, !tbaa !54
  %15 = load ptr, ptr %whole_image, align 8, !tbaa !41
  %16 = trunc i64 %indvars.iv to i32
  %call = tail call ptr %14(ptr noundef nonnull %cinfo, ptr noundef %15, i32 noundef %16, i32 noundef 1, i32 noundef 1) #4
  %17 = load i32, ptr %row_width, align 4, !tbaa !39
  %cmp9.not68 = icmp eq i32 %17, 0
  br i1 %cmp9.not68, label %for.inc19, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.body
  %18 = load ptr, ptr %call, align 8, !tbaa !34
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader, %if.end17
  %out_ptr.070 = phi ptr [ %incdec.ptr, %if.end17 ], [ %18, %for.body11.preheader ]
  %col.069 = phi i32 [ %dec, %if.end17 ], [ %17, %for.body11.preheader ]
  %call12 = tail call i32 @getc(ptr noundef %0)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body11
  %19 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8, !tbaa !23
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  tail call void %20(ptr noundef nonnull %cinfo) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body11
  %conv18 = trunc i32 %call12 to i8
  %incdec.ptr = getelementptr inbounds i8, ptr %out_ptr.070, i64 1
  store i8 %conv18, ptr %out_ptr.070, align 1, !tbaa !26
  %dec = add i32 %col.069, -1
  %cmp9.not = icmp eq i32 %dec, 0
  br i1 %cmp9.not, label %for.inc19, label %for.body11, !llvm.loop !55

for.inc19:                                        ; preds = %if.end17, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = load i32, ptr %image_height, align 4, !tbaa !53
  %22 = zext i32 %21 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %22
  br i1 %cmp, label %for.body, label %for.end20, !llvm.loop !56

for.end20:                                        ; preds = %for.inc19, %for.inc19.us, %entry
  %23 = phi i32 [ 0, %entry ], [ %10, %for.inc19.us ], [ %21, %for.inc19 ]
  %cmp21.not = icmp eq ptr %1, null
  br i1 %cmp21.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %for.end20
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %completed_extra_passes, align 8, !tbaa !60
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, ptr %completed_extra_passes, align 8, !tbaa !60
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end20
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 6
  %25 = load i32, ptr %bits_per_pixel, align 8, !tbaa !27
  switch i32 %25, label %sw.default [
    i32 8, label %sw.bb
    i32 24, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end25
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 1
  store ptr @get_8bit_row, ptr %get_pixel_rows, align 8, !tbaa !42
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end25
  %get_pixel_rows29 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 1
  store ptr @get_24bit_row, ptr %get_pixel_rows29, align 8, !tbaa !42
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  %26 = load ptr, ptr %cinfo, align 8, !tbaa !22
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 1002, ptr %msg_code31, align 8, !tbaa !23
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  tail call void %27(ptr noundef nonnull %cinfo) #4
  %.pre = load i32, ptr %image_height, align 4, !tbaa !53
  %get_pixel_rows36.phi.trans.insert = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 1
  %.pre76 = load ptr, ptr %get_pixel_rows36.phi.trans.insert, align 8, !tbaa !42
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb
  %28 = phi ptr [ %.pre76, %sw.default ], [ @get_24bit_row, %sw.bb27 ], [ @get_8bit_row, %sw.bb ]
  %29 = phi i32 [ %.pre, %sw.default ], [ %23, %sw.bb27 ], [ %23, %sw.bb ]
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 4
  store i32 %29, ptr %source_row, align 8, !tbaa !61
  %call37 = tail call i32 %28(ptr noundef nonnull %cinfo, ptr noundef nonnull %sinfo) #4
  ret i32 %call37
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @get_8bit_row(ptr noundef %cinfo, ptr nocapture noundef %sinfo) #0 {
entry:
  %colormap1 = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 2
  %0 = load ptr, ptr %colormap1, align 8, !tbaa !33
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 4
  %1 = load i32, ptr %source_row, align 8, !tbaa !61
  %dec = add i32 %1, -1
  store i32 %dec, ptr %source_row, align 8, !tbaa !61
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %2 = load ptr, ptr %mem, align 8, !tbaa !5
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %access_virt_sarray, align 8, !tbaa !54
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 3
  %4 = load ptr, ptr %whole_image, align 8, !tbaa !41
  %call = tail call ptr %3(ptr noundef %cinfo, ptr noundef %4, i32 noundef %dec, i32 noundef 1, i32 noundef 0) #4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %5 = load i32, ptr %image_width, align 8, !tbaa !52
  %cmp.not29 = icmp eq i32 %5, 0
  br i1 %cmp.not29, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  %6 = load ptr, ptr %buffer, align 8, !tbaa !47
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %call, align 8, !tbaa !34
  %arrayidx7 = getelementptr inbounds ptr, ptr %0, i64 1
  %arrayidx11 = getelementptr inbounds ptr, ptr %0, i64 2
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.lr.ph
  %incdec.ptr.prol = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !26
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = zext i8 %9 to i64
  %arrayidx5.prol = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx5.prol, align 1, !tbaa !26
  %incdec.ptr6.prol = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %12, ptr %7, align 1, !tbaa !26
  %13 = load ptr, ptr %arrayidx7, align 8, !tbaa !34
  %arrayidx9.prol = getelementptr inbounds i8, ptr %13, i64 %11
  %14 = load i8, ptr %arrayidx9.prol, align 1, !tbaa !26
  %incdec.ptr10.prol = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %14, ptr %incdec.ptr6.prol, align 1, !tbaa !26
  %15 = load ptr, ptr %arrayidx11, align 8, !tbaa !34
  %arrayidx13.prol = getelementptr inbounds i8, ptr %15, i64 %11
  %16 = load i8, ptr %arrayidx13.prol, align 1, !tbaa !26
  %incdec.ptr14.prol = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %16, ptr %incdec.ptr10.prol, align 1, !tbaa !26
  %dec15.prol = add i32 %5, -1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.lr.ph
  %col.032.unr = phi i32 [ %5, %for.body.lr.ph ], [ %dec15.prol, %for.body.prol ]
  %outptr.031.unr = phi ptr [ %7, %for.body.lr.ph ], [ %incdec.ptr14.prol, %for.body.prol ]
  %inptr.030.unr = phi ptr [ %8, %for.body.lr.ph ], [ %incdec.ptr.prol, %for.body.prol ]
  %17 = icmp eq i32 %5, 1
  br i1 %17, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %col.032 = phi i32 [ %dec15.1, %for.body ], [ %col.032.unr, %for.body.prol.loopexit ]
  %outptr.031 = phi ptr [ %incdec.ptr14.1, %for.body ], [ %outptr.031.unr, %for.body.prol.loopexit ]
  %inptr.030 = phi ptr [ %incdec.ptr.1, %for.body ], [ %inptr.030.unr, %for.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i8, ptr %inptr.030, i64 1
  %18 = load i8, ptr %inptr.030, align 1, !tbaa !26
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = zext i8 %18 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx5, align 1, !tbaa !26
  %incdec.ptr6 = getelementptr inbounds i8, ptr %outptr.031, i64 1
  store i8 %21, ptr %outptr.031, align 1, !tbaa !26
  %22 = load ptr, ptr %arrayidx7, align 8, !tbaa !34
  %arrayidx9 = getelementptr inbounds i8, ptr %22, i64 %20
  %23 = load i8, ptr %arrayidx9, align 1, !tbaa !26
  %incdec.ptr10 = getelementptr inbounds i8, ptr %outptr.031, i64 2
  store i8 %23, ptr %incdec.ptr6, align 1, !tbaa !26
  %24 = load ptr, ptr %arrayidx11, align 8, !tbaa !34
  %arrayidx13 = getelementptr inbounds i8, ptr %24, i64 %20
  %25 = load i8, ptr %arrayidx13, align 1, !tbaa !26
  %incdec.ptr14 = getelementptr inbounds i8, ptr %outptr.031, i64 3
  store i8 %25, ptr %incdec.ptr10, align 1, !tbaa !26
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %inptr.030, i64 2
  %26 = load i8, ptr %incdec.ptr, align 1, !tbaa !26
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = zext i8 %26 to i64
  %arrayidx5.1 = getelementptr inbounds i8, ptr %27, i64 %28
  %29 = load i8, ptr %arrayidx5.1, align 1, !tbaa !26
  %incdec.ptr6.1 = getelementptr inbounds i8, ptr %outptr.031, i64 4
  store i8 %29, ptr %incdec.ptr14, align 1, !tbaa !26
  %30 = load ptr, ptr %arrayidx7, align 8, !tbaa !34
  %arrayidx9.1 = getelementptr inbounds i8, ptr %30, i64 %28
  %31 = load i8, ptr %arrayidx9.1, align 1, !tbaa !26
  %incdec.ptr10.1 = getelementptr inbounds i8, ptr %outptr.031, i64 5
  store i8 %31, ptr %incdec.ptr6.1, align 1, !tbaa !26
  %32 = load ptr, ptr %arrayidx11, align 8, !tbaa !34
  %arrayidx13.1 = getelementptr inbounds i8, ptr %32, i64 %28
  %33 = load i8, ptr %arrayidx13.1, align 1, !tbaa !26
  %incdec.ptr14.1 = getelementptr inbounds i8, ptr %outptr.031, i64 6
  store i8 %33, ptr %incdec.ptr10.1, align 1, !tbaa !26
  %dec15.1 = add i32 %col.032, -2
  %cmp.not.1 = icmp eq i32 %dec15.1, 0
  br i1 %cmp.not.1, label %for.end, label %for.body, !llvm.loop !62

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_24bit_row(ptr noundef %cinfo, ptr nocapture noundef %sinfo) #0 {
entry:
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load i32, ptr %source_row, align 8, !tbaa !61
  %dec = add i32 %0, -1
  store i32 %dec, ptr %source_row, align 8, !tbaa !61
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %1 = load ptr, ptr %mem, align 8, !tbaa !5
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %access_virt_sarray, align 8, !tbaa !54
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 3
  %3 = load ptr, ptr %whole_image, align 8, !tbaa !41
  %call = tail call ptr %2(ptr noundef %cinfo, ptr noundef %3, i32 noundef %dec, i32 noundef 1, i32 noundef 0) #4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %4 = load i32, ptr %image_width, align 8, !tbaa !52
  %cmp.not20 = icmp eq i32 %4, 0
  br i1 %cmp.not20, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  %5 = load ptr, ptr %buffer, align 8, !tbaa !47
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %call, align 8, !tbaa !34
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %incdec.ptr.prol = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !26
  %arrayidx3.prol = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %8, ptr %arrayidx3.prol, align 1, !tbaa !26
  %incdec.ptr4.prol = getelementptr inbounds i8, ptr %7, i64 2
  %9 = load i8, ptr %incdec.ptr.prol, align 1, !tbaa !26
  %arrayidx5.prol = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %9, ptr %arrayidx5.prol, align 1, !tbaa !26
  %incdec.ptr6.prol = getelementptr inbounds i8, ptr %7, i64 3
  %10 = load i8, ptr %incdec.ptr4.prol, align 1, !tbaa !26
  store i8 %10, ptr %6, align 1, !tbaa !26
  %add.ptr.prol = getelementptr inbounds i8, ptr %6, i64 3
  %dec8.prol = add i32 %4, -1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %col.023.unr = phi i32 [ %4, %for.body.preheader ], [ %dec8.prol, %for.body.prol ]
  %outptr.022.unr = phi ptr [ %6, %for.body.preheader ], [ %add.ptr.prol, %for.body.prol ]
  %inptr.021.unr = phi ptr [ %7, %for.body.preheader ], [ %incdec.ptr6.prol, %for.body.prol ]
  %11 = icmp eq i32 %4, 1
  br i1 %11, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %col.023 = phi i32 [ %dec8.1, %for.body ], [ %col.023.unr, %for.body.prol.loopexit ]
  %outptr.022 = phi ptr [ %add.ptr.1, %for.body ], [ %outptr.022.unr, %for.body.prol.loopexit ]
  %inptr.021 = phi ptr [ %incdec.ptr6.1, %for.body ], [ %inptr.021.unr, %for.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i8, ptr %inptr.021, i64 1
  %12 = load i8, ptr %inptr.021, align 1, !tbaa !26
  %arrayidx3 = getelementptr inbounds i8, ptr %outptr.022, i64 2
  store i8 %12, ptr %arrayidx3, align 1, !tbaa !26
  %incdec.ptr4 = getelementptr inbounds i8, ptr %inptr.021, i64 2
  %13 = load i8, ptr %incdec.ptr, align 1, !tbaa !26
  %arrayidx5 = getelementptr inbounds i8, ptr %outptr.022, i64 1
  store i8 %13, ptr %arrayidx5, align 1, !tbaa !26
  %incdec.ptr6 = getelementptr inbounds i8, ptr %inptr.021, i64 3
  %14 = load i8, ptr %incdec.ptr4, align 1, !tbaa !26
  store i8 %14, ptr %outptr.022, align 1, !tbaa !26
  %add.ptr = getelementptr inbounds i8, ptr %outptr.022, i64 3
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %inptr.021, i64 4
  %15 = load i8, ptr %incdec.ptr6, align 1, !tbaa !26
  %arrayidx3.1 = getelementptr inbounds i8, ptr %outptr.022, i64 5
  store i8 %15, ptr %arrayidx3.1, align 1, !tbaa !26
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %inptr.021, i64 5
  %16 = load i8, ptr %incdec.ptr.1, align 1, !tbaa !26
  %arrayidx5.1 = getelementptr inbounds i8, ptr %outptr.022, i64 4
  store i8 %16, ptr %arrayidx5.1, align 1, !tbaa !26
  %incdec.ptr6.1 = getelementptr inbounds i8, ptr %inptr.021, i64 6
  %17 = load i8, ptr %incdec.ptr4.1, align 1, !tbaa !26
  store i8 %17, ptr %add.ptr, align 1, !tbaa !26
  %add.ptr.1 = getelementptr inbounds i8, ptr %outptr.022, i64 6
  %dec8.1 = add i32 %col.023, -2
  %cmp.not.1 = icmp eq i32 %dec8.1, 0
  br i1 %cmp.not.1, label %for.end, label %for.body, !llvm.loop !63

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %entry
  ret i32 1
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!16 = !{!17, !7, i64 48}
!17 = !{!"_bmp_source_struct", !18, i64 0, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 76, !10, i64 80}
!18 = !{!"cjpeg_source_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 0}
!20 = !{!17, !7, i64 16}
!21 = !{!17, !7, i64 24}
!22 = !{!6, !7, i64 0}
!23 = !{!24, !10, i64 40}
!24 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!25 = !{!24, !7, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!17, !10, i64 80}
!28 = !{!24, !7, i64 8}
!29 = !{!6, !12, i64 286}
!30 = !{!6, !12, i64 288}
!31 = !{!6, !8, i64 284}
!32 = !{!14, !7, i64 16}
!33 = !{!17, !7, i64 56}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = !{!17, !10, i64 76}
!40 = !{!14, !7, i64 32}
!41 = !{!17, !7, i64 64}
!42 = !{!17, !7, i64 8}
!43 = !{!6, !7, i64 16}
!44 = !{!45, !10, i64 36}
!45 = !{!"cdjpeg_progress_mgr", !46, i64 0, !10, i64 32, !10, i64 36, !10, i64 40}
!46 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!47 = !{!17, !7, i64 32}
!48 = !{!17, !10, i64 40}
!49 = !{!6, !8, i64 52}
!50 = !{!6, !10, i64 48}
!51 = !{!6, !10, i64 64}
!52 = !{!6, !10, i64 40}
!53 = !{!6, !10, i64 44}
!54 = !{!14, !7, i64 56}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36}
!57 = !{!45, !15, i64 8}
!58 = !{!45, !15, i64 16}
!59 = !{!45, !7, i64 0}
!60 = !{!45, !10, i64 32}
!61 = !{!17, !10, i64 72}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
