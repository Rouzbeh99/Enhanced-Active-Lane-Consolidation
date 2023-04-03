; ModuleID = 'jcdctmgr.c'
source_filename = "jcdctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, ptr, [4 x ptr], ptr, [4 x ptr] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@start_pass_fdctmgr.aanscales = internal unnamed_addr constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass_fdctmgr.aanscalefactor = internal unnamed_addr constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: nounwind uwtable
define dso_local void @jinit_forward_dct(ptr noundef %cinfo) local_unnamed_addr #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !13
  %call = tail call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 96) #4
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 58
  store ptr %call, ptr %fdct1, align 8, !tbaa !16
  store ptr @start_pass_fdctmgr, ptr %call, align 8, !tbaa !17
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 28
  %2 = load i32, ptr %dct_method, align 4, !tbaa !20
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, ptr %call, i64 0, i32 1
  store ptr @forward_DCT, ptr %forward_DCT, align 8, !tbaa !21
  %do_dct = getelementptr inbounds %struct.my_fdct_controller, ptr %call, i64 0, i32 1
  store ptr @jpeg_fdct_islow, ptr %do_dct, align 8, !tbaa !22
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %forward_DCT5 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %call, i64 0, i32 1
  store ptr @forward_DCT, ptr %forward_DCT5, align 8, !tbaa !21
  %do_dct6 = getelementptr inbounds %struct.my_fdct_controller, ptr %call, i64 0, i32 1
  store ptr @jpeg_fdct_ifast, ptr %do_dct6, align 8, !tbaa !22
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %forward_DCT9 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %call, i64 0, i32 1
  store ptr @forward_DCT_float, ptr %forward_DCT9, align 8, !tbaa !21
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, ptr %call, i64 0, i32 3
  store ptr @jpeg_fdct_float, ptr %do_float_dct, align 8, !tbaa !23
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 47, ptr %msg_code, align 8, !tbaa !25
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  tail call void %4(ptr noundef nonnull %cinfo) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb3, %sw.bb
  %uglygep = getelementptr i8, ptr %call, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uglygep, i8 0, i64 32, i1 false), !tbaa !28
  %uglygep32 = getelementptr i8, ptr %call, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uglygep32, i8 0, i64 32, i1 false), !tbaa !28
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_fdctmgr(ptr noundef %cinfo) #0 {
entry:
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 58
  %0 = load ptr, ptr %fdct1, align 8, !tbaa !16
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %1 = load i32, ptr %num_components, align 4, !tbaa !29
  %cmp184 = icmp sgt i32 %1, 0
  br i1 %cmp184, label %for.body.lr.ph, label %for.end115

for.body.lr.ph:                                   ; preds = %entry
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %2 = load ptr, ptr %comp_info, align 8, !tbaa !30
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 28
  %mem70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc113
  %ci.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %inc114, %for.inc113 ]
  %compptr.0185 = phi ptr [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.inc113 ]
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0185, i64 0, i32 4
  %3 = load i32, ptr %quant_tbl_no, align 8, !tbaa !31
  %4 = icmp ugt i32 %3, 3
  br i1 %4, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %for.body
  %idxprom175 = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 15, i64 %idxprom175
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !28
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %for.body
  %6 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 51, ptr %msg_code, align 8, !tbaa !25
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4, !tbaa !33
  %7 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  tail call void %8(ptr noundef nonnull %cinfo) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false4
  %idxprom10 = sext i32 %3 to i64
  %arrayidx11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 15, i64 %idxprom10
  %9 = load ptr, ptr %arrayidx11, align 8, !tbaa !28
  %10 = load i32, ptr %dct_method, align 4, !tbaa !20
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx13 = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 2, i64 %idxprom10
  %11 = load ptr, ptr %arrayidx13, align 8, !tbaa !28
  %cmp14 = icmp eq ptr %11, null
  br i1 %cmp14, label %if.then15, label %vector.body

if.then15:                                        ; preds = %sw.bb
  %12 = load ptr, ptr %mem70, align 8, !tbaa !5
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %call = tail call ptr %13(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef 256) #4
  store ptr %call, ptr %arrayidx13, align 8, !tbaa !28
  br label %vector.body

vector.body:                                      ; preds = %if.then15, %sw.bb
  %14 = phi ptr [ %call, %if.then15 ], [ %11, %sw.bb ]
  %wide.load = load <4 x i16>, ptr %9, align 2, !tbaa !34
  %15 = zext <4 x i16> %wide.load to <4 x i32>
  %16 = shl nuw nsw <4 x i32> %15, <i32 3, i32 3, i32 3, i32 3>
  store <4 x i32> %16, ptr %14, align 4, !tbaa !35
  %17 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 4
  %wide.load.1 = load <4 x i16>, ptr %17, align 2, !tbaa !34
  %18 = zext <4 x i16> %wide.load.1 to <4 x i32>
  %19 = shl nuw nsw <4 x i32> %18, <i32 3, i32 3, i32 3, i32 3>
  %20 = getelementptr inbounds i32, ptr %14, i64 4
  store <4 x i32> %19, ptr %20, align 4, !tbaa !35
  %21 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 8
  %wide.load.2 = load <4 x i16>, ptr %21, align 2, !tbaa !34
  %22 = zext <4 x i16> %wide.load.2 to <4 x i32>
  %23 = shl nuw nsw <4 x i32> %22, <i32 3, i32 3, i32 3, i32 3>
  %24 = getelementptr inbounds i32, ptr %14, i64 8
  store <4 x i32> %23, ptr %24, align 4, !tbaa !35
  %25 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 12
  %wide.load.3 = load <4 x i16>, ptr %25, align 2, !tbaa !34
  %26 = zext <4 x i16> %wide.load.3 to <4 x i32>
  %27 = shl nuw nsw <4 x i32> %26, <i32 3, i32 3, i32 3, i32 3>
  %28 = getelementptr inbounds i32, ptr %14, i64 12
  store <4 x i32> %27, ptr %28, align 4, !tbaa !35
  %29 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 16
  %wide.load.4 = load <4 x i16>, ptr %29, align 2, !tbaa !34
  %30 = zext <4 x i16> %wide.load.4 to <4 x i32>
  %31 = shl nuw nsw <4 x i32> %30, <i32 3, i32 3, i32 3, i32 3>
  %32 = getelementptr inbounds i32, ptr %14, i64 16
  store <4 x i32> %31, ptr %32, align 4, !tbaa !35
  %33 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 20
  %wide.load.5 = load <4 x i16>, ptr %33, align 2, !tbaa !34
  %34 = zext <4 x i16> %wide.load.5 to <4 x i32>
  %35 = shl nuw nsw <4 x i32> %34, <i32 3, i32 3, i32 3, i32 3>
  %36 = getelementptr inbounds i32, ptr %14, i64 20
  store <4 x i32> %35, ptr %36, align 4, !tbaa !35
  %37 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 24
  %wide.load.6 = load <4 x i16>, ptr %37, align 2, !tbaa !34
  %38 = zext <4 x i16> %wide.load.6 to <4 x i32>
  %39 = shl nuw nsw <4 x i32> %38, <i32 3, i32 3, i32 3, i32 3>
  %40 = getelementptr inbounds i32, ptr %14, i64 24
  store <4 x i32> %39, ptr %40, align 4, !tbaa !35
  %41 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 28
  %wide.load.7 = load <4 x i16>, ptr %41, align 2, !tbaa !34
  %42 = zext <4 x i16> %wide.load.7 to <4 x i32>
  %43 = shl nuw nsw <4 x i32> %42, <i32 3, i32 3, i32 3, i32 3>
  %44 = getelementptr inbounds i32, ptr %14, i64 28
  store <4 x i32> %43, ptr %44, align 4, !tbaa !35
  %45 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 32
  %wide.load.8 = load <4 x i16>, ptr %45, align 2, !tbaa !34
  %46 = zext <4 x i16> %wide.load.8 to <4 x i32>
  %47 = shl nuw nsw <4 x i32> %46, <i32 3, i32 3, i32 3, i32 3>
  %48 = getelementptr inbounds i32, ptr %14, i64 32
  store <4 x i32> %47, ptr %48, align 4, !tbaa !35
  %49 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 36
  %wide.load.9 = load <4 x i16>, ptr %49, align 2, !tbaa !34
  %50 = zext <4 x i16> %wide.load.9 to <4 x i32>
  %51 = shl nuw nsw <4 x i32> %50, <i32 3, i32 3, i32 3, i32 3>
  %52 = getelementptr inbounds i32, ptr %14, i64 36
  store <4 x i32> %51, ptr %52, align 4, !tbaa !35
  %53 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 40
  %wide.load.10 = load <4 x i16>, ptr %53, align 2, !tbaa !34
  %54 = zext <4 x i16> %wide.load.10 to <4 x i32>
  %55 = shl nuw nsw <4 x i32> %54, <i32 3, i32 3, i32 3, i32 3>
  %56 = getelementptr inbounds i32, ptr %14, i64 40
  store <4 x i32> %55, ptr %56, align 4, !tbaa !35
  %57 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 44
  %wide.load.11 = load <4 x i16>, ptr %57, align 2, !tbaa !34
  %58 = zext <4 x i16> %wide.load.11 to <4 x i32>
  %59 = shl nuw nsw <4 x i32> %58, <i32 3, i32 3, i32 3, i32 3>
  %60 = getelementptr inbounds i32, ptr %14, i64 44
  store <4 x i32> %59, ptr %60, align 4, !tbaa !35
  %61 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 48
  %wide.load.12 = load <4 x i16>, ptr %61, align 2, !tbaa !34
  %62 = zext <4 x i16> %wide.load.12 to <4 x i32>
  %63 = shl nuw nsw <4 x i32> %62, <i32 3, i32 3, i32 3, i32 3>
  %64 = getelementptr inbounds i32, ptr %14, i64 48
  store <4 x i32> %63, ptr %64, align 4, !tbaa !35
  %65 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 52
  %wide.load.13 = load <4 x i16>, ptr %65, align 2, !tbaa !34
  %66 = zext <4 x i16> %wide.load.13 to <4 x i32>
  %67 = shl nuw nsw <4 x i32> %66, <i32 3, i32 3, i32 3, i32 3>
  %68 = getelementptr inbounds i32, ptr %14, i64 52
  store <4 x i32> %67, ptr %68, align 4, !tbaa !35
  %69 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 56
  %wide.load.14 = load <4 x i16>, ptr %69, align 2, !tbaa !34
  %70 = zext <4 x i16> %wide.load.14 to <4 x i32>
  %71 = shl nuw nsw <4 x i32> %70, <i32 3, i32 3, i32 3, i32 3>
  %72 = getelementptr inbounds i32, ptr %14, i64 56
  store <4 x i32> %71, ptr %72, align 4, !tbaa !35
  %73 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 60
  %wide.load.15 = load <4 x i16>, ptr %73, align 2, !tbaa !34
  %74 = zext <4 x i16> %wide.load.15 to <4 x i32>
  %75 = shl nuw nsw <4 x i32> %74, <i32 3, i32 3, i32 3, i32 3>
  %76 = getelementptr inbounds i32, ptr %14, i64 60
  store <4 x i32> %75, ptr %76, align 4, !tbaa !35
  br label %for.inc113

sw.bb30:                                          ; preds = %if.end
  %arrayidx33 = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 2, i64 %idxprom10
  %77 = load ptr, ptr %arrayidx33, align 8, !tbaa !28
  %cmp34 = icmp eq ptr %77, null
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %sw.bb30
  %78 = load ptr, ptr %mem70, align 8, !tbaa !5
  %79 = load ptr, ptr %78, align 8, !tbaa !13
  %call39 = tail call ptr %79(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef 256) #4
  store ptr %call39, ptr %arrayidx33, align 8, !tbaa !28
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %sw.bb30
  %80 = phi ptr [ %call39, %if.then36 ], [ %77, %sw.bb30 ]
  br label %for.body50

for.body50:                                       ; preds = %for.body50, %if.end43
  %indvars.iv199 = phi i64 [ 0, %if.end43 ], [ %indvars.iv.next200.1, %for.body50 ]
  %arrayidx53 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %indvars.iv199
  %81 = load i16, ptr %arrayidx53, align 2, !tbaa !34
  %conv54 = zext i16 %81 to i64
  %arrayidx56 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %indvars.iv199
  %82 = load i16, ptr %arrayidx56, align 4, !tbaa !34
  %conv57 = sext i16 %82 to i64
  %mul = mul nsw i64 %conv57, %conv54
  %add = add nsw i64 %mul, 1024
  %shr = ashr i64 %add, 11
  %conv58 = trunc i64 %shr to i32
  %arrayidx60 = getelementptr inbounds i32, ptr %80, i64 %indvars.iv199
  store i32 %conv58, ptr %arrayidx60, align 4, !tbaa !35
  %indvars.iv.next200 = or i64 %indvars.iv199, 1
  %arrayidx53.1 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %indvars.iv.next200
  %83 = load i16, ptr %arrayidx53.1, align 2, !tbaa !34
  %conv54.1 = zext i16 %83 to i64
  %arrayidx56.1 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %indvars.iv.next200
  %84 = load i16, ptr %arrayidx56.1, align 2, !tbaa !34
  %conv57.1 = sext i16 %84 to i64
  %mul.1 = mul nsw i64 %conv57.1, %conv54.1
  %add.1 = add nsw i64 %mul.1, 1024
  %shr.1 = ashr i64 %add.1, 11
  %conv58.1 = trunc i64 %shr.1 to i32
  %arrayidx60.1 = getelementptr inbounds i32, ptr %80, i64 %indvars.iv.next200
  store i32 %conv58.1, ptr %arrayidx60.1, align 4, !tbaa !35
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2
  %exitcond202.not.1 = icmp eq i64 %indvars.iv.next200.1, 64
  br i1 %exitcond202.not.1, label %for.inc113, label %for.body50, !llvm.loop !36

sw.bb64:                                          ; preds = %if.end
  %arrayidx66 = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 4, i64 %idxprom10
  %85 = load ptr, ptr %arrayidx66, align 8, !tbaa !28
  %cmp67 = icmp eq ptr %85, null
  br i1 %cmp67, label %if.then69, label %vector.ph213

if.then69:                                        ; preds = %sw.bb64
  %86 = load ptr, ptr %mem70, align 8, !tbaa !5
  %87 = load ptr, ptr %86, align 8, !tbaa !13
  %call72 = tail call ptr %87(ptr noundef nonnull %cinfo, i32 noundef 1, i64 noundef 256) #4
  store ptr %call72, ptr %arrayidx66, align 8, !tbaa !28
  br label %vector.ph213

vector.ph213:                                     ; preds = %sw.bb64, %if.then69
  %88 = phi ptr [ %call72, %if.then69 ], [ %85, %sw.bb64 ]
  %89 = getelementptr inbounds float, ptr %88, i64 -7
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph213
  %index218 = phi i64 [ 0, %vector.ph213 ], [ %index.next220, %vector.body217 ]
  %offset.idx = shl i64 %index218, 3
  %90 = or i64 %offset.idx, 8
  %91 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %index218
  %wide.load219 = load <2 x double>, ptr %91, align 16, !tbaa !38
  %92 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %offset.idx
  %93 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %90
  %94 = load i16, ptr %92, align 2, !tbaa !34
  %95 = load i16, ptr %93, align 2, !tbaa !34
  %96 = insertelement <2 x i16> poison, i16 %94, i64 0
  %97 = insertelement <2 x i16> %96, i16 %95, i64 1
  %98 = uitofp <2 x i16> %97 to <2 x double>
  %99 = fmul <2 x double> %wide.load219, %98
  %100 = fmul <2 x double> %99, <double 8.000000e+00, double 8.000000e+00>
  %101 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %100
  %102 = fptrunc <2 x double> %101 to <2 x float>
  %103 = or i64 %offset.idx, 1
  %104 = or i64 %offset.idx, 9
  %105 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %103
  %106 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %104
  %107 = load i16, ptr %105, align 2, !tbaa !34
  %108 = load i16, ptr %106, align 2, !tbaa !34
  %109 = insertelement <2 x i16> poison, i16 %107, i64 0
  %110 = insertelement <2 x i16> %109, i16 %108, i64 1
  %111 = uitofp <2 x i16> %110 to <2 x double>
  %112 = fmul <2 x double> %wide.load219, %111
  %113 = fmul <2 x double> %112, <double 0x3FF63150B14861EF, double 0x3FF63150B14861EF>
  %114 = fmul <2 x double> %113, <double 8.000000e+00, double 8.000000e+00>
  %115 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %114
  %116 = fptrunc <2 x double> %115 to <2 x float>
  %117 = or i64 %offset.idx, 2
  %118 = or i64 %offset.idx, 10
  %119 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %117
  %120 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %118
  %121 = load i16, ptr %119, align 2, !tbaa !34
  %122 = load i16, ptr %120, align 2, !tbaa !34
  %123 = insertelement <2 x i16> poison, i16 %121, i64 0
  %124 = insertelement <2 x i16> %123, i16 %122, i64 1
  %125 = uitofp <2 x i16> %124 to <2 x double>
  %126 = fmul <2 x double> %wide.load219, %125
  %127 = fmul <2 x double> %126, <double 0x3FF4E7AE914D6FCA, double 0x3FF4E7AE914D6FCA>
  %128 = fmul <2 x double> %127, <double 8.000000e+00, double 8.000000e+00>
  %129 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %128
  %130 = fptrunc <2 x double> %129 to <2 x float>
  %131 = or i64 %offset.idx, 3
  %132 = or i64 %offset.idx, 11
  %133 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %131
  %134 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %132
  %135 = load i16, ptr %133, align 2, !tbaa !34
  %136 = load i16, ptr %134, align 2, !tbaa !34
  %137 = insertelement <2 x i16> poison, i16 %135, i64 0
  %138 = insertelement <2 x i16> %137, i16 %136, i64 1
  %139 = uitofp <2 x i16> %138 to <2 x double>
  %140 = fmul <2 x double> %wide.load219, %139
  %141 = fmul <2 x double> %140, <double 0x3FF2D062EF6C11AA, double 0x3FF2D062EF6C11AA>
  %142 = fmul <2 x double> %141, <double 8.000000e+00, double 8.000000e+00>
  %143 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %142
  %144 = fptrunc <2 x double> %143 to <2 x float>
  %145 = or i64 %offset.idx, 4
  %146 = or i64 %offset.idx, 12
  %147 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %145
  %148 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %146
  %149 = load i16, ptr %147, align 2, !tbaa !34
  %150 = load i16, ptr %148, align 2, !tbaa !34
  %151 = insertelement <2 x i16> poison, i16 %149, i64 0
  %152 = insertelement <2 x i16> %151, i16 %150, i64 1
  %153 = uitofp <2 x i16> %152 to <2 x double>
  %154 = fmul <2 x double> %wide.load219, %153
  %155 = fmul <2 x double> %154, <double 8.000000e+00, double 8.000000e+00>
  %156 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %155
  %157 = fptrunc <2 x double> %156 to <2 x float>
  %158 = or i64 %offset.idx, 5
  %159 = or i64 %offset.idx, 13
  %160 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %158
  %161 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %159
  %162 = load i16, ptr %160, align 2, !tbaa !34
  %163 = load i16, ptr %161, align 2, !tbaa !34
  %164 = insertelement <2 x i16> poison, i16 %162, i64 0
  %165 = insertelement <2 x i16> %164, i16 %163, i64 1
  %166 = uitofp <2 x i16> %165 to <2 x double>
  %167 = fmul <2 x double> %wide.load219, %166
  %168 = fmul <2 x double> %167, <double 0x3FE92469C0A7BF3B, double 0x3FE92469C0A7BF3B>
  %169 = fmul <2 x double> %168, <double 8.000000e+00, double 8.000000e+00>
  %170 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %169
  %171 = fptrunc <2 x double> %170 to <2 x float>
  %172 = or i64 %offset.idx, 6
  %173 = or i64 %offset.idx, 14
  %174 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %172
  %175 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %173
  %176 = load i16, ptr %174, align 2, !tbaa !34
  %177 = load i16, ptr %175, align 2, !tbaa !34
  %178 = insertelement <2 x i16> poison, i16 %176, i64 0
  %179 = insertelement <2 x i16> %178, i16 %177, i64 1
  %180 = uitofp <2 x i16> %179 to <2 x double>
  %181 = fmul <2 x double> %wide.load219, %180
  %182 = fmul <2 x double> %181, <double 0x3FE1517A7BC720BB, double 0x3FE1517A7BC720BB>
  %183 = fmul <2 x double> %182, <double 8.000000e+00, double 8.000000e+00>
  %184 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %183
  %185 = fptrunc <2 x double> %184 to <2 x float>
  %186 = or i64 %offset.idx, 7
  %187 = or i64 %offset.idx, 15
  %188 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %186
  %189 = getelementptr inbounds [64 x i16], ptr %9, i64 0, i64 %187
  %190 = load i16, ptr %188, align 2, !tbaa !34
  %191 = load i16, ptr %189, align 2, !tbaa !34
  %192 = insertelement <2 x i16> poison, i16 %190, i64 0
  %193 = insertelement <2 x i16> %192, i16 %191, i64 1
  %194 = uitofp <2 x i16> %193 to <2 x double>
  %195 = fmul <2 x double> %wide.load219, %194
  %196 = fmul <2 x double> %195, <double 0x3FD1A855DE72AB5D, double 0x3FD1A855DE72AB5D>
  %197 = fmul <2 x double> %196, <double 8.000000e+00, double 8.000000e+00>
  %198 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %197
  %199 = fptrunc <2 x double> %198 to <2 x float>
  %200 = getelementptr inbounds float, ptr %89, i64 %186
  %201 = shufflevector <2 x float> %102, <2 x float> %116, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %202 = shufflevector <2 x float> %130, <2 x float> %144, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %203 = shufflevector <2 x float> %157, <2 x float> %171, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %204 = shufflevector <2 x float> %185, <2 x float> %199, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %205 = shufflevector <4 x float> %201, <4 x float> %202, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %206 = shufflevector <4 x float> %203, <4 x float> %204, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %205, <8 x float> %206, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec, ptr %200, align 4, !tbaa !39
  %index.next220 = add nuw i64 %index218, 2
  %207 = icmp eq i64 %index.next220, 8
  br i1 %207, label %for.inc113, label %vector.body217, !llvm.loop !41

sw.default:                                       ; preds = %if.end
  %208 = load ptr, ptr %cinfo, align 8, !tbaa !24
  %msg_code110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %208, i64 0, i32 5
  store i32 47, ptr %msg_code110, align 8, !tbaa !25
  %209 = load ptr, ptr %208, align 8, !tbaa !27
  tail call void %209(ptr noundef nonnull %cinfo) #4
  br label %for.inc113

for.inc113:                                       ; preds = %vector.body217, %for.body50, %vector.body, %sw.default
  %inc114 = add nuw nsw i32 %ci.0186, 1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr.0185, i64 1
  %210 = load i32, ptr %num_components, align 4, !tbaa !29
  %cmp = icmp slt i32 %inc114, %210
  br i1 %cmp, label %for.body, label %for.end115, !llvm.loop !43

for.end115:                                       ; preds = %for.inc113, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %compptr, ptr nocapture noundef readonly %sample_data, ptr nocapture noundef writeonly %coef_blocks, i32 noundef %start_row, i32 noundef %start_col, i32 noundef %num_blocks) #0 {
entry:
  %workspace = alloca [64 x i32], align 16
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 58
  %0 = load ptr, ptr %fdct1, align 8, !tbaa !16
  %do_dct2 = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %do_dct2, align 8, !tbaa !22
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 4
  %2 = load i32, ptr %quant_tbl_no, align 8, !tbaa !31
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 2, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %workspace) #4
  %idx.ext = zext i32 %start_row to i64
  %add.ptr = getelementptr inbounds ptr, ptr %sample_data, i64 %idx.ext
  %cmp123.not = icmp eq i32 %num_blocks, 0
  br i1 %cmp123.not, label %for.end78, label %for.cond4.preheader.preheader

for.cond4.preheader.preheader:                    ; preds = %entry
  %wide.trip.count = zext i32 %num_blocks to i64
  %incdec.ptr11 = getelementptr inbounds i32, ptr %workspace, i64 1
  %incdec.ptr15 = getelementptr inbounds i32, ptr %workspace, i64 2
  %incdec.ptr19 = getelementptr inbounds i32, ptr %workspace, i64 3
  %incdec.ptr23 = getelementptr inbounds i32, ptr %workspace, i64 4
  %incdec.ptr27 = getelementptr inbounds i32, ptr %workspace, i64 5
  %incdec.ptr31 = getelementptr inbounds i32, ptr %workspace, i64 6
  %incdec.ptr35 = getelementptr inbounds i32, ptr %workspace, i64 7
  %incdec.ptr39 = getelementptr inbounds i32, ptr %workspace, i64 8
  %arrayidx8.1 = getelementptr inbounds ptr, ptr %add.ptr, i64 1
  %incdec.ptr11.1 = getelementptr inbounds i32, ptr %workspace, i64 9
  %incdec.ptr15.1 = getelementptr inbounds i32, ptr %workspace, i64 10
  %incdec.ptr19.1 = getelementptr inbounds i32, ptr %workspace, i64 11
  %incdec.ptr23.1 = getelementptr inbounds i32, ptr %workspace, i64 12
  %incdec.ptr27.1 = getelementptr inbounds i32, ptr %workspace, i64 13
  %incdec.ptr31.1 = getelementptr inbounds i32, ptr %workspace, i64 14
  %incdec.ptr35.1 = getelementptr inbounds i32, ptr %workspace, i64 15
  %incdec.ptr39.1 = getelementptr inbounds i32, ptr %workspace, i64 16
  %arrayidx8.2 = getelementptr inbounds ptr, ptr %add.ptr, i64 2
  %incdec.ptr11.2 = getelementptr inbounds i32, ptr %workspace, i64 17
  %incdec.ptr15.2 = getelementptr inbounds i32, ptr %workspace, i64 18
  %incdec.ptr19.2 = getelementptr inbounds i32, ptr %workspace, i64 19
  %incdec.ptr23.2 = getelementptr inbounds i32, ptr %workspace, i64 20
  %incdec.ptr27.2 = getelementptr inbounds i32, ptr %workspace, i64 21
  %incdec.ptr31.2 = getelementptr inbounds i32, ptr %workspace, i64 22
  %incdec.ptr35.2 = getelementptr inbounds i32, ptr %workspace, i64 23
  %incdec.ptr39.2 = getelementptr inbounds i32, ptr %workspace, i64 24
  %arrayidx8.3 = getelementptr inbounds ptr, ptr %add.ptr, i64 3
  %incdec.ptr11.3 = getelementptr inbounds i32, ptr %workspace, i64 25
  %incdec.ptr15.3 = getelementptr inbounds i32, ptr %workspace, i64 26
  %incdec.ptr19.3 = getelementptr inbounds i32, ptr %workspace, i64 27
  %incdec.ptr23.3 = getelementptr inbounds i32, ptr %workspace, i64 28
  %incdec.ptr27.3 = getelementptr inbounds i32, ptr %workspace, i64 29
  %incdec.ptr31.3 = getelementptr inbounds i32, ptr %workspace, i64 30
  %incdec.ptr35.3 = getelementptr inbounds i32, ptr %workspace, i64 31
  %incdec.ptr39.3 = getelementptr inbounds i32, ptr %workspace, i64 32
  %arrayidx8.4 = getelementptr inbounds ptr, ptr %add.ptr, i64 4
  %incdec.ptr11.4 = getelementptr inbounds i32, ptr %workspace, i64 33
  %incdec.ptr15.4 = getelementptr inbounds i32, ptr %workspace, i64 34
  %incdec.ptr19.4 = getelementptr inbounds i32, ptr %workspace, i64 35
  %incdec.ptr23.4 = getelementptr inbounds i32, ptr %workspace, i64 36
  %incdec.ptr27.4 = getelementptr inbounds i32, ptr %workspace, i64 37
  %incdec.ptr31.4 = getelementptr inbounds i32, ptr %workspace, i64 38
  %incdec.ptr35.4 = getelementptr inbounds i32, ptr %workspace, i64 39
  %incdec.ptr39.4 = getelementptr inbounds i32, ptr %workspace, i64 40
  %arrayidx8.5 = getelementptr inbounds ptr, ptr %add.ptr, i64 5
  %incdec.ptr11.5 = getelementptr inbounds i32, ptr %workspace, i64 41
  %incdec.ptr15.5 = getelementptr inbounds i32, ptr %workspace, i64 42
  %incdec.ptr19.5 = getelementptr inbounds i32, ptr %workspace, i64 43
  %incdec.ptr23.5 = getelementptr inbounds i32, ptr %workspace, i64 44
  %incdec.ptr27.5 = getelementptr inbounds i32, ptr %workspace, i64 45
  %incdec.ptr31.5 = getelementptr inbounds i32, ptr %workspace, i64 46
  %incdec.ptr35.5 = getelementptr inbounds i32, ptr %workspace, i64 47
  %incdec.ptr39.5 = getelementptr inbounds i32, ptr %workspace, i64 48
  %arrayidx8.6 = getelementptr inbounds ptr, ptr %add.ptr, i64 6
  %incdec.ptr11.6 = getelementptr inbounds i32, ptr %workspace, i64 49
  %incdec.ptr15.6 = getelementptr inbounds i32, ptr %workspace, i64 50
  %incdec.ptr19.6 = getelementptr inbounds i32, ptr %workspace, i64 51
  %incdec.ptr23.6 = getelementptr inbounds i32, ptr %workspace, i64 52
  %incdec.ptr27.6 = getelementptr inbounds i32, ptr %workspace, i64 53
  %incdec.ptr31.6 = getelementptr inbounds i32, ptr %workspace, i64 54
  %incdec.ptr35.6 = getelementptr inbounds i32, ptr %workspace, i64 55
  %incdec.ptr39.6 = getelementptr inbounds i32, ptr %workspace, i64 56
  %arrayidx8.7 = getelementptr inbounds ptr, ptr %add.ptr, i64 7
  %incdec.ptr11.7 = getelementptr inbounds i32, ptr %workspace, i64 57
  %incdec.ptr15.7 = getelementptr inbounds i32, ptr %workspace, i64 58
  %incdec.ptr19.7 = getelementptr inbounds i32, ptr %workspace, i64 59
  %incdec.ptr23.7 = getelementptr inbounds i32, ptr %workspace, i64 60
  %incdec.ptr27.7 = getelementptr inbounds i32, ptr %workspace, i64 61
  %incdec.ptr31.7 = getelementptr inbounds i32, ptr %workspace, i64 62
  %incdec.ptr35.7 = getelementptr inbounds i32, ptr %workspace, i64 63
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.preheader, %for.end74
  %indvars.iv128 = phi i64 [ 0, %for.cond4.preheader.preheader ], [ %indvars.iv.next129, %for.end74 ]
  %start_col.addr.0125 = phi i32 [ %start_col, %for.cond4.preheader.preheader ], [ %add77, %for.end74 ]
  %idx.ext9 = zext i32 %start_col.addr.0125 to i64
  %4 = load ptr, ptr %add.ptr, align 8, !tbaa !28
  %add.ptr10 = getelementptr inbounds i8, ptr %4, i64 %idx.ext9
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr10, i64 1
  %5 = load i8, ptr %add.ptr10, align 1, !tbaa !33
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -128
  store i32 %sub, ptr %workspace, align 16, !tbaa !35
  %incdec.ptr12 = getelementptr inbounds i8, ptr %incdec.ptr, i64 1
  %6 = load i8, ptr %incdec.ptr, align 1, !tbaa !33
  %conv13 = zext i8 %6 to i32
  %sub14 = add nsw i32 %conv13, -128
  store i32 %sub14, ptr %incdec.ptr11, align 4, !tbaa !35
  %incdec.ptr16 = getelementptr inbounds i8, ptr %incdec.ptr12, i64 1
  %7 = load i8, ptr %incdec.ptr12, align 1, !tbaa !33
  %conv17 = zext i8 %7 to i32
  %sub18 = add nsw i32 %conv17, -128
  store i32 %sub18, ptr %incdec.ptr15, align 8, !tbaa !35
  %incdec.ptr20 = getelementptr inbounds i8, ptr %incdec.ptr16, i64 1
  %8 = load i8, ptr %incdec.ptr16, align 1, !tbaa !33
  %conv21 = zext i8 %8 to i32
  %sub22 = add nsw i32 %conv21, -128
  store i32 %sub22, ptr %incdec.ptr19, align 4, !tbaa !35
  %incdec.ptr24 = getelementptr inbounds i8, ptr %incdec.ptr20, i64 1
  %9 = load i8, ptr %incdec.ptr20, align 1, !tbaa !33
  %conv25 = zext i8 %9 to i32
  %sub26 = add nsw i32 %conv25, -128
  store i32 %sub26, ptr %incdec.ptr23, align 16, !tbaa !35
  %incdec.ptr28 = getelementptr inbounds i8, ptr %incdec.ptr24, i64 1
  %10 = load i8, ptr %incdec.ptr24, align 1, !tbaa !33
  %conv29 = zext i8 %10 to i32
  %sub30 = add nsw i32 %conv29, -128
  store i32 %sub30, ptr %incdec.ptr27, align 4, !tbaa !35
  %incdec.ptr32 = getelementptr inbounds i8, ptr %incdec.ptr28, i64 1
  %11 = load i8, ptr %incdec.ptr28, align 1, !tbaa !33
  %conv33 = zext i8 %11 to i32
  %sub34 = add nsw i32 %conv33, -128
  store i32 %sub34, ptr %incdec.ptr31, align 8, !tbaa !35
  %12 = load i8, ptr %incdec.ptr32, align 1, !tbaa !33
  %conv37 = zext i8 %12 to i32
  %sub38 = add nsw i32 %conv37, -128
  store i32 %sub38, ptr %incdec.ptr35, align 4, !tbaa !35
  %13 = load ptr, ptr %arrayidx8.1, align 8, !tbaa !28
  %add.ptr10.1 = getelementptr inbounds i8, ptr %13, i64 %idx.ext9
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %add.ptr10.1, i64 1
  %14 = load i8, ptr %add.ptr10.1, align 1, !tbaa !33
  %conv.1 = zext i8 %14 to i32
  %sub.1 = add nsw i32 %conv.1, -128
  store i32 %sub.1, ptr %incdec.ptr39, align 16, !tbaa !35
  %incdec.ptr12.1 = getelementptr inbounds i8, ptr %incdec.ptr.1, i64 1
  %15 = load i8, ptr %incdec.ptr.1, align 1, !tbaa !33
  %conv13.1 = zext i8 %15 to i32
  %sub14.1 = add nsw i32 %conv13.1, -128
  store i32 %sub14.1, ptr %incdec.ptr11.1, align 4, !tbaa !35
  %incdec.ptr16.1 = getelementptr inbounds i8, ptr %incdec.ptr12.1, i64 1
  %16 = load i8, ptr %incdec.ptr12.1, align 1, !tbaa !33
  %conv17.1 = zext i8 %16 to i32
  %sub18.1 = add nsw i32 %conv17.1, -128
  store i32 %sub18.1, ptr %incdec.ptr15.1, align 8, !tbaa !35
  %incdec.ptr20.1 = getelementptr inbounds i8, ptr %incdec.ptr16.1, i64 1
  %17 = load i8, ptr %incdec.ptr16.1, align 1, !tbaa !33
  %conv21.1 = zext i8 %17 to i32
  %sub22.1 = add nsw i32 %conv21.1, -128
  store i32 %sub22.1, ptr %incdec.ptr19.1, align 4, !tbaa !35
  %incdec.ptr24.1 = getelementptr inbounds i8, ptr %incdec.ptr20.1, i64 1
  %18 = load i8, ptr %incdec.ptr20.1, align 1, !tbaa !33
  %conv25.1 = zext i8 %18 to i32
  %sub26.1 = add nsw i32 %conv25.1, -128
  store i32 %sub26.1, ptr %incdec.ptr23.1, align 16, !tbaa !35
  %incdec.ptr28.1 = getelementptr inbounds i8, ptr %incdec.ptr24.1, i64 1
  %19 = load i8, ptr %incdec.ptr24.1, align 1, !tbaa !33
  %conv29.1 = zext i8 %19 to i32
  %sub30.1 = add nsw i32 %conv29.1, -128
  store i32 %sub30.1, ptr %incdec.ptr27.1, align 4, !tbaa !35
  %incdec.ptr32.1 = getelementptr inbounds i8, ptr %incdec.ptr28.1, i64 1
  %20 = load i8, ptr %incdec.ptr28.1, align 1, !tbaa !33
  %conv33.1 = zext i8 %20 to i32
  %sub34.1 = add nsw i32 %conv33.1, -128
  store i32 %sub34.1, ptr %incdec.ptr31.1, align 8, !tbaa !35
  %21 = load i8, ptr %incdec.ptr32.1, align 1, !tbaa !33
  %conv37.1 = zext i8 %21 to i32
  %sub38.1 = add nsw i32 %conv37.1, -128
  store i32 %sub38.1, ptr %incdec.ptr35.1, align 4, !tbaa !35
  %22 = load ptr, ptr %arrayidx8.2, align 8, !tbaa !28
  %add.ptr10.2 = getelementptr inbounds i8, ptr %22, i64 %idx.ext9
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %add.ptr10.2, i64 1
  %23 = load i8, ptr %add.ptr10.2, align 1, !tbaa !33
  %conv.2 = zext i8 %23 to i32
  %sub.2 = add nsw i32 %conv.2, -128
  store i32 %sub.2, ptr %incdec.ptr39.1, align 16, !tbaa !35
  %incdec.ptr12.2 = getelementptr inbounds i8, ptr %incdec.ptr.2, i64 1
  %24 = load i8, ptr %incdec.ptr.2, align 1, !tbaa !33
  %conv13.2 = zext i8 %24 to i32
  %sub14.2 = add nsw i32 %conv13.2, -128
  store i32 %sub14.2, ptr %incdec.ptr11.2, align 4, !tbaa !35
  %incdec.ptr16.2 = getelementptr inbounds i8, ptr %incdec.ptr12.2, i64 1
  %25 = load i8, ptr %incdec.ptr12.2, align 1, !tbaa !33
  %conv17.2 = zext i8 %25 to i32
  %sub18.2 = add nsw i32 %conv17.2, -128
  store i32 %sub18.2, ptr %incdec.ptr15.2, align 8, !tbaa !35
  %incdec.ptr20.2 = getelementptr inbounds i8, ptr %incdec.ptr16.2, i64 1
  %26 = load i8, ptr %incdec.ptr16.2, align 1, !tbaa !33
  %conv21.2 = zext i8 %26 to i32
  %sub22.2 = add nsw i32 %conv21.2, -128
  store i32 %sub22.2, ptr %incdec.ptr19.2, align 4, !tbaa !35
  %incdec.ptr24.2 = getelementptr inbounds i8, ptr %incdec.ptr20.2, i64 1
  %27 = load i8, ptr %incdec.ptr20.2, align 1, !tbaa !33
  %conv25.2 = zext i8 %27 to i32
  %sub26.2 = add nsw i32 %conv25.2, -128
  store i32 %sub26.2, ptr %incdec.ptr23.2, align 16, !tbaa !35
  %incdec.ptr28.2 = getelementptr inbounds i8, ptr %incdec.ptr24.2, i64 1
  %28 = load i8, ptr %incdec.ptr24.2, align 1, !tbaa !33
  %conv29.2 = zext i8 %28 to i32
  %sub30.2 = add nsw i32 %conv29.2, -128
  store i32 %sub30.2, ptr %incdec.ptr27.2, align 4, !tbaa !35
  %incdec.ptr32.2 = getelementptr inbounds i8, ptr %incdec.ptr28.2, i64 1
  %29 = load i8, ptr %incdec.ptr28.2, align 1, !tbaa !33
  %conv33.2 = zext i8 %29 to i32
  %sub34.2 = add nsw i32 %conv33.2, -128
  store i32 %sub34.2, ptr %incdec.ptr31.2, align 8, !tbaa !35
  %30 = load i8, ptr %incdec.ptr32.2, align 1, !tbaa !33
  %conv37.2 = zext i8 %30 to i32
  %sub38.2 = add nsw i32 %conv37.2, -128
  store i32 %sub38.2, ptr %incdec.ptr35.2, align 4, !tbaa !35
  %31 = load ptr, ptr %arrayidx8.3, align 8, !tbaa !28
  %add.ptr10.3 = getelementptr inbounds i8, ptr %31, i64 %idx.ext9
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %add.ptr10.3, i64 1
  %32 = load i8, ptr %add.ptr10.3, align 1, !tbaa !33
  %conv.3 = zext i8 %32 to i32
  %sub.3 = add nsw i32 %conv.3, -128
  store i32 %sub.3, ptr %incdec.ptr39.2, align 16, !tbaa !35
  %incdec.ptr12.3 = getelementptr inbounds i8, ptr %incdec.ptr.3, i64 1
  %33 = load i8, ptr %incdec.ptr.3, align 1, !tbaa !33
  %conv13.3 = zext i8 %33 to i32
  %sub14.3 = add nsw i32 %conv13.3, -128
  store i32 %sub14.3, ptr %incdec.ptr11.3, align 4, !tbaa !35
  %incdec.ptr16.3 = getelementptr inbounds i8, ptr %incdec.ptr12.3, i64 1
  %34 = load i8, ptr %incdec.ptr12.3, align 1, !tbaa !33
  %conv17.3 = zext i8 %34 to i32
  %sub18.3 = add nsw i32 %conv17.3, -128
  store i32 %sub18.3, ptr %incdec.ptr15.3, align 8, !tbaa !35
  %incdec.ptr20.3 = getelementptr inbounds i8, ptr %incdec.ptr16.3, i64 1
  %35 = load i8, ptr %incdec.ptr16.3, align 1, !tbaa !33
  %conv21.3 = zext i8 %35 to i32
  %sub22.3 = add nsw i32 %conv21.3, -128
  store i32 %sub22.3, ptr %incdec.ptr19.3, align 4, !tbaa !35
  %incdec.ptr24.3 = getelementptr inbounds i8, ptr %incdec.ptr20.3, i64 1
  %36 = load i8, ptr %incdec.ptr20.3, align 1, !tbaa !33
  %conv25.3 = zext i8 %36 to i32
  %sub26.3 = add nsw i32 %conv25.3, -128
  store i32 %sub26.3, ptr %incdec.ptr23.3, align 16, !tbaa !35
  %incdec.ptr28.3 = getelementptr inbounds i8, ptr %incdec.ptr24.3, i64 1
  %37 = load i8, ptr %incdec.ptr24.3, align 1, !tbaa !33
  %conv29.3 = zext i8 %37 to i32
  %sub30.3 = add nsw i32 %conv29.3, -128
  store i32 %sub30.3, ptr %incdec.ptr27.3, align 4, !tbaa !35
  %incdec.ptr32.3 = getelementptr inbounds i8, ptr %incdec.ptr28.3, i64 1
  %38 = load i8, ptr %incdec.ptr28.3, align 1, !tbaa !33
  %conv33.3 = zext i8 %38 to i32
  %sub34.3 = add nsw i32 %conv33.3, -128
  store i32 %sub34.3, ptr %incdec.ptr31.3, align 8, !tbaa !35
  %39 = load i8, ptr %incdec.ptr32.3, align 1, !tbaa !33
  %conv37.3 = zext i8 %39 to i32
  %sub38.3 = add nsw i32 %conv37.3, -128
  store i32 %sub38.3, ptr %incdec.ptr35.3, align 4, !tbaa !35
  %40 = load ptr, ptr %arrayidx8.4, align 8, !tbaa !28
  %add.ptr10.4 = getelementptr inbounds i8, ptr %40, i64 %idx.ext9
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %add.ptr10.4, i64 1
  %41 = load i8, ptr %add.ptr10.4, align 1, !tbaa !33
  %conv.4 = zext i8 %41 to i32
  %sub.4 = add nsw i32 %conv.4, -128
  store i32 %sub.4, ptr %incdec.ptr39.3, align 16, !tbaa !35
  %incdec.ptr12.4 = getelementptr inbounds i8, ptr %incdec.ptr.4, i64 1
  %42 = load i8, ptr %incdec.ptr.4, align 1, !tbaa !33
  %conv13.4 = zext i8 %42 to i32
  %sub14.4 = add nsw i32 %conv13.4, -128
  store i32 %sub14.4, ptr %incdec.ptr11.4, align 4, !tbaa !35
  %incdec.ptr16.4 = getelementptr inbounds i8, ptr %incdec.ptr12.4, i64 1
  %43 = load i8, ptr %incdec.ptr12.4, align 1, !tbaa !33
  %conv17.4 = zext i8 %43 to i32
  %sub18.4 = add nsw i32 %conv17.4, -128
  store i32 %sub18.4, ptr %incdec.ptr15.4, align 8, !tbaa !35
  %incdec.ptr20.4 = getelementptr inbounds i8, ptr %incdec.ptr16.4, i64 1
  %44 = load i8, ptr %incdec.ptr16.4, align 1, !tbaa !33
  %conv21.4 = zext i8 %44 to i32
  %sub22.4 = add nsw i32 %conv21.4, -128
  store i32 %sub22.4, ptr %incdec.ptr19.4, align 4, !tbaa !35
  %incdec.ptr24.4 = getelementptr inbounds i8, ptr %incdec.ptr20.4, i64 1
  %45 = load i8, ptr %incdec.ptr20.4, align 1, !tbaa !33
  %conv25.4 = zext i8 %45 to i32
  %sub26.4 = add nsw i32 %conv25.4, -128
  store i32 %sub26.4, ptr %incdec.ptr23.4, align 16, !tbaa !35
  %incdec.ptr28.4 = getelementptr inbounds i8, ptr %incdec.ptr24.4, i64 1
  %46 = load i8, ptr %incdec.ptr24.4, align 1, !tbaa !33
  %conv29.4 = zext i8 %46 to i32
  %sub30.4 = add nsw i32 %conv29.4, -128
  store i32 %sub30.4, ptr %incdec.ptr27.4, align 4, !tbaa !35
  %incdec.ptr32.4 = getelementptr inbounds i8, ptr %incdec.ptr28.4, i64 1
  %47 = load i8, ptr %incdec.ptr28.4, align 1, !tbaa !33
  %conv33.4 = zext i8 %47 to i32
  %sub34.4 = add nsw i32 %conv33.4, -128
  store i32 %sub34.4, ptr %incdec.ptr31.4, align 8, !tbaa !35
  %48 = load i8, ptr %incdec.ptr32.4, align 1, !tbaa !33
  %conv37.4 = zext i8 %48 to i32
  %sub38.4 = add nsw i32 %conv37.4, -128
  store i32 %sub38.4, ptr %incdec.ptr35.4, align 4, !tbaa !35
  %49 = load ptr, ptr %arrayidx8.5, align 8, !tbaa !28
  %add.ptr10.5 = getelementptr inbounds i8, ptr %49, i64 %idx.ext9
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %add.ptr10.5, i64 1
  %50 = load i8, ptr %add.ptr10.5, align 1, !tbaa !33
  %conv.5 = zext i8 %50 to i32
  %sub.5 = add nsw i32 %conv.5, -128
  store i32 %sub.5, ptr %incdec.ptr39.4, align 16, !tbaa !35
  %incdec.ptr12.5 = getelementptr inbounds i8, ptr %incdec.ptr.5, i64 1
  %51 = load i8, ptr %incdec.ptr.5, align 1, !tbaa !33
  %conv13.5 = zext i8 %51 to i32
  %sub14.5 = add nsw i32 %conv13.5, -128
  store i32 %sub14.5, ptr %incdec.ptr11.5, align 4, !tbaa !35
  %incdec.ptr16.5 = getelementptr inbounds i8, ptr %incdec.ptr12.5, i64 1
  %52 = load i8, ptr %incdec.ptr12.5, align 1, !tbaa !33
  %conv17.5 = zext i8 %52 to i32
  %sub18.5 = add nsw i32 %conv17.5, -128
  store i32 %sub18.5, ptr %incdec.ptr15.5, align 8, !tbaa !35
  %incdec.ptr20.5 = getelementptr inbounds i8, ptr %incdec.ptr16.5, i64 1
  %53 = load i8, ptr %incdec.ptr16.5, align 1, !tbaa !33
  %conv21.5 = zext i8 %53 to i32
  %sub22.5 = add nsw i32 %conv21.5, -128
  store i32 %sub22.5, ptr %incdec.ptr19.5, align 4, !tbaa !35
  %incdec.ptr24.5 = getelementptr inbounds i8, ptr %incdec.ptr20.5, i64 1
  %54 = load i8, ptr %incdec.ptr20.5, align 1, !tbaa !33
  %conv25.5 = zext i8 %54 to i32
  %sub26.5 = add nsw i32 %conv25.5, -128
  store i32 %sub26.5, ptr %incdec.ptr23.5, align 16, !tbaa !35
  %incdec.ptr28.5 = getelementptr inbounds i8, ptr %incdec.ptr24.5, i64 1
  %55 = load i8, ptr %incdec.ptr24.5, align 1, !tbaa !33
  %conv29.5 = zext i8 %55 to i32
  %sub30.5 = add nsw i32 %conv29.5, -128
  store i32 %sub30.5, ptr %incdec.ptr27.5, align 4, !tbaa !35
  %incdec.ptr32.5 = getelementptr inbounds i8, ptr %incdec.ptr28.5, i64 1
  %56 = load i8, ptr %incdec.ptr28.5, align 1, !tbaa !33
  %conv33.5 = zext i8 %56 to i32
  %sub34.5 = add nsw i32 %conv33.5, -128
  store i32 %sub34.5, ptr %incdec.ptr31.5, align 8, !tbaa !35
  %57 = load i8, ptr %incdec.ptr32.5, align 1, !tbaa !33
  %conv37.5 = zext i8 %57 to i32
  %sub38.5 = add nsw i32 %conv37.5, -128
  store i32 %sub38.5, ptr %incdec.ptr35.5, align 4, !tbaa !35
  %58 = load ptr, ptr %arrayidx8.6, align 8, !tbaa !28
  %add.ptr10.6 = getelementptr inbounds i8, ptr %58, i64 %idx.ext9
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %add.ptr10.6, i64 1
  %59 = load i8, ptr %add.ptr10.6, align 1, !tbaa !33
  %conv.6 = zext i8 %59 to i32
  %sub.6 = add nsw i32 %conv.6, -128
  store i32 %sub.6, ptr %incdec.ptr39.5, align 16, !tbaa !35
  %incdec.ptr12.6 = getelementptr inbounds i8, ptr %incdec.ptr.6, i64 1
  %60 = load i8, ptr %incdec.ptr.6, align 1, !tbaa !33
  %conv13.6 = zext i8 %60 to i32
  %sub14.6 = add nsw i32 %conv13.6, -128
  store i32 %sub14.6, ptr %incdec.ptr11.6, align 4, !tbaa !35
  %incdec.ptr16.6 = getelementptr inbounds i8, ptr %incdec.ptr12.6, i64 1
  %61 = load i8, ptr %incdec.ptr12.6, align 1, !tbaa !33
  %conv17.6 = zext i8 %61 to i32
  %sub18.6 = add nsw i32 %conv17.6, -128
  store i32 %sub18.6, ptr %incdec.ptr15.6, align 8, !tbaa !35
  %incdec.ptr20.6 = getelementptr inbounds i8, ptr %incdec.ptr16.6, i64 1
  %62 = load i8, ptr %incdec.ptr16.6, align 1, !tbaa !33
  %conv21.6 = zext i8 %62 to i32
  %sub22.6 = add nsw i32 %conv21.6, -128
  store i32 %sub22.6, ptr %incdec.ptr19.6, align 4, !tbaa !35
  %incdec.ptr24.6 = getelementptr inbounds i8, ptr %incdec.ptr20.6, i64 1
  %63 = load i8, ptr %incdec.ptr20.6, align 1, !tbaa !33
  %conv25.6 = zext i8 %63 to i32
  %sub26.6 = add nsw i32 %conv25.6, -128
  store i32 %sub26.6, ptr %incdec.ptr23.6, align 16, !tbaa !35
  %incdec.ptr28.6 = getelementptr inbounds i8, ptr %incdec.ptr24.6, i64 1
  %64 = load i8, ptr %incdec.ptr24.6, align 1, !tbaa !33
  %conv29.6 = zext i8 %64 to i32
  %sub30.6 = add nsw i32 %conv29.6, -128
  store i32 %sub30.6, ptr %incdec.ptr27.6, align 4, !tbaa !35
  %incdec.ptr32.6 = getelementptr inbounds i8, ptr %incdec.ptr28.6, i64 1
  %65 = load i8, ptr %incdec.ptr28.6, align 1, !tbaa !33
  %conv33.6 = zext i8 %65 to i32
  %sub34.6 = add nsw i32 %conv33.6, -128
  store i32 %sub34.6, ptr %incdec.ptr31.6, align 8, !tbaa !35
  %66 = load i8, ptr %incdec.ptr32.6, align 1, !tbaa !33
  %conv37.6 = zext i8 %66 to i32
  %sub38.6 = add nsw i32 %conv37.6, -128
  store i32 %sub38.6, ptr %incdec.ptr35.6, align 4, !tbaa !35
  %67 = load ptr, ptr %arrayidx8.7, align 8, !tbaa !28
  %add.ptr10.7 = getelementptr inbounds i8, ptr %67, i64 %idx.ext9
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %add.ptr10.7, i64 1
  %68 = load i8, ptr %add.ptr10.7, align 1, !tbaa !33
  %conv.7 = zext i8 %68 to i32
  %sub.7 = add nsw i32 %conv.7, -128
  store i32 %sub.7, ptr %incdec.ptr39.6, align 16, !tbaa !35
  %incdec.ptr12.7 = getelementptr inbounds i8, ptr %incdec.ptr.7, i64 1
  %69 = load i8, ptr %incdec.ptr.7, align 1, !tbaa !33
  %conv13.7 = zext i8 %69 to i32
  %sub14.7 = add nsw i32 %conv13.7, -128
  store i32 %sub14.7, ptr %incdec.ptr11.7, align 4, !tbaa !35
  %incdec.ptr16.7 = getelementptr inbounds i8, ptr %incdec.ptr12.7, i64 1
  %70 = load i8, ptr %incdec.ptr12.7, align 1, !tbaa !33
  %conv17.7 = zext i8 %70 to i32
  %sub18.7 = add nsw i32 %conv17.7, -128
  store i32 %sub18.7, ptr %incdec.ptr15.7, align 8, !tbaa !35
  %incdec.ptr20.7 = getelementptr inbounds i8, ptr %incdec.ptr16.7, i64 1
  %71 = load i8, ptr %incdec.ptr16.7, align 1, !tbaa !33
  %conv21.7 = zext i8 %71 to i32
  %sub22.7 = add nsw i32 %conv21.7, -128
  store i32 %sub22.7, ptr %incdec.ptr19.7, align 4, !tbaa !35
  %incdec.ptr24.7 = getelementptr inbounds i8, ptr %incdec.ptr20.7, i64 1
  %72 = load i8, ptr %incdec.ptr20.7, align 1, !tbaa !33
  %conv25.7 = zext i8 %72 to i32
  %sub26.7 = add nsw i32 %conv25.7, -128
  store i32 %sub26.7, ptr %incdec.ptr23.7, align 16, !tbaa !35
  %incdec.ptr28.7 = getelementptr inbounds i8, ptr %incdec.ptr24.7, i64 1
  %73 = load i8, ptr %incdec.ptr24.7, align 1, !tbaa !33
  %conv29.7 = zext i8 %73 to i32
  %sub30.7 = add nsw i32 %conv29.7, -128
  store i32 %sub30.7, ptr %incdec.ptr27.7, align 4, !tbaa !35
  %incdec.ptr32.7 = getelementptr inbounds i8, ptr %incdec.ptr28.7, i64 1
  %74 = load i8, ptr %incdec.ptr28.7, align 1, !tbaa !33
  %conv33.7 = zext i8 %74 to i32
  %sub34.7 = add nsw i32 %conv33.7, -128
  store i32 %sub34.7, ptr %incdec.ptr31.7, align 8, !tbaa !35
  %75 = load i8, ptr %incdec.ptr32.7, align 1, !tbaa !33
  %conv37.7 = zext i8 %75 to i32
  %sub38.7 = add nsw i32 %conv37.7, -128
  store i32 %sub38.7, ptr %incdec.ptr35.7, align 4, !tbaa !35
  call void %1(ptr noundef nonnull %workspace) #4
  %arrayidx42 = getelementptr inbounds [64 x i16], ptr %coef_blocks, i64 %indvars.iv128
  br label %for.body47

for.body47:                                       ; preds = %for.cond4.preheader, %if.end68
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end68 ]
  %arrayidx49 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv
  %76 = load i32, ptr %arrayidx49, align 4, !tbaa !35
  %arrayidx51 = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 %indvars.iv
  %77 = load i32, ptr %arrayidx51, align 4, !tbaa !35
  %cmp52 = icmp slt i32 %77, 0
  %shr = ashr i32 %76, 1
  br i1 %cmp52, label %if.then, label %if.else59

if.then:                                          ; preds = %for.body47
  %add = sub i32 %shr, %77
  %cmp55.not = icmp slt i32 %add, %76
  br i1 %cmp55.not, label %if.end, label %if.then57

if.then57:                                        ; preds = %if.then
  %div = sdiv i32 %add, %76
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then57
  %temp.0 = phi i32 [ %div, %if.then57 ], [ 0, %if.then ]
  %sub58 = sub nsw i32 0, %temp.0
  br label %if.end68

if.else59:                                        ; preds = %for.body47
  %add61 = add nsw i32 %77, %shr
  %cmp62.not = icmp slt i32 %add61, %76
  br i1 %cmp62.not, label %if.end68, label %if.then64

if.then64:                                        ; preds = %if.else59
  %div65 = sdiv i32 %add61, %76
  br label %if.end68

if.end68:                                         ; preds = %if.else59, %if.then64, %if.end
  %temp.1 = phi i32 [ %sub58, %if.end ], [ %div65, %if.then64 ], [ 0, %if.else59 ]
  %conv69 = trunc i32 %temp.1 to i16
  %arrayidx71 = getelementptr inbounds i16, ptr %arrayidx42, i64 %indvars.iv
  store i16 %conv69, ptr %arrayidx71, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end74, label %for.body47, !llvm.loop !44

for.end74:                                        ; preds = %if.end68
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %add77 = add i32 %start_col.addr.0125, 8
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count
  br i1 %exitcond131.not, label %for.end78, label %for.cond4.preheader, !llvm.loop !45

for.end78:                                        ; preds = %for.end74, %entry
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %workspace) #4
  ret void
}

declare void @jpeg_fdct_islow(ptr noundef) #2

declare void @jpeg_fdct_ifast(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @forward_DCT_float(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %compptr, ptr nocapture noundef readonly %sample_data, ptr nocapture noundef writeonly %coef_blocks, i32 noundef %start_row, i32 noundef %start_col, i32 noundef %num_blocks) #0 {
entry:
  %workspace = alloca [64 x float], align 16
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 58
  %0 = load ptr, ptr %fdct1, align 8, !tbaa !16
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %do_float_dct, align 8, !tbaa !23
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 4
  %2 = load i32, ptr %quant_tbl_no, align 8, !tbaa !31
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.my_fdct_controller, ptr %0, i64 0, i32 4, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %workspace) #4
  %idx.ext = zext i32 %start_row to i64
  %add.ptr = getelementptr inbounds ptr, ptr %sample_data, i64 %idx.ext
  %cmp98.not = icmp eq i32 %num_blocks, 0
  br i1 %cmp98.not, label %for.end69, label %for.cond2.preheader.preheader

for.cond2.preheader.preheader:                    ; preds = %entry
  %wide.trip.count = zext i32 %num_blocks to i64
  %incdec.ptr10 = getelementptr inbounds float, ptr %workspace, i64 1
  %incdec.ptr15 = getelementptr inbounds float, ptr %workspace, i64 2
  %incdec.ptr20 = getelementptr inbounds float, ptr %workspace, i64 3
  %incdec.ptr25 = getelementptr inbounds float, ptr %workspace, i64 4
  %incdec.ptr30 = getelementptr inbounds float, ptr %workspace, i64 5
  %incdec.ptr35 = getelementptr inbounds float, ptr %workspace, i64 6
  %incdec.ptr40 = getelementptr inbounds float, ptr %workspace, i64 7
  %incdec.ptr45 = getelementptr inbounds float, ptr %workspace, i64 8
  %arrayidx6.1 = getelementptr inbounds ptr, ptr %add.ptr, i64 1
  %incdec.ptr10.1 = getelementptr inbounds float, ptr %workspace, i64 9
  %incdec.ptr15.1 = getelementptr inbounds float, ptr %workspace, i64 10
  %incdec.ptr20.1 = getelementptr inbounds float, ptr %workspace, i64 11
  %incdec.ptr25.1 = getelementptr inbounds float, ptr %workspace, i64 12
  %incdec.ptr30.1 = getelementptr inbounds float, ptr %workspace, i64 13
  %incdec.ptr35.1 = getelementptr inbounds float, ptr %workspace, i64 14
  %incdec.ptr40.1 = getelementptr inbounds float, ptr %workspace, i64 15
  %incdec.ptr45.1 = getelementptr inbounds float, ptr %workspace, i64 16
  %arrayidx6.2 = getelementptr inbounds ptr, ptr %add.ptr, i64 2
  %incdec.ptr10.2 = getelementptr inbounds float, ptr %workspace, i64 17
  %incdec.ptr15.2 = getelementptr inbounds float, ptr %workspace, i64 18
  %incdec.ptr20.2 = getelementptr inbounds float, ptr %workspace, i64 19
  %incdec.ptr25.2 = getelementptr inbounds float, ptr %workspace, i64 20
  %incdec.ptr30.2 = getelementptr inbounds float, ptr %workspace, i64 21
  %incdec.ptr35.2 = getelementptr inbounds float, ptr %workspace, i64 22
  %incdec.ptr40.2 = getelementptr inbounds float, ptr %workspace, i64 23
  %incdec.ptr45.2 = getelementptr inbounds float, ptr %workspace, i64 24
  %arrayidx6.3 = getelementptr inbounds ptr, ptr %add.ptr, i64 3
  %incdec.ptr10.3 = getelementptr inbounds float, ptr %workspace, i64 25
  %incdec.ptr15.3 = getelementptr inbounds float, ptr %workspace, i64 26
  %incdec.ptr20.3 = getelementptr inbounds float, ptr %workspace, i64 27
  %incdec.ptr25.3 = getelementptr inbounds float, ptr %workspace, i64 28
  %incdec.ptr30.3 = getelementptr inbounds float, ptr %workspace, i64 29
  %incdec.ptr35.3 = getelementptr inbounds float, ptr %workspace, i64 30
  %incdec.ptr40.3 = getelementptr inbounds float, ptr %workspace, i64 31
  %incdec.ptr45.3 = getelementptr inbounds float, ptr %workspace, i64 32
  %arrayidx6.4 = getelementptr inbounds ptr, ptr %add.ptr, i64 4
  %incdec.ptr10.4 = getelementptr inbounds float, ptr %workspace, i64 33
  %incdec.ptr15.4 = getelementptr inbounds float, ptr %workspace, i64 34
  %incdec.ptr20.4 = getelementptr inbounds float, ptr %workspace, i64 35
  %incdec.ptr25.4 = getelementptr inbounds float, ptr %workspace, i64 36
  %incdec.ptr30.4 = getelementptr inbounds float, ptr %workspace, i64 37
  %incdec.ptr35.4 = getelementptr inbounds float, ptr %workspace, i64 38
  %incdec.ptr40.4 = getelementptr inbounds float, ptr %workspace, i64 39
  %incdec.ptr45.4 = getelementptr inbounds float, ptr %workspace, i64 40
  %arrayidx6.5 = getelementptr inbounds ptr, ptr %add.ptr, i64 5
  %incdec.ptr10.5 = getelementptr inbounds float, ptr %workspace, i64 41
  %incdec.ptr15.5 = getelementptr inbounds float, ptr %workspace, i64 42
  %incdec.ptr20.5 = getelementptr inbounds float, ptr %workspace, i64 43
  %incdec.ptr25.5 = getelementptr inbounds float, ptr %workspace, i64 44
  %incdec.ptr30.5 = getelementptr inbounds float, ptr %workspace, i64 45
  %incdec.ptr35.5 = getelementptr inbounds float, ptr %workspace, i64 46
  %incdec.ptr40.5 = getelementptr inbounds float, ptr %workspace, i64 47
  %incdec.ptr45.5 = getelementptr inbounds float, ptr %workspace, i64 48
  %arrayidx6.6 = getelementptr inbounds ptr, ptr %add.ptr, i64 6
  %incdec.ptr10.6 = getelementptr inbounds float, ptr %workspace, i64 49
  %incdec.ptr15.6 = getelementptr inbounds float, ptr %workspace, i64 50
  %incdec.ptr20.6 = getelementptr inbounds float, ptr %workspace, i64 51
  %incdec.ptr25.6 = getelementptr inbounds float, ptr %workspace, i64 52
  %incdec.ptr30.6 = getelementptr inbounds float, ptr %workspace, i64 53
  %incdec.ptr35.6 = getelementptr inbounds float, ptr %workspace, i64 54
  %incdec.ptr40.6 = getelementptr inbounds float, ptr %workspace, i64 55
  %incdec.ptr45.6 = getelementptr inbounds float, ptr %workspace, i64 56
  %arrayidx6.7 = getelementptr inbounds ptr, ptr %add.ptr, i64 7
  %incdec.ptr10.7 = getelementptr inbounds float, ptr %workspace, i64 57
  %incdec.ptr15.7 = getelementptr inbounds float, ptr %workspace, i64 58
  %incdec.ptr20.7 = getelementptr inbounds float, ptr %workspace, i64 59
  %incdec.ptr25.7 = getelementptr inbounds float, ptr %workspace, i64 60
  %incdec.ptr30.7 = getelementptr inbounds float, ptr %workspace, i64 61
  %incdec.ptr35.7 = getelementptr inbounds float, ptr %workspace, i64 62
  %incdec.ptr40.7 = getelementptr inbounds float, ptr %workspace, i64 63
  %4 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 4
  %5 = getelementptr inbounds float, ptr %3, i64 4
  %6 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 8
  %7 = getelementptr inbounds float, ptr %3, i64 8
  %8 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 12
  %9 = getelementptr inbounds float, ptr %3, i64 12
  %10 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 16
  %11 = getelementptr inbounds float, ptr %3, i64 16
  %12 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 20
  %13 = getelementptr inbounds float, ptr %3, i64 20
  %14 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 24
  %15 = getelementptr inbounds float, ptr %3, i64 24
  %16 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 28
  %17 = getelementptr inbounds float, ptr %3, i64 28
  %18 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 32
  %19 = getelementptr inbounds float, ptr %3, i64 32
  %20 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 36
  %21 = getelementptr inbounds float, ptr %3, i64 36
  %22 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 40
  %23 = getelementptr inbounds float, ptr %3, i64 40
  %24 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 44
  %25 = getelementptr inbounds float, ptr %3, i64 44
  %26 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 48
  %27 = getelementptr inbounds float, ptr %3, i64 48
  %28 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 52
  %29 = getelementptr inbounds float, ptr %3, i64 52
  %30 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 56
  %31 = getelementptr inbounds float, ptr %3, i64 56
  %32 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 60
  %33 = getelementptr inbounds float, ptr %3, i64 60
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.preheader, %for.cond2.preheader
  %indvars.iv103 = phi i64 [ 0, %for.cond2.preheader.preheader ], [ %indvars.iv.next104, %for.cond2.preheader ]
  %start_col.addr.0100 = phi i32 [ %start_col, %for.cond2.preheader.preheader ], [ %add68, %for.cond2.preheader ]
  %idx.ext7 = zext i32 %start_col.addr.0100 to i64
  %34 = load ptr, ptr %add.ptr, align 8, !tbaa !28
  %add.ptr8 = getelementptr inbounds i8, ptr %34, i64 %idx.ext7
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr8, i64 1
  %35 = load i8, ptr %add.ptr8, align 1, !tbaa !33
  %conv = zext i8 %35 to i32
  %sub = add nsw i32 %conv, -128
  %conv9 = sitofp i32 %sub to float
  store float %conv9, ptr %workspace, align 16, !tbaa !39
  %incdec.ptr11 = getelementptr inbounds i8, ptr %incdec.ptr, i64 1
  %36 = load i8, ptr %incdec.ptr, align 1, !tbaa !33
  %conv12 = zext i8 %36 to i32
  %sub13 = add nsw i32 %conv12, -128
  %conv14 = sitofp i32 %sub13 to float
  store float %conv14, ptr %incdec.ptr10, align 4, !tbaa !39
  %incdec.ptr16 = getelementptr inbounds i8, ptr %incdec.ptr11, i64 1
  %37 = load i8, ptr %incdec.ptr11, align 1, !tbaa !33
  %conv17 = zext i8 %37 to i32
  %sub18 = add nsw i32 %conv17, -128
  %conv19 = sitofp i32 %sub18 to float
  store float %conv19, ptr %incdec.ptr15, align 8, !tbaa !39
  %incdec.ptr21 = getelementptr inbounds i8, ptr %incdec.ptr16, i64 1
  %38 = load i8, ptr %incdec.ptr16, align 1, !tbaa !33
  %conv22 = zext i8 %38 to i32
  %sub23 = add nsw i32 %conv22, -128
  %conv24 = sitofp i32 %sub23 to float
  store float %conv24, ptr %incdec.ptr20, align 4, !tbaa !39
  %incdec.ptr26 = getelementptr inbounds i8, ptr %incdec.ptr21, i64 1
  %39 = load i8, ptr %incdec.ptr21, align 1, !tbaa !33
  %conv27 = zext i8 %39 to i32
  %sub28 = add nsw i32 %conv27, -128
  %conv29 = sitofp i32 %sub28 to float
  store float %conv29, ptr %incdec.ptr25, align 16, !tbaa !39
  %incdec.ptr31 = getelementptr inbounds i8, ptr %incdec.ptr26, i64 1
  %40 = load i8, ptr %incdec.ptr26, align 1, !tbaa !33
  %conv32 = zext i8 %40 to i32
  %sub33 = add nsw i32 %conv32, -128
  %conv34 = sitofp i32 %sub33 to float
  store float %conv34, ptr %incdec.ptr30, align 4, !tbaa !39
  %incdec.ptr36 = getelementptr inbounds i8, ptr %incdec.ptr31, i64 1
  %41 = load i8, ptr %incdec.ptr31, align 1, !tbaa !33
  %conv37 = zext i8 %41 to i32
  %sub38 = add nsw i32 %conv37, -128
  %conv39 = sitofp i32 %sub38 to float
  store float %conv39, ptr %incdec.ptr35, align 8, !tbaa !39
  %42 = load i8, ptr %incdec.ptr36, align 1, !tbaa !33
  %conv42 = zext i8 %42 to i32
  %sub43 = add nsw i32 %conv42, -128
  %conv44 = sitofp i32 %sub43 to float
  store float %conv44, ptr %incdec.ptr40, align 4, !tbaa !39
  %43 = load ptr, ptr %arrayidx6.1, align 8, !tbaa !28
  %add.ptr8.1 = getelementptr inbounds i8, ptr %43, i64 %idx.ext7
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %add.ptr8.1, i64 1
  %44 = load i8, ptr %add.ptr8.1, align 1, !tbaa !33
  %conv.1 = zext i8 %44 to i32
  %sub.1 = add nsw i32 %conv.1, -128
  %conv9.1 = sitofp i32 %sub.1 to float
  store float %conv9.1, ptr %incdec.ptr45, align 16, !tbaa !39
  %incdec.ptr11.1 = getelementptr inbounds i8, ptr %incdec.ptr.1, i64 1
  %45 = load i8, ptr %incdec.ptr.1, align 1, !tbaa !33
  %conv12.1 = zext i8 %45 to i32
  %sub13.1 = add nsw i32 %conv12.1, -128
  %conv14.1 = sitofp i32 %sub13.1 to float
  store float %conv14.1, ptr %incdec.ptr10.1, align 4, !tbaa !39
  %incdec.ptr16.1 = getelementptr inbounds i8, ptr %incdec.ptr11.1, i64 1
  %46 = load i8, ptr %incdec.ptr11.1, align 1, !tbaa !33
  %conv17.1 = zext i8 %46 to i32
  %sub18.1 = add nsw i32 %conv17.1, -128
  %conv19.1 = sitofp i32 %sub18.1 to float
  store float %conv19.1, ptr %incdec.ptr15.1, align 8, !tbaa !39
  %incdec.ptr21.1 = getelementptr inbounds i8, ptr %incdec.ptr16.1, i64 1
  %47 = load i8, ptr %incdec.ptr16.1, align 1, !tbaa !33
  %conv22.1 = zext i8 %47 to i32
  %sub23.1 = add nsw i32 %conv22.1, -128
  %conv24.1 = sitofp i32 %sub23.1 to float
  store float %conv24.1, ptr %incdec.ptr20.1, align 4, !tbaa !39
  %incdec.ptr26.1 = getelementptr inbounds i8, ptr %incdec.ptr21.1, i64 1
  %48 = load i8, ptr %incdec.ptr21.1, align 1, !tbaa !33
  %conv27.1 = zext i8 %48 to i32
  %sub28.1 = add nsw i32 %conv27.1, -128
  %conv29.1 = sitofp i32 %sub28.1 to float
  store float %conv29.1, ptr %incdec.ptr25.1, align 16, !tbaa !39
  %incdec.ptr31.1 = getelementptr inbounds i8, ptr %incdec.ptr26.1, i64 1
  %49 = load i8, ptr %incdec.ptr26.1, align 1, !tbaa !33
  %conv32.1 = zext i8 %49 to i32
  %sub33.1 = add nsw i32 %conv32.1, -128
  %conv34.1 = sitofp i32 %sub33.1 to float
  store float %conv34.1, ptr %incdec.ptr30.1, align 4, !tbaa !39
  %incdec.ptr36.1 = getelementptr inbounds i8, ptr %incdec.ptr31.1, i64 1
  %50 = load i8, ptr %incdec.ptr31.1, align 1, !tbaa !33
  %conv37.1 = zext i8 %50 to i32
  %sub38.1 = add nsw i32 %conv37.1, -128
  %conv39.1 = sitofp i32 %sub38.1 to float
  store float %conv39.1, ptr %incdec.ptr35.1, align 8, !tbaa !39
  %51 = load i8, ptr %incdec.ptr36.1, align 1, !tbaa !33
  %conv42.1 = zext i8 %51 to i32
  %sub43.1 = add nsw i32 %conv42.1, -128
  %conv44.1 = sitofp i32 %sub43.1 to float
  store float %conv44.1, ptr %incdec.ptr40.1, align 4, !tbaa !39
  %52 = load ptr, ptr %arrayidx6.2, align 8, !tbaa !28
  %add.ptr8.2 = getelementptr inbounds i8, ptr %52, i64 %idx.ext7
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %add.ptr8.2, i64 1
  %53 = load i8, ptr %add.ptr8.2, align 1, !tbaa !33
  %conv.2 = zext i8 %53 to i32
  %sub.2 = add nsw i32 %conv.2, -128
  %conv9.2 = sitofp i32 %sub.2 to float
  store float %conv9.2, ptr %incdec.ptr45.1, align 16, !tbaa !39
  %incdec.ptr11.2 = getelementptr inbounds i8, ptr %incdec.ptr.2, i64 1
  %54 = load i8, ptr %incdec.ptr.2, align 1, !tbaa !33
  %conv12.2 = zext i8 %54 to i32
  %sub13.2 = add nsw i32 %conv12.2, -128
  %conv14.2 = sitofp i32 %sub13.2 to float
  store float %conv14.2, ptr %incdec.ptr10.2, align 4, !tbaa !39
  %incdec.ptr16.2 = getelementptr inbounds i8, ptr %incdec.ptr11.2, i64 1
  %55 = load i8, ptr %incdec.ptr11.2, align 1, !tbaa !33
  %conv17.2 = zext i8 %55 to i32
  %sub18.2 = add nsw i32 %conv17.2, -128
  %conv19.2 = sitofp i32 %sub18.2 to float
  store float %conv19.2, ptr %incdec.ptr15.2, align 8, !tbaa !39
  %incdec.ptr21.2 = getelementptr inbounds i8, ptr %incdec.ptr16.2, i64 1
  %56 = load i8, ptr %incdec.ptr16.2, align 1, !tbaa !33
  %conv22.2 = zext i8 %56 to i32
  %sub23.2 = add nsw i32 %conv22.2, -128
  %conv24.2 = sitofp i32 %sub23.2 to float
  store float %conv24.2, ptr %incdec.ptr20.2, align 4, !tbaa !39
  %incdec.ptr26.2 = getelementptr inbounds i8, ptr %incdec.ptr21.2, i64 1
  %57 = load i8, ptr %incdec.ptr21.2, align 1, !tbaa !33
  %conv27.2 = zext i8 %57 to i32
  %sub28.2 = add nsw i32 %conv27.2, -128
  %conv29.2 = sitofp i32 %sub28.2 to float
  store float %conv29.2, ptr %incdec.ptr25.2, align 16, !tbaa !39
  %incdec.ptr31.2 = getelementptr inbounds i8, ptr %incdec.ptr26.2, i64 1
  %58 = load i8, ptr %incdec.ptr26.2, align 1, !tbaa !33
  %conv32.2 = zext i8 %58 to i32
  %sub33.2 = add nsw i32 %conv32.2, -128
  %conv34.2 = sitofp i32 %sub33.2 to float
  store float %conv34.2, ptr %incdec.ptr30.2, align 4, !tbaa !39
  %incdec.ptr36.2 = getelementptr inbounds i8, ptr %incdec.ptr31.2, i64 1
  %59 = load i8, ptr %incdec.ptr31.2, align 1, !tbaa !33
  %conv37.2 = zext i8 %59 to i32
  %sub38.2 = add nsw i32 %conv37.2, -128
  %conv39.2 = sitofp i32 %sub38.2 to float
  store float %conv39.2, ptr %incdec.ptr35.2, align 8, !tbaa !39
  %60 = load i8, ptr %incdec.ptr36.2, align 1, !tbaa !33
  %conv42.2 = zext i8 %60 to i32
  %sub43.2 = add nsw i32 %conv42.2, -128
  %conv44.2 = sitofp i32 %sub43.2 to float
  store float %conv44.2, ptr %incdec.ptr40.2, align 4, !tbaa !39
  %61 = load ptr, ptr %arrayidx6.3, align 8, !tbaa !28
  %add.ptr8.3 = getelementptr inbounds i8, ptr %61, i64 %idx.ext7
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %add.ptr8.3, i64 1
  %62 = load i8, ptr %add.ptr8.3, align 1, !tbaa !33
  %conv.3 = zext i8 %62 to i32
  %sub.3 = add nsw i32 %conv.3, -128
  %conv9.3 = sitofp i32 %sub.3 to float
  store float %conv9.3, ptr %incdec.ptr45.2, align 16, !tbaa !39
  %incdec.ptr11.3 = getelementptr inbounds i8, ptr %incdec.ptr.3, i64 1
  %63 = load i8, ptr %incdec.ptr.3, align 1, !tbaa !33
  %conv12.3 = zext i8 %63 to i32
  %sub13.3 = add nsw i32 %conv12.3, -128
  %conv14.3 = sitofp i32 %sub13.3 to float
  store float %conv14.3, ptr %incdec.ptr10.3, align 4, !tbaa !39
  %incdec.ptr16.3 = getelementptr inbounds i8, ptr %incdec.ptr11.3, i64 1
  %64 = load i8, ptr %incdec.ptr11.3, align 1, !tbaa !33
  %conv17.3 = zext i8 %64 to i32
  %sub18.3 = add nsw i32 %conv17.3, -128
  %conv19.3 = sitofp i32 %sub18.3 to float
  store float %conv19.3, ptr %incdec.ptr15.3, align 8, !tbaa !39
  %incdec.ptr21.3 = getelementptr inbounds i8, ptr %incdec.ptr16.3, i64 1
  %65 = load i8, ptr %incdec.ptr16.3, align 1, !tbaa !33
  %conv22.3 = zext i8 %65 to i32
  %sub23.3 = add nsw i32 %conv22.3, -128
  %conv24.3 = sitofp i32 %sub23.3 to float
  store float %conv24.3, ptr %incdec.ptr20.3, align 4, !tbaa !39
  %incdec.ptr26.3 = getelementptr inbounds i8, ptr %incdec.ptr21.3, i64 1
  %66 = load i8, ptr %incdec.ptr21.3, align 1, !tbaa !33
  %conv27.3 = zext i8 %66 to i32
  %sub28.3 = add nsw i32 %conv27.3, -128
  %conv29.3 = sitofp i32 %sub28.3 to float
  store float %conv29.3, ptr %incdec.ptr25.3, align 16, !tbaa !39
  %incdec.ptr31.3 = getelementptr inbounds i8, ptr %incdec.ptr26.3, i64 1
  %67 = load i8, ptr %incdec.ptr26.3, align 1, !tbaa !33
  %conv32.3 = zext i8 %67 to i32
  %sub33.3 = add nsw i32 %conv32.3, -128
  %conv34.3 = sitofp i32 %sub33.3 to float
  store float %conv34.3, ptr %incdec.ptr30.3, align 4, !tbaa !39
  %incdec.ptr36.3 = getelementptr inbounds i8, ptr %incdec.ptr31.3, i64 1
  %68 = load i8, ptr %incdec.ptr31.3, align 1, !tbaa !33
  %conv37.3 = zext i8 %68 to i32
  %sub38.3 = add nsw i32 %conv37.3, -128
  %conv39.3 = sitofp i32 %sub38.3 to float
  store float %conv39.3, ptr %incdec.ptr35.3, align 8, !tbaa !39
  %69 = load i8, ptr %incdec.ptr36.3, align 1, !tbaa !33
  %conv42.3 = zext i8 %69 to i32
  %sub43.3 = add nsw i32 %conv42.3, -128
  %conv44.3 = sitofp i32 %sub43.3 to float
  store float %conv44.3, ptr %incdec.ptr40.3, align 4, !tbaa !39
  %70 = load ptr, ptr %arrayidx6.4, align 8, !tbaa !28
  %add.ptr8.4 = getelementptr inbounds i8, ptr %70, i64 %idx.ext7
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %add.ptr8.4, i64 1
  %71 = load i8, ptr %add.ptr8.4, align 1, !tbaa !33
  %conv.4 = zext i8 %71 to i32
  %sub.4 = add nsw i32 %conv.4, -128
  %conv9.4 = sitofp i32 %sub.4 to float
  store float %conv9.4, ptr %incdec.ptr45.3, align 16, !tbaa !39
  %incdec.ptr11.4 = getelementptr inbounds i8, ptr %incdec.ptr.4, i64 1
  %72 = load i8, ptr %incdec.ptr.4, align 1, !tbaa !33
  %conv12.4 = zext i8 %72 to i32
  %sub13.4 = add nsw i32 %conv12.4, -128
  %conv14.4 = sitofp i32 %sub13.4 to float
  store float %conv14.4, ptr %incdec.ptr10.4, align 4, !tbaa !39
  %incdec.ptr16.4 = getelementptr inbounds i8, ptr %incdec.ptr11.4, i64 1
  %73 = load i8, ptr %incdec.ptr11.4, align 1, !tbaa !33
  %conv17.4 = zext i8 %73 to i32
  %sub18.4 = add nsw i32 %conv17.4, -128
  %conv19.4 = sitofp i32 %sub18.4 to float
  store float %conv19.4, ptr %incdec.ptr15.4, align 8, !tbaa !39
  %incdec.ptr21.4 = getelementptr inbounds i8, ptr %incdec.ptr16.4, i64 1
  %74 = load i8, ptr %incdec.ptr16.4, align 1, !tbaa !33
  %conv22.4 = zext i8 %74 to i32
  %sub23.4 = add nsw i32 %conv22.4, -128
  %conv24.4 = sitofp i32 %sub23.4 to float
  store float %conv24.4, ptr %incdec.ptr20.4, align 4, !tbaa !39
  %incdec.ptr26.4 = getelementptr inbounds i8, ptr %incdec.ptr21.4, i64 1
  %75 = load i8, ptr %incdec.ptr21.4, align 1, !tbaa !33
  %conv27.4 = zext i8 %75 to i32
  %sub28.4 = add nsw i32 %conv27.4, -128
  %conv29.4 = sitofp i32 %sub28.4 to float
  store float %conv29.4, ptr %incdec.ptr25.4, align 16, !tbaa !39
  %incdec.ptr31.4 = getelementptr inbounds i8, ptr %incdec.ptr26.4, i64 1
  %76 = load i8, ptr %incdec.ptr26.4, align 1, !tbaa !33
  %conv32.4 = zext i8 %76 to i32
  %sub33.4 = add nsw i32 %conv32.4, -128
  %conv34.4 = sitofp i32 %sub33.4 to float
  store float %conv34.4, ptr %incdec.ptr30.4, align 4, !tbaa !39
  %incdec.ptr36.4 = getelementptr inbounds i8, ptr %incdec.ptr31.4, i64 1
  %77 = load i8, ptr %incdec.ptr31.4, align 1, !tbaa !33
  %conv37.4 = zext i8 %77 to i32
  %sub38.4 = add nsw i32 %conv37.4, -128
  %conv39.4 = sitofp i32 %sub38.4 to float
  store float %conv39.4, ptr %incdec.ptr35.4, align 8, !tbaa !39
  %78 = load i8, ptr %incdec.ptr36.4, align 1, !tbaa !33
  %conv42.4 = zext i8 %78 to i32
  %sub43.4 = add nsw i32 %conv42.4, -128
  %conv44.4 = sitofp i32 %sub43.4 to float
  store float %conv44.4, ptr %incdec.ptr40.4, align 4, !tbaa !39
  %79 = load ptr, ptr %arrayidx6.5, align 8, !tbaa !28
  %add.ptr8.5 = getelementptr inbounds i8, ptr %79, i64 %idx.ext7
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %add.ptr8.5, i64 1
  %80 = load i8, ptr %add.ptr8.5, align 1, !tbaa !33
  %conv.5 = zext i8 %80 to i32
  %sub.5 = add nsw i32 %conv.5, -128
  %conv9.5 = sitofp i32 %sub.5 to float
  store float %conv9.5, ptr %incdec.ptr45.4, align 16, !tbaa !39
  %incdec.ptr11.5 = getelementptr inbounds i8, ptr %incdec.ptr.5, i64 1
  %81 = load i8, ptr %incdec.ptr.5, align 1, !tbaa !33
  %conv12.5 = zext i8 %81 to i32
  %sub13.5 = add nsw i32 %conv12.5, -128
  %conv14.5 = sitofp i32 %sub13.5 to float
  store float %conv14.5, ptr %incdec.ptr10.5, align 4, !tbaa !39
  %incdec.ptr16.5 = getelementptr inbounds i8, ptr %incdec.ptr11.5, i64 1
  %82 = load i8, ptr %incdec.ptr11.5, align 1, !tbaa !33
  %conv17.5 = zext i8 %82 to i32
  %sub18.5 = add nsw i32 %conv17.5, -128
  %conv19.5 = sitofp i32 %sub18.5 to float
  store float %conv19.5, ptr %incdec.ptr15.5, align 8, !tbaa !39
  %incdec.ptr21.5 = getelementptr inbounds i8, ptr %incdec.ptr16.5, i64 1
  %83 = load i8, ptr %incdec.ptr16.5, align 1, !tbaa !33
  %conv22.5 = zext i8 %83 to i32
  %sub23.5 = add nsw i32 %conv22.5, -128
  %conv24.5 = sitofp i32 %sub23.5 to float
  store float %conv24.5, ptr %incdec.ptr20.5, align 4, !tbaa !39
  %incdec.ptr26.5 = getelementptr inbounds i8, ptr %incdec.ptr21.5, i64 1
  %84 = load i8, ptr %incdec.ptr21.5, align 1, !tbaa !33
  %conv27.5 = zext i8 %84 to i32
  %sub28.5 = add nsw i32 %conv27.5, -128
  %conv29.5 = sitofp i32 %sub28.5 to float
  store float %conv29.5, ptr %incdec.ptr25.5, align 16, !tbaa !39
  %incdec.ptr31.5 = getelementptr inbounds i8, ptr %incdec.ptr26.5, i64 1
  %85 = load i8, ptr %incdec.ptr26.5, align 1, !tbaa !33
  %conv32.5 = zext i8 %85 to i32
  %sub33.5 = add nsw i32 %conv32.5, -128
  %conv34.5 = sitofp i32 %sub33.5 to float
  store float %conv34.5, ptr %incdec.ptr30.5, align 4, !tbaa !39
  %incdec.ptr36.5 = getelementptr inbounds i8, ptr %incdec.ptr31.5, i64 1
  %86 = load i8, ptr %incdec.ptr31.5, align 1, !tbaa !33
  %conv37.5 = zext i8 %86 to i32
  %sub38.5 = add nsw i32 %conv37.5, -128
  %conv39.5 = sitofp i32 %sub38.5 to float
  store float %conv39.5, ptr %incdec.ptr35.5, align 8, !tbaa !39
  %87 = load i8, ptr %incdec.ptr36.5, align 1, !tbaa !33
  %conv42.5 = zext i8 %87 to i32
  %sub43.5 = add nsw i32 %conv42.5, -128
  %conv44.5 = sitofp i32 %sub43.5 to float
  store float %conv44.5, ptr %incdec.ptr40.5, align 4, !tbaa !39
  %88 = load ptr, ptr %arrayidx6.6, align 8, !tbaa !28
  %add.ptr8.6 = getelementptr inbounds i8, ptr %88, i64 %idx.ext7
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %add.ptr8.6, i64 1
  %89 = load i8, ptr %add.ptr8.6, align 1, !tbaa !33
  %conv.6 = zext i8 %89 to i32
  %sub.6 = add nsw i32 %conv.6, -128
  %conv9.6 = sitofp i32 %sub.6 to float
  store float %conv9.6, ptr %incdec.ptr45.5, align 16, !tbaa !39
  %incdec.ptr11.6 = getelementptr inbounds i8, ptr %incdec.ptr.6, i64 1
  %90 = load i8, ptr %incdec.ptr.6, align 1, !tbaa !33
  %conv12.6 = zext i8 %90 to i32
  %sub13.6 = add nsw i32 %conv12.6, -128
  %conv14.6 = sitofp i32 %sub13.6 to float
  store float %conv14.6, ptr %incdec.ptr10.6, align 4, !tbaa !39
  %incdec.ptr16.6 = getelementptr inbounds i8, ptr %incdec.ptr11.6, i64 1
  %91 = load i8, ptr %incdec.ptr11.6, align 1, !tbaa !33
  %conv17.6 = zext i8 %91 to i32
  %sub18.6 = add nsw i32 %conv17.6, -128
  %conv19.6 = sitofp i32 %sub18.6 to float
  store float %conv19.6, ptr %incdec.ptr15.6, align 8, !tbaa !39
  %incdec.ptr21.6 = getelementptr inbounds i8, ptr %incdec.ptr16.6, i64 1
  %92 = load i8, ptr %incdec.ptr16.6, align 1, !tbaa !33
  %conv22.6 = zext i8 %92 to i32
  %sub23.6 = add nsw i32 %conv22.6, -128
  %conv24.6 = sitofp i32 %sub23.6 to float
  store float %conv24.6, ptr %incdec.ptr20.6, align 4, !tbaa !39
  %incdec.ptr26.6 = getelementptr inbounds i8, ptr %incdec.ptr21.6, i64 1
  %93 = load i8, ptr %incdec.ptr21.6, align 1, !tbaa !33
  %conv27.6 = zext i8 %93 to i32
  %sub28.6 = add nsw i32 %conv27.6, -128
  %conv29.6 = sitofp i32 %sub28.6 to float
  store float %conv29.6, ptr %incdec.ptr25.6, align 16, !tbaa !39
  %incdec.ptr31.6 = getelementptr inbounds i8, ptr %incdec.ptr26.6, i64 1
  %94 = load i8, ptr %incdec.ptr26.6, align 1, !tbaa !33
  %conv32.6 = zext i8 %94 to i32
  %sub33.6 = add nsw i32 %conv32.6, -128
  %conv34.6 = sitofp i32 %sub33.6 to float
  store float %conv34.6, ptr %incdec.ptr30.6, align 4, !tbaa !39
  %incdec.ptr36.6 = getelementptr inbounds i8, ptr %incdec.ptr31.6, i64 1
  %95 = load i8, ptr %incdec.ptr31.6, align 1, !tbaa !33
  %conv37.6 = zext i8 %95 to i32
  %sub38.6 = add nsw i32 %conv37.6, -128
  %conv39.6 = sitofp i32 %sub38.6 to float
  store float %conv39.6, ptr %incdec.ptr35.6, align 8, !tbaa !39
  %96 = load i8, ptr %incdec.ptr36.6, align 1, !tbaa !33
  %conv42.6 = zext i8 %96 to i32
  %sub43.6 = add nsw i32 %conv42.6, -128
  %conv44.6 = sitofp i32 %sub43.6 to float
  store float %conv44.6, ptr %incdec.ptr40.6, align 4, !tbaa !39
  %97 = load ptr, ptr %arrayidx6.7, align 8, !tbaa !28
  %add.ptr8.7 = getelementptr inbounds i8, ptr %97, i64 %idx.ext7
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %add.ptr8.7, i64 1
  %98 = load i8, ptr %add.ptr8.7, align 1, !tbaa !33
  %conv.7 = zext i8 %98 to i32
  %sub.7 = add nsw i32 %conv.7, -128
  %conv9.7 = sitofp i32 %sub.7 to float
  store float %conv9.7, ptr %incdec.ptr45.6, align 16, !tbaa !39
  %incdec.ptr11.7 = getelementptr inbounds i8, ptr %incdec.ptr.7, i64 1
  %99 = load i8, ptr %incdec.ptr.7, align 1, !tbaa !33
  %conv12.7 = zext i8 %99 to i32
  %sub13.7 = add nsw i32 %conv12.7, -128
  %conv14.7 = sitofp i32 %sub13.7 to float
  store float %conv14.7, ptr %incdec.ptr10.7, align 4, !tbaa !39
  %incdec.ptr16.7 = getelementptr inbounds i8, ptr %incdec.ptr11.7, i64 1
  %100 = load i8, ptr %incdec.ptr11.7, align 1, !tbaa !33
  %conv17.7 = zext i8 %100 to i32
  %sub18.7 = add nsw i32 %conv17.7, -128
  %conv19.7 = sitofp i32 %sub18.7 to float
  store float %conv19.7, ptr %incdec.ptr15.7, align 8, !tbaa !39
  %incdec.ptr21.7 = getelementptr inbounds i8, ptr %incdec.ptr16.7, i64 1
  %101 = load i8, ptr %incdec.ptr16.7, align 1, !tbaa !33
  %conv22.7 = zext i8 %101 to i32
  %sub23.7 = add nsw i32 %conv22.7, -128
  %conv24.7 = sitofp i32 %sub23.7 to float
  store float %conv24.7, ptr %incdec.ptr20.7, align 4, !tbaa !39
  %incdec.ptr26.7 = getelementptr inbounds i8, ptr %incdec.ptr21.7, i64 1
  %102 = load i8, ptr %incdec.ptr21.7, align 1, !tbaa !33
  %conv27.7 = zext i8 %102 to i32
  %sub28.7 = add nsw i32 %conv27.7, -128
  %conv29.7 = sitofp i32 %sub28.7 to float
  store float %conv29.7, ptr %incdec.ptr25.7, align 16, !tbaa !39
  %incdec.ptr31.7 = getelementptr inbounds i8, ptr %incdec.ptr26.7, i64 1
  %103 = load i8, ptr %incdec.ptr26.7, align 1, !tbaa !33
  %conv32.7 = zext i8 %103 to i32
  %sub33.7 = add nsw i32 %conv32.7, -128
  %conv34.7 = sitofp i32 %sub33.7 to float
  store float %conv34.7, ptr %incdec.ptr30.7, align 4, !tbaa !39
  %incdec.ptr36.7 = getelementptr inbounds i8, ptr %incdec.ptr31.7, i64 1
  %104 = load i8, ptr %incdec.ptr31.7, align 1, !tbaa !33
  %conv37.7 = zext i8 %104 to i32
  %sub38.7 = add nsw i32 %conv37.7, -128
  %conv39.7 = sitofp i32 %sub38.7 to float
  store float %conv39.7, ptr %incdec.ptr35.7, align 8, !tbaa !39
  %105 = load i8, ptr %incdec.ptr36.7, align 1, !tbaa !33
  %conv42.7 = zext i8 %105 to i32
  %sub43.7 = add nsw i32 %conv42.7, -128
  %conv44.7 = sitofp i32 %sub43.7 to float
  store float %conv44.7, ptr %incdec.ptr40.7, align 4, !tbaa !39
  call void %1(ptr noundef nonnull %workspace) #4
  %arrayidx48 = getelementptr inbounds [64 x i16], ptr %coef_blocks, i64 %indvars.iv103
  %wide.load = load <4 x float>, ptr %workspace, align 16, !tbaa !39
  %wide.load107 = load <4 x float>, ptr %3, align 4, !tbaa !39
  %106 = fmul <4 x float> %wide.load, %wide.load107
  %107 = fadd <4 x float> %106, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %108 = fptosi <4 x float> %107 to <4 x i32>
  %109 = trunc <4 x i32> %108 to <4 x i16>
  %110 = add <4 x i16> %109, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  store <4 x i16> %110, ptr %arrayidx48, align 2, !tbaa !34
  %wide.load.1 = load <4 x float>, ptr %4, align 16, !tbaa !39
  %wide.load107.1 = load <4 x float>, ptr %5, align 4, !tbaa !39
  %111 = fmul <4 x float> %wide.load.1, %wide.load107.1
  %112 = fadd <4 x float> %111, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %113 = fptosi <4 x float> %112 to <4 x i32>
  %114 = trunc <4 x i32> %113 to <4 x i16>
  %115 = add <4 x i16> %114, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %116 = getelementptr inbounds i16, ptr %arrayidx48, i64 4
  store <4 x i16> %115, ptr %116, align 2, !tbaa !34
  %wide.load.2 = load <4 x float>, ptr %6, align 16, !tbaa !39
  %wide.load107.2 = load <4 x float>, ptr %7, align 4, !tbaa !39
  %117 = fmul <4 x float> %wide.load.2, %wide.load107.2
  %118 = fadd <4 x float> %117, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %119 = fptosi <4 x float> %118 to <4 x i32>
  %120 = trunc <4 x i32> %119 to <4 x i16>
  %121 = add <4 x i16> %120, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %122 = getelementptr inbounds i16, ptr %arrayidx48, i64 8
  store <4 x i16> %121, ptr %122, align 2, !tbaa !34
  %wide.load.3 = load <4 x float>, ptr %8, align 16, !tbaa !39
  %wide.load107.3 = load <4 x float>, ptr %9, align 4, !tbaa !39
  %123 = fmul <4 x float> %wide.load.3, %wide.load107.3
  %124 = fadd <4 x float> %123, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %125 = fptosi <4 x float> %124 to <4 x i32>
  %126 = trunc <4 x i32> %125 to <4 x i16>
  %127 = add <4 x i16> %126, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %128 = getelementptr inbounds i16, ptr %arrayidx48, i64 12
  store <4 x i16> %127, ptr %128, align 2, !tbaa !34
  %wide.load.4 = load <4 x float>, ptr %10, align 16, !tbaa !39
  %wide.load107.4 = load <4 x float>, ptr %11, align 4, !tbaa !39
  %129 = fmul <4 x float> %wide.load.4, %wide.load107.4
  %130 = fadd <4 x float> %129, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %131 = fptosi <4 x float> %130 to <4 x i32>
  %132 = trunc <4 x i32> %131 to <4 x i16>
  %133 = add <4 x i16> %132, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %134 = getelementptr inbounds i16, ptr %arrayidx48, i64 16
  store <4 x i16> %133, ptr %134, align 2, !tbaa !34
  %wide.load.5 = load <4 x float>, ptr %12, align 16, !tbaa !39
  %wide.load107.5 = load <4 x float>, ptr %13, align 4, !tbaa !39
  %135 = fmul <4 x float> %wide.load.5, %wide.load107.5
  %136 = fadd <4 x float> %135, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %137 = fptosi <4 x float> %136 to <4 x i32>
  %138 = trunc <4 x i32> %137 to <4 x i16>
  %139 = add <4 x i16> %138, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %140 = getelementptr inbounds i16, ptr %arrayidx48, i64 20
  store <4 x i16> %139, ptr %140, align 2, !tbaa !34
  %wide.load.6 = load <4 x float>, ptr %14, align 16, !tbaa !39
  %wide.load107.6 = load <4 x float>, ptr %15, align 4, !tbaa !39
  %141 = fmul <4 x float> %wide.load.6, %wide.load107.6
  %142 = fadd <4 x float> %141, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %143 = fptosi <4 x float> %142 to <4 x i32>
  %144 = trunc <4 x i32> %143 to <4 x i16>
  %145 = add <4 x i16> %144, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %146 = getelementptr inbounds i16, ptr %arrayidx48, i64 24
  store <4 x i16> %145, ptr %146, align 2, !tbaa !34
  %wide.load.7 = load <4 x float>, ptr %16, align 16, !tbaa !39
  %wide.load107.7 = load <4 x float>, ptr %17, align 4, !tbaa !39
  %147 = fmul <4 x float> %wide.load.7, %wide.load107.7
  %148 = fadd <4 x float> %147, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %149 = fptosi <4 x float> %148 to <4 x i32>
  %150 = trunc <4 x i32> %149 to <4 x i16>
  %151 = add <4 x i16> %150, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %152 = getelementptr inbounds i16, ptr %arrayidx48, i64 28
  store <4 x i16> %151, ptr %152, align 2, !tbaa !34
  %wide.load.8 = load <4 x float>, ptr %18, align 16, !tbaa !39
  %wide.load107.8 = load <4 x float>, ptr %19, align 4, !tbaa !39
  %153 = fmul <4 x float> %wide.load.8, %wide.load107.8
  %154 = fadd <4 x float> %153, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %155 = fptosi <4 x float> %154 to <4 x i32>
  %156 = trunc <4 x i32> %155 to <4 x i16>
  %157 = add <4 x i16> %156, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %158 = getelementptr inbounds i16, ptr %arrayidx48, i64 32
  store <4 x i16> %157, ptr %158, align 2, !tbaa !34
  %wide.load.9 = load <4 x float>, ptr %20, align 16, !tbaa !39
  %wide.load107.9 = load <4 x float>, ptr %21, align 4, !tbaa !39
  %159 = fmul <4 x float> %wide.load.9, %wide.load107.9
  %160 = fadd <4 x float> %159, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %161 = fptosi <4 x float> %160 to <4 x i32>
  %162 = trunc <4 x i32> %161 to <4 x i16>
  %163 = add <4 x i16> %162, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %164 = getelementptr inbounds i16, ptr %arrayidx48, i64 36
  store <4 x i16> %163, ptr %164, align 2, !tbaa !34
  %wide.load.10 = load <4 x float>, ptr %22, align 16, !tbaa !39
  %wide.load107.10 = load <4 x float>, ptr %23, align 4, !tbaa !39
  %165 = fmul <4 x float> %wide.load.10, %wide.load107.10
  %166 = fadd <4 x float> %165, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %167 = fptosi <4 x float> %166 to <4 x i32>
  %168 = trunc <4 x i32> %167 to <4 x i16>
  %169 = add <4 x i16> %168, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %170 = getelementptr inbounds i16, ptr %arrayidx48, i64 40
  store <4 x i16> %169, ptr %170, align 2, !tbaa !34
  %wide.load.11 = load <4 x float>, ptr %24, align 16, !tbaa !39
  %wide.load107.11 = load <4 x float>, ptr %25, align 4, !tbaa !39
  %171 = fmul <4 x float> %wide.load.11, %wide.load107.11
  %172 = fadd <4 x float> %171, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %173 = fptosi <4 x float> %172 to <4 x i32>
  %174 = trunc <4 x i32> %173 to <4 x i16>
  %175 = add <4 x i16> %174, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %176 = getelementptr inbounds i16, ptr %arrayidx48, i64 44
  store <4 x i16> %175, ptr %176, align 2, !tbaa !34
  %wide.load.12 = load <4 x float>, ptr %26, align 16, !tbaa !39
  %wide.load107.12 = load <4 x float>, ptr %27, align 4, !tbaa !39
  %177 = fmul <4 x float> %wide.load.12, %wide.load107.12
  %178 = fadd <4 x float> %177, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %179 = fptosi <4 x float> %178 to <4 x i32>
  %180 = trunc <4 x i32> %179 to <4 x i16>
  %181 = add <4 x i16> %180, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %182 = getelementptr inbounds i16, ptr %arrayidx48, i64 48
  store <4 x i16> %181, ptr %182, align 2, !tbaa !34
  %wide.load.13 = load <4 x float>, ptr %28, align 16, !tbaa !39
  %wide.load107.13 = load <4 x float>, ptr %29, align 4, !tbaa !39
  %183 = fmul <4 x float> %wide.load.13, %wide.load107.13
  %184 = fadd <4 x float> %183, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %185 = fptosi <4 x float> %184 to <4 x i32>
  %186 = trunc <4 x i32> %185 to <4 x i16>
  %187 = add <4 x i16> %186, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %188 = getelementptr inbounds i16, ptr %arrayidx48, i64 52
  store <4 x i16> %187, ptr %188, align 2, !tbaa !34
  %wide.load.14 = load <4 x float>, ptr %30, align 16, !tbaa !39
  %wide.load107.14 = load <4 x float>, ptr %31, align 4, !tbaa !39
  %189 = fmul <4 x float> %wide.load.14, %wide.load107.14
  %190 = fadd <4 x float> %189, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %191 = fptosi <4 x float> %190 to <4 x i32>
  %192 = trunc <4 x i32> %191 to <4 x i16>
  %193 = add <4 x i16> %192, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %194 = getelementptr inbounds i16, ptr %arrayidx48, i64 56
  store <4 x i16> %193, ptr %194, align 2, !tbaa !34
  %wide.load.15 = load <4 x float>, ptr %32, align 16, !tbaa !39
  %wide.load107.15 = load <4 x float>, ptr %33, align 4, !tbaa !39
  %195 = fmul <4 x float> %wide.load.15, %wide.load107.15
  %196 = fadd <4 x float> %195, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %197 = fptosi <4 x float> %196 to <4 x i32>
  %198 = trunc <4 x i32> %197 to <4 x i16>
  %199 = add <4 x i16> %198, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %200 = getelementptr inbounds i16, ptr %arrayidx48, i64 60
  store <4 x i16> %199, ptr %200, align 2, !tbaa !34
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %add68 = add i32 %start_col.addr.0100, 8
  %exitcond106.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond106.not, label %for.end69, label %for.cond2.preheader, !llvm.loop !46

for.end69:                                        ; preds = %for.cond2.preheader, %entry
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %workspace) #4
  ret void
}

declare void @jpeg_fdct_float(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!16 = !{!6, !7, i64 480}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 16, !8, i64 24, !7, i64 56, !8, i64 64}
!19 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!20 = !{!6, !8, i64 268}
!21 = !{!18, !7, i64 8}
!22 = !{!18, !7, i64 16}
!23 = !{!18, !7, i64 56}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!26, !7, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!6, !10, i64 68}
!30 = !{!6, !7, i64 80}
!31 = !{!32, !10, i64 16}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!8, !8, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!10, !10, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!11, !11, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !8, i64 0}
!41 = distinct !{!41, !37, !42}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37}
