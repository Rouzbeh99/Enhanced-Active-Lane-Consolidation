; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/rectangle.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_cache_mv_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mv_1_1, ptr @x264_macroblock_cache_mv_2_1, ptr @x264_macroblock_cache_mv_1_2, ptr @x264_macroblock_cache_mv_2_2, ptr null, ptr @x264_macroblock_cache_mv_4_2, ptr null, ptr @x264_macroblock_cache_mv_2_4, ptr null, ptr @x264_macroblock_cache_mv_4_4], align 16, !dbg !0
@x264_cache_mvd_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mvd_1_1, ptr @x264_macroblock_cache_mvd_2_1, ptr @x264_macroblock_cache_mvd_1_2, ptr @x264_macroblock_cache_mvd_2_2, ptr null, ptr @x264_macroblock_cache_mvd_4_2, ptr null, ptr @x264_macroblock_cache_mvd_2_4, ptr null, ptr @x264_macroblock_cache_mvd_4_4], align 16, !dbg !54
@x264_cache_ref_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_ref_1_1, ptr @x264_macroblock_cache_ref_2_1, ptr @x264_macroblock_cache_ref_1_2, ptr @x264_macroblock_cache_ref_2_2, ptr null, ptr @x264_macroblock_cache_ref_4_2, ptr null, ptr @x264_macroblock_cache_ref_2_4, ptr null, ptr @x264_macroblock_cache_ref_4_4], align 16, !dbg !64

; Function Attrs: nofree norecurse nosync nounwind writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !73 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !75, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 %val, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 16, metadata !85, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 4, metadata !86, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !94
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !94
  %conv15.i = zext i32 %val to i64, !dbg !96
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !97
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !94
  br label %do.body.i, !dbg !98

do.body.i:                                        ; preds = %do.body.i, %entry
  %d.0.i = phi ptr [ %add.ptr106.i, %do.body.i ], [ %target, %entry ], !dbg !94
  %h.addr.0.i = phi i32 [ %sub.i, %do.body.i ], [ 4, %entry ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i, metadata !86, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata ptr %d.0.i, metadata !89, metadata !DIExpression()), !dbg !94
  store i64 %add.i, ptr %d.0.i, align 8, !dbg !106, !tbaa !108
  %add.ptr95.i = getelementptr inbounds i8, ptr %d.0.i, i64 8, !dbg !111
  store i64 %add.i, ptr %add.ptr95.i, align 8, !dbg !112, !tbaa !108
  %add.ptr98.i = getelementptr inbounds i8, ptr %d.0.i, i64 32, !dbg !113
  store i64 %add.i, ptr %add.ptr98.i, align 8, !dbg !114, !tbaa !108
  %add.ptr103.i = getelementptr inbounds i8, ptr %d.0.i, i64 40, !dbg !115
  store i64 %add.i, ptr %add.ptr103.i, align 8, !dbg !116, !tbaa !108
  %sub.i = add nsw i32 %h.addr.0.i, -2, !dbg !117
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !86, metadata !DIExpression()), !dbg !94
  %add.ptr106.i = getelementptr inbounds i8, ptr %d.0.i, i64 64, !dbg !118
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i, metadata !89, metadata !DIExpression()), !dbg !94
  %tobool.not.i = icmp eq i32 %sub.i, 0, !dbg !119
  br i1 %tobool.not.i, label %x264_macroblock_cache_rect.exit, label %do.body.i, !dbg !119, !llvm.loop !120

x264_macroblock_cache_rect.exit:                  ; preds = %do.body.i
  ret void, !dbg !124
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %val, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 8, metadata !85, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 4, metadata !86, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !130
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !130
  %conv15.i = zext i32 %val to i64, !dbg !132
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !133
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !130
  store i64 %add.i, ptr %target, align 8, !dbg !134, !tbaa !108
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !138
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !139, !tbaa !108
  %add.ptr80.i = getelementptr inbounds i8, ptr %target, i64 64, !dbg !140
  store i64 %add.i, ptr %add.ptr80.i, align 8, !dbg !141, !tbaa !108
  %add.ptr83.i = getelementptr inbounds i8, ptr %target, i64 96, !dbg !142
  store i64 %add.i, ptr %add.ptr83.i, align 8, !dbg !143, !tbaa !108
  ret void, !dbg !144
}

; Function Attrs: nofree norecurse nosync nounwind writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !145 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %val, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 16, metadata !85, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !150
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !150
  %conv15.i = zext i32 %val to i64, !dbg !152
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !153
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !150
  store i64 %add.i, ptr %target, align 8, !dbg !154, !tbaa !108
  %add.ptr95.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !155
  store i64 %add.i, ptr %add.ptr95.i, align 8, !dbg !156, !tbaa !108
  %add.ptr98.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !157
  store i64 %add.i, ptr %add.ptr98.i, align 8, !dbg !158, !tbaa !108
  %add.ptr103.i = getelementptr inbounds i8, ptr %target, i64 40, !dbg !159
  store i64 %add.i, ptr %add.ptr103.i, align 8, !dbg !160, !tbaa !108
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !150
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value)), !dbg !150
  ret void, !dbg !161
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %val, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 8, metadata !85, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !167
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !167
  %conv15.i = zext i32 %val to i64, !dbg !169
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !170
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !167
  store i64 %add.i, ptr %target, align 8, !dbg !171, !tbaa !108
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !172
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !173, !tbaa !108
  ret void, !dbg !174
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i32 %val, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 8, metadata !85, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !180
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !180
  %conv15.i = zext i32 %val to i64, !dbg !182
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !183
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !180
  store i64 %add.i, ptr %target, align 8, !dbg !184, !tbaa !108
  ret void, !dbg !185
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_1_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !188, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %val, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !191
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !191
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !191
  store i32 %val, ptr %target, align 4, !dbg !193, !tbaa !108
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !195
  store i32 %val, ptr %add.ptr49.i, align 4, !dbg !196, !tbaa !108
  ret void, !dbg !197
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mv_1_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !200, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i32 %val, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 4, metadata !87, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata i32 32, metadata !87, metadata !DIExpression()), !dbg !203
  store i32 %val, ptr %target, align 4, !dbg !205, !tbaa !108
  ret void, !dbg !206
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !207 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !209, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i32 %val, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 8, metadata !85, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 4, metadata !86, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !212
  %mul8.i = mul i32 %val, 65537, !dbg !214
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !92, metadata !DIExpression()), !dbg !212
  %conv15.i = zext i32 %mul8.i to i64, !dbg !215
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !216
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !212
  store i64 %add.i, ptr %target, align 8, !dbg !217, !tbaa !108
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !218
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !219, !tbaa !108
  %add.ptr80.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !220
  store i64 %add.i, ptr %add.ptr80.i, align 8, !dbg !221, !tbaa !108
  %add.ptr83.i = getelementptr inbounds i8, ptr %target, i64 48, !dbg !222
  store i64 %add.i, ptr %add.ptr83.i, align 8, !dbg !223, !tbaa !108
  ret void, !dbg !224
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %val, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 4, metadata !86, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !230
  %mul8.i = mul i32 %val, 65537, !dbg !232
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !92, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !230
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !230
  store i32 %mul8.i, ptr %target, align 4, !dbg !233, !tbaa !108
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !234
  store i32 %mul8.i, ptr %add.ptr49.i, align 4, !dbg !235, !tbaa !108
  %add.ptr56.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !236
  store i32 %mul8.i, ptr %add.ptr56.i, align 4, !dbg !237, !tbaa !108
  %add.ptr59.i = getelementptr inbounds i8, ptr %target, i64 48, !dbg !238
  store i32 %mul8.i, ptr %add.ptr59.i, align 4, !dbg !239, !tbaa !108
  ret void, !dbg !240
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 %val, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 8, metadata !85, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !246
  %mul8.i = mul i32 %val, 65537, !dbg !248
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !92, metadata !DIExpression()), !dbg !246
  %conv15.i = zext i32 %mul8.i to i64, !dbg !249
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !250
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !93, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !246
  store i64 %add.i, ptr %target, align 8, !dbg !251, !tbaa !108
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !252
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !253, !tbaa !108
  ret void, !dbg !254
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !255 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i32 %val, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !260
  %mul8.i = mul i32 %val, 65537, !dbg !262
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !92, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !260
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !260
  store i32 %mul8.i, ptr %target, align 4, !dbg !263, !tbaa !108
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !264
  store i32 %mul8.i, ptr %add.ptr49.i, align 4, !dbg !265, !tbaa !108
  ret void, !dbg !266
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !267 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32 %val, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !272
  %mul8.i = mul i32 %val, 65537, !dbg !274
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !92, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %mul8.i, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !272
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !272
  store i32 %mul8.i, ptr %target, align 4, !dbg !275, !tbaa !108
  ret void, !dbg !276
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_1_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !277 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %val, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 2, metadata !85, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !282
  %conv.i = trunc i32 %val to i16, !dbg !284
  call void @llvm.dbg.value(metadata i16 %conv.i, metadata !91, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value)), !dbg !282
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !282
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !282
  store i16 %conv.i, ptr %target, align 2, !dbg !285, !tbaa !108
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !287
  store i16 %conv.i, ptr %add.ptr26.i, align 2, !dbg !288, !tbaa !108
  ret void, !dbg !289
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_mvd_1_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !290 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %val, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 2, metadata !85, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 2, metadata !87, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !295
  %conv.i = trunc i32 %val to i16, !dbg !297
  call void @llvm.dbg.value(metadata i16 %conv.i, metadata !91, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value)), !dbg !295
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !295
  call void @llvm.dbg.value(metadata i32 16, metadata !87, metadata !DIExpression()), !dbg !295
  store i16 %conv.i, ptr %target, align 2, !dbg !298, !tbaa !108
  ret void, !dbg !299
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_ref_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %val, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 4, metadata !86, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 1, metadata !87, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !305
  %mul10.i = mul i32 %val, 16843009, !dbg !307
  call void @llvm.dbg.value(metadata i32 %mul10.i, metadata !92, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %mul10.i, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !305
  call void @llvm.dbg.value(metadata i32 8, metadata !87, metadata !DIExpression()), !dbg !305
  store i32 %mul10.i, ptr %target, align 4, !dbg !308, !tbaa !108
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !309
  store i32 %mul10.i, ptr %add.ptr49.i, align 4, !dbg !310, !tbaa !108
  %add.ptr56.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !311
  store i32 %mul10.i, ptr %add.ptr56.i, align 4, !dbg !312, !tbaa !108
  %add.ptr59.i = getelementptr inbounds i8, ptr %target, i64 24, !dbg !313
  store i32 %mul10.i, ptr %add.ptr59.i, align 4, !dbg !314, !tbaa !108
  ret void, !dbg !315
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_ref_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i32 %val, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 2, metadata !85, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 4, metadata !86, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 1, metadata !87, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !321
  %0 = trunc i32 %val to i16, !dbg !323
  %conv.i = mul i16 %0, 257, !dbg !323
  call void @llvm.dbg.value(metadata i16 %conv.i, metadata !91, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression(DW_OP_constu, 16843009, DW_OP_mul, DW_OP_stack_value)), !dbg !321
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_constu, 16843009, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !321
  call void @llvm.dbg.value(metadata i32 8, metadata !87, metadata !DIExpression()), !dbg !321
  store i16 %conv.i, ptr %target, align 2, !dbg !324, !tbaa !108
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !325
  store i16 %conv.i, ptr %add.ptr26.i, align 2, !dbg !326, !tbaa !108
  %add.ptr33.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !327
  store i16 %conv.i, ptr %add.ptr33.i, align 2, !dbg !328, !tbaa !108
  %add.ptr36.i = getelementptr inbounds i8, ptr %target, i64 24, !dbg !329
  store i16 %conv.i, ptr %add.ptr36.i, align 2, !dbg !330, !tbaa !108
  ret void, !dbg !331
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_ref_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !332 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !334, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 %val, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 4, metadata !85, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 1, metadata !87, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %val, metadata !91, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !337
  %mul10.i = mul i32 %val, 16843009, !dbg !339
  call void @llvm.dbg.value(metadata i32 %mul10.i, metadata !92, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %mul10.i, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !337
  call void @llvm.dbg.value(metadata i32 8, metadata !87, metadata !DIExpression()), !dbg !337
  store i32 %mul10.i, ptr %target, align 4, !dbg !340, !tbaa !108
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !341
  store i32 %mul10.i, ptr %add.ptr49.i, align 4, !dbg !342, !tbaa !108
  ret void, !dbg !343
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_ref_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !346, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i32 %val, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 2, metadata !85, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 2, metadata !86, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 1, metadata !87, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !349
  %0 = trunc i32 %val to i16, !dbg !351
  %conv.i = mul i16 %0, 257, !dbg !351
  call void @llvm.dbg.value(metadata i16 %conv.i, metadata !91, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression(DW_OP_constu, 16843009, DW_OP_mul, DW_OP_stack_value)), !dbg !349
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_constu, 16843009, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !349
  call void @llvm.dbg.value(metadata i32 8, metadata !87, metadata !DIExpression()), !dbg !349
  store i16 %conv.i, ptr %target, align 2, !dbg !352, !tbaa !108
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !353
  store i16 %conv.i, ptr %add.ptr26.i, align 2, !dbg !354, !tbaa !108
  ret void, !dbg !355
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_macroblock_cache_ref_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #1 !dbg !356 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !358, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 %val, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata ptr %target, metadata !78, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 2, metadata !85, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 1, metadata !87, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 %val, metadata !88, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata ptr %target, metadata !89, metadata !DIExpression()), !dbg !361
  %0 = trunc i32 %val to i16, !dbg !363
  %conv.i = mul i16 %0, 257, !dbg !363
  call void @llvm.dbg.value(metadata i16 %conv.i, metadata !91, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 %val, metadata !92, metadata !DIExpression(DW_OP_constu, 16843009, DW_OP_mul, DW_OP_stack_value)), !dbg !361
  call void @llvm.dbg.value(metadata i32 %val, metadata !93, metadata !DIExpression(DW_OP_constu, 16843009, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)), !dbg !361
  call void @llvm.dbg.value(metadata i32 8, metadata !87, metadata !DIExpression()), !dbg !361
  store i16 %conv.i, ptr %target, align 2, !dbg !364, !tbaa !108
  ret void, !dbg !365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @x264_macroblock_cache_ref_1_2(ptr nocapture noundef %target, i32 noundef %val) #2 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !368, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 %val, metadata !369, metadata !DIExpression()), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @x264_macroblock_cache_ref_1_1(ptr nocapture noundef %target, i32 noundef %val) #2 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 %val, metadata !375, metadata !DIExpression()), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_cache_mv_func_table", scope: !2, file: !56, line: 51, type: !57, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/rectangle.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "154c58775c5a1df58d61fff843eb534a")
!4 = !{!5, !10, !26, !40}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 45, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !12, line: 88, baseType: !13)
!12 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 88, size: 16, elements: !14)
!14 = !{!15, !19}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !13, file: !12, line: 88, baseType: !16, size: 16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 25, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !8, line: 40, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !13, file: !12, line: 88, baseType: !20, size: 16)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16, elements: !24)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25}
!25 = !DISubrange(count: 2)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !12, line: 89, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 89, size: 32, elements: !29)
!29 = !{!30, !34, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !28, file: !12, line: 89, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !33)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !28, file: !12, line: 89, baseType: !35, size: 32)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !24)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !28, file: !12, line: 89, baseType: !37, size: 32)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !12, line: 90, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 90, size: 64, elements: !43)
!43 = !{!44, !45, !47, !49}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !42, file: !12, line: 90, baseType: !5, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !42, file: !12, line: 90, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !24)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !42, file: !12, line: 90, baseType: !48, size: 64)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !38)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !42, file: !12, line: 90, baseType: !50, size: 64)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 8)
!53 = !{!0, !54, !64}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "x264_cache_mvd_func_table", scope: !2, file: !56, line: 52, type: !57, isLocal: false, isDefinition: true)
!56 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/rectangle.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "154c58775c5a1df58d61fff843eb534a")
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !62)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !31}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "x264_cache_ref_func_table", scope: !2, file: !56, line: 53, type: !57, isLocal: false, isDefinition: true)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!73 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_4_4", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "target", arg: 1, scope: !73, file: !56, line: 51, type: !61)
!76 = !DILocalVariable(name: "val", arg: 2, scope: !73, file: !56, line: 51, type: !31)
!77 = !DILocation(line: 0, scope: !73)
!78 = !DILocalVariable(name: "dst", arg: 1, scope: !79, file: !80, line: 22, type: !61)
!79 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !80, file: !80, line: 22, type: !81, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!80 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/rectangle.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!81 = !DISubroutineType(types: !82)
!82 = !{null, !61, !83, !83, !83, !31}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!78, !85, !86, !87, !88, !89, !91, !92, !93}
!85 = !DILocalVariable(name: "w", arg: 2, scope: !79, file: !80, line: 22, type: !83)
!86 = !DILocalVariable(name: "h", arg: 3, scope: !79, file: !80, line: 22, type: !83)
!87 = !DILocalVariable(name: "s", arg: 4, scope: !79, file: !80, line: 22, type: !83)
!88 = !DILocalVariable(name: "v", arg: 5, scope: !79, file: !80, line: 22, type: !31)
!89 = !DILocalVariable(name: "d", scope: !79, file: !80, line: 24, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!91 = !DILocalVariable(name: "v2", scope: !79, file: !80, line: 25, type: !16)
!92 = !DILocalVariable(name: "v4", scope: !79, file: !80, line: 26, type: !31)
!93 = !DILocalVariable(name: "v8", scope: !79, file: !80, line: 27, type: !5)
!94 = !DILocation(line: 0, scope: !79, inlinedAt: !95)
!95 = distinct !DILocation(line: 51, column: 1, scope: !73)
!96 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !95)
!97 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !95)
!98 = !DILocation(line: 79, column: 13, scope: !99, inlinedAt: !95)
!99 = distinct !DILexicalBlock(scope: !100, file: !80, line: 78, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !80, line: 77, column: 13)
!101 = distinct !DILexicalBlock(scope: !102, file: !80, line: 74, column: 5)
!102 = distinct !DILexicalBlock(scope: !103, file: !80, line: 73, column: 14)
!103 = distinct !DILexicalBlock(scope: !104, file: !80, line: 48, column: 14)
!104 = distinct !DILexicalBlock(scope: !105, file: !80, line: 39, column: 14)
!105 = distinct !DILexicalBlock(scope: !79, file: !80, line: 30, column: 9)
!106 = !DILocation(line: 81, column: 32, scope: !107, inlinedAt: !95)
!107 = distinct !DILexicalBlock(scope: !99, file: !80, line: 80, column: 13)
!108 = !{!109, !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !DILocation(line: 82, column: 17, scope: !107, inlinedAt: !95)
!112 = !DILocation(line: 82, column: 32, scope: !107, inlinedAt: !95)
!113 = !DILocation(line: 83, column: 17, scope: !107, inlinedAt: !95)
!114 = !DILocation(line: 83, column: 32, scope: !107, inlinedAt: !95)
!115 = !DILocation(line: 84, column: 17, scope: !107, inlinedAt: !95)
!116 = !DILocation(line: 84, column: 32, scope: !107, inlinedAt: !95)
!117 = !DILocation(line: 85, column: 19, scope: !107, inlinedAt: !95)
!118 = !DILocation(line: 86, column: 19, scope: !107, inlinedAt: !95)
!119 = !DILocation(line: 87, column: 13, scope: !107, inlinedAt: !95)
!120 = distinct !{!120, !98, !121, !122, !123}
!121 = !DILocation(line: 87, column: 24, scope: !99, inlinedAt: !95)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !DILocation(line: 51, column: 1, scope: !73)
!125 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_2_4", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!126 = !{!127, !128}
!127 = !DILocalVariable(name: "target", arg: 1, scope: !125, file: !56, line: 51, type: !61)
!128 = !DILocalVariable(name: "val", arg: 2, scope: !125, file: !56, line: 51, type: !31)
!129 = !DILocation(line: 0, scope: !125)
!130 = !DILocation(line: 0, scope: !79, inlinedAt: !131)
!131 = distinct !DILocation(line: 51, column: 1, scope: !125)
!132 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !131)
!133 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !131)
!134 = !DILocation(line: 52, column: 26, scope: !135, inlinedAt: !131)
!135 = distinct !DILexicalBlock(scope: !136, file: !80, line: 51, column: 9)
!136 = distinct !DILexicalBlock(scope: !137, file: !80, line: 50, column: 13)
!137 = distinct !DILexicalBlock(scope: !103, file: !80, line: 49, column: 5)
!138 = !DILocation(line: 54, column: 13, scope: !135, inlinedAt: !131)
!139 = !DILocation(line: 54, column: 26, scope: !135, inlinedAt: !131)
!140 = !DILocation(line: 56, column: 13, scope: !135, inlinedAt: !131)
!141 = !DILocation(line: 56, column: 26, scope: !135, inlinedAt: !131)
!142 = !DILocation(line: 57, column: 13, scope: !135, inlinedAt: !131)
!143 = !DILocation(line: 57, column: 26, scope: !135, inlinedAt: !131)
!144 = !DILocation(line: 51, column: 1, scope: !125)
!145 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_4_2", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "target", arg: 1, scope: !145, file: !56, line: 51, type: !61)
!148 = !DILocalVariable(name: "val", arg: 2, scope: !145, file: !56, line: 51, type: !31)
!149 = !DILocation(line: 0, scope: !145)
!150 = !DILocation(line: 0, scope: !79, inlinedAt: !151)
!151 = distinct !DILocation(line: 51, column: 1, scope: !145)
!152 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !151)
!153 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !151)
!154 = !DILocation(line: 81, column: 32, scope: !107, inlinedAt: !151)
!155 = !DILocation(line: 82, column: 17, scope: !107, inlinedAt: !151)
!156 = !DILocation(line: 82, column: 32, scope: !107, inlinedAt: !151)
!157 = !DILocation(line: 83, column: 17, scope: !107, inlinedAt: !151)
!158 = !DILocation(line: 83, column: 32, scope: !107, inlinedAt: !151)
!159 = !DILocation(line: 84, column: 17, scope: !107, inlinedAt: !151)
!160 = !DILocation(line: 84, column: 32, scope: !107, inlinedAt: !151)
!161 = !DILocation(line: 51, column: 1, scope: !145)
!162 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_2_2", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "target", arg: 1, scope: !162, file: !56, line: 51, type: !61)
!165 = !DILocalVariable(name: "val", arg: 2, scope: !162, file: !56, line: 51, type: !31)
!166 = !DILocation(line: 0, scope: !162)
!167 = !DILocation(line: 0, scope: !79, inlinedAt: !168)
!168 = distinct !DILocation(line: 51, column: 1, scope: !162)
!169 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !168)
!170 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !168)
!171 = !DILocation(line: 52, column: 26, scope: !135, inlinedAt: !168)
!172 = !DILocation(line: 54, column: 13, scope: !135, inlinedAt: !168)
!173 = !DILocation(line: 54, column: 26, scope: !135, inlinedAt: !168)
!174 = !DILocation(line: 51, column: 1, scope: !162)
!175 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_2_1", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "target", arg: 1, scope: !175, file: !56, line: 51, type: !61)
!178 = !DILocalVariable(name: "val", arg: 2, scope: !175, file: !56, line: 51, type: !31)
!179 = !DILocation(line: 0, scope: !175)
!180 = !DILocation(line: 0, scope: !79, inlinedAt: !181)
!181 = distinct !DILocation(line: 51, column: 1, scope: !175)
!182 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !181)
!183 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !181)
!184 = !DILocation(line: 52, column: 26, scope: !135, inlinedAt: !181)
!185 = !DILocation(line: 51, column: 1, scope: !175)
!186 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_1_2", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!187 = !{!188, !189}
!188 = !DILocalVariable(name: "target", arg: 1, scope: !186, file: !56, line: 51, type: !61)
!189 = !DILocalVariable(name: "val", arg: 2, scope: !186, file: !56, line: 51, type: !31)
!190 = !DILocation(line: 0, scope: !186)
!191 = !DILocation(line: 0, scope: !79, inlinedAt: !192)
!192 = distinct !DILocation(line: 51, column: 1, scope: !186)
!193 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !192)
!194 = distinct !DILexicalBlock(scope: !104, file: !80, line: 40, column: 5)
!195 = !DILocation(line: 43, column: 9, scope: !194, inlinedAt: !192)
!196 = !DILocation(line: 43, column: 22, scope: !194, inlinedAt: !192)
!197 = !DILocation(line: 51, column: 1, scope: !186)
!198 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_1_1", scope: !56, file: !56, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!199 = !{!200, !201}
!200 = !DILocalVariable(name: "target", arg: 1, scope: !198, file: !56, line: 51, type: !61)
!201 = !DILocalVariable(name: "val", arg: 2, scope: !198, file: !56, line: 51, type: !31)
!202 = !DILocation(line: 0, scope: !198)
!203 = !DILocation(line: 0, scope: !79, inlinedAt: !204)
!204 = distinct !DILocation(line: 51, column: 1, scope: !198)
!205 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !204)
!206 = !DILocation(line: 51, column: 1, scope: !198)
!207 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_4_4", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "target", arg: 1, scope: !207, file: !56, line: 52, type: !61)
!210 = !DILocalVariable(name: "val", arg: 2, scope: !207, file: !56, line: 52, type: !31)
!211 = !DILocation(line: 0, scope: !207)
!212 = !DILocation(line: 0, scope: !79, inlinedAt: !213)
!213 = distinct !DILocation(line: 52, column: 1, scope: !207)
!214 = !DILocation(line: 26, column: 43, scope: !79, inlinedAt: !213)
!215 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !213)
!216 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !213)
!217 = !DILocation(line: 52, column: 26, scope: !135, inlinedAt: !213)
!218 = !DILocation(line: 54, column: 13, scope: !135, inlinedAt: !213)
!219 = !DILocation(line: 54, column: 26, scope: !135, inlinedAt: !213)
!220 = !DILocation(line: 56, column: 13, scope: !135, inlinedAt: !213)
!221 = !DILocation(line: 56, column: 26, scope: !135, inlinedAt: !213)
!222 = !DILocation(line: 57, column: 13, scope: !135, inlinedAt: !213)
!223 = !DILocation(line: 57, column: 26, scope: !135, inlinedAt: !213)
!224 = !DILocation(line: 52, column: 1, scope: !207)
!225 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_2_4", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "target", arg: 1, scope: !225, file: !56, line: 52, type: !61)
!228 = !DILocalVariable(name: "val", arg: 2, scope: !225, file: !56, line: 52, type: !31)
!229 = !DILocation(line: 0, scope: !225)
!230 = !DILocation(line: 0, scope: !79, inlinedAt: !231)
!231 = distinct !DILocation(line: 52, column: 1, scope: !225)
!232 = !DILocation(line: 26, column: 43, scope: !79, inlinedAt: !231)
!233 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !231)
!234 = !DILocation(line: 43, column: 9, scope: !194, inlinedAt: !231)
!235 = !DILocation(line: 43, column: 22, scope: !194, inlinedAt: !231)
!236 = !DILocation(line: 45, column: 9, scope: !194, inlinedAt: !231)
!237 = !DILocation(line: 45, column: 22, scope: !194, inlinedAt: !231)
!238 = !DILocation(line: 46, column: 9, scope: !194, inlinedAt: !231)
!239 = !DILocation(line: 46, column: 22, scope: !194, inlinedAt: !231)
!240 = !DILocation(line: 52, column: 1, scope: !225)
!241 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_4_2", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "target", arg: 1, scope: !241, file: !56, line: 52, type: !61)
!244 = !DILocalVariable(name: "val", arg: 2, scope: !241, file: !56, line: 52, type: !31)
!245 = !DILocation(line: 0, scope: !241)
!246 = !DILocation(line: 0, scope: !79, inlinedAt: !247)
!247 = distinct !DILocation(line: 52, column: 1, scope: !241)
!248 = !DILocation(line: 26, column: 43, scope: !79, inlinedAt: !247)
!249 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !247)
!250 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !247)
!251 = !DILocation(line: 52, column: 26, scope: !135, inlinedAt: !247)
!252 = !DILocation(line: 54, column: 13, scope: !135, inlinedAt: !247)
!253 = !DILocation(line: 54, column: 26, scope: !135, inlinedAt: !247)
!254 = !DILocation(line: 52, column: 1, scope: !241)
!255 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_2_2", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "target", arg: 1, scope: !255, file: !56, line: 52, type: !61)
!258 = !DILocalVariable(name: "val", arg: 2, scope: !255, file: !56, line: 52, type: !31)
!259 = !DILocation(line: 0, scope: !255)
!260 = !DILocation(line: 0, scope: !79, inlinedAt: !261)
!261 = distinct !DILocation(line: 52, column: 1, scope: !255)
!262 = !DILocation(line: 26, column: 43, scope: !79, inlinedAt: !261)
!263 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !261)
!264 = !DILocation(line: 43, column: 9, scope: !194, inlinedAt: !261)
!265 = !DILocation(line: 43, column: 22, scope: !194, inlinedAt: !261)
!266 = !DILocation(line: 52, column: 1, scope: !255)
!267 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_2_1", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "target", arg: 1, scope: !267, file: !56, line: 52, type: !61)
!270 = !DILocalVariable(name: "val", arg: 2, scope: !267, file: !56, line: 52, type: !31)
!271 = !DILocation(line: 0, scope: !267)
!272 = !DILocation(line: 0, scope: !79, inlinedAt: !273)
!273 = distinct !DILocation(line: 52, column: 1, scope: !267)
!274 = !DILocation(line: 26, column: 43, scope: !79, inlinedAt: !273)
!275 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !273)
!276 = !DILocation(line: 52, column: 1, scope: !267)
!277 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_1_2", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "target", arg: 1, scope: !277, file: !56, line: 52, type: !61)
!280 = !DILocalVariable(name: "val", arg: 2, scope: !277, file: !56, line: 52, type: !31)
!281 = !DILocation(line: 0, scope: !277)
!282 = !DILocation(line: 0, scope: !79, inlinedAt: !283)
!283 = distinct !DILocation(line: 52, column: 1, scope: !277)
!284 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !283)
!285 = !DILocation(line: 32, column: 22, scope: !286, inlinedAt: !283)
!286 = distinct !DILexicalBlock(scope: !105, file: !80, line: 31, column: 5)
!287 = !DILocation(line: 34, column: 9, scope: !286, inlinedAt: !283)
!288 = !DILocation(line: 34, column: 22, scope: !286, inlinedAt: !283)
!289 = !DILocation(line: 52, column: 1, scope: !277)
!290 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_1_1", scope: !56, file: !56, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "target", arg: 1, scope: !290, file: !56, line: 52, type: !61)
!293 = !DILocalVariable(name: "val", arg: 2, scope: !290, file: !56, line: 52, type: !31)
!294 = !DILocation(line: 0, scope: !290)
!295 = !DILocation(line: 0, scope: !79, inlinedAt: !296)
!296 = distinct !DILocation(line: 52, column: 1, scope: !290)
!297 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !296)
!298 = !DILocation(line: 32, column: 22, scope: !286, inlinedAt: !296)
!299 = !DILocation(line: 52, column: 1, scope: !290)
!300 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_4_4", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!301 = !{!302, !303}
!302 = !DILocalVariable(name: "target", arg: 1, scope: !300, file: !56, line: 53, type: !61)
!303 = !DILocalVariable(name: "val", arg: 2, scope: !300, file: !56, line: 53, type: !31)
!304 = !DILocation(line: 0, scope: !300)
!305 = !DILocation(line: 0, scope: !79, inlinedAt: !306)
!306 = distinct !DILocation(line: 53, column: 1, scope: !300)
!307 = !DILocation(line: 26, column: 57, scope: !79, inlinedAt: !306)
!308 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !306)
!309 = !DILocation(line: 43, column: 9, scope: !194, inlinedAt: !306)
!310 = !DILocation(line: 43, column: 22, scope: !194, inlinedAt: !306)
!311 = !DILocation(line: 45, column: 9, scope: !194, inlinedAt: !306)
!312 = !DILocation(line: 45, column: 22, scope: !194, inlinedAt: !306)
!313 = !DILocation(line: 46, column: 9, scope: !194, inlinedAt: !306)
!314 = !DILocation(line: 46, column: 22, scope: !194, inlinedAt: !306)
!315 = !DILocation(line: 53, column: 1, scope: !300)
!316 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_2_4", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !317)
!317 = !{!318, !319}
!318 = !DILocalVariable(name: "target", arg: 1, scope: !316, file: !56, line: 53, type: !61)
!319 = !DILocalVariable(name: "val", arg: 2, scope: !316, file: !56, line: 53, type: !31)
!320 = !DILocation(line: 0, scope: !316)
!321 = !DILocation(line: 0, scope: !79, inlinedAt: !322)
!322 = distinct !DILocation(line: 53, column: 1, scope: !316)
!323 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !322)
!324 = !DILocation(line: 32, column: 22, scope: !286, inlinedAt: !322)
!325 = !DILocation(line: 34, column: 9, scope: !286, inlinedAt: !322)
!326 = !DILocation(line: 34, column: 22, scope: !286, inlinedAt: !322)
!327 = !DILocation(line: 36, column: 9, scope: !286, inlinedAt: !322)
!328 = !DILocation(line: 36, column: 22, scope: !286, inlinedAt: !322)
!329 = !DILocation(line: 37, column: 9, scope: !286, inlinedAt: !322)
!330 = !DILocation(line: 37, column: 22, scope: !286, inlinedAt: !322)
!331 = !DILocation(line: 53, column: 1, scope: !316)
!332 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_4_2", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334, !335}
!334 = !DILocalVariable(name: "target", arg: 1, scope: !332, file: !56, line: 53, type: !61)
!335 = !DILocalVariable(name: "val", arg: 2, scope: !332, file: !56, line: 53, type: !31)
!336 = !DILocation(line: 0, scope: !332)
!337 = !DILocation(line: 0, scope: !79, inlinedAt: !338)
!338 = distinct !DILocation(line: 53, column: 1, scope: !332)
!339 = !DILocation(line: 26, column: 57, scope: !79, inlinedAt: !338)
!340 = !DILocation(line: 41, column: 22, scope: !194, inlinedAt: !338)
!341 = !DILocation(line: 43, column: 9, scope: !194, inlinedAt: !338)
!342 = !DILocation(line: 43, column: 22, scope: !194, inlinedAt: !338)
!343 = !DILocation(line: 53, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_2_2", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!345 = !{!346, !347}
!346 = !DILocalVariable(name: "target", arg: 1, scope: !344, file: !56, line: 53, type: !61)
!347 = !DILocalVariable(name: "val", arg: 2, scope: !344, file: !56, line: 53, type: !31)
!348 = !DILocation(line: 0, scope: !344)
!349 = !DILocation(line: 0, scope: !79, inlinedAt: !350)
!350 = distinct !DILocation(line: 53, column: 1, scope: !344)
!351 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !350)
!352 = !DILocation(line: 32, column: 22, scope: !286, inlinedAt: !350)
!353 = !DILocation(line: 34, column: 9, scope: !286, inlinedAt: !350)
!354 = !DILocation(line: 34, column: 22, scope: !286, inlinedAt: !350)
!355 = !DILocation(line: 53, column: 1, scope: !344)
!356 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_2_1", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "target", arg: 1, scope: !356, file: !56, line: 53, type: !61)
!359 = !DILocalVariable(name: "val", arg: 2, scope: !356, file: !56, line: 53, type: !31)
!360 = !DILocation(line: 0, scope: !356)
!361 = !DILocation(line: 0, scope: !79, inlinedAt: !362)
!362 = distinct !DILocation(line: 53, column: 1, scope: !356)
!363 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !362)
!364 = !DILocation(line: 32, column: 22, scope: !286, inlinedAt: !362)
!365 = !DILocation(line: 53, column: 1, scope: !356)
!366 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_1_2", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "target", arg: 1, scope: !366, file: !56, line: 53, type: !61)
!369 = !DILocalVariable(name: "val", arg: 2, scope: !366, file: !56, line: 53, type: !31)
!370 = !DILocation(line: 0, scope: !366)
!371 = !DILocation(line: 53, column: 1, scope: !366)
!372 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_1_1", scope: !56, file: !56, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!373 = !{!374, !375}
!374 = !DILocalVariable(name: "target", arg: 1, scope: !372, file: !56, line: 53, type: !61)
!375 = !DILocalVariable(name: "val", arg: 2, scope: !372, file: !56, line: 53, type: !31)
!376 = !DILocation(line: 0, scope: !372)
!377 = !DILocation(line: 53, column: 1, scope: !372)
