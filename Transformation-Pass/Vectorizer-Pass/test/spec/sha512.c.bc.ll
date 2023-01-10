; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/sha-2/sha512.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate %lu bytes at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/sha-2/sha512.c\00", align 1
@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16, !dbg !0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %md) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %md, metadata !51, metadata !DIExpression()), !dbg !52
  %curlen = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 2, !dbg !53
  store i32 0, ptr %curlen, align 8, !dbg !54, !tbaa !55
  store i64 0, ptr %md, align 8, !dbg !61, !tbaa !62
  %state = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, !dbg !63
  store i64 7640891576956012808, ptr %state, align 8, !dbg !64, !tbaa !65
  %arrayidx2 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 1, !dbg !66
  store i64 -4942790177534073029, ptr %arrayidx2, align 8, !dbg !67, !tbaa !65
  %arrayidx4 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 2, !dbg !68
  store i64 4354685564936845355, ptr %arrayidx4, align 8, !dbg !69, !tbaa !65
  %arrayidx6 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 3, !dbg !70
  store i64 -6534734903238641935, ptr %arrayidx6, align 8, !dbg !71, !tbaa !65
  %arrayidx8 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 4, !dbg !72
  store i64 5840696475078001361, ptr %arrayidx8, align 8, !dbg !73, !tbaa !65
  %arrayidx10 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 5, !dbg !74
  store i64 -7276294671716946913, ptr %arrayidx10, align 8, !dbg !75, !tbaa !65
  %arrayidx12 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 6, !dbg !76
  store i64 2270897969802886507, ptr %arrayidx12, align 8, !dbg !77, !tbaa !65
  %arrayidx14 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 7, !dbg !78
  store i64 6620516959819538809, ptr %arrayidx14, align 8, !dbg !79, !tbaa !65
  ret void, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @sha_process(ptr nocapture noundef %md, ptr nocapture noundef readonly %src, i32 noundef %inlen) local_unnamed_addr #2 !dbg !81 {
entry:
  call void @llvm.dbg.value(metadata ptr %md, metadata !88, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %src, metadata !89, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 %inlen, metadata !90, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 128, metadata !91, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %src, metadata !100, metadata !DIExpression()) #11, !dbg !108
  call void @llvm.dbg.value(metadata i32 %inlen, metadata !106, metadata !DIExpression()) #11, !dbg !108
  %conv.i = sext i32 %inlen to i64, !dbg !110
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv.i) #12, !dbg !110
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !107, metadata !DIExpression()) #11, !dbg !108
  %cmp.i = icmp eq ptr %call.i, null, !dbg !111
  br i1 %cmp.i, label %if.then.i, label %sortof_strdup.exit, !dbg !110

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !113, !tbaa !115
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %conv.i, ptr noundef nonnull @.str.1, i32 noundef 129) #13, !dbg !113
  tail call void @exit(i32 noundef 1) #14, !dbg !113
  unreachable, !dbg !113

sortof_strdup.exit:                               ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr align 1 %src, i64 %conv.i, i1 false) #11, !dbg !117
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !93, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !94, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 %inlen, metadata !90, metadata !DIExpression()), !dbg !99
  %cmp.not46 = icmp eq i32 %inlen, 0, !dbg !118
  br i1 %cmp.not46, label %while.end, label %while.body.lr.ph, !dbg !119

while.body.lr.ph:                                 ; preds = %sortof_strdup.exit
  %curlen = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 2
  %buf = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 3
  br label %while.body, !dbg !119

while.body:                                       ; preds = %while.body.lr.ph, %if.end22
  %inlen.addr.048 = phi i32 [ %inlen, %while.body.lr.ph ], [ %inlen.addr.1, %if.end22 ]
  %in.047 = phi ptr [ %call.i, %while.body.lr.ph ], [ %in.1, %if.end22 ]
  call void @llvm.dbg.value(metadata i32 %inlen.addr.048, metadata !90, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %in.047, metadata !93, metadata !DIExpression()), !dbg !99
  %1 = load i32, ptr %curlen, align 8, !dbg !120, !tbaa !55
  %cmp1 = icmp eq i32 %1, 0, !dbg !121
  %cmp2 = icmp ugt i32 %inlen.addr.048, 127
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false, !dbg !122
  br i1 %or.cond, label %if.then, label %if.else, !dbg !122

if.then:                                          ; preds = %while.body
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef %in.047), !dbg !123
  %2 = load i64, ptr %md, align 8, !dbg !125, !tbaa !62
  %add = add i64 %2, 1024, !dbg !125
  store i64 %add, ptr %md, align 8, !dbg !125, !tbaa !62
  %add.ptr = getelementptr inbounds i8, ptr %in.047, i64 128, !dbg !126
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !93, metadata !DIExpression()), !dbg !99
  %sub = add i32 %inlen.addr.048, -128, !dbg !127
  call void @llvm.dbg.value(metadata i32 %sub, metadata !90, metadata !DIExpression()), !dbg !99
  br label %if.end22, !dbg !128

if.else:                                          ; preds = %while.body
  %sub4 = sub i32 128, %1, !dbg !129
  call void @llvm.dbg.value(metadata i32 %inlen.addr.048, metadata !130, metadata !DIExpression()) #11, !dbg !136
  call void @llvm.dbg.value(metadata i32 %sub4, metadata !135, metadata !DIExpression()) #11, !dbg !136
  %3 = tail call i32 @llvm.umin.i32(i32 %inlen.addr.048, i32 %sub4) #11, !dbg !138
  call void @llvm.dbg.value(metadata i32 %3, metadata !95, metadata !DIExpression()), !dbg !139
  %idx.ext = zext i32 %1 to i64, !dbg !140
  %add.ptr7 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext, !dbg !140
  %conv = zext i32 %3 to i64, !dbg !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr7, ptr align 1 %in.047, i64 %conv, i1 false), !dbg !142
  %4 = load i32, ptr %curlen, align 8, !dbg !143, !tbaa !55
  %add9 = add i32 %4, %3, !dbg !143
  store i32 %add9, ptr %curlen, align 8, !dbg !143, !tbaa !55
  %add.ptr11 = getelementptr inbounds i8, ptr %in.047, i64 %conv, !dbg !144
  call void @llvm.dbg.value(metadata ptr %add.ptr11, metadata !93, metadata !DIExpression()), !dbg !99
  %sub12 = sub i32 %inlen.addr.048, %3, !dbg !145
  call void @llvm.dbg.value(metadata i32 %sub12, metadata !90, metadata !DIExpression()), !dbg !99
  %cmp14 = icmp eq i32 %add9, 128, !dbg !146
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !148

if.then16:                                        ; preds = %if.else
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf), !dbg !149
  %5 = load i64, ptr %md, align 8, !dbg !151, !tbaa !62
  %add20 = add i64 %5, 1024, !dbg !151
  store i64 %add20, ptr %md, align 8, !dbg !151, !tbaa !62
  store i32 0, ptr %curlen, align 8, !dbg !152, !tbaa !55
  br label %if.end22, !dbg !153

if.end22:                                         ; preds = %if.else, %if.then16, %if.then
  %in.1 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr11, %if.then16 ], [ %add.ptr11, %if.else ], !dbg !154
  %inlen.addr.1 = phi i32 [ %sub, %if.then ], [ %sub12, %if.then16 ], [ %sub12, %if.else ], !dbg !154
  call void @llvm.dbg.value(metadata i32 %inlen.addr.1, metadata !90, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %in.1, metadata !93, metadata !DIExpression()), !dbg !99
  %cmp.not = icmp eq i32 %inlen.addr.1, 0, !dbg !118
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !119, !llvm.loop !155

while.end:                                        ; preds = %if.end22, %sortof_strdup.exit
  tail call void @free(ptr noundef %call.i) #11, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal fastcc void @sha_compress(ptr nocapture noundef %md, ptr nocapture noundef readonly %buf) unnamed_addr #4 !dbg !161 {
entry:
  %S = alloca [8 x i64], align 16
  %W = alloca [80 x i64], align 16
  call void @llvm.dbg.value(metadata ptr %md, metadata !165, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %buf, metadata !166, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %S) #11, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %S, metadata !167, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %W) #11, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %W, metadata !169, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !187
  %uglygep = getelementptr i8, ptr %md, i64 8, !dbg !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %S, ptr noundef nonnull align 8 dereferenceable(64) %uglygep, i64 64, i1 false), !dbg !189, !tbaa !65
  call void @llvm.dbg.value(metadata i32 undef, metadata !173, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 undef, metadata !173, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !187
  br label %for.body7, !dbg !191

for.body7:                                        ; preds = %entry, %load64.exit
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %load64.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !175, metadata !DIExpression()), !dbg !192
  %0 = shl nuw nsw i64 %indvars.iv, 3, !dbg !193
  %add.ptr = getelementptr inbounds i8, ptr %buf, i64 %0, !dbg !195
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 0, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !206
  br label %for.body.i, !dbg !207

for.body.i:                                       ; preds = %for.body.i, %for.body7
  %indvars.iv.i = phi i64 [ 0, %for.body7 ], [ %indvars.iv.next.i, %for.body.i ]
  %res.05.i = phi i64 [ 0, %for.body7 ], [ %or.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !202, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %res.05.i, metadata !201, metadata !DIExpression()), !dbg !204
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.i, !dbg !208
  %1 = load i8, ptr %arrayidx.i, align 1, !dbg !208, !tbaa !210
  %conv.i = zext i8 %1 to i64, !dbg !211
  %2 = mul nsw i64 %indvars.iv.i, -8, !dbg !212
  %3 = add nsw i64 %2, 56, !dbg !212
  %shl.i = shl i64 %conv.i, %3, !dbg !213
  %or.i = or i64 %shl.i, %res.05.i, !dbg !214
  call void @llvm.dbg.value(metadata i64 %or.i, metadata !201, metadata !DIExpression()), !dbg !204
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !215
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !202, metadata !DIExpression()), !dbg !206
  %cmp.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !216
  br i1 %cmp.not.i, label %load64.exit, label %for.body.i, !dbg !207, !llvm.loop !217

load64.exit:                                      ; preds = %for.body.i
  %arrayidx9 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv, !dbg !219
  store i64 %or.i, ptr %arrayidx9, align 8, !dbg !220, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !175, metadata !DIExpression()), !dbg !192
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !222
  br i1 %exitcond.not, label %for.body17.preheader, label %for.body7, !dbg !191, !llvm.loop !223

for.body17.preheader:                             ; preds = %load64.exit
  %.pre = load i64, ptr %W, align 16, !dbg !225, !tbaa !65
  br label %for.body17, !dbg !227

for.cond39.preheader:                             ; preds = %for.body17
  %arrayidx43 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 7
  %arrayidx44 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 4
  %arrayidx48 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 5
  %arrayidx49 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 6
  %arrayidx63 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 1
  %arrayidx64 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 2
  %arrayidx67 = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 3
  %arrayidx43.promoted = load i64, ptr %arrayidx43, align 8, !tbaa !65
  %arrayidx44.promoted = load i64, ptr %arrayidx44, align 16, !tbaa !65
  %arrayidx48.promoted = load i64, ptr %arrayidx48, align 8, !tbaa !65
  %arrayidx49.promoted = load i64, ptr %arrayidx49, align 16, !tbaa !65
  %S.promoted = load i64, ptr %S, align 16, !tbaa !65
  %arrayidx63.promoted = load i64, ptr %arrayidx63, align 8, !tbaa !65
  %arrayidx64.promoted = load i64, ptr %arrayidx64, align 16, !tbaa !65
  %arrayidx67.promoted = load i64, ptr %arrayidx67, align 8, !tbaa !65
  call void @llvm.dbg.value(metadata i32 0, metadata !179, metadata !DIExpression()), !dbg !228
  br label %for.body42, !dbg !229

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %4 = phi i64 [ %.pre, %for.body17.preheader ], [ %10, %for.body17 ], !dbg !225
  %indvars.iv504 = phi i64 [ 16, %for.body17.preheader ], [ %indvars.iv.next505, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv504, metadata !177, metadata !DIExpression()), !dbg !230
  %5 = add nsw i64 %indvars.iv504, -2, !dbg !231
  %arrayidx19 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %5, !dbg !232
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !232, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %6, metadata !233, metadata !DIExpression()) #11, !dbg !238
  call void @llvm.dbg.value(metadata i64 %6, metadata !240, metadata !DIExpression()) #11, !dbg !246
  call void @llvm.dbg.value(metadata i64 19, metadata !245, metadata !DIExpression()) #11, !dbg !246
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 45) #11, !dbg !248
  call void @llvm.dbg.value(metadata i64 %6, metadata !240, metadata !DIExpression()) #11, !dbg !249
  call void @llvm.dbg.value(metadata i64 61, metadata !245, metadata !DIExpression()) #11, !dbg !249
  %or.i6.i = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 3) #11, !dbg !251
  %xor.i = xor i64 %or.i.i, %or.i6.i, !dbg !252
  call void @llvm.dbg.value(metadata i64 %6, metadata !253, metadata !DIExpression()) #11, !dbg !257
  call void @llvm.dbg.value(metadata i64 6, metadata !256, metadata !DIExpression()) #11, !dbg !257
  %shr.i.i = lshr i64 %6, 6, !dbg !259
  %xor3.i = xor i64 %xor.i, %shr.i.i, !dbg !260
  %7 = add nsw i64 %indvars.iv504, -7, !dbg !261
  %arrayidx23 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %7, !dbg !262
  %8 = load i64, ptr %arrayidx23, align 8, !dbg !262, !tbaa !65
  %add = add i64 %xor3.i, %8, !dbg !263
  %9 = add nsw i64 %indvars.iv504, -15, !dbg !264
  %arrayidx26 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %9, !dbg !265
  %10 = load i64, ptr %arrayidx26, align 8, !dbg !265, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %10, metadata !266, metadata !DIExpression()) #11, !dbg !269
  call void @llvm.dbg.value(metadata i64 %10, metadata !240, metadata !DIExpression()) #11, !dbg !271
  call void @llvm.dbg.value(metadata i64 1, metadata !245, metadata !DIExpression()) #11, !dbg !271
  %or.i.i344 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 63) #11, !dbg !273
  call void @llvm.dbg.value(metadata i64 %10, metadata !240, metadata !DIExpression()) #11, !dbg !274
  call void @llvm.dbg.value(metadata i64 8, metadata !245, metadata !DIExpression()) #11, !dbg !274
  %or.i6.i345 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 56) #11, !dbg !276
  %xor.i346 = xor i64 %or.i.i344, %or.i6.i345, !dbg !277
  call void @llvm.dbg.value(metadata i64 %10, metadata !253, metadata !DIExpression()) #11, !dbg !278
  call void @llvm.dbg.value(metadata i64 7, metadata !256, metadata !DIExpression()) #11, !dbg !278
  %shr.i.i347 = lshr i64 %10, 7, !dbg !280
  %xor3.i348 = xor i64 %xor.i346, %shr.i.i347, !dbg !281
  %add28 = add i64 %add, %4, !dbg !282
  %add32 = add i64 %add28, %xor3.i348, !dbg !283
  %arrayidx34 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv504, !dbg !284
  store i64 %add32, ptr %arrayidx34, align 8, !dbg !285, !tbaa !65
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next505, metadata !177, metadata !DIExpression()), !dbg !230
  %exitcond511.not = icmp eq i64 %indvars.iv.next505, 80, !dbg !287
  br i1 %exitcond511.not, label %for.cond39.preheader, label %for.body17, !dbg !227, !llvm.loop !288

for.cond271.preheader:                            ; preds = %for.body42
  store i64 %add180, ptr %arrayidx43, align 8, !dbg !290, !tbaa !65
  store i64 %add264, ptr %arrayidx44, align 16, !dbg !290, !tbaa !65
  store i64 %add236, ptr %arrayidx48, align 8, !dbg !290, !tbaa !65
  store i64 %add208, ptr %arrayidx49, align 16, !dbg !290, !tbaa !65
  store i64 %add265, ptr %S, align 16, !dbg !290, !tbaa !65
  store i64 %add237, ptr %arrayidx63, align 8, !dbg !290, !tbaa !65
  store i64 %add209, ptr %arrayidx64, align 16, !dbg !290, !tbaa !65
  store i64 %add181, ptr %arrayidx67, align 8, !dbg !290, !tbaa !65
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 0, metadata !181, metadata !DIExpression()), !dbg !293
  %arrayidx277528 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 0, !dbg !294
  %11 = load i64, ptr %arrayidx277528, align 8, !dbg !294, !tbaa !65
  %add280529 = add i64 %add265, %11, !dbg !296
  store i64 %add280529, ptr %arrayidx277528, align 8, !dbg !297, !tbaa !65
  call void @llvm.dbg.value(metadata i64 1, metadata !181, metadata !DIExpression()), !dbg !293
  br label %for.body274.for.body274_crit_edge, !dbg !298

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.cond39.preheader
  %12 = phi i64 [ %.pre, %for.cond39.preheader ], [ %.pre526, %for.body42.for.body42_crit_edge ], !dbg !299
  %indvars.iv512 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next513, %for.body42.for.body42_crit_edge ]
  %add180483498 = phi i64 [ %arrayidx43.promoted, %for.cond39.preheader ], [ %add180, %for.body42.for.body42_crit_edge ]
  %add264484497 = phi i64 [ %arrayidx44.promoted, %for.cond39.preheader ], [ %add264, %for.body42.for.body42_crit_edge ]
  %add236485496 = phi i64 [ %arrayidx48.promoted, %for.cond39.preheader ], [ %add236, %for.body42.for.body42_crit_edge ]
  %add208486495 = phi i64 [ %arrayidx49.promoted, %for.cond39.preheader ], [ %add208, %for.body42.for.body42_crit_edge ]
  %add265487494 = phi i64 [ %S.promoted, %for.cond39.preheader ], [ %add265, %for.body42.for.body42_crit_edge ]
  %add237488493 = phi i64 [ %arrayidx63.promoted, %for.cond39.preheader ], [ %add237, %for.body42.for.body42_crit_edge ]
  %add209489492 = phi i64 [ %arrayidx64.promoted, %for.cond39.preheader ], [ %add209, %for.body42.for.body42_crit_edge ]
  %add181490491 = phi i64 [ %arrayidx67.promoted, %for.cond39.preheader ], [ %add181, %for.body42.for.body42_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv512, metadata !179, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !301, metadata !DIExpression()) #11, !dbg !304
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !240, metadata !DIExpression()) #11, !dbg !306
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !306
  %or.i.i349 = tail call i64 @llvm.fshl.i64(i64 %add264484497, i64 %add264484497, i64 50) #11, !dbg !308
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !240, metadata !DIExpression()) #11, !dbg !309
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !309
  %or.i6.i350 = tail call i64 @llvm.fshl.i64(i64 %add264484497, i64 %add264484497, i64 46) #11, !dbg !311
  %xor.i351 = xor i64 %or.i.i349, %or.i6.i350, !dbg !312
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !240, metadata !DIExpression()) #11, !dbg !313
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !313
  %or.i7.i = tail call i64 @llvm.fshl.i64(i64 %add264484497, i64 %add264484497, i64 23) #11, !dbg !315
  %xor3.i352 = xor i64 %xor.i351, %or.i7.i, !dbg !316
  %add46 = add i64 %xor3.i352, %add180483498, !dbg !299
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !317, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64 %add236485496, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64 %add208486495, metadata !323, metadata !DIExpression()), !dbg !324
  %xor.i353 = xor i64 %add208486495, %add236485496, !dbg !326
  %and.i = and i64 %xor.i353, %add264484497, !dbg !327
  %xor1.i = xor i64 %and.i, %add208486495, !dbg !328
  %arrayidx54 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %indvars.iv512, !dbg !299
  %13 = load i64, ptr %arrayidx54, align 16, !dbg !299, !tbaa !65
  %add51 = add i64 %add46, %13, !dbg !299
  %add55 = add i64 %add51, %12, !dbg !299
  %add59 = add i64 %add55, %xor1.i, !dbg !299
  call void @llvm.dbg.value(metadata i64 %add59, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !329, metadata !DIExpression()) #11, !dbg !332
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !240, metadata !DIExpression()) #11, !dbg !334
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !334
  %or.i.i354 = tail call i64 @llvm.fshl.i64(i64 %add265487494, i64 %add265487494, i64 36) #11, !dbg !336
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !240, metadata !DIExpression()) #11, !dbg !337
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !337
  %or.i6.i355 = tail call i64 @llvm.fshl.i64(i64 %add265487494, i64 %add265487494, i64 30) #11, !dbg !339
  %xor.i356 = xor i64 %or.i.i354, %or.i6.i355, !dbg !340
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !240, metadata !DIExpression()) #11, !dbg !341
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !341
  %or.i7.i357 = tail call i64 @llvm.fshl.i64(i64 %add265487494, i64 %add265487494, i64 25) #11, !dbg !343
  %xor3.i358 = xor i64 %xor.i356, %or.i7.i357, !dbg !344
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !345, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i64 %add237488493, metadata !348, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i64 %add209489492, metadata !349, metadata !DIExpression()), !dbg !350
  %or.i359 = or i64 %add237488493, %add265487494, !dbg !352
  %and.i360 = and i64 %or.i359, %add209489492, !dbg !353
  %and1.i = and i64 %add237488493, %add265487494, !dbg !354
  %or2.i = or i64 %and.i360, %and1.i, !dbg !355
  call void @llvm.dbg.value(metadata i64 undef, metadata !172, metadata !DIExpression()), !dbg !183
  %add68 = add i64 %add181490491, %add59, !dbg !299
  %add66 = add i64 %add59, %xor3.i358, !dbg !299
  %add69 = add i64 %add66, %or2.i, !dbg !299
  call void @llvm.dbg.value(metadata i64 %add68, metadata !301, metadata !DIExpression()) #11, !dbg !356
  call void @llvm.dbg.value(metadata i64 %add68, metadata !240, metadata !DIExpression()) #11, !dbg !359
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !359
  %or.i.i361 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 50) #11, !dbg !361
  call void @llvm.dbg.value(metadata i64 %add68, metadata !240, metadata !DIExpression()) #11, !dbg !362
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !362
  %or.i6.i362 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 46) #11, !dbg !364
  %xor.i363 = xor i64 %or.i.i361, %or.i6.i362, !dbg !365
  call void @llvm.dbg.value(metadata i64 %add68, metadata !240, metadata !DIExpression()) #11, !dbg !366
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !366
  %or.i7.i364 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 23) #11, !dbg !368
  %xor3.i365 = xor i64 %xor.i363, %or.i7.i364, !dbg !369
  call void @llvm.dbg.value(metadata i64 %add68, metadata !317, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !322, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %add236485496, metadata !323, metadata !DIExpression()), !dbg !370
  %xor.i366 = xor i64 %add236485496, %add264484497, !dbg !372
  %and.i367 = and i64 %add68, %xor.i366, !dbg !373
  %xor1.i368 = xor i64 %and.i367, %add236485496, !dbg !374
  %14 = or i64 %indvars.iv512, 1, !dbg !375
  %arrayidx82 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %14, !dbg !375
  %15 = load i64, ptr %arrayidx82, align 8, !dbg !375, !tbaa !65
  %arrayidx86 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %14, !dbg !375
  %16 = load i64, ptr %arrayidx86, align 8, !dbg !375, !tbaa !65
  %add74 = add i64 %xor1.i368, %add208486495, !dbg !375
  %add79 = add i64 %add74, %15, !dbg !375
  %add83 = add i64 %add79, %xor3.i365, !dbg !375
  %add87 = add i64 %add83, %16, !dbg !375
  call void @llvm.dbg.value(metadata i64 %add87, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add69, metadata !329, metadata !DIExpression()) #11, !dbg !376
  call void @llvm.dbg.value(metadata i64 %add69, metadata !240, metadata !DIExpression()) #11, !dbg !378
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !378
  %or.i.i369 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 36) #11, !dbg !380
  call void @llvm.dbg.value(metadata i64 %add69, metadata !240, metadata !DIExpression()) #11, !dbg !381
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !381
  %or.i6.i370 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 30) #11, !dbg !383
  %xor.i371 = xor i64 %or.i.i369, %or.i6.i370, !dbg !384
  call void @llvm.dbg.value(metadata i64 %add69, metadata !240, metadata !DIExpression()) #11, !dbg !385
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !385
  %or.i7.i372 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 25) #11, !dbg !387
  %xor3.i373 = xor i64 %xor.i371, %or.i7.i372, !dbg !388
  call void @llvm.dbg.value(metadata i64 %add69, metadata !345, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !348, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %add237488493, metadata !349, metadata !DIExpression()), !dbg !389
  %or.i374 = or i64 %add69, %add265487494, !dbg !391
  %and.i375 = and i64 %or.i374, %add237488493, !dbg !392
  %and1.i376 = and i64 %add69, %add265487494, !dbg !393
  %or2.i377 = or i64 %and.i375, %and1.i376, !dbg !394
  %add94 = add i64 %xor3.i373, %or2.i377, !dbg !375
  call void @llvm.dbg.value(metadata i64 %add94, metadata !172, metadata !DIExpression()), !dbg !183
  %add96 = add i64 %add87, %add209489492, !dbg !375
  %add97 = add i64 %add94, %add87, !dbg !375
  call void @llvm.dbg.value(metadata i64 %add96, metadata !301, metadata !DIExpression()) #11, !dbg !395
  call void @llvm.dbg.value(metadata i64 %add96, metadata !240, metadata !DIExpression()) #11, !dbg !398
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !398
  %or.i.i378 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 50) #11, !dbg !400
  call void @llvm.dbg.value(metadata i64 %add96, metadata !240, metadata !DIExpression()) #11, !dbg !401
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !401
  %or.i6.i379 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 46) #11, !dbg !403
  %xor.i380 = xor i64 %or.i.i378, %or.i6.i379, !dbg !404
  call void @llvm.dbg.value(metadata i64 %add96, metadata !240, metadata !DIExpression()) #11, !dbg !405
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !405
  %or.i7.i381 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 23) #11, !dbg !407
  %xor3.i382 = xor i64 %xor.i380, %or.i7.i381, !dbg !408
  call void @llvm.dbg.value(metadata i64 %add96, metadata !317, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 %add68, metadata !322, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 %add264484497, metadata !323, metadata !DIExpression()), !dbg !409
  %xor.i383 = xor i64 %add68, %add264484497, !dbg !411
  %and.i384 = and i64 %add96, %xor.i383, !dbg !412
  %xor1.i385 = xor i64 %and.i384, %add264484497, !dbg !413
  %17 = or i64 %indvars.iv512, 2, !dbg !414
  %arrayidx110 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %17, !dbg !414
  %18 = load i64, ptr %arrayidx110, align 16, !dbg !414, !tbaa !65
  %arrayidx114 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %17, !dbg !414
  %19 = load i64, ptr %arrayidx114, align 16, !dbg !414, !tbaa !65
  %add102 = add i64 %18, %add236485496, !dbg !414
  %add107 = add i64 %add102, %19, !dbg !414
  %add111 = add i64 %add107, %xor1.i385, !dbg !414
  %add115 = add i64 %add111, %xor3.i382, !dbg !414
  call void @llvm.dbg.value(metadata i64 %add115, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add97, metadata !329, metadata !DIExpression()) #11, !dbg !415
  call void @llvm.dbg.value(metadata i64 %add97, metadata !240, metadata !DIExpression()) #11, !dbg !417
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !417
  %or.i.i386 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 36) #11, !dbg !419
  call void @llvm.dbg.value(metadata i64 %add97, metadata !240, metadata !DIExpression()) #11, !dbg !420
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !420
  %or.i6.i387 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 30) #11, !dbg !422
  %xor.i388 = xor i64 %or.i.i386, %or.i6.i387, !dbg !423
  call void @llvm.dbg.value(metadata i64 %add97, metadata !240, metadata !DIExpression()) #11, !dbg !424
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !424
  %or.i7.i389 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 25) #11, !dbg !426
  %xor3.i390 = xor i64 %xor.i388, %or.i7.i389, !dbg !427
  call void @llvm.dbg.value(metadata i64 %add97, metadata !345, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i64 %add69, metadata !348, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i64 %add265487494, metadata !349, metadata !DIExpression()), !dbg !428
  %or.i391 = or i64 %add97, %add69, !dbg !430
  %and.i392 = and i64 %or.i391, %add265487494, !dbg !431
  %and1.i393 = and i64 %add97, %add69, !dbg !432
  %or2.i394 = or i64 %and.i392, %and1.i393, !dbg !433
  %add122 = add i64 %xor3.i390, %or2.i394, !dbg !414
  call void @llvm.dbg.value(metadata i64 %add122, metadata !172, metadata !DIExpression()), !dbg !183
  %add124 = add i64 %add115, %add237488493, !dbg !414
  %add125 = add i64 %add122, %add115, !dbg !414
  call void @llvm.dbg.value(metadata i64 %add124, metadata !301, metadata !DIExpression()) #11, !dbg !434
  call void @llvm.dbg.value(metadata i64 %add124, metadata !240, metadata !DIExpression()) #11, !dbg !437
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !437
  %or.i.i395 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 50) #11, !dbg !439
  call void @llvm.dbg.value(metadata i64 %add124, metadata !240, metadata !DIExpression()) #11, !dbg !440
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !440
  %or.i6.i396 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 46) #11, !dbg !442
  %xor.i397 = xor i64 %or.i.i395, %or.i6.i396, !dbg !443
  call void @llvm.dbg.value(metadata i64 %add124, metadata !240, metadata !DIExpression()) #11, !dbg !444
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !444
  %or.i7.i398 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 23) #11, !dbg !446
  %xor3.i399 = xor i64 %xor.i397, %or.i7.i398, !dbg !447
  call void @llvm.dbg.value(metadata i64 %add124, metadata !317, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i64 %add96, metadata !322, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i64 %add68, metadata !323, metadata !DIExpression()), !dbg !448
  %xor.i400 = xor i64 %add96, %add68, !dbg !450
  %and.i401 = and i64 %add124, %xor.i400, !dbg !451
  %xor1.i402 = xor i64 %and.i401, %add68, !dbg !452
  %20 = or i64 %indvars.iv512, 3, !dbg !453
  %arrayidx138 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %20, !dbg !453
  %21 = load i64, ptr %arrayidx138, align 8, !dbg !453, !tbaa !65
  %arrayidx142 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %20, !dbg !453
  %22 = load i64, ptr %arrayidx142, align 8, !dbg !453, !tbaa !65
  %add130 = add i64 %21, %add264484497, !dbg !453
  %add135 = add i64 %add130, %22, !dbg !453
  %add139 = add i64 %add135, %xor1.i402, !dbg !453
  %add143 = add i64 %add139, %xor3.i399, !dbg !453
  call void @llvm.dbg.value(metadata i64 %add143, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add125, metadata !329, metadata !DIExpression()) #11, !dbg !454
  call void @llvm.dbg.value(metadata i64 %add125, metadata !240, metadata !DIExpression()) #11, !dbg !456
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !456
  %or.i.i403 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 36) #11, !dbg !458
  call void @llvm.dbg.value(metadata i64 %add125, metadata !240, metadata !DIExpression()) #11, !dbg !459
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !459
  %or.i6.i404 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 30) #11, !dbg !461
  %xor.i405 = xor i64 %or.i.i403, %or.i6.i404, !dbg !462
  call void @llvm.dbg.value(metadata i64 %add125, metadata !240, metadata !DIExpression()) #11, !dbg !463
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !463
  %or.i7.i406 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 25) #11, !dbg !465
  %xor3.i407 = xor i64 %xor.i405, %or.i7.i406, !dbg !466
  call void @llvm.dbg.value(metadata i64 %add125, metadata !345, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %add97, metadata !348, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %add69, metadata !349, metadata !DIExpression()), !dbg !467
  %or.i408 = or i64 %add125, %add97, !dbg !469
  %and.i409 = and i64 %or.i408, %add69, !dbg !470
  %and1.i410 = and i64 %add125, %add97, !dbg !471
  %or2.i411 = or i64 %and.i409, %and1.i410, !dbg !472
  %add150 = add i64 %xor3.i407, %or2.i411, !dbg !453
  call void @llvm.dbg.value(metadata i64 %add150, metadata !172, metadata !DIExpression()), !dbg !183
  %add152 = add i64 %add143, %add265487494, !dbg !453
  %add153 = add i64 %add150, %add143, !dbg !453
  call void @llvm.dbg.value(metadata i64 %add152, metadata !301, metadata !DIExpression()) #11, !dbg !473
  call void @llvm.dbg.value(metadata i64 %add152, metadata !240, metadata !DIExpression()) #11, !dbg !476
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !476
  %or.i.i412 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 50) #11, !dbg !478
  call void @llvm.dbg.value(metadata i64 %add152, metadata !240, metadata !DIExpression()) #11, !dbg !479
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !479
  %or.i6.i413 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 46) #11, !dbg !481
  %xor.i414 = xor i64 %or.i.i412, %or.i6.i413, !dbg !482
  call void @llvm.dbg.value(metadata i64 %add152, metadata !240, metadata !DIExpression()) #11, !dbg !483
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !483
  %or.i7.i415 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 23) #11, !dbg !485
  %xor3.i416 = xor i64 %xor.i414, %or.i7.i415, !dbg !486
  call void @llvm.dbg.value(metadata i64 %add152, metadata !317, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %add124, metadata !322, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %add96, metadata !323, metadata !DIExpression()), !dbg !487
  %xor.i417 = xor i64 %add124, %add96, !dbg !489
  %and.i418 = and i64 %add152, %xor.i417, !dbg !490
  %xor1.i419 = xor i64 %and.i418, %add96, !dbg !491
  %23 = or i64 %indvars.iv512, 4, !dbg !492
  %arrayidx166 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %23, !dbg !492
  %24 = load i64, ptr %arrayidx166, align 16, !dbg !492, !tbaa !65
  %arrayidx170 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %23, !dbg !492
  %25 = load i64, ptr %arrayidx170, align 16, !dbg !492, !tbaa !65
  %add158 = add i64 %24, %add68, !dbg !492
  %add163 = add i64 %add158, %25, !dbg !492
  %add167 = add i64 %add163, %xor1.i419, !dbg !492
  %add171 = add i64 %add167, %xor3.i416, !dbg !492
  call void @llvm.dbg.value(metadata i64 %add171, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add153, metadata !329, metadata !DIExpression()) #11, !dbg !493
  call void @llvm.dbg.value(metadata i64 %add153, metadata !240, metadata !DIExpression()) #11, !dbg !495
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !495
  %or.i.i420 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 36) #11, !dbg !497
  call void @llvm.dbg.value(metadata i64 %add153, metadata !240, metadata !DIExpression()) #11, !dbg !498
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !498
  %or.i6.i421 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 30) #11, !dbg !500
  %xor.i422 = xor i64 %or.i.i420, %or.i6.i421, !dbg !501
  call void @llvm.dbg.value(metadata i64 %add153, metadata !240, metadata !DIExpression()) #11, !dbg !502
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !502
  %or.i7.i423 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 25) #11, !dbg !504
  %xor3.i424 = xor i64 %xor.i422, %or.i7.i423, !dbg !505
  call void @llvm.dbg.value(metadata i64 %add153, metadata !345, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64 %add125, metadata !348, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64 %add97, metadata !349, metadata !DIExpression()), !dbg !506
  %or.i425 = or i64 %add153, %add125, !dbg !508
  %and.i426 = and i64 %or.i425, %add97, !dbg !509
  %and1.i427 = and i64 %add153, %add125, !dbg !510
  %or2.i428 = or i64 %and.i426, %and1.i427, !dbg !511
  %add178 = add i64 %xor3.i424, %or2.i428, !dbg !492
  call void @llvm.dbg.value(metadata i64 %add178, metadata !172, metadata !DIExpression()), !dbg !183
  %add180 = add i64 %add171, %add69, !dbg !492
  %add181 = add i64 %add178, %add171, !dbg !492
  call void @llvm.dbg.value(metadata i64 %add180, metadata !301, metadata !DIExpression()) #11, !dbg !512
  call void @llvm.dbg.value(metadata i64 %add180, metadata !240, metadata !DIExpression()) #11, !dbg !515
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !515
  %or.i.i429 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 50) #11, !dbg !517
  call void @llvm.dbg.value(metadata i64 %add180, metadata !240, metadata !DIExpression()) #11, !dbg !518
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !518
  %or.i6.i430 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 46) #11, !dbg !520
  %xor.i431 = xor i64 %or.i.i429, %or.i6.i430, !dbg !521
  call void @llvm.dbg.value(metadata i64 %add180, metadata !240, metadata !DIExpression()) #11, !dbg !522
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !522
  %or.i7.i432 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 23) #11, !dbg !524
  %xor3.i433 = xor i64 %xor.i431, %or.i7.i432, !dbg !525
  call void @llvm.dbg.value(metadata i64 %add180, metadata !317, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i64 %add152, metadata !322, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i64 %add124, metadata !323, metadata !DIExpression()), !dbg !526
  %xor.i434 = xor i64 %add152, %add124, !dbg !528
  %and.i435 = and i64 %add180, %xor.i434, !dbg !529
  %xor1.i436 = xor i64 %and.i435, %add124, !dbg !530
  %26 = or i64 %indvars.iv512, 5, !dbg !531
  %arrayidx194 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %26, !dbg !531
  %27 = load i64, ptr %arrayidx194, align 8, !dbg !531, !tbaa !65
  %arrayidx198 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %26, !dbg !531
  %28 = load i64, ptr %arrayidx198, align 8, !dbg !531, !tbaa !65
  %add186 = add i64 %27, %add96, !dbg !531
  %add191 = add i64 %add186, %28, !dbg !531
  %add195 = add i64 %add191, %xor1.i436, !dbg !531
  %add199 = add i64 %add195, %xor3.i433, !dbg !531
  call void @llvm.dbg.value(metadata i64 %add199, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add181, metadata !329, metadata !DIExpression()) #11, !dbg !532
  call void @llvm.dbg.value(metadata i64 %add181, metadata !240, metadata !DIExpression()) #11, !dbg !534
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !534
  %or.i.i437 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 36) #11, !dbg !536
  call void @llvm.dbg.value(metadata i64 %add181, metadata !240, metadata !DIExpression()) #11, !dbg !537
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !537
  %or.i6.i438 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 30) #11, !dbg !539
  %xor.i439 = xor i64 %or.i.i437, %or.i6.i438, !dbg !540
  call void @llvm.dbg.value(metadata i64 %add181, metadata !240, metadata !DIExpression()) #11, !dbg !541
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !541
  %or.i7.i440 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 25) #11, !dbg !543
  %xor3.i441 = xor i64 %xor.i439, %or.i7.i440, !dbg !544
  call void @llvm.dbg.value(metadata i64 %add181, metadata !345, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %add153, metadata !348, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %add125, metadata !349, metadata !DIExpression()), !dbg !545
  %or.i442 = or i64 %add181, %add153, !dbg !547
  %and.i443 = and i64 %or.i442, %add125, !dbg !548
  %and1.i444 = and i64 %add181, %add153, !dbg !549
  %or2.i445 = or i64 %and.i443, %and1.i444, !dbg !550
  %add206 = add i64 %xor3.i441, %or2.i445, !dbg !531
  call void @llvm.dbg.value(metadata i64 %add206, metadata !172, metadata !DIExpression()), !dbg !183
  %add208 = add i64 %add199, %add97, !dbg !531
  %add209 = add i64 %add206, %add199, !dbg !531
  call void @llvm.dbg.value(metadata i64 %add208, metadata !301, metadata !DIExpression()) #11, !dbg !551
  call void @llvm.dbg.value(metadata i64 %add208, metadata !240, metadata !DIExpression()) #11, !dbg !554
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !554
  %or.i.i446 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 50) #11, !dbg !556
  call void @llvm.dbg.value(metadata i64 %add208, metadata !240, metadata !DIExpression()) #11, !dbg !557
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !557
  %or.i6.i447 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 46) #11, !dbg !559
  %xor.i448 = xor i64 %or.i.i446, %or.i6.i447, !dbg !560
  call void @llvm.dbg.value(metadata i64 %add208, metadata !240, metadata !DIExpression()) #11, !dbg !561
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !561
  %or.i7.i449 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 23) #11, !dbg !563
  %xor3.i450 = xor i64 %xor.i448, %or.i7.i449, !dbg !564
  call void @llvm.dbg.value(metadata i64 %add208, metadata !317, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %add180, metadata !322, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %add152, metadata !323, metadata !DIExpression()), !dbg !565
  %xor.i451 = xor i64 %add180, %add152, !dbg !567
  %and.i452 = and i64 %add208, %xor.i451, !dbg !568
  %xor1.i453 = xor i64 %and.i452, %add152, !dbg !569
  %29 = or i64 %indvars.iv512, 6, !dbg !570
  %arrayidx222 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %29, !dbg !570
  %30 = load i64, ptr %arrayidx222, align 16, !dbg !570, !tbaa !65
  %arrayidx226 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %29, !dbg !570
  %31 = load i64, ptr %arrayidx226, align 16, !dbg !570, !tbaa !65
  %add214 = add i64 %30, %add124, !dbg !570
  %add219 = add i64 %add214, %31, !dbg !570
  %add223 = add i64 %add219, %xor1.i453, !dbg !570
  %add227 = add i64 %add223, %xor3.i450, !dbg !570
  call void @llvm.dbg.value(metadata i64 %add227, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add209, metadata !329, metadata !DIExpression()) #11, !dbg !571
  call void @llvm.dbg.value(metadata i64 %add209, metadata !240, metadata !DIExpression()) #11, !dbg !573
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !573
  %or.i.i454 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 36) #11, !dbg !575
  call void @llvm.dbg.value(metadata i64 %add209, metadata !240, metadata !DIExpression()) #11, !dbg !576
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !576
  %or.i6.i455 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 30) #11, !dbg !578
  %xor.i456 = xor i64 %or.i.i454, %or.i6.i455, !dbg !579
  call void @llvm.dbg.value(metadata i64 %add209, metadata !240, metadata !DIExpression()) #11, !dbg !580
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !580
  %or.i7.i457 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 25) #11, !dbg !582
  %xor3.i458 = xor i64 %xor.i456, %or.i7.i457, !dbg !583
  call void @llvm.dbg.value(metadata i64 %add209, metadata !345, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i64 %add181, metadata !348, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i64 %add153, metadata !349, metadata !DIExpression()), !dbg !584
  %or.i459 = or i64 %add209, %add181, !dbg !586
  %and.i460 = and i64 %or.i459, %add153, !dbg !587
  %and1.i461 = and i64 %add209, %add181, !dbg !588
  %or2.i462 = or i64 %and.i460, %and1.i461, !dbg !589
  %add234 = add i64 %xor3.i458, %or2.i462, !dbg !570
  call void @llvm.dbg.value(metadata i64 %add234, metadata !172, metadata !DIExpression()), !dbg !183
  %add236 = add i64 %add227, %add125, !dbg !570
  %add237 = add i64 %add234, %add227, !dbg !570
  call void @llvm.dbg.value(metadata i64 %add236, metadata !301, metadata !DIExpression()) #11, !dbg !590
  call void @llvm.dbg.value(metadata i64 %add236, metadata !240, metadata !DIExpression()) #11, !dbg !593
  call void @llvm.dbg.value(metadata i64 14, metadata !245, metadata !DIExpression()) #11, !dbg !593
  %or.i.i463 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 50) #11, !dbg !595
  call void @llvm.dbg.value(metadata i64 %add236, metadata !240, metadata !DIExpression()) #11, !dbg !596
  call void @llvm.dbg.value(metadata i64 18, metadata !245, metadata !DIExpression()) #11, !dbg !596
  %or.i6.i464 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 46) #11, !dbg !598
  %xor.i465 = xor i64 %or.i.i463, %or.i6.i464, !dbg !599
  call void @llvm.dbg.value(metadata i64 %add236, metadata !240, metadata !DIExpression()) #11, !dbg !600
  call void @llvm.dbg.value(metadata i64 41, metadata !245, metadata !DIExpression()) #11, !dbg !600
  %or.i7.i466 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 23) #11, !dbg !602
  %xor3.i467 = xor i64 %xor.i465, %or.i7.i466, !dbg !603
  call void @llvm.dbg.value(metadata i64 %add236, metadata !317, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i64 %add208, metadata !322, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i64 %add180, metadata !323, metadata !DIExpression()), !dbg !604
  %xor.i468 = xor i64 %add208, %add180, !dbg !606
  %and.i469 = and i64 %add236, %xor.i468, !dbg !607
  %xor1.i470 = xor i64 %and.i469, %add180, !dbg !608
  %32 = or i64 %indvars.iv512, 7, !dbg !609
  %arrayidx250 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %32, !dbg !609
  %33 = load i64, ptr %arrayidx250, align 8, !dbg !609, !tbaa !65
  %arrayidx254 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %32, !dbg !609
  %34 = load i64, ptr %arrayidx254, align 8, !dbg !609, !tbaa !65
  %add242 = add i64 %33, %add152, !dbg !609
  %add247 = add i64 %add242, %34, !dbg !609
  %add251 = add i64 %add247, %xor1.i470, !dbg !609
  %add255 = add i64 %add251, %xor3.i467, !dbg !609
  call void @llvm.dbg.value(metadata i64 %add255, metadata !171, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %add237, metadata !329, metadata !DIExpression()) #11, !dbg !610
  call void @llvm.dbg.value(metadata i64 %add237, metadata !240, metadata !DIExpression()) #11, !dbg !612
  call void @llvm.dbg.value(metadata i64 28, metadata !245, metadata !DIExpression()) #11, !dbg !612
  %or.i.i471 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 36) #11, !dbg !614
  call void @llvm.dbg.value(metadata i64 %add237, metadata !240, metadata !DIExpression()) #11, !dbg !615
  call void @llvm.dbg.value(metadata i64 34, metadata !245, metadata !DIExpression()) #11, !dbg !615
  %or.i6.i472 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 30) #11, !dbg !617
  %xor.i473 = xor i64 %or.i.i471, %or.i6.i472, !dbg !618
  call void @llvm.dbg.value(metadata i64 %add237, metadata !240, metadata !DIExpression()) #11, !dbg !619
  call void @llvm.dbg.value(metadata i64 39, metadata !245, metadata !DIExpression()) #11, !dbg !619
  %or.i7.i474 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 25) #11, !dbg !621
  %xor3.i475 = xor i64 %xor.i473, %or.i7.i474, !dbg !622
  call void @llvm.dbg.value(metadata i64 %add237, metadata !345, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 %add209, metadata !348, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 %add181, metadata !349, metadata !DIExpression()), !dbg !623
  %or.i476 = or i64 %add237, %add209, !dbg !625
  %and.i477 = and i64 %or.i476, %add181, !dbg !626
  %and1.i478 = and i64 %add237, %add209, !dbg !627
  %or2.i479 = or i64 %and.i477, %and1.i478, !dbg !628
  %add262 = add i64 %xor3.i475, %or2.i479, !dbg !609
  call void @llvm.dbg.value(metadata i64 %add262, metadata !172, metadata !DIExpression()), !dbg !183
  %add264 = add i64 %add255, %add153, !dbg !609
  %add265 = add i64 %add262, %add255, !dbg !609
  call void @llvm.dbg.value(metadata i64 %indvars.iv512, metadata !179, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !228
  %cmp40 = icmp ult i64 %indvars.iv512, 72, !dbg !629
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.cond271.preheader, !dbg !229, !llvm.loop !630

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 8, !dbg !632
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next513, metadata !179, metadata !DIExpression()), !dbg !228
  %arrayidx58.phi.trans.insert = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv.next513
  %.pre526 = load i64, ptr %arrayidx58.phi.trans.insert, align 16, !dbg !299, !tbaa !65
  br label %for.body42, !dbg !229

for.cond.cleanup273:                              ; preds = %for.body274.for.body274_crit_edge
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %W) #11, !dbg !633
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %S) #11, !dbg !633
  ret void, !dbg !633

for.body274.for.body274_crit_edge:                ; preds = %for.cond271.preheader, %for.body274.for.body274_crit_edge
  %indvars.iv.next523530 = phi i64 [ 1, %for.cond271.preheader ], [ %indvars.iv.next523, %for.body274.for.body274_crit_edge ]
  %arrayidx279.phi.trans.insert = getelementptr inbounds [8 x i64], ptr %S, i64 0, i64 %indvars.iv.next523530
  %.pre527 = load i64, ptr %arrayidx279.phi.trans.insert, align 8, !dbg !634, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next523530, metadata !181, metadata !DIExpression()), !dbg !293
  %arrayidx277 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 %indvars.iv.next523530, !dbg !294
  %35 = load i64, ptr %arrayidx277, align 8, !dbg !294, !tbaa !65
  %add280 = add i64 %.pre527, %35, !dbg !296
  store i64 %add280, ptr %arrayidx277, align 8, !dbg !297, !tbaa !65
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv.next523530, 1, !dbg !635
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next523, metadata !181, metadata !DIExpression()), !dbg !293
  %exitcond525.not = icmp eq i64 %indvars.iv.next523, 8, !dbg !636
  br i1 %exitcond525.not, label %for.cond.cleanup273, label %for.body274.for.body274_crit_edge, !dbg !298, !llvm.loop !637
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define dso_local void @sha_done(ptr nocapture noundef %md, ptr nocapture noundef writeonly %out) local_unnamed_addr #4 !dbg !639 {
entry:
  call void @llvm.dbg.value(metadata ptr %md, metadata !643, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata ptr %out, metadata !644, metadata !DIExpression()), !dbg !647
  %curlen = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 2, !dbg !648
  %0 = load i32, ptr %curlen, align 8, !dbg !648, !tbaa !55
  %conv = zext i32 %0 to i64, !dbg !649
  %mul = shl nuw nsw i64 %conv, 3, !dbg !650
  %1 = load i64, ptr %md, align 8, !dbg !651, !tbaa !62
  %add = add i64 %mul, %1, !dbg !651
  store i64 %add, ptr %md, align 8, !dbg !651, !tbaa !62
  %buf = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 3, !dbg !652
  %inc = add i32 %0, 1, !dbg !653
  store i32 %inc, ptr %curlen, align 8, !dbg !653, !tbaa !55
  %arrayidx = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 3, i64 %conv, !dbg !654
  store i8 -128, ptr %arrayidx, align 1, !dbg !655, !tbaa !210
  %cmp = icmp ugt i32 %inc, 112, !dbg !656
  br i1 %cmp, label %while.cond.preheader, label %while.end24, !dbg !658

while.cond.preheader:                             ; preds = %entry
  %cmp567 = icmp ult i32 %inc, 128, !dbg !659
  br i1 %cmp567, label %while.body.preheader, label %while.end, !dbg !661

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %inc to i64, !dbg !661
  %3 = add nuw nsw i64 %2, 76, !dbg !661
  %uglygep = getelementptr i8, ptr %md, i64 %3, !dbg !661
  %4 = sub nuw nsw i32 126, %0, !dbg !661
  %5 = zext i32 %4 to i64, !dbg !661
  %6 = add nuw nsw i64 %5, 1, !dbg !661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep, i8 0, i64 %6, i1 false), !dbg !662, !tbaa !210
  store i32 128, ptr %curlen, align 8, !dbg !663, !tbaa !55
  br label %while.end, !dbg !661

while.end:                                        ; preds = %while.body.preheader, %while.cond.preheader
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf), !dbg !664
  br label %while.end24, !dbg !665

while.end24:                                      ; preds = %while.end, %entry
  %.pr = phi i32 [ 0, %while.end ], [ %inc, %entry ], !dbg !666
  %7 = zext i32 %.pr to i64, !dbg !667
  %8 = add nuw nsw i64 %7, 76, !dbg !667
  %uglygep71 = getelementptr i8, ptr %md, i64 %8, !dbg !667
  %9 = sub nuw nsw i32 119, %.pr, !dbg !667
  %10 = zext i32 %9 to i64, !dbg !667
  %11 = add nuw nsw i64 %10, 1, !dbg !667
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep71, i8 0, i64 %11, i1 false), !dbg !668, !tbaa !210
  store i32 120, ptr %curlen, align 8, !dbg !669, !tbaa !55
  %12 = load i64, ptr %md, align 8, !dbg !670, !tbaa !62
  %add.ptr = getelementptr inbounds i8, ptr %buf, i64 120, !dbg !671
  call void @llvm.dbg.value(metadata i64 %12, metadata !672, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !677, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !682
  br label %for.body.i, !dbg !683

for.body.i:                                       ; preds = %for.body.i, %while.end24
  %indvars.iv.i = phi i64 [ 0, %while.end24 ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !678, metadata !DIExpression()), !dbg !682
  %13 = mul nsw i64 %indvars.iv.i, -8, !dbg !684
  %14 = add nsw i64 %13, 56, !dbg !684
  %shr.i = lshr i64 %12, %14, !dbg !686
  %conv.i = trunc i64 %shr.i to i8, !dbg !687
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.i, !dbg !688
  store i8 %conv.i, ptr %arrayidx.i, align 1, !dbg !689, !tbaa !210
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !690
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !678, metadata !DIExpression()), !dbg !682
  %cmp.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !691
  br i1 %cmp.not.i, label %store64.exit, label %for.body.i, !dbg !683, !llvm.loop !692

store64.exit:                                     ; preds = %for.body.i
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf), !dbg !694
  call void @llvm.dbg.value(metadata i32 0, metadata !645, metadata !DIExpression()), !dbg !695
  br label %for.body, !dbg !696

for.cond.cleanup:                                 ; preds = %store64.exit66
  ret void, !dbg !697

for.body:                                         ; preds = %store64.exit, %store64.exit66
  %indvars.iv = phi i64 [ 0, %store64.exit ], [ %indvars.iv.next, %store64.exit66 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !645, metadata !DIExpression()), !dbg !695
  %arrayidx33 = getelementptr inbounds %struct.sha512_state, ptr %md, i64 0, i32 1, i64 %indvars.iv, !dbg !698
  %15 = load i64, ptr %arrayidx33, align 8, !dbg !698, !tbaa !65
  %16 = shl nuw nsw i64 %indvars.iv, 3, !dbg !700
  %add.ptr35 = getelementptr inbounds i8, ptr %out, i64 %16, !dbg !701
  call void @llvm.dbg.value(metadata i64 %15, metadata !672, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata ptr %add.ptr35, metadata !677, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !704
  br label %for.body.i65, !dbg !705

for.body.i65:                                     ; preds = %for.body.i65, %for.body
  %indvars.iv.i59 = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i63, %for.body.i65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i59, metadata !678, metadata !DIExpression()), !dbg !704
  %17 = mul nsw i64 %indvars.iv.i59, -8, !dbg !706
  %18 = add nsw i64 %17, 56, !dbg !706
  %shr.i60 = lshr i64 %15, %18, !dbg !707
  %conv.i61 = trunc i64 %shr.i60 to i8, !dbg !708
  %arrayidx.i62 = getelementptr inbounds i8, ptr %add.ptr35, i64 %indvars.iv.i59, !dbg !709
  store i8 %conv.i61, ptr %arrayidx.i62, align 1, !dbg !710, !tbaa !210
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i59, 1, !dbg !711
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63, metadata !678, metadata !DIExpression()), !dbg !704
  %cmp.not.i64 = icmp eq i64 %indvars.iv.next.i63, 8, !dbg !712
  br i1 %cmp.not.i64, label %store64.exit66, label %for.body.i65, !dbg !705, !llvm.loop !713

store64.exit66:                                   ; preds = %for.body.i65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !715
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !645, metadata !DIExpression()), !dbg !695
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !716
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !696, !llvm.loop !717
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "K", scope: !2, file: !12, line: 13, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/sha-2/sha512.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "73f1443c0cdda2381c045f9baefb232f")
!4 = !{!5, !7, !8, !9, !10, !11}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !12, line: 11, baseType: !13)
!12 = !DIFile(filename: "apps/557.xz_r/src/sha-2/sha512.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "73f1443c0cdda2381c045f9baefb232f")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !10)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 5120, elements: !20)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!20 = !{!21}
!21 = !DISubrange(count: 80)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!29 = distinct !DISubprogram(name: "sha_init", scope: !12, file: !12, line: 105, type: !30, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha512_state", file: !34, line: 13, baseType: !35)
!34 = !DIFile(filename: "apps/557.xz_r/src/sha-2/sha512.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a9972f2f4bb45d8b6de350a024786c")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 7, size: 1664, elements: !36)
!36 = !{!37, !38, !42, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !35, file: !34, line: 9, baseType: !13, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !35, file: !34, line: 10, baseType: !39, size: 512, offset: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 8)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !35, file: !34, line: 11, baseType: !43, size: 32, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !45)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !35, file: !34, line: 12, baseType: !47, size: 1024, offset: 608)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 128)
!50 = !{!51}
!51 = !DILocalVariable(name: "md", arg: 1, scope: !29, file: !12, line: 105, type: !32)
!52 = !DILocation(line: 0, scope: !29)
!53 = !DILocation(line: 107, column: 9, scope: !29)
!54 = !DILocation(line: 107, column: 16, scope: !29)
!55 = !{!56, !60, i64 72}
!56 = !{!"", !57, i64 0, !58, i64 8, !60, i64 72, !58, i64 76}
!57 = !{!"long", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!"int", !58, i64 0}
!61 = !DILocation(line: 108, column: 16, scope: !29)
!62 = !{!56, !57, i64 0}
!63 = !DILocation(line: 109, column: 9, scope: !29)
!64 = !DILocation(line: 109, column: 18, scope: !29)
!65 = !{!57, !57, i64 0}
!66 = !DILocation(line: 110, column: 5, scope: !29)
!67 = !DILocation(line: 110, column: 18, scope: !29)
!68 = !DILocation(line: 111, column: 5, scope: !29)
!69 = !DILocation(line: 111, column: 18, scope: !29)
!70 = !DILocation(line: 112, column: 5, scope: !29)
!71 = !DILocation(line: 112, column: 18, scope: !29)
!72 = !DILocation(line: 113, column: 5, scope: !29)
!73 = !DILocation(line: 113, column: 18, scope: !29)
!74 = !DILocation(line: 114, column: 5, scope: !29)
!75 = !DILocation(line: 114, column: 18, scope: !29)
!76 = !DILocation(line: 115, column: 5, scope: !29)
!77 = !DILocation(line: 115, column: 18, scope: !29)
!78 = !DILocation(line: 116, column: 5, scope: !29)
!79 = !DILocation(line: 116, column: 18, scope: !29)
!80 = !DILocation(line: 117, column: 1, scope: !29)
!81 = distinct !DISubprogram(name: "sha_process", scope: !12, file: !12, line: 134, type: !82, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !32, !84, !86}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !12, line: 10, baseType: !43)
!87 = !{!88, !89, !90, !91, !93, !94, !95}
!88 = !DILocalVariable(name: "md", arg: 1, scope: !81, file: !12, line: 134, type: !32)
!89 = !DILocalVariable(name: "src", arg: 2, scope: !81, file: !12, line: 134, type: !84)
!90 = !DILocalVariable(name: "inlen", arg: 3, scope: !81, file: !12, line: 134, type: !86)
!91 = !DILocalVariable(name: "block_size", scope: !81, file: !12, line: 136, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!93 = !DILocalVariable(name: "in", scope: !81, file: !12, line: 137, type: !8)
!94 = !DILocalVariable(name: "freeme", scope: !81, file: !12, line: 138, type: !8)
!95 = !DILocalVariable(name: "n", scope: !96, file: !12, line: 151, type: !86)
!96 = distinct !DILexicalBlock(scope: !97, file: !12, line: 150, column: 9)
!97 = distinct !DILexicalBlock(scope: !98, file: !12, line: 142, column: 12)
!98 = distinct !DILexicalBlock(scope: !81, file: !12, line: 141, column: 5)
!99 = !DILocation(line: 0, scope: !81)
!100 = !DILocalVariable(name: "str", arg: 1, scope: !101, file: !12, line: 127, type: !5)
!101 = distinct !DISubprogram(name: "sortof_strdup", scope: !12, file: !12, line: 127, type: !102, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!102 = !DISubroutineType(types: !103)
!103 = !{!8, !5, !104}
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !{!100, !106, !107}
!106 = !DILocalVariable(name: "len", arg: 2, scope: !101, file: !12, line: 127, type: !104)
!107 = !DILocalVariable(name: "newstr", scope: !101, file: !12, line: 128, type: !8)
!108 = !DILocation(line: 0, scope: !101, inlinedAt: !109)
!109 = distinct !DILocation(line: 137, column: 25, scope: !81)
!110 = !DILocation(line: 129, column: 5, scope: !101, inlinedAt: !109)
!111 = !DILocation(line: 129, column: 5, scope: !112, inlinedAt: !109)
!112 = distinct !DILexicalBlock(scope: !101, file: !12, line: 129, column: 5)
!113 = !DILocation(line: 129, column: 5, scope: !114, inlinedAt: !109)
!114 = distinct !DILexicalBlock(scope: !112, file: !12, line: 129, column: 5)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !58, i64 0}
!117 = !DILocation(line: 130, column: 5, scope: !101, inlinedAt: !109)
!118 = !DILocation(line: 140, column: 17, scope: !81)
!119 = !DILocation(line: 140, column: 5, scope: !81)
!120 = !DILocation(line: 142, column: 16, scope: !97)
!121 = !DILocation(line: 142, column: 23, scope: !97)
!122 = !DILocation(line: 142, column: 28, scope: !97)
!123 = !DILocation(line: 144, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !97, file: !12, line: 143, column: 9)
!125 = !DILocation(line: 145, column: 24, scope: !124)
!126 = !DILocation(line: 146, column: 23, scope: !124)
!127 = !DILocation(line: 147, column: 23, scope: !124)
!128 = !DILocation(line: 148, column: 9, scope: !124)
!129 = !DILocation(line: 151, column: 48, scope: !96)
!130 = !DILocalVariable(name: "x", arg: 1, scope: !131, file: !12, line: 33, type: !86)
!131 = distinct !DISubprogram(name: "sha_min", scope: !12, file: !12, line: 33, type: !132, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!86, !86, !86}
!134 = !{!130, !135}
!135 = !DILocalVariable(name: "y", arg: 2, scope: !131, file: !12, line: 33, type: !86)
!136 = !DILocation(line: 0, scope: !131, inlinedAt: !137)
!137 = distinct !DILocation(line: 151, column: 21, scope: !96)
!138 = !DILocation(line: 35, column: 12, scope: !131, inlinedAt: !137)
!139 = !DILocation(line: 0, scope: !96)
!140 = !DILocation(line: 152, column: 28, scope: !96)
!141 = !DILocation(line: 152, column: 46, scope: !96)
!142 = !DILocation(line: 152, column: 13, scope: !96)
!143 = !DILocation(line: 153, column: 24, scope: !96)
!144 = !DILocation(line: 154, column: 23, scope: !96)
!145 = !DILocation(line: 155, column: 23, scope: !96)
!146 = !DILocation(line: 157, column: 27, scope: !147)
!147 = distinct !DILexicalBlock(scope: !96, file: !12, line: 157, column: 16)
!148 = !DILocation(line: 157, column: 16, scope: !96)
!149 = !DILocation(line: 159, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !12, line: 158, column: 13)
!151 = !DILocation(line: 160, column: 28, scope: !150)
!152 = !DILocation(line: 161, column: 28, scope: !150)
!153 = !DILocation(line: 162, column: 13, scope: !150)
!154 = !DILocation(line: 0, scope: !97)
!155 = distinct !{!155, !119, !156, !157, !158}
!156 = !DILocation(line: 164, column: 5, scope: !81)
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = !DILocation(line: 165, column: 5, scope: !81)
!160 = !DILocation(line: 166, column: 1, scope: !81)
!161 = distinct !DISubprogram(name: "sha_compress", scope: !12, file: !12, line: 70, type: !162, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !32, !5}
!164 = !{!165, !166, !167, !169, !171, !172, !173, !175, !177, !179, !181}
!165 = !DILocalVariable(name: "md", arg: 1, scope: !161, file: !12, line: 70, type: !32)
!166 = !DILocalVariable(name: "buf", arg: 2, scope: !161, file: !12, line: 70, type: !5)
!167 = !DILocalVariable(name: "S", scope: !161, file: !12, line: 72, type: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !40)
!169 = !DILocalVariable(name: "W", scope: !161, file: !12, line: 72, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 5120, elements: !20)
!171 = !DILocalVariable(name: "t0", scope: !161, file: !12, line: 72, type: !11)
!172 = !DILocalVariable(name: "t1", scope: !161, file: !12, line: 72, type: !11)
!173 = !DILocalVariable(name: "i", scope: !174, file: !12, line: 75, type: !104)
!174 = distinct !DILexicalBlock(scope: !161, file: !12, line: 75, column: 5)
!175 = !DILocalVariable(name: "i", scope: !176, file: !12, line: 79, type: !104)
!176 = distinct !DILexicalBlock(scope: !161, file: !12, line: 79, column: 5)
!177 = !DILocalVariable(name: "i", scope: !178, file: !12, line: 83, type: !104)
!178 = distinct !DILexicalBlock(scope: !161, file: !12, line: 83, column: 5)
!179 = !DILocalVariable(name: "i", scope: !180, file: !12, line: 86, type: !104)
!180 = distinct !DILexicalBlock(scope: !161, file: !12, line: 86, column: 5)
!181 = !DILocalVariable(name: "i", scope: !182, file: !12, line: 99, type: !104)
!182 = distinct !DILexicalBlock(scope: !161, file: !12, line: 99, column: 6)
!183 = !DILocation(line: 0, scope: !161)
!184 = !DILocation(line: 72, column: 5, scope: !161)
!185 = !DILocation(line: 72, column: 9, scope: !161)
!186 = !DILocation(line: 72, column: 15, scope: !161)
!187 = !DILocation(line: 0, scope: !174)
!188 = !DILocation(line: 75, column: 5, scope: !174)
!189 = !DILocation(line: 76, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !174, file: !12, line: 75, column: 5)
!191 = !DILocation(line: 79, column: 5, scope: !176)
!192 = !DILocation(line: 0, scope: !176)
!193 = !DILocation(line: 80, column: 31, scope: !194)
!194 = distinct !DILexicalBlock(scope: !176, file: !12, line: 79, column: 5)
!195 = !DILocation(line: 80, column: 27, scope: !194)
!196 = !DILocalVariable(name: "y", arg: 1, scope: !197, file: !12, line: 44, type: !5)
!197 = distinct !DISubprogram(name: "load64", scope: !12, file: !12, line: 44, type: !198, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!11, !5}
!200 = !{!196, !201, !202}
!201 = !DILocalVariable(name: "res", scope: !197, file: !12, line: 46, type: !11)
!202 = !DILocalVariable(name: "i", scope: !203, file: !12, line: 47, type: !104)
!203 = distinct !DILexicalBlock(scope: !197, file: !12, line: 47, column: 5)
!204 = !DILocation(line: 0, scope: !197, inlinedAt: !205)
!205 = distinct !DILocation(line: 80, column: 16, scope: !194)
!206 = !DILocation(line: 0, scope: !203, inlinedAt: !205)
!207 = !DILocation(line: 47, column: 5, scope: !203, inlinedAt: !205)
!208 = !DILocation(line: 48, column: 22, scope: !209, inlinedAt: !205)
!209 = distinct !DILexicalBlock(scope: !203, file: !12, line: 47, column: 5)
!210 = !{!58, !58, i64 0}
!211 = !DILocation(line: 48, column: 16, scope: !209, inlinedAt: !205)
!212 = !DILocation(line: 48, column: 38, scope: !209, inlinedAt: !205)
!213 = !DILocation(line: 48, column: 28, scope: !209, inlinedAt: !205)
!214 = !DILocation(line: 48, column: 13, scope: !209, inlinedAt: !205)
!215 = !DILocation(line: 47, column: 28, scope: !209, inlinedAt: !205)
!216 = !DILocation(line: 47, column: 22, scope: !209, inlinedAt: !205)
!217 = distinct !{!217, !207, !218, !157, !158}
!218 = !DILocation(line: 48, column: 41, scope: !203, inlinedAt: !205)
!219 = !DILocation(line: 80, column: 9, scope: !194)
!220 = !DILocation(line: 80, column: 14, scope: !194)
!221 = !DILocation(line: 79, column: 29, scope: !194)
!222 = !DILocation(line: 79, column: 22, scope: !194)
!223 = distinct !{!223, !191, !224, !157, !158}
!224 = !DILocation(line: 80, column: 34, scope: !176)
!225 = !DILocation(line: 84, column: 66, scope: !226)
!226 = distinct !DILexicalBlock(scope: !178, file: !12, line: 83, column: 5)
!227 = !DILocation(line: 83, column: 5, scope: !178)
!228 = !DILocation(line: 0, scope: !180)
!229 = !DILocation(line: 86, column: 5, scope: !180)
!230 = !DILocation(line: 0, scope: !178)
!231 = !DILocation(line: 84, column: 27, scope: !226)
!232 = !DILocation(line: 84, column: 23, scope: !226)
!233 = !DILocalVariable(name: "x", arg: 1, scope: !234, file: !12, line: 59, type: !11)
!234 = distinct !DISubprogram(name: "Gamma1", scope: !12, file: !12, line: 59, type: !235, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!11, !11}
!237 = !{!233}
!238 = !DILocation(line: 0, scope: !234, inlinedAt: !239)
!239 = distinct !DILocation(line: 84, column: 16, scope: !226)
!240 = !DILocalVariable(name: "x", arg: 1, scope: !241, file: !12, line: 54, type: !11)
!241 = distinct !DISubprogram(name: "Rot", scope: !12, file: !12, line: 54, type: !242, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!11, !11, !11}
!244 = !{!240, !245}
!245 = !DILocalVariable(name: "n", arg: 2, scope: !241, file: !12, line: 54, type: !11)
!246 = !DILocation(line: 0, scope: !241, inlinedAt: !247)
!247 = distinct !DILocation(line: 59, column: 46, scope: !234, inlinedAt: !239)
!248 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !247)
!249 = !DILocation(line: 0, scope: !241, inlinedAt: !250)
!250 = distinct !DILocation(line: 59, column: 59, scope: !234, inlinedAt: !239)
!251 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !250)
!252 = !DILocation(line: 59, column: 57, scope: !234, inlinedAt: !239)
!253 = !DILocalVariable(name: "x", arg: 1, scope: !254, file: !12, line: 55, type: !11)
!254 = distinct !DISubprogram(name: "Sh", scope: !12, file: !12, line: 55, type: !242, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!255 = !{!253, !256}
!256 = !DILocalVariable(name: "n", arg: 2, scope: !254, file: !12, line: 55, type: !11)
!257 = !DILocation(line: 0, scope: !254, inlinedAt: !258)
!258 = distinct !DILocation(line: 59, column: 72, scope: !234, inlinedAt: !239)
!259 = !DILocation(line: 55, column: 48, scope: !254, inlinedAt: !258)
!260 = !DILocation(line: 59, column: 70, scope: !234, inlinedAt: !239)
!261 = !DILocation(line: 84, column: 39, scope: !226)
!262 = !DILocation(line: 84, column: 35, scope: !226)
!263 = !DILocation(line: 84, column: 33, scope: !226)
!264 = !DILocation(line: 84, column: 57, scope: !226)
!265 = !DILocation(line: 84, column: 53, scope: !226)
!266 = !DILocalVariable(name: "x", arg: 1, scope: !267, file: !12, line: 58, type: !11)
!267 = distinct !DISubprogram(name: "Gamma0", scope: !12, file: !12, line: 58, type: !235, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!268 = !{!266}
!269 = !DILocation(line: 0, scope: !267, inlinedAt: !270)
!270 = distinct !DILocation(line: 84, column: 46, scope: !226)
!271 = !DILocation(line: 0, scope: !241, inlinedAt: !272)
!272 = distinct !DILocation(line: 58, column: 46, scope: !267, inlinedAt: !270)
!273 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !272)
!274 = !DILocation(line: 0, scope: !241, inlinedAt: !275)
!275 = distinct !DILocation(line: 58, column: 58, scope: !267, inlinedAt: !270)
!276 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !275)
!277 = !DILocation(line: 58, column: 56, scope: !267, inlinedAt: !270)
!278 = !DILocation(line: 0, scope: !254, inlinedAt: !279)
!279 = distinct !DILocation(line: 58, column: 70, scope: !267, inlinedAt: !270)
!280 = !DILocation(line: 55, column: 48, scope: !254, inlinedAt: !279)
!281 = !DILocation(line: 58, column: 68, scope: !267, inlinedAt: !270)
!282 = !DILocation(line: 84, column: 44, scope: !226)
!283 = !DILocation(line: 84, column: 64, scope: !226)
!284 = !DILocation(line: 84, column: 9, scope: !226)
!285 = !DILocation(line: 84, column: 14, scope: !226)
!286 = !DILocation(line: 83, column: 30, scope: !226)
!287 = !DILocation(line: 83, column: 23, scope: !226)
!288 = distinct !{!288, !227, !289, !157, !158}
!289 = !DILocation(line: 84, column: 74, scope: !178)
!290 = !DILocation(line: 0, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !12, line: 87, column: 5)
!292 = distinct !DILexicalBlock(scope: !180, file: !12, line: 86, column: 5)
!293 = !DILocation(line: 0, scope: !182)
!294 = !DILocation(line: 100, column: 25, scope: !295)
!295 = distinct !DILexicalBlock(scope: !182, file: !12, line: 99, column: 6)
!296 = !DILocation(line: 100, column: 38, scope: !295)
!297 = !DILocation(line: 100, column: 23, scope: !295)
!298 = !DILocation(line: 99, column: 6, scope: !182)
!299 = !DILocation(line: 88, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !12, line: 88, column: 9)
!301 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !12, line: 57, type: !11)
!302 = distinct !DISubprogram(name: "Sigma1", scope: !12, file: !12, line: 57, type: !235, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!303 = !{!301}
!304 = !DILocation(line: 0, scope: !302, inlinedAt: !305)
!305 = distinct !DILocation(line: 88, column: 9, scope: !300)
!306 = !DILocation(line: 0, scope: !241, inlinedAt: !307)
!307 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !305)
!308 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !307)
!309 = !DILocation(line: 0, scope: !241, inlinedAt: !310)
!310 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !305)
!311 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !310)
!312 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !305)
!313 = !DILocation(line: 0, scope: !241, inlinedAt: !314)
!314 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !305)
!315 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !314)
!316 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !305)
!317 = !DILocalVariable(name: "x", arg: 1, scope: !318, file: !12, line: 52, type: !11)
!318 = distinct !DISubprogram(name: "Ch", scope: !12, file: !12, line: 52, type: !319, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{!11, !11, !11, !11}
!321 = !{!317, !322, !323}
!322 = !DILocalVariable(name: "y", arg: 2, scope: !318, file: !12, line: 52, type: !11)
!323 = !DILocalVariable(name: "z", arg: 3, scope: !318, file: !12, line: 52, type: !11)
!324 = !DILocation(line: 0, scope: !318, inlinedAt: !325)
!325 = distinct !DILocation(line: 88, column: 9, scope: !300)
!326 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !325)
!327 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !325)
!328 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !325)
!329 = !DILocalVariable(name: "x", arg: 1, scope: !330, file: !12, line: 56, type: !11)
!330 = distinct !DISubprogram(name: "Sigma0", scope: !12, file: !12, line: 56, type: !235, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!331 = !{!329}
!332 = !DILocation(line: 0, scope: !330, inlinedAt: !333)
!333 = distinct !DILocation(line: 88, column: 9, scope: !300)
!334 = !DILocation(line: 0, scope: !241, inlinedAt: !335)
!335 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !333)
!336 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !335)
!337 = !DILocation(line: 0, scope: !241, inlinedAt: !338)
!338 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !333)
!339 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !338)
!340 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !333)
!341 = !DILocation(line: 0, scope: !241, inlinedAt: !342)
!342 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !333)
!343 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !342)
!344 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !333)
!345 = !DILocalVariable(name: "x", arg: 1, scope: !346, file: !12, line: 53, type: !11)
!346 = distinct !DISubprogram(name: "Maj", scope: !12, file: !12, line: 53, type: !319, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!347 = !{!345, !348, !349}
!348 = !DILocalVariable(name: "y", arg: 2, scope: !346, file: !12, line: 53, type: !11)
!349 = !DILocalVariable(name: "z", arg: 3, scope: !346, file: !12, line: 53, type: !11)
!350 = !DILocation(line: 0, scope: !346, inlinedAt: !351)
!351 = distinct !DILocation(line: 88, column: 9, scope: !300)
!352 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !351)
!353 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !351)
!354 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !351)
!355 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !351)
!356 = !DILocation(line: 0, scope: !302, inlinedAt: !357)
!357 = distinct !DILocation(line: 89, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !291, file: !12, line: 89, column: 9)
!359 = !DILocation(line: 0, scope: !241, inlinedAt: !360)
!360 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !357)
!361 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !360)
!362 = !DILocation(line: 0, scope: !241, inlinedAt: !363)
!363 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !357)
!364 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !363)
!365 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !357)
!366 = !DILocation(line: 0, scope: !241, inlinedAt: !367)
!367 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !357)
!368 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !367)
!369 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !357)
!370 = !DILocation(line: 0, scope: !318, inlinedAt: !371)
!371 = distinct !DILocation(line: 89, column: 9, scope: !358)
!372 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !371)
!373 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !371)
!374 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !371)
!375 = !DILocation(line: 89, column: 9, scope: !358)
!376 = !DILocation(line: 0, scope: !330, inlinedAt: !377)
!377 = distinct !DILocation(line: 89, column: 9, scope: !358)
!378 = !DILocation(line: 0, scope: !241, inlinedAt: !379)
!379 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !377)
!380 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !379)
!381 = !DILocation(line: 0, scope: !241, inlinedAt: !382)
!382 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !377)
!383 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !382)
!384 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !377)
!385 = !DILocation(line: 0, scope: !241, inlinedAt: !386)
!386 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !377)
!387 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !386)
!388 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !377)
!389 = !DILocation(line: 0, scope: !346, inlinedAt: !390)
!390 = distinct !DILocation(line: 89, column: 9, scope: !358)
!391 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !390)
!392 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !390)
!393 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !390)
!394 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !390)
!395 = !DILocation(line: 0, scope: !302, inlinedAt: !396)
!396 = distinct !DILocation(line: 90, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !291, file: !12, line: 90, column: 9)
!398 = !DILocation(line: 0, scope: !241, inlinedAt: !399)
!399 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !396)
!400 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !399)
!401 = !DILocation(line: 0, scope: !241, inlinedAt: !402)
!402 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !396)
!403 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !402)
!404 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !396)
!405 = !DILocation(line: 0, scope: !241, inlinedAt: !406)
!406 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !396)
!407 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !406)
!408 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !396)
!409 = !DILocation(line: 0, scope: !318, inlinedAt: !410)
!410 = distinct !DILocation(line: 90, column: 9, scope: !397)
!411 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !410)
!412 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !410)
!413 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !410)
!414 = !DILocation(line: 90, column: 9, scope: !397)
!415 = !DILocation(line: 0, scope: !330, inlinedAt: !416)
!416 = distinct !DILocation(line: 90, column: 9, scope: !397)
!417 = !DILocation(line: 0, scope: !241, inlinedAt: !418)
!418 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !416)
!419 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !418)
!420 = !DILocation(line: 0, scope: !241, inlinedAt: !421)
!421 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !416)
!422 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !421)
!423 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !416)
!424 = !DILocation(line: 0, scope: !241, inlinedAt: !425)
!425 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !416)
!426 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !425)
!427 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !416)
!428 = !DILocation(line: 0, scope: !346, inlinedAt: !429)
!429 = distinct !DILocation(line: 90, column: 9, scope: !397)
!430 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !429)
!431 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !429)
!432 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !429)
!433 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !429)
!434 = !DILocation(line: 0, scope: !302, inlinedAt: !435)
!435 = distinct !DILocation(line: 91, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !291, file: !12, line: 91, column: 9)
!437 = !DILocation(line: 0, scope: !241, inlinedAt: !438)
!438 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !435)
!439 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !438)
!440 = !DILocation(line: 0, scope: !241, inlinedAt: !441)
!441 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !435)
!442 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !441)
!443 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !435)
!444 = !DILocation(line: 0, scope: !241, inlinedAt: !445)
!445 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !435)
!446 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !445)
!447 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !435)
!448 = !DILocation(line: 0, scope: !318, inlinedAt: !449)
!449 = distinct !DILocation(line: 91, column: 9, scope: !436)
!450 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !449)
!451 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !449)
!452 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !449)
!453 = !DILocation(line: 91, column: 9, scope: !436)
!454 = !DILocation(line: 0, scope: !330, inlinedAt: !455)
!455 = distinct !DILocation(line: 91, column: 9, scope: !436)
!456 = !DILocation(line: 0, scope: !241, inlinedAt: !457)
!457 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !455)
!458 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !457)
!459 = !DILocation(line: 0, scope: !241, inlinedAt: !460)
!460 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !455)
!461 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !460)
!462 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !455)
!463 = !DILocation(line: 0, scope: !241, inlinedAt: !464)
!464 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !455)
!465 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !464)
!466 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !455)
!467 = !DILocation(line: 0, scope: !346, inlinedAt: !468)
!468 = distinct !DILocation(line: 91, column: 9, scope: !436)
!469 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !468)
!470 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !468)
!471 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !468)
!472 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !468)
!473 = !DILocation(line: 0, scope: !302, inlinedAt: !474)
!474 = distinct !DILocation(line: 92, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !291, file: !12, line: 92, column: 9)
!476 = !DILocation(line: 0, scope: !241, inlinedAt: !477)
!477 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !474)
!478 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !477)
!479 = !DILocation(line: 0, scope: !241, inlinedAt: !480)
!480 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !474)
!481 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !480)
!482 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !474)
!483 = !DILocation(line: 0, scope: !241, inlinedAt: !484)
!484 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !474)
!485 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !484)
!486 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !474)
!487 = !DILocation(line: 0, scope: !318, inlinedAt: !488)
!488 = distinct !DILocation(line: 92, column: 9, scope: !475)
!489 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !488)
!490 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !488)
!491 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !488)
!492 = !DILocation(line: 92, column: 9, scope: !475)
!493 = !DILocation(line: 0, scope: !330, inlinedAt: !494)
!494 = distinct !DILocation(line: 92, column: 9, scope: !475)
!495 = !DILocation(line: 0, scope: !241, inlinedAt: !496)
!496 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !494)
!497 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !496)
!498 = !DILocation(line: 0, scope: !241, inlinedAt: !499)
!499 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !494)
!500 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !499)
!501 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !494)
!502 = !DILocation(line: 0, scope: !241, inlinedAt: !503)
!503 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !494)
!504 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !503)
!505 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !494)
!506 = !DILocation(line: 0, scope: !346, inlinedAt: !507)
!507 = distinct !DILocation(line: 92, column: 9, scope: !475)
!508 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !507)
!509 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !507)
!510 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !507)
!511 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !507)
!512 = !DILocation(line: 0, scope: !302, inlinedAt: !513)
!513 = distinct !DILocation(line: 93, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !291, file: !12, line: 93, column: 9)
!515 = !DILocation(line: 0, scope: !241, inlinedAt: !516)
!516 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !513)
!517 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !516)
!518 = !DILocation(line: 0, scope: !241, inlinedAt: !519)
!519 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !513)
!520 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !519)
!521 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !513)
!522 = !DILocation(line: 0, scope: !241, inlinedAt: !523)
!523 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !513)
!524 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !523)
!525 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !513)
!526 = !DILocation(line: 0, scope: !318, inlinedAt: !527)
!527 = distinct !DILocation(line: 93, column: 9, scope: !514)
!528 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !527)
!529 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !527)
!530 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !527)
!531 = !DILocation(line: 93, column: 9, scope: !514)
!532 = !DILocation(line: 0, scope: !330, inlinedAt: !533)
!533 = distinct !DILocation(line: 93, column: 9, scope: !514)
!534 = !DILocation(line: 0, scope: !241, inlinedAt: !535)
!535 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !533)
!536 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !535)
!537 = !DILocation(line: 0, scope: !241, inlinedAt: !538)
!538 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !533)
!539 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !538)
!540 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !533)
!541 = !DILocation(line: 0, scope: !241, inlinedAt: !542)
!542 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !533)
!543 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !542)
!544 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !533)
!545 = !DILocation(line: 0, scope: !346, inlinedAt: !546)
!546 = distinct !DILocation(line: 93, column: 9, scope: !514)
!547 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !546)
!548 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !546)
!549 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !546)
!550 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !546)
!551 = !DILocation(line: 0, scope: !302, inlinedAt: !552)
!552 = distinct !DILocation(line: 94, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !291, file: !12, line: 94, column: 9)
!554 = !DILocation(line: 0, scope: !241, inlinedAt: !555)
!555 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !552)
!556 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !555)
!557 = !DILocation(line: 0, scope: !241, inlinedAt: !558)
!558 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !552)
!559 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !558)
!560 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !552)
!561 = !DILocation(line: 0, scope: !241, inlinedAt: !562)
!562 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !552)
!563 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !562)
!564 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !552)
!565 = !DILocation(line: 0, scope: !318, inlinedAt: !566)
!566 = distinct !DILocation(line: 94, column: 9, scope: !553)
!567 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !566)
!568 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !566)
!569 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !566)
!570 = !DILocation(line: 94, column: 9, scope: !553)
!571 = !DILocation(line: 0, scope: !330, inlinedAt: !572)
!572 = distinct !DILocation(line: 94, column: 9, scope: !553)
!573 = !DILocation(line: 0, scope: !241, inlinedAt: !574)
!574 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !572)
!575 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !574)
!576 = !DILocation(line: 0, scope: !241, inlinedAt: !577)
!577 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !572)
!578 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !577)
!579 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !572)
!580 = !DILocation(line: 0, scope: !241, inlinedAt: !581)
!581 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !572)
!582 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !581)
!583 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !572)
!584 = !DILocation(line: 0, scope: !346, inlinedAt: !585)
!585 = distinct !DILocation(line: 94, column: 9, scope: !553)
!586 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !585)
!587 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !585)
!588 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !585)
!589 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !585)
!590 = !DILocation(line: 0, scope: !302, inlinedAt: !591)
!591 = distinct !DILocation(line: 95, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !291, file: !12, line: 95, column: 9)
!593 = !DILocation(line: 0, scope: !241, inlinedAt: !594)
!594 = distinct !DILocation(line: 57, column: 46, scope: !302, inlinedAt: !591)
!595 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !594)
!596 = !DILocation(line: 0, scope: !241, inlinedAt: !597)
!597 = distinct !DILocation(line: 57, column: 59, scope: !302, inlinedAt: !591)
!598 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !597)
!599 = !DILocation(line: 57, column: 57, scope: !302, inlinedAt: !591)
!600 = !DILocation(line: 0, scope: !241, inlinedAt: !601)
!601 = distinct !DILocation(line: 57, column: 72, scope: !302, inlinedAt: !591)
!602 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !601)
!603 = !DILocation(line: 57, column: 70, scope: !302, inlinedAt: !591)
!604 = !DILocation(line: 0, scope: !318, inlinedAt: !605)
!605 = distinct !DILocation(line: 95, column: 9, scope: !592)
!606 = !DILocation(line: 52, column: 58, scope: !318, inlinedAt: !605)
!607 = !DILocation(line: 52, column: 53, scope: !318, inlinedAt: !605)
!608 = !DILocation(line: 52, column: 48, scope: !318, inlinedAt: !605)
!609 = !DILocation(line: 95, column: 9, scope: !592)
!610 = !DILocation(line: 0, scope: !330, inlinedAt: !611)
!611 = distinct !DILocation(line: 95, column: 9, scope: !592)
!612 = !DILocation(line: 0, scope: !241, inlinedAt: !613)
!613 = distinct !DILocation(line: 56, column: 46, scope: !330, inlinedAt: !611)
!614 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !613)
!615 = !DILocation(line: 0, scope: !241, inlinedAt: !616)
!616 = distinct !DILocation(line: 56, column: 59, scope: !330, inlinedAt: !611)
!617 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !616)
!618 = !DILocation(line: 56, column: 57, scope: !330, inlinedAt: !611)
!619 = !DILocation(line: 0, scope: !241, inlinedAt: !620)
!620 = distinct !DILocation(line: 56, column: 72, scope: !330, inlinedAt: !611)
!621 = !DILocation(line: 54, column: 62, scope: !241, inlinedAt: !620)
!622 = !DILocation(line: 56, column: 70, scope: !330, inlinedAt: !611)
!623 = !DILocation(line: 0, scope: !346, inlinedAt: !624)
!624 = distinct !DILocation(line: 95, column: 9, scope: !592)
!625 = !DILocation(line: 53, column: 50, scope: !346, inlinedAt: !624)
!626 = !DILocation(line: 53, column: 55, scope: !346, inlinedAt: !624)
!627 = !DILocation(line: 53, column: 65, scope: !346, inlinedAt: !624)
!628 = !DILocation(line: 53, column: 60, scope: !346, inlinedAt: !624)
!629 = !DILocation(line: 86, column: 22, scope: !292)
!630 = distinct !{!630, !229, !631, !157, !158}
!631 = !DILocation(line: 96, column: 5, scope: !180)
!632 = !DILocation(line: 86, column: 30, scope: !292)
!633 = !DILocation(line: 101, column: 1, scope: !161)
!634 = !DILocation(line: 100, column: 40, scope: !295)
!635 = !DILocation(line: 99, column: 29, scope: !295)
!636 = !DILocation(line: 99, column: 23, scope: !295)
!637 = distinct !{!637, !298, !638, !157, !158}
!638 = !DILocation(line: 100, column: 43, scope: !182)
!639 = distinct !DISubprogram(name: "sha_done", scope: !12, file: !12, line: 168, type: !640, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !32, !9}
!642 = !{!643, !644, !645}
!643 = !DILocalVariable(name: "md", arg: 1, scope: !639, file: !12, line: 168, type: !32)
!644 = !DILocalVariable(name: "out", arg: 2, scope: !639, file: !12, line: 168, type: !9)
!645 = !DILocalVariable(name: "i", scope: !646, file: !12, line: 197, type: !104)
!646 = distinct !DILexicalBlock(scope: !639, file: !12, line: 197, column: 5)
!647 = !DILocation(line: 0, scope: !639)
!648 = !DILocation(line: 171, column: 23, scope: !639)
!649 = !DILocation(line: 171, column: 19, scope: !639)
!650 = !DILocation(line: 171, column: 30, scope: !639)
!651 = !DILocation(line: 171, column: 16, scope: !639)
!652 = !DILocation(line: 174, column: 9, scope: !639)
!653 = !DILocation(line: 174, column: 23, scope: !639)
!654 = !DILocation(line: 174, column: 5, scope: !639)
!655 = !DILocation(line: 174, column: 27, scope: !639)
!656 = !DILocation(line: 178, column: 19, scope: !657)
!657 = distinct !DILexicalBlock(scope: !639, file: !12, line: 178, column: 8)
!658 = !DILocation(line: 178, column: 8, scope: !639)
!659 = !DILocation(line: 180, column: 26, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !12, line: 179, column: 5)
!661 = !DILocation(line: 180, column: 9, scope: !660)
!662 = !DILocation(line: 181, column: 35, scope: !660)
!663 = !DILocation(line: 181, column: 31, scope: !660)
!664 = !DILocation(line: 182, column: 9, scope: !660)
!665 = !DILocation(line: 184, column: 5, scope: !660)
!666 = !DILocation(line: 189, column: 15, scope: !639)
!667 = !DILocation(line: 189, column: 5, scope: !639)
!668 = !DILocation(line: 190, column: 31, scope: !639)
!669 = !DILocation(line: 190, column: 27, scope: !639)
!670 = !DILocation(line: 193, column: 17, scope: !639)
!671 = !DILocation(line: 193, column: 32, scope: !639)
!672 = !DILocalVariable(name: "x", arg: 1, scope: !673, file: !12, line: 38, type: !11)
!673 = distinct !DISubprogram(name: "store64", scope: !12, file: !12, line: 38, type: !674, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !11, !8}
!676 = !{!672, !677, !678}
!677 = !DILocalVariable(name: "y", arg: 2, scope: !673, file: !12, line: 38, type: !8)
!678 = !DILocalVariable(name: "i", scope: !679, file: !12, line: 40, type: !104)
!679 = distinct !DILexicalBlock(scope: !673, file: !12, line: 40, column: 5)
!680 = !DILocation(line: 0, scope: !673, inlinedAt: !681)
!681 = distinct !DILocation(line: 193, column: 5, scope: !639)
!682 = !DILocation(line: 0, scope: !679, inlinedAt: !681)
!683 = !DILocation(line: 40, column: 5, scope: !679, inlinedAt: !681)
!684 = !DILocation(line: 41, column: 29, scope: !685, inlinedAt: !681)
!685 = distinct !DILexicalBlock(scope: !679, file: !12, line: 40, column: 5)
!686 = !DILocation(line: 41, column: 19, scope: !685, inlinedAt: !681)
!687 = !DILocation(line: 41, column: 16, scope: !685, inlinedAt: !681)
!688 = !DILocation(line: 41, column: 9, scope: !685, inlinedAt: !681)
!689 = !DILocation(line: 41, column: 14, scope: !685, inlinedAt: !681)
!690 = !DILocation(line: 40, column: 28, scope: !685, inlinedAt: !681)
!691 = !DILocation(line: 40, column: 22, scope: !685, inlinedAt: !681)
!692 = distinct !{!692, !683, !693, !157, !158}
!693 = !DILocation(line: 41, column: 37, scope: !679, inlinedAt: !681)
!694 = !DILocation(line: 194, column: 5, scope: !639)
!695 = !DILocation(line: 0, scope: !646)
!696 = !DILocation(line: 197, column: 5, scope: !646)
!697 = !DILocation(line: 199, column: 1, scope: !639)
!698 = !DILocation(line: 198, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !646, file: !12, line: 197, column: 5)
!700 = !DILocation(line: 198, column: 57, scope: !699)
!701 = !DILocation(line: 198, column: 54, scope: !699)
!702 = !DILocation(line: 0, scope: !673, inlinedAt: !703)
!703 = distinct !DILocation(line: 198, column: 9, scope: !699)
!704 = !DILocation(line: 0, scope: !679, inlinedAt: !703)
!705 = !DILocation(line: 40, column: 5, scope: !679, inlinedAt: !703)
!706 = !DILocation(line: 41, column: 29, scope: !685, inlinedAt: !703)
!707 = !DILocation(line: 41, column: 19, scope: !685, inlinedAt: !703)
!708 = !DILocation(line: 41, column: 16, scope: !685, inlinedAt: !703)
!709 = !DILocation(line: 41, column: 9, scope: !685, inlinedAt: !703)
!710 = !DILocation(line: 41, column: 14, scope: !685, inlinedAt: !703)
!711 = !DILocation(line: 40, column: 28, scope: !685, inlinedAt: !703)
!712 = !DILocation(line: 40, column: 22, scope: !685, inlinedAt: !703)
!713 = distinct !{!713, !705, !714, !157, !158}
!714 = !DILocation(line: 41, column: 37, scope: !679, inlinedAt: !703)
!715 = !DILocation(line: 197, column: 28, scope: !699)
!716 = !DILocation(line: 197, column: 22, scope: !699)
!717 = distinct !{!717, !696, !718, !157, !158}
!718 = !DILocation(line: 198, column: 60, scope: !646)
