; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/check/sha256.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/check/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

@lzma_sha256_init.s = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16, !dbg !0
@SHA256_K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16, !dbg !52

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @lzma_sha256_init(ptr nocapture noundef writeonly %check) local_unnamed_addr #0 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr %check, metadata !57, metadata !DIExpression()), !dbg !66
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %state, ptr noundef nonnull align 16 dereferenceable(32) @lzma_sha256_init.s, i64 32, i1 false), !dbg !68
  %size = getelementptr inbounds %struct.anon, ptr %state, i64 0, i32 1, !dbg !69
  store i64 0, ptr %size, align 8, !dbg !70, !tbaa !71
  ret void, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @lzma_sha256_update(ptr nocapture noundef readonly %buf, i64 noundef %size, ptr nocapture noundef %check) local_unnamed_addr #3 !dbg !75 {
entry:
  call void @llvm.dbg.value(metadata ptr %buf, metadata !83, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i64 %size, metadata !84, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata ptr %check, metadata !85, metadata !DIExpression()), !dbg !90
  %cmp.not26 = icmp eq i64 %size, 0, !dbg !91
  br i1 %cmp.not26, label %while.end, label %while.body.lr.ph, !dbg !92

while.body.lr.ph:                                 ; preds = %entry
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1
  %size1 = getelementptr inbounds %struct.anon, ptr %state, i64 0, i32 1
  br label %while.body, !dbg !92

while.body:                                       ; preds = %while.body.lr.ph, %if.end12
  %buf.addr.028 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr3, %if.end12 ]
  %size.addr.027 = phi i64 [ %size, %while.body.lr.ph ], [ %sub4, %if.end12 ]
  call void @llvm.dbg.value(metadata ptr %buf.addr.028, metadata !83, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i64 %size.addr.027, metadata !84, metadata !DIExpression()), !dbg !90
  %0 = load i64, ptr %size1, align 8, !dbg !93, !tbaa !71
  %and = and i64 %0, 63, !dbg !94
  call void @llvm.dbg.value(metadata i64 %and, metadata !86, metadata !DIExpression()), !dbg !95
  %sub = sub nuw nsw i64 64, %and, !dbg !96
  call void @llvm.dbg.value(metadata i64 %sub, metadata !89, metadata !DIExpression()), !dbg !95
  %1 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %size.addr.027), !dbg !97
  call void @llvm.dbg.value(metadata i64 %1, metadata !89, metadata !DIExpression()), !dbg !95
  %add.ptr = getelementptr inbounds i8, ptr %check, i64 %and, !dbg !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf.addr.028, i64 %1, i1 false), !dbg !99
  %add.ptr3 = getelementptr inbounds i8, ptr %buf.addr.028, i64 %1, !dbg !100
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !83, metadata !DIExpression()), !dbg !90
  %sub4 = sub i64 %size.addr.027, %1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %sub4, metadata !84, metadata !DIExpression()), !dbg !90
  %2 = load i64, ptr %size1, align 8, !dbg !102, !tbaa !71
  %add = add i64 %1, %2, !dbg !102
  store i64 %add, ptr %size1, align 8, !dbg !102, !tbaa !71
  %and9 = and i64 %add, 63, !dbg !103
  %cmp10 = icmp eq i64 %and9, 0, !dbg !105
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !106

if.then11:                                        ; preds = %while.body
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !107
  br label %if.end12, !dbg !107

if.end12:                                         ; preds = %if.then11, %while.body
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !83, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i64 %sub4, metadata !84, metadata !DIExpression()), !dbg !90
  %cmp.not = icmp eq i64 %sub4, 0, !dbg !91
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !92, !llvm.loop !108

while.end:                                        ; preds = %if.end12, %entry
  ret void, !dbg !112
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal fastcc void @process(ptr nocapture noundef %check) unnamed_addr #5 !dbg !113 {
entry:
  %data = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %check, metadata !115, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %data, metadata !116, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !122
  br label %for.body, !dbg !123

for.cond.cleanup:                                 ; preds = %for.body
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !124
  call void @llvm.dbg.value(metadata ptr %state, metadata !125, metadata !DIExpression()) #6, !dbg !137
  call void @llvm.dbg.value(metadata ptr %data, metadata !132, metadata !DIExpression()) #6, !dbg !137
  %T.sroa.0.0.copyload.i = load i32, ptr %state, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.0.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %T.sroa.60.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 4, !dbg !139
  %T.sroa.60.0.copyload.i = load i32, ptr %T.sroa.60.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.60.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %T.sroa.117.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 8, !dbg !139
  %T.sroa.117.0.copyload.i = load i32, ptr %T.sroa.117.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.117.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %T.sroa.174.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 12, !dbg !139
  %T.sroa.174.0.copyload.i = load i32, ptr %T.sroa.174.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.174.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %T.sroa.231.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 16, !dbg !139
  %T.sroa.231.0.copyload.i = load i32, ptr %T.sroa.231.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.231.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %T.sroa.288.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 20, !dbg !139
  %T.sroa.288.0.copyload.i = load i32, ptr %T.sroa.288.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.288.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %T.sroa.345.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 24, !dbg !139
  %T.sroa.345.0.copyload.i = load i32, ptr %T.sroa.345.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.345.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %T.sroa.402.0..sroa_idx.i = getelementptr inbounds i8, ptr %state, i64 28, !dbg !139
  %T.sroa.402.0.copyload.i = load i32, ptr %T.sroa.402.0..sroa_idx.i, align 4, !dbg !139
  call void @llvm.dbg.value(metadata i32 %T.sroa.402.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()) #6, !dbg !140
  call void @llvm.dbg.value(metadata i32 %T.sroa.0.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.60.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.117.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.174.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.231.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.288.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.345.0.copyload.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)) #6, !dbg !137
  %0 = load i32, ptr %data, align 16
  %arrayidx157.i = getelementptr inbounds i32, ptr %data, i64 1
  %1 = load i32, ptr %arrayidx157.i, align 4
  %arrayidx261.i = getelementptr inbounds i32, ptr %data, i64 2
  %2 = load i32, ptr %arrayidx261.i, align 8
  %arrayidx365.i = getelementptr inbounds i32, ptr %data, i64 3
  %3 = load i32, ptr %arrayidx365.i, align 4
  %arrayidx469.i = getelementptr inbounds i32, ptr %data, i64 4
  %4 = load i32, ptr %arrayidx469.i, align 16
  %arrayidx573.i = getelementptr inbounds i32, ptr %data, i64 5
  %5 = load i32, ptr %arrayidx573.i, align 4
  %arrayidx677.i = getelementptr inbounds i32, ptr %data, i64 6
  %6 = load i32, ptr %arrayidx677.i, align 8
  %arrayidx781.i = getelementptr inbounds i32, ptr %data, i64 7
  %7 = load i32, ptr %arrayidx781.i, align 4
  %arrayidx885.i = getelementptr inbounds i32, ptr %data, i64 8
  %8 = load i32, ptr %arrayidx885.i, align 16
  %arrayidx989.i = getelementptr inbounds i32, ptr %data, i64 9
  %9 = load i32, ptr %arrayidx989.i, align 4
  %arrayidx1093.i = getelementptr inbounds i32, ptr %data, i64 10
  %10 = load i32, ptr %arrayidx1093.i, align 8
  %arrayidx1197.i = getelementptr inbounds i32, ptr %data, i64 11
  %11 = load i32, ptr %arrayidx1197.i, align 4
  %arrayidx1301.i = getelementptr inbounds i32, ptr %data, i64 12
  %12 = load i32, ptr %arrayidx1301.i, align 16
  %arrayidx1405.i = getelementptr inbounds i32, ptr %data, i64 13
  %13 = load i32, ptr %arrayidx1405.i, align 4
  %arrayidx1509.i = getelementptr inbounds i32, ptr %data, i64 14
  %14 = load i32, ptr %arrayidx1509.i, align 8
  %arrayidx1613.i = getelementptr inbounds i32, ptr %data, i64 15
  %15 = load i32, ptr %arrayidx1613.i, align 4
  br label %for.body.i, !dbg !141

for.body.i:                                       ; preds = %cond.end1615.i, %for.cond.cleanup
  %indvars.iv.i = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next.i, %cond.end1615.i ]
  %T.sroa.0.02332.i = phi i32 [ %T.sroa.0.0.copyload.i, %for.cond.cleanup ], [ %add1651.i, %cond.end1615.i ]
  %T.sroa.60.02331.i = phi i32 [ %T.sroa.60.0.copyload.i, %for.cond.cleanup ], [ %add1547.i, %cond.end1615.i ]
  %T.sroa.117.02330.i = phi i32 [ %T.sroa.117.0.copyload.i, %for.cond.cleanup ], [ %add1443.i, %cond.end1615.i ]
  %T.sroa.174.02329.i = phi i32 [ %T.sroa.174.0.copyload.i, %for.cond.cleanup ], [ %add1339.i, %cond.end1615.i ]
  %T.sroa.231.02328.i = phi i32 [ %T.sroa.231.0.copyload.i, %for.cond.cleanup ], [ %add1622.i, %cond.end1615.i ]
  %T.sroa.288.02327.i = phi i32 [ %T.sroa.288.0.copyload.i, %for.cond.cleanup ], [ %add1518.i, %cond.end1615.i ]
  %T.sroa.345.02326.i = phi i32 [ %T.sroa.345.0.copyload.i, %for.cond.cleanup ], [ %add1414.i, %cond.end1615.i ]
  %T.sroa.402.02325.i = phi i32 [ %T.sroa.402.0.copyload.i, %for.cond.cleanup ], [ %add1310.i, %cond.end1615.i ]
  %W.sroa.0.02324.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond.i, %cond.end1615.i ]
  %W.sroa.16.02323.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond160.i, %cond.end1615.i ]
  %W.sroa.30.02322.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond264.i, %cond.end1615.i ]
  %W.sroa.44.02321.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond368.i, %cond.end1615.i ]
  %W.sroa.58.02320.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond472.i, %cond.end1615.i ]
  %W.sroa.72.02319.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond576.i, %cond.end1615.i ]
  %W.sroa.86.02318.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond680.i, %cond.end1615.i ]
  %W.sroa.100.02317.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond784.i, %cond.end1615.i ]
  %W.sroa.114.02316.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond888.i, %cond.end1615.i ]
  %W.sroa.128.02315.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond992.i, %cond.end1615.i ]
  %W.sroa.142.02314.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond1096.i, %cond.end1615.i ]
  %W.sroa.156.02313.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond1200.i, %cond.end1615.i ]
  %W.sroa.170.02312.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond1304.i, %cond.end1615.i ]
  %W.sroa.184.02311.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond1408.i, %cond.end1615.i ]
  %W.sroa.198.02310.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond1512.i, %cond.end1615.i ]
  %W.sroa.212.02309.i = phi i32 [ undef, %for.cond.cleanup ], [ %cond1616.i, %cond.end1615.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !135, metadata !DIExpression()) #6, !dbg !140
  call void @llvm.dbg.value(metadata i32 %T.sroa.0.02332.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.60.02331.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.117.02330.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.174.02329.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.231.02328.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.288.02327.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.345.02326.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %T.sroa.402.02325.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.0.02324.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.16.02323.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.30.02322.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.44.02321.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.58.02320.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.72.02319.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.86.02318.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.100.02317.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.114.02316.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.128.02315.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.142.02314.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.156.02313.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.170.02312.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.184.02311.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.198.02310.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %W.sroa.212.02309.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)) #6, !dbg !137
  %or.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 26) #6, !dbg !142
  %or6.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 21) #6, !dbg !142
  %xor.i = xor i32 %or.i, %or6.i, !dbg !142
  %or11.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 7) #6, !dbg !142
  %xor12.i = xor i32 %xor.i, %or11.i, !dbg !142
  %xor17.i = xor i32 %T.sroa.345.02326.i, %T.sroa.288.02327.i, !dbg !142
  %and.i = and i32 %xor17.i, %T.sroa.231.02328.i, !dbg !142
  %xor18.i = xor i32 %and.i, %T.sroa.345.02326.i, !dbg !142
  %arrayidx20.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %indvars.iv.i, !dbg !142
  %16 = load i32, ptr %arrayidx20.i, align 16, !dbg !142, !tbaa !145
  %tobool.not.i = icmp eq i64 %indvars.iv.i, 0, !dbg !142
  br i1 %tobool.not.i, label %cond.end.i, label %cond.true.i, !dbg !142

cond.true.i:                                      ; preds = %for.body.i
  %or26.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 15) #6, !dbg !142
  %or31.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 13) #6, !dbg !142
  %xor32.i = xor i32 %or26.i, %or31.i, !dbg !142
  %shr34.i = lshr i32 %W.sroa.198.02310.i, 10, !dbg !142
  %xor35.i = xor i32 %xor32.i, %shr34.i, !dbg !142
  %or42.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.16.02323.i, i32 %W.sroa.16.02323.i, i32 25) #6, !dbg !142
  %or47.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.16.02323.i, i32 %W.sroa.16.02323.i, i32 14) #6, !dbg !142
  %xor48.i = xor i32 %or42.i, %or47.i, !dbg !142
  %shr50.i = lshr i32 %W.sroa.16.02323.i, 3, !dbg !142
  %xor51.i = xor i32 %xor48.i, %shr50.i, !dbg !142
  %add37.i = add i32 %xor51.i, %W.sroa.0.02324.i, !dbg !142
  %add52.i = add i32 %add37.i, %W.sroa.128.02315.i, !dbg !142
  %add54.i = add i32 %add52.i, %xor35.i, !dbg !142
  call void @llvm.dbg.value(metadata i32 %add54.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  br label %cond.end.i, !dbg !142

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i
  %cond.i = phi i32 [ %add54.i, %cond.true.i ], [ %0, %for.body.i ], !dbg !142
  call void @llvm.dbg.value(metadata i32 %cond.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %add.i = add i32 %xor12.i, %T.sroa.402.02325.i, !dbg !142
  %add21.i = add i32 %add.i, %xor18.i, !dbg !142
  %add57.i = add i32 %add21.i, %16, !dbg !142
  %add59.i = add i32 %add57.i, %cond.i, !dbg !142
  call void @llvm.dbg.value(metadata i32 %add59.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %add62.i = add i32 %add59.i, %T.sroa.174.02329.i, !dbg !142
  call void @llvm.dbg.value(metadata i32 %add62.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %or67.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 30) #6, !dbg !142
  %or72.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 19) #6, !dbg !142
  %xor73.i = xor i32 %or67.i, %or72.i, !dbg !142
  %or78.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 10) #6, !dbg !142
  %xor79.i = xor i32 %xor73.i, %or78.i, !dbg !142
  %and82.i = and i32 %T.sroa.60.02331.i, %T.sroa.0.02332.i, !dbg !142
  %or86.i = or i32 %T.sroa.60.02331.i, %T.sroa.0.02332.i, !dbg !142
  %and87.i = and i32 %or86.i, %T.sroa.117.02330.i, !dbg !142
  %or88.i = or i32 %and87.i, %and82.i, !dbg !142
  %add89.i = add i32 %or88.i, %xor79.i, !dbg !142
  %add91.i = add i32 %add89.i, %add59.i, !dbg !142
  call void @llvm.dbg.value(metadata i32 %add91.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %or96.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 26) #6, !dbg !147
  %or101.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 21) #6, !dbg !147
  %xor102.i = xor i32 %or96.i, %or101.i, !dbg !147
  %or107.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 7) #6, !dbg !147
  %xor108.i = xor i32 %xor102.i, %or107.i, !dbg !147
  %xor113.i = xor i32 %T.sroa.288.02327.i, %T.sroa.231.02328.i, !dbg !147
  %and114.i = and i32 %add62.i, %xor113.i, !dbg !147
  %xor115.i = xor i32 %and114.i, %T.sroa.288.02327.i, !dbg !147
  %17 = or i64 %indvars.iv.i, 1, !dbg !147
  %arrayidx119.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %17, !dbg !147
  %18 = load i32, ptr %arrayidx119.i, align 4, !dbg !147, !tbaa !145
  br i1 %tobool.not.i, label %cond.end159.i, label %cond.true122.i, !dbg !147

cond.true122.i:                                   ; preds = %cond.end.i
  %or127.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 15) #6, !dbg !147
  %or132.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 13) #6, !dbg !147
  %xor133.i = xor i32 %or127.i, %or132.i, !dbg !147
  %shr135.i = lshr i32 %W.sroa.212.02309.i, 10, !dbg !147
  %xor136.i = xor i32 %xor133.i, %shr135.i, !dbg !147
  %or143.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.30.02322.i, i32 %W.sroa.30.02322.i, i32 25) #6, !dbg !147
  %or148.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.30.02322.i, i32 %W.sroa.30.02322.i, i32 14) #6, !dbg !147
  %xor149.i = xor i32 %or143.i, %or148.i, !dbg !147
  %shr151.i = lshr i32 %W.sroa.30.02322.i, 3, !dbg !147
  %xor152.i = xor i32 %xor149.i, %shr151.i, !dbg !147
  %add138.i = add i32 %xor152.i, %W.sroa.16.02323.i, !dbg !147
  %add153.i = add i32 %add138.i, %W.sroa.142.02314.i, !dbg !147
  %add155.i = add i32 %add153.i, %xor136.i, !dbg !147
  call void @llvm.dbg.value(metadata i32 %add155.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  br label %cond.end159.i, !dbg !147

cond.end159.i:                                    ; preds = %cond.true122.i, %cond.end.i
  %cond160.i = phi i32 [ %add155.i, %cond.true122.i ], [ %1, %cond.end.i ], !dbg !147
  call void @llvm.dbg.value(metadata i32 %cond160.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %add116.i = add i32 %18, %T.sroa.345.02326.i, !dbg !147
  %add120.i = add i32 %add116.i, %xor115.i, !dbg !147
  %add161.i = add i32 %add120.i, %xor108.i, !dbg !147
  %add163.i = add i32 %add161.i, %cond160.i, !dbg !147
  call void @llvm.dbg.value(metadata i32 %add163.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %add166.i = add i32 %add163.i, %T.sroa.117.02330.i, !dbg !147
  call void @llvm.dbg.value(metadata i32 %add166.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %or171.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 30) #6, !dbg !147
  %or176.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 19) #6, !dbg !147
  %xor177.i = xor i32 %or171.i, %or176.i, !dbg !147
  %or182.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 10) #6, !dbg !147
  %xor183.i = xor i32 %xor177.i, %or182.i, !dbg !147
  %and186.i = and i32 %add91.i, %T.sroa.0.02332.i, !dbg !147
  %or190.i = or i32 %add91.i, %T.sroa.0.02332.i, !dbg !147
  %and191.i = and i32 %or190.i, %T.sroa.60.02331.i, !dbg !147
  %or192.i = or i32 %and191.i, %and186.i, !dbg !147
  %add193.i = add i32 %xor183.i, %or192.i, !dbg !147
  %add195.i = add i32 %add193.i, %add163.i, !dbg !147
  call void @llvm.dbg.value(metadata i32 %add195.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %or200.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 26) #6, !dbg !148
  %or205.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 21) #6, !dbg !148
  %xor206.i = xor i32 %or200.i, %or205.i, !dbg !148
  %or211.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 7) #6, !dbg !148
  %xor212.i = xor i32 %xor206.i, %or211.i, !dbg !148
  %xor217.i = xor i32 %add62.i, %T.sroa.231.02328.i, !dbg !148
  %and218.i = and i32 %add166.i, %xor217.i, !dbg !148
  %xor219.i = xor i32 %and218.i, %T.sroa.231.02328.i, !dbg !148
  %19 = or i64 %indvars.iv.i, 2, !dbg !148
  %arrayidx223.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %19, !dbg !148
  %20 = load i32, ptr %arrayidx223.i, align 8, !dbg !148, !tbaa !145
  br i1 %tobool.not.i, label %cond.end263.i, label %cond.true226.i, !dbg !148

cond.true226.i:                                   ; preds = %cond.end159.i
  %or231.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 15) #6, !dbg !148
  %or236.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 13) #6, !dbg !148
  %xor237.i = xor i32 %or231.i, %or236.i, !dbg !148
  %shr239.i = lshr i32 %cond.i, 10, !dbg !148
  %xor240.i = xor i32 %xor237.i, %shr239.i, !dbg !148
  %or247.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.44.02321.i, i32 %W.sroa.44.02321.i, i32 25) #6, !dbg !148
  %or252.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.44.02321.i, i32 %W.sroa.44.02321.i, i32 14) #6, !dbg !148
  %xor253.i = xor i32 %or247.i, %or252.i, !dbg !148
  %shr255.i = lshr i32 %W.sroa.44.02321.i, 3, !dbg !148
  %xor256.i = xor i32 %xor253.i, %shr255.i, !dbg !148
  %add242.i = add i32 %xor256.i, %W.sroa.30.02322.i, !dbg !148
  %add257.i = add i32 %add242.i, %W.sroa.156.02313.i, !dbg !148
  %add259.i = add i32 %add257.i, %xor240.i, !dbg !148
  call void @llvm.dbg.value(metadata i32 %add259.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  br label %cond.end263.i, !dbg !148

cond.end263.i:                                    ; preds = %cond.true226.i, %cond.end159.i
  %cond264.i = phi i32 [ %add259.i, %cond.true226.i ], [ %2, %cond.end159.i ], !dbg !148
  call void @llvm.dbg.value(metadata i32 %cond264.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %add220.i = add i32 %20, %T.sroa.288.02327.i, !dbg !148
  %add224.i = add i32 %add220.i, %xor219.i, !dbg !148
  %add265.i = add i32 %add224.i, %xor212.i, !dbg !148
  %add267.i = add i32 %add265.i, %cond264.i, !dbg !148
  call void @llvm.dbg.value(metadata i32 %add267.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %add270.i = add i32 %add267.i, %T.sroa.60.02331.i, !dbg !148
  call void @llvm.dbg.value(metadata i32 %add270.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %or275.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 30) #6, !dbg !148
  %or280.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 19) #6, !dbg !148
  %xor281.i = xor i32 %or275.i, %or280.i, !dbg !148
  %or286.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 10) #6, !dbg !148
  %xor287.i = xor i32 %xor281.i, %or286.i, !dbg !148
  %and290.i = and i32 %add195.i, %add91.i, !dbg !148
  %or294.i = or i32 %add195.i, %add91.i, !dbg !148
  %and295.i = and i32 %or294.i, %T.sroa.0.02332.i, !dbg !148
  %or296.i = or i32 %and295.i, %and290.i, !dbg !148
  %add297.i = add i32 %xor287.i, %or296.i, !dbg !148
  %add299.i = add i32 %add297.i, %add267.i, !dbg !148
  call void @llvm.dbg.value(metadata i32 %add299.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %or304.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 26) #6, !dbg !149
  %or309.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 21) #6, !dbg !149
  %xor310.i = xor i32 %or304.i, %or309.i, !dbg !149
  %or315.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 7) #6, !dbg !149
  %xor316.i = xor i32 %xor310.i, %or315.i, !dbg !149
  %xor321.i = xor i32 %add166.i, %add62.i, !dbg !149
  %and322.i = and i32 %add270.i, %xor321.i, !dbg !149
  %xor323.i = xor i32 %and322.i, %add62.i, !dbg !149
  %21 = or i64 %indvars.iv.i, 3, !dbg !149
  %arrayidx327.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %21, !dbg !149
  %22 = load i32, ptr %arrayidx327.i, align 4, !dbg !149, !tbaa !145
  br i1 %tobool.not.i, label %cond.end367.i, label %cond.true330.i, !dbg !149

cond.true330.i:                                   ; preds = %cond.end263.i
  %or335.i = tail call i32 @llvm.fshl.i32(i32 %cond160.i, i32 %cond160.i, i32 15) #6, !dbg !149
  %or340.i = tail call i32 @llvm.fshl.i32(i32 %cond160.i, i32 %cond160.i, i32 13) #6, !dbg !149
  %xor341.i = xor i32 %or335.i, %or340.i, !dbg !149
  %shr343.i = lshr i32 %cond160.i, 10, !dbg !149
  %xor344.i = xor i32 %xor341.i, %shr343.i, !dbg !149
  %or351.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.58.02320.i, i32 %W.sroa.58.02320.i, i32 25) #6, !dbg !149
  %or356.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.58.02320.i, i32 %W.sroa.58.02320.i, i32 14) #6, !dbg !149
  %xor357.i = xor i32 %or351.i, %or356.i, !dbg !149
  %shr359.i = lshr i32 %W.sroa.58.02320.i, 3, !dbg !149
  %xor360.i = xor i32 %xor357.i, %shr359.i, !dbg !149
  %add346.i = add i32 %xor360.i, %W.sroa.44.02321.i, !dbg !149
  %add361.i = add i32 %add346.i, %W.sroa.170.02312.i, !dbg !149
  %add363.i = add i32 %add361.i, %xor344.i, !dbg !149
  call void @llvm.dbg.value(metadata i32 %add363.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  br label %cond.end367.i, !dbg !149

cond.end367.i:                                    ; preds = %cond.true330.i, %cond.end263.i
  %cond368.i = phi i32 [ %add363.i, %cond.true330.i ], [ %3, %cond.end263.i ], !dbg !149
  call void @llvm.dbg.value(metadata i32 %cond368.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %add324.i = add i32 %22, %T.sroa.231.02328.i, !dbg !149
  %add328.i = add i32 %add324.i, %xor323.i, !dbg !149
  %add369.i = add i32 %add328.i, %xor316.i, !dbg !149
  %add371.i = add i32 %add369.i, %cond368.i, !dbg !149
  call void @llvm.dbg.value(metadata i32 %add371.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %add374.i = add i32 %add371.i, %T.sroa.0.02332.i, !dbg !149
  call void @llvm.dbg.value(metadata i32 %add374.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %or379.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 30) #6, !dbg !149
  %or384.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 19) #6, !dbg !149
  %xor385.i = xor i32 %or379.i, %or384.i, !dbg !149
  %or390.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 10) #6, !dbg !149
  %xor391.i = xor i32 %xor385.i, %or390.i, !dbg !149
  %and394.i = and i32 %add299.i, %add195.i, !dbg !149
  %or398.i = or i32 %add299.i, %add195.i, !dbg !149
  %and399.i = and i32 %or398.i, %add91.i, !dbg !149
  %or400.i = or i32 %and399.i, %and394.i, !dbg !149
  %add401.i = add i32 %xor391.i, %or400.i, !dbg !149
  %add403.i = add i32 %add401.i, %add371.i, !dbg !149
  call void @llvm.dbg.value(metadata i32 %add403.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %or408.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 26) #6, !dbg !150
  %or413.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 21) #6, !dbg !150
  %xor414.i = xor i32 %or408.i, %or413.i, !dbg !150
  %or419.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 7) #6, !dbg !150
  %xor420.i = xor i32 %xor414.i, %or419.i, !dbg !150
  %xor425.i = xor i32 %add270.i, %add166.i, !dbg !150
  %and426.i = and i32 %add374.i, %xor425.i, !dbg !150
  %xor427.i = xor i32 %and426.i, %add166.i, !dbg !150
  %23 = or i64 %indvars.iv.i, 4, !dbg !150
  %arrayidx431.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %23, !dbg !150
  %24 = load i32, ptr %arrayidx431.i, align 16, !dbg !150, !tbaa !145
  br i1 %tobool.not.i, label %cond.end471.i, label %cond.true434.i, !dbg !150

cond.true434.i:                                   ; preds = %cond.end367.i
  %or439.i = tail call i32 @llvm.fshl.i32(i32 %cond264.i, i32 %cond264.i, i32 15) #6, !dbg !150
  %or444.i = tail call i32 @llvm.fshl.i32(i32 %cond264.i, i32 %cond264.i, i32 13) #6, !dbg !150
  %xor445.i = xor i32 %or439.i, %or444.i, !dbg !150
  %shr447.i = lshr i32 %cond264.i, 10, !dbg !150
  %xor448.i = xor i32 %xor445.i, %shr447.i, !dbg !150
  %or455.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.72.02319.i, i32 %W.sroa.72.02319.i, i32 25) #6, !dbg !150
  %or460.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.72.02319.i, i32 %W.sroa.72.02319.i, i32 14) #6, !dbg !150
  %xor461.i = xor i32 %or455.i, %or460.i, !dbg !150
  %shr463.i = lshr i32 %W.sroa.72.02319.i, 3, !dbg !150
  %xor464.i = xor i32 %xor461.i, %shr463.i, !dbg !150
  %add450.i = add i32 %xor464.i, %W.sroa.58.02320.i, !dbg !150
  %add465.i = add i32 %add450.i, %W.sroa.184.02311.i, !dbg !150
  %add467.i = add i32 %add465.i, %xor448.i, !dbg !150
  call void @llvm.dbg.value(metadata i32 %add467.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  br label %cond.end471.i, !dbg !150

cond.end471.i:                                    ; preds = %cond.true434.i, %cond.end367.i
  %cond472.i = phi i32 [ %add467.i, %cond.true434.i ], [ %4, %cond.end367.i ], !dbg !150
  call void @llvm.dbg.value(metadata i32 %cond472.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %add428.i = add i32 %24, %add62.i, !dbg !150
  %add432.i = add i32 %add428.i, %xor427.i, !dbg !150
  %add473.i = add i32 %add432.i, %xor420.i, !dbg !150
  %add475.i = add i32 %add473.i, %cond472.i, !dbg !150
  call void @llvm.dbg.value(metadata i32 %add475.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %add478.i = add i32 %add475.i, %add91.i, !dbg !150
  call void @llvm.dbg.value(metadata i32 %add478.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %or483.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 30) #6, !dbg !150
  %or488.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 19) #6, !dbg !150
  %xor489.i = xor i32 %or483.i, %or488.i, !dbg !150
  %or494.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 10) #6, !dbg !150
  %xor495.i = xor i32 %xor489.i, %or494.i, !dbg !150
  %and498.i = and i32 %add403.i, %add299.i, !dbg !150
  %or502.i = or i32 %add403.i, %add299.i, !dbg !150
  %and503.i = and i32 %or502.i, %add195.i, !dbg !150
  %or504.i = or i32 %and503.i, %and498.i, !dbg !150
  %add505.i = add i32 %xor495.i, %or504.i, !dbg !150
  %add507.i = add i32 %add505.i, %add475.i, !dbg !150
  call void @llvm.dbg.value(metadata i32 %add507.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %or512.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 26) #6, !dbg !151
  %or517.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 21) #6, !dbg !151
  %xor518.i = xor i32 %or512.i, %or517.i, !dbg !151
  %or523.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 7) #6, !dbg !151
  %xor524.i = xor i32 %xor518.i, %or523.i, !dbg !151
  %xor529.i = xor i32 %add374.i, %add270.i, !dbg !151
  %and530.i = and i32 %add478.i, %xor529.i, !dbg !151
  %xor531.i = xor i32 %and530.i, %add270.i, !dbg !151
  %25 = or i64 %indvars.iv.i, 5, !dbg !151
  %arrayidx535.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %25, !dbg !151
  %26 = load i32, ptr %arrayidx535.i, align 4, !dbg !151, !tbaa !145
  br i1 %tobool.not.i, label %cond.end575.i, label %cond.true538.i, !dbg !151

cond.true538.i:                                   ; preds = %cond.end471.i
  %or543.i = tail call i32 @llvm.fshl.i32(i32 %cond368.i, i32 %cond368.i, i32 15) #6, !dbg !151
  %or548.i = tail call i32 @llvm.fshl.i32(i32 %cond368.i, i32 %cond368.i, i32 13) #6, !dbg !151
  %xor549.i = xor i32 %or543.i, %or548.i, !dbg !151
  %shr551.i = lshr i32 %cond368.i, 10, !dbg !151
  %xor552.i = xor i32 %xor549.i, %shr551.i, !dbg !151
  %or559.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.86.02318.i, i32 %W.sroa.86.02318.i, i32 25) #6, !dbg !151
  %or564.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.86.02318.i, i32 %W.sroa.86.02318.i, i32 14) #6, !dbg !151
  %xor565.i = xor i32 %or559.i, %or564.i, !dbg !151
  %shr567.i = lshr i32 %W.sroa.86.02318.i, 3, !dbg !151
  %xor568.i = xor i32 %xor565.i, %shr567.i, !dbg !151
  %add554.i = add i32 %xor568.i, %W.sroa.72.02319.i, !dbg !151
  %add569.i = add i32 %add554.i, %W.sroa.198.02310.i, !dbg !151
  %add571.i = add i32 %add569.i, %xor552.i, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add571.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  br label %cond.end575.i, !dbg !151

cond.end575.i:                                    ; preds = %cond.true538.i, %cond.end471.i
  %cond576.i = phi i32 [ %add571.i, %cond.true538.i ], [ %5, %cond.end471.i ], !dbg !151
  call void @llvm.dbg.value(metadata i32 %cond576.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %add532.i = add i32 %26, %add166.i, !dbg !151
  %add536.i = add i32 %add532.i, %xor531.i, !dbg !151
  %add577.i = add i32 %add536.i, %xor524.i, !dbg !151
  %add579.i = add i32 %add577.i, %cond576.i, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add579.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %add582.i = add i32 %add579.i, %add195.i, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add582.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %or587.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 30) #6, !dbg !151
  %or592.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 19) #6, !dbg !151
  %xor593.i = xor i32 %or587.i, %or592.i, !dbg !151
  %or598.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 10) #6, !dbg !151
  %xor599.i = xor i32 %xor593.i, %or598.i, !dbg !151
  %and602.i = and i32 %add507.i, %add403.i, !dbg !151
  %or606.i = or i32 %add507.i, %add403.i, !dbg !151
  %and607.i = and i32 %or606.i, %add299.i, !dbg !151
  %or608.i = or i32 %and607.i, %and602.i, !dbg !151
  %add609.i = add i32 %xor599.i, %or608.i, !dbg !151
  %add611.i = add i32 %add609.i, %add579.i, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add611.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %or616.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 26) #6, !dbg !152
  %or621.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 21) #6, !dbg !152
  %xor622.i = xor i32 %or616.i, %or621.i, !dbg !152
  %or627.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 7) #6, !dbg !152
  %xor628.i = xor i32 %xor622.i, %or627.i, !dbg !152
  %xor633.i = xor i32 %add478.i, %add374.i, !dbg !152
  %and634.i = and i32 %add582.i, %xor633.i, !dbg !152
  %xor635.i = xor i32 %and634.i, %add374.i, !dbg !152
  %27 = or i64 %indvars.iv.i, 6, !dbg !152
  %arrayidx639.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %27, !dbg !152
  %28 = load i32, ptr %arrayidx639.i, align 8, !dbg !152, !tbaa !145
  br i1 %tobool.not.i, label %cond.end679.i, label %cond.true642.i, !dbg !152

cond.true642.i:                                   ; preds = %cond.end575.i
  %or647.i = tail call i32 @llvm.fshl.i32(i32 %cond472.i, i32 %cond472.i, i32 15) #6, !dbg !152
  %or652.i = tail call i32 @llvm.fshl.i32(i32 %cond472.i, i32 %cond472.i, i32 13) #6, !dbg !152
  %xor653.i = xor i32 %or647.i, %or652.i, !dbg !152
  %shr655.i = lshr i32 %cond472.i, 10, !dbg !152
  %xor656.i = xor i32 %xor653.i, %shr655.i, !dbg !152
  %or663.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.100.02317.i, i32 %W.sroa.100.02317.i, i32 25) #6, !dbg !152
  %or668.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.100.02317.i, i32 %W.sroa.100.02317.i, i32 14) #6, !dbg !152
  %xor669.i = xor i32 %or663.i, %or668.i, !dbg !152
  %shr671.i = lshr i32 %W.sroa.100.02317.i, 3, !dbg !152
  %xor672.i = xor i32 %xor669.i, %shr671.i, !dbg !152
  %add658.i = add i32 %xor672.i, %W.sroa.86.02318.i, !dbg !152
  %add673.i = add i32 %add658.i, %W.sroa.212.02309.i, !dbg !152
  %add675.i = add i32 %add673.i, %xor656.i, !dbg !152
  call void @llvm.dbg.value(metadata i32 %add675.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  br label %cond.end679.i, !dbg !152

cond.end679.i:                                    ; preds = %cond.true642.i, %cond.end575.i
  %cond680.i = phi i32 [ %add675.i, %cond.true642.i ], [ %6, %cond.end575.i ], !dbg !152
  call void @llvm.dbg.value(metadata i32 %cond680.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %add636.i = add i32 %28, %add270.i, !dbg !152
  %add640.i = add i32 %add636.i, %xor635.i, !dbg !152
  %add681.i = add i32 %add640.i, %xor628.i, !dbg !152
  %add683.i = add i32 %add681.i, %cond680.i, !dbg !152
  call void @llvm.dbg.value(metadata i32 %add683.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %add686.i = add i32 %add683.i, %add299.i, !dbg !152
  call void @llvm.dbg.value(metadata i32 %add686.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %or691.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 30) #6, !dbg !152
  %or696.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 19) #6, !dbg !152
  %xor697.i = xor i32 %or691.i, %or696.i, !dbg !152
  %or702.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 10) #6, !dbg !152
  %xor703.i = xor i32 %xor697.i, %or702.i, !dbg !152
  %and706.i = and i32 %add611.i, %add507.i, !dbg !152
  %or710.i = or i32 %add611.i, %add507.i, !dbg !152
  %and711.i = and i32 %or710.i, %add403.i, !dbg !152
  %or712.i = or i32 %and711.i, %and706.i, !dbg !152
  %add713.i = add i32 %xor703.i, %or712.i, !dbg !152
  %add715.i = add i32 %add713.i, %add683.i, !dbg !152
  call void @llvm.dbg.value(metadata i32 %add715.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %or720.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 26) #6, !dbg !153
  %or725.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 21) #6, !dbg !153
  %xor726.i = xor i32 %or720.i, %or725.i, !dbg !153
  %or731.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 7) #6, !dbg !153
  %xor732.i = xor i32 %xor726.i, %or731.i, !dbg !153
  %xor737.i = xor i32 %add582.i, %add478.i, !dbg !153
  %and738.i = and i32 %add686.i, %xor737.i, !dbg !153
  %xor739.i = xor i32 %and738.i, %add478.i, !dbg !153
  %29 = or i64 %indvars.iv.i, 7, !dbg !153
  %arrayidx743.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %29, !dbg !153
  %30 = load i32, ptr %arrayidx743.i, align 4, !dbg !153, !tbaa !145
  br i1 %tobool.not.i, label %cond.end783.i, label %cond.true746.i, !dbg !153

cond.true746.i:                                   ; preds = %cond.end679.i
  %or751.i = tail call i32 @llvm.fshl.i32(i32 %cond576.i, i32 %cond576.i, i32 15) #6, !dbg !153
  %or756.i = tail call i32 @llvm.fshl.i32(i32 %cond576.i, i32 %cond576.i, i32 13) #6, !dbg !153
  %xor757.i = xor i32 %or751.i, %or756.i, !dbg !153
  %shr759.i = lshr i32 %cond576.i, 10, !dbg !153
  %xor760.i = xor i32 %xor757.i, %shr759.i, !dbg !153
  %or767.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.114.02316.i, i32 %W.sroa.114.02316.i, i32 25) #6, !dbg !153
  %or772.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.114.02316.i, i32 %W.sroa.114.02316.i, i32 14) #6, !dbg !153
  %xor773.i = xor i32 %or767.i, %or772.i, !dbg !153
  %shr775.i = lshr i32 %W.sroa.114.02316.i, 3, !dbg !153
  %xor776.i = xor i32 %xor773.i, %shr775.i, !dbg !153
  %add762.i = add i32 %xor776.i, %W.sroa.100.02317.i, !dbg !153
  %add777.i = add i32 %add762.i, %cond.i, !dbg !153
  %add779.i = add i32 %add777.i, %xor760.i, !dbg !153
  call void @llvm.dbg.value(metadata i32 %add779.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  br label %cond.end783.i, !dbg !153

cond.end783.i:                                    ; preds = %cond.true746.i, %cond.end679.i
  %cond784.i = phi i32 [ %add779.i, %cond.true746.i ], [ %7, %cond.end679.i ], !dbg !153
  call void @llvm.dbg.value(metadata i32 %cond784.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %add740.i = add i32 %30, %add374.i, !dbg !153
  %add744.i = add i32 %add740.i, %xor739.i, !dbg !153
  %add785.i = add i32 %add744.i, %xor732.i, !dbg !153
  %add787.i = add i32 %add785.i, %cond784.i, !dbg !153
  call void @llvm.dbg.value(metadata i32 %add787.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %add790.i = add i32 %add787.i, %add403.i, !dbg !153
  call void @llvm.dbg.value(metadata i32 %add790.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %or795.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 30) #6, !dbg !153
  %or800.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 19) #6, !dbg !153
  %xor801.i = xor i32 %or795.i, %or800.i, !dbg !153
  %or806.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 10) #6, !dbg !153
  %xor807.i = xor i32 %xor801.i, %or806.i, !dbg !153
  %and810.i = and i32 %add715.i, %add611.i, !dbg !153
  %or814.i = or i32 %add715.i, %add611.i, !dbg !153
  %and815.i = and i32 %or814.i, %add507.i, !dbg !153
  %or816.i = or i32 %and815.i, %and810.i, !dbg !153
  %add817.i = add i32 %xor807.i, %or816.i, !dbg !153
  %add819.i = add i32 %add817.i, %add787.i, !dbg !153
  call void @llvm.dbg.value(metadata i32 %add819.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %or824.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 26) #6, !dbg !154
  %or829.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 21) #6, !dbg !154
  %xor830.i = xor i32 %or824.i, %or829.i, !dbg !154
  %or835.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 7) #6, !dbg !154
  %xor836.i = xor i32 %xor830.i, %or835.i, !dbg !154
  %xor841.i = xor i32 %add686.i, %add582.i, !dbg !154
  %and842.i = and i32 %add790.i, %xor841.i, !dbg !154
  %xor843.i = xor i32 %and842.i, %add582.i, !dbg !154
  %31 = or i64 %indvars.iv.i, 8, !dbg !154
  %arrayidx847.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %31, !dbg !154
  %32 = load i32, ptr %arrayidx847.i, align 16, !dbg !154, !tbaa !145
  br i1 %tobool.not.i, label %cond.end887.i, label %cond.true850.i, !dbg !154

cond.true850.i:                                   ; preds = %cond.end783.i
  %or855.i = tail call i32 @llvm.fshl.i32(i32 %cond680.i, i32 %cond680.i, i32 15) #6, !dbg !154
  %or860.i = tail call i32 @llvm.fshl.i32(i32 %cond680.i, i32 %cond680.i, i32 13) #6, !dbg !154
  %xor861.i = xor i32 %or855.i, %or860.i, !dbg !154
  %shr863.i = lshr i32 %cond680.i, 10, !dbg !154
  %xor864.i = xor i32 %xor861.i, %shr863.i, !dbg !154
  %or871.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.128.02315.i, i32 %W.sroa.128.02315.i, i32 25) #6, !dbg !154
  %or876.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.128.02315.i, i32 %W.sroa.128.02315.i, i32 14) #6, !dbg !154
  %xor877.i = xor i32 %or871.i, %or876.i, !dbg !154
  %shr879.i = lshr i32 %W.sroa.128.02315.i, 3, !dbg !154
  %xor880.i = xor i32 %xor877.i, %shr879.i, !dbg !154
  %add866.i = add i32 %xor880.i, %W.sroa.114.02316.i, !dbg !154
  %add881.i = add i32 %add866.i, %cond160.i, !dbg !154
  %add883.i = add i32 %add881.i, %xor864.i, !dbg !154
  call void @llvm.dbg.value(metadata i32 %add883.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #6, !dbg !137
  br label %cond.end887.i, !dbg !154

cond.end887.i:                                    ; preds = %cond.true850.i, %cond.end783.i
  %cond888.i = phi i32 [ %add883.i, %cond.true850.i ], [ %8, %cond.end783.i ], !dbg !154
  call void @llvm.dbg.value(metadata i32 %cond888.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #6, !dbg !137
  %add844.i = add i32 %32, %add478.i, !dbg !154
  %add848.i = add i32 %add844.i, %xor843.i, !dbg !154
  %add889.i = add i32 %add848.i, %xor836.i, !dbg !154
  %add891.i = add i32 %add889.i, %cond888.i, !dbg !154
  call void @llvm.dbg.value(metadata i32 %add891.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %add894.i = add i32 %add891.i, %add507.i, !dbg !154
  call void @llvm.dbg.value(metadata i32 %add894.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %or899.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 30) #6, !dbg !154
  %or904.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 19) #6, !dbg !154
  %xor905.i = xor i32 %or899.i, %or904.i, !dbg !154
  %or910.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 10) #6, !dbg !154
  %xor911.i = xor i32 %xor905.i, %or910.i, !dbg !154
  %and914.i = and i32 %add819.i, %add715.i, !dbg !154
  %or918.i = or i32 %add819.i, %add715.i, !dbg !154
  %and919.i = and i32 %or918.i, %add611.i, !dbg !154
  %or920.i = or i32 %and919.i, %and914.i, !dbg !154
  %add921.i = add i32 %xor911.i, %or920.i, !dbg !154
  %add923.i = add i32 %add921.i, %add891.i, !dbg !154
  call void @llvm.dbg.value(metadata i32 %add923.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %or928.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 26) #6, !dbg !155
  %or933.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 21) #6, !dbg !155
  %xor934.i = xor i32 %or928.i, %or933.i, !dbg !155
  %or939.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 7) #6, !dbg !155
  %xor940.i = xor i32 %xor934.i, %or939.i, !dbg !155
  %xor945.i = xor i32 %add790.i, %add686.i, !dbg !155
  %and946.i = and i32 %add894.i, %xor945.i, !dbg !155
  %xor947.i = xor i32 %and946.i, %add686.i, !dbg !155
  %33 = or i64 %indvars.iv.i, 9, !dbg !155
  %arrayidx951.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %33, !dbg !155
  %34 = load i32, ptr %arrayidx951.i, align 4, !dbg !155, !tbaa !145
  br i1 %tobool.not.i, label %cond.end991.i, label %cond.true954.i, !dbg !155

cond.true954.i:                                   ; preds = %cond.end887.i
  %or959.i = tail call i32 @llvm.fshl.i32(i32 %cond784.i, i32 %cond784.i, i32 15) #6, !dbg !155
  %or964.i = tail call i32 @llvm.fshl.i32(i32 %cond784.i, i32 %cond784.i, i32 13) #6, !dbg !155
  %xor965.i = xor i32 %or959.i, %or964.i, !dbg !155
  %shr967.i = lshr i32 %cond784.i, 10, !dbg !155
  %xor968.i = xor i32 %xor965.i, %shr967.i, !dbg !155
  %or975.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.142.02314.i, i32 %W.sroa.142.02314.i, i32 25) #6, !dbg !155
  %or980.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.142.02314.i, i32 %W.sroa.142.02314.i, i32 14) #6, !dbg !155
  %xor981.i = xor i32 %or975.i, %or980.i, !dbg !155
  %shr983.i = lshr i32 %W.sroa.142.02314.i, 3, !dbg !155
  %xor984.i = xor i32 %xor981.i, %shr983.i, !dbg !155
  %add970.i = add i32 %xor984.i, %W.sroa.128.02315.i, !dbg !155
  %add985.i = add i32 %add970.i, %cond264.i, !dbg !155
  %add987.i = add i32 %add985.i, %xor968.i, !dbg !155
  call void @llvm.dbg.value(metadata i32 %add987.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #6, !dbg !137
  br label %cond.end991.i, !dbg !155

cond.end991.i:                                    ; preds = %cond.true954.i, %cond.end887.i
  %cond992.i = phi i32 [ %add987.i, %cond.true954.i ], [ %9, %cond.end887.i ], !dbg !155
  call void @llvm.dbg.value(metadata i32 %cond992.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #6, !dbg !137
  %add948.i = add i32 %34, %add582.i, !dbg !155
  %add952.i = add i32 %add948.i, %xor947.i, !dbg !155
  %add993.i = add i32 %add952.i, %xor940.i, !dbg !155
  %add995.i = add i32 %add993.i, %cond992.i, !dbg !155
  call void @llvm.dbg.value(metadata i32 %add995.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %add998.i = add i32 %add995.i, %add611.i, !dbg !155
  call void @llvm.dbg.value(metadata i32 %add998.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %or1003.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 30) #6, !dbg !155
  %or1008.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 19) #6, !dbg !155
  %xor1009.i = xor i32 %or1003.i, %or1008.i, !dbg !155
  %or1014.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 10) #6, !dbg !155
  %xor1015.i = xor i32 %xor1009.i, %or1014.i, !dbg !155
  %and1018.i = and i32 %add923.i, %add819.i, !dbg !155
  %or1022.i = or i32 %add923.i, %add819.i, !dbg !155
  %and1023.i = and i32 %or1022.i, %add715.i, !dbg !155
  %or1024.i = or i32 %and1023.i, %and1018.i, !dbg !155
  %add1025.i = add i32 %xor1015.i, %or1024.i, !dbg !155
  %add1027.i = add i32 %add1025.i, %add995.i, !dbg !155
  call void @llvm.dbg.value(metadata i32 %add1027.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %or1032.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 26) #6, !dbg !156
  %or1037.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 21) #6, !dbg !156
  %xor1038.i = xor i32 %or1032.i, %or1037.i, !dbg !156
  %or1043.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 7) #6, !dbg !156
  %xor1044.i = xor i32 %xor1038.i, %or1043.i, !dbg !156
  %xor1049.i = xor i32 %add894.i, %add790.i, !dbg !156
  %and1050.i = and i32 %add998.i, %xor1049.i, !dbg !156
  %xor1051.i = xor i32 %and1050.i, %add790.i, !dbg !156
  %35 = or i64 %indvars.iv.i, 10, !dbg !156
  %arrayidx1055.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %35, !dbg !156
  %36 = load i32, ptr %arrayidx1055.i, align 8, !dbg !156, !tbaa !145
  br i1 %tobool.not.i, label %cond.end1095.i, label %cond.true1058.i, !dbg !156

cond.true1058.i:                                  ; preds = %cond.end991.i
  %or1063.i = tail call i32 @llvm.fshl.i32(i32 %cond888.i, i32 %cond888.i, i32 15) #6, !dbg !156
  %or1068.i = tail call i32 @llvm.fshl.i32(i32 %cond888.i, i32 %cond888.i, i32 13) #6, !dbg !156
  %xor1069.i = xor i32 %or1063.i, %or1068.i, !dbg !156
  %shr1071.i = lshr i32 %cond888.i, 10, !dbg !156
  %xor1072.i = xor i32 %xor1069.i, %shr1071.i, !dbg !156
  %or1079.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.156.02313.i, i32 %W.sroa.156.02313.i, i32 25) #6, !dbg !156
  %or1084.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.156.02313.i, i32 %W.sroa.156.02313.i, i32 14) #6, !dbg !156
  %xor1085.i = xor i32 %or1079.i, %or1084.i, !dbg !156
  %shr1087.i = lshr i32 %W.sroa.156.02313.i, 3, !dbg !156
  %xor1088.i = xor i32 %xor1085.i, %shr1087.i, !dbg !156
  %add1074.i = add i32 %xor1088.i, %W.sroa.142.02314.i, !dbg !156
  %add1089.i = add i32 %add1074.i, %cond368.i, !dbg !156
  %add1091.i = add i32 %add1089.i, %xor1072.i, !dbg !156
  call void @llvm.dbg.value(metadata i32 %add1091.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #6, !dbg !137
  br label %cond.end1095.i, !dbg !156

cond.end1095.i:                                   ; preds = %cond.true1058.i, %cond.end991.i
  %cond1096.i = phi i32 [ %add1091.i, %cond.true1058.i ], [ %10, %cond.end991.i ], !dbg !156
  call void @llvm.dbg.value(metadata i32 %cond1096.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #6, !dbg !137
  %add1052.i = add i32 %36, %add686.i, !dbg !156
  %add1056.i = add i32 %add1052.i, %xor1051.i, !dbg !156
  %add1097.i = add i32 %add1056.i, %xor1044.i, !dbg !156
  %add1099.i = add i32 %add1097.i, %cond1096.i, !dbg !156
  call void @llvm.dbg.value(metadata i32 %add1099.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %add1102.i = add i32 %add1099.i, %add715.i, !dbg !156
  call void @llvm.dbg.value(metadata i32 %add1102.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %or1107.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 30) #6, !dbg !156
  %or1112.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 19) #6, !dbg !156
  %xor1113.i = xor i32 %or1107.i, %or1112.i, !dbg !156
  %or1118.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 10) #6, !dbg !156
  %xor1119.i = xor i32 %xor1113.i, %or1118.i, !dbg !156
  %and1122.i = and i32 %add1027.i, %add923.i, !dbg !156
  %or1126.i = or i32 %add1027.i, %add923.i, !dbg !156
  %and1127.i = and i32 %or1126.i, %add819.i, !dbg !156
  %or1128.i = or i32 %and1127.i, %and1122.i, !dbg !156
  %add1129.i = add i32 %xor1119.i, %or1128.i, !dbg !156
  %add1131.i = add i32 %add1129.i, %add1099.i, !dbg !156
  call void @llvm.dbg.value(metadata i32 %add1131.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %or1136.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 26) #6, !dbg !157
  %or1141.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 21) #6, !dbg !157
  %xor1142.i = xor i32 %or1136.i, %or1141.i, !dbg !157
  %or1147.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 7) #6, !dbg !157
  %xor1148.i = xor i32 %xor1142.i, %or1147.i, !dbg !157
  %xor1153.i = xor i32 %add998.i, %add894.i, !dbg !157
  %and1154.i = and i32 %add1102.i, %xor1153.i, !dbg !157
  %xor1155.i = xor i32 %and1154.i, %add894.i, !dbg !157
  %37 = or i64 %indvars.iv.i, 11, !dbg !157
  %arrayidx1159.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %37, !dbg !157
  %38 = load i32, ptr %arrayidx1159.i, align 4, !dbg !157, !tbaa !145
  br i1 %tobool.not.i, label %cond.end1199.i, label %cond.true1162.i, !dbg !157

cond.true1162.i:                                  ; preds = %cond.end1095.i
  %or1167.i = tail call i32 @llvm.fshl.i32(i32 %cond992.i, i32 %cond992.i, i32 15) #6, !dbg !157
  %or1172.i = tail call i32 @llvm.fshl.i32(i32 %cond992.i, i32 %cond992.i, i32 13) #6, !dbg !157
  %xor1173.i = xor i32 %or1167.i, %or1172.i, !dbg !157
  %shr1175.i = lshr i32 %cond992.i, 10, !dbg !157
  %xor1176.i = xor i32 %xor1173.i, %shr1175.i, !dbg !157
  %or1183.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.170.02312.i, i32 %W.sroa.170.02312.i, i32 25) #6, !dbg !157
  %or1188.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.170.02312.i, i32 %W.sroa.170.02312.i, i32 14) #6, !dbg !157
  %xor1189.i = xor i32 %or1183.i, %or1188.i, !dbg !157
  %shr1191.i = lshr i32 %W.sroa.170.02312.i, 3, !dbg !157
  %xor1192.i = xor i32 %xor1189.i, %shr1191.i, !dbg !157
  %add1178.i = add i32 %xor1192.i, %W.sroa.156.02313.i, !dbg !157
  %add1193.i = add i32 %add1178.i, %cond472.i, !dbg !157
  %add1195.i = add i32 %add1193.i, %xor1176.i, !dbg !157
  call void @llvm.dbg.value(metadata i32 %add1195.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #6, !dbg !137
  br label %cond.end1199.i, !dbg !157

cond.end1199.i:                                   ; preds = %cond.true1162.i, %cond.end1095.i
  %cond1200.i = phi i32 [ %add1195.i, %cond.true1162.i ], [ %11, %cond.end1095.i ], !dbg !157
  call void @llvm.dbg.value(metadata i32 %cond1200.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #6, !dbg !137
  %add1156.i = add i32 %38, %add790.i, !dbg !157
  %add1160.i = add i32 %add1156.i, %xor1155.i, !dbg !157
  %add1201.i = add i32 %add1160.i, %xor1148.i, !dbg !157
  %add1203.i = add i32 %add1201.i, %cond1200.i, !dbg !157
  call void @llvm.dbg.value(metadata i32 %add1203.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %add1206.i = add i32 %add1203.i, %add819.i, !dbg !157
  call void @llvm.dbg.value(metadata i32 %add1206.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %or1211.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 30) #6, !dbg !157
  %or1216.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 19) #6, !dbg !157
  %xor1217.i = xor i32 %or1211.i, %or1216.i, !dbg !157
  %or1222.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 10) #6, !dbg !157
  %xor1223.i = xor i32 %xor1217.i, %or1222.i, !dbg !157
  %and1226.i = and i32 %add1131.i, %add1027.i, !dbg !157
  %or1230.i = or i32 %add1131.i, %add1027.i, !dbg !157
  %and1231.i = and i32 %or1230.i, %add923.i, !dbg !157
  %or1232.i = or i32 %and1231.i, %and1226.i, !dbg !157
  %add1233.i = add i32 %xor1223.i, %or1232.i, !dbg !157
  %add1235.i = add i32 %add1233.i, %add1203.i, !dbg !157
  call void @llvm.dbg.value(metadata i32 %add1235.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %or1240.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 26) #6, !dbg !158
  %or1245.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 21) #6, !dbg !158
  %xor1246.i = xor i32 %or1240.i, %or1245.i, !dbg !158
  %or1251.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 7) #6, !dbg !158
  %xor1252.i = xor i32 %xor1246.i, %or1251.i, !dbg !158
  %xor1257.i = xor i32 %add1102.i, %add998.i, !dbg !158
  %and1258.i = and i32 %add1206.i, %xor1257.i, !dbg !158
  %xor1259.i = xor i32 %and1258.i, %add998.i, !dbg !158
  %39 = or i64 %indvars.iv.i, 12, !dbg !158
  %arrayidx1263.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %39, !dbg !158
  %40 = load i32, ptr %arrayidx1263.i, align 16, !dbg !158, !tbaa !145
  br i1 %tobool.not.i, label %cond.end1303.i, label %cond.true1266.i, !dbg !158

cond.true1266.i:                                  ; preds = %cond.end1199.i
  %or1271.i = tail call i32 @llvm.fshl.i32(i32 %cond1096.i, i32 %cond1096.i, i32 15) #6, !dbg !158
  %or1276.i = tail call i32 @llvm.fshl.i32(i32 %cond1096.i, i32 %cond1096.i, i32 13) #6, !dbg !158
  %xor1277.i = xor i32 %or1271.i, %or1276.i, !dbg !158
  %shr1279.i = lshr i32 %cond1096.i, 10, !dbg !158
  %xor1280.i = xor i32 %xor1277.i, %shr1279.i, !dbg !158
  %or1287.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.184.02311.i, i32 %W.sroa.184.02311.i, i32 25) #6, !dbg !158
  %or1292.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.184.02311.i, i32 %W.sroa.184.02311.i, i32 14) #6, !dbg !158
  %xor1293.i = xor i32 %or1287.i, %or1292.i, !dbg !158
  %shr1295.i = lshr i32 %W.sroa.184.02311.i, 3, !dbg !158
  %xor1296.i = xor i32 %xor1293.i, %shr1295.i, !dbg !158
  %add1282.i = add i32 %xor1296.i, %W.sroa.170.02312.i, !dbg !158
  %add1297.i = add i32 %add1282.i, %cond576.i, !dbg !158
  %add1299.i = add i32 %add1297.i, %xor1280.i, !dbg !158
  call void @llvm.dbg.value(metadata i32 %add1299.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)) #6, !dbg !137
  br label %cond.end1303.i, !dbg !158

cond.end1303.i:                                   ; preds = %cond.true1266.i, %cond.end1199.i
  %cond1304.i = phi i32 [ %add1299.i, %cond.true1266.i ], [ %12, %cond.end1199.i ], !dbg !158
  call void @llvm.dbg.value(metadata i32 %cond1304.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)) #6, !dbg !137
  %add1260.i = add i32 %40, %add894.i, !dbg !158
  %add1264.i = add i32 %add1260.i, %xor1259.i, !dbg !158
  %add1305.i = add i32 %add1264.i, %xor1252.i, !dbg !158
  %add1307.i = add i32 %add1305.i, %cond1304.i, !dbg !158
  call void @llvm.dbg.value(metadata i32 %add1307.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %add1310.i = add i32 %add1307.i, %add923.i, !dbg !158
  call void @llvm.dbg.value(metadata i32 %add1310.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  %or1315.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 30) #6, !dbg !158
  %or1320.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 19) #6, !dbg !158
  %xor1321.i = xor i32 %or1315.i, %or1320.i, !dbg !158
  %or1326.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 10) #6, !dbg !158
  %xor1327.i = xor i32 %xor1321.i, %or1326.i, !dbg !158
  %and1330.i = and i32 %add1235.i, %add1131.i, !dbg !158
  %or1334.i = or i32 %add1235.i, %add1131.i, !dbg !158
  %and1335.i = and i32 %or1334.i, %add1027.i, !dbg !158
  %or1336.i = or i32 %and1335.i, %and1330.i, !dbg !158
  %add1337.i = add i32 %xor1327.i, %or1336.i, !dbg !158
  %add1339.i = add i32 %add1337.i, %add1307.i, !dbg !158
  call void @llvm.dbg.value(metadata i32 %add1339.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  %or1344.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 26) #6, !dbg !159
  %or1349.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 21) #6, !dbg !159
  %xor1350.i = xor i32 %or1344.i, %or1349.i, !dbg !159
  %or1355.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 7) #6, !dbg !159
  %xor1356.i = xor i32 %xor1350.i, %or1355.i, !dbg !159
  %xor1361.i = xor i32 %add1206.i, %add1102.i, !dbg !159
  %and1362.i = and i32 %add1310.i, %xor1361.i, !dbg !159
  %xor1363.i = xor i32 %and1362.i, %add1102.i, !dbg !159
  %41 = or i64 %indvars.iv.i, 13, !dbg !159
  %arrayidx1367.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %41, !dbg !159
  %42 = load i32, ptr %arrayidx1367.i, align 4, !dbg !159, !tbaa !145
  br i1 %tobool.not.i, label %cond.end1407.i, label %cond.true1370.i, !dbg !159

cond.true1370.i:                                  ; preds = %cond.end1303.i
  %or1375.i = tail call i32 @llvm.fshl.i32(i32 %cond1200.i, i32 %cond1200.i, i32 15) #6, !dbg !159
  %or1380.i = tail call i32 @llvm.fshl.i32(i32 %cond1200.i, i32 %cond1200.i, i32 13) #6, !dbg !159
  %xor1381.i = xor i32 %or1375.i, %or1380.i, !dbg !159
  %shr1383.i = lshr i32 %cond1200.i, 10, !dbg !159
  %xor1384.i = xor i32 %xor1381.i, %shr1383.i, !dbg !159
  %or1391.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 25) #6, !dbg !159
  %or1396.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 14) #6, !dbg !159
  %xor1397.i = xor i32 %or1391.i, %or1396.i, !dbg !159
  %shr1399.i = lshr i32 %W.sroa.198.02310.i, 3, !dbg !159
  %xor1400.i = xor i32 %xor1397.i, %shr1399.i, !dbg !159
  %add1386.i = add i32 %xor1400.i, %W.sroa.184.02311.i, !dbg !159
  %add1401.i = add i32 %add1386.i, %cond680.i, !dbg !159
  %add1403.i = add i32 %add1401.i, %xor1384.i, !dbg !159
  call void @llvm.dbg.value(metadata i32 %add1403.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)) #6, !dbg !137
  br label %cond.end1407.i, !dbg !159

cond.end1407.i:                                   ; preds = %cond.true1370.i, %cond.end1303.i
  %cond1408.i = phi i32 [ %add1403.i, %cond.true1370.i ], [ %13, %cond.end1303.i ], !dbg !159
  call void @llvm.dbg.value(metadata i32 %cond1408.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)) #6, !dbg !137
  %add1364.i = add i32 %42, %add998.i, !dbg !159
  %add1368.i = add i32 %add1364.i, %xor1363.i, !dbg !159
  %add1409.i = add i32 %add1368.i, %xor1356.i, !dbg !159
  %add1411.i = add i32 %add1409.i, %cond1408.i, !dbg !159
  call void @llvm.dbg.value(metadata i32 %add1411.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %add1414.i = add i32 %add1411.i, %add1027.i, !dbg !159
  call void @llvm.dbg.value(metadata i32 %add1414.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  %or1419.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 30) #6, !dbg !159
  %or1424.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 19) #6, !dbg !159
  %xor1425.i = xor i32 %or1419.i, %or1424.i, !dbg !159
  %or1430.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 10) #6, !dbg !159
  %xor1431.i = xor i32 %xor1425.i, %or1430.i, !dbg !159
  %and1434.i = and i32 %add1339.i, %add1235.i, !dbg !159
  %or1438.i = or i32 %add1339.i, %add1235.i, !dbg !159
  %and1439.i = and i32 %or1438.i, %add1131.i, !dbg !159
  %or1440.i = or i32 %and1439.i, %and1434.i, !dbg !159
  %add1441.i = add i32 %xor1431.i, %or1440.i, !dbg !159
  %add1443.i = add i32 %add1441.i, %add1411.i, !dbg !159
  call void @llvm.dbg.value(metadata i32 %add1443.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  %or1448.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 26) #6, !dbg !160
  %or1453.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 21) #6, !dbg !160
  %xor1454.i = xor i32 %or1448.i, %or1453.i, !dbg !160
  %or1459.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 7) #6, !dbg !160
  %xor1460.i = xor i32 %xor1454.i, %or1459.i, !dbg !160
  %xor1465.i = xor i32 %add1310.i, %add1206.i, !dbg !160
  %and1466.i = and i32 %add1414.i, %xor1465.i, !dbg !160
  %xor1467.i = xor i32 %and1466.i, %add1206.i, !dbg !160
  %43 = or i64 %indvars.iv.i, 14, !dbg !160
  %arrayidx1471.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %43, !dbg !160
  %44 = load i32, ptr %arrayidx1471.i, align 8, !dbg !160, !tbaa !145
  br i1 %tobool.not.i, label %cond.end1511.i, label %cond.true1474.i, !dbg !160

cond.true1474.i:                                  ; preds = %cond.end1407.i
  %or1479.i = tail call i32 @llvm.fshl.i32(i32 %cond1304.i, i32 %cond1304.i, i32 15) #6, !dbg !160
  %or1484.i = tail call i32 @llvm.fshl.i32(i32 %cond1304.i, i32 %cond1304.i, i32 13) #6, !dbg !160
  %xor1485.i = xor i32 %or1479.i, %or1484.i, !dbg !160
  %shr1487.i = lshr i32 %cond1304.i, 10, !dbg !160
  %xor1488.i = xor i32 %xor1485.i, %shr1487.i, !dbg !160
  %or1495.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 25) #6, !dbg !160
  %or1500.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 14) #6, !dbg !160
  %xor1501.i = xor i32 %or1495.i, %or1500.i, !dbg !160
  %shr1503.i = lshr i32 %W.sroa.212.02309.i, 3, !dbg !160
  %xor1504.i = xor i32 %xor1501.i, %shr1503.i, !dbg !160
  %add1490.i = add i32 %xor1504.i, %W.sroa.198.02310.i, !dbg !160
  %add1505.i = add i32 %add1490.i, %cond784.i, !dbg !160
  %add1507.i = add i32 %add1505.i, %xor1488.i, !dbg !160
  call void @llvm.dbg.value(metadata i32 %add1507.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)) #6, !dbg !137
  br label %cond.end1511.i, !dbg !160

cond.end1511.i:                                   ; preds = %cond.true1474.i, %cond.end1407.i
  %cond1512.i = phi i32 [ %add1507.i, %cond.true1474.i ], [ %14, %cond.end1407.i ], !dbg !160
  call void @llvm.dbg.value(metadata i32 %cond1512.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)) #6, !dbg !137
  %add1468.i = add i32 %44, %add1102.i, !dbg !160
  %add1472.i = add i32 %add1468.i, %xor1467.i, !dbg !160
  %add1513.i = add i32 %add1472.i, %xor1460.i, !dbg !160
  %add1515.i = add i32 %add1513.i, %cond1512.i, !dbg !160
  call void @llvm.dbg.value(metadata i32 %add1515.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %add1518.i = add i32 %add1515.i, %add1131.i, !dbg !160
  call void @llvm.dbg.value(metadata i32 %add1518.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  %or1523.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 30) #6, !dbg !160
  %or1528.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 19) #6, !dbg !160
  %xor1529.i = xor i32 %or1523.i, %or1528.i, !dbg !160
  %or1534.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 10) #6, !dbg !160
  %xor1535.i = xor i32 %xor1529.i, %or1534.i, !dbg !160
  %and1538.i = and i32 %add1443.i, %add1339.i, !dbg !160
  %or1542.i = or i32 %add1443.i, %add1339.i, !dbg !160
  %and1543.i = and i32 %or1542.i, %add1235.i, !dbg !160
  %or1544.i = or i32 %and1543.i, %and1538.i, !dbg !160
  %add1545.i = add i32 %xor1535.i, %or1544.i, !dbg !160
  %add1547.i = add i32 %add1545.i, %add1515.i, !dbg !160
  call void @llvm.dbg.value(metadata i32 %add1547.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  %or1552.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 26) #6, !dbg !161
  %or1557.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 21) #6, !dbg !161
  %xor1558.i = xor i32 %or1552.i, %or1557.i, !dbg !161
  %or1563.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 7) #6, !dbg !161
  %xor1564.i = xor i32 %xor1558.i, %or1563.i, !dbg !161
  %xor1569.i = xor i32 %add1414.i, %add1310.i, !dbg !161
  %and1570.i = and i32 %add1518.i, %xor1569.i, !dbg !161
  %xor1571.i = xor i32 %and1570.i, %add1310.i, !dbg !161
  %45 = or i64 %indvars.iv.i, 15, !dbg !161
  %arrayidx1575.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %45, !dbg !161
  %46 = load i32, ptr %arrayidx1575.i, align 4, !dbg !161, !tbaa !145
  br i1 %tobool.not.i, label %cond.end1615.i, label %cond.true1578.i, !dbg !161

cond.true1578.i:                                  ; preds = %cond.end1511.i
  %or1583.i = tail call i32 @llvm.fshl.i32(i32 %cond1408.i, i32 %cond1408.i, i32 15) #6, !dbg !161
  %or1588.i = tail call i32 @llvm.fshl.i32(i32 %cond1408.i, i32 %cond1408.i, i32 13) #6, !dbg !161
  %xor1589.i = xor i32 %or1583.i, %or1588.i, !dbg !161
  %shr1591.i = lshr i32 %cond1408.i, 10, !dbg !161
  %xor1592.i = xor i32 %xor1589.i, %shr1591.i, !dbg !161
  %or1599.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 25) #6, !dbg !161
  %or1604.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 14) #6, !dbg !161
  %xor1605.i = xor i32 %or1599.i, %or1604.i, !dbg !161
  %shr1607.i = lshr i32 %cond.i, 3, !dbg !161
  %xor1608.i = xor i32 %xor1605.i, %shr1607.i, !dbg !161
  %add1594.i = add i32 %xor1608.i, %W.sroa.212.02309.i, !dbg !161
  %add1609.i = add i32 %add1594.i, %cond888.i, !dbg !161
  %add1611.i = add i32 %add1609.i, %xor1592.i, !dbg !161
  call void @llvm.dbg.value(metadata i32 %add1611.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)) #6, !dbg !137
  br label %cond.end1615.i, !dbg !161

cond.end1615.i:                                   ; preds = %cond.true1578.i, %cond.end1511.i
  %cond1616.i = phi i32 [ %add1611.i, %cond.true1578.i ], [ %15, %cond.end1511.i ], !dbg !161
  call void @llvm.dbg.value(metadata i32 %cond1616.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)) #6, !dbg !137
  %add1572.i = add i32 %46, %add1206.i, !dbg !161
  %add1576.i = add i32 %add1572.i, %xor1571.i, !dbg !161
  %add1617.i = add i32 %add1576.i, %xor1564.i, !dbg !161
  %add1619.i = add i32 %add1617.i, %cond1616.i, !dbg !161
  call void @llvm.dbg.value(metadata i32 %add1619.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %add1622.i = add i32 %add1619.i, %add1235.i, !dbg !161
  call void @llvm.dbg.value(metadata i32 %add1622.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  %or1627.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 30) #6, !dbg !161
  %or1632.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 19) #6, !dbg !161
  %xor1633.i = xor i32 %or1627.i, %or1632.i, !dbg !161
  %or1638.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 10) #6, !dbg !161
  %xor1639.i = xor i32 %xor1633.i, %or1638.i, !dbg !161
  %and1642.i = and i32 %add1547.i, %add1443.i, !dbg !161
  %or1646.i = or i32 %add1547.i, %add1443.i, !dbg !161
  %and1647.i = and i32 %or1646.i, %add1339.i, !dbg !161
  %or1648.i = or i32 %and1647.i, %and1642.i, !dbg !161
  %add1649.i = add i32 %xor1639.i, %or1648.i, !dbg !161
  %add1651.i = add i32 %add1649.i, %add1619.i, !dbg !161
  call void @llvm.dbg.value(metadata i32 %add1651.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16, !dbg !162
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !135, metadata !DIExpression()) #6, !dbg !140
  call void @llvm.dbg.value(metadata i32 %add1547.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %add1443.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %add1339.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %add1622.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %add1518.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %add1414.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %add1310.i, metadata !134, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond160.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond264.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond368.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond472.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond576.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond680.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond784.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond888.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond992.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond1096.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond1200.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond1304.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond1408.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond1512.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %cond1616.i, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)) #6, !dbg !137
  %cmp.i = icmp ult i64 %indvars.iv.i, 48, !dbg !163
  br i1 %cmp.i, label %for.body.i, label %transform.exit, !dbg !141, !llvm.loop !164

transform.exit:                                   ; preds = %cond.end1615.i
  %add1655.i = add i32 %add1651.i, %T.sroa.0.0.copyload.i, !dbg !166
  store i32 %add1655.i, ptr %state, align 4, !dbg !166, !tbaa !145
  %arrayidx1657.i = getelementptr inbounds i32, ptr %state, i64 1, !dbg !167
  %add1658.i = add i32 %add1547.i, %T.sroa.60.0.copyload.i, !dbg !168
  store i32 %add1658.i, ptr %arrayidx1657.i, align 4, !dbg !168, !tbaa !145
  %arrayidx1660.i = getelementptr inbounds i32, ptr %state, i64 2, !dbg !169
  %add1661.i = add i32 %add1443.i, %T.sroa.117.0.copyload.i, !dbg !170
  store i32 %add1661.i, ptr %arrayidx1660.i, align 4, !dbg !170, !tbaa !145
  %arrayidx1663.i = getelementptr inbounds i32, ptr %state, i64 3, !dbg !171
  %add1664.i = add i32 %add1339.i, %T.sroa.174.0.copyload.i, !dbg !172
  store i32 %add1664.i, ptr %arrayidx1663.i, align 4, !dbg !172, !tbaa !145
  %arrayidx1666.i = getelementptr inbounds i32, ptr %state, i64 4, !dbg !173
  %add1667.i = add i32 %add1622.i, %T.sroa.231.0.copyload.i, !dbg !174
  store i32 %add1667.i, ptr %arrayidx1666.i, align 4, !dbg !174, !tbaa !145
  %arrayidx1669.i = getelementptr inbounds i32, ptr %state, i64 5, !dbg !175
  %add1670.i = add i32 %add1518.i, %T.sroa.288.0.copyload.i, !dbg !176
  store i32 %add1670.i, ptr %arrayidx1669.i, align 4, !dbg !176, !tbaa !145
  %arrayidx1672.i = getelementptr inbounds i32, ptr %state, i64 6, !dbg !177
  %add1673.i = add i32 %add1414.i, %T.sroa.345.0.copyload.i, !dbg !178
  store i32 %add1673.i, ptr %arrayidx1672.i, align 4, !dbg !178, !tbaa !145
  %arrayidx1675.i = getelementptr inbounds i32, ptr %state, i64 7, !dbg !179
  %add1676.i = add i32 %add1310.i, %T.sroa.402.0.copyload.i, !dbg !180
  store i32 %add1676.i, ptr %arrayidx1675.i, align 4, !dbg !180, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6, !dbg !181
  ret void, !dbg !181

for.body:                                         ; preds = %entry, %for.body
  %i.025 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.025, metadata !117, metadata !DIExpression()), !dbg !122
  %arrayidx = getelementptr inbounds [16 x i32], ptr %check, i64 0, i64 %i.025, !dbg !182
  %47 = load i32, ptr %arrayidx, align 4, !dbg !182, !tbaa !71
  %or11 = tail call i32 @llvm.bswap.i32(i32 %47), !dbg !182
  %arrayidx12 = getelementptr inbounds [16 x i32], ptr %data, i64 0, i64 %i.025, !dbg !184
  store i32 %or11, ptr %arrayidx12, align 4, !dbg !185, !tbaa !145
  %inc = add nuw nsw i64 %i.025, 1, !dbg !186
  call void @llvm.dbg.value(metadata i64 %inc, metadata !117, metadata !DIExpression()), !dbg !122
  %exitcond.not = icmp eq i64 %inc, 16, !dbg !187
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !123, !llvm.loop !188
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define dso_local void @lzma_sha256_finish(ptr nocapture noundef %check) local_unnamed_addr #5 !dbg !190 {
entry:
  call void @llvm.dbg.value(metadata ptr %check, metadata !192, metadata !DIExpression()), !dbg !196
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !197
  %size = getelementptr inbounds %struct.anon, ptr %state, i64 0, i32 1, !dbg !198
  %0 = load i64, ptr %size, align 8, !dbg !198, !tbaa !71
  %and = and i64 %0, 63, !dbg !199
  call void @llvm.dbg.value(metadata i64 %and, metadata !193, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64 %and, metadata !193, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !196
  br label %while.cond, !dbg !200

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %pos.1.sink = phi i64 [ %and, %entry ], [ %pos.1.sink.be, %while.cond.backedge ]
  %.sink = phi i8 [ -128, %entry ], [ 0, %while.cond.backedge ]
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr %check, i64 0, i64 %pos.1.sink, !dbg !196
  store i8 %.sink, ptr %arrayidx4, align 1, !dbg !196, !tbaa !71
  %pos.0 = add i64 %pos.1.sink, 1, !dbg !196
  call void @llvm.dbg.value(metadata i64 %pos.0, metadata !193, metadata !DIExpression()), !dbg !196
  switch i64 %pos.1.sink, label %while.cond.backedge [
    i64 55, label %while.end
    i64 63, label %if.then
  ], !dbg !200

while.cond.backedge:                              ; preds = %while.cond, %if.then
  %pos.1.sink.be = phi i64 [ 0, %if.then ], [ %pos.0, %while.cond ]
  br label %while.cond, !dbg !196, !llvm.loop !201

if.then:                                          ; preds = %while.cond
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !193, metadata !DIExpression()), !dbg !196
  br label %while.cond.backedge, !dbg !207

while.end:                                        ; preds = %while.cond
  %1 = load i64, ptr %size, align 8, !dbg !208, !tbaa !71
  %mul = shl i64 %1, 3, !dbg !208
  store i64 %mul, ptr %size, align 8, !dbg !208, !tbaa !71
  %shl = shl i64 %1, 59, !dbg !209
  %shl11 = shl i64 %1, 43, !dbg !209
  %and12 = and i64 %shl11, 71776119061217280, !dbg !209
  %or = or i64 %and12, %shl, !dbg !209
  %shl15 = shl i64 %1, 27, !dbg !209
  %and16 = and i64 %shl15, 280375465082880, !dbg !209
  %or17 = or i64 %or, %and16, !dbg !209
  %shl20 = shl i64 %1, 11, !dbg !209
  %and21 = and i64 %shl20, 1095216660480, !dbg !209
  %or22 = or i64 %or17, %and21, !dbg !209
  %shr = lshr i64 %mul, 8, !dbg !209
  %and25 = and i64 %shr, 4278190080, !dbg !209
  %or26 = or i64 %or22, %and25, !dbg !209
  %shr29 = lshr i64 %mul, 24, !dbg !209
  %and30 = and i64 %shr29, 16711680, !dbg !209
  %or31 = or i64 %or26, %and30, !dbg !209
  %shr34 = lshr i64 %mul, 40, !dbg !209
  %and35 = and i64 %shr34, 65280, !dbg !209
  %or36 = or i64 %or31, %and35, !dbg !209
  %shr39 = lshr i64 %mul, 56, !dbg !209
  %or40 = or i64 %or36, %shr39, !dbg !209
  %arrayidx42 = getelementptr inbounds [8 x i64], ptr %check, i64 0, i64 7, !dbg !210
  store i64 %or40, ptr %arrayidx42, align 8, !dbg !211, !tbaa !71
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !212
  call void @llvm.dbg.value(metadata i64 0, metadata !194, metadata !DIExpression()), !dbg !213
  br label %for.body, !dbg !214

for.cond.cleanup:                                 ; preds = %for.body
  ret void, !dbg !215

for.body:                                         ; preds = %while.end, %for.body
  %i.096 = phi i64 [ 0, %while.end ], [ %inc67, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.096, metadata !194, metadata !DIExpression()), !dbg !213
  %arrayidx46 = getelementptr inbounds [8 x i32], ptr %state, i64 0, i64 %i.096, !dbg !216
  %2 = load i32, ptr %arrayidx46, align 4, !dbg !216, !tbaa !71
  %or64 = tail call i32 @llvm.bswap.i32(i32 %2), !dbg !216
  %arrayidx66 = getelementptr inbounds [16 x i32], ptr %check, i64 0, i64 %i.096, !dbg !218
  store i32 %or64, ptr %arrayidx66, align 4, !dbg !219, !tbaa !71
  %inc67 = add nuw nsw i64 %i.096, 1, !dbg !220
  call void @llvm.dbg.value(metadata i64 %inc67, metadata !194, metadata !DIExpression()), !dbg !213
  %exitcond.not = icmp eq i64 %inc67, 8, !dbg !221
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !214, !llvm.loop !222
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!48}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 139, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lzma_sha256_init", scope: !3, file: !3, line: 137, type: !4, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !56)
!3 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/sha256.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f08126c77e17cbad9e33d75af3140f58")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !8, line: 56, baseType: !9)
!8 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 34, size: 832, elements: !10)
!10 = !{!11, !37}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !9, file: !8, line: 40, baseType: !12, size: 512)
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !8, line: 36, size: 512, elements: !13)
!13 = !{!14, !23, !30}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !12, file: !8, line: 37, baseType: !15, size: 512)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !21)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 38, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !12, file: !8, line: 38, baseType: !24, size: 512)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !28)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 26, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 42, baseType: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !12, file: !8, line: 39, baseType: !31, size: 512)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !35)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 27, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 45, baseType: !34)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !9, file: !8, line: 54, baseType: !38, size: 320, offset: 512)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !8, line: 43, size: 320, elements: !39)
!39 = !{!40, !41, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !38, file: !8, line: 44, baseType: !25, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !38, file: !8, line: 45, baseType: !32, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !38, file: !8, line: 53, baseType: !43, size: 320)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !8, line: 47, size: 320, elements: !44)
!44 = !{!45, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !43, file: !8, line: 49, baseType: !46, size: 256)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !35)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !8, line: 52, baseType: !32, size: 64, offset: 256)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !50, globals: !51, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/check/sha256.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "f08126c77e17cbad9e33d75af3140f58")
!50 = !{!32, !25}
!51 = !{!0, !52}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "SHA256_K", scope: !48, file: !3, line: 64, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !21)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!56 = !{!57}
!57 = !DILocalVariable(name: "check", arg: 1, scope: !2, file: !3, line: 137, type: !6)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !35)
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 7, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!66 = !DILocation(line: 0, scope: !2)
!67 = !DILocation(line: 144, column: 16, scope: !2)
!68 = !DILocation(line: 144, column: 2, scope: !2)
!69 = !DILocation(line: 145, column: 22, scope: !2)
!70 = !DILocation(line: 145, column: 27, scope: !2)
!71 = !{!72, !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 147, column: 2, scope: !2)
!75 = distinct !DISubprogram(name: "lzma_sha256_update", scope: !3, file: !3, line: 152, type: !76, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !82)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, !80, !6}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !34)
!81 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!82 = !{!83, !84, !85, !86, !89}
!83 = !DILocalVariable(name: "buf", arg: 1, scope: !75, file: !3, line: 152, type: !78)
!84 = !DILocalVariable(name: "size", arg: 2, scope: !75, file: !3, line: 152, type: !80)
!85 = !DILocalVariable(name: "check", arg: 3, scope: !75, file: !3, line: 152, type: !6)
!86 = !DILocalVariable(name: "copy_start", scope: !87, file: !3, line: 159, type: !88)
!87 = distinct !DILexicalBlock(scope: !75, file: !3, line: 158, column: 19)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!89 = !DILocalVariable(name: "copy_size", scope: !87, file: !3, line: 160, type: !80)
!90 = !DILocation(line: 0, scope: !75)
!91 = !DILocation(line: 158, column: 14, scope: !75)
!92 = !DILocation(line: 158, column: 2, scope: !75)
!93 = !DILocation(line: 159, column: 49, scope: !87)
!94 = !DILocation(line: 159, column: 54, scope: !87)
!95 = !DILocation(line: 0, scope: !87)
!96 = !DILocation(line: 160, column: 25, scope: !87)
!97 = !DILocation(line: 161, column: 7, scope: !87)
!98 = !DILocation(line: 164, column: 27, scope: !87)
!99 = !DILocation(line: 164, column: 3, scope: !87)
!100 = !DILocation(line: 166, column: 7, scope: !87)
!101 = !DILocation(line: 167, column: 8, scope: !87)
!102 = !DILocation(line: 168, column: 28, scope: !87)
!103 = !DILocation(line: 170, column: 33, scope: !104)
!104 = distinct !DILexicalBlock(scope: !87, file: !3, line: 170, column: 7)
!105 = !DILocation(line: 170, column: 41, scope: !104)
!106 = !DILocation(line: 170, column: 7, scope: !87)
!107 = !DILocation(line: 171, column: 4, scope: !104)
!108 = distinct !{!108, !92, !109, !110, !111}
!109 = !DILocation(line: 172, column: 2, scope: !75)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = !DILocation(line: 174, column: 2, scope: !75)
!113 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 118, type: !4, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !114)
!114 = !{!115, !116, !117}
!115 = !DILocalVariable(name: "check", arg: 1, scope: !113, file: !3, line: 118, type: !6)
!116 = !DILocalVariable(name: "data", scope: !113, file: !3, line: 124, type: !24)
!117 = !DILocalVariable(name: "i", scope: !118, file: !3, line: 126, type: !80)
!118 = distinct !DILexicalBlock(scope: !113, file: !3, line: 126, column: 2)
!119 = !DILocation(line: 0, scope: !113)
!120 = !DILocation(line: 124, column: 2, scope: !113)
!121 = !DILocation(line: 124, column: 11, scope: !113)
!122 = !DILocation(line: 0, scope: !118)
!123 = !DILocation(line: 126, column: 2, scope: !118)
!124 = !DILocation(line: 129, column: 19, scope: !113)
!125 = !DILocalVariable(name: "state", arg: 1, scope: !126, file: !3, line: 88, type: !129)
!126 = distinct !DISubprogram(name: "transform", scope: !3, file: !3, line: 88, type: !127, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !131)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!131 = !{!125, !132, !133, !134, !135}
!132 = !DILocalVariable(name: "data", arg: 2, scope: !126, file: !3, line: 88, type: !130)
!133 = !DILocalVariable(name: "W", scope: !126, file: !3, line: 91, type: !24)
!134 = !DILocalVariable(name: "T", scope: !126, file: !3, line: 92, type: !46)
!135 = !DILocalVariable(name: "j", scope: !136, file: !3, line: 98, type: !27)
!136 = distinct !DILexicalBlock(scope: !126, file: !3, line: 98, column: 2)
!137 = !DILocation(line: 0, scope: !126, inlinedAt: !138)
!138 = distinct !DILocation(line: 129, column: 2, scope: !113)
!139 = !DILocation(line: 95, column: 2, scope: !126, inlinedAt: !138)
!140 = !DILocation(line: 0, scope: !136, inlinedAt: !138)
!141 = !DILocation(line: 98, column: 2, scope: !136, inlinedAt: !138)
!142 = !DILocation(line: 99, column: 3, scope: !143, inlinedAt: !138)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 98, column: 44)
!144 = distinct !DILexicalBlock(scope: !136, file: !3, line: 98, column: 2)
!145 = !{!146, !146, i64 0}
!146 = !{!"int", !72, i64 0}
!147 = !DILocation(line: 99, column: 10, scope: !143, inlinedAt: !138)
!148 = !DILocation(line: 99, column: 17, scope: !143, inlinedAt: !138)
!149 = !DILocation(line: 99, column: 24, scope: !143, inlinedAt: !138)
!150 = !DILocation(line: 100, column: 3, scope: !143, inlinedAt: !138)
!151 = !DILocation(line: 100, column: 10, scope: !143, inlinedAt: !138)
!152 = !DILocation(line: 100, column: 17, scope: !143, inlinedAt: !138)
!153 = !DILocation(line: 100, column: 24, scope: !143, inlinedAt: !138)
!154 = !DILocation(line: 101, column: 3, scope: !143, inlinedAt: !138)
!155 = !DILocation(line: 101, column: 10, scope: !143, inlinedAt: !138)
!156 = !DILocation(line: 101, column: 17, scope: !143, inlinedAt: !138)
!157 = !DILocation(line: 101, column: 24, scope: !143, inlinedAt: !138)
!158 = !DILocation(line: 102, column: 3, scope: !143, inlinedAt: !138)
!159 = !DILocation(line: 102, column: 10, scope: !143, inlinedAt: !138)
!160 = !DILocation(line: 102, column: 17, scope: !143, inlinedAt: !138)
!161 = !DILocation(line: 102, column: 24, scope: !143, inlinedAt: !138)
!162 = !DILocation(line: 98, column: 37, scope: !144, inlinedAt: !138)
!163 = !DILocation(line: 98, column: 29, scope: !144, inlinedAt: !138)
!164 = distinct !{!164, !141, !165, !110, !111}
!165 = !DILocation(line: 103, column: 2, scope: !136, inlinedAt: !138)
!166 = !DILocation(line: 106, column: 11, scope: !126, inlinedAt: !138)
!167 = !DILocation(line: 107, column: 2, scope: !126, inlinedAt: !138)
!168 = !DILocation(line: 107, column: 11, scope: !126, inlinedAt: !138)
!169 = !DILocation(line: 108, column: 2, scope: !126, inlinedAt: !138)
!170 = !DILocation(line: 108, column: 11, scope: !126, inlinedAt: !138)
!171 = !DILocation(line: 109, column: 2, scope: !126, inlinedAt: !138)
!172 = !DILocation(line: 109, column: 11, scope: !126, inlinedAt: !138)
!173 = !DILocation(line: 110, column: 2, scope: !126, inlinedAt: !138)
!174 = !DILocation(line: 110, column: 11, scope: !126, inlinedAt: !138)
!175 = !DILocation(line: 111, column: 2, scope: !126, inlinedAt: !138)
!176 = !DILocation(line: 111, column: 11, scope: !126, inlinedAt: !138)
!177 = !DILocation(line: 112, column: 2, scope: !126, inlinedAt: !138)
!178 = !DILocation(line: 112, column: 11, scope: !126, inlinedAt: !138)
!179 = !DILocation(line: 113, column: 2, scope: !126, inlinedAt: !138)
!180 = !DILocation(line: 113, column: 11, scope: !126, inlinedAt: !138)
!181 = !DILocation(line: 133, column: 1, scope: !113)
!182 = !DILocation(line: 127, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !118, file: !3, line: 126, column: 2)
!184 = !DILocation(line: 127, column: 3, scope: !183)
!185 = !DILocation(line: 127, column: 11, scope: !183)
!186 = !DILocation(line: 126, column: 29, scope: !183)
!187 = !DILocation(line: 126, column: 23, scope: !183)
!188 = distinct !{!188, !123, !189, !110, !111}
!189 = !DILocation(line: 127, column: 13, scope: !118)
!190 = distinct !DISubprogram(name: "lzma_sha256_finish", scope: !3, file: !3, line: 179, type: !4, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !191)
!191 = !{!192, !193, !194}
!192 = !DILocalVariable(name: "check", arg: 1, scope: !190, file: !3, line: 179, type: !6)
!193 = !DILocalVariable(name: "pos", scope: !190, file: !3, line: 183, type: !80)
!194 = !DILocalVariable(name: "i", scope: !195, file: !3, line: 202, type: !80)
!195 = distinct !DILexicalBlock(scope: !190, file: !3, line: 202, column: 2)
!196 = !DILocation(line: 0, scope: !190)
!197 = !DILocation(line: 183, column: 22, scope: !190)
!198 = !DILocation(line: 183, column: 35, scope: !190)
!199 = !DILocation(line: 183, column: 40, scope: !190)
!200 = !DILocation(line: 186, column: 2, scope: !190)
!201 = distinct !{!201, !200, !202, !110, !111}
!202 = !DILocation(line: 193, column: 2, scope: !190)
!203 = !DILocation(line: 188, column: 4, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 187, column: 18)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 187, column: 7)
!206 = distinct !DILexicalBlock(scope: !190, file: !3, line: 186, column: 24)
!207 = !DILocation(line: 190, column: 3, scope: !204)
!208 = !DILocation(line: 196, column: 27, scope: !190)
!209 = !DILocation(line: 198, column: 36, scope: !190)
!210 = !DILocation(line: 198, column: 2, scope: !190)
!211 = !DILocation(line: 198, column: 34, scope: !190)
!212 = !DILocation(line: 200, column: 2, scope: !190)
!213 = !DILocation(line: 0, scope: !195)
!214 = !DILocation(line: 202, column: 2, scope: !195)
!215 = !DILocation(line: 206, column: 1, scope: !190)
!216 = !DILocation(line: 203, column: 26, scope: !217)
!217 = distinct !DILexicalBlock(scope: !195, file: !3, line: 202, column: 2)
!218 = !DILocation(line: 203, column: 3, scope: !217)
!219 = !DILocation(line: 203, column: 24, scope: !217)
!220 = !DILocation(line: 202, column: 28, scope: !217)
!221 = !DILocation(line: 202, column: 23, scope: !217)
!222 = distinct !{!222, !214, !223, !110, !111}
!223 = !DILocation(line: 203, column: 26, scope: !195)
