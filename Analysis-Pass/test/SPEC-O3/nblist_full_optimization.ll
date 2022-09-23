; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.kdnode = type { i32, %struct.kdnode*, %struct.kdnode* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @nblist(i32* nocapture noundef %lpears, i32* nocapture noundef %upears, i32** nocapture noundef %pearlist, double* noundef %x, i32 noundef %context_PxQ, i32 noundef %derivs, double noundef %cutoff, i32 noundef %natom, i32 noundef %dim, i32* noundef %frozen) local_unnamed_addr #0 !dbg !20 {
entry:
  %locnt = alloca i32, align 4
  %upcnt = alloca i32, align 4
  %kdptr = alloca %struct.kdnode*, align 8
  call void @llvm.dbg.value(metadata i32* %lpears, metadata !29, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %upears, metadata !30, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32** %pearlist, metadata !31, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata double* %x, metadata !32, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %context_PxQ, metadata !33, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %derivs, metadata !34, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata double %cutoff, metadata !35, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %natom, metadata !36, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %dim, metadata !37, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %frozen, metadata !38, metadata !DIExpression()), !dbg !59
  %0 = bitcast i32* %locnt to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12, !dbg !60
  %1 = bitcast i32* %upcnt to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12, !dbg !60
  call void @llvm.dbg.declare(metadata i32* undef, metadata !44, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* undef, metadata !45, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* null, metadata !50, metadata !DIExpression()), !dbg !59
  %2 = bitcast %struct.kdnode** %kdptr to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12, !dbg !63
  %mul = fmul double %cutoff, %cutoff, !dbg !64
  call void @llvm.dbg.value(metadata double %mul, metadata !55, metadata !DIExpression()), !dbg !59
  %call = tail call i32 @get_blocksize() #12, !dbg !65
  call void @llvm.dbg.value(metadata i32 %call, metadata !46, metadata !DIExpression()), !dbg !59
  %conv = sext i32 %natom to i64, !dbg !66
  %mul1 = mul nsw i64 %conv, 24, !dbg !68
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul1) #12, !dbg !69
  %3 = bitcast i8* %call2 to %struct.kdnode*, !dbg !70
  call void @llvm.dbg.value(metadata %struct.kdnode* %3, metadata !56, metadata !DIExpression()), !dbg !59
  %cmp = icmp eq i8* %call2, null, !dbg !71
  br i1 %cmp, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !73, !tbaa !75
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %4) #13, !dbg !79
  tail call void @exit(i32 noundef 1) #14, !dbg !80
  unreachable, !dbg !80

if.end:                                           ; preds = %entry
  %call5 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !81
  call void @llvm.dbg.value(metadata i32* %call5, metadata !47, metadata !DIExpression()), !dbg !59
  %call6 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !82
  call void @llvm.dbg.value(metadata i32* %call6, metadata !48, metadata !DIExpression()), !dbg !59
  %call7 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !83
  call void @llvm.dbg.value(metadata i32* %call7, metadata !49, metadata !DIExpression()), !dbg !59
  %call8 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !84
  call void @llvm.dbg.value(metadata i32* %call8, metadata !52, metadata !DIExpression()), !dbg !59
  %cmp9 = icmp eq i32 %dim, 4, !dbg !85
  %call12 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !59
  call void @llvm.dbg.value(metadata i32* %call12, metadata !50, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %call12, metadata !50, metadata !DIExpression()), !dbg !59
  br i1 %cmp9, label %if.end13, label %if.end13.thread, !dbg !87

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !88
  call void @llvm.dbg.value(metadata i32* %call14, metadata !51, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !59
  %cmp15264 = icmp sgt i32 %natom, 0, !dbg !89
  br i1 %cmp15264, label %for.body.us.preheader, label %for.end, !dbg !92

if.end13.thread:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %call14, metadata !51, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !59
  %cmp15264298 = icmp sgt i32 %natom, 0, !dbg !89
  br i1 %cmp15264298, label %for.body.preheader, label %for.end, !dbg !92

for.body.preheader:                               ; preds = %if.end13.thread
  %wide.trip.count = zext i32 %natom to i64, !dbg !89
  %min.iters.check = icmp ult i32 %natom, 8, !dbg !92
  br i1 %min.iters.check, label %for.body.preheader360, label %vector.memcheck, !dbg !92

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i32, i32* %call7, i64 %wide.trip.count, !dbg !92
  %scevgep326 = getelementptr i32, i32* %call6, i64 %wide.trip.count, !dbg !92
  %scevgep329 = getelementptr i32, i32* %call5, i64 %wide.trip.count, !dbg !92
  %scevgep332 = getelementptr i32, i32* %call12, i64 %wide.trip.count, !dbg !92
  %bound0 = icmp ult i32* %call7, %scevgep326, !dbg !92
  %bound1 = icmp ult i32* %call6, %scevgep, !dbg !92
  %found.conflict = and i1 %bound0, %bound1, !dbg !92
  %bound0334 = icmp ult i32* %call7, %scevgep329, !dbg !92
  %bound1335 = icmp ult i32* %call5, %scevgep, !dbg !92
  %found.conflict336 = and i1 %bound0334, %bound1335, !dbg !92
  %conflict.rdx = or i1 %found.conflict, %found.conflict336, !dbg !92
  %bound0337 = icmp ult i32* %call7, %scevgep332, !dbg !92
  %bound1338 = icmp ult i32* %call12, %scevgep, !dbg !92
  %found.conflict339 = and i1 %bound0337, %bound1338, !dbg !92
  %conflict.rdx340 = or i1 %conflict.rdx, %found.conflict339, !dbg !92
  %bound0341 = icmp ult i32* %call6, %scevgep329, !dbg !92
  %bound1342 = icmp ult i32* %call5, %scevgep326, !dbg !92
  %found.conflict343 = and i1 %bound0341, %bound1342, !dbg !92
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343, !dbg !92
  %bound0345 = icmp ult i32* %call6, %scevgep332, !dbg !92
  %bound1346 = icmp ult i32* %call12, %scevgep326, !dbg !92
  %found.conflict347 = and i1 %bound0345, %bound1346, !dbg !92
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347, !dbg !92
  %bound0349 = icmp ult i32* %call5, %scevgep332, !dbg !92
  %bound1350 = icmp ult i32* %call12, %scevgep329, !dbg !92
  %found.conflict351 = and i1 %bound0349, %bound1350, !dbg !92
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351, !dbg !92
  br i1 %conflict.rdx352, label %for.body.preheader360, label %vector.ph, !dbg !92

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288, !dbg !92
  %6 = add nsw i64 %n.vec, -8, !dbg !92
  %7 = lshr exact i64 %6, 3, !dbg !92
  %8 = add nuw nsw i64 %7, 1, !dbg !92
  %xtraiter = and i64 %8, 1, !dbg !92
  %9 = icmp eq i64 %6, 0, !dbg !92
  br i1 %9, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !92

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %8, 4611686018427387902, !dbg !92
  br label %vector.body, !dbg !92

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !93
  %vec.ind354 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph.new ], [ %vec.ind.next357.1, %vector.body ], !dbg !94
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %step.add355 = add <4 x i32> %vec.ind354, <i32 4, i32 4, i32 4, i32 4>, !dbg !94
  %10 = getelementptr inbounds i32, i32* %call7, i64 %index, !dbg !93
  %11 = bitcast i32* %10 to <4 x i32>*, !dbg !94
  store <4 x i32> %vec.ind354, <4 x i32>* %11, align 4, !dbg !94, !tbaa !96, !alias.scope !98, !noalias !101
  %12 = getelementptr inbounds i32, i32* %10, i64 4, !dbg !94
  %13 = bitcast i32* %12 to <4 x i32>*, !dbg !94
  store <4 x i32> %step.add355, <4 x i32>* %13, align 4, !dbg !94, !tbaa !96, !alias.scope !98, !noalias !101
  %14 = getelementptr inbounds i32, i32* %call6, i64 %index, !dbg !93
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !105
  store <4 x i32> %vec.ind354, <4 x i32>* %15, align 4, !dbg !105, !tbaa !96, !alias.scope !106, !noalias !107
  %16 = getelementptr inbounds i32, i32* %14, i64 4, !dbg !105
  %17 = bitcast i32* %16 to <4 x i32>*, !dbg !105
  store <4 x i32> %step.add355, <4 x i32>* %17, align 4, !dbg !105, !tbaa !96, !alias.scope !106, !noalias !107
  %18 = getelementptr inbounds i32, i32* %call5, i64 %index, !dbg !93
  %19 = bitcast i32* %18 to <4 x i32>*, !dbg !108
  store <4 x i32> %vec.ind354, <4 x i32>* %19, align 4, !dbg !108, !tbaa !96, !alias.scope !109, !noalias !110
  %20 = getelementptr inbounds i32, i32* %18, i64 4, !dbg !108
  %21 = bitcast i32* %20 to <4 x i32>*, !dbg !108
  store <4 x i32> %step.add355, <4 x i32>* %21, align 4, !dbg !108, !tbaa !96, !alias.scope !109, !noalias !110
  %22 = getelementptr inbounds i32, i32* %call12, i64 %index, !dbg !93
  %23 = bitcast i32* %22 to <4 x i32>*, !dbg !111
  store <4 x i32> %vec.ind354, <4 x i32>* %23, align 4, !dbg !111, !tbaa !96, !alias.scope !110
  %24 = getelementptr inbounds i32, i32* %22, i64 4, !dbg !111
  %25 = bitcast i32* %24 to <4 x i32>*, !dbg !111
  store <4 x i32> %step.add355, <4 x i32>* %25, align 4, !dbg !111, !tbaa !96, !alias.scope !110
  %index.next = or i64 %index, 8, !dbg !93
  %vec.ind.next357 = add <4 x i32> %vec.ind354, <i32 8, i32 8, i32 8, i32 8>, !dbg !94
  %step.add355.1 = add <4 x i32> %vec.ind354, <i32 12, i32 12, i32 12, i32 12>, !dbg !94
  %26 = getelementptr inbounds i32, i32* %call7, i64 %index.next, !dbg !93
  %27 = bitcast i32* %26 to <4 x i32>*, !dbg !94
  store <4 x i32> %vec.ind.next357, <4 x i32>* %27, align 4, !dbg !94, !tbaa !96, !alias.scope !98, !noalias !101
  %28 = getelementptr inbounds i32, i32* %26, i64 4, !dbg !94
  %29 = bitcast i32* %28 to <4 x i32>*, !dbg !94
  store <4 x i32> %step.add355.1, <4 x i32>* %29, align 4, !dbg !94, !tbaa !96, !alias.scope !98, !noalias !101
  %30 = getelementptr inbounds i32, i32* %call6, i64 %index.next, !dbg !93
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !105
  store <4 x i32> %vec.ind.next357, <4 x i32>* %31, align 4, !dbg !105, !tbaa !96, !alias.scope !106, !noalias !107
  %32 = getelementptr inbounds i32, i32* %30, i64 4, !dbg !105
  %33 = bitcast i32* %32 to <4 x i32>*, !dbg !105
  store <4 x i32> %step.add355.1, <4 x i32>* %33, align 4, !dbg !105, !tbaa !96, !alias.scope !106, !noalias !107
  %34 = getelementptr inbounds i32, i32* %call5, i64 %index.next, !dbg !93
  %35 = bitcast i32* %34 to <4 x i32>*, !dbg !108
  store <4 x i32> %vec.ind.next357, <4 x i32>* %35, align 4, !dbg !108, !tbaa !96, !alias.scope !109, !noalias !110
  %36 = getelementptr inbounds i32, i32* %34, i64 4, !dbg !108
  %37 = bitcast i32* %36 to <4 x i32>*, !dbg !108
  store <4 x i32> %step.add355.1, <4 x i32>* %37, align 4, !dbg !108, !tbaa !96, !alias.scope !109, !noalias !110
  %38 = getelementptr inbounds i32, i32* %call12, i64 %index.next, !dbg !93
  %39 = bitcast i32* %38 to <4 x i32>*, !dbg !111
  store <4 x i32> %vec.ind.next357, <4 x i32>* %39, align 4, !dbg !111, !tbaa !96, !alias.scope !110
  %40 = getelementptr inbounds i32, i32* %38, i64 4, !dbg !111
  %41 = bitcast i32* %40 to <4 x i32>*, !dbg !111
  store <4 x i32> %step.add355.1, <4 x i32>* %41, align 4, !dbg !111, !tbaa !96, !alias.scope !110
  %index.next.1 = add nuw i64 %index, 16, !dbg !93
  %vec.ind.next357.1 = add <4 x i32> %vec.ind354, <i32 16, i32 16, i32 16, i32 16>, !dbg !94
  %niter.next.1 = add i64 %niter, 2, !dbg !93
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !93
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !93, !llvm.loop !112

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind354.unr = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next357.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !93
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil, !dbg !93

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %step.add355.epil = add <4 x i32> %vec.ind354.unr, <i32 4, i32 4, i32 4, i32 4>, !dbg !94
  %42 = getelementptr inbounds i32, i32* %call7, i64 %index.unr, !dbg !93
  %43 = bitcast i32* %42 to <4 x i32>*, !dbg !94
  store <4 x i32> %vec.ind354.unr, <4 x i32>* %43, align 4, !dbg !94, !tbaa !96, !alias.scope !98, !noalias !101
  %44 = getelementptr inbounds i32, i32* %42, i64 4, !dbg !94
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !94
  store <4 x i32> %step.add355.epil, <4 x i32>* %45, align 4, !dbg !94, !tbaa !96, !alias.scope !98, !noalias !101
  %46 = getelementptr inbounds i32, i32* %call6, i64 %index.unr, !dbg !93
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !105
  store <4 x i32> %vec.ind354.unr, <4 x i32>* %47, align 4, !dbg !105, !tbaa !96, !alias.scope !106, !noalias !107
  %48 = getelementptr inbounds i32, i32* %46, i64 4, !dbg !105
  %49 = bitcast i32* %48 to <4 x i32>*, !dbg !105
  store <4 x i32> %step.add355.epil, <4 x i32>* %49, align 4, !dbg !105, !tbaa !96, !alias.scope !106, !noalias !107
  %50 = getelementptr inbounds i32, i32* %call5, i64 %index.unr, !dbg !93
  %51 = bitcast i32* %50 to <4 x i32>*, !dbg !108
  store <4 x i32> %vec.ind354.unr, <4 x i32>* %51, align 4, !dbg !108, !tbaa !96, !alias.scope !109, !noalias !110
  %52 = getelementptr inbounds i32, i32* %50, i64 4, !dbg !108
  %53 = bitcast i32* %52 to <4 x i32>*, !dbg !108
  store <4 x i32> %step.add355.epil, <4 x i32>* %53, align 4, !dbg !108, !tbaa !96, !alias.scope !109, !noalias !110
  %54 = getelementptr inbounds i32, i32* %call12, i64 %index.unr, !dbg !93
  %55 = bitcast i32* %54 to <4 x i32>*, !dbg !111
  store <4 x i32> %vec.ind354.unr, <4 x i32>* %55, align 4, !dbg !111, !tbaa !96, !alias.scope !110
  %56 = getelementptr inbounds i32, i32* %54, i64 4, !dbg !111
  %57 = bitcast i32* %56 to <4 x i32>*, !dbg !111
  store <4 x i32> %step.add355.epil, <4 x i32>* %57, align 4, !dbg !111, !tbaa !96, !alias.scope !110
  br label %middle.block, !dbg !92

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !92
  br i1 %cmp.n, label %for.end, label %for.body.preheader360, !dbg !92

for.body.preheader360:                            ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %58 = xor i64 %indvars.iv.ph, -1, !dbg !92
  %xtraiter362 = and i64 %wide.trip.count, 1, !dbg !92
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0, !dbg !92
  br i1 %lcmp.mod363.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !92

for.body.prol:                                    ; preds = %for.body.preheader360
  call void @llvm.dbg.value(metadata i64 undef, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx.prol = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv.ph, !dbg !116
  %59 = trunc i64 %indvars.iv.ph to i32, !dbg !94
  store i32 %59, i32* %arrayidx.prol, align 4, !dbg !94, !tbaa !96
  %arrayidx18.prol = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv.ph, !dbg !117
  store i32 %59, i32* %arrayidx18.prol, align 4, !dbg !105, !tbaa !96
  %arrayidx20.prol = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv.ph, !dbg !118
  store i32 %59, i32* %arrayidx20.prol, align 4, !dbg !108, !tbaa !96
  %arrayidx28.prol = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv.ph, !dbg !119
  store i32 %59, i32* %arrayidx28.prol, align 4, !dbg !111, !tbaa !96
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.prol, metadata !39, metadata !DIExpression()), !dbg !59
  br label %for.body.prol.loopexit, !dbg !92

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader360
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader360 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %60 = sub nsw i64 0, %wide.trip.count, !dbg !92
  %61 = icmp eq i64 %58, %60, !dbg !92
  br i1 %61, label %for.end, label %for.body, !dbg !92

for.body.us.preheader:                            ; preds = %if.end13
  %wide.trip.count281 = zext i32 %natom to i64, !dbg !89
  %xtraiter364 = and i64 %wide.trip.count281, 1, !dbg !92
  %62 = icmp eq i32 %natom, 1, !dbg !92
  br i1 %62, label %for.end.loopexit.unr-lcssa, label %for.body.us.preheader.new, !dbg !92

for.body.us.preheader.new:                        ; preds = %for.body.us.preheader
  %unroll_iter366 = and i64 %wide.trip.count281, 4294967294, !dbg !92
  br label %for.body.us, !dbg !92

for.body.us:                                      ; preds = %for.body.us, %for.body.us.preheader.new
  %indvars.iv278 = phi i64 [ 0, %for.body.us.preheader.new ], [ %indvars.iv.next279.1, %for.body.us ]
  %niter367 = phi i64 [ 0, %for.body.us.preheader.new ], [ %niter367.next.1, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv278, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx.us = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv278, !dbg !116
  %63 = trunc i64 %indvars.iv278 to i32, !dbg !94
  store i32 %63, i32* %arrayidx.us, align 4, !dbg !94, !tbaa !96
  %arrayidx18.us = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv278, !dbg !117
  store i32 %63, i32* %arrayidx18.us, align 4, !dbg !105, !tbaa !96
  %arrayidx20.us = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv278, !dbg !118
  store i32 %63, i32* %arrayidx20.us, align 4, !dbg !108, !tbaa !96
  %arrayidx25.us = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv278, !dbg !120
  store i32 %63, i32* %arrayidx25.us, align 4, !dbg !123, !tbaa !96
  %arrayidx28.us = getelementptr inbounds i32, i32* %call14, i64 %indvars.iv278, !dbg !119
  store i32 %63, i32* %arrayidx28.us, align 4, !dbg !111, !tbaa !96
  %indvars.iv.next279 = or i64 %indvars.iv278, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next279, metadata !39, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next279, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx.us.1 = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv.next279, !dbg !116
  %64 = trunc i64 %indvars.iv.next279 to i32, !dbg !94
  store i32 %64, i32* %arrayidx.us.1, align 4, !dbg !94, !tbaa !96
  %arrayidx18.us.1 = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv.next279, !dbg !117
  store i32 %64, i32* %arrayidx18.us.1, align 4, !dbg !105, !tbaa !96
  %arrayidx20.us.1 = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv.next279, !dbg !118
  store i32 %64, i32* %arrayidx20.us.1, align 4, !dbg !108, !tbaa !96
  %arrayidx25.us.1 = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv.next279, !dbg !120
  store i32 %64, i32* %arrayidx25.us.1, align 4, !dbg !123, !tbaa !96
  %arrayidx28.us.1 = getelementptr inbounds i32, i32* %call14, i64 %indvars.iv.next279, !dbg !119
  store i32 %64, i32* %arrayidx28.us.1, align 4, !dbg !111, !tbaa !96
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next279.1, metadata !39, metadata !DIExpression()), !dbg !59
  %niter367.next.1 = add i64 %niter367, 2, !dbg !92
  %niter367.ncmp.1 = icmp eq i64 %niter367.next.1, %unroll_iter366, !dbg !92
  br i1 %niter367.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body.us, !dbg !92, !llvm.loop !124

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv, !dbg !116
  %65 = trunc i64 %indvars.iv to i32, !dbg !94
  store i32 %65, i32* %arrayidx, align 4, !dbg !94, !tbaa !96
  %arrayidx18 = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv, !dbg !117
  store i32 %65, i32* %arrayidx18, align 4, !dbg !105, !tbaa !96
  %arrayidx20 = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv, !dbg !118
  store i32 %65, i32* %arrayidx20, align 4, !dbg !108, !tbaa !96
  %arrayidx28 = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv, !dbg !119
  store i32 %65, i32* %arrayidx28, align 4, !dbg !111, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !39, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx.1 = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv.next, !dbg !116
  %66 = trunc i64 %indvars.iv.next to i32, !dbg !94
  store i32 %66, i32* %arrayidx.1, align 4, !dbg !94, !tbaa !96
  %arrayidx18.1 = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv.next, !dbg !117
  store i32 %66, i32* %arrayidx18.1, align 4, !dbg !105, !tbaa !96
  %arrayidx20.1 = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv.next, !dbg !118
  store i32 %66, i32* %arrayidx20.1, align 4, !dbg !108, !tbaa !96
  %arrayidx28.1 = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv.next, !dbg !119
  store i32 %66, i32* %arrayidx28.1, align 4, !dbg !111, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !39, metadata !DIExpression()), !dbg !59
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count, !dbg !89
  br i1 %exitcond.not.1, label %for.end, label %for.body, !dbg !92, !llvm.loop !125

for.end.loopexit.unr-lcssa:                       ; preds = %for.body.us, %for.body.us.preheader
  %indvars.iv278.unr = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next279.1, %for.body.us ]
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0, !dbg !92
  br i1 %lcmp.mod365.not, label %for.end, label %for.body.us.epil, !dbg !92

for.body.us.epil:                                 ; preds = %for.end.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv278.unr, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx.us.epil = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv278.unr, !dbg !116
  %67 = trunc i64 %indvars.iv278.unr to i32, !dbg !94
  store i32 %67, i32* %arrayidx.us.epil, align 4, !dbg !94, !tbaa !96
  %arrayidx18.us.epil = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv278.unr, !dbg !117
  store i32 %67, i32* %arrayidx18.us.epil, align 4, !dbg !105, !tbaa !96
  %arrayidx20.us.epil = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv278.unr, !dbg !118
  store i32 %67, i32* %arrayidx20.us.epil, align 4, !dbg !108, !tbaa !96
  %arrayidx25.us.epil = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv278.unr, !dbg !120
  store i32 %67, i32* %arrayidx25.us.epil, align 4, !dbg !123, !tbaa !96
  %arrayidx28.us.epil = getelementptr inbounds i32, i32* %call14, i64 %indvars.iv278.unr, !dbg !119
  store i32 %67, i32* %arrayidx28.us.epil, align 4, !dbg !111, !tbaa !96
  call void @llvm.dbg.value(metadata i64 %indvars.iv278.unr, metadata !39, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !59
  br label %for.end, !dbg !126

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %for.body.us.epil, %for.end.loopexit.unr-lcssa, %middle.block, %if.end13.thread, %if.end13
  %cmp15264304 = phi i1 [ false, %if.end13.thread ], [ false, %if.end13 ], [ true, %middle.block ], [ true, %for.end.loopexit.unr-lcssa ], [ true, %for.body.us.epil ], [ true, %for.body ], [ true, %for.body.prol.loopexit ]
  %call14302 = phi i32* [ %call12, %if.end13.thread ], [ %call14, %if.end13 ], [ %call12, %middle.block ], [ %call14, %for.end.loopexit.unr-lcssa ], [ %call14, %for.body.us.epil ], [ %call12, %for.body ], [ %call12, %for.body.prol.loopexit ]
  %wn.0299 = phi i32* [ null, %if.end13.thread ], [ %call12, %if.end13 ], [ null, %middle.block ], [ %call12, %for.end.loopexit.unr-lcssa ], [ %call12, %for.body.us.epil ], [ null, %for.body ], [ null, %for.body.prol.loopexit ]
  tail call fastcc void @heapsort_index(i32* noundef %call5, i32 noundef %natom, double* noundef %x, i32 noundef 0, i32 noundef %dim), !dbg !126
  tail call fastcc void @heapsort_index(i32* noundef %call6, i32 noundef %natom, double* noundef %x, i32 noundef 1, i32 noundef %dim), !dbg !127
  tail call fastcc void @heapsort_index(i32* noundef %call7, i32 noundef %natom, double* noundef %x, i32 noundef 2, i32 noundef %dim), !dbg !128
  br i1 %cmp9, label %if.then31, label %if.end32, !dbg !129

if.then31:                                        ; preds = %for.end
  tail call fastcc void @heapsort_index(i32* noundef %wn.0299, i32 noundef %natom, double* noundef %x, i32 noundef 3, i32 noundef 4), !dbg !130
  call void @llvm.dbg.value(metadata %struct.kdnode* %3, metadata !57, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !59
  call void @llvm.dbg.value(metadata %struct.kdnode* %3, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdptr, metadata !57, metadata !DIExpression(DW_OP_deref)), !dbg !59
  br label %if.end32, !dbg !133

if.end32:                                         ; preds = %for.end, %if.then31
  %dim.sink = phi i32 [ 4, %if.then31 ], [ %dim, %for.end ]
  %storemerge = getelementptr inbounds %struct.kdnode, %struct.kdnode* %3, i64 1, !dbg !134
  store %struct.kdnode* %storemerge, %struct.kdnode** %kdptr, align 8, !dbg !134, !tbaa !75
  %lo256 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %3, i64 0, i32 1, !dbg !135
  %sub258 = add nsw i32 %natom, -1, !dbg !136
  %68 = bitcast %struct.kdnode** %lo256 to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false), !dbg !138
  call fastcc void @buildkdtree(i32* noundef %call14302, i32* noundef %call5, i32* noundef %call6, i32* noundef %call7, i32* noundef %wn.0299, i32* noundef %call8, i32 noundef 0, i32 noundef %sub258, %struct.kdnode** noundef nonnull %kdptr, %struct.kdnode* noundef nonnull %3, double* noundef %x, i32 noundef 0, i32 noundef %dim.sink), !dbg !137
  call void @llvm.dbg.value(metadata i32 0, metadata !43, metadata !DIExpression()), !dbg !59
  %call33 = call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !139
  call void @llvm.dbg.value(metadata i32* %call33, metadata !53, metadata !DIExpression()), !dbg !59
  %call34 = call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !141
  call void @llvm.dbg.value(metadata i32* %call34, metadata !54, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !59
  br i1 %cmp15264304, label %for.body38.preheader, label %for.end122, !dbg !142

for.body38.preheader:                             ; preds = %if.end32
  %wide.trip.count292 = zext i32 %natom to i64, !dbg !144
  br label %for.body38, !dbg !142

for.body38:                                       ; preds = %for.body38.preheader, %for.end117
  %indvars.iv289 = phi i64 [ 0, %for.body38.preheader ], [ %indvars.iv.next290, %for.end117 ]
  %totpair.0272 = phi i32 [ 0, %for.body38.preheader ], [ %add119, %for.end117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv289, metadata !39, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %totpair.0272, metadata !43, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %upcnt, align 4, !dbg !146, !tbaa !96
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %locnt, align 4, !dbg !148, !tbaa !96
  call void @llvm.dbg.value(metadata i32* %locnt, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !59
  call void @llvm.dbg.value(metadata i32* %upcnt, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !59
  %69 = trunc i64 %indvars.iv289 to i32, !dbg !149
  call fastcc void @searchkdtree(%struct.kdnode* noundef nonnull %3, double* noundef %x, i32 noundef 0, i32 noundef %69, i32* noundef nonnull %locnt, i32* noundef nonnull %upcnt, i32* noundef %call33, i32* noundef %call34, double noundef %cutoff, double noundef %mul, i32 noundef %dim, i32* noundef %frozen), !dbg !149
  %70 = load i32, i32* %locnt, align 4, !dbg !150, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %70, metadata !41, metadata !DIExpression()), !dbg !59
  call fastcc void @heapsort_pairs(i32* noundef %call33, i32 noundef %70), !dbg !151
  %71 = load i32, i32* %upcnt, align 4, !dbg !152, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %71, metadata !42, metadata !DIExpression()), !dbg !59
  call fastcc void @heapsort_pairs(i32* noundef %call34, i32 noundef %71), !dbg !153
  %arrayidx40 = getelementptr inbounds i32*, i32** %pearlist, i64 %indvars.iv289, !dbg !154
  %72 = load i32*, i32** %arrayidx40, align 8, !dbg !154, !tbaa !75
  %cmp41 = icmp eq i32* %72, null, !dbg !156
  %73 = load i32, i32* %locnt, align 4, !dbg !157, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %73, metadata !41, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %73, metadata !41, metadata !DIExpression()), !dbg !59
  %74 = load i32, i32* %upcnt, align 4, !dbg !157, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %74, metadata !42, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %74, metadata !42, metadata !DIExpression()), !dbg !59
  %add = add nsw i32 %74, %73, !dbg !157
  br i1 %cmp41, label %land.lhs.true, label %land.lhs.true54, !dbg !158

land.lhs.true:                                    ; preds = %for.body38
  %cmp43 = icmp sgt i32 %add, 0, !dbg !159
  br i1 %cmp43, label %if.end86thread-pre-split.sink.split, label %if.end86, !dbg !160

land.lhs.true54:                                  ; preds = %for.body38
  %arrayidx57 = getelementptr inbounds i32, i32* %lpears, i64 %indvars.iv289, !dbg !161
  %75 = load i32, i32* %arrayidx57, align 4, !dbg !161, !tbaa !96
  %arrayidx59 = getelementptr inbounds i32, i32* %upears, i64 %indvars.iv289, !dbg !163
  %76 = load i32, i32* %arrayidx59, align 4, !dbg !163, !tbaa !96
  %add60 = add nsw i32 %76, %75, !dbg !164
  %cmp61 = icmp sgt i32 %add, %add60, !dbg !165
  br i1 %cmp61, label %if.then73, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %land.lhs.true54
  %mul64 = shl nsw i32 %add, 2, !dbg !167
  %mul70 = mul nsw i32 %add60, 3, !dbg !168
  %cmp71 = icmp slt i32 %mul64, %mul70, !dbg !169
  br i1 %cmp71, label %if.then73, label %if.end86thread-pre-split, !dbg !170

if.then73:                                        ; preds = %lor.lhs.false, %land.lhs.true54
  call void @free_ivector(i32* noundef nonnull %72, i32 noundef 0, i32 noundef %add60) #12, !dbg !171
  %77 = load i32, i32* %locnt, align 4, !dbg !173, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %77, metadata !41, metadata !DIExpression()), !dbg !59
  %78 = load i32, i32* %upcnt, align 4, !dbg !174, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %78, metadata !42, metadata !DIExpression()), !dbg !59
  %add81 = add nsw i32 %78, %77, !dbg !175
  br label %if.end86thread-pre-split.sink.split, !dbg !176

if.end86thread-pre-split.sink.split:              ; preds = %land.lhs.true, %if.then73
  %add81.sink = phi i32 [ %add81, %if.then73 ], [ %add, %land.lhs.true ]
  %call82 = call i32* @ivector(i32 noundef 0, i32 noundef %add81.sink) #12, !dbg !157
  store i32* %call82, i32** %arrayidx40, align 8, !dbg !157, !tbaa !75
  br label %if.end86thread-pre-split, !dbg !177

if.end86thread-pre-split:                         ; preds = %if.end86thread-pre-split.sink.split, %lor.lhs.false
  %.ph = phi i32* [ %72, %lor.lhs.false ], [ %call82, %if.end86thread-pre-split.sink.split ]
  %.pr = load i32, i32* %locnt, align 4, !dbg !177, !tbaa !96
  br label %if.end86, !dbg !177

if.end86:                                         ; preds = %if.end86thread-pre-split, %land.lhs.true
  %79 = phi i32 [ %.pr, %if.end86thread-pre-split ], [ %73, %land.lhs.true ], !dbg !177
  %80 = phi i32* [ %.ph, %if.end86thread-pre-split ], [ null, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !41, metadata !DIExpression()), !dbg !59
  %arrayidx88 = getelementptr inbounds i32, i32* %lpears, i64 %indvars.iv289, !dbg !178
  store i32 %79, i32* %arrayidx88, align 4, !dbg !179, !tbaa !96
  %81 = load i32, i32* %upcnt, align 4, !dbg !180, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %81, metadata !42, metadata !DIExpression()), !dbg !59
  %arrayidx90 = getelementptr inbounds i32, i32* %upears, i64 %indvars.iv289, !dbg !181
  store i32 %81, i32* %arrayidx90, align 4, !dbg !182, !tbaa !96
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !59
  %cmp92267 = icmp sgt i32 %79, 0, !dbg !183
  br i1 %cmp92267, label %for.body94, label %for.cond104.preheader, !dbg !186

for.cond104.preheader.loopexit:                   ; preds = %for.body94
  %.pre = load i32, i32* %upcnt, align 4, !dbg !187, !tbaa !96
  br label %for.cond104.preheader, !dbg !187

for.cond104.preheader:                            ; preds = %for.cond104.preheader.loopexit, %if.end86
  %82 = phi i32 [ %87, %for.cond104.preheader.loopexit ], [ %79, %if.end86 ]
  %83 = phi i32 [ %.pre, %for.cond104.preheader.loopexit ], [ %81, %if.end86 ], !dbg !187
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %83, metadata !42, metadata !DIExpression()), !dbg !59
  %cmp105269 = icmp sgt i32 %83, 0, !dbg !190
  br i1 %cmp105269, label %for.body107.preheader, label %for.end117, !dbg !191

for.body107.preheader:                            ; preds = %for.cond104.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !40, metadata !DIExpression()), !dbg !59
  %84 = load i32, i32* %call34, align 4, !dbg !192, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %82, metadata !41, metadata !DIExpression()), !dbg !59
  %idxprom113319 = sext i32 %82 to i64, !dbg !194
  %arrayidx114320 = getelementptr inbounds i32, i32* %80, i64 %idxprom113319, !dbg !194
  store i32 %84, i32* %arrayidx114320, align 4, !dbg !195, !tbaa !96
  call void @llvm.dbg.value(metadata i64 1, metadata !40, metadata !DIExpression()), !dbg !59
  %85 = load i32, i32* %upcnt, align 4, !dbg !187, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %85, metadata !42, metadata !DIExpression()), !dbg !59
  %cmp105321 = icmp sgt i32 %85, 1, !dbg !190
  br i1 %cmp105321, label %for.body107.for.body107_crit_edge, label %for.end117.loopexit, !dbg !191, !llvm.loop !196

for.body94:                                       ; preds = %if.end86, %for.body94
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %for.body94 ], [ 0, %if.end86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv283, metadata !40, metadata !DIExpression()), !dbg !59
  %arrayidx96 = getelementptr inbounds i32, i32* %call33, i64 %indvars.iv283, !dbg !198
  %86 = load i32, i32* %arrayidx96, align 4, !dbg !198, !tbaa !96
  %arrayidx100 = getelementptr inbounds i32, i32* %80, i64 %indvars.iv283, !dbg !200
  store i32 %86, i32* %arrayidx100, align 4, !dbg !201, !tbaa !96
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1, !dbg !202
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next284, metadata !40, metadata !DIExpression()), !dbg !59
  %87 = load i32, i32* %locnt, align 4, !dbg !203, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %87, metadata !41, metadata !DIExpression()), !dbg !59
  %88 = sext i32 %87 to i64, !dbg !183
  %cmp92 = icmp slt i64 %indvars.iv.next284, %88, !dbg !183
  br i1 %cmp92, label %for.body94, label %for.cond104.preheader.loopexit, !dbg !186, !llvm.loop !204

for.body107.for.body107_crit_edge:                ; preds = %for.body107.preheader, %for.body107.for.body107_crit_edge
  %indvars.iv.next287322 = phi i64 [ %indvars.iv.next287, %for.body107.for.body107_crit_edge ], [ 1, %for.body107.preheader ]
  %.pre294 = load i32, i32* %locnt, align 4, !dbg !206, !tbaa !96
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next287322, metadata !40, metadata !DIExpression()), !dbg !59
  %arrayidx109 = getelementptr inbounds i32, i32* %call34, i64 %indvars.iv.next287322, !dbg !192
  %89 = load i32, i32* %arrayidx109, align 4, !dbg !192, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %.pre294, metadata !41, metadata !DIExpression()), !dbg !59
  %90 = trunc i64 %indvars.iv.next287322 to i32, !dbg !207
  %add112 = add nsw i32 %.pre294, %90, !dbg !207
  %idxprom113 = sext i32 %add112 to i64, !dbg !194
  %arrayidx114 = getelementptr inbounds i32, i32* %80, i64 %idxprom113, !dbg !194
  store i32 %89, i32* %arrayidx114, align 4, !dbg !195, !tbaa !96
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv.next287322, 1, !dbg !208
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next287, metadata !40, metadata !DIExpression()), !dbg !59
  %91 = load i32, i32* %upcnt, align 4, !dbg !187, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %91, metadata !42, metadata !DIExpression()), !dbg !59
  %92 = sext i32 %91 to i64, !dbg !190
  %cmp105 = icmp slt i64 %indvars.iv.next287, %92, !dbg !190
  br i1 %cmp105, label %for.body107.for.body107_crit_edge, label %for.end117.loopexit, !dbg !191, !llvm.loop !196

for.end117.loopexit:                              ; preds = %for.body107.for.body107_crit_edge, %for.body107.preheader
  %.lcssa317 = phi i32 [ %85, %for.body107.preheader ], [ %91, %for.body107.for.body107_crit_edge ], !dbg !187
  %.pre295 = load i32, i32* %locnt, align 4, !dbg !209, !tbaa !96
  br label %for.end117, !dbg !209

for.end117:                                       ; preds = %for.end117.loopexit, %for.cond104.preheader
  %93 = phi i32 [ %82, %for.cond104.preheader ], [ %.pre295, %for.end117.loopexit ], !dbg !209
  %.lcssa = phi i32 [ %83, %for.cond104.preheader ], [ %.lcssa317, %for.end117.loopexit ], !dbg !187
  call void @llvm.dbg.value(metadata i32 %93, metadata !41, metadata !DIExpression()), !dbg !59
  %add118 = add i32 %.lcssa, %totpair.0272, !dbg !210
  %add119 = add i32 %add118, %93, !dbg !211
  call void @llvm.dbg.value(metadata i32 %add119, metadata !43, metadata !DIExpression()), !dbg !59
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1, !dbg !212
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next290, metadata !39, metadata !DIExpression()), !dbg !59
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292, !dbg !144
  br i1 %exitcond293.not, label %for.end122, label %for.body38, !dbg !142, !llvm.loop !213

for.end122:                                       ; preds = %for.end117, %if.end32
  %totpair.0.lcssa = phi i32 [ 0, %if.end32 ], [ %add119, %for.end117 ], !dbg !59
  call void @free_ivector(i32* noundef %call33, i32 noundef 0, i32 noundef %natom) #12, !dbg !215
  call void @free_ivector(i32* noundef %call34, i32 noundef 0, i32 noundef %natom) #12, !dbg !216
  call void @free(i8* noundef %call2) #12, !dbg !217
  call void @free_ivector(i32* noundef %call5, i32 noundef 0, i32 noundef %natom) #12, !dbg !218
  call void @free_ivector(i32* noundef %call6, i32 noundef 0, i32 noundef %natom) #12, !dbg !219
  call void @free_ivector(i32* noundef %call7, i32 noundef 0, i32 noundef %natom) #12, !dbg !220
  call void @free_ivector(i32* noundef %call8, i32 noundef 0, i32 noundef %natom) #12, !dbg !221
  br i1 %cmp9, label %if.then125, label %if.end126, !dbg !222

if.then125:                                       ; preds = %for.end122
  call void @free_ivector(i32* noundef %wn.0299, i32 noundef 0, i32 noundef %natom) #12, !dbg !223
  br label %if.end126, !dbg !226

if.end126:                                        ; preds = %if.then125, %for.end122
  call void @free_ivector(i32* noundef %call14302, i32 noundef 0, i32 noundef %natom) #12, !dbg !227
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12, !dbg !228
  ret i32 %totpair.0.lcssa, !dbg !229
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !230 dso_local i32 @get_blocksize() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !234 dso_local i32* @ivector(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @heapsort_index(i32* nocapture noundef %a, i32 noundef %n, double* nocapture noundef readonly %x, i32 noundef %p, i32 noundef %dim) unnamed_addr #6 !dbg !237 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !241, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %n, metadata !242, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double* %x, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %p, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %dim, metadata !245, metadata !DIExpression()), !dbg !248
  %div = sdiv i32 %n, 2, !dbg !249
  call void @llvm.dbg.value(metadata i32 %div, metadata !246, metadata !DIExpression()), !dbg !248
  %cmp79 = icmp sgt i32 %n, 1, !dbg !251
  br i1 %cmp79, label %for.body.preheader, label %while.end, !dbg !253

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64, !dbg !253
  %1 = sext i32 %div to i64, !dbg !253
  br label %for.body, !dbg !253

while.cond.preheader:                             ; preds = %downheap_index.exit
  call void @llvm.dbg.value(metadata i32 %n, metadata !242, metadata !DIExpression()), !dbg !248
  br i1 %cmp79, label %while.body.preheader, label %while.end, !dbg !254

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %n to i64, !dbg !254
  br label %while.body, !dbg !254

for.body:                                         ; preds = %for.body.preheader, %downheap_index.exit
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %downheap_index.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32* %a, metadata !255, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %n, metadata !260, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double* %x, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %p, metadata !263, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %dim, metadata !264, metadata !DIExpression()), !dbg !267
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !269
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !269
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx.i = getelementptr inbounds i32, i32* %a, i64 %3, !dbg !270
  %4 = load i32, i32* %arrayidx.i, align 4, !dbg !270, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %4, metadata !266, metadata !DIExpression()), !dbg !267
  %cmp.not68.i = icmp sgt i64 %indvars.iv, %1, !dbg !271
  br i1 %cmp.not68.i, label %downheap_index.exit, label %while.body.lr.ph.i, !dbg !272

while.body.lr.ph.i:                               ; preds = %for.body
  %mul15.i = mul nsw i32 %4, %dim
  %add16.i = add nsw i32 %mul15.i, %p
  %idxprom17.i = sext i32 %add16.i to i64
  %arrayidx18.i = getelementptr inbounds double, double* %x, i64 %idxprom17.i
  %5 = load double, double* %arrayidx18.i, align 8, !tbaa !273
  %6 = trunc i64 %indvars.iv to i32, !dbg !272
  br label %while.body.i, !dbg !272

while.body.i:                                     ; preds = %if.end28.i, %while.body.lr.ph.i
  %k.addr.069.i = phi i32 [ %6, %while.body.lr.ph.i ], [ %j.0.i, %if.end28.i ]
  call void @llvm.dbg.value(metadata i32 %k.addr.069.i, metadata !261, metadata !DIExpression()), !dbg !267
  %add.i = shl nsw i32 %k.addr.069.i, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !265, metadata !DIExpression()), !dbg !267
  %cmp1.i = icmp slt i32 %add.i, %n, !dbg !277
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i, !dbg !279

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub2.i = add nsw i32 %add.i, -1, !dbg !280
  %idxprom3.i = sext i32 %sub2.i to i64, !dbg !281
  %arrayidx4.i = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i, !dbg !281
  %7 = load i32, i32* %arrayidx4.i, align 4, !dbg !281, !tbaa !96
  %mul.i = mul nsw i32 %7, %dim, !dbg !282
  %add5.i = add nsw i32 %mul.i, %p, !dbg !283
  %idxprom6.i = sext i32 %add5.i to i64, !dbg !284
  %arrayidx7.i = getelementptr inbounds double, double* %x, i64 %idxprom6.i, !dbg !284
  %8 = load double, double* %arrayidx7.i, align 8, !dbg !284, !tbaa !273
  %idxprom8.i = sext i32 %add.i to i64, !dbg !285
  %arrayidx9.i = getelementptr inbounds i32, i32* %a, i64 %idxprom8.i, !dbg !285
  %9 = load i32, i32* %arrayidx9.i, align 4, !dbg !285, !tbaa !96
  %mul10.i = mul nsw i32 %9, %dim, !dbg !286
  %add11.i = add nsw i32 %mul10.i, %p, !dbg !287
  %idxprom12.i = sext i32 %add11.i to i64, !dbg !288
  %arrayidx13.i = getelementptr inbounds double, double* %x, i64 %idxprom12.i, !dbg !288
  %10 = load double, double* %arrayidx13.i, align 8, !dbg !288, !tbaa !273
  %cmp14.i = fcmp olt double %8, %10, !dbg !289
  br i1 %cmp14.i, label %if.then.i, label %if.end.i, !dbg !290

if.then.i:                                        ; preds = %land.lhs.true.i
  %inc.i = or i32 %add.i, 1, !dbg !291
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !265, metadata !DIExpression()), !dbg !267
  br label %if.end.i, !dbg !292

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i, %while.body.i
  %j.0.i = phi i32 [ %inc.i, %if.then.i ], [ %add.i, %land.lhs.true.i ], [ %add.i, %while.body.i ], !dbg !293
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !265, metadata !DIExpression()), !dbg !267
  %sub19.i = add nsw i32 %j.0.i, -1, !dbg !294
  %idxprom20.i = sext i32 %sub19.i to i64, !dbg !296
  %arrayidx21.i = getelementptr inbounds i32, i32* %a, i64 %idxprom20.i, !dbg !296
  %11 = load i32, i32* %arrayidx21.i, align 4, !dbg !296, !tbaa !96
  %mul22.i = mul nsw i32 %11, %dim, !dbg !297
  %add23.i = add nsw i32 %mul22.i, %p, !dbg !298
  %idxprom24.i = sext i32 %add23.i to i64, !dbg !299
  %arrayidx25.i = getelementptr inbounds double, double* %x, i64 %idxprom24.i, !dbg !299
  %12 = load double, double* %arrayidx25.i, align 8, !dbg !299, !tbaa !273
  %cmp26.i = fcmp ult double %5, %12, !dbg !300
  %sub32.i = add nsw i32 %k.addr.069.i, -1, !dbg !267
  br i1 %cmp26.i, label %if.end28.i, label %downheap_index.exit, !dbg !301

if.end28.i:                                       ; preds = %if.end.i
  %idxprom33.i = sext i32 %sub32.i to i64, !dbg !302
  %arrayidx34.i = getelementptr inbounds i32, i32* %a, i64 %idxprom33.i, !dbg !302
  store i32 %11, i32* %arrayidx34.i, align 4, !dbg !303, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !261, metadata !DIExpression()), !dbg !267
  %cmp.not.i = icmp sgt i32 %j.0.i, %div, !dbg !271
  br i1 %cmp.not.i, label %downheap_index.exit, label %while.body.i, !dbg !272, !llvm.loop !304

downheap_index.exit:                              ; preds = %if.end28.i, %if.end.i, %for.body
  %sub35.pre-phi.i = phi i32 [ %indvars, %for.body ], [ %sub19.i, %if.end28.i ], [ %sub32.i, %if.end.i ], !dbg !306
  %idxprom36.i = sext i32 %sub35.pre-phi.i to i64, !dbg !307
  %arrayidx37.i = getelementptr inbounds i32, i32* %a, i64 %idxprom36.i, !dbg !307
  store i32 %4, i32* %arrayidx37.i, align 4, !dbg !308, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !246, metadata !DIExpression()), !dbg !248
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !251
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !253, !llvm.loop !309

while.body:                                       ; preds = %while.body.preheader, %downheap_index.exit73
  %indvars.iv88 = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next89, %downheap_index.exit73 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv88, metadata !242, metadata !DIExpression()), !dbg !248
  %13 = load i32, i32* %a, align 4, !dbg !311, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %13, metadata !247, metadata !DIExpression()), !dbg !248
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -1, !dbg !313
  %indvars90 = trunc i64 %indvars.iv.next89 to i32, !dbg !313
  %14 = and i64 %indvars.iv.next89, 4294967295
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %14, !dbg !314
  %15 = load i32, i32* %arrayidx2, align 4, !dbg !314, !tbaa !96
  store i32 %15, i32* %a, align 4, !dbg !315, !tbaa !96
  store i32 %13, i32* %arrayidx2, align 4, !dbg !316, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars90, metadata !242, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32* %a, metadata !255, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %indvars90, metadata !260, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 1, metadata !261, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double* %x, metadata !262, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %p, metadata !263, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %dim, metadata !264, metadata !DIExpression()), !dbg !317
  %16 = load i32, i32* %a, align 4, !dbg !319, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %16, metadata !266, metadata !DIExpression()), !dbg !317
  %div.i2574 = lshr i32 %indvars90, 1
  %cmp.not68.i26 = icmp ult i32 %indvars90, 2, !dbg !320
  br i1 %cmp.not68.i26, label %downheap_index.exit73, label %while.body.lr.ph.i31, !dbg !321

while.body.lr.ph.i31:                             ; preds = %while.body
  %mul15.i27 = mul nsw i32 %16, %dim
  %add16.i28 = add nsw i32 %mul15.i27, %p
  %idxprom17.i29 = sext i32 %add16.i28 to i64
  %arrayidx18.i30 = getelementptr inbounds double, double* %x, i64 %idxprom17.i29
  %17 = load double, double* %arrayidx18.i30, align 8, !tbaa !273
  br label %while.body.i35, !dbg !321

while.body.i35:                                   ; preds = %if.end28.i69, %while.body.lr.ph.i31
  %k.addr.069.i32 = phi i32 [ 1, %while.body.lr.ph.i31 ], [ %j.0.i53, %if.end28.i69 ]
  call void @llvm.dbg.value(metadata i32 %k.addr.069.i32, metadata !261, metadata !DIExpression()), !dbg !317
  %add.i33 = shl nsw i32 %k.addr.069.i32, 1, !dbg !322
  call void @llvm.dbg.value(metadata i32 %add.i33, metadata !265, metadata !DIExpression()), !dbg !317
  %cmp1.i34 = icmp slt i32 %add.i33, %indvars90, !dbg !323
  br i1 %cmp1.i34, label %land.lhs.true.i50, label %if.end.i62, !dbg !324

land.lhs.true.i50:                                ; preds = %while.body.i35
  %sub2.i36 = add nsw i32 %add.i33, -1, !dbg !325
  %idxprom3.i37 = sext i32 %sub2.i36 to i64, !dbg !326
  %arrayidx4.i38 = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i37, !dbg !326
  %18 = load i32, i32* %arrayidx4.i38, align 4, !dbg !326, !tbaa !96
  %mul.i39 = mul nsw i32 %18, %dim, !dbg !327
  %add5.i40 = add nsw i32 %mul.i39, %p, !dbg !328
  %idxprom6.i41 = sext i32 %add5.i40 to i64, !dbg !329
  %arrayidx7.i42 = getelementptr inbounds double, double* %x, i64 %idxprom6.i41, !dbg !329
  %19 = load double, double* %arrayidx7.i42, align 8, !dbg !329, !tbaa !273
  %idxprom8.i43 = sext i32 %add.i33 to i64, !dbg !330
  %arrayidx9.i44 = getelementptr inbounds i32, i32* %a, i64 %idxprom8.i43, !dbg !330
  %20 = load i32, i32* %arrayidx9.i44, align 4, !dbg !330, !tbaa !96
  %mul10.i45 = mul nsw i32 %20, %dim, !dbg !331
  %add11.i46 = add nsw i32 %mul10.i45, %p, !dbg !332
  %idxprom12.i47 = sext i32 %add11.i46 to i64, !dbg !333
  %arrayidx13.i48 = getelementptr inbounds double, double* %x, i64 %idxprom12.i47, !dbg !333
  %21 = load double, double* %arrayidx13.i48, align 8, !dbg !333, !tbaa !273
  %cmp14.i49 = fcmp olt double %19, %21, !dbg !334
  br i1 %cmp14.i49, label %if.then.i52, label %if.end.i62, !dbg !335

if.then.i52:                                      ; preds = %land.lhs.true.i50
  %inc.i51 = or i32 %add.i33, 1, !dbg !336
  call void @llvm.dbg.value(metadata i32 %inc.i51, metadata !265, metadata !DIExpression()), !dbg !317
  br label %if.end.i62, !dbg !337

if.end.i62:                                       ; preds = %if.then.i52, %land.lhs.true.i50, %while.body.i35
  %j.0.i53 = phi i32 [ %inc.i51, %if.then.i52 ], [ %add.i33, %land.lhs.true.i50 ], [ %add.i33, %while.body.i35 ], !dbg !338
  call void @llvm.dbg.value(metadata i32 %j.0.i53, metadata !265, metadata !DIExpression()), !dbg !317
  %sub19.i54 = add nsw i32 %j.0.i53, -1, !dbg !339
  %idxprom20.i55 = sext i32 %sub19.i54 to i64, !dbg !340
  %arrayidx21.i56 = getelementptr inbounds i32, i32* %a, i64 %idxprom20.i55, !dbg !340
  %22 = load i32, i32* %arrayidx21.i56, align 4, !dbg !340, !tbaa !96
  %mul22.i57 = mul nsw i32 %22, %dim, !dbg !341
  %add23.i58 = add nsw i32 %mul22.i57, %p, !dbg !342
  %idxprom24.i59 = sext i32 %add23.i58 to i64, !dbg !343
  %arrayidx25.i60 = getelementptr inbounds double, double* %x, i64 %idxprom24.i59, !dbg !343
  %23 = load double, double* %arrayidx25.i60, align 8, !dbg !343, !tbaa !273
  %cmp26.i61 = fcmp ult double %17, %23, !dbg !344
  %sub32.i65 = add nsw i32 %k.addr.069.i32, -1, !dbg !317
  br i1 %cmp26.i61, label %if.end28.i69, label %downheap_index.exit73, !dbg !345

if.end28.i69:                                     ; preds = %if.end.i62
  %idxprom33.i66 = sext i32 %sub32.i65 to i64, !dbg !346
  %arrayidx34.i67 = getelementptr inbounds i32, i32* %a, i64 %idxprom33.i66, !dbg !346
  store i32 %22, i32* %arrayidx34.i67, align 4, !dbg !347, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i53, metadata !261, metadata !DIExpression()), !dbg !317
  %cmp.not.i68 = icmp sgt i32 %j.0.i53, %div.i2574, !dbg !320
  br i1 %cmp.not.i68, label %downheap_index.exit73, label %while.body.i35, !dbg !321, !llvm.loop !348

downheap_index.exit73:                            ; preds = %if.end28.i69, %if.end.i62, %while.body
  %sub35.pre-phi.i70 = phi i32 [ 0, %while.body ], [ %sub19.i54, %if.end28.i69 ], [ %sub32.i65, %if.end.i62 ], !dbg !350
  %idxprom36.i71 = sext i32 %sub35.pre-phi.i70 to i64, !dbg !351
  %arrayidx37.i72 = getelementptr inbounds i32, i32* %a, i64 %idxprom36.i71, !dbg !351
  store i32 %16, i32* %arrayidx37.i72, align 4, !dbg !352, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars90, metadata !242, metadata !DIExpression()), !dbg !248
  %cmp1 = icmp sgt i64 %indvars.iv88, 2, !dbg !353
  br i1 %cmp1, label %while.body, label %while.end, !dbg !254, !llvm.loop !354

while.end:                                        ; preds = %downheap_index.exit73, %entry, %while.cond.preheader
  ret void, !dbg !356
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @buildkdtree(i32* noundef %xn, i32* noundef %yn, i32* noundef %zn, i32* noundef %wn, i32* noundef %on, i32* noundef %tn, i32 noundef %start, i32 noundef %end, %struct.kdnode** noundef %kdpptr, %struct.kdnode* nocapture noundef writeonly %that, double* noundef %x, i32 noundef %p, i32 noundef %dim) unnamed_addr #7 !dbg !357 {
entry:
  call void @llvm.dbg.value(metadata i32* %xn, metadata !362, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %yn, metadata !363, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %zn, metadata !364, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %wn, metadata !365, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %on, metadata !366, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %tn, metadata !367, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %end, metadata !369, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdpptr, metadata !370, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode* %that, metadata !371, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata double* %x, metadata !372, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %p, metadata !373, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %dim, metadata !374, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata !DIArgList(i32 %p, i32 %dim), metadata !373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !381
  %cmp650668 = icmp eq i32 %end, %start, !dbg !382
  br i1 %cmp650668, label %if.then, label %if.else.lr.ph.preheader, !dbg !384

if.else.lr.ph.preheader:                          ; preds = %entry
  %add648666 = add nsw i32 %dim, 1, !dbg !385
  call void @llvm.dbg.value(metadata !DIArgList(i32 %p, i32 %add648666), metadata !373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !381
  %rem649667 = srem i32 %p, %add648666, !dbg !386
  call void @llvm.dbg.value(metadata i32 %rem649667, metadata !373, metadata !DIExpression()), !dbg !381
  %0 = add i32 %end, 1, !dbg !384
  br label %if.else.lr.ph, !dbg !384

if.else.lr.ph:                                    ; preds = %if.else.lr.ph.preheader, %if.else313
  %rem649676 = phi i32 [ %rem649, %if.else313 ], [ %rem649667, %if.else.lr.ph.preheader ]
  %dim.tr.ph675 = phi i32 [ %dim.tr658, %if.else313 ], [ %dim, %if.else.lr.ph.preheader ]
  %that.tr.ph674 = phi %struct.kdnode* [ %48, %if.else313 ], [ %that, %if.else.lr.ph.preheader ]
  %start.tr.ph673 = phi i32 [ %add310, %if.else313 ], [ %start, %if.else.lr.ph.preheader ]
  %tn.tr.ph672 = phi i32* [ %wn.tr.ph670, %if.else313 ], [ %tn, %if.else.lr.ph.preheader ]
  %on.tr.ph671 = phi i32* [ %on.tr652, %if.else313 ], [ %on, %if.else.lr.ph.preheader ]
  %wn.tr.ph670 = phi i32* [ %xn.tr651, %if.else313 ], [ %wn, %if.else.lr.ph.preheader ]
  %xn.tr.ph669 = phi i32* [ %tn.tr653, %if.else313 ], [ %xn, %if.else.lr.ph.preheader ]
  call void @llvm.dbg.value(metadata i32 %dim.tr.ph675, metadata !374, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode* %that.tr.ph674, metadata !371, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start.tr.ph673, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %tn.tr.ph672, metadata !367, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %on.tr.ph671, metadata !366, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %wn.tr.ph670, metadata !365, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %xn.tr.ph669, metadata !362, metadata !DIExpression()), !dbg !381
  br label %if.else, !dbg !384

if.then:                                          ; preds = %if.else313, %if.then309, %entry
  %xn.tr.lcssa = phi i32* [ %xn, %entry ], [ %tn.tr653, %if.then309 ], [ %tn.tr653, %if.else313 ]
  %that.tr.lcssa = phi %struct.kdnode* [ %that, %entry ], [ %48, %if.then309 ], [ %48, %if.else313 ]
  %idxprom = sext i32 %end to i64, !dbg !387
  %arrayidx = getelementptr inbounds i32, i32* %xn.tr.lcssa, i64 %idxprom, !dbg !387
  %1 = load i32, i32* %arrayidx, align 4, !dbg !387, !tbaa !96
  %n = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr.lcssa, i64 0, i32 0, !dbg !389
  store i32 %1, i32* %n, align 8, !dbg !390, !tbaa !391
  br label %if.end320, !dbg !393

if.else:                                          ; preds = %if.else.lr.ph, %if.then309
  %rem659 = phi i32 [ %rem649676, %if.else.lr.ph ], [ %rem, %if.then309 ]
  %dim.tr658 = phi i32 [ %dim.tr.ph675, %if.else.lr.ph ], [ 4, %if.then309 ]
  %that.tr657 = phi %struct.kdnode* [ %that.tr.ph674, %if.else.lr.ph ], [ %48, %if.then309 ]
  %start.tr654 = phi i32 [ %start.tr.ph673, %if.else.lr.ph ], [ %add310, %if.then309 ]
  %tn.tr653 = phi i32* [ %tn.tr.ph672, %if.else.lr.ph ], [ %on.tr652, %if.then309 ]
  %on.tr652 = phi i32* [ %on.tr.ph671, %if.else.lr.ph ], [ %xn.tr651, %if.then309 ]
  %xn.tr651 = phi i32* [ %xn.tr.ph669, %if.else.lr.ph ], [ %tn.tr653, %if.then309 ]
  call void @llvm.dbg.value(metadata i32 %dim.tr658, metadata !374, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode* %that.tr657, metadata !371, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %tn.tr653, metadata !367, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %on.tr652, metadata !366, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %xn.tr651, metadata !362, metadata !DIExpression()), !dbg !381
  %add1 = add nsw i32 %start.tr654, 1, !dbg !394
  %cmp2 = icmp eq i32 %add1, %end, !dbg !396
  br i1 %cmp2, label %if.then3, label %if.else82, !dbg !397

if.then3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %rem659, 0, !dbg !398
  %idxprom5 = sext i32 %start.tr654 to i64, !dbg !401
  %arrayidx6 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom5, !dbg !401
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !401, !tbaa !96
  br i1 %cmp4, label %land.lhs.true, label %land.lhs.true11, !dbg !402

land.lhs.true:                                    ; preds = %if.then3
  %idxprom7 = sext i32 %end to i64, !dbg !403
  %arrayidx8 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom7, !dbg !403
  %3 = load i32, i32* %arrayidx8, align 4, !dbg !403, !tbaa !96
  %cmp9 = icmp slt i32 %2, %3, !dbg !404
  br i1 %cmp9, label %if.then25, label %land.lhs.true35, !dbg !405

land.lhs.true11:                                  ; preds = %if.then3
  %mul = mul nsw i32 %2, %dim.tr658, !dbg !406
  %add14 = add nsw i32 %rem659, -1, !dbg !407
  %sub = add i32 %add14, %mul, !dbg !408
  %idxprom15 = sext i32 %sub to i64, !dbg !409
  %arrayidx16 = getelementptr inbounds double, double* %x, i64 %idxprom15, !dbg !409
  %4 = load double, double* %arrayidx16, align 8, !dbg !409, !tbaa !273
  %idxprom17 = sext i32 %end to i64, !dbg !410
  %arrayidx18 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom17, !dbg !410
  %5 = load i32, i32* %arrayidx18, align 4, !dbg !410, !tbaa !96
  %mul19 = mul nsw i32 %5, %dim.tr658, !dbg !411
  %sub21 = add i32 %add14, %mul19, !dbg !412
  %idxprom22 = sext i32 %sub21 to i64, !dbg !413
  %arrayidx23 = getelementptr inbounds double, double* %x, i64 %idxprom22, !dbg !413
  %6 = load double, double* %arrayidx23, align 8, !dbg !413, !tbaa !273
  %cmp24 = fcmp olt double %4, %6, !dbg !414
  br i1 %cmp24, label %if.then25, label %land.lhs.true43, !dbg !415

if.then25:                                        ; preds = %land.lhs.true11, %land.lhs.true
  %7 = phi i32 [ %5, %land.lhs.true11 ], [ %3, %land.lhs.true ], !dbg !416
  %n28 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !418
  store i32 %7, i32* %n28, align 8, !dbg !419, !tbaa !391
  %arrayidx30 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom5, !dbg !420
  %8 = load i32, i32* %arrayidx30, align 4, !dbg !420, !tbaa !96
  %9 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !421, !tbaa !75
  %n31 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !422
  store i32 %8, i32* %n31, align 8, !dbg !423, !tbaa !391
  %lo = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !424
  store %struct.kdnode* null, %struct.kdnode** %lo, align 8, !dbg !425, !tbaa !426
  %10 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !427, !tbaa !75
  %hi = getelementptr inbounds %struct.kdnode, %struct.kdnode* %10, i64 0, i32 2, !dbg !428
  store %struct.kdnode* null, %struct.kdnode** %hi, align 8, !dbg !429, !tbaa !430
  %11 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !431, !tbaa !75
  %incdec.ptr = getelementptr inbounds %struct.kdnode, %struct.kdnode* %11, i64 1, !dbg !431
  store %struct.kdnode* %incdec.ptr, %struct.kdnode** %kdpptr, align 8, !dbg !431, !tbaa !75
  %lo32 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 1, !dbg !432
  store %struct.kdnode* %11, %struct.kdnode** %lo32, align 8, !dbg !433, !tbaa !426
  br label %if.end320, !dbg !434

land.lhs.true35:                                  ; preds = %land.lhs.true
  %cmp40 = icmp sgt i32 %2, %3, !dbg !435
  br i1 %cmp40, label %if.then59, label %if.else70, !dbg !437

land.lhs.true43:                                  ; preds = %land.lhs.true11
  %cmp58 = fcmp ogt double %4, %6, !dbg !438
  br i1 %cmp58, label %if.then59, label %if.else70, !dbg !439

if.then59:                                        ; preds = %land.lhs.true43, %land.lhs.true35
  %idxprom63.pre-phi = phi i64 [ %idxprom17, %land.lhs.true43 ], [ %idxprom7, %land.lhs.true35 ], !dbg !440
  %n62 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !442
  store i32 %2, i32* %n62, align 8, !dbg !443, !tbaa !391
  %arrayidx64 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom63.pre-phi, !dbg !440
  %12 = load i32, i32* %arrayidx64, align 4, !dbg !440, !tbaa !96
  %13 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !444, !tbaa !75
  %n65 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %13, i64 0, i32 0, !dbg !445
  store i32 %12, i32* %n65, align 8, !dbg !446, !tbaa !391
  %lo66 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %13, i64 0, i32 1, !dbg !447
  store %struct.kdnode* null, %struct.kdnode** %lo66, align 8, !dbg !448, !tbaa !426
  %14 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !449, !tbaa !75
  %hi67 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %14, i64 0, i32 2, !dbg !450
  store %struct.kdnode* null, %struct.kdnode** %hi67, align 8, !dbg !451, !tbaa !430
  %15 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !452, !tbaa !75
  %incdec.ptr68 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %15, i64 1, !dbg !452
  store %struct.kdnode* %incdec.ptr68, %struct.kdnode** %kdpptr, align 8, !dbg !452, !tbaa !75
  %lo69 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 1, !dbg !453
  store %struct.kdnode* %15, %struct.kdnode** %lo69, align 8, !dbg !454, !tbaa !426
  br label %if.end320, !dbg !455

if.else70:                                        ; preds = %land.lhs.true35, %land.lhs.true43
  %idxprom74.pre-phi = phi i64 [ %idxprom7, %land.lhs.true35 ], [ %idxprom17, %land.lhs.true43 ], !dbg !456
  %n73 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !458
  store i32 %2, i32* %n73, align 8, !dbg !459, !tbaa !391
  %arrayidx75 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom74.pre-phi, !dbg !456
  %16 = load i32, i32* %arrayidx75, align 4, !dbg !456, !tbaa !96
  %17 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !460, !tbaa !75
  %n76 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %17, i64 0, i32 0, !dbg !461
  store i32 %16, i32* %n76, align 8, !dbg !462, !tbaa !391
  %lo77 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %17, i64 0, i32 1, !dbg !463
  store %struct.kdnode* null, %struct.kdnode** %lo77, align 8, !dbg !464, !tbaa !426
  %18 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !465, !tbaa !75
  %hi78 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %18, i64 0, i32 2, !dbg !466
  store %struct.kdnode* null, %struct.kdnode** %hi78, align 8, !dbg !467, !tbaa !430
  %19 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !468, !tbaa !75
  %incdec.ptr79 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %19, i64 1, !dbg !468
  store %struct.kdnode* %incdec.ptr79, %struct.kdnode** %kdpptr, align 8, !dbg !468, !tbaa !75
  %hi80 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 2, !dbg !469
  store %struct.kdnode* %19, %struct.kdnode** %hi80, align 8, !dbg !470, !tbaa !430
  br label %if.end320

if.else82:                                        ; preds = %if.else
  %add83 = add nsw i32 %start.tr654, %end, !dbg !471
  %div = sdiv i32 %add83, 2, !dbg !473
  call void @llvm.dbg.value(metadata i32 %div, metadata !376, metadata !DIExpression()), !dbg !381
  %cmp84 = icmp eq i32 %rem659, 0, !dbg !474
  %idxprom86 = sext i32 %div to i64, !dbg !476
  %arrayidx87 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom86, !dbg !476
  %20 = load i32, i32* %arrayidx87, align 4, !dbg !476, !tbaa !96
  br i1 %cmp84, label %if.end109, label %if.else88, !dbg !477

if.else88:                                        ; preds = %if.else82
  %mul91 = mul nsw i32 %20, %dim.tr658, !dbg !478
  %add92 = add nsw i32 %rem659, -1, !dbg !480
  %sub93 = add i32 %add92, %mul91, !dbg !481
  %idxprom94 = sext i32 %sub93 to i64, !dbg !482
  %arrayidx95 = getelementptr inbounds double, double* %x, i64 %idxprom94, !dbg !482
  %21 = load double, double* %arrayidx95, align 8, !dbg !482, !tbaa !273
  call void @llvm.dbg.value(metadata double %21, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %div, metadata !375, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !381
  %22 = sext i32 %start.tr654 to i64, !dbg !483
  %smin = call i32 @llvm.smin.i32(i32 %start.tr654, i32 %div), !dbg !483
  br label %for.cond, !dbg !483

for.cond:                                         ; preds = %for.body, %if.else88
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom86, %if.else88 ], !dbg !485
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !486
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !376, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !375, metadata !DIExpression()), !dbg !381
  %cmp97.not.not = icmp sgt i64 %indvars.iv, %22, !dbg !487
  br i1 %cmp97.not.not, label %for.body, label %if.end109.loopexit, !dbg !489

for.body:                                         ; preds = %for.cond
  %arrayidx99 = getelementptr inbounds i32, i32* %xn.tr651, i64 %indvars.iv.next, !dbg !490
  %23 = load i32, i32* %arrayidx99, align 4, !dbg !490, !tbaa !96
  %mul100 = mul nsw i32 %23, %dim.tr658, !dbg !493
  %sub102 = add i32 %add92, %mul100, !dbg !494
  %idxprom103 = sext i32 %sub102 to i64, !dbg !495
  %arrayidx104 = getelementptr inbounds double, double* %x, i64 %idxprom103, !dbg !495
  %24 = load double, double* %arrayidx104, align 8, !dbg !495, !tbaa !273
  %cmp105 = fcmp olt double %24, %21, !dbg !496
  br i1 %cmp105, label %if.end109.loopexit.split.loop.exit, label %for.cond, !dbg !497, !llvm.loop !498

if.end109.loopexit.split.loop.exit:               ; preds = %for.body
  %25 = trunc i64 %indvars.iv to i32, !dbg !489
  br label %if.end109.loopexit, !dbg !500

if.end109.loopexit:                               ; preds = %for.cond, %if.end109.loopexit.split.loop.exit
  %middle.0.lcssa = phi i32 [ %25, %if.end109.loopexit.split.loop.exit ], [ %smin, %for.cond ], !dbg !485
  %.pre = sext i32 %middle.0.lcssa to i64, !dbg !500
  %arrayidx111.phi.trans.insert = getelementptr inbounds i32, i32* %xn.tr651, i64 %.pre
  %.pre730 = load i32, i32* %arrayidx111.phi.trans.insert, align 4, !dbg !500, !tbaa !96
  br label %if.end109, !dbg !500

if.end109:                                        ; preds = %if.else82, %if.end109.loopexit
  %add134.pre-phi = phi i32 [ %add92, %if.end109.loopexit ], [ -1, %if.else82 ]
  %26 = phi i32 [ %.pre730, %if.end109.loopexit ], [ %20, %if.else82 ], !dbg !500
  %idxprom110.pre-phi = phi i64 [ %.pre, %if.end109.loopexit ], [ %idxprom86, %if.else82 ], !dbg !500
  %middle.1 = phi i32 [ %middle.0.lcssa, %if.end109.loopexit ], [ %div, %if.else82 ], !dbg !501
  %median.0 = phi double [ %21, %if.end109.loopexit ], [ undef, %if.else82 ]
  call void @llvm.dbg.value(metadata double %median.0, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %20, metadata !377, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !376, metadata !DIExpression()), !dbg !381
  %arrayidx111 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom110.pre-phi, !dbg !500
  %n112 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !502
  store i32 %26, i32* %n112, align 8, !dbg !503, !tbaa !391
  %sub113 = add nsw i32 %start.tr654, -1, !dbg !504
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !375, metadata !DIExpression()), !dbg !381
  %cmp115.not621 = icmp sgt i32 %start.tr654, %end, !dbg !505
  br i1 %cmp115.not621, label %for.end240, label %for.body116.preheader, !dbg !508

for.body116.preheader:                            ; preds = %if.end109
  %27 = sext i32 %start.tr654 to i64, !dbg !508
  br label %for.body116, !dbg !508

for.cond156.preheader:                            ; preds = %for.inc152
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !375, metadata !DIExpression()), !dbg !381
  br i1 %cmp115.not621, label %for.end240, label %for.body158.preheader, !dbg !509

for.body158.preheader:                            ; preds = %for.cond156.preheader
  %28 = sext i32 %start.tr654 to i64, !dbg !509
  br label %for.body158, !dbg !509

for.body116:                                      ; preds = %for.body116.preheader, %for.inc152
  %indvars.iv712 = phi i64 [ %27, %for.body116.preheader ], [ %indvars.iv.next713, %for.inc152 ]
  %upper.0625 = phi i32 [ %middle.1, %for.body116.preheader ], [ %upper.1, %for.inc152 ]
  %lower.0623 = phi i32 [ %sub113, %for.body116.preheader ], [ %lower.1, %for.inc152 ]
  call void @llvm.dbg.value(metadata i32 %upper.0625, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.0623, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %indvars.iv712, metadata !375, metadata !DIExpression()), !dbg !381
  %arrayidx118 = getelementptr inbounds i32, i32* %yn, i64 %indvars.iv712, !dbg !511
  %29 = load i32, i32* %arrayidx118, align 4, !dbg !511, !tbaa !96
  %30 = load i32, i32* %arrayidx111, align 4, !dbg !514, !tbaa !96
  %cmp121.not = icmp eq i32 %29, %30, !dbg !515
  br i1 %cmp121.not, label %for.inc152, label %if.then122, !dbg !516

if.then122:                                       ; preds = %for.body116
  %cmp127 = icmp slt i32 %29, %20
  %or.cond = select i1 %cmp84, i1 %cmp127, i1 false, !dbg !517
  br i1 %or.cond, label %if.then139, label %lor.lhs.false128, !dbg !517

lor.lhs.false128:                                 ; preds = %if.then122
  br i1 %cmp84, label %if.else144, label %land.lhs.true130, !dbg !520

land.lhs.true130:                                 ; preds = %lor.lhs.false128
  %mul133 = mul nsw i32 %29, %dim.tr658, !dbg !521
  %sub135 = add i32 %add134.pre-phi, %mul133, !dbg !522
  %idxprom136 = sext i32 %sub135 to i64, !dbg !523
  %arrayidx137 = getelementptr inbounds double, double* %x, i64 %idxprom136, !dbg !523
  %31 = load double, double* %arrayidx137, align 8, !dbg !523, !tbaa !273
  %cmp138 = fcmp olt double %31, %median.0, !dbg !524
  br i1 %cmp138, label %if.then139, label %if.else144, !dbg !525

if.then139:                                       ; preds = %if.then122, %land.lhs.true130
  %inc = add nsw i32 %lower.0623, 1, !dbg !526
  call void @llvm.dbg.value(metadata i32 %inc, metadata !378, metadata !DIExpression()), !dbg !381
  br label %for.inc152.sink.split, !dbg !528

if.else144:                                       ; preds = %land.lhs.true130, %lor.lhs.false128
  %inc147 = add nsw i32 %upper.0625, 1, !dbg !529
  call void @llvm.dbg.value(metadata i32 %inc147, metadata !379, metadata !DIExpression()), !dbg !381
  br label %for.inc152.sink.split

for.inc152.sink.split:                            ; preds = %if.then139, %if.else144
  %inc147.sink = phi i32 [ %inc147, %if.else144 ], [ %inc, %if.then139 ]
  %lower.1.ph = phi i32 [ %lower.0623, %if.else144 ], [ %inc, %if.then139 ]
  %upper.1.ph = phi i32 [ %inc147, %if.else144 ], [ %upper.0625, %if.then139 ]
  %idxprom148 = sext i32 %inc147.sink to i64, !dbg !531
  %arrayidx149 = getelementptr inbounds i32, i32* %tn.tr653, i64 %idxprom148, !dbg !531
  store i32 %29, i32* %arrayidx149, align 4, !dbg !531, !tbaa !96
  br label %for.inc152, !dbg !532

for.inc152:                                       ; preds = %for.inc152.sink.split, %for.body116
  %lower.1 = phi i32 [ %lower.0623, %for.body116 ], [ %lower.1.ph, %for.inc152.sink.split ], !dbg !485
  %upper.1 = phi i32 [ %upper.0625, %for.body116 ], [ %upper.1.ph, %for.inc152.sink.split ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %upper.1, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.1, metadata !378, metadata !DIExpression()), !dbg !381
  %indvars.iv.next713 = add nsw i64 %indvars.iv712, 1, !dbg !532
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next713, metadata !375, metadata !DIExpression()), !dbg !381
  %lftr.wideiv = trunc i64 %indvars.iv.next713 to i32, !dbg !505
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv, !dbg !505
  br i1 %exitcond.not, label %for.cond156.preheader, label %for.body116, !dbg !508, !llvm.loop !533

for.cond199.preheader:                            ; preds = %for.inc195
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !375, metadata !DIExpression()), !dbg !381
  br i1 %cmp115.not621, label %for.end240, label %for.body201.preheader, !dbg !535

for.body201.preheader:                            ; preds = %for.cond199.preheader
  %32 = sext i32 %start.tr654 to i64, !dbg !535
  br label %for.body201, !dbg !535

for.body158:                                      ; preds = %for.body158.preheader, %for.inc195
  %indvars.iv715 = phi i64 [ %28, %for.body158.preheader ], [ %indvars.iv.next716, %for.inc195 ]
  %upper.2631 = phi i32 [ %middle.1, %for.body158.preheader ], [ %upper.3, %for.inc195 ]
  %lower.2629 = phi i32 [ %sub113, %for.body158.preheader ], [ %lower.3, %for.inc195 ]
  call void @llvm.dbg.value(metadata i32 %upper.2631, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.2629, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %indvars.iv715, metadata !375, metadata !DIExpression()), !dbg !381
  %arrayidx160 = getelementptr inbounds i32, i32* %zn, i64 %indvars.iv715, !dbg !538
  %33 = load i32, i32* %arrayidx160, align 4, !dbg !538, !tbaa !96
  %34 = load i32, i32* %arrayidx111, align 4, !dbg !542, !tbaa !96
  %cmp163.not = icmp eq i32 %33, %34, !dbg !543
  br i1 %cmp163.not, label %for.inc195, label %if.then164, !dbg !544

if.then164:                                       ; preds = %for.body158
  %cmp169 = icmp slt i32 %33, %20
  %or.cond590 = select i1 %cmp84, i1 %cmp169, i1 false, !dbg !545
  br i1 %or.cond590, label %if.then181, label %lor.lhs.false170, !dbg !545

lor.lhs.false170:                                 ; preds = %if.then164
  br i1 %cmp84, label %if.else187, label %land.lhs.true172, !dbg !548

land.lhs.true172:                                 ; preds = %lor.lhs.false170
  %mul175 = mul nsw i32 %33, %dim.tr658, !dbg !549
  %sub177 = add i32 %add134.pre-phi, %mul175, !dbg !550
  %idxprom178 = sext i32 %sub177 to i64, !dbg !551
  %arrayidx179 = getelementptr inbounds double, double* %x, i64 %idxprom178, !dbg !551
  %35 = load double, double* %arrayidx179, align 8, !dbg !551, !tbaa !273
  %cmp180 = fcmp olt double %35, %median.0, !dbg !552
  br i1 %cmp180, label %if.then181, label %if.else187, !dbg !553

if.then181:                                       ; preds = %if.then164, %land.lhs.true172
  %inc184 = add nsw i32 %lower.2629, 1, !dbg !554
  call void @llvm.dbg.value(metadata i32 %inc184, metadata !378, metadata !DIExpression()), !dbg !381
  br label %for.inc195.sink.split, !dbg !556

if.else187:                                       ; preds = %land.lhs.true172, %lor.lhs.false170
  %inc190 = add nsw i32 %upper.2631, 1, !dbg !557
  call void @llvm.dbg.value(metadata i32 %inc190, metadata !379, metadata !DIExpression()), !dbg !381
  br label %for.inc195.sink.split

for.inc195.sink.split:                            ; preds = %if.then181, %if.else187
  %inc190.sink = phi i32 [ %inc190, %if.else187 ], [ %inc184, %if.then181 ]
  %lower.3.ph = phi i32 [ %lower.2629, %if.else187 ], [ %inc184, %if.then181 ]
  %upper.3.ph = phi i32 [ %inc190, %if.else187 ], [ %upper.2631, %if.then181 ]
  %idxprom191 = sext i32 %inc190.sink to i64, !dbg !559
  %arrayidx192 = getelementptr inbounds i32, i32* %yn, i64 %idxprom191, !dbg !559
  store i32 %33, i32* %arrayidx192, align 4, !dbg !559, !tbaa !96
  br label %for.inc195, !dbg !560

for.inc195:                                       ; preds = %for.inc195.sink.split, %for.body158
  %lower.3 = phi i32 [ %lower.2629, %for.body158 ], [ %lower.3.ph, %for.inc195.sink.split ], !dbg !485
  %upper.3 = phi i32 [ %upper.2631, %for.body158 ], [ %upper.3.ph, %for.inc195.sink.split ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %upper.3, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.3, metadata !378, metadata !DIExpression()), !dbg !381
  %indvars.iv.next716 = add nsw i64 %indvars.iv715, 1, !dbg !560
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next716, metadata !375, metadata !DIExpression()), !dbg !381
  %lftr.wideiv718 = trunc i64 %indvars.iv.next716 to i32, !dbg !561
  %exitcond719.not = icmp eq i32 %0, %lftr.wideiv718, !dbg !561
  br i1 %exitcond719.not, label %for.cond199.preheader, label %for.body158, !dbg !509, !llvm.loop !562

for.body201:                                      ; preds = %for.body201.preheader, %for.inc238
  %indvars.iv720 = phi i64 [ %32, %for.body201.preheader ], [ %indvars.iv.next721, %for.inc238 ]
  %upper.4637 = phi i32 [ %middle.1, %for.body201.preheader ], [ %upper.5, %for.inc238 ]
  %lower.4635 = phi i32 [ %sub113, %for.body201.preheader ], [ %lower.5, %for.inc238 ]
  call void @llvm.dbg.value(metadata i32 %upper.4637, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.4635, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %indvars.iv720, metadata !375, metadata !DIExpression()), !dbg !381
  %arrayidx203 = getelementptr inbounds i32, i32* %wn.tr.ph670, i64 %indvars.iv720, !dbg !564
  %36 = load i32, i32* %arrayidx203, align 4, !dbg !564, !tbaa !96
  %37 = load i32, i32* %arrayidx111, align 4, !dbg !568, !tbaa !96
  %cmp206.not = icmp eq i32 %36, %37, !dbg !569
  br i1 %cmp206.not, label %for.inc238, label %if.then207, !dbg !570

if.then207:                                       ; preds = %for.body201
  %cmp212 = icmp slt i32 %36, %20
  %or.cond591 = select i1 %cmp84, i1 %cmp212, i1 false, !dbg !571
  br i1 %or.cond591, label %if.then224, label %lor.lhs.false213, !dbg !571

lor.lhs.false213:                                 ; preds = %if.then207
  br i1 %cmp84, label %if.else230, label %land.lhs.true215, !dbg !574

land.lhs.true215:                                 ; preds = %lor.lhs.false213
  %mul218 = mul nsw i32 %36, %dim.tr658, !dbg !575
  %sub220 = add i32 %add134.pre-phi, %mul218, !dbg !576
  %idxprom221 = sext i32 %sub220 to i64, !dbg !577
  %arrayidx222 = getelementptr inbounds double, double* %x, i64 %idxprom221, !dbg !577
  %38 = load double, double* %arrayidx222, align 8, !dbg !577, !tbaa !273
  %cmp223 = fcmp olt double %38, %median.0, !dbg !578
  br i1 %cmp223, label %if.then224, label %if.else230, !dbg !579

if.then224:                                       ; preds = %if.then207, %land.lhs.true215
  %inc227 = add nsw i32 %lower.4635, 1, !dbg !580
  call void @llvm.dbg.value(metadata i32 %inc227, metadata !378, metadata !DIExpression()), !dbg !381
  br label %for.inc238.sink.split, !dbg !582

if.else230:                                       ; preds = %land.lhs.true215, %lor.lhs.false213
  %inc233 = add nsw i32 %upper.4637, 1, !dbg !583
  call void @llvm.dbg.value(metadata i32 %inc233, metadata !379, metadata !DIExpression()), !dbg !381
  br label %for.inc238.sink.split

for.inc238.sink.split:                            ; preds = %if.then224, %if.else230
  %inc233.sink = phi i32 [ %inc233, %if.else230 ], [ %inc227, %if.then224 ]
  %lower.5.ph = phi i32 [ %lower.4635, %if.else230 ], [ %inc227, %if.then224 ]
  %upper.5.ph = phi i32 [ %inc233, %if.else230 ], [ %upper.4637, %if.then224 ]
  %idxprom234 = sext i32 %inc233.sink to i64, !dbg !585
  %arrayidx235 = getelementptr inbounds i32, i32* %zn, i64 %idxprom234, !dbg !585
  store i32 %36, i32* %arrayidx235, align 4, !dbg !585, !tbaa !96
  br label %for.inc238, !dbg !586

for.inc238:                                       ; preds = %for.inc238.sink.split, %for.body201
  %lower.5 = phi i32 [ %lower.4635, %for.body201 ], [ %lower.5.ph, %for.inc238.sink.split ], !dbg !587
  %upper.5 = phi i32 [ %upper.4637, %for.body201 ], [ %upper.5.ph, %for.inc238.sink.split ], !dbg !587
  call void @llvm.dbg.value(metadata i32 %upper.5, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.5, metadata !378, metadata !DIExpression()), !dbg !381
  %indvars.iv.next721 = add nsw i64 %indvars.iv720, 1, !dbg !586
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next721, metadata !375, metadata !DIExpression()), !dbg !381
  %lftr.wideiv723 = trunc i64 %indvars.iv.next721 to i32, !dbg !588
  %exitcond724.not = icmp eq i32 %0, %lftr.wideiv723, !dbg !588
  br i1 %exitcond724.not, label %for.end240, label %for.body201, !dbg !535, !llvm.loop !589

for.end240:                                       ; preds = %for.inc238, %if.end109, %for.cond156.preheader, %for.cond199.preheader
  %lower.4.lcssa = phi i32 [ %sub113, %for.cond199.preheader ], [ %sub113, %for.cond156.preheader ], [ %sub113, %if.end109 ], [ %lower.5, %for.inc238 ], !dbg !587
  %upper.4.lcssa = phi i32 [ %middle.1, %for.cond199.preheader ], [ %middle.1, %for.cond156.preheader ], [ %middle.1, %if.end109 ], [ %upper.5, %for.inc238 ], !dbg !591
  %cmp241 = icmp eq i32 %dim.tr658, 4, !dbg !592
  br i1 %cmp241, label %for.cond244.preheader, label %if.end286, !dbg !594

for.cond244.preheader:                            ; preds = %for.end240
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !375, metadata !DIExpression()), !dbg !381
  br i1 %cmp115.not621, label %if.end320, label %for.body246.preheader, !dbg !595

for.body246.preheader:                            ; preds = %for.cond244.preheader
  %39 = sext i32 %start.tr654 to i64, !dbg !595
  br label %for.body246, !dbg !595

for.body246:                                      ; preds = %for.body246.preheader, %for.inc283
  %indvars.iv725 = phi i64 [ %39, %for.body246.preheader ], [ %indvars.iv.next726, %for.inc283 ]
  %upper.6644 = phi i32 [ %middle.1, %for.body246.preheader ], [ %upper.7, %for.inc283 ]
  %lower.6642 = phi i32 [ %sub113, %for.body246.preheader ], [ %lower.7, %for.inc283 ]
  call void @llvm.dbg.value(metadata i32 %upper.6644, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.6642, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %indvars.iv725, metadata !375, metadata !DIExpression()), !dbg !381
  %arrayidx248 = getelementptr inbounds i32, i32* %on.tr652, i64 %indvars.iv725, !dbg !598
  %40 = load i32, i32* %arrayidx248, align 4, !dbg !598, !tbaa !96
  %41 = load i32, i32* %arrayidx111, align 4, !dbg !602, !tbaa !96
  %cmp251.not = icmp eq i32 %40, %41, !dbg !603
  br i1 %cmp251.not, label %for.inc283, label %if.then252, !dbg !604

if.then252:                                       ; preds = %for.body246
  %cmp257 = icmp slt i32 %40, %20
  %or.cond592 = select i1 %cmp84, i1 %cmp257, i1 false, !dbg !605
  br i1 %or.cond592, label %if.then269, label %lor.lhs.false258, !dbg !605

lor.lhs.false258:                                 ; preds = %if.then252
  br i1 %cmp84, label %if.else275, label %land.lhs.true260, !dbg !608

land.lhs.true260:                                 ; preds = %lor.lhs.false258
  %mul263 = shl nsw i32 %40, 2, !dbg !609
  %sub265 = add i32 %add134.pre-phi, %mul263, !dbg !610
  %idxprom266 = sext i32 %sub265 to i64, !dbg !611
  %arrayidx267 = getelementptr inbounds double, double* %x, i64 %idxprom266, !dbg !611
  %42 = load double, double* %arrayidx267, align 8, !dbg !611, !tbaa !273
  %cmp268 = fcmp olt double %42, %median.0, !dbg !612
  br i1 %cmp268, label %if.then269, label %if.else275, !dbg !613

if.then269:                                       ; preds = %if.then252, %land.lhs.true260
  %inc272 = add nsw i32 %lower.6642, 1, !dbg !614
  call void @llvm.dbg.value(metadata i32 %inc272, metadata !378, metadata !DIExpression()), !dbg !381
  br label %for.inc283.sink.split, !dbg !616

if.else275:                                       ; preds = %land.lhs.true260, %lor.lhs.false258
  %inc278 = add nsw i32 %upper.6644, 1, !dbg !617
  call void @llvm.dbg.value(metadata i32 %inc278, metadata !379, metadata !DIExpression()), !dbg !381
  br label %for.inc283.sink.split

for.inc283.sink.split:                            ; preds = %if.then269, %if.else275
  %inc278.sink = phi i32 [ %inc278, %if.else275 ], [ %inc272, %if.then269 ]
  %lower.7.ph = phi i32 [ %lower.6642, %if.else275 ], [ %inc272, %if.then269 ]
  %upper.7.ph = phi i32 [ %inc278, %if.else275 ], [ %upper.6644, %if.then269 ]
  %idxprom279 = sext i32 %inc278.sink to i64, !dbg !619
  %arrayidx280 = getelementptr inbounds i32, i32* %wn.tr.ph670, i64 %idxprom279, !dbg !619
  store i32 %40, i32* %arrayidx280, align 4, !dbg !619, !tbaa !96
  br label %for.inc283, !dbg !620

for.inc283:                                       ; preds = %for.inc283.sink.split, %for.body246
  %lower.7 = phi i32 [ %lower.6642, %for.body246 ], [ %lower.7.ph, %for.inc283.sink.split ], !dbg !621
  %upper.7 = phi i32 [ %upper.6644, %for.body246 ], [ %upper.7.ph, %for.inc283.sink.split ], !dbg !621
  call void @llvm.dbg.value(metadata i32 %upper.7, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.7, metadata !378, metadata !DIExpression()), !dbg !381
  %indvars.iv.next726 = add nsw i64 %indvars.iv725, 1, !dbg !620
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next726, metadata !375, metadata !DIExpression()), !dbg !381
  %lftr.wideiv728 = trunc i64 %indvars.iv.next726 to i32, !dbg !622
  %exitcond729.not = icmp eq i32 %0, %lftr.wideiv728, !dbg !622
  br i1 %exitcond729.not, label %if.end286, label %for.body246, !dbg !595, !llvm.loop !623

if.end286:                                        ; preds = %for.inc283, %for.end240
  %lower.8 = phi i32 [ %lower.4.lcssa, %for.end240 ], [ %lower.7, %for.inc283 ], !dbg !485
  %upper.8 = phi i32 [ %upper.4.lcssa, %for.end240 ], [ %upper.7, %for.inc283 ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %upper.8, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %lower.8, metadata !378, metadata !DIExpression()), !dbg !381
  %cmp287.not = icmp slt i32 %lower.8, %start.tr654, !dbg !625
  br i1 %cmp287.not, label %if.end301, label %if.then288, !dbg !627

if.then288:                                       ; preds = %if.end286
  %43 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !628, !tbaa !75
  %lo289 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %43, i64 0, i32 1, !dbg !630
  store %struct.kdnode* null, %struct.kdnode** %lo289, align 8, !dbg !631, !tbaa !426
  %44 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !632, !tbaa !75
  %hi290 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %44, i64 0, i32 2, !dbg !633
  store %struct.kdnode* null, %struct.kdnode** %hi290, align 8, !dbg !634, !tbaa !430
  %45 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !635, !tbaa !75
  %incdec.ptr291 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %45, i64 1, !dbg !635
  store %struct.kdnode* %incdec.ptr291, %struct.kdnode** %kdpptr, align 8, !dbg !635, !tbaa !75
  %lo292 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 1, !dbg !636
  store %struct.kdnode* %45, %struct.kdnode** %lo292, align 8, !dbg !637, !tbaa !426
  %add296 = add nsw i32 %rem659, 1, !dbg !638
  br i1 %cmp241, label %if.then294, label %if.else297, !dbg !640

if.then294:                                       ; preds = %if.then288
  tail call fastcc void @buildkdtree(i32* noundef %tn.tr653, i32* noundef %yn, i32* noundef %zn, i32* noundef %wn.tr.ph670, i32* noundef nonnull %xn.tr651, i32* noundef %on.tr652, i32 noundef %start.tr654, i32 noundef %lower.8, %struct.kdnode** noundef nonnull %kdpptr, %struct.kdnode* noundef %45, double* noundef %x, i32 noundef %add296, i32 noundef 4), !dbg !641
  br label %if.end301, !dbg !643

if.else297:                                       ; preds = %if.then288
  tail call fastcc void @buildkdtree(i32* noundef %tn.tr653, i32* noundef %yn, i32* noundef %zn, i32* noundef nonnull %xn.tr651, i32* noundef %on.tr652, i32* noundef %wn.tr.ph670, i32 noundef %start.tr654, i32 noundef %lower.8, %struct.kdnode** noundef nonnull %kdpptr, %struct.kdnode* noundef %45, double* noundef %x, i32 noundef %add296, i32 noundef %dim.tr658), !dbg !644
  br label %if.end301

if.end301:                                        ; preds = %if.then294, %if.else297, %if.end286
  %cmp302 = icmp sgt i32 %upper.8, %middle.1, !dbg !646
  br i1 %cmp302, label %if.then303, label %if.end320, !dbg !648

if.then303:                                       ; preds = %if.end301
  %46 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !649, !tbaa !75
  %lo304 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %46, i64 0, i32 1, !dbg !651
  store %struct.kdnode* null, %struct.kdnode** %lo304, align 8, !dbg !652, !tbaa !426
  %47 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !653, !tbaa !75
  %hi305 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %47, i64 0, i32 2, !dbg !654
  store %struct.kdnode* null, %struct.kdnode** %hi305, align 8, !dbg !655, !tbaa !430
  %48 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !656, !tbaa !75
  %incdec.ptr306 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %48, i64 1, !dbg !656
  store %struct.kdnode* %incdec.ptr306, %struct.kdnode** %kdpptr, align 8, !dbg !656, !tbaa !75
  %hi307 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 2, !dbg !657
  store %struct.kdnode* %48, %struct.kdnode** %hi307, align 8, !dbg !658, !tbaa !430
  %add310 = add nsw i32 %middle.1, 1, !dbg !659
  %add312 = add nsw i32 %rem659, 1, !dbg !659
  call void @llvm.dbg.value(metadata i32* %tn.tr653, metadata !362, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %tn.tr653, metadata !362, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %yn, metadata !363, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %yn, metadata !363, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %zn, metadata !364, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %zn, metadata !364, metadata !DIExpression()), !dbg !381
  br i1 %cmp241, label %if.then309, label %if.else313, !dbg !661

if.then309:                                       ; preds = %if.then303
  call void @llvm.dbg.value(metadata i32* %wn.tr.ph670, metadata !365, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %xn.tr651, metadata !366, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %on.tr652, metadata !367, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %add310, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %end, metadata !369, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdpptr, metadata !370, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode* %48, metadata !371, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata double* %x, metadata !372, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %add312, metadata !373, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 4, metadata !374, metadata !DIExpression()), !dbg !381
  %rem = srem i32 %add312, 5, !dbg !386
  call void @llvm.dbg.value(metadata i32 %rem, metadata !373, metadata !DIExpression()), !dbg !381
  %cmp = icmp eq i32 %add310, %end, !dbg !382
  br i1 %cmp, label %if.then, label %if.else, !dbg !384

if.else313:                                       ; preds = %if.then303
  call void @llvm.dbg.value(metadata i32* %xn.tr651, metadata !365, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %on.tr652, metadata !366, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %wn.tr.ph670, metadata !367, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %add310, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %end, metadata !369, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdpptr, metadata !370, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.kdnode* %48, metadata !371, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata double* %x, metadata !372, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %add312, metadata !373, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %dim.tr658, metadata !374, metadata !DIExpression()), !dbg !381
  %add648 = add nsw i32 %dim.tr658, 1, !dbg !385
  %rem649 = srem i32 %add312, %add648, !dbg !386
  call void @llvm.dbg.value(metadata i32 %rem649, metadata !373, metadata !DIExpression()), !dbg !381
  %cmp650 = icmp eq i32 %add310, %end, !dbg !382
  br i1 %cmp650, label %if.then, label %if.else.lr.ph, !dbg !384

if.end320:                                        ; preds = %for.cond244.preheader, %if.end301, %if.then59, %if.else70, %if.then25, %if.then
  ret void, !dbg !662
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @searchkdtree(%struct.kdnode* nocapture noundef readonly %that, double* noundef %x, i32 noundef %p, i32 noundef %q, i32* noundef %loindexp, i32* noundef %upindexp, i32* noundef %lopairlist, i32* noundef %uppairlist, double noundef %cut, double noundef %cut2, i32 noundef %dim, i32* noundef %frozen) unnamed_addr #7 !dbg !663 {
entry:
  %mul99 = mul nsw i32 %dim, %q, !dbg !684
  %add = add nsw i32 %dim, 1
  %idxprom20 = sext i32 %q to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %frozen, i64 %idxprom20
  %idxprom30 = sext i32 %mul99 to i64
  %arrayidx31 = getelementptr inbounds double, double* %x, i64 %idxprom30
  %add39 = add nsw i32 %mul99, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds double, double* %x, i64 %idxprom40
  %add49 = add nsw i32 %mul99, 2
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, double* %x, i64 %idxprom50
  %cmp61 = icmp eq i32 %dim, 4
  %add64 = add nsw i32 %mul99, 3
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, double* %x, i64 %idxprom65
  br label %tailrecurse, !dbg !686

tailrecurse:                                      ; preds = %if.then112, %entry
  %that.tr = phi %struct.kdnode* [ %that, %entry ], [ %20, %if.then112 ]
  %p.tr = phi i32 [ %p, %entry ], [ %add114, %if.then112 ]
  call void @llvm.dbg.value(metadata %struct.kdnode* %that.tr, metadata !667, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double* %x, metadata !668, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %p.tr, metadata !669, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %q, metadata !670, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32* %loindexp, metadata !671, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32* %upindexp, metadata !672, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32* %lopairlist, metadata !673, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32* %uppairlist, metadata !674, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %cut, metadata !675, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %cut2, metadata !676, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %dim, metadata !677, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32* %frozen, metadata !678, metadata !DIExpression()), !dbg !688
  %rem = srem i32 %p.tr, %add, !dbg !689
  call void @llvm.dbg.value(metadata i32 %rem, metadata !669, metadata !DIExpression()), !dbg !688
  %cmp = icmp eq i32 %rem, 0, !dbg !690
  %hi = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 2, !dbg !692
  %0 = load %struct.kdnode*, %struct.kdnode** %hi, align 8, !dbg !692, !tbaa !430
  %cmp1.not = icmp eq %struct.kdnode* %0, null, !dbg !692
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true3, !dbg !693

land.lhs.true:                                    ; preds = %tailrecurse
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !694

land.lhs.true3:                                   ; preds = %tailrecurse
  br i1 %cmp1.not, label %if.end, label %land.lhs.true6, !dbg !695

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %add7 = add nsw i32 %rem, -1, !dbg !696
  %sub = add i32 %add7, %mul99, !dbg !697
  %idxprom = sext i32 %sub to i64, !dbg !698
  %arrayidx = getelementptr inbounds double, double* %x, i64 %idxprom, !dbg !698
  %1 = load double, double* %arrayidx, align 8, !dbg !698, !tbaa !273
  %add8 = fadd double %1, %cut, !dbg !699
  %n = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 0, !dbg !700
  %2 = load i32, i32* %n, align 8, !dbg !700, !tbaa !391
  %mul9 = mul nsw i32 %2, %dim, !dbg !701
  %sub11 = add i32 %add7, %mul9, !dbg !702
  %idxprom12 = sext i32 %sub11 to i64, !dbg !703
  %arrayidx13 = getelementptr inbounds double, double* %x, i64 %idxprom12, !dbg !703
  %3 = load double, double* %arrayidx13, align 8, !dbg !703, !tbaa !273
  %cmp14 = fcmp ult double %add8, %3, !dbg !704
  br i1 %cmp14, label %if.end, label %if.then, !dbg !705

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true
  %add16 = add nsw i32 %rem, 1, !dbg !706
  tail call fastcc void @searchkdtree(%struct.kdnode* noundef nonnull %0, double* noundef %x, i32 noundef %add16, i32 noundef %q, i32* noundef %loindexp, i32* noundef %upindexp, i32* noundef %lopairlist, i32* noundef %uppairlist, double noundef %cut, double noundef %cut2, i32 noundef %dim, i32* noundef %frozen), !dbg !708
  br label %if.end, !dbg !709

if.end:                                           ; preds = %land.lhs.true, %if.then, %land.lhs.true6, %land.lhs.true3
  %n17 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 0, !dbg !710
  %4 = load i32, i32* %n17, align 8, !dbg !710, !tbaa !391
  %cmp18.not = icmp eq i32 %4, %q, !dbg !712
  br i1 %cmp18.not, label %if.end89, label %land.lhs.true19, !dbg !713

land.lhs.true19:                                  ; preds = %if.end
  %5 = load i32, i32* %arrayidx21, align 4, !dbg !714, !tbaa !96
  %tobool.not = icmp eq i32 %5, 0, !dbg !714
  br i1 %tobool.not, label %if.then27, label %lor.lhs.false22, !dbg !715

lor.lhs.false22:                                  ; preds = %land.lhs.true19
  %idxprom24 = sext i32 %4 to i64, !dbg !716
  %arrayidx25 = getelementptr inbounds i32, i32* %frozen, i64 %idxprom24, !dbg !716
  %6 = load i32, i32* %arrayidx25, align 4, !dbg !716, !tbaa !96
  %tobool26.not = icmp eq i32 %6, 0, !dbg !716
  br i1 %tobool26.not, label %if.then27, label %if.end89, !dbg !717

if.then27:                                        ; preds = %lor.lhs.false22, %land.lhs.true19
  %7 = load double, double* %arrayidx31, align 8, !dbg !718, !tbaa !273
  %mul33 = mul nsw i32 %4, %dim, !dbg !720
  %idxprom35 = sext i32 %mul33 to i64, !dbg !721
  %arrayidx36 = getelementptr inbounds double, double* %x, i64 %idxprom35, !dbg !721
  %8 = load double, double* %arrayidx36, align 8, !dbg !721, !tbaa !273
  %sub37 = fsub double %7, %8, !dbg !722
  call void @llvm.dbg.value(metadata double %sub37, metadata !679, metadata !DIExpression()), !dbg !688
  %9 = load double, double* %arrayidx41, align 8, !dbg !723, !tbaa !273
  %add44 = add nsw i32 %mul33, 1, !dbg !724
  %idxprom45 = sext i32 %add44 to i64, !dbg !725
  %arrayidx46 = getelementptr inbounds double, double* %x, i64 %idxprom45, !dbg !725
  %10 = load double, double* %arrayidx46, align 8, !dbg !725, !tbaa !273
  %sub47 = fsub double %9, %10, !dbg !726
  call void @llvm.dbg.value(metadata double %sub47, metadata !680, metadata !DIExpression()), !dbg !688
  %11 = load double, double* %arrayidx51, align 8, !dbg !727, !tbaa !273
  %add54 = add nsw i32 %mul33, 2, !dbg !728
  %idxprom55 = sext i32 %add54 to i64, !dbg !729
  %arrayidx56 = getelementptr inbounds double, double* %x, i64 %idxprom55, !dbg !729
  %12 = load double, double* %arrayidx56, align 8, !dbg !729, !tbaa !273
  %sub57 = fsub double %11, %12, !dbg !730
  call void @llvm.dbg.value(metadata double %sub57, metadata !681, metadata !DIExpression()), !dbg !688
  %mul59 = fmul double %sub47, %sub47, !dbg !731
  %13 = tail call double @llvm.fmuladd.f64(double %sub37, double %sub37, double %mul59), !dbg !732
  %14 = tail call double @llvm.fmuladd.f64(double %sub57, double %sub57, double %13), !dbg !733
  call void @llvm.dbg.value(metadata double %14, metadata !683, metadata !DIExpression()), !dbg !688
  br i1 %cmp61, label %if.then62, label %if.end74, !dbg !734

if.then62:                                        ; preds = %if.then27
  %15 = load double, double* %arrayidx66, align 8, !dbg !735, !tbaa !273
  %add69 = add nsw i32 %mul33, 3, !dbg !738
  %idxprom70 = sext i32 %add69 to i64, !dbg !739
  %arrayidx71 = getelementptr inbounds double, double* %x, i64 %idxprom70, !dbg !739
  %16 = load double, double* %arrayidx71, align 8, !dbg !739, !tbaa !273
  %sub72 = fsub double %15, %16, !dbg !740
  call void @llvm.dbg.value(metadata double %sub72, metadata !682, metadata !DIExpression()), !dbg !688
  %17 = tail call double @llvm.fmuladd.f64(double %sub72, double %sub72, double %14), !dbg !741
  call void @llvm.dbg.value(metadata double %17, metadata !683, metadata !DIExpression()), !dbg !688
  br label %if.end74, !dbg !742

if.end74:                                         ; preds = %if.then62, %if.then27
  %r2.0 = phi double [ %17, %if.then62 ], [ %14, %if.then27 ], !dbg !743
  call void @llvm.dbg.value(metadata double %r2.0, metadata !683, metadata !DIExpression()), !dbg !688
  %cmp75 = fcmp olt double %r2.0, %cut2, !dbg !744
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !746

if.then76:                                        ; preds = %if.end74
  %cmp78 = icmp slt i32 %4, %q, !dbg !747
  %loindexp.upindexp = select i1 %cmp78, i32* %loindexp, i32* %upindexp
  %lopairlist.uppairlist = select i1 %cmp78, i32* %lopairlist, i32* %uppairlist
  %18 = load i32, i32* %loindexp.upindexp, align 4, !dbg !750, !tbaa !96
  %idxprom84 = sext i32 %18 to i64, !dbg !750
  %arrayidx85 = getelementptr inbounds i32, i32* %lopairlist.uppairlist, i64 %idxprom84, !dbg !750
  store i32 %4, i32* %arrayidx85, align 4, !dbg !750, !tbaa !96
  %19 = load i32, i32* %loindexp.upindexp, align 4, !dbg !750, !tbaa !96
  %inc86 = add nsw i32 %19, 1, !dbg !750
  store i32 %inc86, i32* %loindexp.upindexp, align 4, !dbg !750, !tbaa !96
  br label %if.end89, !dbg !751

if.end89:                                         ; preds = %if.then76, %if.end74, %lor.lhs.false22, %if.end
  %lo = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 1, !dbg !752
  %20 = load %struct.kdnode*, %struct.kdnode** %lo, align 8, !dbg !752, !tbaa !426
  %cmp92.not = icmp eq %struct.kdnode* %20, null, !dbg !752
  br i1 %cmp, label %land.lhs.true91, label %land.lhs.true95, !dbg !751

land.lhs.true91:                                  ; preds = %if.end89
  br i1 %cmp92.not, label %if.end115, label %if.then112, !dbg !753

land.lhs.true95:                                  ; preds = %if.end89
  br i1 %cmp92.not, label %if.end115, label %land.lhs.true98, !dbg !754

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %add100 = add nsw i32 %rem, -1, !dbg !755
  %sub101 = add i32 %add100, %mul99, !dbg !756
  %idxprom102 = sext i32 %sub101 to i64, !dbg !757
  %arrayidx103 = getelementptr inbounds double, double* %x, i64 %idxprom102, !dbg !757
  %21 = load double, double* %arrayidx103, align 8, !dbg !757, !tbaa !273
  %sub104 = fsub double %21, %cut, !dbg !758
  %22 = load i32, i32* %n17, align 8, !dbg !759, !tbaa !391
  %mul106 = mul nsw i32 %22, %dim, !dbg !760
  %sub108 = add i32 %add100, %mul106, !dbg !761
  %idxprom109 = sext i32 %sub108 to i64, !dbg !762
  %arrayidx110 = getelementptr inbounds double, double* %x, i64 %idxprom109, !dbg !762
  %23 = load double, double* %arrayidx110, align 8, !dbg !762, !tbaa !273
  %cmp111 = fcmp olt double %sub104, %23, !dbg !763
  br i1 %cmp111, label %if.then112, label %if.end115, !dbg !764

if.then112:                                       ; preds = %land.lhs.true98, %land.lhs.true91
  %add114 = add nsw i32 %rem, 1, !dbg !765
  br label %tailrecurse, !dbg !686

if.end115:                                        ; preds = %land.lhs.true91, %land.lhs.true98, %land.lhs.true95
  ret void, !dbg !766
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @heapsort_pairs(i32* nocapture noundef %a, i32 noundef %n) unnamed_addr #6 !dbg !767 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !771, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32 %n, metadata !772, metadata !DIExpression()), !dbg !775
  %div = sdiv i32 %n, 2, !dbg !776
  call void @llvm.dbg.value(metadata i32 %div, metadata !773, metadata !DIExpression()), !dbg !775
  %cmp59 = icmp sgt i32 %n, 1, !dbg !778
  br i1 %cmp59, label %for.body.preheader, label %while.end, !dbg !780

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64, !dbg !780
  %1 = sext i32 %div to i64, !dbg !780
  br label %for.body, !dbg !780

while.cond.preheader:                             ; preds = %downheap_pairs.exit
  call void @llvm.dbg.value(metadata i32 %n, metadata !772, metadata !DIExpression()), !dbg !775
  br i1 %cmp59, label %while.body.preheader, label %while.end, !dbg !781

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %n to i64, !dbg !781
  br label %while.body, !dbg !781

for.body:                                         ; preds = %for.body.preheader, %downheap_pairs.exit
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %downheap_pairs.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !773, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32* %a, metadata !782, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i32 %n, metadata !787, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !788, metadata !DIExpression()), !dbg !791
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !793
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !793
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx.i = getelementptr inbounds i32, i32* %a, i64 %3, !dbg !794
  %4 = load i32, i32* %arrayidx.i, align 4, !dbg !794, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %4, metadata !790, metadata !DIExpression()), !dbg !791
  %cmp.not44.i = icmp sgt i64 %indvars.iv, %1, !dbg !795
  br i1 %cmp.not44.i, label %downheap_pairs.exit, label %while.body.i.preheader, !dbg !796

while.body.i.preheader:                           ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32, !dbg !796
  br label %while.body.i, !dbg !796

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end13.i
  %k.addr.045.i = phi i32 [ %j.0.i, %if.end13.i ], [ %5, %while.body.i.preheader ]
  call void @llvm.dbg.value(metadata i32 %k.addr.045.i, metadata !788, metadata !DIExpression()), !dbg !791
  %add.i = shl nsw i32 %k.addr.045.i, 1, !dbg !797
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !789, metadata !DIExpression()), !dbg !791
  %cmp1.i = icmp slt i32 %add.i, %n, !dbg !799
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i, !dbg !801

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub2.i = add nsw i32 %add.i, -1, !dbg !802
  %idxprom3.i = sext i32 %sub2.i to i64, !dbg !803
  %arrayidx4.i = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i, !dbg !803
  %6 = load i32, i32* %arrayidx4.i, align 4, !dbg !803, !tbaa !96
  %idxprom5.i = sext i32 %add.i to i64, !dbg !804
  %arrayidx6.i = getelementptr inbounds i32, i32* %a, i64 %idxprom5.i, !dbg !804
  %7 = load i32, i32* %arrayidx6.i, align 4, !dbg !804, !tbaa !96
  %cmp7.i = icmp slt i32 %6, %7, !dbg !805
  %inc.i = zext i1 %cmp7.i to i32, !dbg !806
  %spec.select.i = or i32 %add.i, %inc.i, !dbg !806
  br label %if.end.i, !dbg !806

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body.i
  %j.0.i = phi i32 [ %add.i, %while.body.i ], [ %spec.select.i, %land.lhs.true.i ], !dbg !807
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !789, metadata !DIExpression()), !dbg !791
  %sub8.i = add nsw i32 %j.0.i, -1, !dbg !808
  %idxprom9.i = sext i32 %sub8.i to i64, !dbg !810
  %arrayidx10.i = getelementptr inbounds i32, i32* %a, i64 %idxprom9.i, !dbg !810
  %8 = load i32, i32* %arrayidx10.i, align 4, !dbg !810, !tbaa !96
  %cmp11.not.i = icmp slt i32 %4, %8, !dbg !811
  %sub17.i = add nsw i32 %k.addr.045.i, -1, !dbg !791
  br i1 %cmp11.not.i, label %if.end13.i, label %downheap_pairs.exit, !dbg !812

if.end13.i:                                       ; preds = %if.end.i
  %idxprom18.i = sext i32 %sub17.i to i64, !dbg !813
  %arrayidx19.i = getelementptr inbounds i32, i32* %a, i64 %idxprom18.i, !dbg !813
  store i32 %8, i32* %arrayidx19.i, align 4, !dbg !814, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !788, metadata !DIExpression()), !dbg !791
  %cmp.not.i = icmp sgt i32 %j.0.i, %div, !dbg !795
  br i1 %cmp.not.i, label %downheap_pairs.exit, label %while.body.i, !dbg !796, !llvm.loop !815

downheap_pairs.exit:                              ; preds = %if.end13.i, %if.end.i, %for.body
  %sub20.pre-phi.i = phi i32 [ %indvars, %for.body ], [ %sub8.i, %if.end13.i ], [ %sub17.i, %if.end.i ], !dbg !817
  %idxprom21.i = sext i32 %sub20.pre-phi.i to i64, !dbg !818
  %arrayidx22.i = getelementptr inbounds i32, i32* %a, i64 %idxprom21.i, !dbg !818
  store i32 %4, i32* %arrayidx22.i, align 4, !dbg !819, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !773, metadata !DIExpression()), !dbg !775
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !778
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !780, !llvm.loop !820

while.body:                                       ; preds = %while.body.preheader, %downheap_pairs.exit53
  %indvars.iv68 = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next69, %downheap_pairs.exit53 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv68, metadata !772, metadata !DIExpression()), !dbg !775
  %9 = load i32, i32* %a, align 4, !dbg !822, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %9, metadata !774, metadata !DIExpression()), !dbg !775
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1, !dbg !824
  %indvars70 = trunc i64 %indvars.iv.next69 to i32, !dbg !824
  %10 = and i64 %indvars.iv.next69, 4294967295
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %10, !dbg !825
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !825, !tbaa !96
  store i32 %11, i32* %a, align 4, !dbg !826, !tbaa !96
  store i32 %9, i32* %arrayidx2, align 4, !dbg !827, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars70, metadata !772, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32* %a, metadata !782, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 %indvars70, metadata !787, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 1, metadata !788, metadata !DIExpression()), !dbg !828
  %12 = load i32, i32* %a, align 4, !dbg !830, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %12, metadata !790, metadata !DIExpression()), !dbg !828
  %div.i2254 = lshr i32 %indvars70, 1
  %cmp.not44.i23 = icmp ult i32 %indvars70, 2, !dbg !831
  br i1 %cmp.not44.i23, label %downheap_pairs.exit53, label %while.body.i27, !dbg !832

while.body.i27:                                   ; preds = %while.body, %if.end13.i49
  %k.addr.045.i24 = phi i32 [ %j.0.i37, %if.end13.i49 ], [ 1, %while.body ]
  call void @llvm.dbg.value(metadata i32 %k.addr.045.i24, metadata !788, metadata !DIExpression()), !dbg !828
  %add.i25 = shl nsw i32 %k.addr.045.i24, 1, !dbg !833
  call void @llvm.dbg.value(metadata i32 %add.i25, metadata !789, metadata !DIExpression()), !dbg !828
  %cmp1.i26 = icmp slt i32 %add.i25, %indvars70, !dbg !834
  br i1 %cmp1.i26, label %land.lhs.true.i36, label %if.end.i42, !dbg !835

land.lhs.true.i36:                                ; preds = %while.body.i27
  %sub2.i28 = add nsw i32 %add.i25, -1, !dbg !836
  %idxprom3.i29 = sext i32 %sub2.i28 to i64, !dbg !837
  %arrayidx4.i30 = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i29, !dbg !837
  %13 = load i32, i32* %arrayidx4.i30, align 4, !dbg !837, !tbaa !96
  %idxprom5.i31 = sext i32 %add.i25 to i64, !dbg !838
  %arrayidx6.i32 = getelementptr inbounds i32, i32* %a, i64 %idxprom5.i31, !dbg !838
  %14 = load i32, i32* %arrayidx6.i32, align 4, !dbg !838, !tbaa !96
  %cmp7.i33 = icmp slt i32 %13, %14, !dbg !839
  %inc.i34 = zext i1 %cmp7.i33 to i32, !dbg !840
  %spec.select.i35 = or i32 %add.i25, %inc.i34, !dbg !840
  br label %if.end.i42, !dbg !840

if.end.i42:                                       ; preds = %land.lhs.true.i36, %while.body.i27
  %j.0.i37 = phi i32 [ %add.i25, %while.body.i27 ], [ %spec.select.i35, %land.lhs.true.i36 ], !dbg !841
  call void @llvm.dbg.value(metadata i32 %j.0.i37, metadata !789, metadata !DIExpression()), !dbg !828
  %sub8.i38 = add nsw i32 %j.0.i37, -1, !dbg !842
  %idxprom9.i39 = sext i32 %sub8.i38 to i64, !dbg !843
  %arrayidx10.i40 = getelementptr inbounds i32, i32* %a, i64 %idxprom9.i39, !dbg !843
  %15 = load i32, i32* %arrayidx10.i40, align 4, !dbg !843, !tbaa !96
  %cmp11.not.i41 = icmp slt i32 %12, %15, !dbg !844
  %sub17.i45 = add nsw i32 %k.addr.045.i24, -1, !dbg !828
  br i1 %cmp11.not.i41, label %if.end13.i49, label %downheap_pairs.exit53, !dbg !845

if.end13.i49:                                     ; preds = %if.end.i42
  %idxprom18.i46 = sext i32 %sub17.i45 to i64, !dbg !846
  %arrayidx19.i47 = getelementptr inbounds i32, i32* %a, i64 %idxprom18.i46, !dbg !846
  store i32 %15, i32* %arrayidx19.i47, align 4, !dbg !847, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i37, metadata !788, metadata !DIExpression()), !dbg !828
  %cmp.not.i48 = icmp sgt i32 %j.0.i37, %div.i2254, !dbg !831
  br i1 %cmp.not.i48, label %downheap_pairs.exit53, label %while.body.i27, !dbg !832, !llvm.loop !848

downheap_pairs.exit53:                            ; preds = %if.end13.i49, %if.end.i42, %while.body
  %sub20.pre-phi.i50 = phi i32 [ 0, %while.body ], [ %sub8.i38, %if.end13.i49 ], [ %sub17.i45, %if.end.i42 ], !dbg !850
  %idxprom21.i51 = sext i32 %sub20.pre-phi.i50 to i64, !dbg !851
  %arrayidx22.i52 = getelementptr inbounds i32, i32* %a, i64 %idxprom21.i51, !dbg !851
  store i32 %12, i32* %arrayidx22.i52, align 4, !dbg !852, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars70, metadata !772, metadata !DIExpression()), !dbg !775
  %cmp1 = icmp sgt i64 %indvars.iv68, 2, !dbg !853
  br i1 %cmp1, label %while.body, label %while.end, !dbg !781, !llvm.loop !854

while.end:                                        ; preds = %downheap_pairs.exit53, %entry, %while.cond.preheader
  ret void, !dbg !856
}

declare !dbg !857 dso_local void @free_ivector(i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "684f45f1e0348fc50a0da53086e69592")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDNODE_T", file: !5, line: 40, baseType: !6)
!5 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "684f45f1e0348fc50a0da53086e69592")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kdnode", file: !5, line: 37, size: 192, elements: !7)
!7 = !{!8, !11, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !6, file: !5, line: 38, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !5, line: 23, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !6, file: !5, line: 39, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !6, file: !5, line: 39, baseType: !12, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!20 = distinct !DISubprogram(name: "nblist", scope: !5, file: !5, line: 783, type: !21, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!21 = !DISubroutineType(types: !22)
!22 = !{!9, !23, !23, !24, !25, !9, !9, !26, !10, !10, !27}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!29 = !DILocalVariable(name: "lpears", arg: 1, scope: !20, file: !5, line: 783, type: !23)
!30 = !DILocalVariable(name: "upears", arg: 2, scope: !20, file: !5, line: 783, type: !23)
!31 = !DILocalVariable(name: "pearlist", arg: 3, scope: !20, file: !5, line: 783, type: !24)
!32 = !DILocalVariable(name: "x", arg: 4, scope: !20, file: !5, line: 783, type: !25)
!33 = !DILocalVariable(name: "context_PxQ", arg: 5, scope: !20, file: !5, line: 784, type: !9)
!34 = !DILocalVariable(name: "derivs", arg: 6, scope: !20, file: !5, line: 784, type: !9)
!35 = !DILocalVariable(name: "cutoff", arg: 7, scope: !20, file: !5, line: 784, type: !26)
!36 = !DILocalVariable(name: "natom", arg: 8, scope: !20, file: !5, line: 784, type: !10)
!37 = !DILocalVariable(name: "dim", arg: 9, scope: !20, file: !5, line: 785, type: !10)
!38 = !DILocalVariable(name: "frozen", arg: 10, scope: !20, file: !5, line: 785, type: !27)
!39 = !DILocalVariable(name: "i", scope: !20, file: !5, line: 787, type: !10)
!40 = !DILocalVariable(name: "j", scope: !20, file: !5, line: 787, type: !10)
!41 = !DILocalVariable(name: "locnt", scope: !20, file: !5, line: 787, type: !10)
!42 = !DILocalVariable(name: "upcnt", scope: !20, file: !5, line: 787, type: !10)
!43 = !DILocalVariable(name: "totpair", scope: !20, file: !5, line: 787, type: !10)
!44 = !DILocalVariable(name: "numthreads", scope: !20, file: !5, line: 787, type: !10)
!45 = !DILocalVariable(name: "threadnum", scope: !20, file: !5, line: 787, type: !10)
!46 = !DILocalVariable(name: "blocksize", scope: !20, file: !5, line: 787, type: !10)
!47 = !DILocalVariable(name: "xn", scope: !20, file: !5, line: 788, type: !27)
!48 = !DILocalVariable(name: "yn", scope: !20, file: !5, line: 788, type: !27)
!49 = !DILocalVariable(name: "zn", scope: !20, file: !5, line: 788, type: !27)
!50 = !DILocalVariable(name: "wn", scope: !20, file: !5, line: 788, type: !27)
!51 = !DILocalVariable(name: "on", scope: !20, file: !5, line: 788, type: !27)
!52 = !DILocalVariable(name: "tn", scope: !20, file: !5, line: 788, type: !27)
!53 = !DILocalVariable(name: "lopairlist", scope: !20, file: !5, line: 788, type: !27)
!54 = !DILocalVariable(name: "uppairlist", scope: !20, file: !5, line: 788, type: !27)
!55 = !DILocalVariable(name: "cutoff2", scope: !20, file: !5, line: 789, type: !26)
!56 = !DILocalVariable(name: "kdtree", scope: !20, file: !5, line: 790, type: !3)
!57 = !DILocalVariable(name: "kdptr", scope: !20, file: !5, line: 790, type: !3)
!58 = !DILocalVariable(name: "root", scope: !20, file: !5, line: 790, type: !3)
!59 = !DILocation(line: 0, scope: !20)
!60 = !DILocation(line: 787, column: 4, scope: !20)
!61 = !DILocation(line: 787, column: 37, scope: !20)
!62 = !DILocation(line: 787, column: 49, scope: !20)
!63 = !DILocation(line: 790, column: 4, scope: !20)
!64 = !DILocation(line: 799, column: 21, scope: !20)
!65 = !DILocation(line: 803, column: 16, scope: !20)
!66 = !DILocation(line: 807, column: 38, scope: !67)
!67 = distinct !DILexicalBlock(scope: !20, file: !5, line: 807, column: 8)
!68 = !DILocation(line: 807, column: 44, scope: !67)
!69 = !DILocation(line: 807, column: 31, scope: !67)
!70 = !DILocation(line: 807, column: 18, scope: !67)
!71 = !DILocation(line: 807, column: 65, scope: !67)
!72 = !DILocation(line: 807, column: 8, scope: !20)
!73 = !DILocation(line: 808, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !67, file: !5, line: 807, column: 74)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 808, column: 7, scope: !74)
!80 = !DILocation(line: 809, column: 7, scope: !74)
!81 = !DILocation(line: 824, column: 9, scope: !20)
!82 = !DILocation(line: 825, column: 9, scope: !20)
!83 = !DILocation(line: 826, column: 9, scope: !20)
!84 = !DILocation(line: 827, column: 9, scope: !20)
!85 = !DILocation(line: 829, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !20, file: !5, line: 829, column: 8)
!87 = !DILocation(line: 829, column: 8, scope: !20)
!88 = !DILocation(line: 833, column: 9, scope: !20)
!89 = !DILocation(line: 836, column: 18, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !5, line: 836, column: 4)
!91 = distinct !DILexicalBlock(scope: !20, file: !5, line: 836, column: 4)
!92 = !DILocation(line: 836, column: 4, scope: !91)
!93 = !DILocation(line: 836, column: 28, scope: !90)
!94 = !DILocation(line: 837, column: 29, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !5, line: 836, column: 32)
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !77, i64 0}
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!102, !103, !104}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !100}
!104 = distinct !{!104, !100}
!105 = !DILocation(line: 837, column: 21, scope: !95)
!106 = !{!102}
!107 = !{!103, !104}
!108 = !DILocation(line: 837, column: 13, scope: !95)
!109 = !{!103}
!110 = !{!104}
!111 = !DILocation(line: 842, column: 13, scope: !95)
!112 = distinct !{!112, !92, !113, !114, !115}
!113 = !DILocation(line: 845, column: 4, scope: !91)
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.isvectorized", i32 1}
!116 = !DILocation(line: 837, column: 23, scope: !95)
!117 = !DILocation(line: 837, column: 15, scope: !95)
!118 = !DILocation(line: 837, column: 7, scope: !95)
!119 = !DILocation(line: 842, column: 7, scope: !95)
!120 = !DILocation(line: 839, column: 10, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !5, line: 838, column: 21)
!122 = distinct !DILexicalBlock(scope: !95, file: !5, line: 838, column: 11)
!123 = !DILocation(line: 839, column: 16, scope: !121)
!124 = distinct !{!124, !92, !113, !114}
!125 = distinct !{!125, !92, !113, !114, !115}
!126 = !DILocation(line: 847, column: 4, scope: !20)
!127 = !DILocation(line: 848, column: 4, scope: !20)
!128 = !DILocation(line: 849, column: 4, scope: !20)
!129 = !DILocation(line: 851, column: 8, scope: !20)
!130 = !DILocation(line: 852, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !5, line: 851, column: 18)
!132 = distinct !DILexicalBlock(scope: !20, file: !5, line: 851, column: 8)
!133 = !DILocation(line: 853, column: 4, scope: !131)
!134 = !DILocation(line: 870, column: 16, scope: !20)
!135 = !DILocation(line: 871, column: 10, scope: !20)
!136 = !DILocation(line: 881, column: 49, scope: !20)
!137 = !DILocation(line: 881, column: 4, scope: !20)
!138 = !DILocation(line: 872, column: 13, scope: !20)
!139 = !DILocation(line: 1009, column: 20, scope: !140)
!140 = distinct !DILexicalBlock(scope: !20, file: !5, line: 903, column: 4)
!141 = !DILocation(line: 1010, column: 20, scope: !140)
!142 = !DILocation(line: 1057, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !5, line: 1057, column: 7)
!144 = !DILocation(line: 1057, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !5, line: 1057, column: 7)
!146 = !DILocation(line: 1082, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !5, line: 1057, column: 35)
!148 = !DILocation(line: 1082, column: 16, scope: !147)
!149 = !DILocation(line: 1083, column: 10, scope: !147)
!150 = !DILocation(line: 1117, column: 37, scope: !147)
!151 = !DILocation(line: 1117, column: 10, scope: !147)
!152 = !DILocation(line: 1118, column: 37, scope: !147)
!153 = !DILocation(line: 1118, column: 10, scope: !147)
!154 = !DILocation(line: 1151, column: 15, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !5, line: 1151, column: 14)
!156 = !DILocation(line: 1151, column: 27, scope: !155)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocation(line: 1151, column: 36, scope: !155)
!159 = !DILocation(line: 1151, column: 54, scope: !155)
!160 = !DILocation(line: 1151, column: 14, scope: !147)
!161 = !DILocation(line: 1154, column: 39, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !5, line: 1153, column: 21)
!163 = !DILocation(line: 1154, column: 51, scope: !162)
!164 = !DILocation(line: 1154, column: 49, scope: !162)
!165 = !DILocation(line: 1154, column: 37, scope: !162)
!166 = !DILocation(line: 1154, column: 62, scope: !162)
!167 = !DILocation(line: 1155, column: 25, scope: !162)
!168 = !DILocation(line: 1156, column: 25, scope: !162)
!169 = !DILocation(line: 1155, column: 43, scope: !162)
!170 = !DILocation(line: 1153, column: 21, scope: !155)
!171 = !DILocation(line: 1157, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !5, line: 1156, column: 54)
!173 = !DILocation(line: 1158, column: 38, scope: !172)
!174 = !DILocation(line: 1158, column: 46, scope: !172)
!175 = !DILocation(line: 1158, column: 44, scope: !172)
!176 = !DILocation(line: 1159, column: 10, scope: !172)
!177 = !DILocation(line: 1160, column: 22, scope: !147)
!178 = !DILocation(line: 1160, column: 10, scope: !147)
!179 = !DILocation(line: 1160, column: 20, scope: !147)
!180 = !DILocation(line: 1161, column: 22, scope: !147)
!181 = !DILocation(line: 1161, column: 10, scope: !147)
!182 = !DILocation(line: 1161, column: 20, scope: !147)
!183 = !DILocation(line: 1162, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !5, line: 1162, column: 10)
!185 = distinct !DILexicalBlock(scope: !147, file: !5, line: 1162, column: 10)
!186 = !DILocation(line: 1162, column: 10, scope: !185)
!187 = !DILocation(line: 1165, column: 26, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !5, line: 1165, column: 10)
!189 = distinct !DILexicalBlock(scope: !147, file: !5, line: 1165, column: 10)
!190 = !DILocation(line: 1165, column: 24, scope: !188)
!191 = !DILocation(line: 1165, column: 10, scope: !189)
!192 = !DILocation(line: 1166, column: 38, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !5, line: 1165, column: 38)
!194 = !DILocation(line: 1166, column: 13, scope: !193)
!195 = !DILocation(line: 1166, column: 36, scope: !193)
!196 = distinct !{!196, !191, !197, !114}
!197 = !DILocation(line: 1167, column: 10, scope: !189)
!198 = !DILocation(line: 1163, column: 30, scope: !199)
!199 = distinct !DILexicalBlock(scope: !184, file: !5, line: 1162, column: 38)
!200 = !DILocation(line: 1163, column: 13, scope: !199)
!201 = !DILocation(line: 1163, column: 28, scope: !199)
!202 = !DILocation(line: 1162, column: 34, scope: !184)
!203 = !DILocation(line: 1162, column: 26, scope: !184)
!204 = distinct !{!204, !186, !205, !114}
!205 = !DILocation(line: 1164, column: 10, scope: !185)
!206 = !DILocation(line: 1166, column: 25, scope: !193)
!207 = !DILocation(line: 1166, column: 31, scope: !193)
!208 = !DILocation(line: 1165, column: 34, scope: !188)
!209 = !DILocation(line: 1168, column: 21, scope: !147)
!210 = !DILocation(line: 1168, column: 27, scope: !147)
!211 = !DILocation(line: 1168, column: 18, scope: !147)
!212 = !DILocation(line: 1057, column: 31, scope: !145)
!213 = distinct !{!213, !142, !214, !114}
!214 = !DILocation(line: 1169, column: 7, scope: !143)
!215 = !DILocation(line: 1177, column: 7, scope: !140)
!216 = !DILocation(line: 1178, column: 7, scope: !140)
!217 = !DILocation(line: 1195, column: 4, scope: !20)
!218 = !DILocation(line: 1196, column: 4, scope: !20)
!219 = !DILocation(line: 1197, column: 4, scope: !20)
!220 = !DILocation(line: 1198, column: 4, scope: !20)
!221 = !DILocation(line: 1199, column: 4, scope: !20)
!222 = !DILocation(line: 1201, column: 8, scope: !20)
!223 = !DILocation(line: 1202, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !5, line: 1201, column: 18)
!225 = distinct !DILexicalBlock(scope: !20, file: !5, line: 1201, column: 8)
!226 = !DILocation(line: 1203, column: 4, scope: !224)
!227 = !DILocation(line: 1206, column: 4, scope: !20)
!228 = !DILocation(line: 1211, column: 1, scope: !20)
!229 = !DILocation(line: 1210, column: 4, scope: !20)
!230 = !DISubprogram(name: "get_blocksize", scope: !5, file: !5, line: 33, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!9}
!233 = !{}
!234 = !DISubprogram(name: "ivector", scope: !5, file: !5, line: 28, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !233)
!235 = !DISubroutineType(types: !236)
!236 = !{!23, !9, !9}
!237 = distinct !DISubprogram(name: "heapsort_index", scope: !5, file: !5, line: 207, type: !238, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !27, !10, !25, !10, !10}
!240 = !{!241, !242, !243, !244, !245, !246, !247}
!241 = !DILocalVariable(name: "a", arg: 1, scope: !237, file: !5, line: 207, type: !27)
!242 = !DILocalVariable(name: "n", arg: 2, scope: !237, file: !5, line: 207, type: !10)
!243 = !DILocalVariable(name: "x", arg: 3, scope: !237, file: !5, line: 207, type: !25)
!244 = !DILocalVariable(name: "p", arg: 4, scope: !237, file: !5, line: 207, type: !10)
!245 = !DILocalVariable(name: "dim", arg: 5, scope: !237, file: !5, line: 207, type: !10)
!246 = !DILocalVariable(name: "k", scope: !237, file: !5, line: 210, type: !10)
!247 = !DILocalVariable(name: "v", scope: !237, file: !5, line: 210, type: !10)
!248 = !DILocation(line: 0, scope: !237)
!249 = !DILocation(line: 212, column: 15, scope: !250)
!250 = distinct !DILexicalBlock(scope: !237, file: !5, line: 212, column: 4)
!251 = !DILocation(line: 212, column: 22, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !5, line: 212, column: 4)
!253 = !DILocation(line: 212, column: 4, scope: !250)
!254 = !DILocation(line: 214, column: 4, scope: !237)
!255 = !DILocalVariable(name: "a", arg: 1, scope: !256, file: !5, line: 163, type: !27)
!256 = distinct !DISubprogram(name: "downheap_index", scope: !5, file: !5, line: 163, type: !257, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !27, !10, !10, !25, !10, !10}
!259 = !{!255, !260, !261, !262, !263, !264, !265, !266}
!260 = !DILocalVariable(name: "n", arg: 2, scope: !256, file: !5, line: 163, type: !10)
!261 = !DILocalVariable(name: "k", arg: 3, scope: !256, file: !5, line: 163, type: !10)
!262 = !DILocalVariable(name: "x", arg: 4, scope: !256, file: !5, line: 163, type: !25)
!263 = !DILocalVariable(name: "p", arg: 5, scope: !256, file: !5, line: 163, type: !10)
!264 = !DILocalVariable(name: "dim", arg: 6, scope: !256, file: !5, line: 163, type: !10)
!265 = !DILocalVariable(name: "j", scope: !256, file: !5, line: 166, type: !10)
!266 = !DILocalVariable(name: "v", scope: !256, file: !5, line: 166, type: !10)
!267 = !DILocation(line: 0, scope: !256, inlinedAt: !268)
!268 = distinct !DILocation(line: 213, column: 7, scope: !252)
!269 = !DILocation(line: 168, column: 12, scope: !256, inlinedAt: !268)
!270 = !DILocation(line: 168, column: 8, scope: !256, inlinedAt: !268)
!271 = !DILocation(line: 169, column: 13, scope: !256, inlinedAt: !268)
!272 = !DILocation(line: 169, column: 4, scope: !256, inlinedAt: !268)
!273 = !{!274, !274, i64 0}
!274 = !{!"double", !77, i64 0}
!275 = !DILocation(line: 170, column: 13, scope: !276, inlinedAt: !268)
!276 = distinct !DILexicalBlock(scope: !256, file: !5, line: 169, column: 23)
!277 = !DILocation(line: 171, column: 14, scope: !278, inlinedAt: !268)
!278 = distinct !DILexicalBlock(scope: !276, file: !5, line: 171, column: 11)
!279 = !DILocation(line: 171, column: 19, scope: !278, inlinedAt: !268)
!280 = !DILocation(line: 171, column: 35, scope: !278, inlinedAt: !268)
!281 = !DILocation(line: 171, column: 31, scope: !278, inlinedAt: !268)
!282 = !DILocation(line: 171, column: 29, scope: !278, inlinedAt: !268)
!283 = !DILocation(line: 171, column: 40, scope: !278, inlinedAt: !268)
!284 = !DILocation(line: 171, column: 23, scope: !278, inlinedAt: !268)
!285 = !DILocation(line: 171, column: 55, scope: !278, inlinedAt: !268)
!286 = !DILocation(line: 171, column: 53, scope: !278, inlinedAt: !268)
!287 = !DILocation(line: 171, column: 60, scope: !278, inlinedAt: !268)
!288 = !DILocation(line: 171, column: 47, scope: !278, inlinedAt: !268)
!289 = !DILocation(line: 171, column: 45, scope: !278, inlinedAt: !268)
!290 = !DILocation(line: 171, column: 11, scope: !276, inlinedAt: !268)
!291 = !DILocation(line: 172, column: 11, scope: !278, inlinedAt: !268)
!292 = !DILocation(line: 172, column: 10, scope: !278, inlinedAt: !268)
!293 = !DILocation(line: 0, scope: !276, inlinedAt: !268)
!294 = !DILocation(line: 173, column: 41, scope: !295, inlinedAt: !268)
!295 = distinct !DILexicalBlock(scope: !276, file: !5, line: 173, column: 11)
!296 = !DILocation(line: 173, column: 37, scope: !295, inlinedAt: !268)
!297 = !DILocation(line: 173, column: 35, scope: !295, inlinedAt: !268)
!298 = !DILocation(line: 173, column: 46, scope: !295, inlinedAt: !268)
!299 = !DILocation(line: 173, column: 29, scope: !295, inlinedAt: !268)
!300 = !DILocation(line: 173, column: 26, scope: !295, inlinedAt: !268)
!301 = !DILocation(line: 173, column: 11, scope: !276, inlinedAt: !268)
!302 = !DILocation(line: 175, column: 7, scope: !276, inlinedAt: !268)
!303 = !DILocation(line: 175, column: 16, scope: !276, inlinedAt: !268)
!304 = distinct !{!304, !272, !305, !114}
!305 = !DILocation(line: 177, column: 4, scope: !256, inlinedAt: !268)
!306 = !DILocation(line: 178, column: 8, scope: !256, inlinedAt: !268)
!307 = !DILocation(line: 178, column: 4, scope: !256, inlinedAt: !268)
!308 = !DILocation(line: 178, column: 13, scope: !256, inlinedAt: !268)
!309 = distinct !{!309, !253, !310, !114}
!310 = !DILocation(line: 213, column: 40, scope: !250)
!311 = !DILocation(line: 215, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !237, file: !5, line: 214, column: 18)
!313 = !DILocation(line: 216, column: 18, scope: !312)
!314 = !DILocation(line: 216, column: 14, scope: !312)
!315 = !DILocation(line: 216, column: 12, scope: !312)
!316 = !DILocation(line: 217, column: 16, scope: !312)
!317 = !DILocation(line: 0, scope: !256, inlinedAt: !318)
!318 = distinct !DILocation(line: 218, column: 7, scope: !312)
!319 = !DILocation(line: 168, column: 8, scope: !256, inlinedAt: !318)
!320 = !DILocation(line: 169, column: 13, scope: !256, inlinedAt: !318)
!321 = !DILocation(line: 169, column: 4, scope: !256, inlinedAt: !318)
!322 = !DILocation(line: 170, column: 13, scope: !276, inlinedAt: !318)
!323 = !DILocation(line: 171, column: 14, scope: !278, inlinedAt: !318)
!324 = !DILocation(line: 171, column: 19, scope: !278, inlinedAt: !318)
!325 = !DILocation(line: 171, column: 35, scope: !278, inlinedAt: !318)
!326 = !DILocation(line: 171, column: 31, scope: !278, inlinedAt: !318)
!327 = !DILocation(line: 171, column: 29, scope: !278, inlinedAt: !318)
!328 = !DILocation(line: 171, column: 40, scope: !278, inlinedAt: !318)
!329 = !DILocation(line: 171, column: 23, scope: !278, inlinedAt: !318)
!330 = !DILocation(line: 171, column: 55, scope: !278, inlinedAt: !318)
!331 = !DILocation(line: 171, column: 53, scope: !278, inlinedAt: !318)
!332 = !DILocation(line: 171, column: 60, scope: !278, inlinedAt: !318)
!333 = !DILocation(line: 171, column: 47, scope: !278, inlinedAt: !318)
!334 = !DILocation(line: 171, column: 45, scope: !278, inlinedAt: !318)
!335 = !DILocation(line: 171, column: 11, scope: !276, inlinedAt: !318)
!336 = !DILocation(line: 172, column: 11, scope: !278, inlinedAt: !318)
!337 = !DILocation(line: 172, column: 10, scope: !278, inlinedAt: !318)
!338 = !DILocation(line: 0, scope: !276, inlinedAt: !318)
!339 = !DILocation(line: 173, column: 41, scope: !295, inlinedAt: !318)
!340 = !DILocation(line: 173, column: 37, scope: !295, inlinedAt: !318)
!341 = !DILocation(line: 173, column: 35, scope: !295, inlinedAt: !318)
!342 = !DILocation(line: 173, column: 46, scope: !295, inlinedAt: !318)
!343 = !DILocation(line: 173, column: 29, scope: !295, inlinedAt: !318)
!344 = !DILocation(line: 173, column: 26, scope: !295, inlinedAt: !318)
!345 = !DILocation(line: 173, column: 11, scope: !276, inlinedAt: !318)
!346 = !DILocation(line: 175, column: 7, scope: !276, inlinedAt: !318)
!347 = !DILocation(line: 175, column: 16, scope: !276, inlinedAt: !318)
!348 = distinct !{!348, !321, !349, !114}
!349 = !DILocation(line: 177, column: 4, scope: !256, inlinedAt: !318)
!350 = !DILocation(line: 178, column: 8, scope: !256, inlinedAt: !318)
!351 = !DILocation(line: 178, column: 4, scope: !256, inlinedAt: !318)
!352 = !DILocation(line: 178, column: 13, scope: !256, inlinedAt: !318)
!353 = !DILocation(line: 214, column: 13, scope: !237)
!354 = distinct !{!354, !254, !355, !114}
!355 = !DILocation(line: 219, column: 4, scope: !237)
!356 = !DILocation(line: 220, column: 1, scope: !237)
!357 = distinct !DISubprogram(name: "buildkdtree", scope: !5, file: !5, line: 255, type: !358, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !27, !27, !27, !27, !27, !27, !10, !10, !360, !3, !25, !10, !10}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!362 = !DILocalVariable(name: "xn", arg: 1, scope: !357, file: !5, line: 255, type: !27)
!363 = !DILocalVariable(name: "yn", arg: 2, scope: !357, file: !5, line: 255, type: !27)
!364 = !DILocalVariable(name: "zn", arg: 3, scope: !357, file: !5, line: 255, type: !27)
!365 = !DILocalVariable(name: "wn", arg: 4, scope: !357, file: !5, line: 255, type: !27)
!366 = !DILocalVariable(name: "on", arg: 5, scope: !357, file: !5, line: 255, type: !27)
!367 = !DILocalVariable(name: "tn", arg: 6, scope: !357, file: !5, line: 255, type: !27)
!368 = !DILocalVariable(name: "start", arg: 7, scope: !357, file: !5, line: 256, type: !10)
!369 = !DILocalVariable(name: "end", arg: 8, scope: !357, file: !5, line: 256, type: !10)
!370 = !DILocalVariable(name: "kdpptr", arg: 9, scope: !357, file: !5, line: 256, type: !360)
!371 = !DILocalVariable(name: "that", arg: 10, scope: !357, file: !5, line: 256, type: !3)
!372 = !DILocalVariable(name: "x", arg: 11, scope: !357, file: !5, line: 257, type: !25)
!373 = !DILocalVariable(name: "p", arg: 12, scope: !357, file: !5, line: 257, type: !10)
!374 = !DILocalVariable(name: "dim", arg: 13, scope: !357, file: !5, line: 257, type: !10)
!375 = !DILocalVariable(name: "i", scope: !357, file: !5, line: 259, type: !10)
!376 = !DILocalVariable(name: "middle", scope: !357, file: !5, line: 259, type: !10)
!377 = !DILocalVariable(name: "imedian", scope: !357, file: !5, line: 259, type: !10)
!378 = !DILocalVariable(name: "lower", scope: !357, file: !5, line: 259, type: !10)
!379 = !DILocalVariable(name: "upper", scope: !357, file: !5, line: 259, type: !10)
!380 = !DILocalVariable(name: "median", scope: !357, file: !5, line: 260, type: !26)
!381 = !DILocation(line: 0, scope: !357)
!382 = !DILocation(line: 281, column: 12, scope: !383)
!383 = distinct !DILexicalBlock(scope: !357, file: !5, line: 281, column: 8)
!384 = !DILocation(line: 281, column: 8, scope: !357)
!385 = !DILocation(line: 276, column: 14, scope: !357)
!386 = !DILocation(line: 276, column: 6, scope: !357)
!387 = !DILocation(line: 282, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !5, line: 281, column: 22)
!389 = !DILocation(line: 282, column: 13, scope: !388)
!390 = !DILocation(line: 282, column: 15, scope: !388)
!391 = !{!392, !97, i64 0}
!392 = !{!"kdnode", !97, i64 0, !76, i64 8, !76, i64 16}
!393 = !DILocation(line: 283, column: 4, scope: !388)
!394 = !DILocation(line: 293, column: 26, scope: !395)
!395 = distinct !DILexicalBlock(scope: !383, file: !5, line: 293, column: 13)
!396 = !DILocation(line: 293, column: 17, scope: !395)
!397 = !DILocation(line: 293, column: 13, scope: !383)
!398 = !DILocation(line: 298, column: 15, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !5, line: 298, column: 11)
!400 = distinct !DILexicalBlock(scope: !395, file: !5, line: 293, column: 31)
!401 = !DILocation(line: 0, scope: !399)
!402 = !DILocation(line: 298, column: 21, scope: !399)
!403 = !DILocation(line: 298, column: 37, scope: !399)
!404 = !DILocation(line: 298, column: 35, scope: !399)
!405 = !DILocation(line: 298, column: 47, scope: !399)
!406 = !DILocation(line: 299, column: 31, scope: !399)
!407 = !DILocation(line: 299, column: 43, scope: !399)
!408 = !DILocation(line: 299, column: 47, scope: !399)
!409 = !DILocation(line: 299, column: 25, scope: !399)
!410 = !DILocation(line: 300, column: 33, scope: !399)
!411 = !DILocation(line: 300, column: 31, scope: !399)
!412 = !DILocation(line: 300, column: 45, scope: !399)
!413 = !DILocation(line: 300, column: 25, scope: !399)
!414 = !DILocation(line: 299, column: 52, scope: !399)
!415 = !DILocation(line: 298, column: 11, scope: !400)
!416 = !DILocation(line: 305, column: 20, scope: !417)
!417 = distinct !DILexicalBlock(scope: !399, file: !5, line: 304, column: 7)
!418 = !DILocation(line: 305, column: 16, scope: !417)
!419 = !DILocation(line: 305, column: 18, scope: !417)
!420 = !DILocation(line: 306, column: 25, scope: !417)
!421 = !DILocation(line: 306, column: 11, scope: !417)
!422 = !DILocation(line: 306, column: 21, scope: !417)
!423 = !DILocation(line: 306, column: 23, scope: !417)
!424 = !DILocation(line: 307, column: 21, scope: !417)
!425 = !DILocation(line: 307, column: 24, scope: !417)
!426 = !{!392, !76, i64 8}
!427 = !DILocation(line: 308, column: 11, scope: !417)
!428 = !DILocation(line: 308, column: 21, scope: !417)
!429 = !DILocation(line: 308, column: 24, scope: !417)
!430 = !{!392, !76, i64 16}
!431 = !DILocation(line: 309, column: 30, scope: !417)
!432 = !DILocation(line: 309, column: 16, scope: !417)
!433 = !DILocation(line: 309, column: 19, scope: !417)
!434 = !DILocation(line: 310, column: 7, scope: !417)
!435 = !DILocation(line: 315, column: 40, scope: !436)
!436 = distinct !DILexicalBlock(scope: !399, file: !5, line: 315, column: 16)
!437 = !DILocation(line: 315, column: 52, scope: !436)
!438 = !DILocation(line: 316, column: 57, scope: !436)
!439 = !DILocation(line: 315, column: 16, scope: !399)
!440 = !DILocation(line: 323, column: 25, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !5, line: 321, column: 7)
!442 = !DILocation(line: 322, column: 16, scope: !441)
!443 = !DILocation(line: 322, column: 18, scope: !441)
!444 = !DILocation(line: 323, column: 11, scope: !441)
!445 = !DILocation(line: 323, column: 21, scope: !441)
!446 = !DILocation(line: 323, column: 23, scope: !441)
!447 = !DILocation(line: 324, column: 21, scope: !441)
!448 = !DILocation(line: 324, column: 24, scope: !441)
!449 = !DILocation(line: 325, column: 11, scope: !441)
!450 = !DILocation(line: 325, column: 21, scope: !441)
!451 = !DILocation(line: 325, column: 24, scope: !441)
!452 = !DILocation(line: 326, column: 30, scope: !441)
!453 = !DILocation(line: 326, column: 16, scope: !441)
!454 = !DILocation(line: 326, column: 19, scope: !441)
!455 = !DILocation(line: 327, column: 7, scope: !441)
!456 = !DILocation(line: 333, column: 25, scope: !457)
!457 = distinct !DILexicalBlock(scope: !436, file: !5, line: 331, column: 12)
!458 = !DILocation(line: 332, column: 16, scope: !457)
!459 = !DILocation(line: 332, column: 18, scope: !457)
!460 = !DILocation(line: 333, column: 11, scope: !457)
!461 = !DILocation(line: 333, column: 21, scope: !457)
!462 = !DILocation(line: 333, column: 23, scope: !457)
!463 = !DILocation(line: 334, column: 21, scope: !457)
!464 = !DILocation(line: 334, column: 24, scope: !457)
!465 = !DILocation(line: 335, column: 11, scope: !457)
!466 = !DILocation(line: 335, column: 21, scope: !457)
!467 = !DILocation(line: 335, column: 24, scope: !457)
!468 = !DILocation(line: 336, column: 30, scope: !457)
!469 = !DILocation(line: 336, column: 16, scope: !457)
!470 = !DILocation(line: 336, column: 19, scope: !457)
!471 = !DILocation(line: 358, column: 23, scope: !472)
!472 = distinct !DILexicalBlock(scope: !395, file: !5, line: 342, column: 9)
!473 = !DILocation(line: 358, column: 30, scope: !472)
!474 = !DILocation(line: 360, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !5, line: 360, column: 11)
!476 = !DILocation(line: 0, scope: !475)
!477 = !DILocation(line: 360, column: 11, scope: !472)
!478 = !DILocation(line: 363, column: 25, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !5, line: 362, column: 14)
!480 = !DILocation(line: 363, column: 38, scope: !479)
!481 = !DILocation(line: 363, column: 42, scope: !479)
!482 = !DILocation(line: 363, column: 19, scope: !479)
!483 = !DILocation(line: 364, column: 15, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !5, line: 364, column: 10)
!485 = !DILocation(line: 0, scope: !472)
!486 = !DILocation(line: 0, scope: !484)
!487 = !DILocation(line: 364, column: 33, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !5, line: 364, column: 10)
!489 = !DILocation(line: 364, column: 10, scope: !484)
!490 = !DILocation(line: 365, column: 25, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !5, line: 365, column: 17)
!492 = distinct !DILexicalBlock(scope: !488, file: !5, line: 364, column: 48)
!493 = !DILocation(line: 365, column: 23, scope: !491)
!494 = !DILocation(line: 365, column: 35, scope: !491)
!495 = !DILocation(line: 365, column: 17, scope: !491)
!496 = !DILocation(line: 365, column: 40, scope: !491)
!497 = !DILocation(line: 365, column: 17, scope: !492)
!498 = distinct !{!498, !489, !499, !114}
!499 = !DILocation(line: 370, column: 10, scope: !484)
!500 = !DILocation(line: 385, column: 17, scope: !472)
!501 = !DILocation(line: 358, column: 14, scope: !472)
!502 = !DILocation(line: 385, column: 13, scope: !472)
!503 = !DILocation(line: 385, column: 15, scope: !472)
!504 = !DILocation(line: 414, column: 21, scope: !472)
!505 = !DILocation(line: 416, column: 25, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !5, line: 416, column: 7)
!507 = distinct !DILexicalBlock(scope: !472, file: !5, line: 416, column: 7)
!508 = !DILocation(line: 416, column: 7, scope: !507)
!509 = !DILocation(line: 451, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !472, file: !5, line: 451, column: 7)
!511 = !DILocation(line: 417, column: 14, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !5, line: 417, column: 14)
!513 = distinct !DILexicalBlock(scope: !506, file: !5, line: 416, column: 38)
!514 = !DILocation(line: 417, column: 23, scope: !512)
!515 = !DILocation(line: 417, column: 20, scope: !512)
!516 = !DILocation(line: 417, column: 14, scope: !513)
!517 = !DILocation(line: 420, column: 27, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !5, line: 420, column: 17)
!519 = distinct !DILexicalBlock(scope: !512, file: !5, line: 417, column: 35)
!520 = !DILocation(line: 421, column: 27, scope: !518)
!521 = !DILocation(line: 421, column: 37, scope: !518)
!522 = !DILocation(line: 421, column: 49, scope: !518)
!523 = !DILocation(line: 421, column: 31, scope: !518)
!524 = !DILocation(line: 421, column: 54, scope: !518)
!525 = !DILocation(line: 420, column: 17, scope: !519)
!526 = !DILocation(line: 426, column: 19, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !5, line: 425, column: 13)
!528 = !DILocation(line: 427, column: 13, scope: !527)
!529 = !DILocation(line: 428, column: 19, scope: !530)
!530 = distinct !DILexicalBlock(scope: !518, file: !5, line: 427, column: 20)
!531 = !DILocation(line: 0, scope: !518)
!532 = !DILocation(line: 416, column: 34, scope: !506)
!533 = distinct !{!533, !508, !534, !114}
!534 = !DILocation(line: 431, column: 7, scope: !507)
!535 = !DILocation(line: 497, column: 10, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !5, line: 497, column: 10)
!537 = distinct !DILexicalBlock(scope: !472, file: !5, line: 477, column: 7)
!538 = !DILocation(line: 452, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !5, line: 452, column: 14)
!540 = distinct !DILexicalBlock(scope: !541, file: !5, line: 451, column: 38)
!541 = distinct !DILexicalBlock(scope: !510, file: !5, line: 451, column: 7)
!542 = !DILocation(line: 452, column: 23, scope: !539)
!543 = !DILocation(line: 452, column: 20, scope: !539)
!544 = !DILocation(line: 452, column: 14, scope: !540)
!545 = !DILocation(line: 455, column: 27, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !5, line: 455, column: 17)
!547 = distinct !DILexicalBlock(scope: !539, file: !5, line: 452, column: 35)
!548 = !DILocation(line: 456, column: 27, scope: !546)
!549 = !DILocation(line: 456, column: 37, scope: !546)
!550 = !DILocation(line: 456, column: 49, scope: !546)
!551 = !DILocation(line: 456, column: 31, scope: !546)
!552 = !DILocation(line: 456, column: 54, scope: !546)
!553 = !DILocation(line: 455, column: 17, scope: !547)
!554 = !DILocation(line: 461, column: 19, scope: !555)
!555 = distinct !DILexicalBlock(scope: !546, file: !5, line: 460, column: 13)
!556 = !DILocation(line: 462, column: 13, scope: !555)
!557 = !DILocation(line: 463, column: 19, scope: !558)
!558 = distinct !DILexicalBlock(scope: !546, file: !5, line: 462, column: 20)
!559 = !DILocation(line: 0, scope: !546)
!560 = !DILocation(line: 451, column: 34, scope: !541)
!561 = !DILocation(line: 451, column: 25, scope: !541)
!562 = distinct !{!562, !509, !563, !114}
!563 = !DILocation(line: 466, column: 7, scope: !510)
!564 = !DILocation(line: 498, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !5, line: 498, column: 17)
!566 = distinct !DILexicalBlock(scope: !567, file: !5, line: 497, column: 41)
!567 = distinct !DILexicalBlock(scope: !536, file: !5, line: 497, column: 10)
!568 = !DILocation(line: 498, column: 26, scope: !565)
!569 = !DILocation(line: 498, column: 23, scope: !565)
!570 = !DILocation(line: 498, column: 17, scope: !566)
!571 = !DILocation(line: 501, column: 30, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !5, line: 501, column: 20)
!573 = distinct !DILexicalBlock(scope: !565, file: !5, line: 498, column: 38)
!574 = !DILocation(line: 502, column: 30, scope: !572)
!575 = !DILocation(line: 502, column: 40, scope: !572)
!576 = !DILocation(line: 502, column: 52, scope: !572)
!577 = !DILocation(line: 502, column: 34, scope: !572)
!578 = !DILocation(line: 502, column: 57, scope: !572)
!579 = !DILocation(line: 501, column: 20, scope: !573)
!580 = !DILocation(line: 507, column: 22, scope: !581)
!581 = distinct !DILexicalBlock(scope: !572, file: !5, line: 506, column: 16)
!582 = !DILocation(line: 508, column: 16, scope: !581)
!583 = !DILocation(line: 509, column: 22, scope: !584)
!584 = distinct !DILexicalBlock(scope: !572, file: !5, line: 508, column: 23)
!585 = !DILocation(line: 0, scope: !572)
!586 = !DILocation(line: 497, column: 37, scope: !567)
!587 = !DILocation(line: 0, scope: !537)
!588 = !DILocation(line: 497, column: 28, scope: !567)
!589 = distinct !{!589, !535, !590, !114}
!590 = !DILocation(line: 512, column: 10, scope: !536)
!591 = !DILocation(line: 496, column: 16, scope: !537)
!592 = !DILocation(line: 522, column: 15, scope: !593)
!593 = distinct !DILexicalBlock(scope: !472, file: !5, line: 522, column: 11)
!594 = !DILocation(line: 522, column: 11, scope: !472)
!595 = !DILocation(line: 542, column: 10, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !5, line: 542, column: 10)
!597 = distinct !DILexicalBlock(scope: !593, file: !5, line: 522, column: 21)
!598 = !DILocation(line: 543, column: 17, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !5, line: 543, column: 17)
!600 = distinct !DILexicalBlock(scope: !601, file: !5, line: 542, column: 41)
!601 = distinct !DILexicalBlock(scope: !596, file: !5, line: 542, column: 10)
!602 = !DILocation(line: 543, column: 26, scope: !599)
!603 = !DILocation(line: 543, column: 23, scope: !599)
!604 = !DILocation(line: 543, column: 17, scope: !600)
!605 = !DILocation(line: 544, column: 30, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !5, line: 544, column: 20)
!607 = distinct !DILexicalBlock(scope: !599, file: !5, line: 543, column: 38)
!608 = !DILocation(line: 545, column: 30, scope: !606)
!609 = !DILocation(line: 545, column: 40, scope: !606)
!610 = !DILocation(line: 545, column: 52, scope: !606)
!611 = !DILocation(line: 545, column: 34, scope: !606)
!612 = !DILocation(line: 545, column: 57, scope: !606)
!613 = !DILocation(line: 544, column: 20, scope: !607)
!614 = !DILocation(line: 546, column: 22, scope: !615)
!615 = distinct !DILexicalBlock(scope: !606, file: !5, line: 545, column: 69)
!616 = !DILocation(line: 547, column: 16, scope: !615)
!617 = !DILocation(line: 548, column: 22, scope: !618)
!618 = distinct !DILexicalBlock(scope: !606, file: !5, line: 547, column: 23)
!619 = !DILocation(line: 0, scope: !606)
!620 = !DILocation(line: 542, column: 37, scope: !601)
!621 = !DILocation(line: 0, scope: !597)
!622 = !DILocation(line: 542, column: 28, scope: !601)
!623 = distinct !{!623, !595, !624, !114}
!624 = !DILocation(line: 551, column: 10, scope: !596)
!625 = !DILocation(line: 576, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !472, file: !5, line: 576, column: 11)
!627 = !DILocation(line: 576, column: 11, scope: !472)
!628 = !DILocation(line: 577, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !5, line: 576, column: 27)
!630 = !DILocation(line: 577, column: 21, scope: !629)
!631 = !DILocation(line: 577, column: 24, scope: !629)
!632 = !DILocation(line: 578, column: 11, scope: !629)
!633 = !DILocation(line: 578, column: 21, scope: !629)
!634 = !DILocation(line: 578, column: 24, scope: !629)
!635 = !DILocation(line: 579, column: 30, scope: !629)
!636 = !DILocation(line: 579, column: 16, scope: !629)
!637 = !DILocation(line: 579, column: 19, scope: !629)
!638 = !DILocation(line: 0, scope: !639)
!639 = distinct !DILexicalBlock(scope: !629, file: !5, line: 590, column: 14)
!640 = !DILocation(line: 590, column: 14, scope: !629)
!641 = !DILocation(line: 591, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !5, line: 590, column: 24)
!643 = !DILocation(line: 593, column: 10, scope: !642)
!644 = !DILocation(line: 594, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !639, file: !5, line: 593, column: 17)
!646 = !DILocation(line: 614, column: 17, scope: !647)
!647 = distinct !DILexicalBlock(scope: !472, file: !5, line: 614, column: 11)
!648 = !DILocation(line: 614, column: 11, scope: !472)
!649 = !DILocation(line: 615, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !5, line: 614, column: 27)
!651 = !DILocation(line: 615, column: 21, scope: !650)
!652 = !DILocation(line: 615, column: 24, scope: !650)
!653 = !DILocation(line: 616, column: 11, scope: !650)
!654 = !DILocation(line: 616, column: 21, scope: !650)
!655 = !DILocation(line: 616, column: 24, scope: !650)
!656 = !DILocation(line: 617, column: 30, scope: !650)
!657 = !DILocation(line: 617, column: 16, scope: !650)
!658 = !DILocation(line: 617, column: 19, scope: !650)
!659 = !DILocation(line: 0, scope: !660)
!660 = distinct !DILexicalBlock(scope: !650, file: !5, line: 628, column: 14)
!661 = !DILocation(line: 628, column: 14, scope: !650)
!662 = !DILocation(line: 639, column: 1, scope: !357)
!663 = distinct !DISubprogram(name: "searchkdtree", scope: !5, file: !5, line: 667, type: !664, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !3, !25, !9, !9, !23, !23, !23, !23, !26, !26, !10, !27}
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!667 = !DILocalVariable(name: "that", arg: 1, scope: !663, file: !5, line: 667, type: !3)
!668 = !DILocalVariable(name: "x", arg: 2, scope: !663, file: !5, line: 667, type: !25)
!669 = !DILocalVariable(name: "p", arg: 3, scope: !663, file: !5, line: 667, type: !9)
!670 = !DILocalVariable(name: "q", arg: 4, scope: !663, file: !5, line: 667, type: !9)
!671 = !DILocalVariable(name: "loindexp", arg: 5, scope: !663, file: !5, line: 668, type: !23)
!672 = !DILocalVariable(name: "upindexp", arg: 6, scope: !663, file: !5, line: 668, type: !23)
!673 = !DILocalVariable(name: "lopairlist", arg: 7, scope: !663, file: !5, line: 669, type: !23)
!674 = !DILocalVariable(name: "uppairlist", arg: 8, scope: !663, file: !5, line: 669, type: !23)
!675 = !DILocalVariable(name: "cut", arg: 9, scope: !663, file: !5, line: 670, type: !26)
!676 = !DILocalVariable(name: "cut2", arg: 10, scope: !663, file: !5, line: 670, type: !26)
!677 = !DILocalVariable(name: "dim", arg: 11, scope: !663, file: !5, line: 670, type: !10)
!678 = !DILocalVariable(name: "frozen", arg: 12, scope: !663, file: !5, line: 670, type: !27)
!679 = !DILocalVariable(name: "xij", scope: !663, file: !5, line: 672, type: !26)
!680 = !DILocalVariable(name: "yij", scope: !663, file: !5, line: 672, type: !26)
!681 = !DILocalVariable(name: "zij", scope: !663, file: !5, line: 672, type: !26)
!682 = !DILocalVariable(name: "wij", scope: !663, file: !5, line: 672, type: !26)
!683 = !DILocalVariable(name: "r2", scope: !663, file: !5, line: 672, type: !26)
!684 = !DILocation(line: 749, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !663, file: !5, line: 747, column: 8)
!686 = !DILocation(line: 754, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !685, file: !5, line: 753, column: 4)
!688 = !DILocation(line: 0, scope: !663)
!689 = !DILocation(line: 685, column: 6, scope: !663)
!690 = !DILocation(line: 697, column: 12, scope: !691)
!691 = distinct !DILexicalBlock(scope: !663, file: !5, line: 697, column: 8)
!692 = !DILocation(line: 0, scope: !691)
!693 = !DILocation(line: 697, column: 18, scope: !691)
!694 = !DILocation(line: 697, column: 41, scope: !691)
!695 = !DILocation(line: 698, column: 40, scope: !691)
!696 = !DILocation(line: 699, column: 20, scope: !691)
!697 = !DILocation(line: 699, column: 24, scope: !691)
!698 = !DILocation(line: 699, column: 10, scope: !691)
!699 = !DILocation(line: 699, column: 29, scope: !691)
!700 = !DILocation(line: 699, column: 52, scope: !691)
!701 = !DILocation(line: 699, column: 44, scope: !691)
!702 = !DILocation(line: 699, column: 58, scope: !691)
!703 = !DILocation(line: 699, column: 38, scope: !691)
!704 = !DILocation(line: 699, column: 35, scope: !691)
!705 = !DILocation(line: 697, column: 8, scope: !663)
!706 = !DILocation(line: 705, column: 35, scope: !707)
!707 = distinct !DILexicalBlock(scope: !691, file: !5, line: 704, column: 4)
!708 = !DILocation(line: 705, column: 7, scope: !707)
!709 = !DILocation(line: 707, column: 4, scope: !707)
!710 = !DILocation(line: 718, column: 20, scope: !711)
!711 = distinct !DILexicalBlock(scope: !663, file: !5, line: 718, column: 8)
!712 = !DILocation(line: 718, column: 11, scope: !711)
!713 = !DILocation(line: 718, column: 23, scope: !711)
!714 = !DILocation(line: 718, column: 28, scope: !711)
!715 = !DILocation(line: 718, column: 38, scope: !711)
!716 = !DILocation(line: 718, column: 42, scope: !711)
!717 = !DILocation(line: 718, column: 8, scope: !663)
!718 = !DILocation(line: 719, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !711, file: !5, line: 718, column: 60)
!720 = !DILocation(line: 719, column: 36, scope: !719)
!721 = !DILocation(line: 719, column: 30, scope: !719)
!722 = !DILocation(line: 719, column: 28, scope: !719)
!723 = !DILocation(line: 720, column: 13, scope: !719)
!724 = !DILocation(line: 720, column: 46, scope: !719)
!725 = !DILocation(line: 720, column: 30, scope: !719)
!726 = !DILocation(line: 720, column: 28, scope: !719)
!727 = !DILocation(line: 721, column: 13, scope: !719)
!728 = !DILocation(line: 721, column: 46, scope: !719)
!729 = !DILocation(line: 721, column: 30, scope: !719)
!730 = !DILocation(line: 721, column: 28, scope: !719)
!731 = !DILocation(line: 722, column: 28, scope: !719)
!732 = !DILocation(line: 722, column: 22, scope: !719)
!733 = !DILocation(line: 722, column: 34, scope: !719)
!734 = !DILocation(line: 723, column: 11, scope: !719)
!735 = !DILocation(line: 724, column: 16, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !5, line: 723, column: 21)
!737 = distinct !DILexicalBlock(scope: !719, file: !5, line: 723, column: 11)
!738 = !DILocation(line: 724, column: 49, scope: !736)
!739 = !DILocation(line: 724, column: 33, scope: !736)
!740 = !DILocation(line: 724, column: 31, scope: !736)
!741 = !DILocation(line: 725, column: 13, scope: !736)
!742 = !DILocation(line: 726, column: 7, scope: !736)
!743 = !DILocation(line: 0, scope: !719)
!744 = !DILocation(line: 727, column: 14, scope: !745)
!745 = distinct !DILexicalBlock(scope: !719, file: !5, line: 727, column: 11)
!746 = !DILocation(line: 727, column: 11, scope: !719)
!747 = !DILocation(line: 728, column: 22, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !5, line: 728, column: 14)
!749 = distinct !DILexicalBlock(scope: !745, file: !5, line: 727, column: 22)
!750 = !DILocation(line: 0, scope: !748)
!751 = !DILocation(line: 747, column: 18, scope: !685)
!752 = !DILocation(line: 0, scope: !685)
!753 = !DILocation(line: 747, column: 41, scope: !685)
!754 = !DILocation(line: 748, column: 40, scope: !685)
!755 = !DILocation(line: 749, column: 20, scope: !685)
!756 = !DILocation(line: 749, column: 24, scope: !685)
!757 = !DILocation(line: 749, column: 10, scope: !685)
!758 = !DILocation(line: 749, column: 29, scope: !685)
!759 = !DILocation(line: 749, column: 51, scope: !685)
!760 = !DILocation(line: 749, column: 43, scope: !685)
!761 = !DILocation(line: 749, column: 57, scope: !685)
!762 = !DILocation(line: 749, column: 37, scope: !685)
!763 = !DILocation(line: 749, column: 35, scope: !685)
!764 = !DILocation(line: 747, column: 8, scope: !663)
!765 = !DILocation(line: 754, column: 35, scope: !687)
!766 = !DILocation(line: 757, column: 1, scope: !663)
!767 = distinct !DISubprogram(name: "heapsort_pairs", scope: !5, file: !5, line: 114, type: !768, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !27, !10}
!770 = !{!771, !772, !773, !774}
!771 = !DILocalVariable(name: "a", arg: 1, scope: !767, file: !5, line: 114, type: !27)
!772 = !DILocalVariable(name: "n", arg: 2, scope: !767, file: !5, line: 114, type: !10)
!773 = !DILocalVariable(name: "k", scope: !767, file: !5, line: 117, type: !10)
!774 = !DILocalVariable(name: "v", scope: !767, file: !5, line: 117, type: !10)
!775 = !DILocation(line: 0, scope: !767)
!776 = !DILocation(line: 119, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !767, file: !5, line: 119, column: 4)
!778 = !DILocation(line: 119, column: 22, scope: !779)
!779 = distinct !DILexicalBlock(scope: !777, file: !5, line: 119, column: 4)
!780 = !DILocation(line: 119, column: 4, scope: !777)
!781 = !DILocation(line: 121, column: 4, scope: !767)
!782 = !DILocalVariable(name: "a", arg: 1, scope: !783, file: !5, line: 73, type: !27)
!783 = distinct !DISubprogram(name: "downheap_pairs", scope: !5, file: !5, line: 73, type: !784, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !27, !10, !10}
!786 = !{!782, !787, !788, !789, !790}
!787 = !DILocalVariable(name: "n", arg: 2, scope: !783, file: !5, line: 73, type: !10)
!788 = !DILocalVariable(name: "k", arg: 3, scope: !783, file: !5, line: 73, type: !10)
!789 = !DILocalVariable(name: "j", scope: !783, file: !5, line: 76, type: !10)
!790 = !DILocalVariable(name: "v", scope: !783, file: !5, line: 76, type: !10)
!791 = !DILocation(line: 0, scope: !783, inlinedAt: !792)
!792 = distinct !DILocation(line: 120, column: 7, scope: !779)
!793 = !DILocation(line: 78, column: 12, scope: !783, inlinedAt: !792)
!794 = !DILocation(line: 78, column: 8, scope: !783, inlinedAt: !792)
!795 = !DILocation(line: 79, column: 13, scope: !783, inlinedAt: !792)
!796 = !DILocation(line: 79, column: 4, scope: !783, inlinedAt: !792)
!797 = !DILocation(line: 80, column: 13, scope: !798, inlinedAt: !792)
!798 = distinct !DILexicalBlock(scope: !783, file: !5, line: 79, column: 23)
!799 = !DILocation(line: 81, column: 14, scope: !800, inlinedAt: !792)
!800 = distinct !DILexicalBlock(scope: !798, file: !5, line: 81, column: 11)
!801 = !DILocation(line: 81, column: 19, scope: !800, inlinedAt: !792)
!802 = !DILocation(line: 81, column: 27, scope: !800, inlinedAt: !792)
!803 = !DILocation(line: 81, column: 23, scope: !800, inlinedAt: !792)
!804 = !DILocation(line: 81, column: 34, scope: !800, inlinedAt: !792)
!805 = !DILocation(line: 81, column: 32, scope: !800, inlinedAt: !792)
!806 = !DILocation(line: 81, column: 11, scope: !798, inlinedAt: !792)
!807 = !DILocation(line: 0, scope: !798, inlinedAt: !792)
!808 = !DILocation(line: 83, column: 20, scope: !809, inlinedAt: !792)
!809 = distinct !DILexicalBlock(scope: !798, file: !5, line: 83, column: 11)
!810 = !DILocation(line: 83, column: 16, scope: !809, inlinedAt: !792)
!811 = !DILocation(line: 83, column: 13, scope: !809, inlinedAt: !792)
!812 = !DILocation(line: 83, column: 11, scope: !798, inlinedAt: !792)
!813 = !DILocation(line: 85, column: 7, scope: !798, inlinedAt: !792)
!814 = !DILocation(line: 85, column: 16, scope: !798, inlinedAt: !792)
!815 = distinct !{!815, !796, !816, !114}
!816 = !DILocation(line: 87, column: 4, scope: !783, inlinedAt: !792)
!817 = !DILocation(line: 88, column: 8, scope: !783, inlinedAt: !792)
!818 = !DILocation(line: 88, column: 4, scope: !783, inlinedAt: !792)
!819 = !DILocation(line: 88, column: 13, scope: !783, inlinedAt: !792)
!820 = distinct !{!820, !780, !821, !114}
!821 = !DILocation(line: 120, column: 29, scope: !777)
!822 = !DILocation(line: 122, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !767, file: !5, line: 121, column: 18)
!824 = !DILocation(line: 123, column: 18, scope: !823)
!825 = !DILocation(line: 123, column: 14, scope: !823)
!826 = !DILocation(line: 123, column: 12, scope: !823)
!827 = !DILocation(line: 124, column: 16, scope: !823)
!828 = !DILocation(line: 0, scope: !783, inlinedAt: !829)
!829 = distinct !DILocation(line: 125, column: 7, scope: !823)
!830 = !DILocation(line: 78, column: 8, scope: !783, inlinedAt: !829)
!831 = !DILocation(line: 79, column: 13, scope: !783, inlinedAt: !829)
!832 = !DILocation(line: 79, column: 4, scope: !783, inlinedAt: !829)
!833 = !DILocation(line: 80, column: 13, scope: !798, inlinedAt: !829)
!834 = !DILocation(line: 81, column: 14, scope: !800, inlinedAt: !829)
!835 = !DILocation(line: 81, column: 19, scope: !800, inlinedAt: !829)
!836 = !DILocation(line: 81, column: 27, scope: !800, inlinedAt: !829)
!837 = !DILocation(line: 81, column: 23, scope: !800, inlinedAt: !829)
!838 = !DILocation(line: 81, column: 34, scope: !800, inlinedAt: !829)
!839 = !DILocation(line: 81, column: 32, scope: !800, inlinedAt: !829)
!840 = !DILocation(line: 81, column: 11, scope: !798, inlinedAt: !829)
!841 = !DILocation(line: 0, scope: !798, inlinedAt: !829)
!842 = !DILocation(line: 83, column: 20, scope: !809, inlinedAt: !829)
!843 = !DILocation(line: 83, column: 16, scope: !809, inlinedAt: !829)
!844 = !DILocation(line: 83, column: 13, scope: !809, inlinedAt: !829)
!845 = !DILocation(line: 83, column: 11, scope: !798, inlinedAt: !829)
!846 = !DILocation(line: 85, column: 7, scope: !798, inlinedAt: !829)
!847 = !DILocation(line: 85, column: 16, scope: !798, inlinedAt: !829)
!848 = distinct !{!848, !832, !849, !114}
!849 = !DILocation(line: 87, column: 4, scope: !783, inlinedAt: !829)
!850 = !DILocation(line: 88, column: 8, scope: !783, inlinedAt: !829)
!851 = !DILocation(line: 88, column: 4, scope: !783, inlinedAt: !829)
!852 = !DILocation(line: 88, column: 13, scope: !783, inlinedAt: !829)
!853 = !DILocation(line: 121, column: 13, scope: !767)
!854 = distinct !{!854, !781, !855, !114}
!855 = !DILocation(line: 126, column: 4, scope: !767)
!856 = !DILocation(line: 127, column: 1, scope: !767)
!857 = !DISubprogram(name: "free_ivector", scope: !5, file: !5, line: 29, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !233)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !23, !9, !9}
