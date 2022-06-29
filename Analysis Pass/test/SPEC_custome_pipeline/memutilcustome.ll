; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/memutil.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/memutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"FATAL: %s\0A\00", align 1
@nabout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"allocation failure in vector: nh = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"allocation failure in ipvector()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @nrerror(i8* noundef %msg) local_unnamed_addr #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i8* %msg, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !24, !tbaa !25
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %msg) #8, !dbg !29
  tail call void @exit(i32 noundef 1) #9, !dbg !30
  unreachable, !dbg !30
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias double* @vector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i64 %nl, metadata !38, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.value(metadata i64 %nh, metadata !39, metadata !DIExpression()), !dbg !41
  %sub = sub i64 %nh, %nl, !dbg !42
  %add = shl i64 %sub, 3, !dbg !43
  %mul = add i64 %add, 8, !dbg !43
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #10, !dbg !44
  call void @llvm.dbg.value(metadata i8* %call, metadata !40, metadata !DIExpression()), !dbg !41
  %tobool.not = icmp eq i8* %call, null, !dbg !45
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !48, !tbaa !25
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 noundef %nh), !dbg !50
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !51, !tbaa !25
  %call2 = tail call i32 @fflush(%struct._IO_FILE* noundef %1), !dbg !52
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !53
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !25
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !56
  tail call void @exit(i32 noundef 1) #9, !dbg !57
  unreachable, !dbg !57

if.end:                                           ; preds = %entry
  %3 = bitcast i8* %call to double*, !dbg !58
  call void @llvm.dbg.value(metadata double* %3, metadata !40, metadata !DIExpression()), !dbg !41
  %idx.neg = sub i64 0, %nl, !dbg !59
  %add.ptr = getelementptr inbounds double, double* %3, i64 %idx.neg, !dbg !59
  ret double* %add.ptr, !dbg !60
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !61 dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias i32* @ivector(i32 noundef %nl, i32 noundef %nh) local_unnamed_addr #3 !dbg !123 {
entry:
  call void @llvm.dbg.value(metadata i32 %nl, metadata !127, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %nh, metadata !128, metadata !DIExpression()), !dbg !130
  %sub = sub i32 1, %nl, !dbg !131
  %add = add i32 %sub, %nh, !dbg !132
  %conv = sext i32 %add to i64, !dbg !133
  %mul = shl nsw i64 %conv, 2, !dbg !134
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #10, !dbg !135
  call void @llvm.dbg.value(metadata i8* %call, metadata !129, metadata !DIExpression()), !dbg !130
  %tobool.not = icmp eq i8* %call, null, !dbg !136
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !139
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !141, !tbaa !25
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !142
  tail call void @exit(i32 noundef 1) #9, !dbg !143
  unreachable, !dbg !143

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to i32*, !dbg !144
  call void @llvm.dbg.value(metadata i32* %1, metadata !129, metadata !DIExpression()), !dbg !130
  %idx.ext = sext i32 %nl to i64, !dbg !145
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !145
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.neg, !dbg !145
  ret i32* %add.ptr, !dbg !146
}

; Function Attrs: nounwind uwtable
define dso_local noalias i32* @ipvector(i32 noundef %nl, i32 noundef %nh) local_unnamed_addr #3 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata i32 %nl, metadata !149, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 %nh, metadata !150, metadata !DIExpression()), !dbg !152
  %sub = sub i32 1, %nl, !dbg !153
  %add = add i32 %sub, %nh, !dbg !154
  %conv = sext i32 %add to i64, !dbg !155
  %mul = shl nsw i64 %conv, 3, !dbg !156
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #10, !dbg !157
  call void @llvm.dbg.value(metadata i8* %call, metadata !151, metadata !DIExpression()), !dbg !152
  %tobool.not = icmp eq i8* %call, null, !dbg !158
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !161
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !25
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !164
  tail call void @exit(i32 noundef 1) #9, !dbg !165
  unreachable, !dbg !165

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to i32*, !dbg !166
  call void @llvm.dbg.value(metadata i32* %1, metadata !151, metadata !DIExpression()), !dbg !152
  %idx.ext = sext i32 %nl to i64, !dbg !167
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !167
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.neg, !dbg !167
  ret i32* %add.ptr, !dbg !168
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull double** @matrix(i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #3 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !173, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !174, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %nch, metadata !176, metadata !DIExpression()), !dbg !181
  %sub = sub nsw i32 %nrh, %nrl, !dbg !182
  call void @llvm.dbg.value(metadata i32 %sub, metadata !178, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !181
  %sub1 = sub nsw i32 %nch, %ncl, !dbg !183
  %add2 = add nsw i32 %sub1, 1, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add2, metadata !179, metadata !DIExpression()), !dbg !181
  %add3 = add nsw i32 %sub, 2, !dbg !185
  %conv = sext i32 %add3 to i64, !dbg !186
  %mul = shl nsw i64 %conv, 3, !dbg !187
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #10, !dbg !188
  call void @llvm.dbg.value(metadata i8* %call, metadata !180, metadata !DIExpression()), !dbg !181
  %tobool.not = icmp eq i8* %call, null, !dbg !189
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !191

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !192
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !194, !tbaa !25
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !195
  tail call void @exit(i32 noundef 1) #9, !dbg !196
  unreachable, !dbg !196

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to double**, !dbg !197
  call void @llvm.dbg.value(metadata double** %1, metadata !180, metadata !DIExpression()), !dbg !181
  %add = add nsw i32 %sub, 1, !dbg !198
  call void @llvm.dbg.value(metadata i32 %add, metadata !178, metadata !DIExpression()), !dbg !181
  %add.ptr = getelementptr inbounds double*, double** %1, i64 1, !dbg !199
  call void @llvm.dbg.value(metadata double** %add.ptr, metadata !180, metadata !DIExpression()), !dbg !181
  %idx.ext = sext i32 %nrl to i64, !dbg !200
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !200
  %add.ptr4 = getelementptr inbounds double*, double** %add.ptr, i64 %idx.neg, !dbg !200
  call void @llvm.dbg.value(metadata double** %add.ptr4, metadata !180, metadata !DIExpression()), !dbg !181
  %mul5 = mul nsw i32 %add2, %add, !dbg !201
  %add6 = add nsw i32 %mul5, 1, !dbg !202
  %conv7 = sext i32 %add6 to i64, !dbg !203
  %mul8 = shl nsw i64 %conv7, 3, !dbg !204
  %call9 = tail call noalias i8* @malloc(i64 noundef %mul8) #10, !dbg !205
  %arrayidx = getelementptr inbounds double*, double** %add.ptr4, i64 %idx.ext, !dbg !206
  %2 = bitcast double** %arrayidx to i8**, !dbg !207
  store i8* %call9, i8** %2, align 8, !dbg !207, !tbaa !25
  %tobool12.not = icmp eq i8* %call9, null, !dbg !208
  br i1 %tobool12.not, label %if.then13, label %if.end14, !dbg !210

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !211
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !213, !tbaa !25
  %call.i58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !214
  tail call void @exit(i32 noundef 1) #9, !dbg !215
  unreachable, !dbg !215

if.end14:                                         ; preds = %if.end
  %4 = bitcast i8* %call9 to double*, !dbg !210
  %add.ptr17 = getelementptr inbounds double, double* %4, i64 1, !dbg !216
  %idx.ext20 = sext i32 %ncl to i64, !dbg !217
  %idx.neg21 = sub nsw i64 0, %idx.ext20, !dbg !217
  %add.ptr22 = getelementptr inbounds double, double* %add.ptr17, i64 %idx.neg21, !dbg !217
  store double* %add.ptr22, double** %arrayidx, align 8, !dbg !217, !tbaa !25
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !177, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !181
  %idx.ext28 = sext i32 %add2 to i64
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !177, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !181
  %cmp.not.not61 = icmp sgt i32 %nrh, %nrl, !dbg !218
  br i1 %cmp.not.not61, label %for.body.preheader, label %for.end, !dbg !221

for.body.preheader:                               ; preds = %if.end14
  %wide.trip.count = sext i32 %nrh to i64, !dbg !218
  br label %for.body, !dbg !221

for.body:                                         ; preds = %for.body.preheader, %for.body
  %5 = phi double* [ %add.ptr22, %for.body.preheader ], [ %add.ptr29, %for.body ], !dbg !222
  %indvars.iv = phi i64 [ %idx.ext, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !223
  %add.ptr29 = getelementptr inbounds double, double* %5, i64 %idx.ext28, !dbg !224
  %arrayidx31 = getelementptr inbounds double*, double** %add.ptr4, i64 %indvars.iv.next, !dbg !225
  store double* %add.ptr29, double** %arrayidx31, align 8, !dbg !226, !tbaa !25
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !177, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !181
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !177, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !181
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !218
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !221, !llvm.loop !227

for.end:                                          ; preds = %for.body, %if.end14
  ret double** %add.ptr4, !dbg !231
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i32** @imatrix(i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #3 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !236, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !237, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !238, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %nch, metadata !239, metadata !DIExpression()), !dbg !244
  %sub = sub nsw i32 %nrh, %nrl, !dbg !245
  call void @llvm.dbg.value(metadata i32 %sub, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !244
  %sub1 = sub nsw i32 %nch, %ncl, !dbg !246
  %add2 = add nsw i32 %sub1, 1, !dbg !247
  call void @llvm.dbg.value(metadata i32 %add2, metadata !242, metadata !DIExpression()), !dbg !244
  %add3 = add nsw i32 %sub, 2, !dbg !248
  %conv = sext i32 %add3 to i64, !dbg !249
  %mul = shl nsw i64 %conv, 3, !dbg !250
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #10, !dbg !251
  call void @llvm.dbg.value(metadata i8* %call, metadata !243, metadata !DIExpression()), !dbg !244
  %tobool.not = icmp eq i8* %call, null, !dbg !252
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !255
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !257, !tbaa !25
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !258
  tail call void @exit(i32 noundef 1) #9, !dbg !259
  unreachable, !dbg !259

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to i32**, !dbg !260
  call void @llvm.dbg.value(metadata i32** %1, metadata !243, metadata !DIExpression()), !dbg !244
  %add = add nsw i32 %sub, 1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %add, metadata !241, metadata !DIExpression()), !dbg !244
  %add.ptr = getelementptr inbounds i32*, i32** %1, i64 1, !dbg !262
  call void @llvm.dbg.value(metadata i32** %add.ptr, metadata !243, metadata !DIExpression()), !dbg !244
  %idx.ext = sext i32 %nrl to i64, !dbg !263
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !263
  %add.ptr4 = getelementptr inbounds i32*, i32** %add.ptr, i64 %idx.neg, !dbg !263
  call void @llvm.dbg.value(metadata i32** %add.ptr4, metadata !243, metadata !DIExpression()), !dbg !244
  %mul5 = mul nsw i32 %add2, %add, !dbg !264
  %add6 = add nsw i32 %mul5, 1, !dbg !265
  %conv7 = sext i32 %add6 to i64, !dbg !266
  %mul8 = shl nsw i64 %conv7, 2, !dbg !267
  %call9 = tail call noalias i8* @malloc(i64 noundef %mul8) #10, !dbg !268
  %arrayidx = getelementptr inbounds i32*, i32** %add.ptr4, i64 %idx.ext, !dbg !269
  %2 = bitcast i32** %arrayidx to i8**, !dbg !270
  store i8* %call9, i8** %2, align 8, !dbg !270, !tbaa !25
  %tobool12.not = icmp eq i8* %call9, null, !dbg !271
  br i1 %tobool12.not, label %if.then13, label %if.end14, !dbg !273

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), metadata !22, metadata !DIExpression()) #10, !dbg !274
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !276, !tbaa !25
  %call.i58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !277
  tail call void @exit(i32 noundef 1) #9, !dbg !278
  unreachable, !dbg !278

if.end14:                                         ; preds = %if.end
  %4 = bitcast i8* %call9 to i32*, !dbg !273
  %add.ptr17 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !279
  %idx.ext20 = sext i32 %ncl to i64, !dbg !280
  %idx.neg21 = sub nsw i64 0, %idx.ext20, !dbg !280
  %add.ptr22 = getelementptr inbounds i32, i32* %add.ptr17, i64 %idx.neg21, !dbg !280
  store i32* %add.ptr22, i32** %arrayidx, align 8, !dbg !280, !tbaa !25
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !244
  %idx.ext28 = sext i32 %add2 to i64
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !244
  %cmp.not.not61 = icmp sgt i32 %nrh, %nrl, !dbg !281
  br i1 %cmp.not.not61, label %for.body.preheader, label %for.end, !dbg !284

for.body.preheader:                               ; preds = %if.end14
  %wide.trip.count = sext i32 %nrh to i64, !dbg !281
  br label %for.body, !dbg !284

for.body:                                         ; preds = %for.body.preheader, %for.body
  %5 = phi i32* [ %add.ptr22, %for.body.preheader ], [ %add.ptr29, %for.body ], !dbg !285
  %indvars.iv = phi i64 [ %idx.ext, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !286
  %add.ptr29 = getelementptr inbounds i32, i32* %5, i64 %idx.ext28, !dbg !287
  %arrayidx31 = getelementptr inbounds i32*, i32** %add.ptr4, i64 %indvars.iv.next, !dbg !288
  store i32* %add.ptr29, i32** %arrayidx31, align 8, !dbg !289, !tbaa !25
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !244
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !244
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !281
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !284, !llvm.loop !290

for.end:                                          ; preds = %for.body, %if.end14
  ret i32** %add.ptr4, !dbg !292
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @free_vector(double* nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 !dbg !293 {
entry:
  call void @llvm.dbg.value(metadata double* %v, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %nl, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %nh, metadata !299, metadata !DIExpression()), !dbg !300
  %add.ptr = getelementptr inbounds double, double* %v, i64 %nl, !dbg !301
  %0 = bitcast double* %add.ptr to i8*, !dbg !302
  tail call void @free(i8* noundef %0) #10, !dbg !303
  ret void, !dbg !304
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @free_ivector(i32* nocapture noundef %v, i32 noundef %nl, i32 noundef %nh) local_unnamed_addr #5 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i32* %v, metadata !309, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %nl, metadata !310, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %nh, metadata !311, metadata !DIExpression()), !dbg !312
  %idx.ext = sext i32 %nl to i64, !dbg !313
  %add.ptr = getelementptr inbounds i32, i32* %v, i64 %idx.ext, !dbg !313
  %0 = bitcast i32* %add.ptr to i8*, !dbg !314
  tail call void @free(i8* noundef %0) #10, !dbg !315
  ret void, !dbg !316
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @free_matrix(double** nocapture noundef %m, i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #5 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata double** %m, metadata !321, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !322, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !323, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !324, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %nch, metadata !325, metadata !DIExpression()), !dbg !326
  %idxprom = sext i32 %nrl to i64, !dbg !327
  %arrayidx = getelementptr inbounds double*, double** %m, i64 %idxprom, !dbg !327
  %0 = load double*, double** %arrayidx, align 8, !dbg !327, !tbaa !25
  %idx.ext = sext i32 %ncl to i64, !dbg !328
  %add.ptr = getelementptr inbounds double, double* %0, i64 %idx.ext, !dbg !328
  %add.ptr1 = getelementptr inbounds double, double* %add.ptr, i64 -1, !dbg !329
  %1 = bitcast double* %add.ptr1 to i8*, !dbg !330
  tail call void @free(i8* noundef nonnull %1) #10, !dbg !331
  %add.ptr4 = getelementptr inbounds double*, double** %arrayidx, i64 -1, !dbg !332
  %2 = bitcast double** %add.ptr4 to i8*, !dbg !333
  tail call void @free(i8* noundef nonnull %2) #10, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @free_imatrix(i32** nocapture noundef %m, i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch) local_unnamed_addr #5 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata i32** %m, metadata !340, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %nrl, metadata !341, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %nrh, metadata !342, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %ncl, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %nch, metadata !344, metadata !DIExpression()), !dbg !345
  %idxprom = sext i32 %nrl to i64, !dbg !346
  %arrayidx = getelementptr inbounds i32*, i32** %m, i64 %idxprom, !dbg !346
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !346, !tbaa !25
  %idx.ext = sext i32 %ncl to i64, !dbg !347
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext, !dbg !347
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 -1, !dbg !348
  %1 = bitcast i32* %add.ptr1 to i8*, !dbg !349
  tail call void @free(i8* noundef nonnull %1) #10, !dbg !350
  %add.ptr4 = getelementptr inbounds i32*, i32** %arrayidx, i64 -1, !dbg !351
  %2 = bitcast i32** %add.ptr4 to i8*, !dbg !352
  tail call void @free(i8* noundef nonnull %2) #10, !dbg !353
  ret void, !dbg !354
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/memutil.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "69fa2a4216f25d0cb4fca617d474b59c")
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
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!17 = distinct !DISubprogram(name: "nrerror", scope: !18, file: !18, line: 6, type: !19, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!18 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/memutil.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "69fa2a4216f25d0cb4fca617d474b59c")
!19 = !DISubroutineType(types: !20)
!20 = !{null, !10}
!21 = !{!22}
!22 = !DILocalVariable(name: "msg", arg: 1, scope: !17, file: !18, line: 6, type: !10)
!23 = !DILocation(line: 0, scope: !17)
!24 = !DILocation(line: 12, column: 11, scope: !17)
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 12, column: 2, scope: !17)
!30 = !DILocation(line: 13, column: 2, scope: !17)
!31 = distinct !DISubprogram(name: "vector", scope: !18, file: !18, line: 16, type: !32, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{!3, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "nl", arg: 1, scope: !31, file: !18, line: 16, type: !34)
!39 = !DILocalVariable(name: "nh", arg: 2, scope: !31, file: !18, line: 16, type: !34)
!40 = !DILocalVariable(name: "v", scope: !31, file: !18, line: 18, type: !3)
!41 = !DILocation(line: 0, scope: !31)
!42 = !DILocation(line: 29, column: 31, scope: !31)
!43 = !DILocation(line: 29, column: 42, scope: !31)
!44 = !DILocation(line: 29, column: 18, scope: !31)
!45 = !DILocation(line: 30, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !31, file: !18, line: 30, column: 6)
!47 = !DILocation(line: 30, column: 6, scope: !31)
!48 = !DILocation(line: 31, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !18, line: 30, column: 11)
!50 = !DILocation(line: 31, column: 10, scope: !49)
!51 = !DILocation(line: 32, column: 10, scope: !49)
!52 = !DILocation(line: 32, column: 3, scope: !49)
!53 = !DILocation(line: 0, scope: !17, inlinedAt: !54)
!54 = distinct !DILocation(line: 33, column: 3, scope: !49)
!55 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !54)
!56 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !54)
!57 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !54)
!58 = !DILocation(line: 29, column: 6, scope: !31)
!59 = !DILocation(line: 39, column: 12, scope: !31)
!60 = !DILocation(line: 39, column: 2, scope: !31)
!61 = !DISubprogram(name: "fflush", scope: !62, file: !62, line: 218, type: !63, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !122)
!62 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!63 = !DISubroutineType(types: !64)
!64 = !{!7, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !67, line: 7, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !69, line: 49, size: 1728, elements: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !86, !88, !89, !90, !94, !96, !98, !102, !105, !107, !110, !113, !114, !116, !117, !118}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !68, file: !69, line: 51, baseType: !7, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !68, file: !69, line: 54, baseType: !10, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !68, file: !69, line: 55, baseType: !10, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !68, file: !69, line: 56, baseType: !10, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !68, file: !69, line: 57, baseType: !10, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !68, file: !69, line: 58, baseType: !10, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !68, file: !69, line: 59, baseType: !10, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !68, file: !69, line: 60, baseType: !10, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !68, file: !69, line: 61, baseType: !10, size: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !68, file: !69, line: 64, baseType: !10, size: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !68, file: !69, line: 65, baseType: !10, size: 64, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !68, file: !69, line: 66, baseType: !10, size: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !68, file: !69, line: 68, baseType: !84, size: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !69, line: 36, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !68, file: !69, line: 70, baseType: !87, size: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !68, file: !69, line: 72, baseType: !7, size: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !68, file: !69, line: 73, baseType: !7, size: 32, offset: 928)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !68, file: !69, line: 74, baseType: !91, size: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !92, line: 152, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!93 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !68, file: !69, line: 77, baseType: !95, size: 16, offset: 1024)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !68, file: !69, line: 78, baseType: !97, size: 8, offset: 1040)
!97 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !68, file: !69, line: 79, baseType: !99, size: 8, offset: 1048)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !68, file: !69, line: 81, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !69, line: 43, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !68, file: !69, line: 89, baseType: !106, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !92, line: 153, baseType: !93)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !68, file: !69, line: 91, baseType: !108, size: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !69, line: 37, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !68, file: !69, line: 92, baseType: !111, size: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !69, line: 38, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !68, file: !69, line: 93, baseType: !87, size: 64, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !68, file: !69, line: 94, baseType: !115, size: 64, offset: 1408)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !68, file: !69, line: 95, baseType: !34, size: 64, offset: 1472)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !68, file: !69, line: 96, baseType: !7, size: 32, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !68, file: !69, line: 98, baseType: !119, size: 160, offset: 1568)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !{}
!123 = distinct !DISubprogram(name: "ivector", scope: !18, file: !18, line: 42, type: !124, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!6, !7, !7}
!126 = !{!127, !128, !129}
!127 = !DILocalVariable(name: "nl", arg: 1, scope: !123, file: !18, line: 42, type: !7)
!128 = !DILocalVariable(name: "nh", arg: 2, scope: !123, file: !18, line: 42, type: !7)
!129 = !DILocalVariable(name: "v", scope: !123, file: !18, line: 47, type: !6)
!130 = !DILocation(line: 0, scope: !123)
!131 = !DILocation(line: 49, column: 28, scope: !123)
!132 = !DILocation(line: 49, column: 33, scope: !123)
!133 = !DILocation(line: 49, column: 23, scope: !123)
!134 = !DILocation(line: 49, column: 39, scope: !123)
!135 = !DILocation(line: 49, column: 15, scope: !123)
!136 = !DILocation(line: 50, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !123, file: !18, line: 50, column: 6)
!138 = !DILocation(line: 50, column: 6, scope: !123)
!139 = !DILocation(line: 0, scope: !17, inlinedAt: !140)
!140 = distinct !DILocation(line: 51, column: 3, scope: !137)
!141 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !140)
!142 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !140)
!143 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !140)
!144 = !DILocation(line: 49, column: 6, scope: !123)
!145 = !DILocation(line: 52, column: 12, scope: !123)
!146 = !DILocation(line: 52, column: 2, scope: !123)
!147 = distinct !DISubprogram(name: "ipvector", scope: !18, file: !18, line: 55, type: !124, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150, !151}
!149 = !DILocalVariable(name: "nl", arg: 1, scope: !147, file: !18, line: 55, type: !7)
!150 = !DILocalVariable(name: "nh", arg: 2, scope: !147, file: !18, line: 55, type: !7)
!151 = !DILocalVariable(name: "v", scope: !147, file: !18, line: 60, type: !6)
!152 = !DILocation(line: 0, scope: !147)
!153 = !DILocation(line: 62, column: 28, scope: !147)
!154 = !DILocation(line: 62, column: 33, scope: !147)
!155 = !DILocation(line: 62, column: 23, scope: !147)
!156 = !DILocation(line: 62, column: 39, scope: !147)
!157 = !DILocation(line: 62, column: 15, scope: !147)
!158 = !DILocation(line: 63, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !18, line: 63, column: 6)
!160 = !DILocation(line: 63, column: 6, scope: !147)
!161 = !DILocation(line: 0, scope: !17, inlinedAt: !162)
!162 = distinct !DILocation(line: 64, column: 3, scope: !159)
!163 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !162)
!164 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !162)
!165 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !162)
!166 = !DILocation(line: 62, column: 6, scope: !147)
!167 = !DILocation(line: 65, column: 12, scope: !147)
!168 = !DILocation(line: 65, column: 2, scope: !147)
!169 = distinct !DISubprogram(name: "matrix", scope: !18, file: !18, line: 69, type: !170, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{!8, !7, !7, !7, !7}
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180}
!173 = !DILocalVariable(name: "nrl", arg: 1, scope: !169, file: !18, line: 69, type: !7)
!174 = !DILocalVariable(name: "nrh", arg: 2, scope: !169, file: !18, line: 69, type: !7)
!175 = !DILocalVariable(name: "ncl", arg: 3, scope: !169, file: !18, line: 69, type: !7)
!176 = !DILocalVariable(name: "nch", arg: 4, scope: !169, file: !18, line: 69, type: !7)
!177 = !DILocalVariable(name: "i", scope: !169, file: !18, line: 74, type: !7)
!178 = !DILocalVariable(name: "nrow", scope: !169, file: !18, line: 75, type: !7)
!179 = !DILocalVariable(name: "ncol", scope: !169, file: !18, line: 75, type: !7)
!180 = !DILocalVariable(name: "m", scope: !169, file: !18, line: 76, type: !8)
!181 = !DILocation(line: 0, scope: !169)
!182 = !DILocation(line: 78, column: 13, scope: !169)
!183 = !DILocation(line: 79, column: 13, scope: !169)
!184 = !DILocation(line: 79, column: 19, scope: !169)
!185 = !DILocation(line: 81, column: 34, scope: !169)
!186 = !DILocation(line: 81, column: 27, scope: !169)
!187 = !DILocation(line: 81, column: 45, scope: !169)
!188 = !DILocation(line: 81, column: 19, scope: !169)
!189 = !DILocation(line: 82, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !169, file: !18, line: 82, column: 6)
!191 = !DILocation(line: 82, column: 6, scope: !169)
!192 = !DILocation(line: 0, scope: !17, inlinedAt: !193)
!193 = distinct !DILocation(line: 83, column: 3, scope: !190)
!194 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !193)
!195 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !193)
!196 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !193)
!197 = !DILocation(line: 81, column: 6, scope: !169)
!198 = !DILocation(line: 78, column: 19, scope: !169)
!199 = !DILocation(line: 84, column: 4, scope: !169)
!200 = !DILocation(line: 85, column: 4, scope: !169)
!201 = !DILocation(line: 88, column: 18, scope: !169)
!202 = !DILocation(line: 88, column: 25, scope: !169)
!203 = !DILocation(line: 88, column: 11, scope: !169)
!204 = !DILocation(line: 88, column: 36, scope: !169)
!205 = !DILocation(line: 88, column: 3, scope: !169)
!206 = !DILocation(line: 87, column: 2, scope: !169)
!207 = !DILocation(line: 87, column: 11, scope: !169)
!208 = !DILocation(line: 89, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !169, file: !18, line: 89, column: 6)
!210 = !DILocation(line: 89, column: 6, scope: !169)
!211 = !DILocation(line: 0, scope: !17, inlinedAt: !212)
!212 = distinct !DILocation(line: 90, column: 3, scope: !209)
!213 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !212)
!214 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !212)
!215 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !212)
!216 = !DILocation(line: 91, column: 11, scope: !169)
!217 = !DILocation(line: 92, column: 11, scope: !169)
!218 = !DILocation(line: 94, column: 22, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !18, line: 94, column: 2)
!220 = distinct !DILexicalBlock(scope: !169, file: !18, line: 94, column: 2)
!221 = !DILocation(line: 94, column: 2, scope: !220)
!222 = !DILocation(line: 95, column: 12, scope: !219)
!223 = !DILocation(line: 0, scope: !220)
!224 = !DILocation(line: 95, column: 23, scope: !219)
!225 = !DILocation(line: 95, column: 3, scope: !219)
!226 = !DILocation(line: 95, column: 10, scope: !219)
!227 = distinct !{!227, !221, !228, !229, !230}
!228 = !DILocation(line: 95, column: 25, scope: !220)
!229 = !{!"llvm.loop.mustprogress"}
!230 = !{!"llvm.loop.unroll.disable"}
!231 = !DILocation(line: 96, column: 2, scope: !169)
!232 = distinct !DISubprogram(name: "imatrix", scope: !18, file: !18, line: 99, type: !233, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!9, !7, !7, !7, !7}
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243}
!236 = !DILocalVariable(name: "nrl", arg: 1, scope: !232, file: !18, line: 99, type: !7)
!237 = !DILocalVariable(name: "nrh", arg: 2, scope: !232, file: !18, line: 99, type: !7)
!238 = !DILocalVariable(name: "ncl", arg: 3, scope: !232, file: !18, line: 99, type: !7)
!239 = !DILocalVariable(name: "nch", arg: 4, scope: !232, file: !18, line: 99, type: !7)
!240 = !DILocalVariable(name: "i", scope: !232, file: !18, line: 104, type: !7)
!241 = !DILocalVariable(name: "nrow", scope: !232, file: !18, line: 105, type: !7)
!242 = !DILocalVariable(name: "ncol", scope: !232, file: !18, line: 105, type: !7)
!243 = !DILocalVariable(name: "m", scope: !232, file: !18, line: 106, type: !9)
!244 = !DILocation(line: 0, scope: !232)
!245 = !DILocation(line: 108, column: 13, scope: !232)
!246 = !DILocation(line: 109, column: 13, scope: !232)
!247 = !DILocation(line: 109, column: 19, scope: !232)
!248 = !DILocation(line: 111, column: 31, scope: !232)
!249 = !DILocation(line: 111, column: 24, scope: !232)
!250 = !DILocation(line: 111, column: 42, scope: !232)
!251 = !DILocation(line: 111, column: 16, scope: !232)
!252 = !DILocation(line: 112, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !232, file: !18, line: 112, column: 6)
!254 = !DILocation(line: 112, column: 6, scope: !232)
!255 = !DILocation(line: 0, scope: !17, inlinedAt: !256)
!256 = distinct !DILocation(line: 113, column: 3, scope: !253)
!257 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !256)
!258 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !256)
!259 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !256)
!260 = !DILocation(line: 111, column: 6, scope: !232)
!261 = !DILocation(line: 108, column: 19, scope: !232)
!262 = !DILocation(line: 114, column: 4, scope: !232)
!263 = !DILocation(line: 115, column: 4, scope: !232)
!264 = !DILocation(line: 118, column: 18, scope: !232)
!265 = !DILocation(line: 118, column: 25, scope: !232)
!266 = !DILocation(line: 118, column: 11, scope: !232)
!267 = !DILocation(line: 118, column: 36, scope: !232)
!268 = !DILocation(line: 118, column: 3, scope: !232)
!269 = !DILocation(line: 117, column: 2, scope: !232)
!270 = !DILocation(line: 117, column: 11, scope: !232)
!271 = !DILocation(line: 119, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !232, file: !18, line: 119, column: 6)
!273 = !DILocation(line: 119, column: 6, scope: !232)
!274 = !DILocation(line: 0, scope: !17, inlinedAt: !275)
!275 = distinct !DILocation(line: 120, column: 3, scope: !272)
!276 = !DILocation(line: 12, column: 11, scope: !17, inlinedAt: !275)
!277 = !DILocation(line: 12, column: 2, scope: !17, inlinedAt: !275)
!278 = !DILocation(line: 13, column: 2, scope: !17, inlinedAt: !275)
!279 = !DILocation(line: 121, column: 11, scope: !232)
!280 = !DILocation(line: 122, column: 11, scope: !232)
!281 = !DILocation(line: 124, column: 22, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !18, line: 124, column: 2)
!283 = distinct !DILexicalBlock(scope: !232, file: !18, line: 124, column: 2)
!284 = !DILocation(line: 124, column: 2, scope: !283)
!285 = !DILocation(line: 125, column: 12, scope: !282)
!286 = !DILocation(line: 0, scope: !283)
!287 = !DILocation(line: 125, column: 23, scope: !282)
!288 = !DILocation(line: 125, column: 3, scope: !282)
!289 = !DILocation(line: 125, column: 10, scope: !282)
!290 = distinct !{!290, !284, !291, !229, !230}
!291 = !DILocation(line: 125, column: 25, scope: !283)
!292 = !DILocation(line: 126, column: 2, scope: !232)
!293 = distinct !DISubprogram(name: "free_vector", scope: !18, file: !18, line: 129, type: !294, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !3, !34, !34}
!296 = !{!297, !298, !299}
!297 = !DILocalVariable(name: "v", arg: 1, scope: !293, file: !18, line: 129, type: !3)
!298 = !DILocalVariable(name: "nl", arg: 2, scope: !293, file: !18, line: 129, type: !34)
!299 = !DILocalVariable(name: "nh", arg: 3, scope: !293, file: !18, line: 129, type: !34)
!300 = !DILocation(line: 0, scope: !293)
!301 = !DILocation(line: 132, column: 22, scope: !293)
!302 = !DILocation(line: 132, column: 8, scope: !293)
!303 = !DILocation(line: 132, column: 2, scope: !293)
!304 = !DILocation(line: 133, column: 1, scope: !293)
!305 = distinct !DISubprogram(name: "free_ivector", scope: !18, file: !18, line: 135, type: !306, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !6, !7, !7}
!308 = !{!309, !310, !311}
!309 = !DILocalVariable(name: "v", arg: 1, scope: !305, file: !18, line: 135, type: !6)
!310 = !DILocalVariable(name: "nl", arg: 2, scope: !305, file: !18, line: 135, type: !7)
!311 = !DILocalVariable(name: "nh", arg: 3, scope: !305, file: !18, line: 135, type: !7)
!312 = !DILocation(line: 0, scope: !305)
!313 = !DILocation(line: 142, column: 22, scope: !305)
!314 = !DILocation(line: 142, column: 8, scope: !305)
!315 = !DILocation(line: 142, column: 2, scope: !305)
!316 = !DILocation(line: 143, column: 1, scope: !305)
!317 = distinct !DISubprogram(name: "free_matrix", scope: !18, file: !18, line: 145, type: !318, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !8, !7, !7, !7, !7}
!320 = !{!321, !322, !323, !324, !325}
!321 = !DILocalVariable(name: "m", arg: 1, scope: !317, file: !18, line: 145, type: !8)
!322 = !DILocalVariable(name: "nrl", arg: 2, scope: !317, file: !18, line: 145, type: !7)
!323 = !DILocalVariable(name: "nrh", arg: 3, scope: !317, file: !18, line: 145, type: !7)
!324 = !DILocalVariable(name: "ncl", arg: 4, scope: !317, file: !18, line: 145, type: !7)
!325 = !DILocalVariable(name: "nch", arg: 5, scope: !317, file: !18, line: 145, type: !7)
!326 = !DILocation(line: 0, scope: !317)
!327 = !DILocation(line: 151, column: 20, scope: !317)
!328 = !DILocation(line: 151, column: 29, scope: !317)
!329 = !DILocation(line: 151, column: 35, scope: !317)
!330 = !DILocation(line: 151, column: 8, scope: !317)
!331 = !DILocation(line: 151, column: 2, scope: !317)
!332 = !DILocation(line: 152, column: 28, scope: !317)
!333 = !DILocation(line: 152, column: 8, scope: !317)
!334 = !DILocation(line: 152, column: 2, scope: !317)
!335 = !DILocation(line: 153, column: 1, scope: !317)
!336 = distinct !DISubprogram(name: "free_imatrix", scope: !18, file: !18, line: 155, type: !337, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !9, !7, !7, !7, !7}
!339 = !{!340, !341, !342, !343, !344}
!340 = !DILocalVariable(name: "m", arg: 1, scope: !336, file: !18, line: 155, type: !9)
!341 = !DILocalVariable(name: "nrl", arg: 2, scope: !336, file: !18, line: 155, type: !7)
!342 = !DILocalVariable(name: "nrh", arg: 3, scope: !336, file: !18, line: 155, type: !7)
!343 = !DILocalVariable(name: "ncl", arg: 4, scope: !336, file: !18, line: 155, type: !7)
!344 = !DILocalVariable(name: "nch", arg: 5, scope: !336, file: !18, line: 155, type: !7)
!345 = !DILocation(line: 0, scope: !336)
!346 = !DILocation(line: 161, column: 20, scope: !336)
!347 = !DILocation(line: 161, column: 29, scope: !336)
!348 = !DILocation(line: 161, column: 35, scope: !336)
!349 = !DILocation(line: 161, column: 8, scope: !336)
!350 = !DILocation(line: 161, column: 2, scope: !336)
!351 = !DILocation(line: 162, column: 28, scope: !336)
!352 = !DILocation(line: 162, column: 8, scope: !336)
!353 = !DILocation(line: 162, column: 2, scope: !336)
!354 = !DILocation(line: 163, column: 1, scope: !336)
