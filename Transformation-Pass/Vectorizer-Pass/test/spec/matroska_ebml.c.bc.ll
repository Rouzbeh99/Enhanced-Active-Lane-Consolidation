; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/output/matroska_ebml.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/matroska_ebml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mk_writer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.mk_context = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Haali Matroska Writer b0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @mk_create_writer(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !121, metadata !DIExpression()), !dbg !123
  %calloc = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104), !dbg !124
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !122, metadata !DIExpression()), !dbg !123
  %tobool.not = icmp eq ptr %calloc, null, !dbg !125
  br i1 %tobool.not, label %cleanup, label %if.else.i, !dbg !127

if.else.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !128, metadata !DIExpression()) #12, !dbg !136
  call void @llvm.dbg.value(metadata ptr null, metadata !133, metadata !DIExpression()) #12, !dbg !136
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()) #12, !dbg !136
  %freelist.i = getelementptr inbounds %struct.mk_writer, ptr %calloc, i64 0, i32 5, !dbg !138
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) #12, !dbg !140
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !135, metadata !DIExpression()) #12, !dbg !136
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !142
  br i1 %tobool4.not.i, label %if.then4, label %if.end5, !dbg !144

if.then4:                                         ; preds = %if.else.i
  tail call void @free(ptr noundef nonnull %calloc) #12, !dbg !145
  br label %cleanup, !dbg !148

if.end5:                                          ; preds = %if.else.i
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !135, metadata !DIExpression()) #12, !dbg !136
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %calloc.i, i64 0, i32 3, !dbg !149
  store ptr %calloc, ptr %owner.i, align 8, !dbg !150, !tbaa !151
  %actlist.i = getelementptr inbounds %struct.mk_writer, ptr %calloc, i64 0, i32 6, !dbg !157
  %prev21.i = getelementptr inbounds %struct.mk_context, ptr %calloc.i, i64 0, i32 1, !dbg !159
  store ptr %actlist.i, ptr %prev21.i, align 8, !dbg !160, !tbaa !161
  store ptr %calloc.i, ptr %actlist.i, align 8, !dbg !162, !tbaa !163
  %root = getelementptr inbounds %struct.mk_writer, ptr %calloc, i64 0, i32 2, !dbg !166
  store ptr %calloc.i, ptr %root, align 8, !dbg !167, !tbaa !168
  %call6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %filename, ptr noundef nonnull dereferenceable(2) @.str) #13, !dbg !169
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !169
  br i1 %tobool7.not, label %if.then8, label %if.else, !dbg !171

if.then8:                                         ; preds = %if.end5
  %0 = load ptr, ptr @stdout, align 8, !dbg !172, !tbaa !173
  br label %if.end11, !dbg !174

if.else:                                          ; preds = %if.end5
  %call9 = tail call ptr @fopen64(ptr noundef %filename, ptr noundef nonnull @.str.1), !dbg !175
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %storemerge = phi ptr [ %0, %if.then8 ], [ %call9, %if.else ], !dbg !176
  store ptr %storemerge, ptr %calloc, align 8, !dbg !176, !tbaa !177
  %tobool13.not = icmp eq ptr %storemerge, null, !dbg !178
  br i1 %tobool13.not, label %if.then14, label %if.end15, !dbg !180

if.then14:                                        ; preds = %if.end11
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !181, metadata !DIExpression()) #12, !dbg !191
  %1 = load ptr, ptr %freelist.i, align 8, !dbg !194, !tbaa !195
  call void @llvm.dbg.value(metadata ptr %1, metadata !187, metadata !DIExpression()) #12, !dbg !196
  %tobool.not24.i = icmp eq ptr %1, null, !dbg !197
  br i1 %tobool.not24.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !197

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then14
  %2 = load ptr, ptr %actlist.i, align 8, !dbg !198, !tbaa !163
  call void @llvm.dbg.value(metadata ptr %2, metadata !189, metadata !DIExpression()) #12, !dbg !199
  %tobool4.not26.i = icmp eq ptr %2, null, !dbg !200
  br i1 %tobool4.not26.i, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !200

for.body.i:                                       ; preds = %if.then14, %for.body.i
  %cur.025.i = phi ptr [ %3, %for.body.i ], [ %1, %if.then14 ]
  call void @llvm.dbg.value(metadata ptr %cur.025.i, metadata !187, metadata !DIExpression()) #12, !dbg !196
  %3 = load ptr, ptr %cur.025.i, align 8, !dbg !201, !tbaa !204
  call void @llvm.dbg.value(metadata ptr %3, metadata !186, metadata !DIExpression()) #12, !dbg !191
  %data.i = getelementptr inbounds %struct.mk_context, ptr %cur.025.i, i64 0, i32 5, !dbg !205
  %4 = load ptr, ptr %data.i, align 8, !dbg !205, !tbaa !206
  tail call void @free(ptr noundef %4) #12, !dbg !207
  tail call void @free(ptr noundef nonnull %cur.025.i) #12, !dbg !208
  call void @llvm.dbg.value(metadata ptr %3, metadata !187, metadata !DIExpression()) #12, !dbg !196
  %tobool.not.i31 = icmp eq ptr %3, null, !dbg !197
  br i1 %tobool.not.i31, label %for.cond.cleanup.i, label %for.body.i, !dbg !197, !llvm.loop !209

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.027.i = phi ptr [ %5, %for.body6.i ], [ %2, %for.cond.cleanup.i ]
  call void @llvm.dbg.value(metadata ptr %cur2.027.i, metadata !189, metadata !DIExpression()) #12, !dbg !199
  %5 = load ptr, ptr %cur2.027.i, align 8, !dbg !213, !tbaa !204
  call void @llvm.dbg.value(metadata ptr %5, metadata !186, metadata !DIExpression()) #12, !dbg !191
  %data8.i = getelementptr inbounds %struct.mk_context, ptr %cur2.027.i, i64 0, i32 5, !dbg !216
  %6 = load ptr, ptr %data8.i, align 8, !dbg !216, !tbaa !206
  tail call void @free(ptr noundef %6) #12, !dbg !217
  tail call void @free(ptr noundef nonnull %cur2.027.i) #12, !dbg !218
  call void @llvm.dbg.value(metadata ptr %5, metadata !189, metadata !DIExpression()) #12, !dbg !199
  %tobool4.not.i32 = icmp eq ptr %5, null, !dbg !200
  br i1 %tobool4.not.i32, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !200, !llvm.loop !219

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  tail call void @free(ptr noundef %calloc) #12, !dbg !221
  br label %cleanup, !dbg !222

if.end15:                                         ; preds = %if.end11
  %timescale = getelementptr inbounds %struct.mk_writer, ptr %calloc, i64 0, i32 8, !dbg !223
  store i64 1000000, ptr %timescale, align 8, !dbg !224, !tbaa !225
  br label %cleanup, !dbg !226

cleanup:                                          ; preds = %entry, %if.end15, %mk_destroy_contexts.exit, %if.then4
  %retval.0 = phi ptr [ %calloc, %if.end15 ], [ null, %mk_destroy_contexts.exit ], [ null, %if.then4 ], [ null, %entry ], !dbg !123
  ret ptr %retval.0, !dbg !227
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc ptr @mk_create_context(ptr noundef %w, ptr noundef %parent, i32 noundef %id) unnamed_addr #4 !dbg !129 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !128, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata ptr %parent, metadata !133, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %id, metadata !134, metadata !DIExpression()), !dbg !228
  %freelist = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 5, !dbg !229
  %0 = load ptr, ptr %freelist, align 8, !dbg !229, !tbaa !195
  %tobool.not = icmp eq ptr %0, null, !dbg !230
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !231

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !135, metadata !DIExpression()), !dbg !228
  %1 = load ptr, ptr %0, align 8, !dbg !232, !tbaa !204
  store ptr %1, ptr %freelist, align 8, !dbg !234, !tbaa !195
  br label %if.end6, !dbg !235

if.else:                                          ; preds = %entry
  %calloc = call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56), !dbg !236
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !135, metadata !DIExpression()), !dbg !228
  %tobool4.not = icmp eq ptr %calloc, null, !dbg !237
  br i1 %tobool4.not, label %cleanup, label %if.end6, !dbg !238

if.end6:                                          ; preds = %if.else, %if.then
  %c.0 = phi ptr [ %0, %if.then ], [ %calloc, %if.else ], !dbg !239
  call void @llvm.dbg.value(metadata ptr %c.0, metadata !135, metadata !DIExpression()), !dbg !228
  %parent7 = getelementptr inbounds %struct.mk_context, ptr %c.0, i64 0, i32 2, !dbg !240
  store ptr %parent, ptr %parent7, align 8, !dbg !241, !tbaa !242
  %owner = getelementptr inbounds %struct.mk_context, ptr %c.0, i64 0, i32 3, !dbg !243
  store ptr %w, ptr %owner, align 8, !dbg !244, !tbaa !151
  %id8 = getelementptr inbounds %struct.mk_context, ptr %c.0, i64 0, i32 4, !dbg !245
  store i32 %id, ptr %id8, align 8, !dbg !246, !tbaa !247
  %actlist = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 6, !dbg !248
  %2 = load ptr, ptr %actlist, align 8, !dbg !248, !tbaa !163
  %tobool10.not = icmp eq ptr %2, null, !dbg !249
  br i1 %tobool10.not, label %if.end15, label %if.then11, !dbg !250

if.then11:                                        ; preds = %if.end6
  %prev = getelementptr inbounds %struct.mk_context, ptr %2, i64 0, i32 1, !dbg !251
  store ptr %c.0, ptr %prev, align 8, !dbg !252, !tbaa !161
  br label %if.end15, !dbg !253

if.end15:                                         ; preds = %if.then11, %if.end6
  store ptr %2, ptr %c.0, align 8, !dbg !254, !tbaa !204
  %prev21 = getelementptr inbounds %struct.mk_context, ptr %c.0, i64 0, i32 1, !dbg !255
  store ptr %actlist, ptr %prev21, align 8, !dbg !256, !tbaa !161
  store ptr %c.0, ptr %actlist, align 8, !dbg !257, !tbaa !163
  br label %cleanup, !dbg !258

cleanup:                                          ; preds = %if.else, %if.end15
  %retval.0 = phi ptr [ %c.0, %if.end15 ], [ null, %if.else ], !dbg !228
  ret ptr %retval.0, !dbg !259
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mk_writeHeader(ptr noundef %w, ptr nocapture noundef readonly %writing_app, ptr nocapture noundef readonly %codec_id, ptr nocapture noundef readonly %codec_private, i32 noundef %codec_private_size, i64 noundef %default_frame_duration, i64 noundef %timescale, i32 noundef %width, i32 noundef %height, i32 noundef %d_width, i32 noundef %d_height) local_unnamed_addr #0 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !266, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata ptr %writing_app, metadata !267, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata ptr %codec_id, metadata !268, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata ptr %codec_private, metadata !269, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %codec_private_size, metadata !270, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %default_frame_duration, metadata !271, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %timescale, metadata !272, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %width, metadata !273, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %height, metadata !274, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %d_width, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %d_height, metadata !276, metadata !DIExpression()), !dbg !280
  %wrote_header = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 12, !dbg !281
  %0 = load i8, ptr %wrote_header, align 8, !dbg !281, !tbaa !283
  %tobool.not = icmp eq i8 %0, 0, !dbg !284
  br i1 %tobool.not, label %if.end, label %cleanup, !dbg !285

if.end:                                           ; preds = %entry
  %timescale1 = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 8, !dbg !286
  store i64 %timescale, ptr %timescale1, align 8, !dbg !287, !tbaa !225
  %def_duration = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 7, !dbg !288
  store i64 %default_frame_duration, ptr %def_duration, align 8, !dbg !289, !tbaa !290
  %root = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 2, !dbg !291
  %1 = load ptr, ptr %root, align 8, !dbg !291, !tbaa !168
  call void @llvm.dbg.value(metadata ptr %w, metadata !128, metadata !DIExpression()) #12, !dbg !293
  call void @llvm.dbg.value(metadata ptr %1, metadata !133, metadata !DIExpression()) #12, !dbg !293
  call void @llvm.dbg.value(metadata i32 440786851, metadata !134, metadata !DIExpression()) #12, !dbg !293
  %freelist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 5, !dbg !295
  %2 = load ptr, ptr %freelist.i, align 8, !dbg !295, !tbaa !195
  %tobool.not.i = icmp eq ptr %2, null, !dbg !296
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !297

if.then.i:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %2, metadata !135, metadata !DIExpression()) #12, !dbg !293
  %3 = load ptr, ptr %2, align 8, !dbg !298, !tbaa !204
  store ptr %3, ptr %freelist.i, align 8, !dbg !299, !tbaa !195
  br label %if.end6.i, !dbg !300

if.else.i:                                        ; preds = %if.end
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) #12, !dbg !301
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !135, metadata !DIExpression()) #12, !dbg !293
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !302
  br i1 %tobool4.not.i, label %cleanup, label %if.end6.i, !dbg !303

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %2, %if.then.i ], [ %calloc.i, %if.else.i ], !dbg !304
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !135, metadata !DIExpression()) #12, !dbg !293
  %parent7.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 2, !dbg !305
  store ptr %1, ptr %parent7.i, align 8, !dbg !306, !tbaa !242
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 3, !dbg !307
  store ptr %w, ptr %owner.i, align 8, !dbg !308, !tbaa !151
  %id8.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 4, !dbg !309
  store i32 440786851, ptr %id8.i, align 8, !dbg !310, !tbaa !247
  %actlist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 6, !dbg !311
  %4 = load ptr, ptr %actlist.i, align 8, !dbg !311, !tbaa !163
  %tobool10.not.i = icmp eq ptr %4, null, !dbg !312
  br i1 %tobool10.not.i, label %do.body, label %if.then11.i, !dbg !313

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 1, !dbg !314
  store ptr %c.0.i, ptr %prev.i, align 8, !dbg !315, !tbaa !161
  br label %do.body, !dbg !316

do.body:                                          ; preds = %if.then11.i, %if.end6.i
  store ptr %4, ptr %c.0.i, align 8, !dbg !317, !tbaa !204
  %prev21.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 1, !dbg !318
  store ptr %actlist.i, ptr %prev21.i, align 8, !dbg !319, !tbaa !161
  store ptr %c.0.i, ptr %actlist.i, align 8, !dbg !320, !tbaa !163
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !277, metadata !DIExpression()), !dbg !280
  %call5 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17030, i64 noundef 1), !dbg !321
  %cmp = icmp slt i32 %call5, 0, !dbg !321
  br i1 %cmp, label %cleanup, label %do.body8, !dbg !324

do.body8:                                         ; preds = %do.body
  %call9 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17143, i64 noundef 1), !dbg !325
  %cmp10 = icmp slt i32 %call9, 0, !dbg !325
  br i1 %cmp10, label %cleanup, label %do.body15, !dbg !328

do.body15:                                        ; preds = %do.body8
  %call16 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17138, i64 noundef 4), !dbg !329
  %cmp17 = icmp slt i32 %call16, 0, !dbg !329
  br i1 %cmp17, label %cleanup, label %do.body22, !dbg !332

do.body22:                                        ; preds = %do.body15
  %call23 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17139, i64 noundef 8), !dbg !333
  %cmp24 = icmp slt i32 %call23, 0, !dbg !333
  br i1 %cmp24, label %cleanup, label %do.body29, !dbg !336

do.body29:                                        ; preds = %do.body22
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !337, metadata !DIExpression()) #12, !dbg !345
  call void @llvm.dbg.value(metadata i32 17026, metadata !342, metadata !DIExpression()) #12, !dbg !345
  call void @llvm.dbg.value(metadata i64 8, metadata !344, metadata !DIExpression()) #12, !dbg !345
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !349, metadata !DIExpression()) #12, !dbg !360
  call void @llvm.dbg.value(metadata i32 17026, metadata !354, metadata !DIExpression()) #12, !dbg !360
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !360
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !360
  call void @llvm.dbg.value(metadata i8 66, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !360
  call void @llvm.dbg.value(metadata i8 -126, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !360
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !364, metadata !DIExpression()) #12, !dbg !376
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !364, metadata !DIExpression()) #12, !dbg !378
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !376
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !378
  %d_cur.i84.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 6, !dbg !360
  %5 = load i32, ptr %d_cur.i84.i, align 8, !dbg !360, !tbaa !381
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()) #12, !dbg !378
  %add.i58.i = add i32 %5, 2, !dbg !382
  call void @llvm.dbg.value(metadata i32 %add.i58.i, metadata !371, metadata !DIExpression()) #12, !dbg !378
  %d_max.i59.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 7, !dbg !383
  %6 = load i32, ptr %d_max.i59.i, align 4, !dbg !383, !tbaa !384
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %6, !dbg !385
  br i1 %cmp.i60.i, label %if.then.i67.i, label %entry.if.end11_crit_edge.i63.i, !dbg !386

entry.if.end11_crit_edge.i63.i:                   ; preds = %do.body29
  %data12.phi.trans.insert.i61.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 5
  %.pre.i62.i = load ptr, ptr %data12.phi.trans.insert.i61.i, align 8, !dbg !387, !tbaa !206
  br label %do.body2.i, !dbg !386

if.then.i67.i:                                    ; preds = %do.body29
  %tobool.not.i64.i = icmp eq i32 %6, 0, !dbg !388
  %shl.i65.i = shl i32 %6, 1
  %spec.select.i66.i = select i1 %tobool.not.i64.i, i32 16, i32 %shl.i65.i, !dbg !388
  call void @llvm.dbg.value(metadata i32 %spec.select.i66.i, metadata !375, metadata !DIExpression()) #12, !dbg !389
  br label %while.cond.i71.i, !dbg !390

while.cond.i71.i:                                 ; preds = %while.cond.i71.i, %if.then.i67.i
  %dn.0.i68.i = phi i32 [ %spec.select.i66.i, %if.then.i67.i ], [ %shl4.i70.i, %while.cond.i71.i ], !dbg !389
  call void @llvm.dbg.value(metadata i32 %dn.0.i68.i, metadata !375, metadata !DIExpression()) #12, !dbg !389
  %cmp3.i69.i = icmp ugt i32 %add.i58.i, %dn.0.i68.i, !dbg !391
  %shl4.i70.i = shl i32 %dn.0.i68.i, 1, !dbg !392
  call void @llvm.dbg.value(metadata i32 %shl4.i70.i, metadata !375, metadata !DIExpression()) #12, !dbg !389
  br i1 %cmp3.i69.i, label %while.cond.i71.i, label %while.end.i76.i, !dbg !390, !llvm.loop !393

while.end.i76.i:                                  ; preds = %while.cond.i71.i
  %data5.i72.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 5, !dbg !395
  %7 = load ptr, ptr %data5.i72.i, align 8, !dbg !395, !tbaa !206
  %conv.i73.i = zext i32 %dn.0.i68.i to i64, !dbg !396
  %call.i74.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i73.i) #14, !dbg !397
  call void @llvm.dbg.value(metadata ptr %call.i74.i, metadata !372, metadata !DIExpression()) #12, !dbg !389
  %tobool6.not.i75.i = icmp eq ptr %call.i74.i, null, !dbg !398
  br i1 %tobool6.not.i75.i, label %cleanup, label %if.end.i78.i, !dbg !400

if.end.i78.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i74.i, ptr %data5.i72.i, align 8, !dbg !401, !tbaa !206
  store i32 %dn.0.i68.i, ptr %d_max.i59.i, align 4, !dbg !402, !tbaa !384
  %.pre34.i77.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !403, !tbaa !381
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.end.i78.i, %entry.if.end11_crit_edge.i63.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i63.i ], [ %.pre34.i77.i, %if.end.i78.i ], !dbg !403
  %9 = phi ptr [ %.pre.i62.i, %entry.if.end11_crit_edge.i63.i ], [ %call.i74.i, %if.end.i78.i ], !dbg !387
  %idx.ext.i79.i = zext i32 %8 to i64, !dbg !404
  %add.ptr.i80.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i79.i, !dbg !404
  store i8 66, ptr %add.ptr.i80.i, align 1, !dbg !405
  %c_id.sroa.11.2.add.ptr.i80.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i80.i, i64 1, !dbg !405
  store i8 -126, ptr %c_id.sroa.11.2.add.ptr.i80.sroa_idx.i, align 1, !dbg !405
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8, !dbg !406, !tbaa !381
  %call3.i = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c.0.i, i32 noundef 8) #12, !dbg !407
  %cmp4.i = icmp slt i32 %call3.i, 0, !dbg !407
  br i1 %cmp4.i, label %cleanup, label %do.body10.i, !dbg !410

do.body10.i:                                      ; preds = %do.body2.i
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !364, metadata !DIExpression()) #12, !dbg !411
  call void @llvm.dbg.value(metadata i32 8, metadata !370, metadata !DIExpression()) #12, !dbg !411
  %10 = load i32, ptr %d_cur.i84.i, align 8, !dbg !415, !tbaa !381
  %add.i.i = add i32 %10, 8, !dbg !416
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !371, metadata !DIExpression()) #12, !dbg !411
  %11 = load i32, ptr %d_max.i59.i, align 4, !dbg !417, !tbaa !384
  %cmp.i.i = icmp ugt i32 %add.i.i, %11, !dbg !418
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !419

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body10.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !420, !tbaa !206
  br label %do.body36, !dbg !419

if.then.i.i:                                      ; preds = %do.body10.i
  %tobool.not.i.i = icmp eq i32 %11, 0, !dbg !421
  %shl.i.i = shl i32 %11, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !421
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !422
  br label %while.cond.i.i, !dbg !423

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !422
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !422
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !424
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !425
  call void @llvm.dbg.value(metadata i32 %shl4.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !422
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !423, !llvm.loop !426

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 5, !dbg !428
  %12 = load ptr, ptr %data5.i.i, align 8, !dbg !428, !tbaa !206
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !429
  %call.i.i = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i.i) #14, !dbg !430
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !372, metadata !DIExpression()) #12, !dbg !422
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null, !dbg !431
  br i1 %tobool6.not.i.i, label %cleanup, label %if.end.i.i, !dbg !432

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !433, !tbaa !206
  store i32 %dn.0.i.i, ptr %d_max.i59.i, align 4, !dbg !434, !tbaa !384
  %.pre34.i.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !435, !tbaa !381
  br label %do.body36

do.body36:                                        ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %13 = phi i32 [ %10, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !435
  %14 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !420
  %idx.ext.i.i = zext i32 %13 to i64, !dbg !436
  %add.ptr.i.i = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i.i, !dbg !436
  store i64 7019831366685843821, ptr %add.ptr.i.i, align 1, !dbg !437
  store i32 %add.i.i, ptr %d_cur.i84.i, align 8, !dbg !438, !tbaa !381
  %call37 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17031, i64 noundef 2), !dbg !439
  %cmp38 = icmp slt i32 %call37, 0, !dbg !439
  br i1 %cmp38, label %cleanup, label %do.body43, !dbg !442

do.body43:                                        ; preds = %do.body36
  %call44 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17029, i64 noundef 2), !dbg !443
  %cmp45 = icmp slt i32 %call44, 0, !dbg !443
  br i1 %cmp45, label %cleanup, label %do.body50, !dbg !446

do.body50:                                        ; preds = %do.body43
  %call51 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %c.0.i, ptr noundef null), !dbg !447
  %cmp52 = icmp slt i32 %call51, 0, !dbg !447
  br i1 %cmp52, label %cleanup, label %do.end56, !dbg !450

do.end56:                                         ; preds = %do.body50
  %15 = load ptr, ptr %root, align 8, !dbg !451, !tbaa !168
  %call58 = tail call fastcc ptr @mk_create_context(ptr noundef %w, ptr noundef %15, i32 noundef 408125543), !dbg !453
  call void @llvm.dbg.value(metadata ptr %call58, metadata !277, metadata !DIExpression()), !dbg !280
  %tobool59.not = icmp eq ptr %call58, null, !dbg !454
  br i1 %tobool59.not, label %cleanup, label %do.body62, !dbg !455

do.body62:                                        ; preds = %do.end56
  %call63 = tail call fastcc i32 @mk_flush_context_id(ptr noundef nonnull %call58), !dbg !456
  %cmp64 = icmp slt i32 %call63, 0, !dbg !456
  br i1 %cmp64, label %cleanup, label %do.body69, !dbg !459

do.body69:                                        ; preds = %do.body62
  %call70 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call58, ptr noundef null), !dbg !460
  %cmp71 = icmp slt i32 %call70, 0, !dbg !460
  br i1 %cmp71, label %cleanup, label %do.end75, !dbg !463

do.end75:                                         ; preds = %do.body69
  %16 = load ptr, ptr %root, align 8, !dbg !464, !tbaa !168
  %call77 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef %16, i32 noundef 357149030), !dbg !466
  call void @llvm.dbg.value(metadata ptr %call77, metadata !277, metadata !DIExpression()), !dbg !280
  %tobool78.not = icmp eq ptr %call77, null, !dbg !467
  br i1 %tobool78.not, label %cleanup, label %do.body81, !dbg !468

do.body81:                                        ; preds = %do.end75
  %call82 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call77, i32 noundef 19840, ptr noundef nonnull @.str.3), !dbg !469
  %cmp83 = icmp slt i32 %call82, 0, !dbg !469
  br i1 %cmp83, label %cleanup, label %do.body88, !dbg !472

do.body88:                                        ; preds = %do.body81
  %call89 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call77, i32 noundef 22337, ptr noundef %writing_app), !dbg !473
  %cmp90 = icmp slt i32 %call89, 0, !dbg !473
  br i1 %cmp90, label %cleanup, label %do.body95, !dbg !476

do.body95:                                        ; preds = %do.body88
  %17 = load i64, ptr %timescale1, align 8, !dbg !477, !tbaa !225
  %call97 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call77, i32 noundef 2807729, i64 noundef %17), !dbg !477
  %cmp98 = icmp slt i32 %call97, 0, !dbg !477
  br i1 %cmp98, label %cleanup, label %do.body103, !dbg !480

do.body103:                                       ; preds = %do.body95
  %call104 = tail call fastcc i32 @mk_write_float(ptr noundef nonnull %call77), !dbg !481
  %cmp105 = icmp slt i32 %call104, 0, !dbg !481
  br i1 %cmp105, label %cleanup, label %do.end109, !dbg !484

do.end109:                                        ; preds = %do.body103
  %d_cur = getelementptr inbounds %struct.mk_context, ptr %call77, i64 0, i32 6, !dbg !485
  %18 = load i32, ptr %d_cur, align 8, !dbg !485, !tbaa !381
  %sub = add i32 %18, -4, !dbg !486
  %duration_ptr = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 1, !dbg !487
  store i32 %sub, ptr %duration_ptr, align 8, !dbg !488, !tbaa !489
  %call112 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call77, ptr noundef nonnull %duration_ptr), !dbg !490
  %cmp113 = icmp slt i32 %call112, 0, !dbg !490
  br i1 %cmp113, label %cleanup, label %do.end117, !dbg !493

do.end117:                                        ; preds = %do.end109
  %19 = load ptr, ptr %root, align 8, !dbg !494, !tbaa !168
  %call119 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef %19, i32 noundef 374648427), !dbg !496
  call void @llvm.dbg.value(metadata ptr %call119, metadata !277, metadata !DIExpression()), !dbg !280
  %tobool120.not = icmp eq ptr %call119, null, !dbg !497
  br i1 %tobool120.not, label %cleanup, label %if.end122, !dbg !498

if.end122:                                        ; preds = %do.end117
  %call123 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef nonnull %call119, i32 noundef 174), !dbg !499
  call void @llvm.dbg.value(metadata ptr %call123, metadata !278, metadata !DIExpression()), !dbg !280
  %tobool124.not = icmp eq ptr %call123, null, !dbg !501
  br i1 %tobool124.not, label %cleanup, label %do.body127, !dbg !502

do.body127:                                       ; preds = %if.end122
  %call128 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 215, i64 noundef 1), !dbg !503
  %cmp129 = icmp slt i32 %call128, 0, !dbg !503
  br i1 %cmp129, label %cleanup, label %do.body134, !dbg !506

do.body134:                                       ; preds = %do.body127
  %call135 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 29637, i64 noundef 1), !dbg !507
  %cmp136 = icmp slt i32 %call135, 0, !dbg !507
  br i1 %cmp136, label %cleanup, label %do.body141, !dbg !510

do.body141:                                       ; preds = %do.body134
  %call142 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 131, i64 noundef 1), !dbg !511
  %cmp143 = icmp slt i32 %call142, 0, !dbg !511
  br i1 %cmp143, label %cleanup, label %do.body148, !dbg !514

do.body148:                                       ; preds = %do.body141
  %call149 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 156, i64 noundef 0), !dbg !515
  %cmp150 = icmp slt i32 %call149, 0, !dbg !515
  br i1 %cmp150, label %cleanup, label %do.body155, !dbg !518

do.body155:                                       ; preds = %do.body148
  %call156 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call123, i32 noundef 134, ptr noundef %codec_id), !dbg !519
  %cmp157 = icmp slt i32 %call156, 0, !dbg !519
  br i1 %cmp157, label %cleanup, label %do.end161, !dbg !522

do.end161:                                        ; preds = %do.body155
  %tobool162.not = icmp eq i32 %codec_private_size, 0, !dbg !523
  br i1 %tobool162.not, label %if.end171, label %do.body164, !dbg !525

do.body164:                                       ; preds = %do.end161
  %call165 = tail call fastcc i32 @mk_write_bin(ptr noundef nonnull %call123, ptr noundef %codec_private, i32 noundef %codec_private_size), !dbg !526
  %cmp166 = icmp slt i32 %call165, 0, !dbg !526
  br i1 %cmp166, label %cleanup, label %if.end171, !dbg !529

if.end171:                                        ; preds = %do.body164, %do.end161
  %tobool172.not = icmp eq i64 %default_frame_duration, 0, !dbg !530
  br i1 %tobool172.not, label %if.end181, label %do.body174, !dbg !532

do.body174:                                       ; preds = %if.end171
  %call175 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 2352003, i64 noundef %default_frame_duration), !dbg !533
  %cmp176 = icmp slt i32 %call175, 0, !dbg !533
  br i1 %cmp176, label %cleanup, label %if.end181, !dbg !536

if.end181:                                        ; preds = %do.body174, %if.end171
  %call182 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef nonnull %call123, i32 noundef 224), !dbg !537
  call void @llvm.dbg.value(metadata ptr %call182, metadata !279, metadata !DIExpression()), !dbg !280
  %tobool183.not = icmp eq ptr %call182, null, !dbg !539
  br i1 %tobool183.not, label %cleanup, label %do.body186, !dbg !540

do.body186:                                       ; preds = %if.end181
  %conv = zext i32 %width to i64, !dbg !541
  %call187 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 176, i64 noundef %conv), !dbg !541
  %cmp188 = icmp slt i32 %call187, 0, !dbg !541
  br i1 %cmp188, label %cleanup, label %do.body194, !dbg !544

do.body194:                                       ; preds = %do.body186
  %conv195 = zext i32 %height to i64, !dbg !545
  %call196 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 186, i64 noundef %conv195), !dbg !545
  %cmp197 = icmp slt i32 %call196, 0, !dbg !545
  br i1 %cmp197, label %cleanup, label %do.body203, !dbg !548

do.body203:                                       ; preds = %do.body194
  %conv204 = zext i32 %d_width to i64, !dbg !549
  %call205 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 21680, i64 noundef %conv204), !dbg !549
  %cmp206 = icmp slt i32 %call205, 0, !dbg !549
  br i1 %cmp206, label %cleanup, label %do.body212, !dbg !552

do.body212:                                       ; preds = %do.body203
  %conv213 = zext i32 %d_height to i64, !dbg !553
  %call214 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 21690, i64 noundef %conv213), !dbg !553
  %cmp215 = icmp slt i32 %call214, 0, !dbg !553
  br i1 %cmp215, label %cleanup, label %do.body221, !dbg !556

do.body221:                                       ; preds = %do.body212
  %call222 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call182, ptr noundef null), !dbg !557
  %cmp223 = icmp slt i32 %call222, 0, !dbg !557
  br i1 %cmp223, label %cleanup, label %do.body229, !dbg !560

do.body229:                                       ; preds = %do.body221
  %call230 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call123, ptr noundef null), !dbg !561
  %cmp231 = icmp slt i32 %call230, 0, !dbg !561
  br i1 %cmp231, label %cleanup, label %do.body237, !dbg !564

do.body237:                                       ; preds = %do.body229
  %call238 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call119, ptr noundef null), !dbg !565
  %cmp239 = icmp slt i32 %call238, 0, !dbg !565
  br i1 %cmp239, label %cleanup, label %do.body245, !dbg !568

do.body245:                                       ; preds = %do.body237
  %20 = load ptr, ptr %root, align 8, !dbg !569, !tbaa !168
  %call247 = tail call fastcc i32 @mk_flush_context_data(ptr noundef %20), !dbg !569
  %cmp248 = icmp slt i32 %call247, 0, !dbg !569
  br i1 %cmp248, label %cleanup, label %do.end253, !dbg !572

do.end253:                                        ; preds = %do.body245
  store i8 1, ptr %wrote_header, align 8, !dbg !573, !tbaa !283
  br label %cleanup, !dbg !574

cleanup:                                          ; preds = %while.end.i76.i, %while.end.i.i, %do.body2.i, %if.else.i, %do.body245, %do.body237, %do.body229, %do.body221, %do.body212, %do.body203, %do.body194, %do.body186, %if.end181, %do.body174, %do.body164, %do.body155, %do.body148, %do.body141, %do.body134, %do.body127, %if.end122, %do.end117, %do.end109, %do.body103, %do.body95, %do.body88, %do.body81, %do.end75, %do.body69, %do.body62, %do.end56, %do.body50, %do.body43, %do.body36, %do.body22, %do.body15, %do.body8, %do.body, %entry, %do.end253
  %retval.0 = phi i32 [ 0, %do.end253 ], [ -1, %entry ], [ -1, %do.body ], [ -1, %do.body8 ], [ -1, %do.body15 ], [ -1, %do.body22 ], [ -1, %do.body36 ], [ -1, %do.body43 ], [ -1, %do.body50 ], [ -1, %do.end56 ], [ -1, %do.body62 ], [ -1, %do.body69 ], [ -1, %do.end75 ], [ -1, %do.body81 ], [ -1, %do.body88 ], [ -1, %do.body95 ], [ -1, %do.body103 ], [ -1, %do.end109 ], [ -1, %do.end117 ], [ -1, %if.end122 ], [ -1, %do.body127 ], [ -1, %do.body134 ], [ -1, %do.body141 ], [ -1, %do.body148 ], [ -1, %do.body155 ], [ -1, %do.body164 ], [ -1, %do.body174 ], [ -1, %if.end181 ], [ -1, %do.body186 ], [ -1, %do.body194 ], [ -1, %do.body203 ], [ -1, %do.body212 ], [ -1, %do.body221 ], [ -1, %do.body229 ], [ -1, %do.body237 ], [ -1, %do.body245 ], [ -1, %if.else.i ], [ -1, %do.body2.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i76.i ], !dbg !280
  ret i32 %retval.0, !dbg !575
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_write_uint(ptr nocapture noundef %c, i32 noundef %id, i64 noundef %ui) unnamed_addr #0 !dbg !576 {
entry:
  %c_ui = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %c, metadata !580, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 %id, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %ui, metadata !582, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c_ui) #12, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %c_ui, metadata !583, metadata !DIExpression()), !dbg !590
  %0 = lshr i64 %ui, 56, !dbg !591
  %conv = trunc i64 %0 to i8, !dbg !592
  store i8 %conv, ptr %c_ui, align 1, !dbg !593, !tbaa !594
  %arrayinit.element = getelementptr inbounds i8, ptr %c_ui, i64 1, !dbg !593
  %1 = lshr i64 %ui, 48, !dbg !595
  %conv2 = trunc i64 %1 to i8, !dbg !596
  store i8 %conv2, ptr %arrayinit.element, align 1, !dbg !593, !tbaa !594
  %arrayinit.element3 = getelementptr inbounds i8, ptr %c_ui, i64 2, !dbg !593
  %2 = lshr i64 %ui, 40, !dbg !597
  %conv5 = trunc i64 %2 to i8, !dbg !598
  store i8 %conv5, ptr %arrayinit.element3, align 1, !dbg !593, !tbaa !594
  %arrayinit.element6 = getelementptr inbounds i8, ptr %c_ui, i64 3, !dbg !593
  %3 = lshr i64 %ui, 32, !dbg !599
  %conv8 = trunc i64 %3 to i8, !dbg !600
  store i8 %conv8, ptr %arrayinit.element6, align 1, !dbg !593, !tbaa !594
  %arrayinit.element9 = getelementptr inbounds i8, ptr %c_ui, i64 4, !dbg !593
  %4 = lshr i64 %ui, 24, !dbg !601
  %conv11 = trunc i64 %4 to i8, !dbg !602
  store i8 %conv11, ptr %arrayinit.element9, align 1, !dbg !593, !tbaa !594
  %arrayinit.element12 = getelementptr inbounds i8, ptr %c_ui, i64 5, !dbg !593
  %5 = lshr i64 %ui, 16, !dbg !603
  %conv14 = trunc i64 %5 to i8, !dbg !604
  store i8 %conv14, ptr %arrayinit.element12, align 1, !dbg !593, !tbaa !594
  %arrayinit.element15 = getelementptr inbounds i8, ptr %c_ui, i64 6, !dbg !593
  %6 = lshr i64 %ui, 8, !dbg !605
  %conv17 = trunc i64 %6 to i8, !dbg !606
  store i8 %conv17, ptr %arrayinit.element15, align 1, !dbg !593, !tbaa !594
  %arrayinit.element18 = getelementptr inbounds i8, ptr %c_ui, i64 7, !dbg !593
  %conv19 = trunc i64 %ui to i8, !dbg !607
  store i8 %conv19, ptr %arrayinit.element18, align 1, !dbg !593, !tbaa !594
  call void @llvm.dbg.value(metadata i32 0, metadata !587, metadata !DIExpression()), !dbg !588
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %c, i32 noundef %id), !dbg !608
  %cmp = icmp slt i32 %call, 0, !dbg !608
  br i1 %cmp, label %cleanup, label %land.rhs.preheader, !dbg !611

land.rhs.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !587, metadata !DIExpression()), !dbg !588
  %tobool.not62 = icmp eq i8 %conv, 0, !dbg !612
  br i1 %tobool.not62, label %while.body, label %do.body23, !dbg !613

while.body:                                       ; preds = %land.rhs.preheader, %while.body.land.rhs_crit_edge
  %indvars.iv63 = phi i64 [ %indvars.iv.next, %while.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv63, metadata !587, metadata !DIExpression()), !dbg !588
  %indvars.iv.next = add nuw nsw i64 %indvars.iv63, 1, !dbg !614
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !587, metadata !DIExpression()), !dbg !588
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7, !dbg !615
  br i1 %exitcond.not, label %do.body23, label %while.body.land.rhs_crit_edge, !dbg !616, !llvm.loop !617

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  %arrayidx.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %c_ui, i64 0, i64 %indvars.iv.next
  %.pre = load i8, ptr %arrayidx.phi.trans.insert, align 1, !dbg !619, !tbaa !594
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !587, metadata !DIExpression()), !dbg !588
  %tobool.not = icmp eq i8 %.pre, 0, !dbg !612
  br i1 %tobool.not, label %while.body, label %land.rhs.do.body23.split.loop.exit_crit_edge, !dbg !613

land.rhs.do.body23.split.loop.exit_crit_edge:     ; preds = %while.body.land.rhs_crit_edge
  %phi.cast = trunc i64 %indvars.iv.next to i32, !dbg !613
  br label %do.body23, !dbg !613

do.body23:                                        ; preds = %while.body, %land.rhs.preheader, %land.rhs.do.body23.split.loop.exit_crit_edge
  %i.0.lcssa = phi i32 [ %phi.cast, %land.rhs.do.body23.split.loop.exit_crit_edge ], [ 0, %land.rhs.preheader ], [ 7, %while.body ], !dbg !588
  %sub = sub nsw i32 8, %i.0.lcssa, !dbg !620
  %call24 = tail call fastcc i32 @mk_write_size(ptr noundef %c, i32 noundef %sub), !dbg !620
  %cmp25 = icmp slt i32 %call24, 0, !dbg !620
  br i1 %cmp25, label %cleanup, label %do.body31, !dbg !623

do.body31:                                        ; preds = %do.body23
  %idx.ext = zext i32 %i.0.lcssa to i64, !dbg !624
  %add.ptr = getelementptr inbounds i8, ptr %c_ui, i64 %idx.ext, !dbg !624
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !627
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !369, metadata !DIExpression()) #12, !dbg !627
  call void @llvm.dbg.value(metadata i32 %sub, metadata !370, metadata !DIExpression()) #12, !dbg !627
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !629
  %7 = load i32, ptr %d_cur.i, align 8, !dbg !629, !tbaa !381
  %add.i = add i32 %7, %sub, !dbg !630
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !627
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !631
  %8 = load i32, ptr %d_max.i, align 4, !dbg !631, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %8, !dbg !632
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !633

entry.if.end11_crit_edge.i:                       ; preds = %do.body31
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !634, !tbaa !206
  br label %mk_append_context_data.exit, !dbg !633

if.then.i:                                        ; preds = %do.body31
  %tobool.not.i = icmp eq i32 %8, 0, !dbg !635
  %shl.i = shl i32 %8, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !635
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !636
  br label %while.cond.i, !dbg !637

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !636
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !636
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !638
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !639
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !636
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !637, !llvm.loop !640

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !642
  %9 = load ptr, ptr %data5.i, align 8, !dbg !642, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !643
  %call.i = tail call ptr @realloc(ptr noundef %9, i64 noundef %conv.i) #14, !dbg !644
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !636
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !645
  br i1 %tobool6.not.i, label %cleanup, label %if.end.i, !dbg !646

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !647, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !648, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !649, !tbaa !381
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %10 = phi i32 [ %7, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !649
  %11 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !634
  %idx.ext.i = zext i32 %10 to i64, !dbg !650
  %add.ptr.i = getelementptr inbounds i8, ptr %11, i64 %idx.ext.i, !dbg !650
  %conv14.i = zext i32 %sub to i64, !dbg !651
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr nonnull align 1 %add.ptr, i64 %conv14.i, i1 false) #12, !dbg !652
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !653, !tbaa !381
  br label %cleanup, !dbg !588

cleanup:                                          ; preds = %mk_append_context_data.exit, %while.end.i, %do.body23, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %do.body23 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c_ui) #12, !dbg !654
  ret i32 %retval.0, !dbg !654
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_write_string(ptr nocapture noundef %c, i32 noundef %id, ptr nocapture noundef readonly %str) unnamed_addr #0 !dbg !338 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !337, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %id, metadata !342, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %str, metadata !343, metadata !DIExpression()), !dbg !655
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #13, !dbg !656
  call void @llvm.dbg.value(metadata i64 %call, metadata !344, metadata !DIExpression()), !dbg !655
  %call1 = tail call fastcc i32 @mk_write_id(ptr noundef %c, i32 noundef %id), !dbg !657
  %cmp = icmp slt i32 %call1, 0, !dbg !657
  br i1 %cmp, label %cleanup, label %do.body2, !dbg !658

do.body2:                                         ; preds = %entry
  %conv = trunc i64 %call to i32, !dbg !659
  %call3 = tail call fastcc i32 @mk_write_size(ptr noundef %c, i32 noundef %conv), !dbg !659
  %cmp4 = icmp slt i32 %call3, 0, !dbg !659
  br i1 %cmp4, label %cleanup, label %do.body10, !dbg !660

do.body10:                                        ; preds = %do.body2
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !661
  call void @llvm.dbg.value(metadata ptr %str, metadata !369, metadata !DIExpression()) #12, !dbg !661
  call void @llvm.dbg.value(metadata i32 %conv, metadata !370, metadata !DIExpression()) #12, !dbg !661
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !663
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !663, !tbaa !381
  %add.i = add i32 %0, %conv, !dbg !664
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !661
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !665
  %1 = load i32, ptr %d_max.i, align 4, !dbg !665, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !666
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !667

entry.if.end11_crit_edge.i:                       ; preds = %do.body10
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !668, !tbaa !206
  br label %mk_append_context_data.exit, !dbg !667

if.then.i:                                        ; preds = %do.body10
  %tobool.not.i = icmp eq i32 %1, 0, !dbg !669
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !669
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !670
  br label %while.cond.i, !dbg !671

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !670
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !670
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !672
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !673
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !670
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !671, !llvm.loop !674

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !676
  %2 = load ptr, ptr %data5.i, align 8, !dbg !676, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !677
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #14, !dbg !678
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !670
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !679
  br i1 %tobool6.not.i, label %cleanup, label %if.end.i, !dbg !680

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !681, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !682, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !683, !tbaa !381
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !683
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !668
  %idx.ext.i = zext i32 %3 to i64, !dbg !684
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !684
  %conv14.i = and i64 %call, 4294967295, !dbg !685
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %str, i64 %conv14.i, i1 false) #12, !dbg !686
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !687, !tbaa !381
  br label %cleanup, !dbg !655

cleanup:                                          ; preds = %mk_append_context_data.exit, %while.end.i, %do.body2, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %do.body2 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], !dbg !655
  ret i32 %retval.0, !dbg !688
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_close_context(ptr noundef %c, ptr noundef %off) unnamed_addr #0 !dbg !689 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !694, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr %off, metadata !695, metadata !DIExpression()), !dbg !696
  %id = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 4, !dbg !697
  %0 = load i32, ptr %id, align 8, !dbg !697, !tbaa !247
  %tobool.not = icmp eq i32 %0, 0, !dbg !699
  br i1 %tobool.not, label %if.end10, label %do.body, !dbg !700

do.body:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 2, !dbg !701
  %1 = load ptr, ptr %parent, align 8, !dbg !701, !tbaa !242
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %1, i32 noundef %0), !dbg !701
  %cmp = icmp slt i32 %call, 0, !dbg !701
  br i1 %cmp, label %return, label %do.body3, !dbg !705

do.body3:                                         ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8, !dbg !706, !tbaa !242
  %d_cur = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !706
  %3 = load i32, ptr %d_cur, align 8, !dbg !706, !tbaa !381
  %call5 = tail call fastcc i32 @mk_write_size(ptr noundef %2, i32 noundef %3), !dbg !706
  %cmp6 = icmp slt i32 %call5, 0, !dbg !706
  br i1 %cmp6, label %return, label %if.end10, !dbg !709

if.end10:                                         ; preds = %do.body3, %entry
  %parent11 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 2, !dbg !710
  %4 = load ptr, ptr %parent11, align 8, !dbg !710, !tbaa !242
  %tobool12 = icmp ne ptr %4, null, !dbg !712
  %tobool13 = icmp ne ptr %off, null
  %or.cond = and i1 %tobool13, %tobool12, !dbg !713
  br i1 %or.cond, label %if.then14, label %do.body18, !dbg !713

if.then14:                                        ; preds = %if.end10
  %d_cur16 = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 6, !dbg !714
  %5 = load i32, ptr %d_cur16, align 8, !dbg !714, !tbaa !381
  %6 = load i32, ptr %off, align 4, !dbg !715, !tbaa !716
  %add = add i32 %6, %5, !dbg !715
  store i32 %add, ptr %off, align 4, !dbg !715, !tbaa !716
  br label %do.body18, !dbg !717

do.body18:                                        ; preds = %if.end10, %if.then14
  call void @llvm.dbg.value(metadata ptr %c, metadata !718, metadata !DIExpression()) #12, !dbg !723
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !727
  %7 = load i32, ptr %d_cur.i, align 8, !dbg !727, !tbaa !381
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !729
  br i1 %tobool.not.i, label %do.end23, label %if.end.i, !dbg !730

if.end.i:                                         ; preds = %do.body18
  %tobool1.not.i = icmp eq ptr %4, null, !dbg !731
  %data7.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !733
  %8 = load ptr, ptr %data7.i, align 8, !dbg !733, !tbaa !206
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i, !dbg !734

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %4, metadata !364, metadata !DIExpression()) #12, !dbg !735
  call void @llvm.dbg.value(metadata ptr %8, metadata !369, metadata !DIExpression()) #12, !dbg !735
  call void @llvm.dbg.value(metadata i32 %7, metadata !370, metadata !DIExpression()) #12, !dbg !735
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 6, !dbg !739
  %9 = load i32, ptr %d_cur.i.i, align 8, !dbg !739, !tbaa !381
  %add.i.i = add i32 %9, %7, !dbg !740
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !371, metadata !DIExpression()) #12, !dbg !735
  %d_max.i.i = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 7, !dbg !741
  %10 = load i32, ptr %d_max.i.i, align 4, !dbg !741, !tbaa !384
  %cmp.i.i = icmp ugt i32 %add.i.i, %10, !dbg !742
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !743

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !744, !tbaa !206
  br label %mk_append_context_data.exit.i, !dbg !743

if.then.i.i:                                      ; preds = %do.body.i
  %tobool.not.i.i = icmp eq i32 %10, 0, !dbg !745
  %shl.i.i = shl i32 %10, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !745
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !746
  br label %while.cond.i.i, !dbg !747

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !746
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !746
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !748
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !749
  call void @llvm.dbg.value(metadata i32 %shl4.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !746
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !747, !llvm.loop !750

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 5, !dbg !752
  %11 = load ptr, ptr %data5.i.i, align 8, !dbg !752, !tbaa !206
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !753
  %call.i.i = tail call ptr @realloc(ptr noundef %11, i64 noundef %conv.i.i) #14, !dbg !754
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !372, metadata !DIExpression()) #12, !dbg !746
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null, !dbg !755
  br i1 %tobool6.not.i.i, label %return, label %if.end.i.i, !dbg !756

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !757, !tbaa !206
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !758, !tbaa !384
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !759, !tbaa !381
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %12 = phi i32 [ %9, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !759
  %13 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !744
  %idx.ext.i.i = zext i32 %12 to i64, !dbg !760
  %add.ptr.i.i = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i.i, !dbg !760
  %conv14.i.i = zext i32 %7 to i64, !dbg !761
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i, ptr align 1 %8, i64 %conv14.i.i, i1 false) #12, !dbg !762
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !763, !tbaa !381
  br label %if.end14.i, !dbg !764

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %7 to i64, !dbg !765
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 3, !dbg !767
  %14 = load ptr, ptr %owner.i, align 8, !dbg !767, !tbaa !151
  %15 = load ptr, ptr %14, align 8, !dbg !768, !tbaa !177
  %call9.i = tail call i64 @fwrite(ptr noundef %8, i64 noundef %conv.i, i64 noundef 1, ptr noundef %15) #12, !dbg !769
  %cmp10.not.i = icmp eq i64 %call9.i, 1, !dbg !770
  br i1 %cmp10.not.i, label %if.end14.i, label %return, !dbg !771

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8, !dbg !772, !tbaa !381
  br label %do.end23, !dbg !773

do.end23:                                         ; preds = %if.end14.i, %do.body18
  %16 = load ptr, ptr %c, align 8, !dbg !774, !tbaa !204
  %tobool24.not = icmp eq ptr %16, null, !dbg !776
  br i1 %tobool24.not, label %if.end28, label %if.then25, !dbg !777

if.then25:                                        ; preds = %do.end23
  %prev = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 1, !dbg !778
  %17 = load ptr, ptr %prev, align 8, !dbg !778, !tbaa !161
  %prev27 = getelementptr inbounds %struct.mk_context, ptr %16, i64 0, i32 1, !dbg !779
  store ptr %17, ptr %prev27, align 8, !dbg !780, !tbaa !161
  br label %if.end28, !dbg !781

if.end28:                                         ; preds = %if.then25, %do.end23
  %prev30 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 1, !dbg !782
  %18 = load ptr, ptr %prev30, align 8, !dbg !782, !tbaa !161
  store ptr %16, ptr %18, align 8, !dbg !783, !tbaa !173
  %owner = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 3, !dbg !784
  %19 = load ptr, ptr %owner, align 8, !dbg !784, !tbaa !151
  %freelist = getelementptr inbounds %struct.mk_writer, ptr %19, i64 0, i32 5, !dbg !785
  %20 = load ptr, ptr %freelist, align 8, !dbg !785, !tbaa !195
  store ptr %20, ptr %c, align 8, !dbg !786, !tbaa !204
  store ptr %c, ptr %freelist, align 8, !dbg !787, !tbaa !195
  br label %return, !dbg !788

return:                                           ; preds = %while.end.i.i, %if.else.i, %do.body3, %do.body, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -1, %do.body ], [ -1, %do.body3 ], [ -1, %if.else.i ], [ -1, %while.end.i.i ], !dbg !696
  ret i32 %retval.0, !dbg !789
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_flush_context_id(ptr nocapture noundef %c) unnamed_addr #0 !dbg !790 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !792, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 -1, metadata !793, metadata !DIExpression()), !dbg !794
  %id = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 4, !dbg !795
  %0 = load i32, ptr %id, align 8, !dbg !795, !tbaa !247
  %tobool.not = icmp eq i32 %0, 0, !dbg !797
  br i1 %tobool.not, label %cleanup, label %do.body, !dbg !798

do.body:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 2, !dbg !799
  %1 = load ptr, ptr %parent, align 8, !dbg !799, !tbaa !242
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %1, i32 noundef %0), !dbg !799
  %cmp = icmp slt i32 %call, 0, !dbg !799
  br i1 %cmp, label %cleanup, label %do.body4, !dbg !802

do.body4:                                         ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8, !dbg !803, !tbaa !242
  call void @llvm.dbg.value(metadata ptr %2, metadata !364, metadata !DIExpression()) #12, !dbg !806
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !806
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()) #12, !dbg !806
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %2, i64 0, i32 6, !dbg !808
  %3 = load i32, ptr %d_cur.i, align 8, !dbg !808, !tbaa !381
  %add.i = add i32 %3, 1, !dbg !809
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !806
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %2, i64 0, i32 7, !dbg !810
  %4 = load i32, ptr %d_max.i, align 4, !dbg !810, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %4, !dbg !811
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !812

entry.if.end11_crit_edge.i:                       ; preds = %do.body4
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %2, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !813, !tbaa !206
  br label %do.end11, !dbg !812

if.then.i:                                        ; preds = %do.body4
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !814
  %shl.i = shl i32 %4, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !814
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !815
  br label %while.cond.i, !dbg !816

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !815
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !815
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !817
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !818
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !815
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !816, !llvm.loop !819

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %2, i64 0, i32 5, !dbg !821
  %5 = load ptr, ptr %data5.i, align 8, !dbg !821, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !822
  %call.i = tail call ptr @realloc(ptr noundef %5, i64 noundef %conv.i) #14, !dbg !823
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !815
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !824
  br i1 %tobool6.not.i, label %cleanup, label %if.end.i, !dbg !825

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !826, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !827, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !828, !tbaa !381
  br label %do.end11

do.end11:                                         ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !828
  %7 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !813
  %idx.ext.i = zext i32 %6 to i64, !dbg !829
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %idx.ext.i, !dbg !829
  store i8 -1, ptr %add.ptr.i, align 1, !dbg !830
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !831, !tbaa !381
  store i32 0, ptr %id, align 8, !dbg !832, !tbaa !247
  br label %cleanup, !dbg !833

cleanup:                                          ; preds = %while.end.i, %do.body, %entry, %do.end11
  %retval.0 = phi i32 [ 0, %do.end11 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %while.end.i ], !dbg !794
  ret i32 %retval.0, !dbg !834
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_write_float(ptr nocapture noundef %c) unnamed_addr #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !839, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 17545, metadata !840, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !841, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata ptr %c, metadata !349, metadata !DIExpression()) #12, !dbg !843
  call void @llvm.dbg.value(metadata i32 17545, metadata !354, metadata !DIExpression()) #12, !dbg !843
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !843
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !843
  call void @llvm.dbg.value(metadata i8 68, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !843
  call void @llvm.dbg.value(metadata i8 -119, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !843
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !847
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !849
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !847
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !849
  %d_cur.i84.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !843
  %0 = load i32, ptr %d_cur.i84.i, align 8, !dbg !843, !tbaa !381
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()) #12, !dbg !849
  %add.i58.i = add i32 %0, 2, !dbg !851
  call void @llvm.dbg.value(metadata i32 %add.i58.i, metadata !371, metadata !DIExpression()) #12, !dbg !849
  %d_max.i59.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !852
  %1 = load i32, ptr %d_max.i59.i, align 4, !dbg !852, !tbaa !384
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %1, !dbg !853
  br i1 %cmp.i60.i, label %if.then.i67.i, label %entry.if.end11_crit_edge.i63.i, !dbg !854

entry.if.end11_crit_edge.i63.i:                   ; preds = %entry
  %data12.phi.trans.insert.i61.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i62.i = load ptr, ptr %data12.phi.trans.insert.i61.i, align 8, !dbg !855, !tbaa !206
  br label %do.body1, !dbg !854

if.then.i67.i:                                    ; preds = %entry
  %tobool.not.i64.i = icmp eq i32 %1, 0, !dbg !856
  %shl.i65.i = shl i32 %1, 1
  %spec.select.i66.i = select i1 %tobool.not.i64.i, i32 16, i32 %shl.i65.i, !dbg !856
  call void @llvm.dbg.value(metadata i32 %spec.select.i66.i, metadata !375, metadata !DIExpression()) #12, !dbg !857
  br label %while.cond.i71.i, !dbg !858

while.cond.i71.i:                                 ; preds = %while.cond.i71.i, %if.then.i67.i
  %dn.0.i68.i = phi i32 [ %spec.select.i66.i, %if.then.i67.i ], [ %shl4.i70.i, %while.cond.i71.i ], !dbg !857
  call void @llvm.dbg.value(metadata i32 %dn.0.i68.i, metadata !375, metadata !DIExpression()) #12, !dbg !857
  %cmp3.i69.i = icmp ugt i32 %add.i58.i, %dn.0.i68.i, !dbg !859
  %shl4.i70.i = shl i32 %dn.0.i68.i, 1, !dbg !860
  call void @llvm.dbg.value(metadata i32 %shl4.i70.i, metadata !375, metadata !DIExpression()) #12, !dbg !857
  br i1 %cmp3.i69.i, label %while.cond.i71.i, label %while.end.i76.i, !dbg !858, !llvm.loop !861

while.end.i76.i:                                  ; preds = %while.cond.i71.i
  %data5.i72.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !863
  %2 = load ptr, ptr %data5.i72.i, align 8, !dbg !863, !tbaa !206
  %conv.i73.i = zext i32 %dn.0.i68.i to i64, !dbg !864
  %call.i74.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i73.i) #14, !dbg !865
  call void @llvm.dbg.value(metadata ptr %call.i74.i, metadata !372, metadata !DIExpression()) #12, !dbg !857
  %tobool6.not.i75.i = icmp eq ptr %call.i74.i, null, !dbg !866
  br i1 %tobool6.not.i75.i, label %return, label %if.end.i78.i, !dbg !867

if.end.i78.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i74.i, ptr %data5.i72.i, align 8, !dbg !868, !tbaa !206
  store i32 %dn.0.i68.i, ptr %d_max.i59.i, align 4, !dbg !869, !tbaa !384
  %.pre34.i77.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !870, !tbaa !381
  br label %do.body1

do.body1:                                         ; preds = %if.end.i78.i, %entry.if.end11_crit_edge.i63.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i63.i ], [ %.pre34.i77.i, %if.end.i78.i ], !dbg !870
  %4 = phi ptr [ %.pre.i62.i, %entry.if.end11_crit_edge.i63.i ], [ %call.i74.i, %if.end.i78.i ], !dbg !855
  %idx.ext.i79.i = zext i32 %3 to i64, !dbg !871
  %add.ptr.i80.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i79.i, !dbg !871
  store i8 68, ptr %add.ptr.i80.i, align 1, !dbg !872
  %c_id.sroa.11.2.add.ptr.i80.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i80.i, i64 1, !dbg !872
  store i8 -119, ptr %c_id.sroa.11.2.add.ptr.i80.sroa_idx.i, align 1, !dbg !872
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8, !dbg !873, !tbaa !381
  call void @llvm.dbg.value(metadata ptr %c, metadata !874, metadata !DIExpression()) #12, !dbg !882
  call void @llvm.dbg.value(metadata i32 4, metadata !877, metadata !DIExpression()) #12, !dbg !882
  call void @llvm.dbg.value(metadata i8 8, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !882
  call void @llvm.dbg.value(metadata i8 0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !882
  call void @llvm.dbg.value(metadata i8 0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !882
  call void @llvm.dbg.value(metadata i8 0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !882
  call void @llvm.dbg.value(metadata i8 -124, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)) #12, !dbg !882
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !886
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !886
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()) #12, !dbg !886
  %add.i.i = add i32 %0, 3, !dbg !890
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !371, metadata !DIExpression()) #12, !dbg !886
  %5 = load i32, ptr %d_max.i59.i, align 4, !dbg !891, !tbaa !384
  %cmp.i.i = icmp ugt i32 %add.i.i, %5, !dbg !892
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !893

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body1
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !894, !tbaa !206
  br label %do.body7, !dbg !893

if.then.i.i:                                      ; preds = %do.body1
  %tobool.not.i.i = icmp eq i32 %5, 0, !dbg !895
  %shl.i.i = shl i32 %5, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !895
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !896
  br label %while.cond.i.i, !dbg !897

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !896
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !896
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !898
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !899
  call void @llvm.dbg.value(metadata i32 %shl4.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !896
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !897, !llvm.loop !900

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !902
  %6 = load ptr, ptr %data5.i.i, align 8, !dbg !902, !tbaa !206
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !903
  %call.i.i = tail call ptr @realloc(ptr noundef %6, i64 noundef %conv.i.i) #14, !dbg !904
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !372, metadata !DIExpression()) #12, !dbg !896
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null, !dbg !905
  br i1 %tobool6.not.i.i, label %return, label %if.end.i.i, !dbg !906

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !907, !tbaa !206
  store i32 %dn.0.i.i, ptr %d_max.i59.i, align 4, !dbg !908, !tbaa !384
  %.pre34.i.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !909, !tbaa !381
  br label %do.body7

do.body7:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %7 = phi i32 [ %add.i58.i, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !909
  %8 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !894
  %idx.ext.i.i = zext i32 %7 to i64, !dbg !910
  %add.ptr.i.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i.i, !dbg !910
  store i8 -124, ptr %add.ptr.i.i, align 1, !dbg !911
  store i32 %add.i.i, ptr %d_cur.i84.i, align 8, !dbg !912, !tbaa !381
  call void @llvm.dbg.value(metadata ptr %c, metadata !913, metadata !DIExpression()) #12, !dbg !925
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !918, metadata !DIExpression()) #12, !dbg !925
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !919, metadata !DIExpression()) #12, !dbg !925
  call void @llvm.dbg.value(metadata i8 0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !925
  call void @llvm.dbg.value(metadata i8 0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !925
  call void @llvm.dbg.value(metadata i8 0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !925
  call void @llvm.dbg.value(metadata i8 0, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !925
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !929
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !929
  call void @llvm.dbg.value(metadata i32 4, metadata !370, metadata !DIExpression()) #12, !dbg !929
  %add.i.i3 = add i32 %0, 7, !dbg !931
  call void @llvm.dbg.value(metadata i32 %add.i.i3, metadata !371, metadata !DIExpression()) #12, !dbg !929
  %9 = load i32, ptr %d_max.i59.i, align 4, !dbg !932, !tbaa !384
  %cmp.i.i5 = icmp ugt i32 %add.i.i3, %9, !dbg !933
  br i1 %cmp.i.i5, label %if.then.i.i12, label %entry.if.end11_crit_edge.i.i8, !dbg !934

entry.if.end11_crit_edge.i.i8:                    ; preds = %do.body7
  %data12.phi.trans.insert.i.i6 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i.i7 = load ptr, ptr %data12.phi.trans.insert.i.i6, align 8, !dbg !935, !tbaa !206
  br label %mk_write_float_raw.exit, !dbg !934

if.then.i.i12:                                    ; preds = %do.body7
  %tobool.not.i.i9 = icmp eq i32 %9, 0, !dbg !936
  %shl.i.i10 = shl i32 %9, 1
  %spec.select.i.i11 = select i1 %tobool.not.i.i9, i32 16, i32 %shl.i.i10, !dbg !936
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i11, metadata !375, metadata !DIExpression()) #12, !dbg !937
  br label %while.cond.i.i16, !dbg !938

while.cond.i.i16:                                 ; preds = %while.cond.i.i16, %if.then.i.i12
  %dn.0.i.i13 = phi i32 [ %spec.select.i.i11, %if.then.i.i12 ], [ %shl4.i.i15, %while.cond.i.i16 ], !dbg !937
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i13, metadata !375, metadata !DIExpression()) #12, !dbg !937
  %cmp3.i.i14 = icmp ugt i32 %add.i.i3, %dn.0.i.i13, !dbg !939
  %shl4.i.i15 = shl i32 %dn.0.i.i13, 1, !dbg !940
  call void @llvm.dbg.value(metadata i32 %shl4.i.i15, metadata !375, metadata !DIExpression()) #12, !dbg !937
  br i1 %cmp3.i.i14, label %while.cond.i.i16, label %while.end.i.i21, !dbg !938, !llvm.loop !941

while.end.i.i21:                                  ; preds = %while.cond.i.i16
  %data5.i.i17 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !943
  %10 = load ptr, ptr %data5.i.i17, align 8, !dbg !943, !tbaa !206
  %conv.i.i18 = zext i32 %dn.0.i.i13 to i64, !dbg !944
  %call.i.i19 = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i.i18) #14, !dbg !945
  call void @llvm.dbg.value(metadata ptr %call.i.i19, metadata !372, metadata !DIExpression()) #12, !dbg !937
  %tobool6.not.i.i20 = icmp eq ptr %call.i.i19, null, !dbg !946
  br i1 %tobool6.not.i.i20, label %return, label %if.end.i.i23, !dbg !947

if.end.i.i23:                                     ; preds = %while.end.i.i21
  store ptr %call.i.i19, ptr %data5.i.i17, align 8, !dbg !948, !tbaa !206
  store i32 %dn.0.i.i13, ptr %d_max.i59.i, align 4, !dbg !949, !tbaa !384
  %.pre34.i.i22 = load i32, ptr %d_cur.i84.i, align 8, !dbg !950, !tbaa !381
  br label %mk_write_float_raw.exit

mk_write_float_raw.exit:                          ; preds = %entry.if.end11_crit_edge.i.i8, %if.end.i.i23
  %11 = phi i32 [ %add.i.i, %entry.if.end11_crit_edge.i.i8 ], [ %.pre34.i.i22, %if.end.i.i23 ], !dbg !950
  %12 = phi ptr [ %.pre.i.i7, %entry.if.end11_crit_edge.i.i8 ], [ %call.i.i19, %if.end.i.i23 ], !dbg !935
  %idx.ext.i.i24 = zext i32 %11 to i64, !dbg !951
  %add.ptr.i.i25 = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i.i24, !dbg !951
  store i32 0, ptr %add.ptr.i.i25, align 1, !dbg !952
  store i32 %add.i.i3, ptr %d_cur.i84.i, align 8, !dbg !953, !tbaa !381
  br label %return, !dbg !842

return:                                           ; preds = %while.end.i.i, %while.end.i76.i, %mk_write_float_raw.exit, %while.end.i.i21
  %retval.0 = phi i32 [ 0, %mk_write_float_raw.exit ], [ -1, %while.end.i.i21 ], [ -1, %while.end.i76.i ], [ -1, %while.end.i.i ], !dbg !842
  ret i32 %retval.0, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_write_bin(ptr nocapture noundef %c, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 !dbg !955 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !959, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i32 25506, metadata !960, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr %data, metadata !961, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i32 %size, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr %c, metadata !349, metadata !DIExpression()) #12, !dbg !964
  call void @llvm.dbg.value(metadata i32 25506, metadata !354, metadata !DIExpression()) #12, !dbg !964
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !964
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !964
  call void @llvm.dbg.value(metadata i8 99, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !964
  call void @llvm.dbg.value(metadata i8 -94, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !964
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !968
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !970
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !968
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !970
  %d_cur.i84.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !964
  %0 = load i32, ptr %d_cur.i84.i, align 8, !dbg !964, !tbaa !381
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()) #12, !dbg !970
  %add.i58.i = add i32 %0, 2, !dbg !972
  call void @llvm.dbg.value(metadata i32 %add.i58.i, metadata !371, metadata !DIExpression()) #12, !dbg !970
  %d_max.i59.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !973
  %1 = load i32, ptr %d_max.i59.i, align 4, !dbg !973, !tbaa !384
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %1, !dbg !974
  br i1 %cmp.i60.i, label %if.then.i67.i, label %entry.if.end11_crit_edge.i63.i, !dbg !975

entry.if.end11_crit_edge.i63.i:                   ; preds = %entry
  %data12.phi.trans.insert.i61.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i62.i = load ptr, ptr %data12.phi.trans.insert.i61.i, align 8, !dbg !976, !tbaa !206
  br label %do.body1, !dbg !975

if.then.i67.i:                                    ; preds = %entry
  %tobool.not.i64.i = icmp eq i32 %1, 0, !dbg !977
  %shl.i65.i = shl i32 %1, 1
  %spec.select.i66.i = select i1 %tobool.not.i64.i, i32 16, i32 %shl.i65.i, !dbg !977
  call void @llvm.dbg.value(metadata i32 %spec.select.i66.i, metadata !375, metadata !DIExpression()) #12, !dbg !978
  br label %while.cond.i71.i, !dbg !979

while.cond.i71.i:                                 ; preds = %while.cond.i71.i, %if.then.i67.i
  %dn.0.i68.i = phi i32 [ %spec.select.i66.i, %if.then.i67.i ], [ %shl4.i70.i, %while.cond.i71.i ], !dbg !978
  call void @llvm.dbg.value(metadata i32 %dn.0.i68.i, metadata !375, metadata !DIExpression()) #12, !dbg !978
  %cmp3.i69.i = icmp ugt i32 %add.i58.i, %dn.0.i68.i, !dbg !980
  %shl4.i70.i = shl i32 %dn.0.i68.i, 1, !dbg !981
  call void @llvm.dbg.value(metadata i32 %shl4.i70.i, metadata !375, metadata !DIExpression()) #12, !dbg !978
  br i1 %cmp3.i69.i, label %while.cond.i71.i, label %while.end.i76.i, !dbg !979, !llvm.loop !982

while.end.i76.i:                                  ; preds = %while.cond.i71.i
  %data5.i72.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !984
  %2 = load ptr, ptr %data5.i72.i, align 8, !dbg !984, !tbaa !206
  %conv.i73.i = zext i32 %dn.0.i68.i to i64, !dbg !985
  %call.i74.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i73.i) #14, !dbg !986
  call void @llvm.dbg.value(metadata ptr %call.i74.i, metadata !372, metadata !DIExpression()) #12, !dbg !978
  %tobool6.not.i75.i = icmp eq ptr %call.i74.i, null, !dbg !987
  br i1 %tobool6.not.i75.i, label %return, label %if.end.i78.i, !dbg !988

if.end.i78.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i74.i, ptr %data5.i72.i, align 8, !dbg !989, !tbaa !206
  store i32 %dn.0.i68.i, ptr %d_max.i59.i, align 4, !dbg !990, !tbaa !384
  %.pre34.i77.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !991, !tbaa !381
  br label %do.body1

do.body1:                                         ; preds = %if.end.i78.i, %entry.if.end11_crit_edge.i63.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i63.i ], [ %.pre34.i77.i, %if.end.i78.i ], !dbg !991
  %4 = phi ptr [ %.pre.i62.i, %entry.if.end11_crit_edge.i63.i ], [ %call.i74.i, %if.end.i78.i ], !dbg !976
  %idx.ext.i79.i = zext i32 %3 to i64, !dbg !992
  %add.ptr.i80.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i79.i, !dbg !992
  store i8 99, ptr %add.ptr.i80.i, align 1, !dbg !993
  %c_id.sroa.11.2.add.ptr.i80.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i80.i, i64 1, !dbg !993
  store i8 -94, ptr %c_id.sroa.11.2.add.ptr.i80.sroa_idx.i, align 1, !dbg !993
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8, !dbg !994, !tbaa !381
  %call2 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c, i32 noundef %size), !dbg !995
  %cmp3 = icmp slt i32 %call2, 0, !dbg !995
  br i1 %cmp3, label %return, label %do.body7, !dbg !998

do.body7:                                         ; preds = %do.body1
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !999
  call void @llvm.dbg.value(metadata ptr %data, metadata !369, metadata !DIExpression()) #12, !dbg !999
  call void @llvm.dbg.value(metadata i32 %size, metadata !370, metadata !DIExpression()) #12, !dbg !999
  %5 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1003, !tbaa !381
  %add.i = add i32 %5, %size, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !999
  %6 = load i32, ptr %d_max.i59.i, align 4, !dbg !1005, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %6, !dbg !1006
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1007

entry.if.end11_crit_edge.i:                       ; preds = %do.body7
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1008, !tbaa !206
  br label %mk_append_context_data.exit, !dbg !1007

if.then.i:                                        ; preds = %do.body7
  %tobool.not.i = icmp eq i32 %6, 0, !dbg !1009
  %shl.i = shl i32 %6, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !1010
  br label %while.cond.i, !dbg !1011

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1010
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !1010
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1012
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !1010
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1011, !llvm.loop !1014

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1016
  %7 = load ptr, ptr %data5.i, align 8, !dbg !1016, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1017
  %call.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i) #14, !dbg !1018
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !1010
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !1019
  br i1 %tobool6.not.i, label %return, label %if.end.i, !dbg !1020

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1021, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i59.i, align 4, !dbg !1022, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1023, !tbaa !381
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1023
  %9 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1008
  %idx.ext.i = zext i32 %8 to i64, !dbg !1024
  %add.ptr.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i, !dbg !1024
  %conv14.i = zext i32 %size to i64, !dbg !1025
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %data, i64 %conv14.i, i1 false) #12, !dbg !1026
  store i32 %add.i, ptr %d_cur.i84.i, align 8, !dbg !1027, !tbaa !381
  br label %return, !dbg !963

return:                                           ; preds = %while.end.i76.i, %mk_append_context_data.exit, %while.end.i, %do.body1
  %retval.0 = phi i32 [ -1, %do.body1 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], [ -1, %while.end.i76.i ], !dbg !963
  ret i32 %retval.0, !dbg !1028
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_flush_context_data(ptr nocapture noundef %c) unnamed_addr #0 !dbg !719 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !718, metadata !DIExpression()), !dbg !1029
  %d_cur = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1030
  %0 = load i32, ptr %d_cur, align 8, !dbg !1030, !tbaa !381
  %tobool.not = icmp eq i32 %0, 0, !dbg !1031
  br i1 %tobool.not, label %return, label %if.end, !dbg !1032

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 2, !dbg !1033
  %1 = load ptr, ptr %parent, align 8, !dbg !1033, !tbaa !242
  %tobool1.not = icmp eq ptr %1, null, !dbg !1034
  %data7 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1035
  %2 = load ptr, ptr %data7, align 8, !dbg !1035, !tbaa !206
  br i1 %tobool1.not, label %if.else, label %do.body, !dbg !1036

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %1, metadata !364, metadata !DIExpression()) #12, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %2, metadata !369, metadata !DIExpression()) #12, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %0, metadata !370, metadata !DIExpression()) #12, !dbg !1037
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 6, !dbg !1039
  %3 = load i32, ptr %d_cur.i, align 8, !dbg !1039, !tbaa !381
  %add.i = add i32 %3, %0, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !1037
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 7, !dbg !1041
  %4 = load i32, ptr %d_max.i, align 4, !dbg !1041, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %4, !dbg !1042
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1043

entry.if.end11_crit_edge.i:                       ; preds = %do.body
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1044, !tbaa !206
  br label %mk_append_context_data.exit, !dbg !1043

if.then.i:                                        ; preds = %do.body
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !1045
  %shl.i = shl i32 %4, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !1046
  br label %while.cond.i, !dbg !1047

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1046
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !1046
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1048
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !1046
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1047, !llvm.loop !1050

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 5, !dbg !1052
  %5 = load ptr, ptr %data5.i, align 8, !dbg !1052, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1053
  %call.i = tail call ptr @realloc(ptr noundef %5, i64 noundef %conv.i) #14, !dbg !1054
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !1046
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !1055
  br i1 %tobool6.not.i, label %return, label %if.end.i, !dbg !1056

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1057, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1058, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1059, !tbaa !381
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1059
  %7 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1044
  %idx.ext.i = zext i32 %6 to i64, !dbg !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %idx.ext.i, !dbg !1060
  %conv14.i = zext i32 %0 to i64, !dbg !1061
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %2, i64 %conv14.i, i1 false) #12, !dbg !1062
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1063, !tbaa !381
  br label %if.end14, !dbg !1064

if.else:                                          ; preds = %if.end
  %conv = zext i32 %0 to i64, !dbg !1065
  %owner = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 3, !dbg !1066
  %8 = load ptr, ptr %owner, align 8, !dbg !1066, !tbaa !151
  %9 = load ptr, ptr %8, align 8, !dbg !1067, !tbaa !177
  %call9 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %conv, i64 noundef 1, ptr noundef %9), !dbg !1068
  %cmp10.not = icmp eq i64 %call9, 1, !dbg !1069
  br i1 %cmp10.not, label %if.end14, label %return, !dbg !1070

if.end14:                                         ; preds = %mk_append_context_data.exit, %if.else
  store i32 0, ptr %d_cur, align 8, !dbg !1071, !tbaa !381
  br label %return, !dbg !1072

return:                                           ; preds = %while.end.i, %if.else, %entry, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry ], [ -1, %if.else ], [ -1, %while.end.i ], !dbg !1029
  ret i32 %retval.0, !dbg !1073
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mk_start_frame(ptr noundef %w) local_unnamed_addr #0 !dbg !1074 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !1078, metadata !DIExpression()), !dbg !1079
  %call = tail call fastcc i32 @mk_flush_frame(ptr noundef %w), !dbg !1080
  %cmp = icmp slt i32 %call, 0, !dbg !1082
  br i1 %cmp, label %return, label %if.end, !dbg !1083

if.end:                                           ; preds = %entry
  %in_frame = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 13, !dbg !1084
  store i8 1, ptr %in_frame, align 1, !dbg !1085, !tbaa !1086
  %keyframe = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 14, !dbg !1087
  store i8 0, ptr %keyframe, align 2, !dbg !1088, !tbaa !1089
  %skippable = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 15, !dbg !1090
  store i8 0, ptr %skippable, align 1, !dbg !1091, !tbaa !1092
  br label %return, !dbg !1093

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ], !dbg !1079
  ret i32 %retval.0, !dbg !1094
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_flush_frame(ptr noundef %w) unnamed_addr #0 !dbg !1095 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !1097, metadata !DIExpression()), !dbg !1104
  %in_frame = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 13, !dbg !1105
  %0 = load i8, ptr %in_frame, align 1, !dbg !1105, !tbaa !1086
  %tobool.not = icmp eq i8 %0, 0, !dbg !1107
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !1108

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 10, !dbg !1109
  %1 = load i64, ptr %frame_tc, align 8, !dbg !1109, !tbaa !1110
  %timescale = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 8, !dbg !1111
  %2 = load i64, ptr %timescale, align 8, !dbg !1111, !tbaa !225
  %div = sdiv i64 %1, %2, !dbg !1112
  %cluster_tc_scaled = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 9, !dbg !1113
  %3 = load i64, ptr %cluster_tc_scaled, align 8, !dbg !1113, !tbaa !1114
  %sub = sub nsw i64 %div, %3, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1098, metadata !DIExpression()), !dbg !1104
  %4 = add i64 %sub, -32768, !dbg !1116
  %5 = icmp ult i64 %4, -65536, !dbg !1116
  br i1 %5, label %do.body, label %if.end6, !dbg !1116

do.body:                                          ; preds = %if.end
  %call = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %w), !dbg !1118
  %cmp3 = icmp slt i32 %call, 0, !dbg !1118
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !1121

if.end6:                                          ; preds = %do.body, %if.end
  %cluster = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 3, !dbg !1122
  %6 = load ptr, ptr %cluster, align 8, !dbg !1122, !tbaa !1124
  %tobool7.not = icmp eq ptr %6, null, !dbg !1125
  br i1 %tobool7.not, label %if.then8, label %if.end28, !dbg !1126

if.then8:                                         ; preds = %if.end6
  %7 = load i64, ptr %frame_tc, align 8, !dbg !1127, !tbaa !1110
  %8 = load i64, ptr %timescale, align 8, !dbg !1129, !tbaa !225
  %div11 = sdiv i64 %7, %8, !dbg !1130
  store i64 %div11, ptr %cluster_tc_scaled, align 8, !dbg !1131, !tbaa !1114
  %root = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 2, !dbg !1132
  %9 = load ptr, ptr %root, align 8, !dbg !1132, !tbaa !168
  call void @llvm.dbg.value(metadata ptr %w, metadata !128, metadata !DIExpression()) #12, !dbg !1133
  call void @llvm.dbg.value(metadata ptr %9, metadata !133, metadata !DIExpression()) #12, !dbg !1133
  call void @llvm.dbg.value(metadata i32 524531317, metadata !134, metadata !DIExpression()) #12, !dbg !1133
  %freelist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 5, !dbg !1135
  %10 = load ptr, ptr %freelist.i, align 8, !dbg !1135, !tbaa !195
  %tobool.not.i = icmp eq ptr %10, null, !dbg !1136
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1137

if.then.i:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata ptr %10, metadata !135, metadata !DIExpression()) #12, !dbg !1133
  %11 = load ptr, ptr %10, align 8, !dbg !1138, !tbaa !204
  store ptr %11, ptr %freelist.i, align 8, !dbg !1139, !tbaa !195
  br label %if.end6.i, !dbg !1140

if.else.i:                                        ; preds = %if.then8
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) #12, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !135, metadata !DIExpression()) #12, !dbg !1133
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !1142
  br i1 %tobool4.not.i, label %mk_create_context.exit.thread, label %if.end6.i, !dbg !1143

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store ptr null, ptr %cluster, align 8, !dbg !1144, !tbaa !1124
  br label %cleanup, !dbg !1145

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %10, %if.then.i ], [ %calloc.i, %if.else.i ], !dbg !1146
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !135, metadata !DIExpression()) #12, !dbg !1133
  %parent7.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 2, !dbg !1147
  store ptr %9, ptr %parent7.i, align 8, !dbg !1148, !tbaa !242
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 3, !dbg !1149
  store ptr %w, ptr %owner.i, align 8, !dbg !1150, !tbaa !151
  %id8.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 4, !dbg !1151
  store i32 524531317, ptr %id8.i, align 8, !dbg !1152, !tbaa !247
  %actlist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 6, !dbg !1153
  %12 = load ptr, ptr %actlist.i, align 8, !dbg !1153, !tbaa !163
  %tobool10.not.i = icmp eq ptr %12, null, !dbg !1154
  br i1 %tobool10.not.i, label %do.body19, label %if.then11.i, !dbg !1155

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds %struct.mk_context, ptr %12, i64 0, i32 1, !dbg !1156
  store ptr %c.0.i, ptr %prev.i, align 8, !dbg !1157, !tbaa !161
  br label %do.body19, !dbg !1158

do.body19:                                        ; preds = %if.then11.i, %if.end6.i
  store ptr %12, ptr %c.0.i, align 8, !dbg !1159, !tbaa !204
  %prev21.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 1, !dbg !1160
  store ptr %actlist.i, ptr %prev21.i, align 8, !dbg !1161, !tbaa !161
  store ptr %c.0.i, ptr %actlist.i, align 8, !dbg !1162, !tbaa !163
  store ptr %c.0.i, ptr %cluster, align 8, !dbg !1144, !tbaa !1124
  %call22 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 231, i64 noundef %div11), !dbg !1163
  %cmp23 = icmp slt i32 %call22, 0, !dbg !1163
  br i1 %cmp23, label %cleanup, label %if.end28, !dbg !1166

if.end28:                                         ; preds = %do.body19, %if.end6
  %delta.0 = phi i64 [ %sub, %if.end6 ], [ 0, %do.body19 ], !dbg !1104
  call void @llvm.dbg.value(metadata i64 %delta.0, metadata !1098, metadata !DIExpression()), !dbg !1104
  %frame = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 4, !dbg !1167
  %13 = load ptr, ptr %frame, align 8, !dbg !1167, !tbaa !1168
  %tobool29.not = icmp eq ptr %13, null, !dbg !1169
  br i1 %tobool29.not, label %cond.end, label %cond.true, !dbg !1169

cond.true:                                        ; preds = %if.end28
  %d_cur = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 6, !dbg !1170
  %14 = load i32, ptr %d_cur, align 8, !dbg !1170, !tbaa !381
  %phi.bo = add i32 %14, 4, !dbg !1169
  br label %cond.end, !dbg !1169

cond.end:                                         ; preds = %if.end28, %cond.true
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 4, %if.end28 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1099, metadata !DIExpression()), !dbg !1104
  %15 = load ptr, ptr %cluster, align 8, !dbg !1171, !tbaa !1124
  call void @llvm.dbg.value(metadata ptr %15, metadata !349, metadata !DIExpression()) #12, !dbg !1174
  call void @llvm.dbg.value(metadata i32 163, metadata !354, metadata !DIExpression()) #12, !dbg !1174
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata i8 0, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata i8 -93, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata ptr %15, metadata !364, metadata !DIExpression()) #12, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %15, metadata !364, metadata !DIExpression()) #12, !dbg !1178
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1176
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1178
  %d_cur.i84.i = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 6, !dbg !1174
  %16 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1174, !tbaa !381
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()) #12, !dbg !1176
  %add.i85.i = add i32 %16, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %add.i85.i, metadata !371, metadata !DIExpression()) #12, !dbg !1176
  %d_max.i86.i = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 7, !dbg !1181
  %17 = load i32, ptr %d_max.i86.i, align 4, !dbg !1181, !tbaa !384
  %cmp.i87.i = icmp ugt i32 %add.i85.i, %17, !dbg !1182
  br i1 %cmp.i87.i, label %if.then.i94.i, label %entry.if.end11_crit_edge.i90.i, !dbg !1183

entry.if.end11_crit_edge.i90.i:                   ; preds = %cond.end
  %data12.phi.trans.insert.i88.i = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 5
  %.pre.i89.i = load ptr, ptr %data12.phi.trans.insert.i88.i, align 8, !dbg !1184, !tbaa !206
  br label %do.body39, !dbg !1183

if.then.i94.i:                                    ; preds = %cond.end
  %tobool.not.i91.i = icmp eq i32 %17, 0, !dbg !1185
  %shl.i92.i = shl i32 %17, 1
  %spec.select.i93.i = select i1 %tobool.not.i91.i, i32 16, i32 %shl.i92.i, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %spec.select.i93.i, metadata !375, metadata !DIExpression()) #12, !dbg !1186
  br label %while.cond.i98.i, !dbg !1187

while.cond.i98.i:                                 ; preds = %while.cond.i98.i, %if.then.i94.i
  %dn.0.i95.i = phi i32 [ %spec.select.i93.i, %if.then.i94.i ], [ %shl4.i97.i, %while.cond.i98.i ], !dbg !1186
  call void @llvm.dbg.value(metadata i32 %dn.0.i95.i, metadata !375, metadata !DIExpression()) #12, !dbg !1186
  %cmp3.i96.i = icmp ugt i32 %add.i85.i, %dn.0.i95.i, !dbg !1188
  %shl4.i97.i = shl i32 %dn.0.i95.i, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %shl4.i97.i, metadata !375, metadata !DIExpression()) #12, !dbg !1186
  br i1 %cmp3.i96.i, label %while.cond.i98.i, label %while.end.i103.i, !dbg !1187, !llvm.loop !1190

while.end.i103.i:                                 ; preds = %while.cond.i98.i
  %data5.i99.i = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 5, !dbg !1192
  %18 = load ptr, ptr %data5.i99.i, align 8, !dbg !1192, !tbaa !206
  %conv.i100.i = zext i32 %dn.0.i95.i to i64, !dbg !1193
  %call.i101.i = tail call ptr @realloc(ptr noundef %18, i64 noundef %conv.i100.i) #14, !dbg !1194
  call void @llvm.dbg.value(metadata ptr %call.i101.i, metadata !372, metadata !DIExpression()) #12, !dbg !1186
  %tobool6.not.i102.i = icmp eq ptr %call.i101.i, null, !dbg !1195
  br i1 %tobool6.not.i102.i, label %cleanup, label %if.end.i105.i, !dbg !1196

if.end.i105.i:                                    ; preds = %while.end.i103.i
  store ptr %call.i101.i, ptr %data5.i99.i, align 8, !dbg !1197, !tbaa !206
  store i32 %dn.0.i95.i, ptr %d_max.i86.i, align 4, !dbg !1198, !tbaa !384
  %.pre34.i104.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1199, !tbaa !381
  br label %do.body39

do.body39:                                        ; preds = %if.end.i105.i, %entry.if.end11_crit_edge.i90.i
  %19 = phi i32 [ %16, %entry.if.end11_crit_edge.i90.i ], [ %.pre34.i104.i, %if.end.i105.i ], !dbg !1199
  %20 = phi ptr [ %.pre.i89.i, %entry.if.end11_crit_edge.i90.i ], [ %call.i101.i, %if.end.i105.i ], !dbg !1184
  %idx.ext.i106.i = zext i32 %19 to i64, !dbg !1200
  %add.ptr.i107.i = getelementptr inbounds i8, ptr %20, i64 %idx.ext.i106.i, !dbg !1200
  store i8 -93, ptr %add.ptr.i107.i, align 1, !dbg !1201
  store i32 %add.i85.i, ptr %d_cur.i84.i, align 8, !dbg !1202, !tbaa !381
  %21 = load ptr, ptr %cluster, align 8, !dbg !1203, !tbaa !1124
  %call41 = tail call fastcc i32 @mk_write_size(ptr noundef %21, i32 noundef %cond), !dbg !1203
  %cmp42 = icmp slt i32 %call41, 0, !dbg !1203
  br i1 %cmp42, label %cleanup, label %do.body47, !dbg !1206

do.body47:                                        ; preds = %do.body39
  %22 = load ptr, ptr %cluster, align 8, !dbg !1207, !tbaa !1124
  call void @llvm.dbg.value(metadata ptr %22, metadata !874, metadata !DIExpression()) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i32 1, metadata !877, metadata !DIExpression()) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i8 8, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i8 -127, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)) #12, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %22, metadata !364, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()) #12, !dbg !1212
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 6, !dbg !1214
  %23 = load i32, ptr %d_cur.i.i, align 8, !dbg !1214, !tbaa !381
  %add.i.i = add i32 %23, 1, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !371, metadata !DIExpression()) #12, !dbg !1212
  %d_max.i.i = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 7, !dbg !1216
  %24 = load i32, ptr %d_max.i.i, align 4, !dbg !1216, !tbaa !384
  %cmp.i.i = icmp ugt i32 %add.i.i, %24, !dbg !1217
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1218

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body47
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1219, !tbaa !206
  br label %do.end54, !dbg !1218

if.then.i.i:                                      ; preds = %do.body47
  %tobool.not.i.i = icmp eq i32 %24, 0, !dbg !1220
  %shl.i.i = shl i32 %24, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1221
  br label %while.cond.i.i, !dbg !1222

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1221
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1221
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1223
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %shl4.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1221
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1222, !llvm.loop !1225

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, ptr %22, i64 0, i32 5, !dbg !1227
  %25 = load ptr, ptr %data5.i.i, align 8, !dbg !1227, !tbaa !206
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1228
  %call.i.i = tail call ptr @realloc(ptr noundef %25, i64 noundef %conv.i.i) #14, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !372, metadata !DIExpression()) #12, !dbg !1221
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1230
  br i1 %tobool6.not.i.i, label %cleanup, label %if.end.i.i, !dbg !1231

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1232, !tbaa !206
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !1233, !tbaa !384
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !1234, !tbaa !381
  br label %do.end54

do.end54:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %26 = phi i32 [ %23, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1234
  %27 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1219
  %idx.ext.i.i = zext i32 %26 to i64, !dbg !1235
  %add.ptr.i.i = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i.i, !dbg !1235
  store i8 -127, ptr %add.ptr.i.i, align 1, !dbg !1236
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !1237, !tbaa !381
  %28 = lshr i64 %delta.0, 8, !dbg !1238
  %conv = trunc i64 %28 to i8, !dbg !1239
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1100, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1104
  %conv55 = trunc i64 %delta.0 to i8, !dbg !1240
  call void @llvm.dbg.value(metadata i8 %conv55, metadata !1100, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1104
  %keyframe = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 14, !dbg !1241
  %29 = load i8, ptr %keyframe, align 2, !dbg !1241, !tbaa !1089
  %shl = shl i8 %29, 7, !dbg !1242
  %skippable = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 15, !dbg !1243
  %30 = load i8, ptr %skippable, align 1, !dbg !1243, !tbaa !1092
  %or = or i8 %shl, %30, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %or, metadata !1100, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1104
  %31 = load ptr, ptr %cluster, align 8, !dbg !1245, !tbaa !1124
  call void @llvm.dbg.value(metadata ptr %31, metadata !364, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i32 3, metadata !370, metadata !DIExpression()) #12, !dbg !1248
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %31, i64 0, i32 6, !dbg !1250
  %32 = load i32, ptr %d_cur.i, align 8, !dbg !1250, !tbaa !381
  %add.i = add i32 %32, 3, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !1248
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %31, i64 0, i32 7, !dbg !1252
  %33 = load i32, ptr %d_max.i, align 4, !dbg !1252, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %33, !dbg !1253
  br i1 %cmp.i, label %if.then.i143, label %entry.if.end11_crit_edge.i, !dbg !1254

entry.if.end11_crit_edge.i:                       ; preds = %do.end54
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %31, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1255, !tbaa !206
  br label %do.end69, !dbg !1254

if.then.i143:                                     ; preds = %do.end54
  %tobool.not.i142 = icmp eq i32 %33, 0, !dbg !1256
  %shl.i = shl i32 %33, 1
  %spec.select.i = select i1 %tobool.not.i142, i32 16, i32 %shl.i, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !1257
  br label %while.cond.i, !dbg !1258

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i143
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i143 ], [ %shl4.i, %while.cond.i ], !dbg !1257
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !1257
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1259
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !1257
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1258, !llvm.loop !1261

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %31, i64 0, i32 5, !dbg !1263
  %34 = load ptr, ptr %data5.i, align 8, !dbg !1263, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1264
  %call.i = tail call ptr @realloc(ptr noundef %34, i64 noundef %conv.i) #14, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !1257
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !1266
  br i1 %tobool6.not.i, label %cleanup, label %if.end.i, !dbg !1267

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1268, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1269, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1270, !tbaa !381
  br label %do.end69

do.end69:                                         ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %35 = phi i32 [ %32, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1270
  %36 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1255
  %idx.ext.i = zext i32 %35 to i64, !dbg !1271
  %add.ptr.i = getelementptr inbounds i8, ptr %36, i64 %idx.ext.i, !dbg !1271
  store i8 %conv, ptr %add.ptr.i, align 1, !dbg !1272
  %c_delta_flags.sroa.4.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1272
  store i8 %conv55, ptr %c_delta_flags.sroa.4.0.add.ptr.i.sroa_idx, align 1, !dbg !1272
  %c_delta_flags.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1272
  store i8 %or, ptr %c_delta_flags.sroa.5.0.add.ptr.i.sroa_idx, align 1, !dbg !1272
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1273, !tbaa !381
  %37 = load ptr, ptr %frame, align 8, !dbg !1274, !tbaa !1168
  %tobool71.not = icmp eq ptr %37, null, !dbg !1276
  br i1 %tobool71.not, label %if.end87, label %do.body73, !dbg !1277

do.body73:                                        ; preds = %do.end69
  %38 = load ptr, ptr %cluster, align 8, !dbg !1278, !tbaa !1124
  %data = getelementptr inbounds %struct.mk_context, ptr %37, i64 0, i32 5, !dbg !1278
  %39 = load ptr, ptr %data, align 8, !dbg !1278, !tbaa !206
  %d_cur77 = getelementptr inbounds %struct.mk_context, ptr %37, i64 0, i32 6, !dbg !1278
  %40 = load i32, ptr %d_cur77, align 8, !dbg !1278, !tbaa !381
  call void @llvm.dbg.value(metadata ptr %38, metadata !364, metadata !DIExpression()) #12, !dbg !1282
  call void @llvm.dbg.value(metadata ptr %39, metadata !369, metadata !DIExpression()) #12, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %40, metadata !370, metadata !DIExpression()) #12, !dbg !1282
  %d_cur.i144 = getelementptr inbounds %struct.mk_context, ptr %38, i64 0, i32 6, !dbg !1284
  %41 = load i32, ptr %d_cur.i144, align 8, !dbg !1284, !tbaa !381
  %add.i145 = add i32 %41, %40, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %add.i145, metadata !371, metadata !DIExpression()) #12, !dbg !1282
  %d_max.i146 = getelementptr inbounds %struct.mk_context, ptr %38, i64 0, i32 7, !dbg !1286
  %42 = load i32, ptr %d_max.i146, align 4, !dbg !1286, !tbaa !384
  %cmp.i147 = icmp ugt i32 %add.i145, %42, !dbg !1287
  br i1 %cmp.i147, label %if.then.i154, label %entry.if.end11_crit_edge.i150, !dbg !1288

entry.if.end11_crit_edge.i150:                    ; preds = %do.body73
  %data12.phi.trans.insert.i148 = getelementptr inbounds %struct.mk_context, ptr %38, i64 0, i32 5
  %.pre.i149 = load ptr, ptr %data12.phi.trans.insert.i148, align 8, !dbg !1289, !tbaa !206
  br label %do.end84, !dbg !1288

if.then.i154:                                     ; preds = %do.body73
  %tobool.not.i151 = icmp eq i32 %42, 0, !dbg !1290
  %shl.i152 = shl i32 %42, 1
  %spec.select.i153 = select i1 %tobool.not.i151, i32 16, i32 %shl.i152, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %spec.select.i153, metadata !375, metadata !DIExpression()) #12, !dbg !1291
  br label %while.cond.i158, !dbg !1292

while.cond.i158:                                  ; preds = %while.cond.i158, %if.then.i154
  %dn.0.i155 = phi i32 [ %spec.select.i153, %if.then.i154 ], [ %shl4.i157, %while.cond.i158 ], !dbg !1291
  call void @llvm.dbg.value(metadata i32 %dn.0.i155, metadata !375, metadata !DIExpression()) #12, !dbg !1291
  %cmp3.i156 = icmp ugt i32 %add.i145, %dn.0.i155, !dbg !1293
  %shl4.i157 = shl i32 %dn.0.i155, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %shl4.i157, metadata !375, metadata !DIExpression()) #12, !dbg !1291
  br i1 %cmp3.i156, label %while.cond.i158, label %while.end.i163, !dbg !1292, !llvm.loop !1295

while.end.i163:                                   ; preds = %while.cond.i158
  %data5.i159 = getelementptr inbounds %struct.mk_context, ptr %38, i64 0, i32 5, !dbg !1297
  %43 = load ptr, ptr %data5.i159, align 8, !dbg !1297, !tbaa !206
  %conv.i160 = zext i32 %dn.0.i155 to i64, !dbg !1298
  %call.i161 = tail call ptr @realloc(ptr noundef %43, i64 noundef %conv.i160) #14, !dbg !1299
  call void @llvm.dbg.value(metadata ptr %call.i161, metadata !372, metadata !DIExpression()) #12, !dbg !1291
  %tobool6.not.i162 = icmp eq ptr %call.i161, null, !dbg !1300
  br i1 %tobool6.not.i162, label %cleanup, label %if.end.i165, !dbg !1301

if.end.i165:                                      ; preds = %while.end.i163
  store ptr %call.i161, ptr %data5.i159, align 8, !dbg !1302, !tbaa !206
  store i32 %dn.0.i155, ptr %d_max.i146, align 4, !dbg !1303, !tbaa !384
  %.pre34.i164 = load i32, ptr %d_cur.i144, align 8, !dbg !1304, !tbaa !381
  br label %do.end84

do.end84:                                         ; preds = %if.end.i165, %entry.if.end11_crit_edge.i150
  %44 = phi i32 [ %41, %entry.if.end11_crit_edge.i150 ], [ %.pre34.i164, %if.end.i165 ], !dbg !1304
  %45 = phi ptr [ %.pre.i149, %entry.if.end11_crit_edge.i150 ], [ %call.i161, %if.end.i165 ], !dbg !1289
  %idx.ext.i166 = zext i32 %44 to i64, !dbg !1305
  %add.ptr.i167 = getelementptr inbounds i8, ptr %45, i64 %idx.ext.i166, !dbg !1305
  %conv14.i = zext i32 %40 to i64, !dbg !1306
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i167, ptr align 1 %39, i64 %conv14.i, i1 false) #12, !dbg !1307
  store i32 %add.i145, ptr %d_cur.i144, align 8, !dbg !1308, !tbaa !381
  %46 = load ptr, ptr %frame, align 8, !dbg !1309, !tbaa !1168
  %d_cur86 = getelementptr inbounds %struct.mk_context, ptr %46, i64 0, i32 6, !dbg !1310
  store i32 0, ptr %d_cur86, align 8, !dbg !1311, !tbaa !381
  br label %if.end87, !dbg !1312

if.end87:                                         ; preds = %do.end84, %do.end69
  store i8 0, ptr %in_frame, align 1, !dbg !1313, !tbaa !1086
  %47 = load ptr, ptr %cluster, align 8, !dbg !1314, !tbaa !1124
  %d_cur90 = getelementptr inbounds %struct.mk_context, ptr %47, i64 0, i32 6, !dbg !1316
  %48 = load i32, ptr %d_cur90, align 8, !dbg !1316, !tbaa !381
  %cmp91 = icmp ugt i32 %48, 1048576, !dbg !1317
  br i1 %cmp91, label %do.body94, label %if.end102, !dbg !1318

do.body94:                                        ; preds = %if.end87
  %call95 = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %w), !dbg !1319
  %cmp96 = icmp slt i32 %call95, 0, !dbg !1319
  br i1 %cmp96, label %cleanup, label %if.end102, !dbg !1322

if.end102:                                        ; preds = %do.body94, %if.end87
  br label %cleanup, !dbg !1323

cleanup:                                          ; preds = %while.end.i163, %while.end.i, %while.end.i.i, %while.end.i103.i, %mk_create_context.exit.thread, %do.body94, %do.body39, %do.body19, %do.body, %entry, %if.end102
  %retval.0 = phi i32 [ 0, %if.end102 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %do.body19 ], [ -1, %do.body39 ], [ -1, %do.body94 ], [ -1, %mk_create_context.exit.thread ], [ -1, %while.end.i103.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i ], [ -1, %while.end.i163 ], !dbg !1104
  ret i32 %retval.0, !dbg !1324
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i32 @mk_set_frame_flags(ptr nocapture noundef %w, i64 noundef %timestamp, i32 noundef %keyframe, i32 noundef %skippable) local_unnamed_addr #8 !dbg !1325 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !1329, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %timestamp, metadata !1330, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %keyframe, metadata !1331, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %skippable, metadata !1332, metadata !DIExpression()), !dbg !1333
  %in_frame = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 13, !dbg !1334
  %0 = load i8, ptr %in_frame, align 1, !dbg !1334, !tbaa !1086
  %tobool.not = icmp eq i8 %0, 0, !dbg !1336
  br i1 %tobool.not, label %return, label %if.end, !dbg !1337

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 10, !dbg !1338
  store i64 %timestamp, ptr %frame_tc, align 8, !dbg !1339, !tbaa !1110
  %cmp = icmp ne i32 %keyframe, 0, !dbg !1340
  %conv1 = zext i1 %cmp to i8, !dbg !1341
  %keyframe2 = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 14, !dbg !1342
  store i8 %conv1, ptr %keyframe2, align 2, !dbg !1343, !tbaa !1089
  %cmp3 = icmp ne i32 %skippable, 0, !dbg !1344
  %conv5 = zext i1 %cmp3 to i8, !dbg !1345
  %skippable6 = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 15, !dbg !1346
  store i8 %conv5, ptr %skippable6, align 1, !dbg !1347, !tbaa !1092
  %max_frame_tc = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 11, !dbg !1348
  %1 = load i64, ptr %max_frame_tc, align 8, !dbg !1348, !tbaa !1350
  %cmp7 = icmp slt i64 %1, %timestamp, !dbg !1351
  br i1 %cmp7, label %if.then9, label %return, !dbg !1352

if.then9:                                         ; preds = %if.end
  store i64 %timestamp, ptr %max_frame_tc, align 8, !dbg !1353, !tbaa !1350
  br label %return, !dbg !1354

return:                                           ; preds = %if.end, %if.then9, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.then9 ], [ 0, %if.end ], !dbg !1333
  ret i32 %retval.0, !dbg !1355
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mk_add_frame_data(ptr noundef %w, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 !dbg !1356 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %data, metadata !1361, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i32 %size, metadata !1362, metadata !DIExpression()), !dbg !1363
  %in_frame = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 13, !dbg !1364
  %0 = load i8, ptr %in_frame, align 1, !dbg !1364, !tbaa !1086
  %tobool.not = icmp eq i8 %0, 0, !dbg !1366
  br i1 %tobool.not, label %return, label %if.end, !dbg !1367

if.end:                                           ; preds = %entry
  %frame = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 4, !dbg !1368
  %1 = load ptr, ptr %frame, align 8, !dbg !1368, !tbaa !1168
  %tobool1.not = icmp eq ptr %1, null, !dbg !1370
  br i1 %tobool1.not, label %if.then2, label %if.end7, !dbg !1371

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %w, metadata !128, metadata !DIExpression()) #12, !dbg !1372
  call void @llvm.dbg.value(metadata ptr null, metadata !133, metadata !DIExpression()) #12, !dbg !1372
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()) #12, !dbg !1372
  %freelist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 5, !dbg !1375
  %2 = load ptr, ptr %freelist.i, align 8, !dbg !1375, !tbaa !195
  %tobool.not.i = icmp eq ptr %2, null, !dbg !1376
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1377

if.then.i:                                        ; preds = %if.then2
  call void @llvm.dbg.value(metadata ptr %2, metadata !135, metadata !DIExpression()) #12, !dbg !1372
  %3 = load ptr, ptr %2, align 8, !dbg !1378, !tbaa !204
  store ptr %3, ptr %freelist.i, align 8, !dbg !1379, !tbaa !195
  br label %if.end6.i, !dbg !1380

if.else.i:                                        ; preds = %if.then2
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) #12, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !135, metadata !DIExpression()) #12, !dbg !1372
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !1382
  br i1 %tobool4.not.i, label %mk_create_context.exit.thread, label %if.end6.i, !dbg !1383

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store ptr null, ptr %frame, align 8, !dbg !1384, !tbaa !1168
  br label %return, !dbg !1385

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %2, %if.then.i ], [ %calloc.i, %if.else.i ], !dbg !1386
  call void @llvm.dbg.value(metadata ptr %c.0.i, metadata !135, metadata !DIExpression()) #12, !dbg !1372
  %parent7.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 2, !dbg !1387
  store ptr null, ptr %parent7.i, align 8, !dbg !1388, !tbaa !242
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 3, !dbg !1389
  store ptr %w, ptr %owner.i, align 8, !dbg !1390, !tbaa !151
  %id8.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 4, !dbg !1391
  store i32 0, ptr %id8.i, align 8, !dbg !1392, !tbaa !247
  %actlist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 6, !dbg !1393
  %4 = load ptr, ptr %actlist.i, align 8, !dbg !1393, !tbaa !163
  %tobool10.not.i = icmp eq ptr %4, null, !dbg !1394
  br i1 %tobool10.not.i, label %mk_create_context.exit, label %if.then11.i, !dbg !1395

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds %struct.mk_context, ptr %4, i64 0, i32 1, !dbg !1396
  store ptr %c.0.i, ptr %prev.i, align 8, !dbg !1397, !tbaa !161
  br label %mk_create_context.exit, !dbg !1398

mk_create_context.exit:                           ; preds = %if.end6.i, %if.then11.i
  store ptr %4, ptr %c.0.i, align 8, !dbg !1399, !tbaa !204
  %prev21.i = getelementptr inbounds %struct.mk_context, ptr %c.0.i, i64 0, i32 1, !dbg !1400
  store ptr %actlist.i, ptr %prev21.i, align 8, !dbg !1401, !tbaa !161
  store ptr %c.0.i, ptr %actlist.i, align 8, !dbg !1402, !tbaa !163
  store ptr %c.0.i, ptr %frame, align 8, !dbg !1384, !tbaa !1168
  br label %if.end7, !dbg !1385

if.end7:                                          ; preds = %mk_create_context.exit, %if.end
  %5 = phi ptr [ %c.0.i, %mk_create_context.exit ], [ %1, %if.end ], !dbg !1403
  call void @llvm.dbg.value(metadata ptr %5, metadata !364, metadata !DIExpression()) #12, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %data, metadata !369, metadata !DIExpression()) #12, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %size, metadata !370, metadata !DIExpression()) #12, !dbg !1404
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 6, !dbg !1406
  %6 = load i32, ptr %d_cur.i, align 8, !dbg !1406, !tbaa !381
  %add.i = add i32 %6, %size, !dbg !1407
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !1404
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 7, !dbg !1408
  %7 = load i32, ptr %d_max.i, align 4, !dbg !1408, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %7, !dbg !1409
  br i1 %cmp.i, label %if.then.i15, label %entry.if.end11_crit_edge.i, !dbg !1410

entry.if.end11_crit_edge.i:                       ; preds = %if.end7
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1411, !tbaa !206
  br label %if.end11.i, !dbg !1410

if.then.i15:                                      ; preds = %if.end7
  %tobool.not.i14 = icmp eq i32 %7, 0, !dbg !1412
  %shl.i = shl i32 %7, 1
  %spec.select.i = select i1 %tobool.not.i14, i32 16, i32 %shl.i, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !1413
  br label %while.cond.i, !dbg !1414

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i15
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i15 ], [ %shl4.i, %while.cond.i ], !dbg !1413
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !1413
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1415
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !1413
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1414, !llvm.loop !1417

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 5, !dbg !1419
  %8 = load ptr, ptr %data5.i, align 8, !dbg !1419, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1420
  %call.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i) #14, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !1413
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !1422
  br i1 %tobool6.not.i, label %return, label %if.end.i, !dbg !1423

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1424, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1425, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1426, !tbaa !381
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %9 = phi i32 [ %6, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1426
  %10 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1411
  %idx.ext.i = zext i32 %9 to i64, !dbg !1427
  %add.ptr.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i, !dbg !1427
  %conv14.i = zext i32 %size to i64, !dbg !1428
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %data, i64 %conv14.i, i1 false) #12, !dbg !1429
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1430, !tbaa !381
  br label %return, !dbg !1431

return:                                           ; preds = %if.end11.i, %while.end.i, %mk_create_context.exit.thread, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %mk_create_context.exit.thread ], [ 0, %if.end11.i ], [ -1, %while.end.i ], !dbg !1363
  ret i32 %retval.0, !dbg !1432
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mk_close(ptr noundef %w, i64 noundef %last_delta) local_unnamed_addr #0 !dbg !1433 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !1437, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %last_delta, metadata !1438, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 0, metadata !1439, metadata !DIExpression()), !dbg !1444
  %call = tail call fastcc i32 @mk_flush_frame(ptr noundef %w), !dbg !1445
  %cmp = icmp slt i32 %call, 0, !dbg !1447
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1448

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @mk_close_cluster(ptr noundef %w), !dbg !1449
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1450
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1451

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.value(metadata i32 -1, metadata !1439, metadata !DIExpression()), !dbg !1444
  br label %if.end, !dbg !1452

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %lor.lhs.false ], !dbg !1444
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !1439, metadata !DIExpression()), !dbg !1444
  %wrote_header = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 12, !dbg !1453
  %0 = load i8, ptr %wrote_header, align 8, !dbg !1453, !tbaa !283
  %tobool.not = icmp eq i8 %0, 0, !dbg !1454
  br i1 %tobool.not, label %if.end25, label %land.lhs.true, !dbg !1455

land.lhs.true:                                    ; preds = %if.end
  %1 = load ptr, ptr %w, align 8, !dbg !1456, !tbaa !177
  %duration_ptr = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 1, !dbg !1457
  %2 = load i32, ptr %duration_ptr, align 8, !dbg !1457, !tbaa !489
  %conv8 = zext i32 %2 to i64, !dbg !1458
  %call9 = tail call i32 @fseek(ptr noundef %1, i64 noundef %conv8, i32 noundef 0), !dbg !1459
  %def_duration = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 7, !dbg !1460
  %3 = load i64, ptr %def_duration, align 8, !dbg !1460, !tbaa !290
  %tobool10.not = icmp eq i64 %3, 0, !dbg !1461
  %spec.select = select i1 %tobool10.not, i64 %last_delta, i64 %3, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1440, metadata !DIExpression()), !dbg !1462
  %max_frame_tc = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 11, !dbg !1463
  %4 = load i64, ptr %max_frame_tc, align 8, !dbg !1463, !tbaa !1350
  %add = add nsw i64 %spec.select, %4, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %add, metadata !1443, metadata !DIExpression()), !dbg !1462
  %root = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 2, !dbg !1465
  %5 = load ptr, ptr %root, align 8, !dbg !1465, !tbaa !168
  %conv12 = sitofp i64 %add to double, !dbg !1467
  %timescale = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 8, !dbg !1468
  %6 = load i64, ptr %timescale, align 8, !dbg !1468, !tbaa !225
  %conv13 = sitofp i64 %6 to double, !dbg !1469
  %div = fdiv double %conv12, %conv13, !dbg !1470
  %conv14 = fptrunc double %div to float, !dbg !1471
  call void @llvm.dbg.value(metadata ptr %5, metadata !913, metadata !DIExpression()) #12, !dbg !1472
  call void @llvm.dbg.value(metadata float %conv14, metadata !918, metadata !DIExpression()) #12, !dbg !1472
  call void @llvm.dbg.value(metadata float %conv14, metadata !919, metadata !DIExpression()) #12, !dbg !1472
  %7 = bitcast float %conv14 to i32, !dbg !1474
  %shr.i = lshr i32 %7, 24, !dbg !1475
  %conv.i = trunc i32 %shr.i to i8, !dbg !1476
  call void @llvm.dbg.value(metadata i8 %conv.i, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)) #12, !dbg !1472
  %shr1.i = lshr i32 %7, 16, !dbg !1477
  %conv2.i = trunc i32 %shr1.i to i8, !dbg !1478
  call void @llvm.dbg.value(metadata i8 %conv2.i, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)) #12, !dbg !1472
  %shr4.i = lshr i32 %7, 8, !dbg !1479
  %conv5.i = trunc i32 %shr4.i to i8, !dbg !1480
  call void @llvm.dbg.value(metadata i8 %conv5.i, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)) #12, !dbg !1472
  %conv7.i = trunc i32 %7 to i8, !dbg !1481
  call void @llvm.dbg.value(metadata i8 %conv7.i, metadata !924, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)) #12, !dbg !1472
  call void @llvm.dbg.value(metadata ptr %5, metadata !364, metadata !DIExpression()) #12, !dbg !1482
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1482
  call void @llvm.dbg.value(metadata i32 4, metadata !370, metadata !DIExpression()) #12, !dbg !1482
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 6, !dbg !1484
  %8 = load i32, ptr %d_cur.i.i, align 8, !dbg !1484, !tbaa !381
  %add.i.i = add i32 %8, 4, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !371, metadata !DIExpression()) #12, !dbg !1482
  %d_max.i.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 7, !dbg !1486
  %9 = load i32, ptr %d_max.i.i, align 4, !dbg !1486, !tbaa !384
  %cmp.i.i = icmp ugt i32 %add.i.i, %9, !dbg !1487
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1488

entry.if.end11_crit_edge.i.i:                     ; preds = %land.lhs.true
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1489, !tbaa !206
  br label %lor.lhs.false18, !dbg !1488

if.then.i.i:                                      ; preds = %land.lhs.true
  %tobool.not.i.i = icmp eq i32 %9, 0, !dbg !1490
  %shl.i.i = shl i32 %9, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1490
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1491
  br label %while.cond.i.i, !dbg !1492

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1491
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1491
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1493
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %shl4.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1491
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1492, !llvm.loop !1495

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, ptr %5, i64 0, i32 5, !dbg !1497
  %10 = load ptr, ptr %data5.i.i, align 8, !dbg !1497, !tbaa !206
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1498
  %call.i.i = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i.i) #14, !dbg !1499
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !372, metadata !DIExpression()) #12, !dbg !1491
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1500
  br i1 %tobool6.not.i.i, label %if.end25, label %if.end.i.i, !dbg !1501

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1502, !tbaa !206
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !1503, !tbaa !384
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !1504, !tbaa !381
  br label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %11 = phi i32 [ %8, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1504
  %12 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1489
  %idx.ext.i.i = zext i32 %11 to i64, !dbg !1505
  %add.ptr.i.i = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i.i, !dbg !1505
  store i8 %conv.i, ptr %add.ptr.i.i, align 1, !dbg !1506
  %c_f.sroa.4.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 1, !dbg !1506
  store i8 %conv2.i, ptr %c_f.sroa.4.0.add.ptr.i.sroa_idx.i, align 1, !dbg !1506
  %c_f.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 2, !dbg !1506
  store i8 %conv5.i, ptr %c_f.sroa.5.0.add.ptr.i.sroa_idx.i, align 1, !dbg !1506
  %c_f.sroa.6.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 3, !dbg !1506
  store i8 %conv7.i, ptr %c_f.sroa.6.0.add.ptr.i.sroa_idx.i, align 1, !dbg !1506
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !1507, !tbaa !381
  %13 = load ptr, ptr %root, align 8, !dbg !1508, !tbaa !168
  call void @llvm.dbg.value(metadata ptr %13, metadata !718, metadata !DIExpression()) #12, !dbg !1509
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 6, !dbg !1511
  %14 = load i32, ptr %d_cur.i, align 8, !dbg !1511, !tbaa !381
  %tobool.not.i = icmp eq i32 %14, 0, !dbg !1512
  br i1 %tobool.not.i, label %if.end25, label %if.end.i, !dbg !1513

if.end.i:                                         ; preds = %lor.lhs.false18
  %parent.i = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 2, !dbg !1514
  %15 = load ptr, ptr %parent.i, align 8, !dbg !1514, !tbaa !242
  %tobool1.not.i = icmp eq ptr %15, null, !dbg !1515
  %data7.i = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 5, !dbg !1516
  %16 = load ptr, ptr %data7.i, align 8, !dbg !1516, !tbaa !206
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i, !dbg !1517

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %15, metadata !364, metadata !DIExpression()) #12, !dbg !1518
  call void @llvm.dbg.value(metadata ptr %16, metadata !369, metadata !DIExpression()) #12, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %14, metadata !370, metadata !DIExpression()) #12, !dbg !1518
  %d_cur.i.i42 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 6, !dbg !1520
  %17 = load i32, ptr %d_cur.i.i42, align 8, !dbg !1520, !tbaa !381
  %add.i.i43 = add i32 %17, %14, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %add.i.i43, metadata !371, metadata !DIExpression()) #12, !dbg !1518
  %d_max.i.i44 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 7, !dbg !1522
  %18 = load i32, ptr %d_max.i.i44, align 4, !dbg !1522, !tbaa !384
  %cmp.i.i45 = icmp ugt i32 %add.i.i43, %18, !dbg !1523
  br i1 %cmp.i.i45, label %if.then.i.i52, label %entry.if.end11_crit_edge.i.i48, !dbg !1524

entry.if.end11_crit_edge.i.i48:                   ; preds = %do.body.i
  %data12.phi.trans.insert.i.i46 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 5
  %.pre.i.i47 = load ptr, ptr %data12.phi.trans.insert.i.i46, align 8, !dbg !1525, !tbaa !206
  br label %mk_append_context_data.exit.i, !dbg !1524

if.then.i.i52:                                    ; preds = %do.body.i
  %tobool.not.i.i49 = icmp eq i32 %18, 0, !dbg !1526
  %shl.i.i50 = shl i32 %18, 1
  %spec.select.i.i51 = select i1 %tobool.not.i.i49, i32 16, i32 %shl.i.i50, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i51, metadata !375, metadata !DIExpression()) #12, !dbg !1527
  br label %while.cond.i.i56, !dbg !1528

while.cond.i.i56:                                 ; preds = %while.cond.i.i56, %if.then.i.i52
  %dn.0.i.i53 = phi i32 [ %spec.select.i.i51, %if.then.i.i52 ], [ %shl4.i.i55, %while.cond.i.i56 ], !dbg !1527
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i53, metadata !375, metadata !DIExpression()) #12, !dbg !1527
  %cmp3.i.i54 = icmp ugt i32 %add.i.i43, %dn.0.i.i53, !dbg !1529
  %shl4.i.i55 = shl i32 %dn.0.i.i53, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i32 %shl4.i.i55, metadata !375, metadata !DIExpression()) #12, !dbg !1527
  br i1 %cmp3.i.i54, label %while.cond.i.i56, label %while.end.i.i61, !dbg !1528, !llvm.loop !1531

while.end.i.i61:                                  ; preds = %while.cond.i.i56
  %data5.i.i57 = getelementptr inbounds %struct.mk_context, ptr %15, i64 0, i32 5, !dbg !1533
  %19 = load ptr, ptr %data5.i.i57, align 8, !dbg !1533, !tbaa !206
  %conv.i.i58 = zext i32 %dn.0.i.i53 to i64, !dbg !1534
  %call.i.i59 = tail call ptr @realloc(ptr noundef %19, i64 noundef %conv.i.i58) #14, !dbg !1535
  call void @llvm.dbg.value(metadata ptr %call.i.i59, metadata !372, metadata !DIExpression()) #12, !dbg !1527
  %tobool6.not.i.i60 = icmp eq ptr %call.i.i59, null, !dbg !1536
  br i1 %tobool6.not.i.i60, label %if.end25, label %if.end.i.i63, !dbg !1537

if.end.i.i63:                                     ; preds = %while.end.i.i61
  store ptr %call.i.i59, ptr %data5.i.i57, align 8, !dbg !1538, !tbaa !206
  store i32 %dn.0.i.i53, ptr %d_max.i.i44, align 4, !dbg !1539, !tbaa !384
  %.pre34.i.i62 = load i32, ptr %d_cur.i.i42, align 8, !dbg !1540, !tbaa !381
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i63, %entry.if.end11_crit_edge.i.i48
  %20 = phi i32 [ %17, %entry.if.end11_crit_edge.i.i48 ], [ %.pre34.i.i62, %if.end.i.i63 ], !dbg !1540
  %21 = phi ptr [ %.pre.i.i47, %entry.if.end11_crit_edge.i.i48 ], [ %call.i.i59, %if.end.i.i63 ], !dbg !1525
  %idx.ext.i.i64 = zext i32 %20 to i64, !dbg !1541
  %add.ptr.i.i65 = getelementptr inbounds i8, ptr %21, i64 %idx.ext.i.i64, !dbg !1541
  %conv14.i.i = zext i32 %14 to i64, !dbg !1542
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i65, ptr align 1 %16, i64 %conv14.i.i, i1 false) #12, !dbg !1543
  store i32 %add.i.i43, ptr %d_cur.i.i42, align 8, !dbg !1544, !tbaa !381
  br label %if.end14.i, !dbg !1545

if.else.i:                                        ; preds = %if.end.i
  %conv.i66 = zext i32 %14 to i64, !dbg !1546
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 3, !dbg !1547
  %22 = load ptr, ptr %owner.i, align 8, !dbg !1547, !tbaa !151
  %23 = load ptr, ptr %22, align 8, !dbg !1548, !tbaa !177
  %call9.i = tail call i64 @fwrite(ptr noundef %16, i64 noundef %conv.i66, i64 noundef 1, ptr noundef %23) #12, !dbg !1549
  %cmp10.not.i = icmp eq i64 %call9.i, 1, !dbg !1550
  br i1 %cmp10.not.i, label %if.end14.i, label %if.end25, !dbg !1551

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8, !dbg !1552, !tbaa !381
  br label %if.end25, !dbg !1553

if.end25:                                         ; preds = %while.end.i.i61, %if.else.i, %while.end.i.i, %if.end14.i, %lor.lhs.false18, %if.end
  %ret.2 = phi i32 [ %ret.0, %if.end ], [ %ret.0, %lor.lhs.false18 ], [ %ret.0, %if.end14.i ], [ -1, %while.end.i.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i61 ], !dbg !1444
  call void @llvm.dbg.value(metadata i32 %ret.2, metadata !1439, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %w, metadata !181, metadata !DIExpression()) #12, !dbg !1554
  %freelist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 5, !dbg !1556
  %24 = load ptr, ptr %freelist.i, align 8, !dbg !1556, !tbaa !195
  call void @llvm.dbg.value(metadata ptr %24, metadata !187, metadata !DIExpression()) #12, !dbg !1557
  %tobool.not24.i = icmp eq ptr %24, null, !dbg !1558
  br i1 %tobool.not24.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !1558

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.end25
  %actlist.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 6, !dbg !1559
  %25 = load ptr, ptr %actlist.i, align 8, !dbg !1559, !tbaa !163
  call void @llvm.dbg.value(metadata ptr %25, metadata !189, metadata !DIExpression()) #12, !dbg !1560
  %tobool4.not26.i = icmp eq ptr %25, null, !dbg !1561
  br i1 %tobool4.not26.i, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !1561

for.body.i:                                       ; preds = %if.end25, %for.body.i
  %cur.025.i = phi ptr [ %26, %for.body.i ], [ %24, %if.end25 ]
  call void @llvm.dbg.value(metadata ptr %cur.025.i, metadata !187, metadata !DIExpression()) #12, !dbg !1557
  %26 = load ptr, ptr %cur.025.i, align 8, !dbg !1562, !tbaa !204
  call void @llvm.dbg.value(metadata ptr %26, metadata !186, metadata !DIExpression()) #12, !dbg !1554
  %data.i = getelementptr inbounds %struct.mk_context, ptr %cur.025.i, i64 0, i32 5, !dbg !1563
  %27 = load ptr, ptr %data.i, align 8, !dbg !1563, !tbaa !206
  tail call void @free(ptr noundef %27) #12, !dbg !1564
  tail call void @free(ptr noundef nonnull %cur.025.i) #12, !dbg !1565
  call void @llvm.dbg.value(metadata ptr %26, metadata !187, metadata !DIExpression()) #12, !dbg !1557
  %tobool.not.i67 = icmp eq ptr %26, null, !dbg !1558
  br i1 %tobool.not.i67, label %for.cond.cleanup.i, label %for.body.i, !dbg !1558, !llvm.loop !1566

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.027.i = phi ptr [ %28, %for.body6.i ], [ %25, %for.cond.cleanup.i ]
  call void @llvm.dbg.value(metadata ptr %cur2.027.i, metadata !189, metadata !DIExpression()) #12, !dbg !1560
  %28 = load ptr, ptr %cur2.027.i, align 8, !dbg !1568, !tbaa !204
  call void @llvm.dbg.value(metadata ptr %28, metadata !186, metadata !DIExpression()) #12, !dbg !1554
  %data8.i = getelementptr inbounds %struct.mk_context, ptr %cur2.027.i, i64 0, i32 5, !dbg !1569
  %29 = load ptr, ptr %data8.i, align 8, !dbg !1569, !tbaa !206
  tail call void @free(ptr noundef %29) #12, !dbg !1570
  tail call void @free(ptr noundef nonnull %cur2.027.i) #12, !dbg !1571
  call void @llvm.dbg.value(metadata ptr %28, metadata !189, metadata !DIExpression()) #12, !dbg !1560
  %tobool4.not.i = icmp eq ptr %28, null, !dbg !1561
  br i1 %tobool4.not.i, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !1561, !llvm.loop !1572

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  %root.i = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 2, !dbg !1574
  store ptr null, ptr %root.i, align 8, !dbg !1575, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %freelist.i, i8 0, i64 16, i1 false) #12, !dbg !1576
  %30 = load ptr, ptr %w, align 8, !dbg !1577, !tbaa !177
  %call27 = tail call i32 @fclose(ptr noundef %30), !dbg !1578
  tail call void @free(ptr noundef %w) #12, !dbg !1579
  ret i32 %ret.2, !dbg !1580
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_close_cluster(ptr nocapture noundef %w) unnamed_addr #0 !dbg !1581 {
entry:
  call void @llvm.dbg.value(metadata ptr %w, metadata !1583, metadata !DIExpression()), !dbg !1584
  %cluster = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 3, !dbg !1585
  %0 = load ptr, ptr %cluster, align 8, !dbg !1585, !tbaa !1124
  %cmp = icmp eq ptr %0, null, !dbg !1587
  br i1 %cmp, label %return, label %do.body, !dbg !1588

do.body:                                          ; preds = %entry
  %call = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %0, ptr noundef null), !dbg !1589
  %cmp2 = icmp slt i32 %call, 0, !dbg !1589
  br i1 %cmp2, label %return, label %do.end, !dbg !1592

do.end:                                           ; preds = %do.body
  store ptr null, ptr %cluster, align 8, !dbg !1593, !tbaa !1124
  %root = getelementptr inbounds %struct.mk_writer, ptr %w, i64 0, i32 2, !dbg !1594
  %1 = load ptr, ptr %root, align 8, !dbg !1594, !tbaa !168
  call void @llvm.dbg.value(metadata ptr %1, metadata !718, metadata !DIExpression()) #12, !dbg !1597
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 6, !dbg !1599
  %2 = load i32, ptr %d_cur.i, align 8, !dbg !1599, !tbaa !381
  %tobool.not.i = icmp eq i32 %2, 0, !dbg !1600
  br i1 %tobool.not.i, label %return, label %if.end.i, !dbg !1601

if.end.i:                                         ; preds = %do.end
  %parent.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 2, !dbg !1602
  %3 = load ptr, ptr %parent.i, align 8, !dbg !1602, !tbaa !242
  %tobool1.not.i = icmp eq ptr %3, null, !dbg !1603
  %data7.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 5, !dbg !1604
  %4 = load ptr, ptr %data7.i, align 8, !dbg !1604, !tbaa !206
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i, !dbg !1605

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %3, metadata !364, metadata !DIExpression()) #12, !dbg !1606
  call void @llvm.dbg.value(metadata ptr %4, metadata !369, metadata !DIExpression()) #12, !dbg !1606
  call void @llvm.dbg.value(metadata i32 %2, metadata !370, metadata !DIExpression()) #12, !dbg !1606
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, ptr %3, i64 0, i32 6, !dbg !1608
  %5 = load i32, ptr %d_cur.i.i, align 8, !dbg !1608, !tbaa !381
  %add.i.i = add i32 %5, %2, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !371, metadata !DIExpression()) #12, !dbg !1606
  %d_max.i.i = getelementptr inbounds %struct.mk_context, ptr %3, i64 0, i32 7, !dbg !1610
  %6 = load i32, ptr %d_max.i.i, align 4, !dbg !1610, !tbaa !384
  %cmp.i.i = icmp ugt i32 %add.i.i, %6, !dbg !1611
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1612

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, ptr %3, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1613, !tbaa !206
  br label %mk_append_context_data.exit.i, !dbg !1612

if.then.i.i:                                      ; preds = %do.body.i
  %tobool.not.i.i = icmp eq i32 %6, 0, !dbg !1614
  %shl.i.i = shl i32 %6, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1615
  br label %while.cond.i.i, !dbg !1616

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1615
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1615
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1617
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %shl4.i.i, metadata !375, metadata !DIExpression()) #12, !dbg !1615
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1616, !llvm.loop !1619

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, ptr %3, i64 0, i32 5, !dbg !1621
  %7 = load ptr, ptr %data5.i.i, align 8, !dbg !1621, !tbaa !206
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1622
  %call.i.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i.i) #14, !dbg !1623
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !372, metadata !DIExpression()) #12, !dbg !1615
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1624
  br i1 %tobool6.not.i.i, label %return, label %if.end.i.i, !dbg !1625

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1626, !tbaa !206
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !1627, !tbaa !384
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !1628, !tbaa !381
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1628
  %9 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1613
  %idx.ext.i.i = zext i32 %8 to i64, !dbg !1629
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i, !dbg !1629
  %conv14.i.i = zext i32 %2 to i64, !dbg !1630
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i, ptr align 1 %4, i64 %conv14.i.i, i1 false) #12, !dbg !1631
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !1632, !tbaa !381
  br label %if.end14.i, !dbg !1633

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %2 to i64, !dbg !1634
  %owner.i = getelementptr inbounds %struct.mk_context, ptr %1, i64 0, i32 3, !dbg !1635
  %10 = load ptr, ptr %owner.i, align 8, !dbg !1635, !tbaa !151
  %11 = load ptr, ptr %10, align 8, !dbg !1636, !tbaa !177
  %call9.i = tail call i64 @fwrite(ptr noundef %4, i64 noundef %conv.i, i64 noundef 1, ptr noundef %11) #12, !dbg !1637
  %cmp10.not.i = icmp eq i64 %call9.i, 1, !dbg !1638
  br i1 %cmp10.not.i, label %if.end14.i, label %return, !dbg !1639

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8, !dbg !1640, !tbaa !381
  br label %return, !dbg !1641

return:                                           ; preds = %do.end, %if.end14.i, %if.else.i, %while.end.i.i, %do.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %do.body ], [ 0, %do.end ], [ 0, %if.end14.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i ], !dbg !1584
  ret i32 %retval.0, !dbg !1642
}

; Function Attrs: nofree nounwind
declare !dbg !1643 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1648 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_write_id(ptr nocapture noundef %c, i32 noundef %id) unnamed_addr #0 !dbg !350 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !349, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 %id, metadata !354, metadata !DIExpression()), !dbg !1651
  %shr = lshr i32 %id, 24, !dbg !1652
  %conv = trunc i32 %shr to i8, !dbg !1653
  call void @llvm.dbg.value(metadata i8 %conv, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1651
  %shr1 = lshr i32 %id, 16, !dbg !1654
  %conv2 = trunc i32 %shr1 to i8, !dbg !1655
  call void @llvm.dbg.value(metadata i8 %conv2, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1651
  %shr4 = lshr i32 %id, 8, !dbg !1656
  %conv5 = trunc i32 %shr4 to i8, !dbg !1657
  call void @llvm.dbg.value(metadata i8 %conv5, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1651
  %conv7 = trunc i32 %id to i8, !dbg !1658
  call void @llvm.dbg.value(metadata i8 %conv7, metadata !355, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !1651
  %tobool.not = icmp eq i8 %conv, 0, !dbg !1659
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1661

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1662
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1662
  call void @llvm.dbg.value(metadata i32 4, metadata !370, metadata !DIExpression()) #12, !dbg !1662
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1664
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !1664, !tbaa !381
  %add.i = add i32 %0, 4, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !1662
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1666
  %1 = load i32, ptr %d_max.i, align 4, !dbg !1666, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !1667
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1668

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1669, !tbaa !206
  br label %if.end11.i, !dbg !1668

if.then.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq i32 %1, 0, !dbg !1670
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !1671
  br label %while.cond.i, !dbg !1672

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1671
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !1671
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1673
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !1671
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1672, !llvm.loop !1675

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1677
  %2 = load ptr, ptr %data5.i, align 8, !dbg !1677, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1678
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #14, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !1671
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !1680
  br i1 %tobool6.not.i, label %cleanup, label %if.end.i, !dbg !1681

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1682, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1683, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1684, !tbaa !381
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1684
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1669
  %idx.ext.i = zext i32 %3 to i64, !dbg !1685
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !1685
  store i8 %conv, ptr %add.ptr.i, align 1, !dbg !1686
  %c_id.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1686
  store i8 %conv2, ptr %c_id.sroa.5.0.add.ptr.i.sroa_idx, align 1, !dbg !1686
  %c_id.sroa.8.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1686
  store i8 %conv5, ptr %c_id.sroa.8.0.add.ptr.i.sroa_idx, align 1, !dbg !1686
  %c_id.sroa.11.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !1686
  store i8 %conv7, ptr %c_id.sroa.11.0.add.ptr.i.sroa_idx, align 1, !dbg !1686
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1687, !tbaa !381
  br label %cleanup, !dbg !1688

if.end:                                           ; preds = %entry
  %tobool9.not = icmp eq i8 %conv2, 0, !dbg !1689
  br i1 %tobool9.not, label %if.end13, label %if.then10, !dbg !1691

if.then10:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1692
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1692
  call void @llvm.dbg.value(metadata i32 3, metadata !370, metadata !DIExpression()) #12, !dbg !1692
  %d_cur.i30 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1694
  %5 = load i32, ptr %d_cur.i30, align 8, !dbg !1694, !tbaa !381
  %add.i31 = add i32 %5, 3, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %add.i31, metadata !371, metadata !DIExpression()) #12, !dbg !1692
  %d_max.i32 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1696
  %6 = load i32, ptr %d_max.i32, align 4, !dbg !1696, !tbaa !384
  %cmp.i33 = icmp ugt i32 %add.i31, %6, !dbg !1697
  br i1 %cmp.i33, label %if.then.i40, label %entry.if.end11_crit_edge.i36, !dbg !1698

entry.if.end11_crit_edge.i36:                     ; preds = %if.then10
  %data12.phi.trans.insert.i34 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i35 = load ptr, ptr %data12.phi.trans.insert.i34, align 8, !dbg !1699, !tbaa !206
  br label %if.end11.i54, !dbg !1698

if.then.i40:                                      ; preds = %if.then10
  %tobool.not.i37 = icmp eq i32 %6, 0, !dbg !1700
  %shl.i38 = shl i32 %6, 1
  %spec.select.i39 = select i1 %tobool.not.i37, i32 16, i32 %shl.i38, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %spec.select.i39, metadata !375, metadata !DIExpression()) #12, !dbg !1701
  br label %while.cond.i44, !dbg !1702

while.cond.i44:                                   ; preds = %while.cond.i44, %if.then.i40
  %dn.0.i41 = phi i32 [ %spec.select.i39, %if.then.i40 ], [ %shl4.i43, %while.cond.i44 ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 %dn.0.i41, metadata !375, metadata !DIExpression()) #12, !dbg !1701
  %cmp3.i42 = icmp ugt i32 %add.i31, %dn.0.i41, !dbg !1703
  %shl4.i43 = shl i32 %dn.0.i41, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %shl4.i43, metadata !375, metadata !DIExpression()) #12, !dbg !1701
  br i1 %cmp3.i42, label %while.cond.i44, label %while.end.i49, !dbg !1702, !llvm.loop !1705

while.end.i49:                                    ; preds = %while.cond.i44
  %data5.i45 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1707
  %7 = load ptr, ptr %data5.i45, align 8, !dbg !1707, !tbaa !206
  %conv.i46 = zext i32 %dn.0.i41 to i64, !dbg !1708
  %call.i47 = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i46) #14, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %call.i47, metadata !372, metadata !DIExpression()) #12, !dbg !1701
  %tobool6.not.i48 = icmp eq ptr %call.i47, null, !dbg !1710
  br i1 %tobool6.not.i48, label %cleanup, label %if.end.i51, !dbg !1711

if.end.i51:                                       ; preds = %while.end.i49
  store ptr %call.i47, ptr %data5.i45, align 8, !dbg !1712, !tbaa !206
  store i32 %dn.0.i41, ptr %d_max.i32, align 4, !dbg !1713, !tbaa !384
  %.pre34.i50 = load i32, ptr %d_cur.i30, align 8, !dbg !1714, !tbaa !381
  br label %if.end11.i54

if.end11.i54:                                     ; preds = %if.end.i51, %entry.if.end11_crit_edge.i36
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i36 ], [ %.pre34.i50, %if.end.i51 ], !dbg !1714
  %9 = phi ptr [ %.pre.i35, %entry.if.end11_crit_edge.i36 ], [ %call.i47, %if.end.i51 ], !dbg !1699
  %idx.ext.i52 = zext i32 %8 to i64, !dbg !1715
  %add.ptr.i53 = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i52, !dbg !1715
  store i8 %conv2, ptr %add.ptr.i53, align 1, !dbg !1716
  %c_id.sroa.8.1.add.ptr.i53.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i53, i64 1, !dbg !1716
  store i8 %conv5, ptr %c_id.sroa.8.1.add.ptr.i53.sroa_idx, align 1, !dbg !1716
  %c_id.sroa.11.1.add.ptr.i53.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i53, i64 2, !dbg !1716
  store i8 %conv7, ptr %c_id.sroa.11.1.add.ptr.i53.sroa_idx, align 1, !dbg !1716
  store i32 %add.i31, ptr %d_cur.i30, align 8, !dbg !1717, !tbaa !381
  br label %cleanup, !dbg !1718

if.end13:                                         ; preds = %if.end
  %tobool15.not = icmp eq i8 %conv5, 0, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1722
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1720
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1722
  %d_cur.i84 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1651
  %10 = load i32, ptr %d_cur.i84, align 8, !dbg !1651, !tbaa !381
  br i1 %tobool15.not, label %if.end20, label %if.then16, !dbg !1724

if.then16:                                        ; preds = %if.end13
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()) #12, !dbg !1722
  %add.i58 = add i32 %10, 2, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %add.i58, metadata !371, metadata !DIExpression()) #12, !dbg !1722
  %d_max.i59 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1726
  %11 = load i32, ptr %d_max.i59, align 4, !dbg !1726, !tbaa !384
  %cmp.i60 = icmp ugt i32 %add.i58, %11, !dbg !1727
  br i1 %cmp.i60, label %if.then.i67, label %entry.if.end11_crit_edge.i63, !dbg !1728

entry.if.end11_crit_edge.i63:                     ; preds = %if.then16
  %data12.phi.trans.insert.i61 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i62 = load ptr, ptr %data12.phi.trans.insert.i61, align 8, !dbg !1729, !tbaa !206
  br label %if.end11.i81, !dbg !1728

if.then.i67:                                      ; preds = %if.then16
  %tobool.not.i64 = icmp eq i32 %11, 0, !dbg !1730
  %shl.i65 = shl i32 %11, 1
  %spec.select.i66 = select i1 %tobool.not.i64, i32 16, i32 %shl.i65, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %spec.select.i66, metadata !375, metadata !DIExpression()) #12, !dbg !1731
  br label %while.cond.i71, !dbg !1732

while.cond.i71:                                   ; preds = %while.cond.i71, %if.then.i67
  %dn.0.i68 = phi i32 [ %spec.select.i66, %if.then.i67 ], [ %shl4.i70, %while.cond.i71 ], !dbg !1731
  call void @llvm.dbg.value(metadata i32 %dn.0.i68, metadata !375, metadata !DIExpression()) #12, !dbg !1731
  %cmp3.i69 = icmp ugt i32 %add.i58, %dn.0.i68, !dbg !1733
  %shl4.i70 = shl i32 %dn.0.i68, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %shl4.i70, metadata !375, metadata !DIExpression()) #12, !dbg !1731
  br i1 %cmp3.i69, label %while.cond.i71, label %while.end.i76, !dbg !1732, !llvm.loop !1735

while.end.i76:                                    ; preds = %while.cond.i71
  %data5.i72 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1737
  %12 = load ptr, ptr %data5.i72, align 8, !dbg !1737, !tbaa !206
  %conv.i73 = zext i32 %dn.0.i68 to i64, !dbg !1738
  %call.i74 = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i73) #14, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %call.i74, metadata !372, metadata !DIExpression()) #12, !dbg !1731
  %tobool6.not.i75 = icmp eq ptr %call.i74, null, !dbg !1740
  br i1 %tobool6.not.i75, label %cleanup, label %if.end.i78, !dbg !1741

if.end.i78:                                       ; preds = %while.end.i76
  store ptr %call.i74, ptr %data5.i72, align 8, !dbg !1742, !tbaa !206
  store i32 %dn.0.i68, ptr %d_max.i59, align 4, !dbg !1743, !tbaa !384
  %.pre34.i77 = load i32, ptr %d_cur.i84, align 8, !dbg !1744, !tbaa !381
  br label %if.end11.i81

if.end11.i81:                                     ; preds = %if.end.i78, %entry.if.end11_crit_edge.i63
  %13 = phi i32 [ %10, %entry.if.end11_crit_edge.i63 ], [ %.pre34.i77, %if.end.i78 ], !dbg !1744
  %14 = phi ptr [ %.pre.i62, %entry.if.end11_crit_edge.i63 ], [ %call.i74, %if.end.i78 ], !dbg !1729
  %idx.ext.i79 = zext i32 %13 to i64, !dbg !1745
  %add.ptr.i80 = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i79, !dbg !1745
  store i8 %conv5, ptr %add.ptr.i80, align 1, !dbg !1746
  %c_id.sroa.11.2.add.ptr.i80.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i80, i64 1, !dbg !1746
  store i8 %conv7, ptr %c_id.sroa.11.2.add.ptr.i80.sroa_idx, align 1, !dbg !1746
  store i32 %add.i58, ptr %d_cur.i84, align 8, !dbg !1747, !tbaa !381
  br label %cleanup, !dbg !1748

if.end20:                                         ; preds = %if.end13
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()) #12, !dbg !1720
  %add.i85 = add i32 %10, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %add.i85, metadata !371, metadata !DIExpression()) #12, !dbg !1720
  %d_max.i86 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1750
  %15 = load i32, ptr %d_max.i86, align 4, !dbg !1750, !tbaa !384
  %cmp.i87 = icmp ugt i32 %add.i85, %15, !dbg !1751
  br i1 %cmp.i87, label %if.then.i94, label %entry.if.end11_crit_edge.i90, !dbg !1752

entry.if.end11_crit_edge.i90:                     ; preds = %if.end20
  %data12.phi.trans.insert.i88 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i89 = load ptr, ptr %data12.phi.trans.insert.i88, align 8, !dbg !1753, !tbaa !206
  br label %if.end11.i108, !dbg !1752

if.then.i94:                                      ; preds = %if.end20
  %tobool.not.i91 = icmp eq i32 %15, 0, !dbg !1754
  %shl.i92 = shl i32 %15, 1
  %spec.select.i93 = select i1 %tobool.not.i91, i32 16, i32 %shl.i92, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %spec.select.i93, metadata !375, metadata !DIExpression()) #12, !dbg !1755
  br label %while.cond.i98, !dbg !1756

while.cond.i98:                                   ; preds = %while.cond.i98, %if.then.i94
  %dn.0.i95 = phi i32 [ %spec.select.i93, %if.then.i94 ], [ %shl4.i97, %while.cond.i98 ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %dn.0.i95, metadata !375, metadata !DIExpression()) #12, !dbg !1755
  %cmp3.i96 = icmp ugt i32 %add.i85, %dn.0.i95, !dbg !1757
  %shl4.i97 = shl i32 %dn.0.i95, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %shl4.i97, metadata !375, metadata !DIExpression()) #12, !dbg !1755
  br i1 %cmp3.i96, label %while.cond.i98, label %while.end.i103, !dbg !1756, !llvm.loop !1759

while.end.i103:                                   ; preds = %while.cond.i98
  %data5.i99 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1761
  %16 = load ptr, ptr %data5.i99, align 8, !dbg !1761, !tbaa !206
  %conv.i100 = zext i32 %dn.0.i95 to i64, !dbg !1762
  %call.i101 = tail call ptr @realloc(ptr noundef %16, i64 noundef %conv.i100) #14, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %call.i101, metadata !372, metadata !DIExpression()) #12, !dbg !1755
  %tobool6.not.i102 = icmp eq ptr %call.i101, null, !dbg !1764
  br i1 %tobool6.not.i102, label %cleanup, label %if.end.i105, !dbg !1765

if.end.i105:                                      ; preds = %while.end.i103
  store ptr %call.i101, ptr %data5.i99, align 8, !dbg !1766, !tbaa !206
  store i32 %dn.0.i95, ptr %d_max.i86, align 4, !dbg !1767, !tbaa !384
  %.pre34.i104 = load i32, ptr %d_cur.i84, align 8, !dbg !1768, !tbaa !381
  br label %if.end11.i108

if.end11.i108:                                    ; preds = %if.end.i105, %entry.if.end11_crit_edge.i90
  %17 = phi i32 [ %10, %entry.if.end11_crit_edge.i90 ], [ %.pre34.i104, %if.end.i105 ], !dbg !1768
  %18 = phi ptr [ %.pre.i89, %entry.if.end11_crit_edge.i90 ], [ %call.i101, %if.end.i105 ], !dbg !1753
  %idx.ext.i106 = zext i32 %17 to i64, !dbg !1769
  %add.ptr.i107 = getelementptr inbounds i8, ptr %18, i64 %idx.ext.i106, !dbg !1769
  store i8 %conv7, ptr %add.ptr.i107, align 1, !dbg !1770
  store i32 %add.i85, ptr %d_cur.i84, align 8, !dbg !1771, !tbaa !381
  br label %cleanup, !dbg !1772

cleanup:                                          ; preds = %if.end11.i108, %while.end.i103, %if.end11.i81, %while.end.i76, %if.end11.i54, %while.end.i49, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i54 ], [ -1, %while.end.i49 ], [ 0, %if.end11.i81 ], [ -1, %while.end.i76 ], [ 0, %if.end11.i108 ], [ -1, %while.end.i103 ], !dbg !1651
  ret i32 %retval.0, !dbg !1773
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mk_write_size(ptr nocapture noundef %c, i32 noundef %size) unnamed_addr #0 !dbg !875 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !874, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %size, metadata !877, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 8, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1774
  %shr = lshr i32 %size, 24, !dbg !1775
  %conv = trunc i32 %shr to i8, !dbg !1776
  call void @llvm.dbg.value(metadata i8 %conv, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1774
  %shr2 = lshr i32 %size, 16, !dbg !1777
  %conv3 = trunc i32 %shr2 to i8, !dbg !1778
  call void @llvm.dbg.value(metadata i8 %conv3, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1774
  %shr5 = lshr i32 %size, 8, !dbg !1779
  %conv6 = trunc i32 %shr5 to i8, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %conv6, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !1774
  %conv8 = trunc i32 %size to i8, !dbg !1781
  call void @llvm.dbg.value(metadata i8 %conv8, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1774
  %cmp = icmp ult i32 %size, 127, !dbg !1782
  br i1 %cmp, label %if.then, label %if.end, !dbg !1783

if.then:                                          ; preds = %entry
  %0 = or i8 %conv8, -128, !dbg !1784
  call void @llvm.dbg.value(metadata i8 %0, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1785
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1785
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()) #12, !dbg !1785
  %d_cur.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1787
  %1 = load i32, ptr %d_cur.i, align 8, !dbg !1787, !tbaa !381
  %add.i = add i32 %1, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !371, metadata !DIExpression()) #12, !dbg !1785
  %d_max.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1789
  %2 = load i32, ptr %d_max.i, align 4, !dbg !1789, !tbaa !384
  %cmp.i = icmp ugt i32 %add.i, %2, !dbg !1790
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1791

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1792, !tbaa !206
  br label %if.end11.i, !dbg !1791

if.then.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq i32 %2, 0, !dbg !1793
  %shl.i = shl i32 %2, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !375, metadata !DIExpression()) #12, !dbg !1794
  br label %while.cond.i, !dbg !1795

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1794
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !375, metadata !DIExpression()) #12, !dbg !1794
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1796
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !375, metadata !DIExpression()) #12, !dbg !1794
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1795, !llvm.loop !1798

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1800
  %3 = load ptr, ptr %data5.i, align 8, !dbg !1800, !tbaa !206
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1801
  %call.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i) #14, !dbg !1802
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !372, metadata !DIExpression()) #12, !dbg !1794
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !1803
  br i1 %tobool6.not.i, label %cleanup, label %if.end.i, !dbg !1804

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1805, !tbaa !206
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1806, !tbaa !384
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1807, !tbaa !381
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %4 = phi i32 [ %1, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1807
  %5 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1792
  %idx.ext.i = zext i32 %4 to i64, !dbg !1808
  %add.ptr.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i, !dbg !1808
  store i8 %0, ptr %add.ptr.i, align 1, !dbg !1809
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1810, !tbaa !381
  br label %cleanup, !dbg !1811

if.end:                                           ; preds = %entry
  %cmp12 = icmp ult i32 %size, 16383, !dbg !1812
  br i1 %cmp12, label %if.then14, label %if.end22, !dbg !1814

if.then14:                                        ; preds = %if.end
  %6 = or i8 %conv6, 64, !dbg !1815
  call void @llvm.dbg.value(metadata i8 %6, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1817
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1817
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()) #12, !dbg !1817
  %d_cur.i58 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1819
  %7 = load i32, ptr %d_cur.i58, align 8, !dbg !1819, !tbaa !381
  %add.i59 = add i32 %7, 2, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %add.i59, metadata !371, metadata !DIExpression()) #12, !dbg !1817
  %d_max.i60 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1821
  %8 = load i32, ptr %d_max.i60, align 4, !dbg !1821, !tbaa !384
  %cmp.i61 = icmp ugt i32 %add.i59, %8, !dbg !1822
  br i1 %cmp.i61, label %if.then.i68, label %entry.if.end11_crit_edge.i64, !dbg !1823

entry.if.end11_crit_edge.i64:                     ; preds = %if.then14
  %data12.phi.trans.insert.i62 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i63 = load ptr, ptr %data12.phi.trans.insert.i62, align 8, !dbg !1824, !tbaa !206
  br label %if.end11.i82, !dbg !1823

if.then.i68:                                      ; preds = %if.then14
  %tobool.not.i65 = icmp eq i32 %8, 0, !dbg !1825
  %shl.i66 = shl i32 %8, 1
  %spec.select.i67 = select i1 %tobool.not.i65, i32 16, i32 %shl.i66, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %spec.select.i67, metadata !375, metadata !DIExpression()) #12, !dbg !1826
  br label %while.cond.i72, !dbg !1827

while.cond.i72:                                   ; preds = %while.cond.i72, %if.then.i68
  %dn.0.i69 = phi i32 [ %spec.select.i67, %if.then.i68 ], [ %shl4.i71, %while.cond.i72 ], !dbg !1826
  call void @llvm.dbg.value(metadata i32 %dn.0.i69, metadata !375, metadata !DIExpression()) #12, !dbg !1826
  %cmp3.i70 = icmp ugt i32 %add.i59, %dn.0.i69, !dbg !1828
  %shl4.i71 = shl i32 %dn.0.i69, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %shl4.i71, metadata !375, metadata !DIExpression()) #12, !dbg !1826
  br i1 %cmp3.i70, label %while.cond.i72, label %while.end.i77, !dbg !1827, !llvm.loop !1830

while.end.i77:                                    ; preds = %while.cond.i72
  %data5.i73 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1832
  %9 = load ptr, ptr %data5.i73, align 8, !dbg !1832, !tbaa !206
  %conv.i74 = zext i32 %dn.0.i69 to i64, !dbg !1833
  %call.i75 = tail call ptr @realloc(ptr noundef %9, i64 noundef %conv.i74) #14, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %call.i75, metadata !372, metadata !DIExpression()) #12, !dbg !1826
  %tobool6.not.i76 = icmp eq ptr %call.i75, null, !dbg !1835
  br i1 %tobool6.not.i76, label %cleanup, label %if.end.i79, !dbg !1836

if.end.i79:                                       ; preds = %while.end.i77
  store ptr %call.i75, ptr %data5.i73, align 8, !dbg !1837, !tbaa !206
  store i32 %dn.0.i69, ptr %d_max.i60, align 4, !dbg !1838, !tbaa !384
  %.pre34.i78 = load i32, ptr %d_cur.i58, align 8, !dbg !1839, !tbaa !381
  br label %if.end11.i82

if.end11.i82:                                     ; preds = %if.end.i79, %entry.if.end11_crit_edge.i64
  %10 = phi i32 [ %7, %entry.if.end11_crit_edge.i64 ], [ %.pre34.i78, %if.end.i79 ], !dbg !1839
  %11 = phi ptr [ %.pre.i63, %entry.if.end11_crit_edge.i64 ], [ %call.i75, %if.end.i79 ], !dbg !1824
  %idx.ext.i80 = zext i32 %10 to i64, !dbg !1840
  %add.ptr.i81 = getelementptr inbounds i8, ptr %11, i64 %idx.ext.i80, !dbg !1840
  store i8 %6, ptr %add.ptr.i81, align 1, !dbg !1841
  %c_size.sroa.16.3.add.ptr.i81.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i81, i64 1, !dbg !1841
  store i8 %conv8, ptr %c_size.sroa.16.3.add.ptr.i81.sroa_idx, align 1, !dbg !1841
  store i32 %add.i59, ptr %d_cur.i58, align 8, !dbg !1842, !tbaa !381
  br label %cleanup, !dbg !1843

if.end22:                                         ; preds = %if.end
  %cmp23 = icmp ult i32 %size, 2097151, !dbg !1844
  br i1 %cmp23, label %if.then25, label %if.end33, !dbg !1846

if.then25:                                        ; preds = %if.end22
  %12 = or i8 %conv3, 32, !dbg !1847
  call void @llvm.dbg.value(metadata i8 %12, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1849
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1849
  call void @llvm.dbg.value(metadata i32 3, metadata !370, metadata !DIExpression()) #12, !dbg !1849
  %d_cur.i85 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1851
  %13 = load i32, ptr %d_cur.i85, align 8, !dbg !1851, !tbaa !381
  %add.i86 = add i32 %13, 3, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %add.i86, metadata !371, metadata !DIExpression()) #12, !dbg !1849
  %d_max.i87 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1853
  %14 = load i32, ptr %d_max.i87, align 4, !dbg !1853, !tbaa !384
  %cmp.i88 = icmp ugt i32 %add.i86, %14, !dbg !1854
  br i1 %cmp.i88, label %if.then.i95, label %entry.if.end11_crit_edge.i91, !dbg !1855

entry.if.end11_crit_edge.i91:                     ; preds = %if.then25
  %data12.phi.trans.insert.i89 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i90 = load ptr, ptr %data12.phi.trans.insert.i89, align 8, !dbg !1856, !tbaa !206
  br label %if.end11.i109, !dbg !1855

if.then.i95:                                      ; preds = %if.then25
  %tobool.not.i92 = icmp eq i32 %14, 0, !dbg !1857
  %shl.i93 = shl i32 %14, 1
  %spec.select.i94 = select i1 %tobool.not.i92, i32 16, i32 %shl.i93, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %spec.select.i94, metadata !375, metadata !DIExpression()) #12, !dbg !1858
  br label %while.cond.i99, !dbg !1859

while.cond.i99:                                   ; preds = %while.cond.i99, %if.then.i95
  %dn.0.i96 = phi i32 [ %spec.select.i94, %if.then.i95 ], [ %shl4.i98, %while.cond.i99 ], !dbg !1858
  call void @llvm.dbg.value(metadata i32 %dn.0.i96, metadata !375, metadata !DIExpression()) #12, !dbg !1858
  %cmp3.i97 = icmp ugt i32 %add.i86, %dn.0.i96, !dbg !1860
  %shl4.i98 = shl i32 %dn.0.i96, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %shl4.i98, metadata !375, metadata !DIExpression()) #12, !dbg !1858
  br i1 %cmp3.i97, label %while.cond.i99, label %while.end.i104, !dbg !1859, !llvm.loop !1862

while.end.i104:                                   ; preds = %while.cond.i99
  %data5.i100 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1864
  %15 = load ptr, ptr %data5.i100, align 8, !dbg !1864, !tbaa !206
  %conv.i101 = zext i32 %dn.0.i96 to i64, !dbg !1865
  %call.i102 = tail call ptr @realloc(ptr noundef %15, i64 noundef %conv.i101) #14, !dbg !1866
  call void @llvm.dbg.value(metadata ptr %call.i102, metadata !372, metadata !DIExpression()) #12, !dbg !1858
  %tobool6.not.i103 = icmp eq ptr %call.i102, null, !dbg !1867
  br i1 %tobool6.not.i103, label %cleanup, label %if.end.i106, !dbg !1868

if.end.i106:                                      ; preds = %while.end.i104
  store ptr %call.i102, ptr %data5.i100, align 8, !dbg !1869, !tbaa !206
  store i32 %dn.0.i96, ptr %d_max.i87, align 4, !dbg !1870, !tbaa !384
  %.pre34.i105 = load i32, ptr %d_cur.i85, align 8, !dbg !1871, !tbaa !381
  br label %if.end11.i109

if.end11.i109:                                    ; preds = %if.end.i106, %entry.if.end11_crit_edge.i91
  %16 = phi i32 [ %13, %entry.if.end11_crit_edge.i91 ], [ %.pre34.i105, %if.end.i106 ], !dbg !1871
  %17 = phi ptr [ %.pre.i90, %entry.if.end11_crit_edge.i91 ], [ %call.i102, %if.end.i106 ], !dbg !1856
  %idx.ext.i107 = zext i32 %16 to i64, !dbg !1872
  %add.ptr.i108 = getelementptr inbounds i8, ptr %17, i64 %idx.ext.i107, !dbg !1872
  store i8 %12, ptr %add.ptr.i108, align 1, !dbg !1873
  %c_size.sroa.12.2.add.ptr.i108.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i108, i64 1, !dbg !1873
  store i8 %conv6, ptr %c_size.sroa.12.2.add.ptr.i108.sroa_idx, align 1, !dbg !1873
  %c_size.sroa.16.2.add.ptr.i108.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i108, i64 2, !dbg !1873
  store i8 %conv8, ptr %c_size.sroa.16.2.add.ptr.i108.sroa_idx, align 1, !dbg !1873
  store i32 %add.i86, ptr %d_cur.i85, align 8, !dbg !1874, !tbaa !381
  br label %cleanup, !dbg !1875

if.end33:                                         ; preds = %if.end22
  %cmp34 = icmp ult i32 %size, 268435455, !dbg !1876
  br i1 %cmp34, label %if.then36, label %if.end44, !dbg !1878

if.then36:                                        ; preds = %if.end33
  %18 = or i8 %conv, 16, !dbg !1879
  call void @llvm.dbg.value(metadata i8 %18, metadata !878, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1881
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1881
  call void @llvm.dbg.value(metadata i32 4, metadata !370, metadata !DIExpression()) #12, !dbg !1881
  %d_cur.i112 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1883
  %19 = load i32, ptr %d_cur.i112, align 8, !dbg !1883, !tbaa !381
  %add.i113 = add i32 %19, 4, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %add.i113, metadata !371, metadata !DIExpression()) #12, !dbg !1881
  %d_max.i114 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1885
  %20 = load i32, ptr %d_max.i114, align 4, !dbg !1885, !tbaa !384
  %cmp.i115 = icmp ugt i32 %add.i113, %20, !dbg !1886
  br i1 %cmp.i115, label %if.then.i122, label %entry.if.end11_crit_edge.i118, !dbg !1887

entry.if.end11_crit_edge.i118:                    ; preds = %if.then36
  %data12.phi.trans.insert.i116 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i117 = load ptr, ptr %data12.phi.trans.insert.i116, align 8, !dbg !1888, !tbaa !206
  br label %if.end11.i136, !dbg !1887

if.then.i122:                                     ; preds = %if.then36
  %tobool.not.i119 = icmp eq i32 %20, 0, !dbg !1889
  %shl.i120 = shl i32 %20, 1
  %spec.select.i121 = select i1 %tobool.not.i119, i32 16, i32 %shl.i120, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %spec.select.i121, metadata !375, metadata !DIExpression()) #12, !dbg !1890
  br label %while.cond.i126, !dbg !1891

while.cond.i126:                                  ; preds = %while.cond.i126, %if.then.i122
  %dn.0.i123 = phi i32 [ %spec.select.i121, %if.then.i122 ], [ %shl4.i125, %while.cond.i126 ], !dbg !1890
  call void @llvm.dbg.value(metadata i32 %dn.0.i123, metadata !375, metadata !DIExpression()) #12, !dbg !1890
  %cmp3.i124 = icmp ugt i32 %add.i113, %dn.0.i123, !dbg !1892
  %shl4.i125 = shl i32 %dn.0.i123, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %shl4.i125, metadata !375, metadata !DIExpression()) #12, !dbg !1890
  br i1 %cmp3.i124, label %while.cond.i126, label %while.end.i131, !dbg !1891, !llvm.loop !1894

while.end.i131:                                   ; preds = %while.cond.i126
  %data5.i127 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1896
  %21 = load ptr, ptr %data5.i127, align 8, !dbg !1896, !tbaa !206
  %conv.i128 = zext i32 %dn.0.i123 to i64, !dbg !1897
  %call.i129 = tail call ptr @realloc(ptr noundef %21, i64 noundef %conv.i128) #14, !dbg !1898
  call void @llvm.dbg.value(metadata ptr %call.i129, metadata !372, metadata !DIExpression()) #12, !dbg !1890
  %tobool6.not.i130 = icmp eq ptr %call.i129, null, !dbg !1899
  br i1 %tobool6.not.i130, label %cleanup, label %if.end.i133, !dbg !1900

if.end.i133:                                      ; preds = %while.end.i131
  store ptr %call.i129, ptr %data5.i127, align 8, !dbg !1901, !tbaa !206
  store i32 %dn.0.i123, ptr %d_max.i114, align 4, !dbg !1902, !tbaa !384
  %.pre34.i132 = load i32, ptr %d_cur.i112, align 8, !dbg !1903, !tbaa !381
  br label %if.end11.i136

if.end11.i136:                                    ; preds = %if.end.i133, %entry.if.end11_crit_edge.i118
  %22 = phi i32 [ %19, %entry.if.end11_crit_edge.i118 ], [ %.pre34.i132, %if.end.i133 ], !dbg !1903
  %23 = phi ptr [ %.pre.i117, %entry.if.end11_crit_edge.i118 ], [ %call.i129, %if.end.i133 ], !dbg !1888
  %idx.ext.i134 = zext i32 %22 to i64, !dbg !1904
  %add.ptr.i135 = getelementptr inbounds i8, ptr %23, i64 %idx.ext.i134, !dbg !1904
  store i8 %18, ptr %add.ptr.i135, align 1, !dbg !1905
  %c_size.sroa.8.1.add.ptr.i135.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i135, i64 1, !dbg !1905
  store i8 %conv3, ptr %c_size.sroa.8.1.add.ptr.i135.sroa_idx, align 1, !dbg !1905
  %c_size.sroa.12.1.add.ptr.i135.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i135, i64 2, !dbg !1905
  store i8 %conv6, ptr %c_size.sroa.12.1.add.ptr.i135.sroa_idx, align 1, !dbg !1905
  %c_size.sroa.16.1.add.ptr.i135.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i135, i64 3, !dbg !1905
  store i8 %conv8, ptr %c_size.sroa.16.1.add.ptr.i135.sroa_idx, align 1, !dbg !1905
  store i32 %add.i113, ptr %d_cur.i112, align 8, !dbg !1906, !tbaa !381
  br label %cleanup, !dbg !1907

if.end44:                                         ; preds = %if.end33
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()) #12, !dbg !1908
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()) #12, !dbg !1908
  call void @llvm.dbg.value(metadata i32 5, metadata !370, metadata !DIExpression()) #12, !dbg !1908
  %d_cur.i139 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 6, !dbg !1910
  %24 = load i32, ptr %d_cur.i139, align 8, !dbg !1910, !tbaa !381
  %add.i140 = add i32 %24, 5, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %add.i140, metadata !371, metadata !DIExpression()) #12, !dbg !1908
  %d_max.i141 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 7, !dbg !1912
  %25 = load i32, ptr %d_max.i141, align 4, !dbg !1912, !tbaa !384
  %cmp.i142 = icmp ugt i32 %add.i140, %25, !dbg !1913
  br i1 %cmp.i142, label %if.then.i149, label %entry.if.end11_crit_edge.i145, !dbg !1914

entry.if.end11_crit_edge.i145:                    ; preds = %if.end44
  %data12.phi.trans.insert.i143 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5
  %.pre.i144 = load ptr, ptr %data12.phi.trans.insert.i143, align 8, !dbg !1915, !tbaa !206
  br label %if.end11.i163, !dbg !1914

if.then.i149:                                     ; preds = %if.end44
  %tobool.not.i146 = icmp eq i32 %25, 0, !dbg !1916
  %shl.i147 = shl i32 %25, 1
  %spec.select.i148 = select i1 %tobool.not.i146, i32 16, i32 %shl.i147, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %spec.select.i148, metadata !375, metadata !DIExpression()) #12, !dbg !1917
  br label %while.cond.i153, !dbg !1918

while.cond.i153:                                  ; preds = %while.cond.i153, %if.then.i149
  %dn.0.i150 = phi i32 [ %spec.select.i148, %if.then.i149 ], [ %shl4.i152, %while.cond.i153 ], !dbg !1917
  call void @llvm.dbg.value(metadata i32 %dn.0.i150, metadata !375, metadata !DIExpression()) #12, !dbg !1917
  %cmp3.i151 = icmp ugt i32 %add.i140, %dn.0.i150, !dbg !1919
  %shl4.i152 = shl i32 %dn.0.i150, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %shl4.i152, metadata !375, metadata !DIExpression()) #12, !dbg !1917
  br i1 %cmp3.i151, label %while.cond.i153, label %while.end.i158, !dbg !1918, !llvm.loop !1921

while.end.i158:                                   ; preds = %while.cond.i153
  %data5.i154 = getelementptr inbounds %struct.mk_context, ptr %c, i64 0, i32 5, !dbg !1923
  %26 = load ptr, ptr %data5.i154, align 8, !dbg !1923, !tbaa !206
  %conv.i155 = zext i32 %dn.0.i150 to i64, !dbg !1924
  %call.i156 = tail call ptr @realloc(ptr noundef %26, i64 noundef %conv.i155) #14, !dbg !1925
  call void @llvm.dbg.value(metadata ptr %call.i156, metadata !372, metadata !DIExpression()) #12, !dbg !1917
  %tobool6.not.i157 = icmp eq ptr %call.i156, null, !dbg !1926
  br i1 %tobool6.not.i157, label %cleanup, label %if.end.i160, !dbg !1927

if.end.i160:                                      ; preds = %while.end.i158
  store ptr %call.i156, ptr %data5.i154, align 8, !dbg !1928, !tbaa !206
  store i32 %dn.0.i150, ptr %d_max.i141, align 4, !dbg !1929, !tbaa !384
  %.pre34.i159 = load i32, ptr %d_cur.i139, align 8, !dbg !1930, !tbaa !381
  br label %if.end11.i163

if.end11.i163:                                    ; preds = %if.end.i160, %entry.if.end11_crit_edge.i145
  %27 = phi i32 [ %24, %entry.if.end11_crit_edge.i145 ], [ %.pre34.i159, %if.end.i160 ], !dbg !1930
  %28 = phi ptr [ %.pre.i144, %entry.if.end11_crit_edge.i145 ], [ %call.i156, %if.end.i160 ], !dbg !1915
  %idx.ext.i161 = zext i32 %27 to i64, !dbg !1931
  %add.ptr.i162 = getelementptr inbounds i8, ptr %28, i64 %idx.ext.i161, !dbg !1931
  store i8 8, ptr %add.ptr.i162, align 1, !dbg !1932
  %c_size.sroa.4.0.add.ptr.i162.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i162, i64 1, !dbg !1932
  store i8 %conv, ptr %c_size.sroa.4.0.add.ptr.i162.sroa_idx, align 1, !dbg !1932
  %c_size.sroa.8.0.add.ptr.i162.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i162, i64 2, !dbg !1932
  store i8 %conv3, ptr %c_size.sroa.8.0.add.ptr.i162.sroa_idx, align 1, !dbg !1932
  %c_size.sroa.12.0.add.ptr.i162.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i162, i64 3, !dbg !1932
  store i8 %conv6, ptr %c_size.sroa.12.0.add.ptr.i162.sroa_idx, align 1, !dbg !1932
  %c_size.sroa.16.0.add.ptr.i162.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i162, i64 4, !dbg !1932
  store i8 %conv8, ptr %c_size.sroa.16.0.add.ptr.i162.sroa_idx, align 1, !dbg !1932
  store i32 %add.i140, ptr %d_cur.i139, align 8, !dbg !1933, !tbaa !381
  br label %cleanup, !dbg !1934

cleanup:                                          ; preds = %if.end11.i163, %while.end.i158, %if.end11.i136, %while.end.i131, %if.end11.i109, %while.end.i104, %if.end11.i82, %while.end.i77, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i82 ], [ -1, %while.end.i77 ], [ 0, %if.end11.i109 ], [ -1, %while.end.i104 ], [ 0, %if.end11.i136 ], [ -1, %while.end.i131 ], [ 0, %if.end11.i163 ], [ -1, %while.end.i158 ], !dbg !1774
  ret i32 %retval.0, !dbg !1935
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/matroska_ebml.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "1fa174e60935636d7a8dc8807d29ae1b")
!2 = !{!3, !4, !5, !7}
!3 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!15 = distinct !DISubprogram(name: "mk_create_writer", scope: !16, file: !16, line: 287, type: !17, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!16 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/matroska_ebml.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1fa174e60935636d7a8dc8807d29ae1b")
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !118}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_writer", file: !21, line: 24, baseType: !22)
!21 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/matroska_ebml.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1745c5eb41455b01e98496f56a8b1e8e")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mk_writer", file: !16, line: 43, size: 832, elements: !23)
!23 = !{!24, !85, !87, !102, !103, !104, !105, !106, !110, !111, !112, !113, !114, !115, !116, !117}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !22, file: !16, line: 45, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !27, line: 7, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!30 = !{!31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !47, !49, !50, !51, !55, !57, !59, !63, !66, !68, !71, !74, !75, !76, !80, !81}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !28, file: !29, line: 51, baseType: !32, size: 32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !28, file: !29, line: 54, baseType: !5, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !28, file: !29, line: 55, baseType: !5, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !28, file: !29, line: 56, baseType: !5, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !28, file: !29, line: 57, baseType: !5, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !28, file: !29, line: 58, baseType: !5, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !28, file: !29, line: 59, baseType: !5, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !28, file: !29, line: 60, baseType: !5, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !28, file: !29, line: 61, baseType: !5, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !28, file: !29, line: 64, baseType: !5, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !28, file: !29, line: 65, baseType: !5, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !28, file: !29, line: 66, baseType: !5, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !28, file: !29, line: 68, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !29, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !28, file: !29, line: 70, baseType: !48, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !28, file: !29, line: 72, baseType: !32, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !28, file: !29, line: 73, baseType: !32, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !28, file: !29, line: 74, baseType: !52, size: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !28, file: !29, line: 77, baseType: !56, size: 16, offset: 1024)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !28, file: !29, line: 78, baseType: !58, size: 8, offset: 1040)
!58 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !28, file: !29, line: 79, baseType: !60, size: 8, offset: 1048)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !28, file: !29, line: 81, baseType: !64, size: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !29, line: 43, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !28, file: !29, line: 89, baseType: !67, size: 64, offset: 1152)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !54)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !28, file: !29, line: 91, baseType: !69, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !29, line: 37, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !28, file: !29, line: 92, baseType: !72, size: 64, offset: 1280)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !29, line: 38, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !28, file: !29, line: 93, baseType: !48, size: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !28, file: !29, line: 94, baseType: !7, size: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !28, file: !29, line: 95, baseType: !77, size: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !28, file: !29, line: 96, baseType: !32, size: 32, offset: 1536)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !28, file: !29, line: 98, baseType: !82, size: 160, offset: 1568)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 20)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "duration_ptr", scope: !22, file: !16, line: 47, baseType: !86, size: 32, offset: 64)
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !22, file: !16, line: 49, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_context", file: !16, line: 41, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mk_context", file: !16, line: 31, size: 448, elements: !91)
!91 = !{!92, !94, !96, !97, !98, !99, !100, !101}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !16, line: 33, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !16, line: 33, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !16, line: 33, baseType: !93, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !90, file: !16, line: 34, baseType: !19, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !90, file: !16, line: 35, baseType: !86, size: 32, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !90, file: !16, line: 37, baseType: !7, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "d_cur", scope: !90, file: !16, line: 38, baseType: !86, size: 32, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "d_max", scope: !90, file: !16, line: 38, baseType: !86, size: 32, offset: 416)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cluster", scope: !22, file: !16, line: 49, baseType: !88, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !22, file: !16, line: 49, baseType: !88, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !22, file: !16, line: 50, baseType: !88, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "actlist", scope: !22, file: !16, line: 51, baseType: !88, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "def_duration", scope: !22, file: !16, line: 53, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !108, line: 27, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !53, line: 44, baseType: !54)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "timescale", scope: !22, file: !16, line: 54, baseType: !107, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_tc_scaled", scope: !22, file: !16, line: 55, baseType: !107, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "frame_tc", scope: !22, file: !16, line: 56, baseType: !107, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_tc", scope: !22, file: !16, line: 56, baseType: !107, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "wrote_header", scope: !22, file: !16, line: 58, baseType: !58, size: 8, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "in_frame", scope: !22, file: !16, line: 58, baseType: !58, size: 8, offset: 776)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "keyframe", scope: !22, file: !16, line: 58, baseType: !58, size: 8, offset: 784)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "skippable", scope: !22, file: !16, line: 58, baseType: !58, size: 8, offset: 792)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!120 = !{!121, !122}
!121 = !DILocalVariable(name: "filename", arg: 1, scope: !15, file: !16, line: 287, type: !118)
!122 = !DILocalVariable(name: "w", scope: !15, file: !16, line: 289, type: !19)
!123 = !DILocation(line: 0, scope: !15)
!124 = !DILocation(line: 289, column: 20, scope: !15)
!125 = !DILocation(line: 290, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !15, file: !16, line: 290, column: 9)
!127 = !DILocation(line: 290, column: 9, scope: !15)
!128 = !DILocalVariable(name: "w", arg: 1, scope: !129, file: !16, line: 61, type: !19)
!129 = distinct !DISubprogram(name: "mk_create_context", scope: !16, file: !16, line: 61, type: !130, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!88, !19, !88, !86}
!132 = !{!128, !133, !134, !135}
!133 = !DILocalVariable(name: "parent", arg: 2, scope: !129, file: !16, line: 61, type: !88)
!134 = !DILocalVariable(name: "id", arg: 3, scope: !129, file: !16, line: 61, type: !86)
!135 = !DILocalVariable(name: "c", scope: !129, file: !16, line: 63, type: !88)
!136 = !DILocation(line: 0, scope: !129, inlinedAt: !137)
!137 = distinct !DILocation(line: 295, column: 15, scope: !15)
!138 = !DILocation(line: 65, column: 12, scope: !139, inlinedAt: !137)
!139 = distinct !DILexicalBlock(scope: !129, file: !16, line: 65, column: 9)
!140 = !DILocation(line: 72, column: 13, scope: !141, inlinedAt: !137)
!141 = distinct !DILexicalBlock(scope: !139, file: !16, line: 71, column: 5)
!142 = !DILocation(line: 73, column: 14, scope: !143, inlinedAt: !137)
!143 = distinct !DILexicalBlock(scope: !141, file: !16, line: 73, column: 13)
!144 = !DILocation(line: 73, column: 13, scope: !141, inlinedAt: !137)
!145 = !DILocation(line: 298, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !16, line: 297, column: 5)
!147 = distinct !DILexicalBlock(scope: !15, file: !16, line: 296, column: 9)
!148 = !DILocation(line: 299, column: 9, scope: !146)
!149 = !DILocation(line: 79, column: 8, scope: !129, inlinedAt: !137)
!150 = !DILocation(line: 79, column: 14, scope: !129, inlinedAt: !137)
!151 = !{!152, !153, i64 24}
!152 = !{!"mk_context", !153, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !156, i64 32, !153, i64 40, !156, i64 48, !156, i64 52}
!153 = !{!"any pointer", !154, i64 0}
!154 = !{!"omnipotent char", !155, i64 0}
!155 = !{!"Simple C/C++ TBAA"}
!156 = !{!"int", !154, i64 0}
!157 = !DILocation(line: 82, column: 19, scope: !158, inlinedAt: !137)
!158 = distinct !DILexicalBlock(scope: !129, file: !16, line: 82, column: 9)
!159 = !DILocation(line: 85, column: 8, scope: !129, inlinedAt: !137)
!160 = !DILocation(line: 85, column: 13, scope: !129, inlinedAt: !137)
!161 = !{!152, !153, i64 8}
!162 = !DILocation(line: 86, column: 23, scope: !129, inlinedAt: !137)
!163 = !{!164, !153, i64 48}
!164 = !{!"mk_writer", !153, i64 0, !156, i64 8, !153, i64 16, !153, i64 24, !153, i64 32, !153, i64 40, !153, i64 48, !165, i64 56, !165, i64 64, !165, i64 72, !165, i64 80, !165, i64 88, !154, i64 96, !154, i64 97, !154, i64 98, !154, i64 99}
!165 = !{!"long", !154, i64 0}
!166 = !DILocation(line: 295, column: 8, scope: !15)
!167 = !DILocation(line: 295, column: 13, scope: !15)
!168 = !{!164, !153, i64 16}
!169 = !DILocation(line: 302, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !15, file: !16, line: 302, column: 9)
!171 = !DILocation(line: 302, column: 9, scope: !15)
!172 = !DILocation(line: 303, column: 17, scope: !170)
!173 = !{!153, !153, i64 0}
!174 = !DILocation(line: 303, column: 9, scope: !170)
!175 = !DILocation(line: 305, column: 17, scope: !170)
!176 = !DILocation(line: 0, scope: !170)
!177 = !{!164, !153, i64 0}
!178 = !DILocation(line: 306, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !15, file: !16, line: 306, column: 9)
!180 = !DILocation(line: 306, column: 9, scope: !15)
!181 = !DILocalVariable(name: "w", arg: 1, scope: !182, file: !16, line: 209, type: !19)
!182 = distinct !DISubprogram(name: "mk_destroy_contexts", scope: !16, file: !16, line: 209, type: !183, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !19}
!185 = !{!181, !186, !187, !189}
!186 = !DILocalVariable(name: "next", scope: !182, file: !16, line: 211, type: !88)
!187 = !DILocalVariable(name: "cur", scope: !188, file: !16, line: 213, type: !88)
!188 = distinct !DILexicalBlock(scope: !182, file: !16, line: 213, column: 5)
!189 = !DILocalVariable(name: "cur", scope: !190, file: !16, line: 220, type: !88)
!190 = distinct !DILexicalBlock(scope: !182, file: !16, line: 220, column: 5)
!191 = !DILocation(line: 0, scope: !182, inlinedAt: !192)
!192 = distinct !DILocation(line: 308, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !179, file: !16, line: 307, column: 5)
!194 = !DILocation(line: 213, column: 31, scope: !188, inlinedAt: !192)
!195 = !{!164, !153, i64 40}
!196 = !DILocation(line: 0, scope: !188, inlinedAt: !192)
!197 = !DILocation(line: 213, column: 5, scope: !188, inlinedAt: !192)
!198 = !DILocation(line: 220, column: 31, scope: !190, inlinedAt: !192)
!199 = !DILocation(line: 0, scope: !190, inlinedAt: !192)
!200 = !DILocation(line: 220, column: 5, scope: !190, inlinedAt: !192)
!201 = !DILocation(line: 215, column: 21, scope: !202, inlinedAt: !192)
!202 = distinct !DILexicalBlock(scope: !203, file: !16, line: 214, column: 5)
!203 = distinct !DILexicalBlock(scope: !188, file: !16, line: 213, column: 5)
!204 = !{!152, !153, i64 0}
!205 = !DILocation(line: 216, column: 20, scope: !202, inlinedAt: !192)
!206 = !{!152, !153, i64 40}
!207 = !DILocation(line: 216, column: 9, scope: !202, inlinedAt: !192)
!208 = !DILocation(line: 217, column: 9, scope: !202, inlinedAt: !192)
!209 = distinct !{!209, !197, !210, !211, !212}
!210 = !DILocation(line: 218, column: 5, scope: !188, inlinedAt: !192)
!211 = !{!"llvm.loop.mustprogress"}
!212 = !{!"llvm.loop.unroll.disable"}
!213 = !DILocation(line: 222, column: 21, scope: !214, inlinedAt: !192)
!214 = distinct !DILexicalBlock(scope: !215, file: !16, line: 221, column: 5)
!215 = distinct !DILexicalBlock(scope: !190, file: !16, line: 220, column: 5)
!216 = !DILocation(line: 223, column: 20, scope: !214, inlinedAt: !192)
!217 = !DILocation(line: 223, column: 9, scope: !214, inlinedAt: !192)
!218 = !DILocation(line: 224, column: 9, scope: !214, inlinedAt: !192)
!219 = distinct !{!219, !200, !220, !211, !212}
!220 = !DILocation(line: 225, column: 5, scope: !190, inlinedAt: !192)
!221 = !DILocation(line: 309, column: 9, scope: !193)
!222 = !DILocation(line: 310, column: 9, scope: !193)
!223 = !DILocation(line: 313, column: 8, scope: !15)
!224 = !DILocation(line: 313, column: 18, scope: !15)
!225 = !{!164, !165, i64 64}
!226 = !DILocation(line: 315, column: 5, scope: !15)
!227 = !DILocation(line: 316, column: 1, scope: !15)
!228 = !DILocation(line: 0, scope: !129)
!229 = !DILocation(line: 65, column: 12, scope: !139)
!230 = !DILocation(line: 65, column: 9, scope: !139)
!231 = !DILocation(line: 65, column: 9, scope: !129)
!232 = !DILocation(line: 68, column: 36, scope: !233)
!233 = distinct !DILexicalBlock(scope: !139, file: !16, line: 66, column: 5)
!234 = !DILocation(line: 68, column: 21, scope: !233)
!235 = !DILocation(line: 69, column: 5, scope: !233)
!236 = !DILocation(line: 72, column: 13, scope: !141)
!237 = !DILocation(line: 73, column: 14, scope: !143)
!238 = !DILocation(line: 73, column: 13, scope: !141)
!239 = !DILocation(line: 0, scope: !139)
!240 = !DILocation(line: 78, column: 8, scope: !129)
!241 = !DILocation(line: 78, column: 15, scope: !129)
!242 = !{!152, !153, i64 16}
!243 = !DILocation(line: 79, column: 8, scope: !129)
!244 = !DILocation(line: 79, column: 14, scope: !129)
!245 = !DILocation(line: 80, column: 8, scope: !129)
!246 = !DILocation(line: 80, column: 11, scope: !129)
!247 = !{!152, !156, i64 32}
!248 = !DILocation(line: 82, column: 19, scope: !158)
!249 = !DILocation(line: 82, column: 9, scope: !158)
!250 = !DILocation(line: 82, column: 9, scope: !129)
!251 = !DILocation(line: 83, column: 28, scope: !158)
!252 = !DILocation(line: 83, column: 33, scope: !158)
!253 = !DILocation(line: 83, column: 9, scope: !158)
!254 = !DILocation(line: 84, column: 13, scope: !129)
!255 = !DILocation(line: 85, column: 8, scope: !129)
!256 = !DILocation(line: 85, column: 13, scope: !129)
!257 = !DILocation(line: 86, column: 23, scope: !129)
!258 = !DILocation(line: 88, column: 5, scope: !129)
!259 = !DILocation(line: 89, column: 1, scope: !129)
!260 = distinct !DISubprogram(name: "mk_writeHeader", scope: !16, file: !16, line: 318, type: !261, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !265)
!261 = !DISubroutineType(types: !262)
!262 = !{!32, !19, !118, !118, !263, !86, !107, !107, !86, !86, !86, !86}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!266 = !DILocalVariable(name: "w", arg: 1, scope: !260, file: !16, line: 318, type: !19)
!267 = !DILocalVariable(name: "writing_app", arg: 2, scope: !260, file: !16, line: 318, type: !118)
!268 = !DILocalVariable(name: "codec_id", arg: 3, scope: !260, file: !16, line: 319, type: !118)
!269 = !DILocalVariable(name: "codec_private", arg: 4, scope: !260, file: !16, line: 320, type: !263)
!270 = !DILocalVariable(name: "codec_private_size", arg: 5, scope: !260, file: !16, line: 320, type: !86)
!271 = !DILocalVariable(name: "default_frame_duration", arg: 6, scope: !260, file: !16, line: 321, type: !107)
!272 = !DILocalVariable(name: "timescale", arg: 7, scope: !260, file: !16, line: 322, type: !107)
!273 = !DILocalVariable(name: "width", arg: 8, scope: !260, file: !16, line: 323, type: !86)
!274 = !DILocalVariable(name: "height", arg: 9, scope: !260, file: !16, line: 323, type: !86)
!275 = !DILocalVariable(name: "d_width", arg: 10, scope: !260, file: !16, line: 324, type: !86)
!276 = !DILocalVariable(name: "d_height", arg: 11, scope: !260, file: !16, line: 324, type: !86)
!277 = !DILocalVariable(name: "c", scope: !260, file: !16, line: 326, type: !88)
!278 = !DILocalVariable(name: "ti", scope: !260, file: !16, line: 326, type: !88)
!279 = !DILocalVariable(name: "v", scope: !260, file: !16, line: 326, type: !88)
!280 = !DILocation(line: 0, scope: !260)
!281 = !DILocation(line: 328, column: 12, scope: !282)
!282 = distinct !DILexicalBlock(scope: !260, file: !16, line: 328, column: 9)
!283 = !{!164, !154, i64 96}
!284 = !DILocation(line: 328, column: 9, scope: !282)
!285 = !DILocation(line: 328, column: 9, scope: !260)
!286 = !DILocation(line: 331, column: 8, scope: !260)
!287 = !DILocation(line: 331, column: 18, scope: !260)
!288 = !DILocation(line: 332, column: 8, scope: !260)
!289 = !DILocation(line: 332, column: 21, scope: !260)
!290 = !{!164, !165, i64 56}
!291 = !DILocation(line: 334, column: 40, scope: !292)
!292 = distinct !DILexicalBlock(scope: !260, file: !16, line: 334, column: 9)
!293 = !DILocation(line: 0, scope: !129, inlinedAt: !294)
!294 = distinct !DILocation(line: 334, column: 15, scope: !292)
!295 = !DILocation(line: 65, column: 12, scope: !139, inlinedAt: !294)
!296 = !DILocation(line: 65, column: 9, scope: !139, inlinedAt: !294)
!297 = !DILocation(line: 65, column: 9, scope: !129, inlinedAt: !294)
!298 = !DILocation(line: 68, column: 36, scope: !233, inlinedAt: !294)
!299 = !DILocation(line: 68, column: 21, scope: !233, inlinedAt: !294)
!300 = !DILocation(line: 69, column: 5, scope: !233, inlinedAt: !294)
!301 = !DILocation(line: 72, column: 13, scope: !141, inlinedAt: !294)
!302 = !DILocation(line: 73, column: 14, scope: !143, inlinedAt: !294)
!303 = !DILocation(line: 73, column: 13, scope: !141, inlinedAt: !294)
!304 = !DILocation(line: 0, scope: !139, inlinedAt: !294)
!305 = !DILocation(line: 78, column: 8, scope: !129, inlinedAt: !294)
!306 = !DILocation(line: 78, column: 15, scope: !129, inlinedAt: !294)
!307 = !DILocation(line: 79, column: 8, scope: !129, inlinedAt: !294)
!308 = !DILocation(line: 79, column: 14, scope: !129, inlinedAt: !294)
!309 = !DILocation(line: 80, column: 8, scope: !129, inlinedAt: !294)
!310 = !DILocation(line: 80, column: 11, scope: !129, inlinedAt: !294)
!311 = !DILocation(line: 82, column: 19, scope: !158, inlinedAt: !294)
!312 = !DILocation(line: 82, column: 9, scope: !158, inlinedAt: !294)
!313 = !DILocation(line: 82, column: 9, scope: !129, inlinedAt: !294)
!314 = !DILocation(line: 83, column: 28, scope: !158, inlinedAt: !294)
!315 = !DILocation(line: 83, column: 33, scope: !158, inlinedAt: !294)
!316 = !DILocation(line: 83, column: 9, scope: !158, inlinedAt: !294)
!317 = !DILocation(line: 84, column: 13, scope: !129, inlinedAt: !294)
!318 = !DILocation(line: 85, column: 8, scope: !129, inlinedAt: !294)
!319 = !DILocation(line: 85, column: 13, scope: !129, inlinedAt: !294)
!320 = !DILocation(line: 86, column: 23, scope: !129, inlinedAt: !294)
!321 = !DILocation(line: 336, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !16, line: 336, column: 5)
!323 = distinct !DILexicalBlock(scope: !260, file: !16, line: 336, column: 5)
!324 = !DILocation(line: 336, column: 5, scope: !323)
!325 = !DILocation(line: 337, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !16, line: 337, column: 5)
!327 = distinct !DILexicalBlock(scope: !260, file: !16, line: 337, column: 5)
!328 = !DILocation(line: 337, column: 5, scope: !327)
!329 = !DILocation(line: 338, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !16, line: 338, column: 5)
!331 = distinct !DILexicalBlock(scope: !260, file: !16, line: 338, column: 5)
!332 = !DILocation(line: 338, column: 5, scope: !331)
!333 = !DILocation(line: 339, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !16, line: 339, column: 5)
!335 = distinct !DILexicalBlock(scope: !260, file: !16, line: 339, column: 5)
!336 = !DILocation(line: 339, column: 5, scope: !335)
!337 = !DILocalVariable(name: "c", arg: 1, scope: !338, file: !16, line: 230, type: !88)
!338 = distinct !DISubprogram(name: "mk_write_string", scope: !16, file: !16, line: 230, type: !339, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!32, !88, !86, !118}
!341 = !{!337, !342, !343, !344}
!342 = !DILocalVariable(name: "id", arg: 2, scope: !338, file: !16, line: 230, type: !86)
!343 = !DILocalVariable(name: "str", arg: 3, scope: !338, file: !16, line: 230, type: !118)
!344 = !DILocalVariable(name: "len", scope: !338, file: !16, line: 232, type: !77)
!345 = !DILocation(line: 0, scope: !338, inlinedAt: !346)
!346 = distinct !DILocation(line: 340, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !16, line: 340, column: 5)
!348 = distinct !DILexicalBlock(scope: !260, file: !16, line: 340, column: 5)
!349 = !DILocalVariable(name: "c", arg: 1, scope: !350, file: !16, line: 117, type: !88)
!350 = distinct !DISubprogram(name: "mk_write_id", scope: !16, file: !16, line: 117, type: !351, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{!32, !88, !86}
!353 = !{!349, !354, !355}
!354 = !DILocalVariable(name: "id", arg: 2, scope: !350, file: !16, line: 117, type: !86)
!355 = !DILocalVariable(name: "c_id", scope: !350, file: !16, line: 119, type: !356)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 32, elements: !358)
!357 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!358 = !{!359}
!359 = !DISubrange(count: 4)
!360 = !DILocation(line: 0, scope: !350, inlinedAt: !361)
!361 = distinct !DILocation(line: 234, column: 5, scope: !362, inlinedAt: !346)
!362 = distinct !DILexicalBlock(scope: !363, file: !16, line: 234, column: 5)
!363 = distinct !DILexicalBlock(scope: !338, file: !16, line: 234, column: 5)
!364 = !DILocalVariable(name: "c", arg: 1, scope: !365, file: !16, line: 91, type: !88)
!365 = distinct !DISubprogram(name: "mk_append_context_data", scope: !16, file: !16, line: 91, type: !366, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!32, !88, !263, !86}
!368 = !{!364, !369, !370, !371, !372, !375}
!369 = !DILocalVariable(name: "data", arg: 2, scope: !365, file: !16, line: 91, type: !263)
!370 = !DILocalVariable(name: "size", arg: 3, scope: !365, file: !16, line: 91, type: !86)
!371 = !DILocalVariable(name: "ns", scope: !365, file: !16, line: 93, type: !86)
!372 = !DILocalVariable(name: "dp", scope: !373, file: !16, line: 97, type: !7)
!373 = distinct !DILexicalBlock(scope: !374, file: !16, line: 96, column: 5)
!374 = distinct !DILexicalBlock(scope: !365, file: !16, line: 95, column: 9)
!375 = !DILocalVariable(name: "dn", scope: !373, file: !16, line: 98, type: !86)
!376 = !DILocation(line: 0, scope: !365, inlinedAt: !377)
!377 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !361)
!378 = !DILocation(line: 0, scope: !365, inlinedAt: !379)
!379 = distinct !DILocation(line: 126, column: 16, scope: !380, inlinedAt: !361)
!380 = distinct !DILexicalBlock(scope: !350, file: !16, line: 125, column: 9)
!381 = !{!152, !156, i64 48}
!382 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !379)
!383 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !379)
!384 = !{!152, !156, i64 52}
!385 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !379)
!386 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !379)
!387 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !379)
!388 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !379)
!389 = !DILocation(line: 0, scope: !373, inlinedAt: !379)
!390 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !379)
!391 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !379)
!392 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !379)
!393 = distinct !{!393, !390, !394, !211, !212}
!394 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !379)
!395 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !379)
!396 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !379)
!397 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !379)
!398 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !379)
!399 = distinct !DILexicalBlock(scope: !373, file: !16, line: 103, column: 13)
!400 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !379)
!401 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !379)
!402 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !379)
!403 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !379)
!404 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !379)
!405 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !379)
!406 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !379)
!407 = !DILocation(line: 235, column: 5, scope: !408, inlinedAt: !346)
!408 = distinct !DILexicalBlock(scope: !409, file: !16, line: 235, column: 5)
!409 = distinct !DILexicalBlock(scope: !338, file: !16, line: 235, column: 5)
!410 = !DILocation(line: 235, column: 5, scope: !409, inlinedAt: !346)
!411 = !DILocation(line: 0, scope: !365, inlinedAt: !412)
!412 = distinct !DILocation(line: 236, column: 5, scope: !413, inlinedAt: !346)
!413 = distinct !DILexicalBlock(scope: !414, file: !16, line: 236, column: 5)
!414 = distinct !DILexicalBlock(scope: !338, file: !16, line: 236, column: 5)
!415 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !412)
!416 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !412)
!417 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !412)
!418 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !412)
!419 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !412)
!420 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !412)
!421 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !412)
!422 = !DILocation(line: 0, scope: !373, inlinedAt: !412)
!423 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !412)
!424 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !412)
!425 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !412)
!426 = distinct !{!426, !423, !427, !211, !212}
!427 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !412)
!428 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !412)
!429 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !412)
!430 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !412)
!431 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !412)
!432 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !412)
!433 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !412)
!434 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !412)
!435 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !412)
!436 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !412)
!437 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !412)
!438 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !412)
!439 = !DILocation(line: 341, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !16, line: 341, column: 5)
!441 = distinct !DILexicalBlock(scope: !260, file: !16, line: 341, column: 5)
!442 = !DILocation(line: 341, column: 5, scope: !441)
!443 = !DILocation(line: 342, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !16, line: 342, column: 5)
!445 = distinct !DILexicalBlock(scope: !260, file: !16, line: 342, column: 5)
!446 = !DILocation(line: 342, column: 5, scope: !445)
!447 = !DILocation(line: 343, column: 5, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !16, line: 343, column: 5)
!449 = distinct !DILexicalBlock(scope: !260, file: !16, line: 343, column: 5)
!450 = !DILocation(line: 343, column: 5, scope: !449)
!451 = !DILocation(line: 345, column: 40, scope: !452)
!452 = distinct !DILexicalBlock(scope: !260, file: !16, line: 345, column: 9)
!453 = !DILocation(line: 345, column: 15, scope: !452)
!454 = !DILocation(line: 345, column: 13, scope: !452)
!455 = !DILocation(line: 345, column: 9, scope: !260)
!456 = !DILocation(line: 347, column: 5, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !16, line: 347, column: 5)
!458 = distinct !DILexicalBlock(scope: !260, file: !16, line: 347, column: 5)
!459 = !DILocation(line: 347, column: 5, scope: !458)
!460 = !DILocation(line: 348, column: 5, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !16, line: 348, column: 5)
!462 = distinct !DILexicalBlock(scope: !260, file: !16, line: 348, column: 5)
!463 = !DILocation(line: 348, column: 5, scope: !462)
!464 = !DILocation(line: 350, column: 40, scope: !465)
!465 = distinct !DILexicalBlock(scope: !260, file: !16, line: 350, column: 9)
!466 = !DILocation(line: 350, column: 15, scope: !465)
!467 = !DILocation(line: 350, column: 13, scope: !465)
!468 = !DILocation(line: 350, column: 9, scope: !260)
!469 = !DILocation(line: 352, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !16, line: 352, column: 5)
!471 = distinct !DILexicalBlock(scope: !260, file: !16, line: 352, column: 5)
!472 = !DILocation(line: 352, column: 5, scope: !471)
!473 = !DILocation(line: 353, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !16, line: 353, column: 5)
!475 = distinct !DILexicalBlock(scope: !260, file: !16, line: 353, column: 5)
!476 = !DILocation(line: 353, column: 5, scope: !475)
!477 = !DILocation(line: 354, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !16, line: 354, column: 5)
!479 = distinct !DILexicalBlock(scope: !260, file: !16, line: 354, column: 5)
!480 = !DILocation(line: 354, column: 5, scope: !479)
!481 = !DILocation(line: 355, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !16, line: 355, column: 5)
!483 = distinct !DILexicalBlock(scope: !260, file: !16, line: 355, column: 5)
!484 = !DILocation(line: 355, column: 5, scope: !483)
!485 = !DILocation(line: 356, column: 26, scope: !260)
!486 = !DILocation(line: 356, column: 32, scope: !260)
!487 = !DILocation(line: 356, column: 8, scope: !260)
!488 = !DILocation(line: 356, column: 21, scope: !260)
!489 = !{!164, !156, i64 8}
!490 = !DILocation(line: 357, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !16, line: 357, column: 5)
!492 = distinct !DILexicalBlock(scope: !260, file: !16, line: 357, column: 5)
!493 = !DILocation(line: 357, column: 5, scope: !492)
!494 = !DILocation(line: 359, column: 40, scope: !495)
!495 = distinct !DILexicalBlock(scope: !260, file: !16, line: 359, column: 9)
!496 = !DILocation(line: 359, column: 15, scope: !495)
!497 = !DILocation(line: 359, column: 13, scope: !495)
!498 = !DILocation(line: 359, column: 9, scope: !260)
!499 = !DILocation(line: 361, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !260, file: !16, line: 361, column: 9)
!501 = !DILocation(line: 361, column: 14, scope: !500)
!502 = !DILocation(line: 361, column: 9, scope: !260)
!503 = !DILocation(line: 363, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !16, line: 363, column: 5)
!505 = distinct !DILexicalBlock(scope: !260, file: !16, line: 363, column: 5)
!506 = !DILocation(line: 363, column: 5, scope: !505)
!507 = !DILocation(line: 364, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !16, line: 364, column: 5)
!509 = distinct !DILexicalBlock(scope: !260, file: !16, line: 364, column: 5)
!510 = !DILocation(line: 364, column: 5, scope: !509)
!511 = !DILocation(line: 365, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !16, line: 365, column: 5)
!513 = distinct !DILexicalBlock(scope: !260, file: !16, line: 365, column: 5)
!514 = !DILocation(line: 365, column: 5, scope: !513)
!515 = !DILocation(line: 366, column: 5, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !16, line: 366, column: 5)
!517 = distinct !DILexicalBlock(scope: !260, file: !16, line: 366, column: 5)
!518 = !DILocation(line: 366, column: 5, scope: !517)
!519 = !DILocation(line: 367, column: 5, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !16, line: 367, column: 5)
!521 = distinct !DILexicalBlock(scope: !260, file: !16, line: 367, column: 5)
!522 = !DILocation(line: 367, column: 5, scope: !521)
!523 = !DILocation(line: 368, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !260, file: !16, line: 368, column: 9)
!525 = !DILocation(line: 368, column: 9, scope: !260)
!526 = !DILocation(line: 369, column: 9, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !16, line: 369, column: 9)
!528 = distinct !DILexicalBlock(scope: !524, file: !16, line: 369, column: 9)
!529 = !DILocation(line: 369, column: 9, scope: !528)
!530 = !DILocation(line: 370, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !260, file: !16, line: 370, column: 9)
!532 = !DILocation(line: 370, column: 9, scope: !260)
!533 = !DILocation(line: 371, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !16, line: 371, column: 9)
!535 = distinct !DILexicalBlock(scope: !531, file: !16, line: 371, column: 9)
!536 = !DILocation(line: 371, column: 9, scope: !535)
!537 = !DILocation(line: 373, column: 15, scope: !538)
!538 = distinct !DILexicalBlock(scope: !260, file: !16, line: 373, column: 9)
!539 = !DILocation(line: 373, column: 13, scope: !538)
!540 = !DILocation(line: 373, column: 9, scope: !260)
!541 = !DILocation(line: 375, column: 5, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !16, line: 375, column: 5)
!543 = distinct !DILexicalBlock(scope: !260, file: !16, line: 375, column: 5)
!544 = !DILocation(line: 375, column: 5, scope: !543)
!545 = !DILocation(line: 376, column: 5, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !16, line: 376, column: 5)
!547 = distinct !DILexicalBlock(scope: !260, file: !16, line: 376, column: 5)
!548 = !DILocation(line: 376, column: 5, scope: !547)
!549 = !DILocation(line: 377, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !16, line: 377, column: 5)
!551 = distinct !DILexicalBlock(scope: !260, file: !16, line: 377, column: 5)
!552 = !DILocation(line: 377, column: 5, scope: !551)
!553 = !DILocation(line: 378, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !16, line: 378, column: 5)
!555 = distinct !DILexicalBlock(scope: !260, file: !16, line: 378, column: 5)
!556 = !DILocation(line: 378, column: 5, scope: !555)
!557 = !DILocation(line: 379, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !16, line: 379, column: 5)
!559 = distinct !DILexicalBlock(scope: !260, file: !16, line: 379, column: 5)
!560 = !DILocation(line: 379, column: 5, scope: !559)
!561 = !DILocation(line: 381, column: 5, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !16, line: 381, column: 5)
!563 = distinct !DILexicalBlock(scope: !260, file: !16, line: 381, column: 5)
!564 = !DILocation(line: 381, column: 5, scope: !563)
!565 = !DILocation(line: 383, column: 5, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !16, line: 383, column: 5)
!567 = distinct !DILexicalBlock(scope: !260, file: !16, line: 383, column: 5)
!568 = !DILocation(line: 383, column: 5, scope: !567)
!569 = !DILocation(line: 385, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !16, line: 385, column: 5)
!571 = distinct !DILexicalBlock(scope: !260, file: !16, line: 385, column: 5)
!572 = !DILocation(line: 385, column: 5, scope: !571)
!573 = !DILocation(line: 387, column: 21, scope: !260)
!574 = !DILocation(line: 389, column: 5, scope: !260)
!575 = !DILocation(line: 390, column: 1, scope: !260)
!576 = distinct !DISubprogram(name: "mk_write_uint", scope: !16, file: !16, line: 248, type: !577, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!32, !88, !86, !107}
!579 = !{!580, !581, !582, !583, !587}
!580 = !DILocalVariable(name: "c", arg: 1, scope: !576, file: !16, line: 248, type: !88)
!581 = !DILocalVariable(name: "id", arg: 2, scope: !576, file: !16, line: 248, type: !86)
!582 = !DILocalVariable(name: "ui", arg: 3, scope: !576, file: !16, line: 248, type: !107)
!583 = !DILocalVariable(name: "c_ui", scope: !576, file: !16, line: 250, type: !584)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 64, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 8)
!587 = !DILocalVariable(name: "i", scope: !576, file: !16, line: 251, type: !86)
!588 = !DILocation(line: 0, scope: !576)
!589 = !DILocation(line: 250, column: 5, scope: !576)
!590 = !DILocation(line: 250, column: 19, scope: !576)
!591 = !DILocation(line: 250, column: 34, scope: !576)
!592 = !DILocation(line: 250, column: 31, scope: !576)
!593 = !DILocation(line: 250, column: 29, scope: !576)
!594 = !{!154, !154, i64 0}
!595 = !DILocation(line: 250, column: 44, scope: !576)
!596 = !DILocation(line: 250, column: 41, scope: !576)
!597 = !DILocation(line: 250, column: 54, scope: !576)
!598 = !DILocation(line: 250, column: 51, scope: !576)
!599 = !DILocation(line: 250, column: 64, scope: !576)
!600 = !DILocation(line: 250, column: 61, scope: !576)
!601 = !DILocation(line: 250, column: 74, scope: !576)
!602 = !DILocation(line: 250, column: 71, scope: !576)
!603 = !DILocation(line: 250, column: 84, scope: !576)
!604 = !DILocation(line: 250, column: 81, scope: !576)
!605 = !DILocation(line: 250, column: 94, scope: !576)
!606 = !DILocation(line: 250, column: 91, scope: !576)
!607 = !DILocation(line: 250, column: 100, scope: !576)
!608 = !DILocation(line: 253, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !16, line: 253, column: 5)
!610 = distinct !DILexicalBlock(scope: !576, file: !16, line: 253, column: 5)
!611 = !DILocation(line: 253, column: 5, scope: !610)
!612 = !DILocation(line: 254, column: 21, scope: !576)
!613 = !DILocation(line: 254, column: 5, scope: !576)
!614 = !DILocation(line: 255, column: 9, scope: !576)
!615 = !DILocation(line: 254, column: 14, scope: !576)
!616 = !DILocation(line: 254, column: 18, scope: !576)
!617 = distinct !{!617, !613, !618, !211, !212}
!618 = !DILocation(line: 255, column: 11, scope: !576)
!619 = !DILocation(line: 254, column: 22, scope: !576)
!620 = !DILocation(line: 256, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !16, line: 256, column: 5)
!622 = distinct !DILexicalBlock(scope: !576, file: !16, line: 256, column: 5)
!623 = !DILocation(line: 256, column: 5, scope: !622)
!624 = !DILocation(line: 257, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !16, line: 257, column: 5)
!626 = distinct !DILexicalBlock(scope: !576, file: !16, line: 257, column: 5)
!627 = !DILocation(line: 0, scope: !365, inlinedAt: !628)
!628 = distinct !DILocation(line: 257, column: 5, scope: !625)
!629 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !628)
!630 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !628)
!631 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !628)
!632 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !628)
!633 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !628)
!634 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !628)
!635 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !628)
!636 = !DILocation(line: 0, scope: !373, inlinedAt: !628)
!637 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !628)
!638 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !628)
!639 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !628)
!640 = distinct !{!640, !637, !641, !211, !212}
!641 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !628)
!642 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !628)
!643 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !628)
!644 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !628)
!645 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !628)
!646 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !628)
!647 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !628)
!648 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !628)
!649 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !628)
!650 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !628)
!651 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !628)
!652 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !628)
!653 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !628)
!654 = !DILocation(line: 259, column: 1, scope: !576)
!655 = !DILocation(line: 0, scope: !338)
!656 = !DILocation(line: 232, column: 18, scope: !338)
!657 = !DILocation(line: 234, column: 5, scope: !362)
!658 = !DILocation(line: 234, column: 5, scope: !363)
!659 = !DILocation(line: 235, column: 5, scope: !408)
!660 = !DILocation(line: 235, column: 5, scope: !409)
!661 = !DILocation(line: 0, scope: !365, inlinedAt: !662)
!662 = distinct !DILocation(line: 236, column: 5, scope: !413)
!663 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !662)
!664 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !662)
!665 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !662)
!666 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !662)
!667 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !662)
!668 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !662)
!669 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !662)
!670 = !DILocation(line: 0, scope: !373, inlinedAt: !662)
!671 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !662)
!672 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !662)
!673 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !662)
!674 = distinct !{!674, !671, !675, !211, !212}
!675 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !662)
!676 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !662)
!677 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !662)
!678 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !662)
!679 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !662)
!680 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !662)
!681 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !662)
!682 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !662)
!683 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !662)
!684 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !662)
!685 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !662)
!686 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !662)
!687 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !662)
!688 = !DILocation(line: 238, column: 1, scope: !338)
!689 = distinct !DISubprogram(name: "mk_close_context", scope: !16, file: !16, line: 187, type: !690, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!32, !88, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!693 = !{!694, !695}
!694 = !DILocalVariable(name: "c", arg: 1, scope: !689, file: !16, line: 187, type: !88)
!695 = !DILocalVariable(name: "off", arg: 2, scope: !689, file: !16, line: 187, type: !692)
!696 = !DILocation(line: 0, scope: !689)
!697 = !DILocation(line: 189, column: 12, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !16, line: 189, column: 9)
!699 = !DILocation(line: 189, column: 9, scope: !698)
!700 = !DILocation(line: 189, column: 9, scope: !689)
!701 = !DILocation(line: 191, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !16, line: 191, column: 9)
!703 = distinct !DILexicalBlock(scope: !704, file: !16, line: 191, column: 9)
!704 = distinct !DILexicalBlock(scope: !698, file: !16, line: 190, column: 5)
!705 = !DILocation(line: 191, column: 9, scope: !703)
!706 = !DILocation(line: 192, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !16, line: 192, column: 9)
!708 = distinct !DILexicalBlock(scope: !704, file: !16, line: 192, column: 9)
!709 = !DILocation(line: 192, column: 9, scope: !708)
!710 = !DILocation(line: 195, column: 12, scope: !711)
!711 = distinct !DILexicalBlock(scope: !689, file: !16, line: 195, column: 9)
!712 = !DILocation(line: 195, column: 9, scope: !711)
!713 = !DILocation(line: 195, column: 19, scope: !711)
!714 = !DILocation(line: 196, column: 28, scope: !711)
!715 = !DILocation(line: 196, column: 14, scope: !711)
!716 = !{!156, !156, i64 0}
!717 = !DILocation(line: 196, column: 9, scope: !711)
!718 = !DILocalVariable(name: "c", arg: 1, scope: !719, file: !16, line: 172, type: !88)
!719 = distinct !DISubprogram(name: "mk_flush_context_data", scope: !16, file: !16, line: 172, type: !720, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!32, !88}
!722 = !{!718}
!723 = !DILocation(line: 0, scope: !719, inlinedAt: !724)
!724 = distinct !DILocation(line: 198, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !16, line: 198, column: 5)
!726 = distinct !DILexicalBlock(scope: !689, file: !16, line: 198, column: 5)
!727 = !DILocation(line: 174, column: 13, scope: !728, inlinedAt: !724)
!728 = distinct !DILexicalBlock(scope: !719, file: !16, line: 174, column: 9)
!729 = !DILocation(line: 174, column: 10, scope: !728, inlinedAt: !724)
!730 = !DILocation(line: 174, column: 9, scope: !719, inlinedAt: !724)
!731 = !DILocation(line: 177, column: 9, scope: !732, inlinedAt: !724)
!732 = distinct !DILexicalBlock(scope: !719, file: !16, line: 177, column: 9)
!733 = !DILocation(line: 0, scope: !732, inlinedAt: !724)
!734 = !DILocation(line: 177, column: 9, scope: !719, inlinedAt: !724)
!735 = !DILocation(line: 0, scope: !365, inlinedAt: !736)
!736 = distinct !DILocation(line: 178, column: 9, scope: !737, inlinedAt: !724)
!737 = distinct !DILexicalBlock(scope: !738, file: !16, line: 178, column: 9)
!738 = distinct !DILexicalBlock(scope: !732, file: !16, line: 178, column: 9)
!739 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !736)
!740 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !736)
!741 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !736)
!742 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !736)
!743 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !736)
!744 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !736)
!745 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !736)
!746 = !DILocation(line: 0, scope: !373, inlinedAt: !736)
!747 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !736)
!748 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !736)
!749 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !736)
!750 = distinct !{!750, !747, !751, !211, !212}
!751 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !736)
!752 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !736)
!753 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !736)
!754 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !736)
!755 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !736)
!756 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !736)
!757 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !736)
!758 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !736)
!759 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !736)
!760 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !736)
!761 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !736)
!762 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !736)
!763 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !736)
!764 = !DILocation(line: 178, column: 9, scope: !738, inlinedAt: !724)
!765 = !DILocation(line: 179, column: 31, scope: !766, inlinedAt: !724)
!766 = distinct !DILexicalBlock(scope: !732, file: !16, line: 179, column: 14)
!767 = !DILocation(line: 179, column: 47, scope: !766, inlinedAt: !724)
!768 = !DILocation(line: 179, column: 54, scope: !766, inlinedAt: !724)
!769 = !DILocation(line: 179, column: 14, scope: !766, inlinedAt: !724)
!770 = !DILocation(line: 179, column: 59, scope: !766, inlinedAt: !724)
!771 = !DILocation(line: 179, column: 14, scope: !732, inlinedAt: !724)
!772 = !DILocation(line: 182, column: 14, scope: !719, inlinedAt: !724)
!773 = !DILocation(line: 184, column: 5, scope: !719, inlinedAt: !724)
!774 = !DILocation(line: 200, column: 12, scope: !775)
!775 = distinct !DILexicalBlock(scope: !689, file: !16, line: 200, column: 9)
!776 = !DILocation(line: 200, column: 9, scope: !775)
!777 = !DILocation(line: 200, column: 9, scope: !689)
!778 = !DILocation(line: 201, column: 28, scope: !775)
!779 = !DILocation(line: 201, column: 18, scope: !775)
!780 = !DILocation(line: 201, column: 23, scope: !775)
!781 = !DILocation(line: 201, column: 9, scope: !775)
!782 = !DILocation(line: 202, column: 10, scope: !689)
!783 = !DILocation(line: 202, column: 16, scope: !689)
!784 = !DILocation(line: 203, column: 18, scope: !689)
!785 = !DILocation(line: 203, column: 25, scope: !689)
!786 = !DILocation(line: 203, column: 13, scope: !689)
!787 = !DILocation(line: 204, column: 24, scope: !689)
!788 = !DILocation(line: 206, column: 5, scope: !689)
!789 = !DILocation(line: 207, column: 1, scope: !689)
!790 = distinct !DISubprogram(name: "mk_flush_context_id", scope: !16, file: !16, line: 157, type: !720, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !791)
!791 = !{!792, !793}
!792 = !DILocalVariable(name: "c", arg: 1, scope: !790, file: !16, line: 157, type: !88)
!793 = !DILocalVariable(name: "ff", scope: !790, file: !16, line: 159, type: !357)
!794 = !DILocation(line: 0, scope: !790)
!795 = !DILocation(line: 161, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !790, file: !16, line: 161, column: 9)
!797 = !DILocation(line: 161, column: 10, scope: !796)
!798 = !DILocation(line: 161, column: 9, scope: !790)
!799 = !DILocation(line: 164, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !16, line: 164, column: 5)
!801 = distinct !DILexicalBlock(scope: !790, file: !16, line: 164, column: 5)
!802 = !DILocation(line: 164, column: 5, scope: !801)
!803 = !DILocation(line: 165, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !16, line: 165, column: 5)
!805 = distinct !DILexicalBlock(scope: !790, file: !16, line: 165, column: 5)
!806 = !DILocation(line: 0, scope: !365, inlinedAt: !807)
!807 = distinct !DILocation(line: 165, column: 5, scope: !804)
!808 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !807)
!809 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !807)
!810 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !807)
!811 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !807)
!812 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !807)
!813 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !807)
!814 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !807)
!815 = !DILocation(line: 0, scope: !373, inlinedAt: !807)
!816 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !807)
!817 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !807)
!818 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !807)
!819 = distinct !{!819, !816, !820, !211, !212}
!820 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !807)
!821 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !807)
!822 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !807)
!823 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !807)
!824 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !807)
!825 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !807)
!826 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !807)
!827 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !807)
!828 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !807)
!829 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !807)
!830 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !807)
!831 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !807)
!832 = !DILocation(line: 167, column: 11, scope: !790)
!833 = !DILocation(line: 169, column: 5, scope: !790)
!834 = !DILocation(line: 170, column: 1, scope: !790)
!835 = distinct !DISubprogram(name: "mk_write_float", scope: !16, file: !16, line: 279, type: !836, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!32, !88, !86, !3}
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "c", arg: 1, scope: !835, file: !16, line: 279, type: !88)
!840 = !DILocalVariable(name: "id", arg: 2, scope: !835, file: !16, line: 279, type: !86)
!841 = !DILocalVariable(name: "f", arg: 3, scope: !835, file: !16, line: 279, type: !3)
!842 = !DILocation(line: 0, scope: !835)
!843 = !DILocation(line: 0, scope: !350, inlinedAt: !844)
!844 = distinct !DILocation(line: 281, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !16, line: 281, column: 5)
!846 = distinct !DILexicalBlock(scope: !835, file: !16, line: 281, column: 5)
!847 = !DILocation(line: 0, scope: !365, inlinedAt: !848)
!848 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !844)
!849 = !DILocation(line: 0, scope: !365, inlinedAt: !850)
!850 = distinct !DILocation(line: 126, column: 16, scope: !380, inlinedAt: !844)
!851 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !850)
!852 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !850)
!853 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !850)
!854 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !850)
!855 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !850)
!856 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !850)
!857 = !DILocation(line: 0, scope: !373, inlinedAt: !850)
!858 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !850)
!859 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !850)
!860 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !850)
!861 = distinct !{!861, !858, !862, !211, !212}
!862 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !850)
!863 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !850)
!864 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !850)
!865 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !850)
!866 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !850)
!867 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !850)
!868 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !850)
!869 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !850)
!870 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !850)
!871 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !850)
!872 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !850)
!873 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !850)
!874 = !DILocalVariable(name: "c", arg: 1, scope: !875, file: !16, line: 130, type: !88)
!875 = distinct !DISubprogram(name: "mk_write_size", scope: !16, file: !16, line: 130, type: !351, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !876)
!876 = !{!874, !877, !878}
!877 = !DILocalVariable(name: "size", arg: 2, scope: !875, file: !16, line: 130, type: !86)
!878 = !DILocalVariable(name: "c_size", scope: !875, file: !16, line: 132, type: !879)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 40, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 5)
!882 = !DILocation(line: 0, scope: !875, inlinedAt: !883)
!883 = distinct !DILocation(line: 282, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !16, line: 282, column: 5)
!885 = distinct !DILexicalBlock(scope: !835, file: !16, line: 282, column: 5)
!886 = !DILocation(line: 0, scope: !365, inlinedAt: !887)
!887 = distinct !DILocation(line: 137, column: 16, scope: !888, inlinedAt: !883)
!888 = distinct !DILexicalBlock(scope: !889, file: !16, line: 135, column: 5)
!889 = distinct !DILexicalBlock(scope: !875, file: !16, line: 134, column: 9)
!890 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !887)
!891 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !887)
!892 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !887)
!893 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !887)
!894 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !887)
!895 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !887)
!896 = !DILocation(line: 0, scope: !373, inlinedAt: !887)
!897 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !887)
!898 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !887)
!899 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !887)
!900 = distinct !{!900, !897, !901, !211, !212}
!901 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !887)
!902 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !887)
!903 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !887)
!904 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !887)
!905 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !887)
!906 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !887)
!907 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !887)
!908 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !887)
!909 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !887)
!910 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !887)
!911 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !887)
!912 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !887)
!913 = !DILocalVariable(name: "c", arg: 1, scope: !914, file: !16, line: 261, type: !88)
!914 = distinct !DISubprogram(name: "mk_write_float_raw", scope: !16, file: !16, line: 261, type: !915, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!32, !88, !3}
!917 = !{!913, !918, !919, !924}
!918 = !DILocalVariable(name: "f", arg: 2, scope: !914, file: !16, line: 261, type: !3)
!919 = !DILocalVariable(name: "u", scope: !914, file: !16, line: 267, type: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !16, line: 263, size: 32, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !920, file: !16, line: 265, baseType: !3, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !920, file: !16, line: 266, baseType: !86, size: 32)
!924 = !DILocalVariable(name: "c_f", scope: !914, file: !16, line: 268, type: !356)
!925 = !DILocation(line: 0, scope: !914, inlinedAt: !926)
!926 = distinct !DILocation(line: 283, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !16, line: 283, column: 5)
!928 = distinct !DILexicalBlock(scope: !835, file: !16, line: 283, column: 5)
!929 = !DILocation(line: 0, scope: !365, inlinedAt: !930)
!930 = distinct !DILocation(line: 276, column: 12, scope: !914, inlinedAt: !926)
!931 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !930)
!932 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !930)
!933 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !930)
!934 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !930)
!935 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !930)
!936 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !930)
!937 = !DILocation(line: 0, scope: !373, inlinedAt: !930)
!938 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !930)
!939 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !930)
!940 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !930)
!941 = distinct !{!941, !938, !942, !211, !212}
!942 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !930)
!943 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !930)
!944 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !930)
!945 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !930)
!946 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !930)
!947 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !930)
!948 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !930)
!949 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !930)
!950 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !930)
!951 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !930)
!952 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !930)
!953 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !930)
!954 = !DILocation(line: 285, column: 1, scope: !835)
!955 = distinct !DISubprogram(name: "mk_write_bin", scope: !16, file: !16, line: 240, type: !956, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!32, !88, !86, !263, !86}
!958 = !{!959, !960, !961, !962}
!959 = !DILocalVariable(name: "c", arg: 1, scope: !955, file: !16, line: 240, type: !88)
!960 = !DILocalVariable(name: "id", arg: 2, scope: !955, file: !16, line: 240, type: !86)
!961 = !DILocalVariable(name: "data", arg: 3, scope: !955, file: !16, line: 240, type: !263)
!962 = !DILocalVariable(name: "size", arg: 4, scope: !955, file: !16, line: 240, type: !86)
!963 = !DILocation(line: 0, scope: !955)
!964 = !DILocation(line: 0, scope: !350, inlinedAt: !965)
!965 = distinct !DILocation(line: 242, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !16, line: 242, column: 5)
!967 = distinct !DILexicalBlock(scope: !955, file: !16, line: 242, column: 5)
!968 = !DILocation(line: 0, scope: !365, inlinedAt: !969)
!969 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !965)
!970 = !DILocation(line: 0, scope: !365, inlinedAt: !971)
!971 = distinct !DILocation(line: 126, column: 16, scope: !380, inlinedAt: !965)
!972 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !971)
!973 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !971)
!974 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !971)
!975 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !971)
!976 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !971)
!977 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !971)
!978 = !DILocation(line: 0, scope: !373, inlinedAt: !971)
!979 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !971)
!980 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !971)
!981 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !971)
!982 = distinct !{!982, !979, !983, !211, !212}
!983 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !971)
!984 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !971)
!985 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !971)
!986 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !971)
!987 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !971)
!988 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !971)
!989 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !971)
!990 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !971)
!991 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !971)
!992 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !971)
!993 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !971)
!994 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !971)
!995 = !DILocation(line: 243, column: 5, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !16, line: 243, column: 5)
!997 = distinct !DILexicalBlock(scope: !955, file: !16, line: 243, column: 5)
!998 = !DILocation(line: 243, column: 5, scope: !997)
!999 = !DILocation(line: 0, scope: !365, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 244, column: 5, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !16, line: 244, column: 5)
!1002 = distinct !DILexicalBlock(scope: !955, file: !16, line: 244, column: 5)
!1003 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1000)
!1004 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1000)
!1005 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1000)
!1006 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1000)
!1007 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1000)
!1008 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1000)
!1009 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1000)
!1010 = !DILocation(line: 0, scope: !373, inlinedAt: !1000)
!1011 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1000)
!1012 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1000)
!1013 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1000)
!1014 = distinct !{!1014, !1011, !1015, !211, !212}
!1015 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1000)
!1016 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1000)
!1017 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1000)
!1018 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1000)
!1019 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1000)
!1020 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1000)
!1021 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1000)
!1022 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1000)
!1023 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1000)
!1024 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1000)
!1025 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1000)
!1026 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1000)
!1027 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1000)
!1028 = !DILocation(line: 246, column: 1, scope: !955)
!1029 = !DILocation(line: 0, scope: !719)
!1030 = !DILocation(line: 174, column: 13, scope: !728)
!1031 = !DILocation(line: 174, column: 10, scope: !728)
!1032 = !DILocation(line: 174, column: 9, scope: !719)
!1033 = !DILocation(line: 177, column: 12, scope: !732)
!1034 = !DILocation(line: 177, column: 9, scope: !732)
!1035 = !DILocation(line: 0, scope: !732)
!1036 = !DILocation(line: 177, column: 9, scope: !719)
!1037 = !DILocation(line: 0, scope: !365, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 178, column: 9, scope: !737)
!1039 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1038)
!1040 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1038)
!1041 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1038)
!1042 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1038)
!1043 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1038)
!1044 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1038)
!1045 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1038)
!1046 = !DILocation(line: 0, scope: !373, inlinedAt: !1038)
!1047 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1038)
!1048 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1038)
!1049 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1038)
!1050 = distinct !{!1050, !1047, !1051, !211, !212}
!1051 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1038)
!1052 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1038)
!1053 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1038)
!1054 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1038)
!1055 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1038)
!1056 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1038)
!1057 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1038)
!1058 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1038)
!1059 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1038)
!1060 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1038)
!1061 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1038)
!1062 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1038)
!1063 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1038)
!1064 = !DILocation(line: 178, column: 9, scope: !738)
!1065 = !DILocation(line: 179, column: 31, scope: !766)
!1066 = !DILocation(line: 179, column: 47, scope: !766)
!1067 = !DILocation(line: 179, column: 54, scope: !766)
!1068 = !DILocation(line: 179, column: 14, scope: !766)
!1069 = !DILocation(line: 179, column: 59, scope: !766)
!1070 = !DILocation(line: 179, column: 14, scope: !732)
!1071 = !DILocation(line: 182, column: 14, scope: !719)
!1072 = !DILocation(line: 184, column: 5, scope: !719)
!1073 = !DILocation(line: 185, column: 1, scope: !719)
!1074 = distinct !DISubprogram(name: "mk_start_frame", scope: !16, file: !16, line: 451, type: !1075, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!32, !19}
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "w", arg: 1, scope: !1074, file: !16, line: 451, type: !19)
!1079 = !DILocation(line: 0, scope: !1074)
!1080 = !DILocation(line: 453, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !16, line: 453, column: 9)
!1082 = !DILocation(line: 453, column: 29, scope: !1081)
!1083 = !DILocation(line: 453, column: 9, scope: !1074)
!1084 = !DILocation(line: 456, column: 8, scope: !1074)
!1085 = !DILocation(line: 456, column: 18, scope: !1074)
!1086 = !{!164, !154, i64 97}
!1087 = !DILocation(line: 457, column: 8, scope: !1074)
!1088 = !DILocation(line: 457, column: 18, scope: !1074)
!1089 = !{!164, !154, i64 98}
!1090 = !DILocation(line: 458, column: 8, scope: !1074)
!1091 = !DILocation(line: 458, column: 18, scope: !1074)
!1092 = !{!164, !154, i64 99}
!1093 = !DILocation(line: 460, column: 5, scope: !1074)
!1094 = !DILocation(line: 461, column: 1, scope: !1074)
!1095 = distinct !DISubprogram(name: "mk_flush_frame", scope: !16, file: !16, line: 402, type: !1075, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1096)
!1096 = !{!1097, !1098, !1099, !1100}
!1097 = !DILocalVariable(name: "w", arg: 1, scope: !1095, file: !16, line: 402, type: !19)
!1098 = !DILocalVariable(name: "delta", scope: !1095, file: !16, line: 404, type: !107)
!1099 = !DILocalVariable(name: "fsize", scope: !1095, file: !16, line: 405, type: !86)
!1100 = !DILocalVariable(name: "c_delta_flags", scope: !1095, file: !16, line: 406, type: !1101)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 24, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 3)
!1104 = !DILocation(line: 0, scope: !1095)
!1105 = !DILocation(line: 408, column: 13, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 408, column: 9)
!1107 = !DILocation(line: 408, column: 10, scope: !1106)
!1108 = !DILocation(line: 408, column: 9, scope: !1095)
!1109 = !DILocation(line: 411, column: 16, scope: !1095)
!1110 = !{!164, !165, i64 80}
!1111 = !DILocation(line: 411, column: 28, scope: !1095)
!1112 = !DILocation(line: 411, column: 24, scope: !1095)
!1113 = !DILocation(line: 411, column: 43, scope: !1095)
!1114 = !{!164, !165, i64 72}
!1115 = !DILocation(line: 411, column: 38, scope: !1095)
!1116 = !DILocation(line: 412, column: 25, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 412, column: 9)
!1118 = !DILocation(line: 413, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !16, line: 413, column: 9)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !16, line: 413, column: 9)
!1121 = !DILocation(line: 413, column: 9, scope: !1120)
!1122 = !DILocation(line: 415, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 415, column: 9)
!1124 = !{!164, !153, i64 24}
!1125 = !DILocation(line: 415, column: 10, scope: !1123)
!1126 = !DILocation(line: 415, column: 9, scope: !1095)
!1127 = !DILocation(line: 417, column: 35, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !16, line: 416, column: 5)
!1129 = !DILocation(line: 417, column: 49, scope: !1128)
!1130 = !DILocation(line: 417, column: 44, scope: !1128)
!1131 = !DILocation(line: 417, column: 30, scope: !1128)
!1132 = !DILocation(line: 418, column: 47, scope: !1128)
!1133 = !DILocation(line: 0, scope: !129, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 418, column: 22, scope: !1128)
!1135 = !DILocation(line: 65, column: 12, scope: !139, inlinedAt: !1134)
!1136 = !DILocation(line: 65, column: 9, scope: !139, inlinedAt: !1134)
!1137 = !DILocation(line: 65, column: 9, scope: !129, inlinedAt: !1134)
!1138 = !DILocation(line: 68, column: 36, scope: !233, inlinedAt: !1134)
!1139 = !DILocation(line: 68, column: 21, scope: !233, inlinedAt: !1134)
!1140 = !DILocation(line: 69, column: 5, scope: !233, inlinedAt: !1134)
!1141 = !DILocation(line: 72, column: 13, scope: !141, inlinedAt: !1134)
!1142 = !DILocation(line: 73, column: 14, scope: !143, inlinedAt: !1134)
!1143 = !DILocation(line: 73, column: 13, scope: !141, inlinedAt: !1134)
!1144 = !DILocation(line: 418, column: 20, scope: !1128)
!1145 = !DILocation(line: 419, column: 13, scope: !1128)
!1146 = !DILocation(line: 0, scope: !139, inlinedAt: !1134)
!1147 = !DILocation(line: 78, column: 8, scope: !129, inlinedAt: !1134)
!1148 = !DILocation(line: 78, column: 15, scope: !129, inlinedAt: !1134)
!1149 = !DILocation(line: 79, column: 8, scope: !129, inlinedAt: !1134)
!1150 = !DILocation(line: 79, column: 14, scope: !129, inlinedAt: !1134)
!1151 = !DILocation(line: 80, column: 8, scope: !129, inlinedAt: !1134)
!1152 = !DILocation(line: 80, column: 11, scope: !129, inlinedAt: !1134)
!1153 = !DILocation(line: 82, column: 19, scope: !158, inlinedAt: !1134)
!1154 = !DILocation(line: 82, column: 9, scope: !158, inlinedAt: !1134)
!1155 = !DILocation(line: 82, column: 9, scope: !129, inlinedAt: !1134)
!1156 = !DILocation(line: 83, column: 28, scope: !158, inlinedAt: !1134)
!1157 = !DILocation(line: 83, column: 33, scope: !158, inlinedAt: !1134)
!1158 = !DILocation(line: 83, column: 9, scope: !158, inlinedAt: !1134)
!1159 = !DILocation(line: 84, column: 13, scope: !129, inlinedAt: !1134)
!1160 = !DILocation(line: 85, column: 8, scope: !129, inlinedAt: !1134)
!1161 = !DILocation(line: 85, column: 13, scope: !129, inlinedAt: !1134)
!1162 = !DILocation(line: 86, column: 23, scope: !129, inlinedAt: !1134)
!1163 = !DILocation(line: 422, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !16, line: 422, column: 9)
!1165 = distinct !DILexicalBlock(scope: !1128, file: !16, line: 422, column: 9)
!1166 = !DILocation(line: 422, column: 9, scope: !1165)
!1167 = !DILocation(line: 427, column: 16, scope: !1095)
!1168 = !{!164, !153, i64 32}
!1169 = !DILocation(line: 427, column: 13, scope: !1095)
!1170 = !DILocation(line: 427, column: 34, scope: !1095)
!1171 = !DILocation(line: 429, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !16, line: 429, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 429, column: 5)
!1174 = !DILocation(line: 0, scope: !350, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 429, column: 5, scope: !1172)
!1176 = !DILocation(line: 0, scope: !365, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !1175)
!1178 = !DILocation(line: 0, scope: !365, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 126, column: 16, scope: !380, inlinedAt: !1175)
!1180 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1177)
!1181 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1177)
!1182 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1177)
!1183 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1177)
!1184 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1177)
!1185 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1177)
!1186 = !DILocation(line: 0, scope: !373, inlinedAt: !1177)
!1187 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1177)
!1188 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1177)
!1189 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1177)
!1190 = distinct !{!1190, !1187, !1191, !211, !212}
!1191 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1177)
!1192 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1177)
!1193 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1177)
!1194 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1177)
!1195 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1177)
!1196 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1177)
!1197 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1177)
!1198 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1177)
!1199 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1177)
!1200 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1177)
!1201 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1177)
!1202 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1177)
!1203 = !DILocation(line: 430, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !16, line: 430, column: 5)
!1205 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 430, column: 5)
!1206 = !DILocation(line: 430, column: 5, scope: !1205)
!1207 = !DILocation(line: 431, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !16, line: 431, column: 5)
!1209 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 431, column: 5)
!1210 = !DILocation(line: 0, scope: !875, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 431, column: 5, scope: !1208)
!1212 = !DILocation(line: 0, scope: !365, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 137, column: 16, scope: !888, inlinedAt: !1211)
!1214 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1213)
!1215 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1213)
!1216 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1213)
!1217 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1213)
!1218 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1213)
!1219 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1213)
!1220 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1213)
!1221 = !DILocation(line: 0, scope: !373, inlinedAt: !1213)
!1222 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1213)
!1223 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1213)
!1224 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1213)
!1225 = distinct !{!1225, !1222, !1226, !211, !212}
!1226 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1213)
!1227 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1213)
!1228 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1213)
!1229 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1213)
!1230 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1213)
!1231 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1213)
!1232 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1213)
!1233 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1213)
!1234 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1213)
!1235 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1213)
!1236 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1213)
!1237 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1213)
!1238 = !DILocation(line: 433, column: 30, scope: !1095)
!1239 = !DILocation(line: 433, column: 24, scope: !1095)
!1240 = !DILocation(line: 434, column: 24, scope: !1095)
!1241 = !DILocation(line: 435, column: 28, scope: !1095)
!1242 = !DILocation(line: 435, column: 37, scope: !1095)
!1243 = !DILocation(line: 435, column: 48, scope: !1095)
!1244 = !DILocation(line: 435, column: 43, scope: !1095)
!1245 = !DILocation(line: 436, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !16, line: 436, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 436, column: 5)
!1248 = !DILocation(line: 0, scope: !365, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 436, column: 5, scope: !1246)
!1250 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1249)
!1251 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1249)
!1252 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1249)
!1253 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1249)
!1254 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1249)
!1255 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1249)
!1256 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1249)
!1257 = !DILocation(line: 0, scope: !373, inlinedAt: !1249)
!1258 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1249)
!1259 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1249)
!1260 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1249)
!1261 = distinct !{!1261, !1258, !1262, !211, !212}
!1262 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1249)
!1263 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1249)
!1264 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1249)
!1265 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1249)
!1266 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1249)
!1267 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1249)
!1268 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1249)
!1269 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1249)
!1270 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1249)
!1271 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1249)
!1272 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1249)
!1273 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1249)
!1274 = !DILocation(line: 437, column: 12, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 437, column: 9)
!1276 = !DILocation(line: 437, column: 9, scope: !1275)
!1277 = !DILocation(line: 437, column: 9, scope: !1095)
!1278 = !DILocation(line: 439, column: 9, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !16, line: 439, column: 9)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !16, line: 439, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !16, line: 438, column: 5)
!1282 = !DILocation(line: 0, scope: !365, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 439, column: 9, scope: !1279)
!1284 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1283)
!1285 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1283)
!1286 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1283)
!1287 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1283)
!1288 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1283)
!1289 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1283)
!1290 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1283)
!1291 = !DILocation(line: 0, scope: !373, inlinedAt: !1283)
!1292 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1283)
!1293 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1283)
!1294 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1283)
!1295 = distinct !{!1295, !1292, !1296, !211, !212}
!1296 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1283)
!1297 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1283)
!1298 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1283)
!1299 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1283)
!1300 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1283)
!1301 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1283)
!1302 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1283)
!1303 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1283)
!1304 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1283)
!1305 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1283)
!1306 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1283)
!1307 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1283)
!1308 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1283)
!1309 = !DILocation(line: 440, column: 12, scope: !1281)
!1310 = !DILocation(line: 440, column: 19, scope: !1281)
!1311 = !DILocation(line: 440, column: 25, scope: !1281)
!1312 = !DILocation(line: 441, column: 5, scope: !1281)
!1313 = !DILocation(line: 443, column: 17, scope: !1095)
!1314 = !DILocation(line: 445, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1095, file: !16, line: 445, column: 9)
!1316 = !DILocation(line: 445, column: 21, scope: !1315)
!1317 = !DILocation(line: 445, column: 27, scope: !1315)
!1318 = !DILocation(line: 445, column: 9, scope: !1095)
!1319 = !DILocation(line: 446, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !16, line: 446, column: 9)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !16, line: 446, column: 9)
!1322 = !DILocation(line: 446, column: 9, scope: !1321)
!1323 = !DILocation(line: 448, column: 5, scope: !1095)
!1324 = !DILocation(line: 449, column: 1, scope: !1095)
!1325 = distinct !DISubprogram(name: "mk_set_frame_flags", scope: !16, file: !16, line: 463, type: !1326, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!32, !19, !107, !32, !32}
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DILocalVariable(name: "w", arg: 1, scope: !1325, file: !16, line: 463, type: !19)
!1330 = !DILocalVariable(name: "timestamp", arg: 2, scope: !1325, file: !16, line: 463, type: !107)
!1331 = !DILocalVariable(name: "keyframe", arg: 3, scope: !1325, file: !16, line: 463, type: !32)
!1332 = !DILocalVariable(name: "skippable", arg: 4, scope: !1325, file: !16, line: 463, type: !32)
!1333 = !DILocation(line: 0, scope: !1325)
!1334 = !DILocation(line: 465, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1325, file: !16, line: 465, column: 9)
!1336 = !DILocation(line: 465, column: 10, scope: !1335)
!1337 = !DILocation(line: 465, column: 9, scope: !1325)
!1338 = !DILocation(line: 468, column: 8, scope: !1325)
!1339 = !DILocation(line: 468, column: 18, scope: !1325)
!1340 = !DILocation(line: 469, column: 30, scope: !1325)
!1341 = !DILocation(line: 469, column: 20, scope: !1325)
!1342 = !DILocation(line: 469, column: 8, scope: !1325)
!1343 = !DILocation(line: 469, column: 18, scope: !1325)
!1344 = !DILocation(line: 470, column: 30, scope: !1325)
!1345 = !DILocation(line: 470, column: 20, scope: !1325)
!1346 = !DILocation(line: 470, column: 8, scope: !1325)
!1347 = !DILocation(line: 470, column: 18, scope: !1325)
!1348 = !DILocation(line: 472, column: 12, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1325, file: !16, line: 472, column: 9)
!1350 = !{!164, !165, i64 88}
!1351 = !DILocation(line: 472, column: 25, scope: !1349)
!1352 = !DILocation(line: 472, column: 9, scope: !1325)
!1353 = !DILocation(line: 473, column: 25, scope: !1349)
!1354 = !DILocation(line: 473, column: 9, scope: !1349)
!1355 = !DILocation(line: 476, column: 1, scope: !1325)
!1356 = distinct !DISubprogram(name: "mk_add_frame_data", scope: !16, file: !16, line: 478, type: !1357, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!32, !19, !263, !86}
!1359 = !{!1360, !1361, !1362}
!1360 = !DILocalVariable(name: "w", arg: 1, scope: !1356, file: !16, line: 478, type: !19)
!1361 = !DILocalVariable(name: "data", arg: 2, scope: !1356, file: !16, line: 478, type: !263)
!1362 = !DILocalVariable(name: "size", arg: 3, scope: !1356, file: !16, line: 478, type: !86)
!1363 = !DILocation(line: 0, scope: !1356)
!1364 = !DILocation(line: 480, column: 13, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !16, line: 480, column: 9)
!1366 = !DILocation(line: 480, column: 10, scope: !1365)
!1367 = !DILocation(line: 480, column: 9, scope: !1356)
!1368 = !DILocation(line: 483, column: 13, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1356, file: !16, line: 483, column: 9)
!1370 = !DILocation(line: 483, column: 10, scope: !1369)
!1371 = !DILocation(line: 483, column: 9, scope: !1356)
!1372 = !DILocation(line: 0, scope: !129, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 484, column: 26, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !16, line: 484, column: 13)
!1375 = !DILocation(line: 65, column: 12, scope: !139, inlinedAt: !1373)
!1376 = !DILocation(line: 65, column: 9, scope: !139, inlinedAt: !1373)
!1377 = !DILocation(line: 65, column: 9, scope: !129, inlinedAt: !1373)
!1378 = !DILocation(line: 68, column: 36, scope: !233, inlinedAt: !1373)
!1379 = !DILocation(line: 68, column: 21, scope: !233, inlinedAt: !1373)
!1380 = !DILocation(line: 69, column: 5, scope: !233, inlinedAt: !1373)
!1381 = !DILocation(line: 72, column: 13, scope: !141, inlinedAt: !1373)
!1382 = !DILocation(line: 73, column: 14, scope: !143, inlinedAt: !1373)
!1383 = !DILocation(line: 73, column: 13, scope: !141, inlinedAt: !1373)
!1384 = !DILocation(line: 484, column: 24, scope: !1374)
!1385 = !DILocation(line: 484, column: 13, scope: !1369)
!1386 = !DILocation(line: 0, scope: !139, inlinedAt: !1373)
!1387 = !DILocation(line: 78, column: 8, scope: !129, inlinedAt: !1373)
!1388 = !DILocation(line: 78, column: 15, scope: !129, inlinedAt: !1373)
!1389 = !DILocation(line: 79, column: 8, scope: !129, inlinedAt: !1373)
!1390 = !DILocation(line: 79, column: 14, scope: !129, inlinedAt: !1373)
!1391 = !DILocation(line: 80, column: 8, scope: !129, inlinedAt: !1373)
!1392 = !DILocation(line: 80, column: 11, scope: !129, inlinedAt: !1373)
!1393 = !DILocation(line: 82, column: 19, scope: !158, inlinedAt: !1373)
!1394 = !DILocation(line: 82, column: 9, scope: !158, inlinedAt: !1373)
!1395 = !DILocation(line: 82, column: 9, scope: !129, inlinedAt: !1373)
!1396 = !DILocation(line: 83, column: 28, scope: !158, inlinedAt: !1373)
!1397 = !DILocation(line: 83, column: 33, scope: !158, inlinedAt: !1373)
!1398 = !DILocation(line: 83, column: 9, scope: !158, inlinedAt: !1373)
!1399 = !DILocation(line: 84, column: 13, scope: !129, inlinedAt: !1373)
!1400 = !DILocation(line: 85, column: 8, scope: !129, inlinedAt: !1373)
!1401 = !DILocation(line: 85, column: 13, scope: !129, inlinedAt: !1373)
!1402 = !DILocation(line: 86, column: 23, scope: !129, inlinedAt: !1373)
!1403 = !DILocation(line: 487, column: 39, scope: !1356)
!1404 = !DILocation(line: 0, scope: !365, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 487, column: 12, scope: !1356)
!1406 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1405)
!1407 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1405)
!1408 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1405)
!1409 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1405)
!1410 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1405)
!1411 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1405)
!1412 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1405)
!1413 = !DILocation(line: 0, scope: !373, inlinedAt: !1405)
!1414 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1405)
!1415 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1405)
!1416 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1405)
!1417 = distinct !{!1417, !1414, !1418, !211, !212}
!1418 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1405)
!1419 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1405)
!1420 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1405)
!1421 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1405)
!1422 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1405)
!1423 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1405)
!1424 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1405)
!1425 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1405)
!1426 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1405)
!1427 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1405)
!1428 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1405)
!1429 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1405)
!1430 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1405)
!1431 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1405)
!1432 = !DILocation(line: 488, column: 1, scope: !1356)
!1433 = distinct !DISubprogram(name: "mk_close", scope: !16, file: !16, line: 490, type: !1434, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!32, !19, !107}
!1436 = !{!1437, !1438, !1439, !1440, !1443}
!1437 = !DILocalVariable(name: "w", arg: 1, scope: !1433, file: !16, line: 490, type: !19)
!1438 = !DILocalVariable(name: "last_delta", arg: 2, scope: !1433, file: !16, line: 490, type: !107)
!1439 = !DILocalVariable(name: "ret", scope: !1433, file: !16, line: 492, type: !32)
!1440 = !DILocalVariable(name: "last_frametime", scope: !1441, file: !16, line: 498, type: !107)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !16, line: 496, column: 5)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !16, line: 495, column: 9)
!1443 = !DILocalVariable(name: "total_duration", scope: !1441, file: !16, line: 499, type: !107)
!1444 = !DILocation(line: 0, scope: !1433)
!1445 = !DILocation(line: 493, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1433, file: !16, line: 493, column: 9)
!1447 = !DILocation(line: 493, column: 29, scope: !1446)
!1448 = !DILocation(line: 493, column: 33, scope: !1446)
!1449 = !DILocation(line: 493, column: 36, scope: !1446)
!1450 = !DILocation(line: 493, column: 58, scope: !1446)
!1451 = !DILocation(line: 493, column: 9, scope: !1433)
!1452 = !DILocation(line: 494, column: 9, scope: !1446)
!1453 = !DILocation(line: 495, column: 12, scope: !1442)
!1454 = !DILocation(line: 495, column: 9, scope: !1442)
!1455 = !DILocation(line: 495, column: 25, scope: !1442)
!1456 = !DILocation(line: 497, column: 19, scope: !1441)
!1457 = !DILocation(line: 497, column: 26, scope: !1441)
!1458 = !DILocation(line: 497, column: 23, scope: !1441)
!1459 = !DILocation(line: 497, column: 9, scope: !1441)
!1460 = !DILocation(line: 498, column: 37, scope: !1441)
!1461 = !DILocation(line: 498, column: 34, scope: !1441)
!1462 = !DILocation(line: 0, scope: !1441)
!1463 = !DILocation(line: 499, column: 37, scope: !1441)
!1464 = !DILocation(line: 499, column: 49, scope: !1441)
!1465 = !DILocation(line: 500, column: 36, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1441, file: !16, line: 500, column: 13)
!1467 = !DILocation(line: 500, column: 50, scope: !1466)
!1468 = !DILocation(line: 500, column: 78, scope: !1466)
!1469 = !DILocation(line: 500, column: 75, scope: !1466)
!1470 = !DILocation(line: 500, column: 73, scope: !1466)
!1471 = !DILocation(line: 500, column: 42, scope: !1466)
!1472 = !DILocation(line: 0, scope: !914, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 500, column: 13, scope: !1466)
!1474 = !DILocation(line: 271, column: 16, scope: !914, inlinedAt: !1473)
!1475 = !DILocation(line: 271, column: 18, scope: !914, inlinedAt: !1473)
!1476 = !DILocation(line: 271, column: 14, scope: !914, inlinedAt: !1473)
!1477 = !DILocation(line: 272, column: 18, scope: !914, inlinedAt: !1473)
!1478 = !DILocation(line: 272, column: 14, scope: !914, inlinedAt: !1473)
!1479 = !DILocation(line: 273, column: 18, scope: !914, inlinedAt: !1473)
!1480 = !DILocation(line: 273, column: 14, scope: !914, inlinedAt: !1473)
!1481 = !DILocation(line: 274, column: 14, scope: !914, inlinedAt: !1473)
!1482 = !DILocation(line: 0, scope: !365, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 276, column: 12, scope: !914, inlinedAt: !1473)
!1484 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1483)
!1485 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1483)
!1486 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1483)
!1487 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1483)
!1488 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1483)
!1489 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1483)
!1490 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1483)
!1491 = !DILocation(line: 0, scope: !373, inlinedAt: !1483)
!1492 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1483)
!1493 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1483)
!1494 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1483)
!1495 = distinct !{!1495, !1492, !1496, !211, !212}
!1496 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1483)
!1497 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1483)
!1498 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1483)
!1499 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1483)
!1500 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1483)
!1501 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1483)
!1502 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1483)
!1503 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1483)
!1504 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1483)
!1505 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1483)
!1506 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1483)
!1507 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1483)
!1508 = !DILocation(line: 501, column: 39, scope: !1466)
!1509 = !DILocation(line: 0, scope: !719, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 501, column: 13, scope: !1466)
!1511 = !DILocation(line: 174, column: 13, scope: !728, inlinedAt: !1510)
!1512 = !DILocation(line: 174, column: 10, scope: !728, inlinedAt: !1510)
!1513 = !DILocation(line: 174, column: 9, scope: !719, inlinedAt: !1510)
!1514 = !DILocation(line: 177, column: 12, scope: !732, inlinedAt: !1510)
!1515 = !DILocation(line: 177, column: 9, scope: !732, inlinedAt: !1510)
!1516 = !DILocation(line: 0, scope: !732, inlinedAt: !1510)
!1517 = !DILocation(line: 177, column: 9, scope: !719, inlinedAt: !1510)
!1518 = !DILocation(line: 0, scope: !365, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 178, column: 9, scope: !737, inlinedAt: !1510)
!1520 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1519)
!1521 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1519)
!1522 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1519)
!1523 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1519)
!1524 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1519)
!1525 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1519)
!1526 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1519)
!1527 = !DILocation(line: 0, scope: !373, inlinedAt: !1519)
!1528 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1519)
!1529 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1519)
!1530 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1519)
!1531 = distinct !{!1531, !1528, !1532, !211, !212}
!1532 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1519)
!1533 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1519)
!1534 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1519)
!1535 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1519)
!1536 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1519)
!1537 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1519)
!1538 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1519)
!1539 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1519)
!1540 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1519)
!1541 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1519)
!1542 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1519)
!1543 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1519)
!1544 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1519)
!1545 = !DILocation(line: 178, column: 9, scope: !738, inlinedAt: !1510)
!1546 = !DILocation(line: 179, column: 31, scope: !766, inlinedAt: !1510)
!1547 = !DILocation(line: 179, column: 47, scope: !766, inlinedAt: !1510)
!1548 = !DILocation(line: 179, column: 54, scope: !766, inlinedAt: !1510)
!1549 = !DILocation(line: 179, column: 14, scope: !766, inlinedAt: !1510)
!1550 = !DILocation(line: 179, column: 59, scope: !766, inlinedAt: !1510)
!1551 = !DILocation(line: 179, column: 14, scope: !732, inlinedAt: !1510)
!1552 = !DILocation(line: 182, column: 14, scope: !719, inlinedAt: !1510)
!1553 = !DILocation(line: 184, column: 5, scope: !719, inlinedAt: !1510)
!1554 = !DILocation(line: 0, scope: !182, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 504, column: 5, scope: !1433)
!1556 = !DILocation(line: 213, column: 31, scope: !188, inlinedAt: !1555)
!1557 = !DILocation(line: 0, scope: !188, inlinedAt: !1555)
!1558 = !DILocation(line: 213, column: 5, scope: !188, inlinedAt: !1555)
!1559 = !DILocation(line: 220, column: 31, scope: !190, inlinedAt: !1555)
!1560 = !DILocation(line: 0, scope: !190, inlinedAt: !1555)
!1561 = !DILocation(line: 220, column: 5, scope: !190, inlinedAt: !1555)
!1562 = !DILocation(line: 215, column: 21, scope: !202, inlinedAt: !1555)
!1563 = !DILocation(line: 216, column: 20, scope: !202, inlinedAt: !1555)
!1564 = !DILocation(line: 216, column: 9, scope: !202, inlinedAt: !1555)
!1565 = !DILocation(line: 217, column: 9, scope: !202, inlinedAt: !1555)
!1566 = distinct !{!1566, !1558, !1567, !211, !212}
!1567 = !DILocation(line: 218, column: 5, scope: !188, inlinedAt: !1555)
!1568 = !DILocation(line: 222, column: 21, scope: !214, inlinedAt: !1555)
!1569 = !DILocation(line: 223, column: 20, scope: !214, inlinedAt: !1555)
!1570 = !DILocation(line: 223, column: 9, scope: !214, inlinedAt: !1555)
!1571 = !DILocation(line: 224, column: 9, scope: !214, inlinedAt: !1555)
!1572 = distinct !{!1572, !1561, !1573, !211, !212}
!1573 = !DILocation(line: 225, column: 5, scope: !190, inlinedAt: !1555)
!1574 = !DILocation(line: 227, column: 35, scope: !182, inlinedAt: !1555)
!1575 = !DILocation(line: 227, column: 40, scope: !182, inlinedAt: !1555)
!1576 = !DILocation(line: 227, column: 30, scope: !182, inlinedAt: !1555)
!1577 = !DILocation(line: 505, column: 16, scope: !1433)
!1578 = !DILocation(line: 505, column: 5, scope: !1433)
!1579 = !DILocation(line: 506, column: 5, scope: !1433)
!1580 = !DILocation(line: 507, column: 5, scope: !1433)
!1581 = distinct !DISubprogram(name: "mk_close_cluster", scope: !16, file: !16, line: 392, type: !1075, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1582)
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "w", arg: 1, scope: !1581, file: !16, line: 392, type: !19)
!1584 = !DILocation(line: 0, scope: !1581)
!1585 = !DILocation(line: 394, column: 12, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !16, line: 394, column: 9)
!1587 = !DILocation(line: 394, column: 20, scope: !1586)
!1588 = !DILocation(line: 394, column: 9, scope: !1581)
!1589 = !DILocation(line: 396, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !16, line: 396, column: 5)
!1591 = distinct !DILexicalBlock(scope: !1581, file: !16, line: 396, column: 5)
!1592 = !DILocation(line: 396, column: 5, scope: !1591)
!1593 = !DILocation(line: 397, column: 16, scope: !1581)
!1594 = !DILocation(line: 398, column: 5, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !16, line: 398, column: 5)
!1596 = distinct !DILexicalBlock(scope: !1581, file: !16, line: 398, column: 5)
!1597 = !DILocation(line: 0, scope: !719, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 398, column: 5, scope: !1595)
!1599 = !DILocation(line: 174, column: 13, scope: !728, inlinedAt: !1598)
!1600 = !DILocation(line: 174, column: 10, scope: !728, inlinedAt: !1598)
!1601 = !DILocation(line: 174, column: 9, scope: !719, inlinedAt: !1598)
!1602 = !DILocation(line: 177, column: 12, scope: !732, inlinedAt: !1598)
!1603 = !DILocation(line: 177, column: 9, scope: !732, inlinedAt: !1598)
!1604 = !DILocation(line: 0, scope: !732, inlinedAt: !1598)
!1605 = !DILocation(line: 177, column: 9, scope: !719, inlinedAt: !1598)
!1606 = !DILocation(line: 0, scope: !365, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 178, column: 9, scope: !737, inlinedAt: !1598)
!1608 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1607)
!1609 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1607)
!1610 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1607)
!1611 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1607)
!1612 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1607)
!1613 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1607)
!1614 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1607)
!1615 = !DILocation(line: 0, scope: !373, inlinedAt: !1607)
!1616 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1607)
!1617 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1607)
!1618 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1607)
!1619 = distinct !{!1619, !1616, !1620, !211, !212}
!1620 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1607)
!1621 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1607)
!1622 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1607)
!1623 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1607)
!1624 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1607)
!1625 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1607)
!1626 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1607)
!1627 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1607)
!1628 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1607)
!1629 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1607)
!1630 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1607)
!1631 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1607)
!1632 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1607)
!1633 = !DILocation(line: 178, column: 9, scope: !738, inlinedAt: !1598)
!1634 = !DILocation(line: 179, column: 31, scope: !766, inlinedAt: !1598)
!1635 = !DILocation(line: 179, column: 47, scope: !766, inlinedAt: !1598)
!1636 = !DILocation(line: 179, column: 54, scope: !766, inlinedAt: !1598)
!1637 = !DILocation(line: 179, column: 14, scope: !766, inlinedAt: !1598)
!1638 = !DILocation(line: 179, column: 59, scope: !766, inlinedAt: !1598)
!1639 = !DILocation(line: 179, column: 14, scope: !732, inlinedAt: !1598)
!1640 = !DILocation(line: 182, column: 14, scope: !719, inlinedAt: !1598)
!1641 = !DILocation(line: 184, column: 5, scope: !719, inlinedAt: !1598)
!1642 = !DILocation(line: 400, column: 1, scope: !1581)
!1643 = !DISubprogram(name: "fseek", scope: !1644, file: !1644, line: 684, type: !1645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1647)
!1644 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!32, !25, !54, !32}
!1647 = !{}
!1648 = !DISubprogram(name: "fclose", scope: !1644, file: !1644, line: 213, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1647)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!32, !25}
!1651 = !DILocation(line: 0, scope: !350)
!1652 = !DILocation(line: 119, column: 34, scope: !350)
!1653 = !DILocation(line: 119, column: 31, scope: !350)
!1654 = !DILocation(line: 119, column: 44, scope: !350)
!1655 = !DILocation(line: 119, column: 41, scope: !350)
!1656 = !DILocation(line: 119, column: 54, scope: !350)
!1657 = !DILocation(line: 119, column: 51, scope: !350)
!1658 = !DILocation(line: 119, column: 60, scope: !350)
!1659 = !DILocation(line: 121, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !350, file: !16, line: 121, column: 9)
!1661 = !DILocation(line: 121, column: 9, scope: !350)
!1662 = !DILocation(line: 0, scope: !365, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 122, column: 16, scope: !1660)
!1664 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1663)
!1665 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1663)
!1666 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1663)
!1667 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1663)
!1668 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1663)
!1669 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1663)
!1670 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1663)
!1671 = !DILocation(line: 0, scope: !373, inlinedAt: !1663)
!1672 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1663)
!1673 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1663)
!1674 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1663)
!1675 = distinct !{!1675, !1672, !1676, !211, !212}
!1676 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1663)
!1677 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1663)
!1678 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1663)
!1679 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1663)
!1680 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1663)
!1681 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1663)
!1682 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1663)
!1683 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1663)
!1684 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1663)
!1685 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1663)
!1686 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1663)
!1687 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1663)
!1688 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1663)
!1689 = !DILocation(line: 123, column: 9, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !350, file: !16, line: 123, column: 9)
!1691 = !DILocation(line: 123, column: 9, scope: !350)
!1692 = !DILocation(line: 0, scope: !365, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 124, column: 16, scope: !1690)
!1694 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1693)
!1695 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1693)
!1696 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1693)
!1697 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1693)
!1698 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1693)
!1699 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1693)
!1700 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1693)
!1701 = !DILocation(line: 0, scope: !373, inlinedAt: !1693)
!1702 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1693)
!1703 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1693)
!1704 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1693)
!1705 = distinct !{!1705, !1702, !1706, !211, !212}
!1706 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1693)
!1707 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1693)
!1708 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1693)
!1709 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1693)
!1710 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1693)
!1711 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1693)
!1712 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1693)
!1713 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1693)
!1714 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1693)
!1715 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1693)
!1716 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1693)
!1717 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1693)
!1718 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1693)
!1719 = !DILocation(line: 125, column: 9, scope: !380)
!1720 = !DILocation(line: 0, scope: !365, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 127, column: 12, scope: !350)
!1722 = !DILocation(line: 0, scope: !365, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 126, column: 16, scope: !380)
!1724 = !DILocation(line: 125, column: 9, scope: !350)
!1725 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1723)
!1726 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1723)
!1727 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1723)
!1728 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1723)
!1729 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1723)
!1730 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1723)
!1731 = !DILocation(line: 0, scope: !373, inlinedAt: !1723)
!1732 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1723)
!1733 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1723)
!1734 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1723)
!1735 = distinct !{!1735, !1732, !1736, !211, !212}
!1736 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1723)
!1737 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1723)
!1738 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1723)
!1739 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1723)
!1740 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1723)
!1741 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1723)
!1742 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1723)
!1743 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1723)
!1744 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1723)
!1745 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1723)
!1746 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1723)
!1747 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1723)
!1748 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1723)
!1749 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1721)
!1750 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1721)
!1751 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1721)
!1752 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1721)
!1753 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1721)
!1754 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1721)
!1755 = !DILocation(line: 0, scope: !373, inlinedAt: !1721)
!1756 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1721)
!1757 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1721)
!1758 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1721)
!1759 = distinct !{!1759, !1756, !1760, !211, !212}
!1760 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1721)
!1761 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1721)
!1762 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1721)
!1763 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1721)
!1764 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1721)
!1765 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1721)
!1766 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1721)
!1767 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1721)
!1768 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1721)
!1769 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1721)
!1770 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1721)
!1771 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1721)
!1772 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1721)
!1773 = !DILocation(line: 128, column: 1, scope: !350)
!1774 = !DILocation(line: 0, scope: !875)
!1775 = !DILocation(line: 132, column: 44, scope: !875)
!1776 = !DILocation(line: 132, column: 39, scope: !875)
!1777 = !DILocation(line: 132, column: 56, scope: !875)
!1778 = !DILocation(line: 132, column: 51, scope: !875)
!1779 = !DILocation(line: 132, column: 68, scope: !875)
!1780 = !DILocation(line: 132, column: 63, scope: !875)
!1781 = !DILocation(line: 132, column: 74, scope: !875)
!1782 = !DILocation(line: 134, column: 14, scope: !889)
!1783 = !DILocation(line: 134, column: 9, scope: !875)
!1784 = !DILocation(line: 136, column: 19, scope: !888)
!1785 = !DILocation(line: 0, scope: !365, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 137, column: 16, scope: !888)
!1787 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1786)
!1788 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1786)
!1789 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1786)
!1790 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1786)
!1791 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1786)
!1792 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1786)
!1793 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1786)
!1794 = !DILocation(line: 0, scope: !373, inlinedAt: !1786)
!1795 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1786)
!1796 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1786)
!1797 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1786)
!1798 = distinct !{!1798, !1795, !1799, !211, !212}
!1799 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1786)
!1800 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1786)
!1801 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1786)
!1802 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1786)
!1803 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1786)
!1804 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1786)
!1805 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1786)
!1806 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1786)
!1807 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1786)
!1808 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1786)
!1809 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1786)
!1810 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1786)
!1811 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1786)
!1812 = !DILocation(line: 139, column: 14, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !875, file: !16, line: 139, column: 9)
!1814 = !DILocation(line: 139, column: 9, scope: !875)
!1815 = !DILocation(line: 141, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !16, line: 140, column: 5)
!1817 = !DILocation(line: 0, scope: !365, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 142, column: 16, scope: !1816)
!1819 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1818)
!1820 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1818)
!1821 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1818)
!1822 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1818)
!1823 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1818)
!1824 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1818)
!1825 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1818)
!1826 = !DILocation(line: 0, scope: !373, inlinedAt: !1818)
!1827 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1818)
!1828 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1818)
!1829 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1818)
!1830 = distinct !{!1830, !1827, !1831, !211, !212}
!1831 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1818)
!1832 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1818)
!1833 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1818)
!1834 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1818)
!1835 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1818)
!1836 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1818)
!1837 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1818)
!1838 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1818)
!1839 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1818)
!1840 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1818)
!1841 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1818)
!1842 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1818)
!1843 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1818)
!1844 = !DILocation(line: 144, column: 14, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !875, file: !16, line: 144, column: 9)
!1846 = !DILocation(line: 144, column: 9, scope: !875)
!1847 = !DILocation(line: 146, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !16, line: 145, column: 5)
!1849 = !DILocation(line: 0, scope: !365, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 147, column: 16, scope: !1848)
!1851 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1850)
!1852 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1850)
!1853 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1850)
!1854 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1850)
!1855 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1850)
!1856 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1850)
!1857 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1850)
!1858 = !DILocation(line: 0, scope: !373, inlinedAt: !1850)
!1859 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1850)
!1860 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1850)
!1861 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1850)
!1862 = distinct !{!1862, !1859, !1863, !211, !212}
!1863 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1850)
!1864 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1850)
!1865 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1850)
!1866 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1850)
!1867 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1850)
!1868 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1850)
!1869 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1850)
!1870 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1850)
!1871 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1850)
!1872 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1850)
!1873 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1850)
!1874 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1850)
!1875 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1850)
!1876 = !DILocation(line: 149, column: 14, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !875, file: !16, line: 149, column: 9)
!1878 = !DILocation(line: 149, column: 9, scope: !875)
!1879 = !DILocation(line: 151, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !16, line: 150, column: 5)
!1881 = !DILocation(line: 0, scope: !365, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 152, column: 16, scope: !1880)
!1883 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1882)
!1884 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1882)
!1885 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1882)
!1886 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1882)
!1887 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1882)
!1888 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1882)
!1889 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1882)
!1890 = !DILocation(line: 0, scope: !373, inlinedAt: !1882)
!1891 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1882)
!1892 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1882)
!1893 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1882)
!1894 = distinct !{!1894, !1891, !1895, !211, !212}
!1895 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1882)
!1896 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1882)
!1897 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1882)
!1898 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1882)
!1899 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1882)
!1900 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1882)
!1901 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1882)
!1902 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1882)
!1903 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1882)
!1904 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1882)
!1905 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1882)
!1906 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1882)
!1907 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1882)
!1908 = !DILocation(line: 0, scope: !365, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 154, column: 12, scope: !875)
!1910 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1909)
!1911 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1909)
!1912 = !DILocation(line: 95, column: 17, scope: !374, inlinedAt: !1909)
!1913 = !DILocation(line: 95, column: 12, scope: !374, inlinedAt: !1909)
!1914 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1909)
!1915 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1909)
!1916 = !DILocation(line: 98, column: 23, scope: !373, inlinedAt: !1909)
!1917 = !DILocation(line: 0, scope: !373, inlinedAt: !1909)
!1918 = !DILocation(line: 99, column: 9, scope: !373, inlinedAt: !1909)
!1919 = !DILocation(line: 99, column: 19, scope: !373, inlinedAt: !1909)
!1920 = !DILocation(line: 100, column: 16, scope: !373, inlinedAt: !1909)
!1921 = distinct !{!1921, !1918, !1922, !211, !212}
!1922 = !DILocation(line: 100, column: 20, scope: !373, inlinedAt: !1909)
!1923 = !DILocation(line: 102, column: 26, scope: !373, inlinedAt: !1909)
!1924 = !DILocation(line: 102, column: 32, scope: !373, inlinedAt: !1909)
!1925 = !DILocation(line: 102, column: 14, scope: !373, inlinedAt: !1909)
!1926 = !DILocation(line: 103, column: 14, scope: !399, inlinedAt: !1909)
!1927 = !DILocation(line: 103, column: 13, scope: !373, inlinedAt: !1909)
!1928 = !DILocation(line: 106, column: 17, scope: !373, inlinedAt: !1909)
!1929 = !DILocation(line: 107, column: 18, scope: !373, inlinedAt: !1909)
!1930 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1909)
!1931 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1909)
!1932 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1909)
!1933 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1909)
!1934 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1909)
!1935 = !DILocation(line: 155, column: 1, scope: !875)
