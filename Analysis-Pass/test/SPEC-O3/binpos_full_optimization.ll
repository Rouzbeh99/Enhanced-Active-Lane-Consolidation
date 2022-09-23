; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Couldn't read magic number from BINPOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fxyz\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bad magic number \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"malloc error in binpos\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could only read %d of %d atoms requested\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposhdr(%struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #0 !dbg !10 {
entry:
  %magic = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !78, metadata !DIExpression()), !dbg !83
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %magic, i64 0, i64 0, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #10, !dbg !84
  call void @llvm.dbg.declare(metadata [10 x i8]* %magic, metadata !79, metadata !DIExpression()), !dbg !85
  %call = call i64 @fread(i8* noundef nonnull %0, i64 noundef 1, i64 noundef 4, %struct._IO_FILE* noundef %fp), !dbg !86
  %cmp.not = icmp eq i64 %call, 4, !dbg !88
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !89

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !92
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %1) #11, !dbg !96
  tail call void @exit(i32 noundef -1) #12, !dbg !97
  unreachable, !dbg !97

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %magic, i64 0, i64 4, !dbg !98
  store i8 0, i8* %arrayidx, align 1, !dbg !99, !tbaa !100
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5), !dbg !101
  %cmp4.not = icmp eq i32 %bcmp, 0, !dbg !103
  br i1 %cmp4.not, label %if.end8, label %if.then5, !dbg !104

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !92
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %0) #11, !dbg !107
  call void @exit(i32 noundef -1) #12, !dbg !108
  unreachable, !dbg !108

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #10, !dbg !109
  ret i32 0, !dbg !110
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposfrm(i32 noundef %n_atom, double* nocapture noundef writeonly %apos, %struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #0 !dbg !111 {
entry:
  %n_atom.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n_atom, metadata !117, metadata !DIExpression()), !dbg !123
  store i32 %n_atom, i32* %n_atom.addr, align 4, !tbaa !124
  call void @llvm.dbg.value(metadata double* %apos, metadata !118, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !119, metadata !DIExpression()), !dbg !123
  %0 = bitcast i32* %n_atom.addr to i8*, !dbg !126
  call void @llvm.dbg.value(metadata i32* %n_atom.addr, metadata !117, metadata !DIExpression(DW_OP_deref)), !dbg !123
  %call = call i64 @fread(i8* noundef nonnull %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %fp), !dbg !128
  %cmp.not = icmp eq i64 %call, 1, !dbg !129
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !130

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n_atom.addr, align 4, !dbg !131, !tbaa !124
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %mul = mul nsw i32 %1, 3, !dbg !132
  %conv = sext i32 %mul to i64, !dbg !133
  %mul1 = shl nsw i64 %conv, 2, !dbg !134
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul1) #10, !dbg !135
  %2 = bitcast i8* %call2 to float*, !dbg !136
  call void @llvm.dbg.value(metadata float* %2, metadata !122, metadata !DIExpression()), !dbg !123
  %tobool.not = icmp eq i8* %call2, null, !dbg !137
  br i1 %tobool.not, label %if.then3, label %if.end5, !dbg !139

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !92
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %3) #11, !dbg !142
  tail call void @exit(i32 noundef 1) #12, !dbg !143
  unreachable, !dbg !143

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %call8 = tail call i64 @fread(i8* noundef nonnull %call2, i64 noundef 4, i64 noundef %conv, %struct._IO_FILE* noundef %fp), !dbg !144
  %conv9 = trunc i64 %call8 to i32, !dbg !144
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %cmp11.not = icmp eq i32 %mul, %conv9, !dbg !146
  br i1 %cmp11.not, label %for.cond.preheader, label %if.then13, !dbg !147

for.cond.preheader:                               ; preds = %if.end5
  call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %cmp1734 = icmp sgt i32 %1, 0, !dbg !148
  br i1 %cmp1734, label %for.body.preheader, label %for.end, !dbg !151

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !151
  %wide.trip.count = zext i32 %smax to i64, !dbg !148
  %min.iters.check = icmp ult i32 %smax, 4, !dbg !151
  br i1 %min.iters.check, label %for.body.preheader38, label %vector.ph, !dbg !151

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644, !dbg !151
  %5 = add nsw i64 %n.vec, -4, !dbg !151
  %6 = lshr exact i64 %5, 2, !dbg !151
  %7 = add nuw nsw i64 %6, 1, !dbg !151
  %xtraiter = and i64 %7, 1, !dbg !151
  %8 = icmp eq i64 %5, 0, !dbg !151
  br i1 %8, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !151

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %7, 9223372036854775806, !dbg !151
  br label %vector.body, !dbg !151

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !152
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %9 = getelementptr inbounds float, float* %2, i64 %index, !dbg !152
  %10 = bitcast float* %9 to <2 x float>*, !dbg !153
  %wide.load = load <2 x float>, <2 x float>* %10, align 4, !dbg !153, !tbaa !155
  %11 = getelementptr inbounds float, float* %9, i64 2, !dbg !153
  %12 = bitcast float* %11 to <2 x float>*, !dbg !153
  %wide.load37 = load <2 x float>, <2 x float>* %12, align 4, !dbg !153, !tbaa !155
  %13 = fpext <2 x float> %wide.load to <2 x double>, !dbg !153
  %14 = fpext <2 x float> %wide.load37 to <2 x double>, !dbg !153
  %15 = getelementptr inbounds double, double* %apos, i64 %index, !dbg !152
  %16 = bitcast double* %15 to <2 x double>*, !dbg !157
  store <2 x double> %13, <2 x double>* %16, align 8, !dbg !157, !tbaa !158
  %17 = getelementptr inbounds double, double* %15, i64 2, !dbg !157
  %18 = bitcast double* %17 to <2 x double>*, !dbg !157
  store <2 x double> %14, <2 x double>* %18, align 8, !dbg !157, !tbaa !158
  %index.next = or i64 %index, 4, !dbg !152
  %19 = getelementptr inbounds float, float* %2, i64 %index.next, !dbg !152
  %20 = bitcast float* %19 to <2 x float>*, !dbg !153
  %wide.load.1 = load <2 x float>, <2 x float>* %20, align 4, !dbg !153, !tbaa !155
  %21 = getelementptr inbounds float, float* %19, i64 2, !dbg !153
  %22 = bitcast float* %21 to <2 x float>*, !dbg !153
  %wide.load37.1 = load <2 x float>, <2 x float>* %22, align 4, !dbg !153, !tbaa !155
  %23 = fpext <2 x float> %wide.load.1 to <2 x double>, !dbg !153
  %24 = fpext <2 x float> %wide.load37.1 to <2 x double>, !dbg !153
  %25 = getelementptr inbounds double, double* %apos, i64 %index.next, !dbg !152
  %26 = bitcast double* %25 to <2 x double>*, !dbg !157
  store <2 x double> %23, <2 x double>* %26, align 8, !dbg !157, !tbaa !158
  %27 = getelementptr inbounds double, double* %25, i64 2, !dbg !157
  %28 = bitcast double* %27 to <2 x double>*, !dbg !157
  store <2 x double> %24, <2 x double>* %28, align 8, !dbg !157, !tbaa !158
  %index.next.1 = add nuw i64 %index, 8, !dbg !152
  %niter.next.1 = add i64 %niter, 2, !dbg !152
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !152
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !152, !llvm.loop !160

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !152
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil, !dbg !152

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %29 = getelementptr inbounds float, float* %2, i64 %index.unr, !dbg !152
  %30 = bitcast float* %29 to <2 x float>*, !dbg !153
  %wide.load.epil = load <2 x float>, <2 x float>* %30, align 4, !dbg !153, !tbaa !155
  %31 = getelementptr inbounds float, float* %29, i64 2, !dbg !153
  %32 = bitcast float* %31 to <2 x float>*, !dbg !153
  %wide.load37.epil = load <2 x float>, <2 x float>* %32, align 4, !dbg !153, !tbaa !155
  %33 = fpext <2 x float> %wide.load.epil to <2 x double>, !dbg !153
  %34 = fpext <2 x float> %wide.load37.epil to <2 x double>, !dbg !153
  %35 = getelementptr inbounds double, double* %apos, i64 %index.unr, !dbg !152
  %36 = bitcast double* %35 to <2 x double>*, !dbg !157
  store <2 x double> %33, <2 x double>* %36, align 8, !dbg !157, !tbaa !158
  %37 = getelementptr inbounds double, double* %35, i64 2, !dbg !157
  %38 = bitcast double* %37 to <2 x double>*, !dbg !157
  store <2 x double> %34, <2 x double>* %38, align 8, !dbg !157, !tbaa !158
  br label %middle.block, !dbg !151

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !151
  br i1 %cmp.n, label %for.end, label %for.body.preheader38, !dbg !151

for.body.preheader38:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body, !dbg !151

if.then13:                                        ; preds = %if.end5
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !164, !tbaa !92
  %div = sdiv i32 %conv9, 3, !dbg !166
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %div, i32 noundef %1) #11, !dbg !167
  tail call void @exit(i32 noundef -1) #12, !dbg !168
  unreachable, !dbg !168

for.body:                                         ; preds = %for.body.preheader38, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader38 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !121, metadata !DIExpression()), !dbg !123
  %arrayidx = getelementptr inbounds float, float* %2, i64 %indvars.iv, !dbg !153
  %40 = load float, float* %arrayidx, align 4, !dbg !153, !tbaa !155
  %conv19 = fpext float %40 to double, !dbg !153
  %arrayidx21 = getelementptr inbounds double, double* %apos, i64 %indvars.iv, !dbg !169
  store double %conv19, double* %arrayidx21, align 8, !dbg !157, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !148
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !151, !llvm.loop !170

for.end:                                          ; preds = %for.body, %middle.block, %for.cond.preheader
  tail call void @free(i8* noundef nonnull %call2) #10, !dbg !172
  br label %cleanup, !dbg !173

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !123
  ret i32 %retval.0, !dbg !174
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #7 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !177, metadata !DIExpression()), !dbg !178
  %call = tail call i64 @fwrite(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %fp), !dbg !179
  ret i32 0, !dbg !180
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 noundef %n_atom, double* nocapture noundef readonly %apos, %struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #0 !dbg !181 {
entry:
  %n_atom.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n_atom, metadata !183, metadata !DIExpression()), !dbg !188
  store i32 %n_atom, i32* %n_atom.addr, align 4, !tbaa !124
  call void @llvm.dbg.value(metadata double* %apos, metadata !184, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !185, metadata !DIExpression()), !dbg !188
  %0 = bitcast i32* %n_atom.addr to i8*, !dbg !189
  call void @llvm.dbg.value(metadata i32* %n_atom.addr, metadata !183, metadata !DIExpression(DW_OP_deref)), !dbg !188
  %call = call i64 @fwrite(i8* noundef nonnull %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %fp), !dbg !190
  %1 = load i32, i32* %n_atom.addr, align 4, !dbg !191, !tbaa !124
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !188
  %mul = mul nsw i32 %1, 3, !dbg !192
  %conv = sext i32 %mul to i64, !dbg !193
  %mul1 = shl nsw i64 %conv, 2, !dbg !194
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul1) #10, !dbg !195
  %2 = bitcast i8* %call2 to float*, !dbg !196
  call void @llvm.dbg.value(metadata float* %2, metadata !186, metadata !DIExpression()), !dbg !188
  %tobool.not = icmp eq i8* %call2, null, !dbg !197
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !dbg !199

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !188
  %cmp23 = icmp sgt i32 %1, 0, !dbg !200
  br i1 %cmp23, label %for.body.preheader, label %for.end, !dbg !203

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !203
  %wide.trip.count = zext i32 %smax to i64, !dbg !200
  %min.iters.check = icmp ult i32 %smax, 4, !dbg !203
  br i1 %min.iters.check, label %for.body.preheader27, label %vector.ph, !dbg !203

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644, !dbg !203
  %3 = add nsw i64 %n.vec, -4, !dbg !203
  %4 = lshr exact i64 %3, 2, !dbg !203
  %5 = add nuw nsw i64 %4, 1, !dbg !203
  %xtraiter = and i64 %5, 1, !dbg !203
  %6 = icmp eq i64 %3, 0, !dbg !203
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !203

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %5, 9223372036854775806, !dbg !203
  br label %vector.body, !dbg !203

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !204
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %7 = getelementptr inbounds double, double* %apos, i64 %index, !dbg !204
  %8 = bitcast double* %7 to <2 x double>*, !dbg !205
  %wide.load = load <2 x double>, <2 x double>* %8, align 8, !dbg !205, !tbaa !158
  %9 = getelementptr inbounds double, double* %7, i64 2, !dbg !205
  %10 = bitcast double* %9 to <2 x double>*, !dbg !205
  %wide.load26 = load <2 x double>, <2 x double>* %10, align 8, !dbg !205, !tbaa !158
  %11 = fptrunc <2 x double> %wide.load to <2 x float>, !dbg !205
  %12 = fptrunc <2 x double> %wide.load26 to <2 x float>, !dbg !205
  %13 = getelementptr inbounds float, float* %2, i64 %index, !dbg !204
  %14 = bitcast float* %13 to <2 x float>*, !dbg !207
  store <2 x float> %11, <2 x float>* %14, align 4, !dbg !207, !tbaa !155
  %15 = getelementptr inbounds float, float* %13, i64 2, !dbg !207
  %16 = bitcast float* %15 to <2 x float>*, !dbg !207
  store <2 x float> %12, <2 x float>* %16, align 4, !dbg !207, !tbaa !155
  %index.next = or i64 %index, 4, !dbg !204
  %17 = getelementptr inbounds double, double* %apos, i64 %index.next, !dbg !204
  %18 = bitcast double* %17 to <2 x double>*, !dbg !205
  %wide.load.1 = load <2 x double>, <2 x double>* %18, align 8, !dbg !205, !tbaa !158
  %19 = getelementptr inbounds double, double* %17, i64 2, !dbg !205
  %20 = bitcast double* %19 to <2 x double>*, !dbg !205
  %wide.load26.1 = load <2 x double>, <2 x double>* %20, align 8, !dbg !205, !tbaa !158
  %21 = fptrunc <2 x double> %wide.load.1 to <2 x float>, !dbg !205
  %22 = fptrunc <2 x double> %wide.load26.1 to <2 x float>, !dbg !205
  %23 = getelementptr inbounds float, float* %2, i64 %index.next, !dbg !204
  %24 = bitcast float* %23 to <2 x float>*, !dbg !207
  store <2 x float> %21, <2 x float>* %24, align 4, !dbg !207, !tbaa !155
  %25 = getelementptr inbounds float, float* %23, i64 2, !dbg !207
  %26 = bitcast float* %25 to <2 x float>*, !dbg !207
  store <2 x float> %22, <2 x float>* %26, align 4, !dbg !207, !tbaa !155
  %index.next.1 = add nuw i64 %index, 8, !dbg !204
  %niter.next.1 = add i64 %niter, 2, !dbg !204
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !204
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !204, !llvm.loop !208

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !204
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil, !dbg !204

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %27 = getelementptr inbounds double, double* %apos, i64 %index.unr, !dbg !204
  %28 = bitcast double* %27 to <2 x double>*, !dbg !205
  %wide.load.epil = load <2 x double>, <2 x double>* %28, align 8, !dbg !205, !tbaa !158
  %29 = getelementptr inbounds double, double* %27, i64 2, !dbg !205
  %30 = bitcast double* %29 to <2 x double>*, !dbg !205
  %wide.load26.epil = load <2 x double>, <2 x double>* %30, align 8, !dbg !205, !tbaa !158
  %31 = fptrunc <2 x double> %wide.load.epil to <2 x float>, !dbg !205
  %32 = fptrunc <2 x double> %wide.load26.epil to <2 x float>, !dbg !205
  %33 = getelementptr inbounds float, float* %2, i64 %index.unr, !dbg !204
  %34 = bitcast float* %33 to <2 x float>*, !dbg !207
  store <2 x float> %31, <2 x float>* %34, align 4, !dbg !207, !tbaa !155
  %35 = getelementptr inbounds float, float* %33, i64 2, !dbg !207
  %36 = bitcast float* %35 to <2 x float>*, !dbg !207
  store <2 x float> %32, <2 x float>* %36, align 4, !dbg !207, !tbaa !155
  br label %middle.block, !dbg !203

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !203
  br i1 %cmp.n, label %for.end, label %for.body.preheader27, !dbg !203

for.body.preheader27:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body, !dbg !203

if.then:                                          ; preds = %entry
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !210, !tbaa !92
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %37) #11, !dbg !212
  tail call void @exit(i32 noundef 1) #12, !dbg !213
  unreachable, !dbg !213

for.body:                                         ; preds = %for.body.preheader27, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader27 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !187, metadata !DIExpression()), !dbg !188
  %arrayidx = getelementptr inbounds double, double* %apos, i64 %indvars.iv, !dbg !205
  %39 = load double, double* %arrayidx, align 8, !dbg !205, !tbaa !158
  %conv6 = fptrunc double %39 to float, !dbg !205
  %arrayidx8 = getelementptr inbounds float, float* %2, i64 %indvars.iv, !dbg !214
  store float %conv6, float* %arrayidx8, align 4, !dbg !207, !tbaa !155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !188
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !200
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !203, !llvm.loop !215

for.end:                                          ; preds = %for.body, %middle.block, %for.cond.preheader
  %call11 = tail call i64 @fwrite(i8* noundef nonnull %call2, i64 noundef 4, i64 noundef %conv, %struct._IO_FILE* noundef %fp), !dbg !216
  tail call void @free(i8* noundef nonnull %call2) #10, !dbg !217
  %call12 = tail call i32 @fflush(%struct._IO_FILE* noundef %fp), !dbg !218
  ret i32 0, !dbg !219
}

; Function Attrs: nofree nounwind
declare !dbg !220 dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "3213657abd4dba89e47c762210ec2f39")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!10 = distinct !DISubprogram(name: "readbinposhdr", scope: !11, file: !11, line: 6, type: !12, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!11 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "3213657abd4dba89e47c762210ec2f39")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 49, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!20 = !{!21, !22, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !40, !41, !42, !46, !48, !50, !54, !57, !59, !62, !65, !66, !68, !72, !73}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 51, baseType: !14, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 54, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 55, baseType: !23, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 56, baseType: !23, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 57, baseType: !23, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 58, baseType: !23, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 59, baseType: !23, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 60, baseType: !23, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 61, baseType: !23, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 64, baseType: !23, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 65, baseType: !23, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 66, baseType: !23, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 68, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 36, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 70, baseType: !39, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 72, baseType: !14, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 73, baseType: !14, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 74, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!45 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 77, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 78, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 79, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 81, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 43, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 89, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !18, file: !19, line: 91, baseType: !60, size: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !19, line: 37, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !18, file: !19, line: 92, baseType: !63, size: 64, offset: 1280)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !19, line: 38, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !18, file: !19, line: 93, baseType: !39, size: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !18, file: !19, line: 94, baseType: !67, size: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 95, baseType: !69, size: 64, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 96, baseType: !14, size: 32, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 98, baseType: !74, size: 160, offset: 1568)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "fp", arg: 1, scope: !10, file: !11, line: 6, type: !15)
!79 = !DILocalVariable(name: "magic", scope: !10, file: !11, line: 8, type: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 80, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 10)
!83 = !DILocation(line: 0, scope: !10)
!84 = !DILocation(line: 8, column: 2, scope: !10)
!85 = !DILocation(line: 8, column: 7, scope: !10)
!86 = !DILocation(line: 10, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !10, file: !11, line: 10, column: 6)
!88 = !DILocation(line: 10, column: 31, scope: !87)
!89 = !DILocation(line: 10, column: 6, scope: !10)
!90 = !DILocation(line: 11, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !11, line: 10, column: 37)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !DILocation(line: 11, column: 3, scope: !91)
!97 = !DILocation(line: 12, column: 3, scope: !91)
!98 = !DILocation(line: 15, column: 2, scope: !10)
!99 = !DILocation(line: 15, column: 13, scope: !10)
!100 = !{!94, !94, i64 0}
!101 = !DILocation(line: 16, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !10, file: !11, line: 16, column: 6)
!103 = !DILocation(line: 16, column: 30, scope: !102)
!104 = !DILocation(line: 16, column: 6, scope: !10)
!105 = !DILocation(line: 17, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !11, line: 16, column: 36)
!107 = !DILocation(line: 17, column: 3, scope: !106)
!108 = !DILocation(line: 18, column: 3, scope: !106)
!109 = !DILocation(line: 21, column: 1, scope: !10)
!110 = !DILocation(line: 20, column: 2, scope: !10)
!111 = distinct !DISubprogram(name: "readbinposfrm", scope: !11, file: !11, line: 23, type: !112, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{!14, !14, !114, !15}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DILocalVariable(name: "n_atom", arg: 1, scope: !111, file: !11, line: 23, type: !14)
!118 = !DILocalVariable(name: "apos", arg: 2, scope: !111, file: !11, line: 23, type: !114)
!119 = !DILocalVariable(name: "fp", arg: 3, scope: !111, file: !11, line: 23, type: !15)
!120 = !DILocalVariable(name: "count", scope: !111, file: !11, line: 26, type: !14)
!121 = !DILocalVariable(name: "i", scope: !111, file: !11, line: 26, type: !14)
!122 = !DILocalVariable(name: "aposf", scope: !111, file: !11, line: 27, type: !3)
!123 = !DILocation(line: 0, scope: !111)
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !94, i64 0}
!126 = !DILocation(line: 29, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !111, file: !11, line: 29, column: 6)
!128 = !DILocation(line: 29, column: 6, scope: !127)
!129 = !DILocation(line: 29, column: 45, scope: !127)
!130 = !DILocation(line: 29, column: 6, scope: !111)
!131 = !DILocation(line: 35, column: 31, scope: !111)
!132 = !DILocation(line: 35, column: 30, scope: !111)
!133 = !DILocation(line: 35, column: 29, scope: !111)
!134 = !DILocation(line: 35, column: 38, scope: !111)
!135 = !DILocation(line: 35, column: 21, scope: !111)
!136 = !DILocation(line: 35, column: 10, scope: !111)
!137 = !DILocation(line: 36, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !111, file: !11, line: 36, column: 6)
!139 = !DILocation(line: 36, column: 6, scope: !111)
!140 = !DILocation(line: 36, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !11, line: 36, column: 14)
!142 = !DILocation(line: 36, column: 16, scope: !141)
!143 = !DILocation(line: 36, column: 63, scope: !141)
!144 = !DILocation(line: 37, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !111, file: !11, line: 37, column: 6)
!146 = !DILocation(line: 38, column: 3, scope: !145)
!147 = !DILocation(line: 37, column: 6, scope: !111)
!148 = !DILocation(line: 43, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !11, line: 43, column: 2)
!150 = distinct !DILexicalBlock(scope: !111, file: !11, line: 43, column: 2)
!151 = !DILocation(line: 43, column: 2, scope: !150)
!152 = !DILocation(line: 43, column: 25, scope: !149)
!153 = !DILocation(line: 44, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !11, line: 43, column: 29)
!155 = !{!156, !156, i64 0}
!156 = !{!"float", !94, i64 0}
!157 = !DILocation(line: 44, column: 11, scope: !154)
!158 = !{!159, !159, i64 0}
!159 = !{!"double", !94, i64 0}
!160 = distinct !{!160, !151, !161, !162, !163}
!161 = !DILocation(line: 45, column: 2, scope: !150)
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!"llvm.loop.isvectorized", i32 1}
!164 = !DILocation(line: 39, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !145, file: !11, line: 38, column: 18)
!166 = !DILocation(line: 40, column: 10, scope: !165)
!167 = !DILocation(line: 39, column: 3, scope: !165)
!168 = !DILocation(line: 41, column: 3, scope: !165)
!169 = !DILocation(line: 44, column: 3, scope: !154)
!170 = distinct !{!170, !151, !161, !162, !171, !163}
!171 = !{!"llvm.loop.unroll.runtime.disable"}
!172 = !DILocation(line: 46, column: 2, scope: !111)
!173 = !DILocation(line: 55, column: 2, scope: !111)
!174 = !DILocation(line: 56, column: 1, scope: !111)
!175 = distinct !DISubprogram(name: "writebinposhdr", scope: !11, file: !11, line: 58, type: !12, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177}
!177 = !DILocalVariable(name: "fp", arg: 1, scope: !175, file: !11, line: 58, type: !15)
!178 = !DILocation(line: 0, scope: !175)
!179 = !DILocation(line: 61, column: 5, scope: !175)
!180 = !DILocation(line: 62, column: 2, scope: !175)
!181 = distinct !DISubprogram(name: "writebinposfrm", scope: !11, file: !11, line: 65, type: !112, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DILocalVariable(name: "n_atom", arg: 1, scope: !181, file: !11, line: 65, type: !14)
!184 = !DILocalVariable(name: "apos", arg: 2, scope: !181, file: !11, line: 65, type: !114)
!185 = !DILocalVariable(name: "fp", arg: 3, scope: !181, file: !11, line: 65, type: !15)
!186 = !DILocalVariable(name: "aposf", scope: !181, file: !11, line: 67, type: !3)
!187 = !DILocalVariable(name: "i", scope: !181, file: !11, line: 68, type: !14)
!188 = !DILocation(line: 0, scope: !181)
!189 = !DILocation(line: 70, column: 10, scope: !181)
!190 = !DILocation(line: 70, column: 2, scope: !181)
!191 = !DILocation(line: 74, column: 31, scope: !181)
!192 = !DILocation(line: 74, column: 30, scope: !181)
!193 = !DILocation(line: 74, column: 29, scope: !181)
!194 = !DILocation(line: 74, column: 38, scope: !181)
!195 = !DILocation(line: 74, column: 21, scope: !181)
!196 = !DILocation(line: 74, column: 10, scope: !181)
!197 = !DILocation(line: 75, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !181, file: !11, line: 75, column: 6)
!199 = !DILocation(line: 75, column: 6, scope: !181)
!200 = !DILocation(line: 76, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !11, line: 76, column: 2)
!202 = distinct !DILexicalBlock(scope: !181, file: !11, line: 76, column: 2)
!203 = !DILocation(line: 76, column: 2, scope: !202)
!204 = !DILocation(line: 76, column: 25, scope: !201)
!205 = !DILocation(line: 77, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !11, line: 76, column: 29)
!207 = !DILocation(line: 77, column: 12, scope: !206)
!208 = distinct !{!208, !203, !209, !162, !163}
!209 = !DILocation(line: 78, column: 2, scope: !202)
!210 = !DILocation(line: 75, column: 25, scope: !211)
!211 = distinct !DILexicalBlock(scope: !198, file: !11, line: 75, column: 14)
!212 = !DILocation(line: 75, column: 16, scope: !211)
!213 = !DILocation(line: 75, column: 63, scope: !211)
!214 = !DILocation(line: 77, column: 3, scope: !206)
!215 = distinct !{!215, !203, !209, !162, !171, !163}
!216 = !DILocation(line: 79, column: 2, scope: !181)
!217 = !DILocation(line: 80, column: 2, scope: !181)
!218 = !DILocation(line: 84, column: 2, scope: !181)
!219 = !DILocation(line: 85, column: 2, scope: !181)
!220 = !DISubprogram(name: "fflush", scope: !221, file: !221, line: 218, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!221 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!222 = !{}
