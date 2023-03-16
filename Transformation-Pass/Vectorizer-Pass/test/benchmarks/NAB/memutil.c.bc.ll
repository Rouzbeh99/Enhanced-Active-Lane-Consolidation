; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/memutil.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/memutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"FATAL: %s\0A\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"allocation failure in vector: nh = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"allocation failure in ipvector()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @nrerror(ptr noundef %msg) local_unnamed_addr #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata ptr %msg, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load ptr, ptr @stderr, align 8, !dbg !26, !tbaa !27
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %msg) #8, !dbg !31
  tail call void @exit(i32 noundef 1) #9, !dbg !32
  unreachable, !dbg !32
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @vector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata i64 %nl, metadata !40, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %nh, metadata !41, metadata !DIExpression()), !dbg !43
  %sub = sub i64 %nh, %nl, !dbg !44
  %add = shl i64 %sub, 3, !dbg !45
  %mul = add i64 %add, 8, !dbg !45
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !46
  call void @llvm.dbg.value(metadata ptr %call, metadata !42, metadata !DIExpression()), !dbg !43
  %tobool.not = icmp eq ptr %call, null, !dbg !47
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @nabout, align 8, !dbg !50, !tbaa !27
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %nh), !dbg !52
  %1 = load ptr, ptr @nabout, align 8, !dbg !53, !tbaa !27
  %call2 = tail call i32 @fflush(ptr noundef %1), !dbg !54
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !24, metadata !DIExpression()) #11, !dbg !55
  %2 = load ptr, ptr @stderr, align 8, !dbg !57, !tbaa !27
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #12, !dbg !58
  tail call void @exit(i32 noundef 1) #9, !dbg !59
  unreachable, !dbg !59

if.end:                                           ; preds = %entry
  %idx.neg = sub i64 0, %nl, !dbg !60
  %add.ptr = getelementptr inbounds double, ptr %call, i64 %idx.neg, !dbg !60
  ret ptr %add.ptr, !dbg !61
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !62 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @ivector(i32 noundef %nl, i32 noundef %nh) local_unnamed_addr #3 !dbg !124 {
entry:
  call void @llvm.dbg.value(metadata i32 %nl, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %nh, metadata !129, metadata !DIExpression()), !dbg !131
  %sub = sub i32 1, %nl, !dbg !132
  %add = add i32 %sub, %nh, !dbg !133
  %conv = sext i32 %add to i64, !dbg !134
  %mul = shl nsw i64 %conv, 2, !dbg !135
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !136
  call void @llvm.dbg.value(metadata ptr %call, metadata !130, metadata !DIExpression()), !dbg !131
  %tobool.not = icmp eq ptr %call, null, !dbg !137
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !24, metadata !DIExpression()) #11, !dbg !140
  %0 = load ptr, ptr @stderr, align 8, !dbg !142, !tbaa !27
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12, !dbg !143
  tail call void @exit(i32 noundef 1) #9, !dbg !144
  unreachable, !dbg !144

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %nl to i64, !dbg !145
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !145
  %add.ptr = getelementptr inbounds i32, ptr %call, i64 %idx.neg, !dbg !145
  ret ptr %add.ptr, !dbg !146
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @ipvector(i32 noundef %nl, i32 noundef %nh) local_unnamed_addr #3 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata i32 %nl, metadata !149, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 %nh, metadata !150, metadata !DIExpression()), !dbg !152
  %sub = sub i32 1, %nl, !dbg !153
  %add = add i32 %sub, %nh, !dbg !154
  %conv = sext i32 %add to i64, !dbg !155
  %mul = shl nsw i64 %conv, 3, !dbg !156
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !157
  call void @llvm.dbg.value(metadata ptr %call, metadata !151, metadata !DIExpression()), !dbg !152
  %tobool.not = icmp eq ptr %call, null, !dbg !158
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !24, metadata !DIExpression()) #11, !dbg !161
  %0 = load ptr, ptr @stderr, align 8, !dbg !163, !tbaa !27
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #12, !dbg !164
  tail call void @exit(i32 noundef 1) #9, !dbg !165
  unreachable, !dbg !165

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %nl to i64, !dbg !166
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !166
  %add.ptr = getelementptr inbounds i32, ptr %call, i64 %idx.neg, !dbg !166
  ret ptr %add.ptr, !dbg !167
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @matrix(i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #3 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !172, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !173, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !174, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %nch, metadata !175, metadata !DIExpression()), !dbg !180
  %sub = sub nsw i32 %nrh, %nrl, !dbg !181
  call void @llvm.dbg.value(metadata i32 %sub, metadata !177, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !180
  %sub1 = sub nsw i32 %nch, %ncl, !dbg !182
  %add2 = add nsw i32 %sub1, 1, !dbg !183
  call void @llvm.dbg.value(metadata i32 %add2, metadata !178, metadata !DIExpression()), !dbg !180
  %add3 = add nsw i32 %sub, 2, !dbg !184
  %conv = sext i32 %add3 to i64, !dbg !185
  %mul = shl nsw i64 %conv, 3, !dbg !186
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !187
  call void @llvm.dbg.value(metadata ptr %call, metadata !179, metadata !DIExpression()), !dbg !180
  %tobool.not = icmp eq ptr %call, null, !dbg !188
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !24, metadata !DIExpression()) #11, !dbg !191
  %0 = load ptr, ptr @stderr, align 8, !dbg !193, !tbaa !27
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #12, !dbg !194
  tail call void @exit(i32 noundef 1) #9, !dbg !195
  unreachable, !dbg !195

if.end:                                           ; preds = %entry
  %add = add nsw i32 %sub, 1, !dbg !196
  call void @llvm.dbg.value(metadata i32 %add, metadata !177, metadata !DIExpression()), !dbg !180
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1, !dbg !197
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !179, metadata !DIExpression()), !dbg !180
  %idx.ext = sext i32 %nrl to i64, !dbg !198
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !198
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg, !dbg !198
  call void @llvm.dbg.value(metadata ptr %add.ptr4, metadata !179, metadata !DIExpression()), !dbg !180
  %mul5 = mul nsw i32 %add2, %add, !dbg !199
  %add6 = add nsw i32 %mul5, 1, !dbg !200
  %conv7 = sext i32 %add6 to i64, !dbg !201
  %mul8 = shl nsw i64 %conv7, 3, !dbg !202
  %call9 = tail call noalias ptr @malloc(i64 noundef %mul8) #10, !dbg !203
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %idx.ext, !dbg !204
  store ptr %call9, ptr %arrayidx, align 8, !dbg !205, !tbaa !27
  %tobool12.not = icmp eq ptr %call9, null, !dbg !206
  br i1 %tobool12.not, label %if.then13, label %if.end14, !dbg !208

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !24, metadata !DIExpression()) #11, !dbg !209
  %1 = load ptr, ptr @stderr, align 8, !dbg !211, !tbaa !27
  %call.i54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #12, !dbg !212
  tail call void @exit(i32 noundef 1) #9, !dbg !213
  unreachable, !dbg !213

if.end14:                                         ; preds = %if.end
  %add.ptr17 = getelementptr inbounds double, ptr %call9, i64 1, !dbg !214
  %idx.ext20 = sext i32 %ncl to i64, !dbg !215
  %idx.neg21 = sub nsw i64 0, %idx.ext20, !dbg !215
  %add.ptr22 = getelementptr inbounds double, ptr %add.ptr17, i64 %idx.neg21, !dbg !215
  store ptr %add.ptr22, ptr %arrayidx, align 8, !dbg !215, !tbaa !27
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !180
  %cmp.not.not56 = icmp sgt i32 %nrh, %nrl, !dbg !216
  br i1 %cmp.not.not56, label %for.body.lr.ph, label %for.end, !dbg !219

for.body.lr.ph:                                   ; preds = %if.end14
  %idx.ext28 = sext i32 %add2 to i64
  %wide.trip.count = sext i32 %nrh to i64, !dbg !216
  br label %for.body, !dbg !219

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi ptr [ %add.ptr22, %for.body.lr.ph ], [ %add.ptr29, %for.body ], !dbg !220
  %indvars.iv = phi i64 [ %idx.ext, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !180
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !176, metadata !DIExpression()), !dbg !180
  %add.ptr29 = getelementptr inbounds double, ptr %2, i64 %idx.ext28, !dbg !222
  %arrayidx31 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %indvars.iv.next, !dbg !223
  store ptr %add.ptr29, ptr %arrayidx31, align 8, !dbg !224, !tbaa !27
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !180
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !216
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !219, !llvm.loop !225

for.end:                                          ; preds = %for.body, %if.end14
  ret ptr %add.ptr4, !dbg !229
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @imatrix(i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #3 !dbg !230 {
entry:
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !234, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !236, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %nch, metadata !237, metadata !DIExpression()), !dbg !242
  %sub = sub nsw i32 %nrh, %nrl, !dbg !243
  call void @llvm.dbg.value(metadata i32 %sub, metadata !239, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  %sub1 = sub nsw i32 %nch, %ncl, !dbg !244
  %add2 = add nsw i32 %sub1, 1, !dbg !245
  call void @llvm.dbg.value(metadata i32 %add2, metadata !240, metadata !DIExpression()), !dbg !242
  %add3 = add nsw i32 %sub, 2, !dbg !246
  %conv = sext i32 %add3 to i64, !dbg !247
  %mul = shl nsw i64 %conv, 3, !dbg !248
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !249
  call void @llvm.dbg.value(metadata ptr %call, metadata !241, metadata !DIExpression()), !dbg !242
  %tobool.not = icmp eq ptr %call, null, !dbg !250
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !24, metadata !DIExpression()) #11, !dbg !253
  %0 = load ptr, ptr @stderr, align 8, !dbg !255, !tbaa !27
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #12, !dbg !256
  tail call void @exit(i32 noundef 1) #9, !dbg !257
  unreachable, !dbg !257

if.end:                                           ; preds = %entry
  %add = add nsw i32 %sub, 1, !dbg !258
  call void @llvm.dbg.value(metadata i32 %add, metadata !239, metadata !DIExpression()), !dbg !242
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1, !dbg !259
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !241, metadata !DIExpression()), !dbg !242
  %idx.ext = sext i32 %nrl to i64, !dbg !260
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !260
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg, !dbg !260
  call void @llvm.dbg.value(metadata ptr %add.ptr4, metadata !241, metadata !DIExpression()), !dbg !242
  %mul5 = mul nsw i32 %add2, %add, !dbg !261
  %add6 = add nsw i32 %mul5, 1, !dbg !262
  %conv7 = sext i32 %add6 to i64, !dbg !263
  %mul8 = shl nsw i64 %conv7, 2, !dbg !264
  %call9 = tail call noalias ptr @malloc(i64 noundef %mul8) #10, !dbg !265
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %idx.ext, !dbg !266
  store ptr %call9, ptr %arrayidx, align 8, !dbg !267, !tbaa !27
  %tobool12.not = icmp eq ptr %call9, null, !dbg !268
  br i1 %tobool12.not, label %if.then13, label %if.end14, !dbg !270

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !24, metadata !DIExpression()) #11, !dbg !271
  %1 = load ptr, ptr @stderr, align 8, !dbg !273, !tbaa !27
  %call.i54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #12, !dbg !274
  tail call void @exit(i32 noundef 1) #9, !dbg !275
  unreachable, !dbg !275

if.end14:                                         ; preds = %if.end
  %add.ptr17 = getelementptr inbounds i32, ptr %call9, i64 1, !dbg !276
  %idx.ext20 = sext i32 %ncl to i64, !dbg !277
  %idx.neg21 = sub nsw i64 0, %idx.ext20, !dbg !277
  %add.ptr22 = getelementptr inbounds i32, ptr %add.ptr17, i64 %idx.neg21, !dbg !277
  store ptr %add.ptr22, ptr %arrayidx, align 8, !dbg !277, !tbaa !27
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  %cmp.not.not56 = icmp sgt i32 %nrh, %nrl, !dbg !278
  br i1 %cmp.not.not56, label %for.body.lr.ph, label %for.end, !dbg !281

for.body.lr.ph:                                   ; preds = %if.end14
  %idx.ext28 = sext i32 %add2 to i64
  %wide.trip.count = sext i32 %nrh to i64, !dbg !278
  br label %for.body, !dbg !281

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi ptr [ %add.ptr22, %for.body.lr.ph ], [ %add.ptr29, %for.body ], !dbg !282
  %indvars.iv = phi i64 [ %idx.ext, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !283
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !238, metadata !DIExpression()), !dbg !242
  %add.ptr29 = getelementptr inbounds i32, ptr %2, i64 %idx.ext28, !dbg !284
  %arrayidx31 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %indvars.iv.next, !dbg !285
  store ptr %add.ptr29, ptr %arrayidx31, align 8, !dbg !286, !tbaa !27
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !278
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !281, !llvm.loop !287

for.end:                                          ; preds = %for.body, %if.end14
  ret ptr %add.ptr4, !dbg !289
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_vector(ptr nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 !dbg !290 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i64 %nl, metadata !295, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i64 %nh, metadata !296, metadata !DIExpression()), !dbg !297
  %add.ptr = getelementptr inbounds double, ptr %v, i64 %nl, !dbg !298
  tail call void @free(ptr noundef %add.ptr) #11, !dbg !299
  ret void, !dbg !300
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_ivector(ptr nocapture noundef %v, i32 noundef %nl, i32 noundef %nh) local_unnamed_addr #5 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !305, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %nl, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %nh, metadata !307, metadata !DIExpression()), !dbg !308
  %idx.ext = sext i32 %nl to i64, !dbg !309
  %add.ptr = getelementptr inbounds i32, ptr %v, i64 %idx.ext, !dbg !309
  tail call void @free(ptr noundef %add.ptr) #11, !dbg !310
  ret void, !dbg !311
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_matrix(ptr nocapture noundef %m, i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #5 !dbg !312 {
entry:
  call void @llvm.dbg.value(metadata ptr %m, metadata !316, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !317, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !318, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !319, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %nch, metadata !320, metadata !DIExpression()), !dbg !321
  %idxprom = sext i32 %nrl to i64, !dbg !322
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %idxprom, !dbg !322
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !322, !tbaa !27
  %idx.ext = sext i32 %ncl to i64, !dbg !323
  %add.ptr = getelementptr inbounds double, ptr %0, i64 %idx.ext, !dbg !323
  %add.ptr1 = getelementptr inbounds double, ptr %add.ptr, i64 -1, !dbg !324
  tail call void @free(ptr noundef nonnull %add.ptr1) #11, !dbg !325
  %add.ptr4 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1, !dbg !326
  tail call void @free(ptr noundef nonnull %add.ptr4) #11, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_imatrix(ptr nocapture noundef %m, i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #5 !dbg !329 {
entry:
  call void @llvm.dbg.value(metadata ptr %m, metadata !333, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !334, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !335, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %nch, metadata !337, metadata !DIExpression()), !dbg !338
  %idxprom = sext i32 %nrl to i64, !dbg !339
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %idxprom, !dbg !339
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !339, !tbaa !27
  %idx.ext = sext i32 %ncl to i64, !dbg !340
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %idx.ext, !dbg !340
  %add.ptr1 = getelementptr inbounds i32, ptr %add.ptr, i64 -1, !dbg !341
  tail call void @free(ptr noundef nonnull %add.ptr1) #11, !dbg !342
  %add.ptr4 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1, !dbg !343
  tail call void @free(ptr noundef nonnull %add.ptr4) #11, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/memutil.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "69fa2a4216f25d0cb4fca617d474b59c")
!2 = !{!3, !5, !6, !8, !9, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!19 = distinct !DISubprogram(name: "nrerror", scope: !20, file: !20, line: 6, type: !21, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!20 = !DIFile(filename: "apps/544.nab_r/src/memutil.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "69fa2a4216f25d0cb4fca617d474b59c")
!21 = !DISubroutineType(types: !22)
!22 = !{null, !10}
!23 = !{!24}
!24 = !DILocalVariable(name: "msg", arg: 1, scope: !19, file: !20, line: 6, type: !10)
!25 = !DILocation(line: 0, scope: !19)
!26 = !DILocation(line: 12, column: 11, scope: !19)
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 12, column: 2, scope: !19)
!32 = !DILocation(line: 13, column: 2, scope: !19)
!33 = distinct !DISubprogram(name: "vector", scope: !20, file: !20, line: 16, type: !34, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!3, !36, !36}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "nl", arg: 1, scope: !33, file: !20, line: 16, type: !36)
!41 = !DILocalVariable(name: "nh", arg: 2, scope: !33, file: !20, line: 16, type: !36)
!42 = !DILocalVariable(name: "v", scope: !33, file: !20, line: 18, type: !3)
!43 = !DILocation(line: 0, scope: !33)
!44 = !DILocation(line: 29, column: 31, scope: !33)
!45 = !DILocation(line: 29, column: 42, scope: !33)
!46 = !DILocation(line: 29, column: 18, scope: !33)
!47 = !DILocation(line: 30, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !33, file: !20, line: 30, column: 6)
!49 = !DILocation(line: 30, column: 6, scope: !33)
!50 = !DILocation(line: 31, column: 19, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !20, line: 30, column: 11)
!52 = !DILocation(line: 31, column: 10, scope: !51)
!53 = !DILocation(line: 32, column: 10, scope: !51)
!54 = !DILocation(line: 32, column: 3, scope: !51)
!55 = !DILocation(line: 0, scope: !19, inlinedAt: !56)
!56 = distinct !DILocation(line: 33, column: 3, scope: !51)
!57 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !56)
!58 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !56)
!59 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !56)
!60 = !DILocation(line: 39, column: 12, scope: !33)
!61 = !DILocation(line: 39, column: 2, scope: !33)
!62 = !DISubprogram(name: "fflush", scope: !63, file: !63, line: 218, type: !64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !123)
!63 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!64 = !DISubroutineType(types: !65)
!65 = !{!7, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 7, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 49, size: 1728, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !87, !89, !90, !91, !95, !97, !99, !103, !106, !108, !111, !114, !115, !117, !118, !119}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 51, baseType: !7, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 54, baseType: !10, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 55, baseType: !10, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 56, baseType: !10, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 57, baseType: !10, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 58, baseType: !10, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 59, baseType: !10, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 60, baseType: !10, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 61, baseType: !10, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 64, baseType: !10, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 65, baseType: !10, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 66, baseType: !10, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 68, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 36, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 70, baseType: !88, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 72, baseType: !7, size: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 73, baseType: !7, size: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 74, baseType: !92, size: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !93, line: 152, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!94 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 77, baseType: !96, size: 16, offset: 1024)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 78, baseType: !98, size: 8, offset: 1040)
!98 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 79, baseType: !100, size: 8, offset: 1048)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 1)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 81, baseType: !104, size: 64, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 43, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 89, baseType: !107, size: 64, offset: 1152)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !93, line: 153, baseType: !94)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !69, file: !70, line: 91, baseType: !109, size: 64, offset: 1216)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !70, line: 37, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !69, file: !70, line: 92, baseType: !112, size: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !70, line: 38, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !69, file: !70, line: 93, baseType: !88, size: 64, offset: 1344)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !69, file: !70, line: 94, baseType: !116, size: 64, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 95, baseType: !36, size: 64, offset: 1472)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 96, baseType: !7, size: 32, offset: 1536)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 98, baseType: !120, size: 160, offset: 1568)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 20)
!123 = !{}
!124 = distinct !DISubprogram(name: "ivector", scope: !20, file: !20, line: 42, type: !125, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{!6, !7, !7}
!127 = !{!128, !129, !130}
!128 = !DILocalVariable(name: "nl", arg: 1, scope: !124, file: !20, line: 42, type: !7)
!129 = !DILocalVariable(name: "nh", arg: 2, scope: !124, file: !20, line: 42, type: !7)
!130 = !DILocalVariable(name: "v", scope: !124, file: !20, line: 47, type: !6)
!131 = !DILocation(line: 0, scope: !124)
!132 = !DILocation(line: 49, column: 28, scope: !124)
!133 = !DILocation(line: 49, column: 33, scope: !124)
!134 = !DILocation(line: 49, column: 23, scope: !124)
!135 = !DILocation(line: 49, column: 39, scope: !124)
!136 = !DILocation(line: 49, column: 15, scope: !124)
!137 = !DILocation(line: 50, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !124, file: !20, line: 50, column: 6)
!139 = !DILocation(line: 50, column: 6, scope: !124)
!140 = !DILocation(line: 0, scope: !19, inlinedAt: !141)
!141 = distinct !DILocation(line: 51, column: 3, scope: !138)
!142 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !141)
!143 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !141)
!144 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !141)
!145 = !DILocation(line: 52, column: 12, scope: !124)
!146 = !DILocation(line: 52, column: 2, scope: !124)
!147 = distinct !DISubprogram(name: "ipvector", scope: !20, file: !20, line: 55, type: !125, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150, !151}
!149 = !DILocalVariable(name: "nl", arg: 1, scope: !147, file: !20, line: 55, type: !7)
!150 = !DILocalVariable(name: "nh", arg: 2, scope: !147, file: !20, line: 55, type: !7)
!151 = !DILocalVariable(name: "v", scope: !147, file: !20, line: 60, type: !6)
!152 = !DILocation(line: 0, scope: !147)
!153 = !DILocation(line: 62, column: 28, scope: !147)
!154 = !DILocation(line: 62, column: 33, scope: !147)
!155 = !DILocation(line: 62, column: 23, scope: !147)
!156 = !DILocation(line: 62, column: 39, scope: !147)
!157 = !DILocation(line: 62, column: 15, scope: !147)
!158 = !DILocation(line: 63, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !20, line: 63, column: 6)
!160 = !DILocation(line: 63, column: 6, scope: !147)
!161 = !DILocation(line: 0, scope: !19, inlinedAt: !162)
!162 = distinct !DILocation(line: 64, column: 3, scope: !159)
!163 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !162)
!164 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !162)
!165 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !162)
!166 = !DILocation(line: 65, column: 12, scope: !147)
!167 = !DILocation(line: 65, column: 2, scope: !147)
!168 = distinct !DISubprogram(name: "matrix", scope: !20, file: !20, line: 69, type: !169, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!8, !7, !7, !7, !7}
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179}
!172 = !DILocalVariable(name: "nrl", arg: 1, scope: !168, file: !20, line: 69, type: !7)
!173 = !DILocalVariable(name: "nrh", arg: 2, scope: !168, file: !20, line: 69, type: !7)
!174 = !DILocalVariable(name: "ncl", arg: 3, scope: !168, file: !20, line: 69, type: !7)
!175 = !DILocalVariable(name: "nch", arg: 4, scope: !168, file: !20, line: 69, type: !7)
!176 = !DILocalVariable(name: "i", scope: !168, file: !20, line: 74, type: !7)
!177 = !DILocalVariable(name: "nrow", scope: !168, file: !20, line: 75, type: !7)
!178 = !DILocalVariable(name: "ncol", scope: !168, file: !20, line: 75, type: !7)
!179 = !DILocalVariable(name: "m", scope: !168, file: !20, line: 76, type: !8)
!180 = !DILocation(line: 0, scope: !168)
!181 = !DILocation(line: 78, column: 13, scope: !168)
!182 = !DILocation(line: 79, column: 13, scope: !168)
!183 = !DILocation(line: 79, column: 19, scope: !168)
!184 = !DILocation(line: 81, column: 34, scope: !168)
!185 = !DILocation(line: 81, column: 27, scope: !168)
!186 = !DILocation(line: 81, column: 45, scope: !168)
!187 = !DILocation(line: 81, column: 19, scope: !168)
!188 = !DILocation(line: 82, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !168, file: !20, line: 82, column: 6)
!190 = !DILocation(line: 82, column: 6, scope: !168)
!191 = !DILocation(line: 0, scope: !19, inlinedAt: !192)
!192 = distinct !DILocation(line: 83, column: 3, scope: !189)
!193 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !192)
!194 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !192)
!195 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !192)
!196 = !DILocation(line: 78, column: 19, scope: !168)
!197 = !DILocation(line: 84, column: 4, scope: !168)
!198 = !DILocation(line: 85, column: 4, scope: !168)
!199 = !DILocation(line: 88, column: 18, scope: !168)
!200 = !DILocation(line: 88, column: 25, scope: !168)
!201 = !DILocation(line: 88, column: 11, scope: !168)
!202 = !DILocation(line: 88, column: 36, scope: !168)
!203 = !DILocation(line: 88, column: 3, scope: !168)
!204 = !DILocation(line: 87, column: 2, scope: !168)
!205 = !DILocation(line: 87, column: 11, scope: !168)
!206 = !DILocation(line: 89, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !168, file: !20, line: 89, column: 6)
!208 = !DILocation(line: 89, column: 6, scope: !168)
!209 = !DILocation(line: 0, scope: !19, inlinedAt: !210)
!210 = distinct !DILocation(line: 90, column: 3, scope: !207)
!211 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !210)
!212 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !210)
!213 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !210)
!214 = !DILocation(line: 91, column: 11, scope: !168)
!215 = !DILocation(line: 92, column: 11, scope: !168)
!216 = !DILocation(line: 94, column: 22, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !20, line: 94, column: 2)
!218 = distinct !DILexicalBlock(scope: !168, file: !20, line: 94, column: 2)
!219 = !DILocation(line: 94, column: 2, scope: !218)
!220 = !DILocation(line: 95, column: 12, scope: !217)
!221 = !DILocation(line: 0, scope: !218)
!222 = !DILocation(line: 95, column: 23, scope: !217)
!223 = !DILocation(line: 95, column: 3, scope: !217)
!224 = !DILocation(line: 95, column: 10, scope: !217)
!225 = distinct !{!225, !219, !226, !227, !228}
!226 = !DILocation(line: 95, column: 25, scope: !218)
!227 = !{!"llvm.loop.mustprogress"}
!228 = !{!"llvm.loop.unroll.disable"}
!229 = !DILocation(line: 96, column: 2, scope: !168)
!230 = distinct !DISubprogram(name: "imatrix", scope: !20, file: !20, line: 99, type: !231, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!9, !7, !7, !7, !7}
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241}
!234 = !DILocalVariable(name: "nrl", arg: 1, scope: !230, file: !20, line: 99, type: !7)
!235 = !DILocalVariable(name: "nrh", arg: 2, scope: !230, file: !20, line: 99, type: !7)
!236 = !DILocalVariable(name: "ncl", arg: 3, scope: !230, file: !20, line: 99, type: !7)
!237 = !DILocalVariable(name: "nch", arg: 4, scope: !230, file: !20, line: 99, type: !7)
!238 = !DILocalVariable(name: "i", scope: !230, file: !20, line: 104, type: !7)
!239 = !DILocalVariable(name: "nrow", scope: !230, file: !20, line: 105, type: !7)
!240 = !DILocalVariable(name: "ncol", scope: !230, file: !20, line: 105, type: !7)
!241 = !DILocalVariable(name: "m", scope: !230, file: !20, line: 106, type: !9)
!242 = !DILocation(line: 0, scope: !230)
!243 = !DILocation(line: 108, column: 13, scope: !230)
!244 = !DILocation(line: 109, column: 13, scope: !230)
!245 = !DILocation(line: 109, column: 19, scope: !230)
!246 = !DILocation(line: 111, column: 31, scope: !230)
!247 = !DILocation(line: 111, column: 24, scope: !230)
!248 = !DILocation(line: 111, column: 42, scope: !230)
!249 = !DILocation(line: 111, column: 16, scope: !230)
!250 = !DILocation(line: 112, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !230, file: !20, line: 112, column: 6)
!252 = !DILocation(line: 112, column: 6, scope: !230)
!253 = !DILocation(line: 0, scope: !19, inlinedAt: !254)
!254 = distinct !DILocation(line: 113, column: 3, scope: !251)
!255 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !254)
!256 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !254)
!257 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !254)
!258 = !DILocation(line: 108, column: 19, scope: !230)
!259 = !DILocation(line: 114, column: 4, scope: !230)
!260 = !DILocation(line: 115, column: 4, scope: !230)
!261 = !DILocation(line: 118, column: 18, scope: !230)
!262 = !DILocation(line: 118, column: 25, scope: !230)
!263 = !DILocation(line: 118, column: 11, scope: !230)
!264 = !DILocation(line: 118, column: 36, scope: !230)
!265 = !DILocation(line: 118, column: 3, scope: !230)
!266 = !DILocation(line: 117, column: 2, scope: !230)
!267 = !DILocation(line: 117, column: 11, scope: !230)
!268 = !DILocation(line: 119, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !230, file: !20, line: 119, column: 6)
!270 = !DILocation(line: 119, column: 6, scope: !230)
!271 = !DILocation(line: 0, scope: !19, inlinedAt: !272)
!272 = distinct !DILocation(line: 120, column: 3, scope: !269)
!273 = !DILocation(line: 12, column: 11, scope: !19, inlinedAt: !272)
!274 = !DILocation(line: 12, column: 2, scope: !19, inlinedAt: !272)
!275 = !DILocation(line: 13, column: 2, scope: !19, inlinedAt: !272)
!276 = !DILocation(line: 121, column: 11, scope: !230)
!277 = !DILocation(line: 122, column: 11, scope: !230)
!278 = !DILocation(line: 124, column: 22, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !20, line: 124, column: 2)
!280 = distinct !DILexicalBlock(scope: !230, file: !20, line: 124, column: 2)
!281 = !DILocation(line: 124, column: 2, scope: !280)
!282 = !DILocation(line: 125, column: 12, scope: !279)
!283 = !DILocation(line: 0, scope: !280)
!284 = !DILocation(line: 125, column: 23, scope: !279)
!285 = !DILocation(line: 125, column: 3, scope: !279)
!286 = !DILocation(line: 125, column: 10, scope: !279)
!287 = distinct !{!287, !281, !288, !227, !228}
!288 = !DILocation(line: 125, column: 25, scope: !280)
!289 = !DILocation(line: 126, column: 2, scope: !230)
!290 = distinct !DISubprogram(name: "free_vector", scope: !20, file: !20, line: 129, type: !291, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !3, !36, !36}
!293 = !{!294, !295, !296}
!294 = !DILocalVariable(name: "v", arg: 1, scope: !290, file: !20, line: 129, type: !3)
!295 = !DILocalVariable(name: "nl", arg: 2, scope: !290, file: !20, line: 129, type: !36)
!296 = !DILocalVariable(name: "nh", arg: 3, scope: !290, file: !20, line: 129, type: !36)
!297 = !DILocation(line: 0, scope: !290)
!298 = !DILocation(line: 132, column: 22, scope: !290)
!299 = !DILocation(line: 132, column: 2, scope: !290)
!300 = !DILocation(line: 133, column: 1, scope: !290)
!301 = distinct !DISubprogram(name: "free_ivector", scope: !20, file: !20, line: 135, type: !302, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !6, !7, !7}
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "v", arg: 1, scope: !301, file: !20, line: 135, type: !6)
!306 = !DILocalVariable(name: "nl", arg: 2, scope: !301, file: !20, line: 135, type: !7)
!307 = !DILocalVariable(name: "nh", arg: 3, scope: !301, file: !20, line: 135, type: !7)
!308 = !DILocation(line: 0, scope: !301)
!309 = !DILocation(line: 142, column: 22, scope: !301)
!310 = !DILocation(line: 142, column: 2, scope: !301)
!311 = !DILocation(line: 143, column: 1, scope: !301)
!312 = distinct !DISubprogram(name: "free_matrix", scope: !20, file: !20, line: 145, type: !313, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !8, !7, !7, !7, !7}
!315 = !{!316, !317, !318, !319, !320}
!316 = !DILocalVariable(name: "m", arg: 1, scope: !312, file: !20, line: 145, type: !8)
!317 = !DILocalVariable(name: "nrl", arg: 2, scope: !312, file: !20, line: 145, type: !7)
!318 = !DILocalVariable(name: "nrh", arg: 3, scope: !312, file: !20, line: 145, type: !7)
!319 = !DILocalVariable(name: "ncl", arg: 4, scope: !312, file: !20, line: 145, type: !7)
!320 = !DILocalVariable(name: "nch", arg: 5, scope: !312, file: !20, line: 145, type: !7)
!321 = !DILocation(line: 0, scope: !312)
!322 = !DILocation(line: 151, column: 20, scope: !312)
!323 = !DILocation(line: 151, column: 29, scope: !312)
!324 = !DILocation(line: 151, column: 35, scope: !312)
!325 = !DILocation(line: 151, column: 2, scope: !312)
!326 = !DILocation(line: 152, column: 28, scope: !312)
!327 = !DILocation(line: 152, column: 2, scope: !312)
!328 = !DILocation(line: 153, column: 1, scope: !312)
!329 = distinct !DISubprogram(name: "free_imatrix", scope: !20, file: !20, line: 155, type: !330, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !9, !7, !7, !7, !7}
!332 = !{!333, !334, !335, !336, !337}
!333 = !DILocalVariable(name: "m", arg: 1, scope: !329, file: !20, line: 155, type: !9)
!334 = !DILocalVariable(name: "nrl", arg: 2, scope: !329, file: !20, line: 155, type: !7)
!335 = !DILocalVariable(name: "nrh", arg: 3, scope: !329, file: !20, line: 155, type: !7)
!336 = !DILocalVariable(name: "ncl", arg: 4, scope: !329, file: !20, line: 155, type: !7)
!337 = !DILocalVariable(name: "nch", arg: 5, scope: !329, file: !20, line: 155, type: !7)
!338 = !DILocation(line: 0, scope: !329)
!339 = !DILocation(line: 161, column: 20, scope: !329)
!340 = !DILocation(line: 161, column: 29, scope: !329)
!341 = !DILocation(line: 161, column: 35, scope: !329)
!342 = !DILocation(line: 161, column: 2, scope: !329)
!343 = !DILocation(line: 162, column: 28, scope: !329)
!344 = !DILocation(line: 162, column: 2, scope: !329)
!345 = !DILocation(line: 163, column: 1, scope: !329)
