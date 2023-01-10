; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/519.lbm_r/llvm-ir/519.lbm_r_bc/src/main.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/519.lbm_r/src/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MAIN_Param = type { i32, ptr, i32, i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@srcGrid = internal global ptr null, align 8, !dbg !0
@dstGrid = internal global ptr null, align 8, !dbg !28
@.str = private unnamed_addr constant [14 x i8] c"timestep: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"MAIN_parseCommandLine: cannot stat obstacle file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"MAIN_parseCommandLine:\0A\09size of file '%s' is %i bytes\0A\09expected size is %i bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"MAIN_parseCommandLine: cannot stat result file '%s'\0A\00", align 1
@__const.MAIN_printInfo.actionString = private unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"nothing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"compare\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"store\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@__const.MAIN_printInfo.simTypeString = private unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"lid-driven cavity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel flow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [174 x i8] c"MAIN_printInfo:\0A\09grid size      : %i x %i x %i = %.2f * 10^6 Cells\0A\09nTimeSteps     : %i\0A\09result file    : %s\0A\09action         : %s\0A\09simulation type: %s\0A\09obstacle file  : %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@str = private unnamed_addr constant [108 x i8] c"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %nArgs, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 !dbg !45 {
entry:
  %actionString.i = alloca [3 x [32 x i8]], align 16
  %simTypeString.i = alloca [3 x [32 x i8]], align 16
  %param = alloca %struct.MAIN_Param, align 8
  call void @llvm.dbg.value(metadata i32 %nArgs, metadata !49, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %arg, metadata !50, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param) #11, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %param, metadata !51, metadata !DIExpression()), !dbg !63
  call void @MAIN_parseCommandLine(i32 noundef %nArgs, ptr noundef %arg, ptr noundef nonnull %param), !dbg !64
  call void @llvm.dbg.value(metadata ptr %param, metadata !65, metadata !DIExpression()) #11, !dbg !79
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %actionString.i) #11, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %actionString.i, metadata !72, metadata !DIExpression()) #11, !dbg !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %actionString.i, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.actionString, i64 96, i1 false) #11, !dbg !82
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %simTypeString.i) #11, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %simTypeString.i, metadata !78, metadata !DIExpression()) #11, !dbg !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %simTypeString.i, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.simTypeString, i64 96, i1 false) #11, !dbg !84
  %0 = load i32, ptr %param, align 8, !dbg !85, !tbaa !86
  %resultFilename.i = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 1, !dbg !92
  %1 = load ptr, ptr %resultFilename.i, align 8, !dbg !92, !tbaa !93
  %action.i = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 2, !dbg !94
  %2 = load i32, ptr %action.i, align 8, !dbg !94, !tbaa !95
  %simType.i = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 3, !dbg !96
  %3 = load i32, ptr %simType.i, align 4, !dbg !96, !tbaa !97
  %obstacleFilename.i = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 4, !dbg !98
  %4 = load ptr, ptr %obstacleFilename.i, align 8, !dbg !98, !tbaa !99
  %cmp.i = icmp eq ptr %4, null, !dbg !100
  %spec.select.i = select i1 %cmp.i, ptr @.str.6, ptr %4, !dbg !101
  %idxprom1.i = zext i32 %3 to i64, !dbg !102
  %arrayidx2.i = getelementptr inbounds [3 x [32 x i8]], ptr %simTypeString.i, i64 0, i64 %idxprom1.i, !dbg !102
  %idxprom.i = zext i32 %2 to i64, !dbg !103
  %arrayidx.i = getelementptr inbounds [3 x [32 x i8]], ptr %actionString.i, i64 0, i64 %idxprom.i, !dbg !103
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef 100, i32 noundef 100, i32 noundef 130, double noundef 0x3FF4CCCCCCCCCCCC, i32 noundef %0, ptr noundef %1, ptr noundef nonnull %arrayidx.i, ptr noundef nonnull %arrayidx2.i, ptr noundef nonnull %spec.select.i) #11, !dbg !104
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %simTypeString.i) #11, !dbg !105
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %actionString.i) #11, !dbg !105
  call void @MAIN_initialize(ptr noundef nonnull %param), !dbg !106
  call void @llvm.dbg.value(metadata i32 1, metadata !60, metadata !DIExpression()), !dbg !61
  %cmp.not15 = icmp slt i32 %0, 1, !dbg !107
  br i1 %cmp.not15, label %for.end, label %for.body.lr.ph, !dbg !110

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %for.body.us, label %for.body, !dbg !111

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %t.016.us = phi i32 [ %inc.us, %for.inc.us ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %t.016.us, metadata !60, metadata !DIExpression()), !dbg !61
  %5 = load ptr, ptr @srcGrid, align 8, !dbg !113, !tbaa !116
  call void @LBM_handleInOutFlow(ptr noundef %5) #11, !dbg !117
  %6 = load ptr, ptr @srcGrid, align 8, !dbg !118, !tbaa !116
  %7 = load ptr, ptr @dstGrid, align 8, !dbg !119, !tbaa !116
  call void @LBM_performStreamCollideTRT(ptr noundef %6, ptr noundef %7) #11, !dbg !120
  call void @LBM_swapGrids(ptr noundef nonnull @srcGrid, ptr noundef nonnull @dstGrid) #11, !dbg !121
  %and.us = and i32 %t.016.us, 63, !dbg !122
  %cmp4.us = icmp eq i32 %and.us, 0, !dbg !124
  br i1 %cmp4.us, label %if.then5.us, label %for.inc.us, !dbg !125

if.then5.us:                                      ; preds = %for.body.us
  %call.us = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %t.016.us), !dbg !126
  %8 = load ptr, ptr @srcGrid, align 8, !dbg !128, !tbaa !116
  call void @LBM_showGridStatistics(ptr noundef %8) #11, !dbg !129
  br label %for.inc.us, !dbg !130

for.inc.us:                                       ; preds = %if.then5.us, %for.body.us
  %inc.us = add nuw i32 %t.016.us, 1, !dbg !131
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !60, metadata !DIExpression()), !dbg !61
  %exitcond19.not = icmp eq i32 %t.016.us, %0, !dbg !107
  br i1 %exitcond19.not, label %for.end, label %for.body.us, !dbg !110, !llvm.loop !132

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %t.016 = phi i32 [ %inc, %for.inc ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %t.016, metadata !60, metadata !DIExpression()), !dbg !61
  %9 = load ptr, ptr @srcGrid, align 8, !dbg !118, !tbaa !116
  %10 = load ptr, ptr @dstGrid, align 8, !dbg !119, !tbaa !116
  call void @LBM_performStreamCollideTRT(ptr noundef %9, ptr noundef %10) #11, !dbg !120
  call void @LBM_swapGrids(ptr noundef nonnull @srcGrid, ptr noundef nonnull @dstGrid) #11, !dbg !121
  %and = and i32 %t.016, 63, !dbg !122
  %cmp4 = icmp eq i32 %and, 0, !dbg !124
  br i1 %cmp4, label %if.then5, label %for.inc, !dbg !125

if.then5:                                         ; preds = %for.body
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %t.016), !dbg !126
  %11 = load ptr, ptr @srcGrid, align 8, !dbg !128, !tbaa !116
  call void @LBM_showGridStatistics(ptr noundef %11) #11, !dbg !129
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add nuw i32 %t.016, 1, !dbg !131
  call void @llvm.dbg.value(metadata i32 %inc, metadata !60, metadata !DIExpression()), !dbg !61
  %exitcond.not = icmp eq i32 %t.016, %0, !dbg !107
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !110, !llvm.loop !132

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  call void @llvm.dbg.value(metadata ptr %param, metadata !136, metadata !DIExpression()) #11, !dbg !139
  %12 = load ptr, ptr @srcGrid, align 8, !dbg !141, !tbaa !116
  call void @LBM_showGridStatistics(ptr noundef %12) #11, !dbg !142
  switch i32 %2, label %MAIN_finalize.exit [
    i32 1, label %if.end.i.thread
    i32 2, label %if.then4.i
  ], !dbg !143

if.end.i.thread:                                  ; preds = %for.end
  %13 = load ptr, ptr @srcGrid, align 8, !dbg !144, !tbaa !116
  call void @LBM_compareVelocityField(ptr noundef %13, ptr noundef %1, i32 noundef -1) #11, !dbg !146
  br label %MAIN_finalize.exit, !dbg !147

if.then4.i:                                       ; preds = %for.end
  %14 = load ptr, ptr @srcGrid, align 8, !dbg !148, !tbaa !116
  call void @LBM_storeVelocityField(ptr noundef %14, ptr noundef %1, i32 noundef -1) #11, !dbg !150
  br label %MAIN_finalize.exit, !dbg !150

MAIN_finalize.exit:                               ; preds = %for.end, %if.end.i.thread, %if.then4.i
  call void @LBM_freeGrid(ptr noundef nonnull @srcGrid) #11, !dbg !151
  call void @LBM_freeGrid(ptr noundef nonnull @dstGrid) #11, !dbg !152
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param) #11, !dbg !153
  ret i32 0, !dbg !154
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @MAIN_parseCommandLine(i32 noundef %nArgs, ptr nocapture noundef readonly %arg, ptr nocapture noundef %param) local_unnamed_addr #0 !dbg !155 {
entry:
  %fileStat = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %nArgs, metadata !160, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %arg, metadata !161, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %param, metadata !162, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %fileStat) #11, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %fileStat, metadata !163, metadata !DIExpression()), !dbg !205
  %0 = add i32 %nArgs, -7, !dbg !206
  %1 = icmp ult i32 %0, -2, !dbg !206
  br i1 %1, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !208
  tail call void @exit(i32 noundef 1) #12, !dbg !210
  unreachable, !dbg !210

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %arg, i64 1, !dbg !211
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !211, !tbaa !116
  call void @llvm.dbg.value(metadata ptr %2, metadata !212, metadata !DIExpression()) #11, !dbg !219
  %call.i = tail call i64 @strtol(ptr nocapture noundef nonnull %2, ptr noundef null, i32 noundef 10) #11, !dbg !221
  %conv.i = trunc i64 %call.i to i32, !dbg !222
  store i32 %conv.i, ptr %param, align 8, !dbg !223, !tbaa !86
  %arrayidx3 = getelementptr inbounds ptr, ptr %arg, i64 2, !dbg !224
  %3 = load ptr, ptr %arrayidx3, align 8, !dbg !224, !tbaa !116
  %resultFilename = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 1, !dbg !225
  store ptr %3, ptr %resultFilename, align 8, !dbg !226, !tbaa !93
  %arrayidx4 = getelementptr inbounds ptr, ptr %arg, i64 3, !dbg !227
  %4 = load ptr, ptr %arrayidx4, align 8, !dbg !227, !tbaa !116
  call void @llvm.dbg.value(metadata ptr %4, metadata !212, metadata !DIExpression()) #11, !dbg !228
  %call.i54 = tail call i64 @strtol(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #11, !dbg !230
  %conv.i55 = trunc i64 %call.i54 to i32, !dbg !231
  %action = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 2, !dbg !232
  store i32 %conv.i55, ptr %action, align 8, !dbg !233, !tbaa !95
  %arrayidx6 = getelementptr inbounds ptr, ptr %arg, i64 4, !dbg !234
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !234, !tbaa !116
  call void @llvm.dbg.value(metadata ptr %5, metadata !212, metadata !DIExpression()) #11, !dbg !235
  %call.i56 = tail call i64 @strtol(ptr nocapture noundef nonnull %5, ptr noundef null, i32 noundef 10) #11, !dbg !237
  %conv.i57 = trunc i64 %call.i56 to i32, !dbg !238
  %simType = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 3, !dbg !239
  store i32 %conv.i57, ptr %simType, align 4, !dbg !240, !tbaa !97
  %cmp8 = icmp eq i32 %nArgs, 6, !dbg !241
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !243

if.then9:                                         ; preds = %if.end
  %arrayidx10 = getelementptr inbounds ptr, ptr %arg, i64 5, !dbg !244
  %6 = load ptr, ptr %arrayidx10, align 8, !dbg !244, !tbaa !116
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 4, !dbg !246
  store ptr %6, ptr %obstacleFilename, align 8, !dbg !247, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %6, metadata !248, metadata !DIExpression()) #11, !dbg !256
  call void @llvm.dbg.value(metadata ptr %fileStat, metadata !255, metadata !DIExpression()) #11, !dbg !256
  %call.i58 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %fileStat) #11, !dbg !259
  %cmp13.not = icmp eq i32 %call.i58, 0, !dbg !260
  br i1 %cmp13.not, label %if.end17, label %if.then14, !dbg !261

if.then14:                                        ; preds = %if.then9
  %7 = load ptr, ptr %obstacleFilename, align 8, !dbg !262, !tbaa !99
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %7), !dbg !264
  call void @exit(i32 noundef 1) #12, !dbg !265
  unreachable, !dbg !265

if.end17:                                         ; preds = %if.then9
  %st_size = getelementptr inbounds %struct.stat, ptr %fileStat, i64 0, i32 8, !dbg !266
  %8 = load i64, ptr %st_size, align 8, !dbg !266, !tbaa !268
  %cmp18.not = icmp eq i64 %8, 1313130, !dbg !272
  br i1 %cmp18.not, label %if.end25, label %if.then19, !dbg !273

if.then19:                                        ; preds = %if.end17
  %9 = load ptr, ptr %obstacleFilename, align 8, !dbg !274, !tbaa !99
  %conv = trunc i64 %8 to i32, !dbg !276
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef %conv, i32 noundef 1313130), !dbg !277
  call void @exit(i32 noundef 1) #12, !dbg !278
  unreachable, !dbg !278

if.else:                                          ; preds = %if.end
  %obstacleFilename24 = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 4, !dbg !279
  store ptr null, ptr %obstacleFilename24, align 8, !dbg !280, !tbaa !99
  br label %if.end25

if.end25:                                         ; preds = %if.end17, %if.else
  %10 = load i32, ptr %action, align 8, !dbg !281, !tbaa !95
  %cmp27 = icmp eq i32 %10, 1, !dbg !283
  br i1 %cmp27, label %land.lhs.true, label %if.end36, !dbg !284

land.lhs.true:                                    ; preds = %if.end25
  %11 = load ptr, ptr %resultFilename, align 8, !dbg !285, !tbaa !93
  call void @llvm.dbg.value(metadata ptr %11, metadata !248, metadata !DIExpression()) #11, !dbg !286
  call void @llvm.dbg.value(metadata ptr %fileStat, metadata !255, metadata !DIExpression()) #11, !dbg !286
  %call.i59 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %11, ptr noundef nonnull %fileStat) #11, !dbg !288
  %cmp31.not = icmp eq i32 %call.i59, 0, !dbg !289
  br i1 %cmp31.not, label %if.end36, label %if.then33, !dbg !290

if.then33:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %resultFilename, align 8, !dbg !291, !tbaa !93
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef %12), !dbg !293
  call void @exit(i32 noundef 1) #12, !dbg !294
  unreachable, !dbg !294

if.end36:                                         ; preds = %land.lhs.true, %if.end25
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %fileStat) #11, !dbg !295
  ret void, !dbg !295
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @MAIN_printInfo(ptr nocapture noundef readonly %param) local_unnamed_addr #3 !dbg !66 {
entry:
  %actionString = alloca [3 x [32 x i8]], align 16
  %simTypeString = alloca [3 x [32 x i8]], align 16
  call void @llvm.dbg.value(metadata ptr %param, metadata !65, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %actionString) #11, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %actionString, metadata !72, metadata !DIExpression()), !dbg !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %actionString, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.actionString, i64 96, i1 false), !dbg !298
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %simTypeString) #11, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %simTypeString, metadata !78, metadata !DIExpression()), !dbg !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %simTypeString, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.simTypeString, i64 96, i1 false), !dbg !300
  %0 = load i32, ptr %param, align 8, !dbg !301, !tbaa !86
  %resultFilename = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 1, !dbg !302
  %1 = load ptr, ptr %resultFilename, align 8, !dbg !302, !tbaa !93
  %action = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 2, !dbg !303
  %2 = load i32, ptr %action, align 8, !dbg !303, !tbaa !95
  %simType = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 3, !dbg !304
  %3 = load i32, ptr %simType, align 4, !dbg !304, !tbaa !97
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 4, !dbg !305
  %4 = load ptr, ptr %obstacleFilename, align 8, !dbg !305, !tbaa !99
  %cmp = icmp eq ptr %4, null, !dbg !306
  %spec.select = select i1 %cmp, ptr @.str.6, ptr %4, !dbg !307
  %idxprom1 = zext i32 %3 to i64, !dbg !308
  %arrayidx2 = getelementptr inbounds [3 x [32 x i8]], ptr %simTypeString, i64 0, i64 %idxprom1, !dbg !308
  %idxprom = zext i32 %2 to i64, !dbg !309
  %arrayidx = getelementptr inbounds [3 x [32 x i8]], ptr %actionString, i64 0, i64 %idxprom, !dbg !309
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef 100, i32 noundef 100, i32 noundef 130, double noundef 0x3FF4CCCCCCCCCCCC, i32 noundef %0, ptr noundef %1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %spec.select), !dbg !310
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %simTypeString) #11, !dbg !311
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %actionString) #11, !dbg !311
  ret void, !dbg !311
}

; Function Attrs: nounwind uwtable
define dso_local void @MAIN_initialize(ptr nocapture noundef readonly %param) local_unnamed_addr #0 !dbg !312 {
entry:
  call void @llvm.dbg.value(metadata ptr %param, metadata !314, metadata !DIExpression()), !dbg !315
  tail call void @LBM_allocateGrid(ptr noundef nonnull @srcGrid) #11, !dbg !316
  tail call void @LBM_allocateGrid(ptr noundef nonnull @dstGrid) #11, !dbg !317
  %0 = load ptr, ptr @srcGrid, align 8, !dbg !318, !tbaa !116
  tail call void @LBM_initializeGrid(ptr noundef %0) #11, !dbg !319
  %1 = load ptr, ptr @dstGrid, align 8, !dbg !320, !tbaa !116
  tail call void @LBM_initializeGrid(ptr noundef %1) #11, !dbg !321
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 4, !dbg !322
  %2 = load ptr, ptr %obstacleFilename, align 8, !dbg !322, !tbaa !99
  %cmp.not = icmp eq ptr %2, null, !dbg !324
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !325

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @srcGrid, align 8, !dbg !326, !tbaa !116
  tail call void @LBM_loadObstacleFile(ptr noundef %3, ptr noundef nonnull %2) #11, !dbg !328
  %4 = load ptr, ptr @dstGrid, align 8, !dbg !329, !tbaa !116
  %5 = load ptr, ptr %obstacleFilename, align 8, !dbg !330, !tbaa !99
  tail call void @LBM_loadObstacleFile(ptr noundef %4, ptr noundef %5) #11, !dbg !331
  br label %if.end, !dbg !332

if.end:                                           ; preds = %if.then, %entry
  %simType = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 3, !dbg !333
  %6 = load i32, ptr %simType, align 4, !dbg !333, !tbaa !97
  %cmp6 = icmp eq i32 %6, 1, !dbg !335
  %7 = load ptr, ptr @srcGrid, align 8, !dbg !336, !tbaa !116
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !337

if.then7:                                         ; preds = %if.end
  tail call void @LBM_initializeSpecialCellsForChannel(ptr noundef %7) #11, !dbg !338
  %8 = load ptr, ptr @dstGrid, align 8, !dbg !340, !tbaa !116
  tail call void @LBM_initializeSpecialCellsForChannel(ptr noundef %8) #11, !dbg !341
  br label %if.end12, !dbg !342

if.else:                                          ; preds = %if.end
  tail call void @LBM_initializeSpecialCellsForLDC(ptr noundef %7) #11, !dbg !343
  %9 = load ptr, ptr @dstGrid, align 8, !dbg !345, !tbaa !116
  tail call void @LBM_initializeSpecialCellsForLDC(ptr noundef %9) #11, !dbg !346
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %10 = load ptr, ptr @srcGrid, align 8, !dbg !347, !tbaa !116
  tail call void @LBM_showGridStatistics(ptr noundef %10) #11, !dbg !348
  ret void, !dbg !349
}

declare !dbg !350 void @LBM_handleInOutFlow(ptr noundef) local_unnamed_addr #4

declare !dbg !355 void @LBM_performStreamCollideTRT(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !358 void @LBM_swapGrids(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !362 void @LBM_showGridStatistics(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @MAIN_finalize(ptr nocapture noundef readonly %param) local_unnamed_addr #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata ptr %param, metadata !136, metadata !DIExpression()), !dbg !363
  %0 = load ptr, ptr @srcGrid, align 8, !dbg !364, !tbaa !116
  tail call void @LBM_showGridStatistics(ptr noundef %0) #11, !dbg !365
  %action = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 2, !dbg !366
  %1 = load i32, ptr %action, align 8, !dbg !366, !tbaa !95
  %cmp = icmp eq i32 %1, 1, !dbg !367
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @srcGrid, align 8, !dbg !369, !tbaa !116
  %resultFilename = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 1, !dbg !370
  %3 = load ptr, ptr %resultFilename, align 8, !dbg !370, !tbaa !93
  tail call void @LBM_compareVelocityField(ptr noundef %2, ptr noundef %3, i32 noundef -1) #11, !dbg !371
  %.pr = load i32, ptr %action, align 8, !dbg !372, !tbaa !95
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %.pr, %if.then ], [ %1, %entry ], !dbg !372
  %cmp3 = icmp eq i32 %4, 2, !dbg !373
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !374

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr @srcGrid, align 8, !dbg !375, !tbaa !116
  %resultFilename6 = getelementptr inbounds %struct.MAIN_Param, ptr %param, i64 0, i32 1, !dbg !376
  %6 = load ptr, ptr %resultFilename6, align 8, !dbg !376, !tbaa !93
  tail call void @LBM_storeVelocityField(ptr noundef %5, ptr noundef %6, i32 noundef -1) #11, !dbg !377
  br label %if.end7, !dbg !377

if.end7:                                          ; preds = %if.then4, %if.end
  tail call void @LBM_freeGrid(ptr noundef nonnull @srcGrid) #11, !dbg !378
  tail call void @LBM_freeGrid(ptr noundef nonnull @dstGrid) #11, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare !dbg !381 void @LBM_allocateGrid(ptr noundef) local_unnamed_addr #4

declare !dbg !384 void @LBM_initializeGrid(ptr noundef) local_unnamed_addr #4

declare !dbg !385 void @LBM_loadObstacleFile(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !388 void @LBM_initializeSpecialCellsForChannel(ptr noundef) local_unnamed_addr #4

declare !dbg !389 void @LBM_initializeSpecialCellsForLDC(ptr noundef) local_unnamed_addr #4

declare !dbg !390 void @LBM_compareVelocityField(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !394 void @LBM_storeVelocityField(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !395 void @LBM_freeGrid(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "srcGrid", scope: !2, file: !30, line: 21, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/519.lbm_r/src/main.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/519.lbm_r", checksumkind: CSK_MD5, checksum: "3b91efcff068dd48542caf6338b4ce36")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 27, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/519.lbm_r/src/main.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ed9999bc40f1cbdbc95d90d838886bd9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "NOTHING", value: 0)
!10 = !DIEnumerator(name: "COMPARE", value: 1)
!11 = !DIEnumerator(name: "STORE", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "LDC", value: 0)
!15 = !DIEnumerator(name: "CHANNEL", value: 1)
!16 = !{!17, !18, !19, !20, !21, !24}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_Action", file: !6, line: 27, baseType: !5)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_SimType", file: !6, line: 28, baseType: !12)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!0, !28}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "dstGrid", scope: !2, file: !30, line: 21, type: !31, isLocal: true, isDefinition: true)
!30 = !DIFile(filename: "apps/519.lbm_r/src/main.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3b91efcff068dd48542caf6338b4ce36")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBM_GridPtr", file: !32, line: 9, baseType: !33)
!32 = !DIFile(filename: "apps/519.lbm_r/src/lbm_1d_array.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9999ab0a9cab1c793e34b2a812895996")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBM_Grid", file: !32, line: 8, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1664000000, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 26000000)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!45 = distinct !DISubprogram(name: "main", scope: !30, file: !30, line: 25, type: !46, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!19, !19, !24}
!48 = !{!49, !50, !51, !60}
!49 = !DILocalVariable(name: "nArgs", arg: 1, scope: !45, file: !30, line: 25, type: !19)
!50 = !DILocalVariable(name: "arg", arg: 2, scope: !45, file: !30, line: 25, type: !24)
!51 = !DILocalVariable(name: "param", scope: !45, file: !30, line: 26, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_Param", file: !6, line: 36, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 30, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nTimeSteps", scope: !53, file: !6, line: 31, baseType: !19, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "resultFilename", scope: !53, file: !6, line: 32, baseType: !25, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !53, file: !6, line: 33, baseType: !17, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "simType", scope: !53, file: !6, line: 34, baseType: !18, size: 32, offset: 160)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "obstacleFilename", scope: !53, file: !6, line: 35, baseType: !25, size: 64, offset: 192)
!60 = !DILocalVariable(name: "t", scope: !45, file: !30, line: 30, type: !19)
!61 = !DILocation(line: 0, scope: !45)
!62 = !DILocation(line: 26, column: 2, scope: !45)
!63 = !DILocation(line: 26, column: 13, scope: !45)
!64 = !DILocation(line: 32, column: 2, scope: !45)
!65 = !DILocalVariable(name: "param", arg: 1, scope: !66, file: !30, line: 105, type: !69)
!66 = distinct !DISubprogram(name: "MAIN_printInfo", scope: !30, file: !30, line: 105, type: !67, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!71 = !{!65, !72, !78}
!72 = !DILocalVariable(name: "actionString", scope: !66, file: !30, line: 106, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 768, elements: !75)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!75 = !{!76, !77}
!76 = !DISubrange(count: 3)
!77 = !DISubrange(count: 32)
!78 = !DILocalVariable(name: "simTypeString", scope: !66, file: !30, line: 107, type: !73)
!79 = !DILocation(line: 0, scope: !66, inlinedAt: !80)
!80 = distinct !DILocation(line: 33, column: 2, scope: !45)
!81 = !DILocation(line: 106, column: 2, scope: !66, inlinedAt: !80)
!82 = !DILocation(line: 106, column: 13, scope: !66, inlinedAt: !80)
!83 = !DILocation(line: 107, column: 2, scope: !66, inlinedAt: !80)
!84 = !DILocation(line: 107, column: 13, scope: !66, inlinedAt: !80)
!85 = !DILocation(line: 116, column: 17, scope: !66, inlinedAt: !80)
!86 = !{!87, !88, i64 0}
!87 = !{!"", !88, i64 0, !91, i64 8, !89, i64 16, !89, i64 20, !91, i64 24}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!"any pointer", !89, i64 0}
!92 = !DILocation(line: 116, column: 36, scope: !66, inlinedAt: !80)
!93 = !{!87, !91, i64 8}
!94 = !DILocation(line: 117, column: 30, scope: !66, inlinedAt: !80)
!95 = !{!87, !89, i64 16}
!96 = !DILocation(line: 117, column: 60, scope: !66, inlinedAt: !80)
!97 = !{!87, !89, i64 20}
!98 = !DILocation(line: 118, column: 18, scope: !66, inlinedAt: !80)
!99 = !{!87, !91, i64 24}
!100 = !DILocation(line: 118, column: 35, scope: !66, inlinedAt: !80)
!101 = !DILocation(line: 118, column: 10, scope: !66, inlinedAt: !80)
!102 = !DILocation(line: 117, column: 39, scope: !66, inlinedAt: !80)
!103 = !DILocation(line: 117, column: 10, scope: !66, inlinedAt: !80)
!104 = !DILocation(line: 108, column: 2, scope: !66, inlinedAt: !80)
!105 = !DILocation(line: 120, column: 1, scope: !66, inlinedAt: !80)
!106 = !DILocation(line: 34, column: 2, scope: !45)
!107 = !DILocation(line: 39, column: 16, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !30, line: 39, column: 2)
!109 = distinct !DILexicalBlock(scope: !45, file: !30, line: 39, column: 2)
!110 = !DILocation(line: 39, column: 2, scope: !109)
!111 = !DILocation(line: 40, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !30, line: 39, column: 43)
!113 = !DILocation(line: 41, column: 26, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !30, line: 40, column: 34)
!115 = distinct !DILexicalBlock(scope: !112, file: !30, line: 40, column: 7)
!116 = !{!91, !91, i64 0}
!117 = !DILocation(line: 41, column: 4, scope: !114)
!118 = !DILocation(line: 44, column: 33, scope: !112)
!119 = !DILocation(line: 44, column: 43, scope: !112)
!120 = !DILocation(line: 44, column: 3, scope: !112)
!121 = !DILocation(line: 45, column: 3, scope: !112)
!122 = !DILocation(line: 47, column: 10, scope: !123)
!123 = distinct !DILexicalBlock(scope: !112, file: !30, line: 47, column: 7)
!124 = !DILocation(line: 47, column: 16, scope: !123)
!125 = !DILocation(line: 47, column: 7, scope: !112)
!126 = !DILocation(line: 48, column: 4, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !30, line: 47, column: 23)
!128 = !DILocation(line: 49, column: 29, scope: !127)
!129 = !DILocation(line: 49, column: 4, scope: !127)
!130 = !DILocation(line: 50, column: 3, scope: !127)
!131 = !DILocation(line: 39, column: 38, scope: !108)
!132 = distinct !{!132, !110, !133, !134, !135}
!133 = !DILocation(line: 51, column: 2, scope: !109)
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!"llvm.loop.unroll.disable"}
!136 = !DILocalVariable(name: "param", arg: 1, scope: !137, file: !30, line: 150, type: !69)
!137 = distinct !DISubprogram(name: "MAIN_finalize", scope: !30, file: !30, line: 150, type: !67, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!138 = !{!136}
!139 = !DILocation(line: 0, scope: !137, inlinedAt: !140)
!140 = distinct !DILocation(line: 56, column: 2, scope: !45)
!141 = !DILocation(line: 151, column: 27, scope: !137, inlinedAt: !140)
!142 = !DILocation(line: 151, column: 2, scope: !137, inlinedAt: !140)
!143 = !DILocation(line: 153, column: 6, scope: !137, inlinedAt: !140)
!144 = !DILocation(line: 154, column: 30, scope: !145, inlinedAt: !140)
!145 = distinct !DILexicalBlock(scope: !137, file: !30, line: 153, column: 6)
!146 = !DILocation(line: 154, column: 3, scope: !145, inlinedAt: !140)
!147 = !DILocation(line: 155, column: 6, scope: !137, inlinedAt: !140)
!148 = !DILocation(line: 156, column: 27, scope: !149, inlinedAt: !140)
!149 = distinct !DILexicalBlock(scope: !137, file: !30, line: 155, column: 6)
!150 = !DILocation(line: 156, column: 2, scope: !149, inlinedAt: !140)
!151 = !DILocation(line: 158, column: 2, scope: !137, inlinedAt: !140)
!152 = !DILocation(line: 159, column: 2, scope: !137, inlinedAt: !140)
!153 = !DILocation(line: 59, column: 1, scope: !45)
!154 = !DILocation(line: 58, column: 2, scope: !45)
!155 = distinct !DISubprogram(name: "MAIN_parseCommandLine", scope: !30, file: !30, line: 63, type: !156, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !19, !24, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!159 = !{!160, !161, !162, !163}
!160 = !DILocalVariable(name: "nArgs", arg: 1, scope: !155, file: !30, line: 63, type: !19)
!161 = !DILocalVariable(name: "arg", arg: 2, scope: !155, file: !30, line: 63, type: !24)
!162 = !DILocalVariable(name: "param", arg: 3, scope: !155, file: !30, line: 63, type: !158)
!163 = !DILocalVariable(name: "fileStat", scope: !155, file: !30, line: 64, type: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !165, line: 46, size: 1152, elements: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!166 = !{!167, !171, !173, !175, !177, !179, !181, !182, !183, !186, !188, !190, !198, !199, !200}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !164, file: !165, line: 48, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !169, line: 145, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!170 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !164, file: !165, line: 53, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !169, line: 148, baseType: !170)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !164, file: !165, line: 61, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !169, line: 151, baseType: !170)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !164, file: !165, line: 62, baseType: !176, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !169, line: 150, baseType: !7)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !164, file: !165, line: 64, baseType: !178, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !169, line: 146, baseType: !7)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !164, file: !165, line: 65, baseType: !180, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !169, line: 147, baseType: !7)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !164, file: !165, line: 67, baseType: !19, size: 32, offset: 288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !164, file: !165, line: 69, baseType: !168, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !164, file: !165, line: 74, baseType: !184, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !169, line: 152, baseType: !185)
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !164, file: !165, line: 78, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !169, line: 174, baseType: !185)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !164, file: !165, line: 80, baseType: !189, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !169, line: 179, baseType: !185)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !164, file: !165, line: 91, baseType: !191, size: 128, offset: 576)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !192, line: 10, size: 128, elements: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !191, file: !192, line: 12, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !169, line: 160, baseType: !185)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !191, file: !192, line: 16, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !169, line: 196, baseType: !185)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !164, file: !165, line: 92, baseType: !191, size: 128, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !164, file: !165, line: 93, baseType: !191, size: 128, offset: 832)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !164, file: !165, line: 106, baseType: !201, size: 192, offset: 960)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 192, elements: !202)
!202 = !{!76}
!203 = !DILocation(line: 0, scope: !155)
!204 = !DILocation(line: 64, column: 2, scope: !155)
!205 = !DILocation(line: 64, column: 14, scope: !155)
!206 = !DILocation(line: 66, column: 16, scope: !207)
!207 = distinct !DILexicalBlock(scope: !155, file: !30, line: 66, column: 6)
!208 = !DILocation(line: 67, column: 3, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !30, line: 66, column: 31)
!210 = !DILocation(line: 68, column: 3, scope: !209)
!211 = !DILocation(line: 71, column: 32, scope: !155)
!212 = !DILocalVariable(name: "__nptr", arg: 1, scope: !213, file: !214, line: 361, type: !217)
!213 = distinct !DISubprogram(name: "atoi", scope: !214, file: !214, line: 361, type: !215, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!214 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!215 = !DISubroutineType(types: !216)
!216 = !{!19, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!218 = !{!212}
!219 = !DILocation(line: 0, scope: !213, inlinedAt: !220)
!220 = distinct !DILocation(line: 71, column: 26, scope: !155)
!221 = !DILocation(line: 363, column: 16, scope: !213, inlinedAt: !220)
!222 = !DILocation(line: 363, column: 10, scope: !213, inlinedAt: !220)
!223 = !DILocation(line: 71, column: 24, scope: !155)
!224 = !DILocation(line: 72, column: 26, scope: !155)
!225 = !DILocation(line: 72, column: 9, scope: !155)
!226 = !DILocation(line: 72, column: 24, scope: !155)
!227 = !DILocation(line: 73, column: 46, scope: !155)
!228 = !DILocation(line: 0, scope: !213, inlinedAt: !229)
!229 = distinct !DILocation(line: 73, column: 40, scope: !155)
!230 = !DILocation(line: 363, column: 16, scope: !213, inlinedAt: !229)
!231 = !DILocation(line: 363, column: 10, scope: !213, inlinedAt: !229)
!232 = !DILocation(line: 73, column: 9, scope: !155)
!233 = !DILocation(line: 73, column: 24, scope: !155)
!234 = !DILocation(line: 74, column: 47, scope: !155)
!235 = !DILocation(line: 0, scope: !213, inlinedAt: !236)
!236 = distinct !DILocation(line: 74, column: 41, scope: !155)
!237 = !DILocation(line: 363, column: 16, scope: !213, inlinedAt: !236)
!238 = !DILocation(line: 363, column: 10, scope: !213, inlinedAt: !236)
!239 = !DILocation(line: 74, column: 9, scope: !155)
!240 = !DILocation(line: 74, column: 24, scope: !155)
!241 = !DILocation(line: 76, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !155, file: !30, line: 76, column: 6)
!243 = !DILocation(line: 76, column: 6, scope: !155)
!244 = !DILocation(line: 77, column: 29, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !30, line: 76, column: 19)
!246 = !DILocation(line: 77, column: 10, scope: !245)
!247 = !DILocation(line: 77, column: 27, scope: !245)
!248 = !DILocalVariable(name: "__path", arg: 1, scope: !249, file: !250, line: 453, type: !217)
!249 = distinct !DISubprogram(name: "stat", scope: !250, file: !250, line: 453, type: !251, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!251 = !DISubroutineType(types: !252)
!252 = !{!19, !217, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!254 = !{!248, !255}
!255 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !249, file: !250, line: 453, type: !253)
!256 = !DILocation(line: 0, scope: !249, inlinedAt: !257)
!257 = distinct !DILocation(line: 79, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !245, file: !30, line: 79, column: 7)
!259 = !DILocation(line: 455, column: 10, scope: !249, inlinedAt: !257)
!260 = !DILocation(line: 79, column: 50, scope: !258)
!261 = !DILocation(line: 79, column: 7, scope: !245)
!262 = !DILocation(line: 81, column: 20, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !30, line: 79, column: 57)
!264 = !DILocation(line: 80, column: 4, scope: !263)
!265 = !DILocation(line: 82, column: 4, scope: !263)
!266 = !DILocation(line: 84, column: 16, scope: !267)
!267 = distinct !DILexicalBlock(scope: !245, file: !30, line: 84, column: 7)
!268 = !{!269, !270, i64 48}
!269 = !{!"stat", !270, i64 0, !270, i64 8, !270, i64 16, !88, i64 24, !88, i64 28, !88, i64 32, !88, i64 36, !270, i64 40, !270, i64 48, !270, i64 56, !270, i64 64, !271, i64 72, !271, i64 88, !271, i64 104, !89, i64 120}
!270 = !{!"long", !89, i64 0}
!271 = !{!"timespec", !270, i64 0, !270, i64 8}
!272 = !DILocation(line: 84, column: 24, scope: !267)
!273 = !DILocation(line: 84, column: 7, scope: !245)
!274 = !DILocation(line: 88, column: 19, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !30, line: 84, column: 68)
!276 = !DILocation(line: 88, column: 37, scope: !275)
!277 = !DILocation(line: 85, column: 4, scope: !275)
!278 = !DILocation(line: 90, column: 4, scope: !275)
!279 = !DILocation(line: 93, column: 14, scope: !242)
!280 = !DILocation(line: 93, column: 31, scope: !242)
!281 = !DILocation(line: 95, column: 13, scope: !282)
!282 = distinct !DILexicalBlock(scope: !155, file: !30, line: 95, column: 6)
!283 = !DILocation(line: 95, column: 20, scope: !282)
!284 = !DILocation(line: 95, column: 31, scope: !282)
!285 = !DILocation(line: 96, column: 19, scope: !282)
!286 = !DILocation(line: 0, scope: !249, inlinedAt: !287)
!287 = distinct !DILocation(line: 96, column: 6, scope: !282)
!288 = !DILocation(line: 455, column: 10, scope: !249, inlinedAt: !287)
!289 = !DILocation(line: 96, column: 47, scope: !282)
!290 = !DILocation(line: 95, column: 6, scope: !155)
!291 = !DILocation(line: 98, column: 19, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !30, line: 96, column: 54)
!293 = !DILocation(line: 97, column: 3, scope: !292)
!294 = !DILocation(line: 99, column: 3, scope: !292)
!295 = !DILocation(line: 101, column: 1, scope: !155)
!296 = !DILocation(line: 0, scope: !66)
!297 = !DILocation(line: 106, column: 2, scope: !66)
!298 = !DILocation(line: 106, column: 13, scope: !66)
!299 = !DILocation(line: 107, column: 2, scope: !66)
!300 = !DILocation(line: 107, column: 13, scope: !66)
!301 = !DILocation(line: 116, column: 17, scope: !66)
!302 = !DILocation(line: 116, column: 36, scope: !66)
!303 = !DILocation(line: 117, column: 30, scope: !66)
!304 = !DILocation(line: 117, column: 60, scope: !66)
!305 = !DILocation(line: 118, column: 18, scope: !66)
!306 = !DILocation(line: 118, column: 35, scope: !66)
!307 = !DILocation(line: 118, column: 10, scope: !66)
!308 = !DILocation(line: 117, column: 39, scope: !66)
!309 = !DILocation(line: 117, column: 10, scope: !66)
!310 = !DILocation(line: 108, column: 2, scope: !66)
!311 = !DILocation(line: 120, column: 1, scope: !66)
!312 = distinct !DISubprogram(name: "MAIN_initialize", scope: !30, file: !30, line: 124, type: !67, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!314}
!314 = !DILocalVariable(name: "param", arg: 1, scope: !312, file: !30, line: 124, type: !69)
!315 = !DILocation(line: 0, scope: !312)
!316 = !DILocation(line: 125, column: 2, scope: !312)
!317 = !DILocation(line: 126, column: 2, scope: !312)
!318 = !DILocation(line: 128, column: 23, scope: !312)
!319 = !DILocation(line: 128, column: 2, scope: !312)
!320 = !DILocation(line: 129, column: 23, scope: !312)
!321 = !DILocation(line: 129, column: 2, scope: !312)
!322 = !DILocation(line: 131, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !312, file: !30, line: 131, column: 6)
!324 = !DILocation(line: 131, column: 30, scope: !323)
!325 = !DILocation(line: 131, column: 6, scope: !312)
!326 = !DILocation(line: 132, column: 26, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !30, line: 131, column: 40)
!328 = !DILocation(line: 132, column: 3, scope: !327)
!329 = !DILocation(line: 133, column: 26, scope: !327)
!330 = !DILocation(line: 133, column: 42, scope: !327)
!331 = !DILocation(line: 133, column: 3, scope: !327)
!332 = !DILocation(line: 134, column: 2, scope: !327)
!333 = !DILocation(line: 136, column: 13, scope: !334)
!334 = distinct !DILexicalBlock(scope: !312, file: !30, line: 136, column: 6)
!335 = !DILocation(line: 136, column: 21, scope: !334)
!336 = !DILocation(line: 0, scope: !334)
!337 = !DILocation(line: 136, column: 6, scope: !312)
!338 = !DILocation(line: 137, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !30, line: 136, column: 34)
!340 = !DILocation(line: 138, column: 42, scope: !339)
!341 = !DILocation(line: 138, column: 3, scope: !339)
!342 = !DILocation(line: 139, column: 2, scope: !339)
!343 = !DILocation(line: 141, column: 3, scope: !344)
!344 = distinct !DILexicalBlock(scope: !334, file: !30, line: 140, column: 7)
!345 = !DILocation(line: 142, column: 38, scope: !344)
!346 = !DILocation(line: 142, column: 3, scope: !344)
!347 = !DILocation(line: 145, column: 27, scope: !312)
!348 = !DILocation(line: 145, column: 2, scope: !312)
!349 = !DILocation(line: 146, column: 1, scope: !312)
!350 = !DISubprogram(name: "LBM_handleInOutFlow", scope: !351, file: !351, line: 39, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!351 = !DIFile(filename: "apps/519.lbm_r/src/lbm.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7aa00f15145aa5019b02ad74edd41621")
!352 = !DISubroutineType(types: !353)
!353 = !{null, !22}
!354 = !{}
!355 = !DISubprogram(name: "LBM_performStreamCollideTRT", scope: !351, file: !351, line: 38, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !22, !22}
!358 = !DISubprogram(name: "LBM_swapGrids", scope: !351, file: !351, line: 36, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!362 = !DISubprogram(name: "LBM_showGridStatistics", scope: !351, file: !351, line: 40, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!363 = !DILocation(line: 0, scope: !137)
!364 = !DILocation(line: 151, column: 27, scope: !137)
!365 = !DILocation(line: 151, column: 2, scope: !137)
!366 = !DILocation(line: 153, column: 13, scope: !145)
!367 = !DILocation(line: 153, column: 20, scope: !145)
!368 = !DILocation(line: 153, column: 6, scope: !137)
!369 = !DILocation(line: 154, column: 30, scope: !145)
!370 = !DILocation(line: 154, column: 46, scope: !145)
!371 = !DILocation(line: 154, column: 3, scope: !145)
!372 = !DILocation(line: 155, column: 13, scope: !149)
!373 = !DILocation(line: 155, column: 20, scope: !149)
!374 = !DILocation(line: 155, column: 6, scope: !137)
!375 = !DILocation(line: 156, column: 27, scope: !149)
!376 = !DILocation(line: 156, column: 43, scope: !149)
!377 = !DILocation(line: 156, column: 2, scope: !149)
!378 = !DILocation(line: 158, column: 2, scope: !137)
!379 = !DILocation(line: 159, column: 2, scope: !137)
!380 = !DILocation(line: 160, column: 1, scope: !137)
!381 = !DISubprogram(name: "LBM_allocateGrid", scope: !351, file: !351, line: 30, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !21}
!384 = !DISubprogram(name: "LBM_initializeGrid", scope: !351, file: !351, line: 32, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!385 = !DISubprogram(name: "LBM_loadObstacleFile", scope: !351, file: !351, line: 34, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !22, !217}
!388 = !DISubprogram(name: "LBM_initializeSpecialCellsForChannel", scope: !351, file: !351, line: 35, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!389 = !DISubprogram(name: "LBM_initializeSpecialCellsForLDC", scope: !351, file: !351, line: 33, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!390 = !DISubprogram(name: "LBM_compareVelocityField", scope: !351, file: !351, line: 43, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !22, !217, !393}
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!394 = !DISubprogram(name: "LBM_storeVelocityField", scope: !351, file: !351, line: 41, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
!395 = !DISubprogram(name: "LBM_freeGrid", scope: !351, file: !351, line: 31, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !354)
