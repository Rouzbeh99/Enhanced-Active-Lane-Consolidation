; ModuleID = 'bookshelf_IO.c'
source_filename = "bookshelf_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodesHash = type { [30 x i8], i64 }

@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error in opening: %s \0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"NumNodes\09:\09%d\0A\00", align 1
@numNodes = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"NumTerminals\09:\09%d\0A\00", align 1
@numTerminals = dso_local global i32 0, align 4
@hashBits = dso_local local_unnamed_addr global i64 0, align 8
@hashSize = dso_local local_unnamed_addr global i64 0, align 8
@NodesInfo = dso_local local_unnamed_addr global ptr null, align 8
@RN = dso_local local_unnamed_addr global ptr null, align 8
@hashFlag = dso_local local_unnamed_addr global ptr null, align 8
@cellName = dso_local local_unnamed_addr global ptr null, align 8
@modresNum = dso_local local_unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"%s%f%f%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s\09:\09%s%s%s%s%s\0A\00", align 1
@nodesFile = dso_local global [200 x i8] zeroinitializer, align 16
@netsFile = dso_local global [200 x i8] zeroinitializer, align 16
@wtsFile = dso_local global [200 x i8] zeroinitializer, align 16
@plFile = dso_local global [200 x i8] zeroinitializer, align 16
@sclFile = dso_local global [200 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@benchmarkName = dso_local global [200 x i8] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [27 x i8] c"Error in opening %s file \0A\00", align 1
@movableNodes = dso_local local_unnamed_addr global i32 0, align 4
@cellWidth = dso_local local_unnamed_addr global ptr null, align 8
@cellHeight = dso_local local_unnamed_addr global ptr null, align 8
@averageCellWidth = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"NumNets\09:\09%d\0A\00", align 1
@numNets = external global i32, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"NumPins\09:\09%d\0A\00", align 1
@numPins = dso_local global i32 0, align 4
@netlist = dso_local local_unnamed_addr global ptr null, align 8
@xPinOffset = dso_local local_unnamed_addr global ptr null, align 8
@yPinOffset = dso_local local_unnamed_addr global ptr null, align 8
@netlistIndex = dso_local local_unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"NetDegree\09:\09%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s%f%f\00", align 1
@xCellCoord = dso_local local_unnamed_addr global ptr null, align 8
@yCellCoord = dso_local local_unnamed_addr global ptr null, align 8
@areaArrayIO = dso_local local_unnamed_addr global ptr null, align 8
@numAreaArrayIO = dso_local local_unnamed_addr global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"%s%f%f\09:\09%*s%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%*s\09:\09%d\0A\00", align 1
@numRows = dso_local global i32 0, align 4
@rowOriginX = dso_local local_unnamed_addr global ptr null, align 8
@rowEndX = dso_local local_unnamed_addr global ptr null, align 8
@xRowBlockage = dso_local local_unnamed_addr global ptr null, align 8
@yRowBlockage = dso_local local_unnamed_addr global ptr null, align 8
@widthRowBlockage = dso_local local_unnamed_addr global ptr null, align 8
@siteOriginX = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@siteEndX = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"\09Coordinate\09:\09%f\0A\00", align 1
@siteOriginY = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"Height\09:\09%f\0A\00", align 1
@coreRowHeight = dso_local global float 0.000000e+00, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"Sitewidth\09:\09%f\0A\00", align 1
@siteWidth = dso_local global float 0.000000e+00, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"Sitespacing\09:\09%f\0A\00", align 1
@siteSpacing = dso_local global float 0.000000e+00, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"Siteorient\09:\09%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Sitesymmetry\09:\09%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"SubrowOrigin\09:\09%f\09%*s\09:\09%d\0A\00", align 1
@siteEndY = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@coreHeight = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@coreWidth = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@numRowBlockages = dso_local local_unnamed_addr global i32 0, align 4
@maxX = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@minX = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@maxY = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@minY = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@.str.27 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"ERROR in opening the %s file for write \0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0APrinting %s File... \0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"UCLA pl 1.0\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"# Circuit  :  %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"    %20s    %-10.2f    %-10.2f  :  N\0A\00", align 1
@str.33 = private unnamed_addr constant [26 x i8] c"cannot fill in hash table\00", align 1
@str.37 = private unnamed_addr constant [26 x i8] c"cannot find in hash table\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @createHash(ptr nocapture noundef readonly %benchmarkPath, ptr nocapture noundef readonly %nodesFile) local_unnamed_addr #0 {
entry:
  %line = alloca [200 x i8], align 16
  %temp = alloca [200 x i8], align 16
  %s4 = alloca [200 x i8], align 16
  %nodeWidth = alloca float, align 4
  %nodeHeight = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %line) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %temp) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %s4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodeWidth) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodeHeight) #14
  %call = call ptr @strcpy(ptr noundef nonnull %temp, ptr noundef nonnull dereferenceable(1) %benchmarkPath) #14
  %strlen = call i64 @strlen(ptr nonnull %temp)
  %endptr = getelementptr i8, ptr %temp, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %temp, ptr noundef nonnull dereferenceable(1) %nodesFile) #14
  %call6 = call ptr @fopen(ptr noundef nonnull %temp, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef nonnull %temp)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call10 = call ptr @fgets(ptr noundef nonnull %temp, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.then11, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call13277 = call i64 @ftell(ptr noundef nonnull %call6)
  %call15278 = call ptr @fgets(ptr noundef nonnull %temp, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool16.not279 = icmp eq ptr %call15278, null
  br i1 %tobool16.not279, label %if.then17, label %do.cond

if.then11:                                        ; preds = %if.end
  call void @abort() #15
  unreachable

if.then17:                                        ; preds = %do.body.backedge, %do.body.preheader
  call void @abort() #15
  unreachable

do.cond:                                          ; preds = %do.body.preheader, %do.body.backedge
  %call13280 = phi i64 [ %call13, %do.body.backedge ], [ %call13277, %do.body.preheader ]
  %0 = load i8, ptr %temp, align 16, !tbaa !5
  %cmp19 = icmp eq i8 %0, 35
  br i1 %cmp19, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %call22 = call i64 @strlen(ptr noundef nonnull %temp) #16
  %cmp23 = icmp ult i64 %call22, 5
  br i1 %cmp23, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call13 = call i64 @ftell(ptr noundef nonnull %call6)
  %call15 = call ptr @fgets(ptr noundef nonnull %temp, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %do.cond, !llvm.loop !8

do.end:                                           ; preds = %lor.rhs
  %call25 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call13280, i32 noundef 0)
  %call26 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.3, ptr noundef nonnull @numNodes) #14
  %cmp27.not = icmp eq i32 %call26, 1
  br i1 %cmp27.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %do.end
  call void @abort() #15
  unreachable

if.end30:                                         ; preds = %do.end
  %call31 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.4, ptr noundef nonnull @numTerminals) #14
  %cmp32.not = icmp eq i32 %call31, 1
  br i1 %cmp32.not, label %do.body36.preheader, label %if.then34

do.body36.preheader:                              ; preds = %if.end30
  %call37281 = call i64 @ftell(ptr noundef nonnull %call6)
  %call39282 = call ptr @fgets(ptr noundef nonnull %temp, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool40.not283 = icmp eq ptr %call39282, null
  br i1 %tobool40.not283, label %if.then41, label %do.cond43

if.then34:                                        ; preds = %if.end30
  call void @abort() #15
  unreachable

if.then41:                                        ; preds = %do.body36.backedge, %do.body36.preheader
  call void @abort() #15
  unreachable

do.cond43:                                        ; preds = %do.body36.preheader, %do.body36.backedge
  %call37284 = phi i64 [ %call37, %do.body36.backedge ], [ %call37281, %do.body36.preheader ]
  %1 = load i8, ptr %temp, align 16, !tbaa !5
  %cmp46 = icmp eq i8 %1, 35
  br i1 %cmp46, label %do.body36.backedge, label %lor.rhs48

lor.rhs48:                                        ; preds = %do.cond43
  %call50 = call i64 @strlen(ptr noundef nonnull %temp) #16
  %cmp51 = icmp ult i64 %call50, 5
  br i1 %cmp51, label %do.body36.backedge, label %do.end54

do.body36.backedge:                               ; preds = %lor.rhs48, %do.cond43
  %call37 = call i64 @ftell(ptr noundef nonnull %call6)
  %call39 = call ptr @fgets(ptr noundef nonnull %temp, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then41, label %do.cond43, !llvm.loop !10

do.end54:                                         ; preds = %lor.rhs48
  %call55 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call37284, i32 noundef 0)
  %2 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv56 = sitofp i32 %2 to double
  %call57 = call double @log(double noundef %conv56) #14
  %div = fdiv double %call57, 0x3FE62E42FEFA39EF
  %conv59 = fptosi double %div to i64
  %add = add nsw i64 %conv59, 3
  store i64 %add, ptr @hashBits, align 8, !tbaa !13
  %conv60 = sitofp i64 %add to double
  %exp2 = call double @exp2(double %conv60) #14
  %conv62 = fptosi double %exp2 to i64
  store i64 %conv62, ptr @hashSize, align 8, !tbaa !13
  %mul = mul i64 %conv62, 40
  %call63 = call noalias ptr @malloc(i64 noundef %mul) #17
  store ptr %call63, ptr @NodesInfo, align 8, !tbaa !15
  %call64 = call ptr @lvector(i64 noundef 1, i64 noundef %conv62) #14
  store ptr %call64, ptr @RN, align 8, !tbaa !15
  %3 = load i64, ptr @hashSize, align 8, !tbaa !13
  %call65 = call ptr @cvector(i64 noundef 1, i64 noundef %3) #14
  store ptr %call65, ptr @hashFlag, align 8, !tbaa !15
  %4 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv66 = sext i32 %4 to i64
  %call67 = call ptr @cmatrix(i64 noundef 1, i64 noundef %conv66, i64 noundef 1, i64 noundef 30) #14
  store ptr %call67, ptr @cellName, align 8, !tbaa !15
  %5 = load i64, ptr @hashSize, align 8, !tbaa !13
  %cmp68.not285 = icmp slt i64 %5, 1
  br i1 %cmp68.not285, label %for.end80, label %for.body

for.cond71.preheader:                             ; preds = %for.body
  %cmp72.not287 = icmp slt i64 %8, 1
  br i1 %cmp72.not287, label %for.end80, label %for.body74.lr.ph

for.body74.lr.ph:                                 ; preds = %for.cond71.preheader
  %6 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %for.body74

for.body:                                         ; preds = %do.end54, %for.body
  %j.0286 = phi i64 [ %inc, %for.body ], [ 1, %do.end54 ]
  %7 = load ptr, ptr @hashFlag, align 8, !tbaa !15
  %arrayidx70 = getelementptr inbounds i8, ptr %7, i64 %j.0286
  store i8 0, ptr %arrayidx70, align 1, !tbaa !5
  %inc = add nuw nsw i64 %j.0286, 1
  %8 = load i64, ptr @hashSize, align 8, !tbaa !13
  %cmp68.not.not = icmp slt i64 %j.0286, %8
  br i1 %cmp68.not.not, label %for.body, label %for.cond71.preheader, !llvm.loop !17

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %9 = phi i64 [ %8, %for.body74.lr.ph ], [ %10, %for.body74 ]
  %R.0289 = phi i64 [ 1, %for.body74.lr.ph ], [ %rem, %for.body74 ]
  %j.1288 = phi i64 [ 1, %for.body74.lr.ph ], [ %inc79, %for.body74 ]
  %mul75 = mul nsw i64 %R.0289, 5
  %rem = srem i64 %mul75, %9
  %div76 = sdiv i64 %rem, 4
  %arrayidx77 = getelementptr inbounds i64, ptr %6, i64 %j.1288
  store i64 %div76, ptr %arrayidx77, align 8, !tbaa !13
  %inc79 = add nuw nsw i64 %j.1288, 1
  %10 = load i64, ptr @hashSize, align 8, !tbaa !13
  %cmp72.not.not = icmp slt i64 %j.1288, %10
  br i1 %cmp72.not.not, label %for.body74, label %for.end80, !llvm.loop !18

for.end80:                                        ; preds = %for.body74, %do.end54, %for.cond71.preheader
  %11 = load i64, ptr @hashBits, align 8, !tbaa !13
  %add81 = add nsw i64 %11, 2
  %div82 = sdiv i64 %add81, 3
  store i64 %div82, ptr @modresNum, align 8, !tbaa !13
  %12 = load i32, ptr @numNodes, align 4, !tbaa !11
  %cmp87.not316 = icmp slt i32 %12, 1
  br i1 %cmp87.not316, label %for.end215, label %for.body89.preheader

for.body89.preheader:                             ; preds = %for.end80
  %sub = add nuw i32 %12, 1
  %13 = load i32, ptr @numTerminals, align 4, !tbaa !11
  %add83 = sub i32 %sub, %13
  %conv84 = sext i32 %add83 to i64
  br label %for.body89

for.body89:                                       ; preds = %for.body89.preheader, %for.inc213
  %pin_ptr.0319 = phi i64 [ %pin_ptr.1, %for.inc213 ], [ %conv84, %for.body89.preheader ]
  %nonpin_ptr.0318 = phi i64 [ %nonpin_ptr.1, %for.inc213 ], [ 1, %for.body89.preheader ]
  %nodeNo.0317 = phi i64 [ %inc214, %for.inc213 ], [ 1, %for.body89.preheader ]
  %call91 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.body89
  call void @abort() #15
  unreachable

if.end94:                                         ; preds = %for.body89
  store i8 0, ptr %s4, align 16
  %call100 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.6, ptr noundef nonnull %temp, ptr noundef nonnull %nodeWidth, ptr noundef nonnull %nodeHeight, ptr noundef nonnull %s4) #14
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %s4, ptr noundef nonnull dereferenceable(9) @.str.7, i64 9)
  %cmp103 = icmp eq i32 %bcmp, 0
  %14 = load ptr, ptr @cellName, align 8, !tbaa !15
  br i1 %cmp103, label %if.then105, label %if.else

if.then105:                                       ; preds = %if.end94
  %arrayidx106 = getelementptr inbounds ptr, ptr %14, i64 %pin_ptr.0319
  %15 = load ptr, ptr %arrayidx106, align 8, !tbaa !15
  %call108 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull %temp) #14
  %call111 = call i64 @strlen(ptr noundef nonnull %temp) #16
  %conv112 = trunc i64 %call111 to i32
  %16 = load i64, ptr @modresNum, align 8, !tbaa !13
  %conv113 = trunc i64 %16 to i32
  %cmp114 = icmp slt i32 %conv112, %conv113
  %call111. = select i1 %cmp114, i64 %call111, i64 %16
  %17 = trunc i64 %call111. to i32
  %cmp117.not302 = icmp slt i32 %17, 1
  br i1 %cmp117.not302, label %if.then105.for.end129_crit_edge, label %for.body119.lr.ph

if.then105.for.end129_crit_edge:                  ; preds = %if.then105
  %.pre326 = load i64, ptr @hashSize, align 8, !tbaa !13
  br label %for.end129

for.body119.lr.ph:                                ; preds = %if.then105
  %conv116328 = and i64 %call111., 4294967295
  %18 = load i64, ptr @hashSize, align 8, !tbaa !13
  %xtraiter343 = and i64 %call111., 1
  %19 = icmp eq i64 %conv116328, 1
  br i1 %19, label %for.end129.loopexit.unr-lcssa, label %for.body119.lr.ph.new

for.body119.lr.ph.new:                            ; preds = %for.body119.lr.ph
  %unroll_iter346 = sub nsw i64 %conv116328, %xtraiter343
  br label %for.body119

for.body119:                                      ; preds = %for.body119, %for.body119.lr.ph.new
  %hashfunc.0304 = phi i64 [ 0, %for.body119.lr.ph.new ], [ %add126.1, %for.body119 ]
  %j.2303 = phi i64 [ 1, %for.body119.lr.ph.new ], [ %inc128.1, %for.body119 ]
  %niter347 = phi i64 [ 0, %for.body119.lr.ph.new ], [ %niter347.next.1, %for.body119 ]
  %sub120 = add nsw i64 %j.2303, -1
  %arrayidx121 = getelementptr inbounds [200 x i8], ptr %temp, i64 0, i64 %sub120
  %20 = load i8, ptr %arrayidx121, align 1, !tbaa !5
  %conv122 = sext i8 %20 to i64
  %mul124 = mul nuw nsw i64 %sub120, 3
  %shl = shl i64 %conv122, %mul124
  %rem125 = srem i64 %shl, %18
  %add126 = add nsw i64 %rem125, %hashfunc.0304
  %arrayidx121.1 = getelementptr inbounds [200 x i8], ptr %temp, i64 0, i64 %j.2303
  %21 = load i8, ptr %arrayidx121.1, align 1, !tbaa !5
  %conv122.1 = sext i8 %21 to i64
  %mul124.1 = mul nuw nsw i64 %j.2303, 3
  %shl.1 = shl i64 %conv122.1, %mul124.1
  %rem125.1 = srem i64 %shl.1, %18
  %add126.1 = add nsw i64 %rem125.1, %add126
  %inc128.1 = add nuw nsw i64 %j.2303, 2
  %niter347.next.1 = add nuw i64 %niter347, 2
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %for.end129.loopexit.unr-lcssa, label %for.body119, !llvm.loop !19

for.end129.loopexit.unr-lcssa:                    ; preds = %for.body119, %for.body119.lr.ph
  %add126.lcssa.ph = phi i64 [ undef, %for.body119.lr.ph ], [ %add126.1, %for.body119 ]
  %hashfunc.0304.unr = phi i64 [ 0, %for.body119.lr.ph ], [ %add126.1, %for.body119 ]
  %j.2303.unr = phi i64 [ 1, %for.body119.lr.ph ], [ %inc128.1, %for.body119 ]
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %for.end129, label %for.body119.epil

for.body119.epil:                                 ; preds = %for.end129.loopexit.unr-lcssa
  %sub120.epil = add nsw i64 %j.2303.unr, -1
  %arrayidx121.epil = getelementptr inbounds [200 x i8], ptr %temp, i64 0, i64 %sub120.epil
  %22 = load i8, ptr %arrayidx121.epil, align 1, !tbaa !5
  %conv122.epil = sext i8 %22 to i64
  %mul124.epil = mul nuw nsw i64 %sub120.epil, 3
  %shl.epil = shl i64 %conv122.epil, %mul124.epil
  %rem125.epil = srem i64 %shl.epil, %18
  %add126.epil = add nsw i64 %rem125.epil, %hashfunc.0304.unr
  br label %for.end129

for.end129:                                       ; preds = %for.body119.epil, %for.end129.loopexit.unr-lcssa, %if.then105.for.end129_crit_edge
  %23 = phi i64 [ %.pre326, %if.then105.for.end129_crit_edge ], [ %18, %for.end129.loopexit.unr-lcssa ], [ %18, %for.body119.epil ]
  %hashfunc.0.lcssa = phi i64 [ 0, %if.then105.for.end129_crit_edge ], [ %add126.lcssa.ph, %for.end129.loopexit.unr-lcssa ], [ %add126.epil, %for.body119.epil ]
  %24 = load ptr, ptr @hashFlag, align 8, !tbaa !15
  %hashfunc.1306 = srem i64 %hashfunc.0.lcssa, %23
  %arrayidx131307 = getelementptr inbounds i8, ptr %24, i64 %hashfunc.1306
  %25 = load i8, ptr %arrayidx131307, align 1, !tbaa !5
  %cmp133.not308 = icmp ne i8 %25, 0
  %cmp135309 = icmp sgt i64 %23, 1
  %or.cond310 = select i1 %cmp133.not308, i1 %cmp135309, i1 false
  br i1 %or.cond310, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end129
  %26 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %hashfunc.1312 = phi i64 [ %hashfunc.1306, %while.body.lr.ph ], [ %hashfunc.1, %while.body ]
  %RN_index.0311 = phi i64 [ 1, %while.body.lr.ph ], [ %inc140, %while.body ]
  %arrayidx137 = getelementptr inbounds i64, ptr %26, i64 %RN_index.0311
  %27 = load i64, ptr %arrayidx137, align 8, !tbaa !13
  %add138 = add nsw i64 %27, %hashfunc.1312
  %inc140 = add nuw nsw i64 %RN_index.0311, 1
  %hashfunc.1 = srem i64 %add138, %23
  %arrayidx131 = getelementptr inbounds i8, ptr %24, i64 %hashfunc.1
  %28 = load i8, ptr %arrayidx131, align 1, !tbaa !5
  %cmp133.not = icmp ne i8 %28, 0
  %cmp135 = icmp slt i64 %inc140, %23
  %or.cond = select i1 %cmp133.not, i1 %cmp135, i1 false
  br i1 %or.cond, label %while.body, label %while.end, !llvm.loop !20

while.end:                                        ; preds = %while.body, %for.end129
  %RN_index.0.lcssa = phi i64 [ 1, %for.end129 ], [ %inc140, %while.body ]
  %hashfunc.1.lcssa = phi i64 [ %hashfunc.1306, %for.end129 ], [ %hashfunc.1, %while.body ]
  %cmp141.not = icmp slt i64 %RN_index.0.lcssa, %23
  br i1 %cmp141.not, label %if.end145, label %if.then143

if.then143:                                       ; preds = %while.end
  %puts273 = call i32 @puts(ptr nonnull @str.33)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end145:                                        ; preds = %while.end
  %29 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %arrayidx146 = getelementptr inbounds %struct.nodesHash, ptr %29, i64 %hashfunc.1.lcssa
  %call149 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx146, ptr noundef nonnull %temp) #14
  %30 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %index = getelementptr inbounds %struct.nodesHash, ptr %30, i64 %hashfunc.1.lcssa, i32 1
  store i64 %pin_ptr.0319, ptr %index, align 8, !tbaa !21
  %31 = load ptr, ptr @hashFlag, align 8, !tbaa !15
  %arrayidx151 = getelementptr inbounds i8, ptr %31, i64 %hashfunc.1.lcssa
  store i8 1, ptr %arrayidx151, align 1, !tbaa !5
  %inc152 = add nsw i64 %pin_ptr.0319, 1
  br label %for.inc213

if.else:                                          ; preds = %if.end94
  %arrayidx153 = getelementptr inbounds ptr, ptr %14, i64 %nonpin_ptr.0318
  %32 = load ptr, ptr %arrayidx153, align 8, !tbaa !15
  %call155 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull %temp) #14
  %call158 = call i64 @strlen(ptr noundef nonnull %temp) #16
  %conv159 = trunc i64 %call158 to i32
  %33 = load i64, ptr @modresNum, align 8, !tbaa !13
  %conv160 = trunc i64 %33 to i32
  %cmp161 = icmp slt i32 %conv159, %conv160
  %call158. = select i1 %cmp161, i64 %call158, i64 %33
  %34 = trunc i64 %call158. to i32
  %cmp168.not290 = icmp slt i32 %34, 1
  br i1 %cmp168.not290, label %if.else.for.end181_crit_edge, label %for.body170.lr.ph

if.else.for.end181_crit_edge:                     ; preds = %if.else
  %.pre = load i64, ptr @hashSize, align 8, !tbaa !13
  br label %for.end181

for.body170.lr.ph:                                ; preds = %if.else
  %conv167329 = and i64 %call158., 4294967295
  %35 = load i64, ptr @hashSize, align 8, !tbaa !13
  %xtraiter = and i64 %call158., 1
  %36 = icmp eq i64 %conv167329, 1
  br i1 %36, label %for.end181.loopexit.unr-lcssa, label %for.body170.lr.ph.new

for.body170.lr.ph.new:                            ; preds = %for.body170.lr.ph
  %unroll_iter = sub nsw i64 %conv167329, %xtraiter
  br label %for.body170

for.body170:                                      ; preds = %for.body170, %for.body170.lr.ph.new
  %hashfunc.2292 = phi i64 [ 0, %for.body170.lr.ph.new ], [ %add178.1, %for.body170 ]
  %j.3291 = phi i64 [ 1, %for.body170.lr.ph.new ], [ %inc180.1, %for.body170 ]
  %niter = phi i64 [ 0, %for.body170.lr.ph.new ], [ %niter.next.1, %for.body170 ]
  %sub171 = add nsw i64 %j.3291, -1
  %arrayidx172 = getelementptr inbounds [200 x i8], ptr %temp, i64 0, i64 %sub171
  %37 = load i8, ptr %arrayidx172, align 1, !tbaa !5
  %conv173 = sext i8 %37 to i64
  %mul175 = mul nuw nsw i64 %sub171, 3
  %shl176 = shl i64 %conv173, %mul175
  %rem177 = srem i64 %shl176, %35
  %add178 = add nsw i64 %rem177, %hashfunc.2292
  %arrayidx172.1 = getelementptr inbounds [200 x i8], ptr %temp, i64 0, i64 %j.3291
  %38 = load i8, ptr %arrayidx172.1, align 1, !tbaa !5
  %conv173.1 = sext i8 %38 to i64
  %mul175.1 = mul nuw nsw i64 %j.3291, 3
  %shl176.1 = shl i64 %conv173.1, %mul175.1
  %rem177.1 = srem i64 %shl176.1, %35
  %add178.1 = add nsw i64 %rem177.1, %add178
  %inc180.1 = add nuw nsw i64 %j.3291, 2
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end181.loopexit.unr-lcssa, label %for.body170, !llvm.loop !23

for.end181.loopexit.unr-lcssa:                    ; preds = %for.body170, %for.body170.lr.ph
  %add178.lcssa.ph = phi i64 [ undef, %for.body170.lr.ph ], [ %add178.1, %for.body170 ]
  %hashfunc.2292.unr = phi i64 [ 0, %for.body170.lr.ph ], [ %add178.1, %for.body170 ]
  %j.3291.unr = phi i64 [ 1, %for.body170.lr.ph ], [ %inc180.1, %for.body170 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end181, label %for.body170.epil

for.body170.epil:                                 ; preds = %for.end181.loopexit.unr-lcssa
  %sub171.epil = add nsw i64 %j.3291.unr, -1
  %arrayidx172.epil = getelementptr inbounds [200 x i8], ptr %temp, i64 0, i64 %sub171.epil
  %39 = load i8, ptr %arrayidx172.epil, align 1, !tbaa !5
  %conv173.epil = sext i8 %39 to i64
  %mul175.epil = mul nuw nsw i64 %sub171.epil, 3
  %shl176.epil = shl i64 %conv173.epil, %mul175.epil
  %rem177.epil = srem i64 %shl176.epil, %35
  %add178.epil = add nsw i64 %rem177.epil, %hashfunc.2292.unr
  br label %for.end181

for.end181:                                       ; preds = %for.body170.epil, %for.end181.loopexit.unr-lcssa, %if.else.for.end181_crit_edge
  %40 = phi i64 [ %.pre, %if.else.for.end181_crit_edge ], [ %35, %for.end181.loopexit.unr-lcssa ], [ %35, %for.body170.epil ]
  %hashfunc.2.lcssa = phi i64 [ 0, %if.else.for.end181_crit_edge ], [ %add178.lcssa.ph, %for.end181.loopexit.unr-lcssa ], [ %add178.epil, %for.body170.epil ]
  %41 = load ptr, ptr @hashFlag, align 8, !tbaa !15
  %hashfunc.3293 = srem i64 %hashfunc.2.lcssa, %40
  %arrayidx184294 = getelementptr inbounds i8, ptr %41, i64 %hashfunc.3293
  %42 = load i8, ptr %arrayidx184294, align 1, !tbaa !5
  %cmp186.not295 = icmp ne i8 %42, 0
  %cmp189296 = icmp sgt i64 %40, 1
  %or.cond274297 = select i1 %cmp186.not295, i1 %cmp189296, i1 false
  br i1 %or.cond274297, label %while.body192.lr.ph, label %while.end197

while.body192.lr.ph:                              ; preds = %for.end181
  %43 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %while.body192

while.body192:                                    ; preds = %while.body192.lr.ph, %while.body192
  %hashfunc.3299 = phi i64 [ %hashfunc.3293, %while.body192.lr.ph ], [ %hashfunc.3, %while.body192 ]
  %RN_index.1298 = phi i64 [ 1, %while.body192.lr.ph ], [ %inc196, %while.body192 ]
  %arrayidx193 = getelementptr inbounds i64, ptr %43, i64 %RN_index.1298
  %44 = load i64, ptr %arrayidx193, align 8, !tbaa !13
  %add194 = add nsw i64 %44, %hashfunc.3299
  %inc196 = add nuw nsw i64 %RN_index.1298, 1
  %hashfunc.3 = srem i64 %add194, %40
  %arrayidx184 = getelementptr inbounds i8, ptr %41, i64 %hashfunc.3
  %45 = load i8, ptr %arrayidx184, align 1, !tbaa !5
  %cmp186.not = icmp ne i8 %45, 0
  %cmp189 = icmp slt i64 %inc196, %40
  %or.cond274 = select i1 %cmp186.not, i1 %cmp189, i1 false
  br i1 %or.cond274, label %while.body192, label %while.end197, !llvm.loop !24

while.end197:                                     ; preds = %while.body192, %for.end181
  %RN_index.1.lcssa = phi i64 [ 1, %for.end181 ], [ %inc196, %while.body192 ]
  %hashfunc.3.lcssa = phi i64 [ %hashfunc.3293, %for.end181 ], [ %hashfunc.3, %while.body192 ]
  %cmp198.not = icmp slt i64 %RN_index.1.lcssa, %40
  br i1 %cmp198.not, label %if.end202, label %if.then200

if.then200:                                       ; preds = %while.end197
  %puts = call i32 @puts(ptr nonnull @str.33)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end202:                                        ; preds = %while.end197
  %46 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %arrayidx203 = getelementptr inbounds %struct.nodesHash, ptr %46, i64 %hashfunc.3.lcssa
  %call207 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx203, ptr noundef nonnull %temp) #14
  %47 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %index209 = getelementptr inbounds %struct.nodesHash, ptr %47, i64 %hashfunc.3.lcssa, i32 1
  store i64 %nonpin_ptr.0318, ptr %index209, align 8, !tbaa !21
  %48 = load ptr, ptr @hashFlag, align 8, !tbaa !15
  %arrayidx210 = getelementptr inbounds i8, ptr %48, i64 %hashfunc.3.lcssa
  store i8 1, ptr %arrayidx210, align 1, !tbaa !5
  %inc211 = add nsw i64 %nonpin_ptr.0318, 1
  br label %for.inc213

for.inc213:                                       ; preds = %if.end145, %if.end202
  %nonpin_ptr.1 = phi i64 [ %nonpin_ptr.0318, %if.end145 ], [ %inc211, %if.end202 ]
  %pin_ptr.1 = phi i64 [ %inc152, %if.end145 ], [ %pin_ptr.0319, %if.end202 ]
  %inc214 = add nuw nsw i64 %nodeNo.0317, 1
  %49 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv86 = sext i32 %49 to i64
  %cmp87.not.not = icmp slt i64 %nodeNo.0317, %conv86
  br i1 %cmp87.not.not, label %for.body89, label %for.end215, !llvm.loop !25

for.end215:                                       ; preds = %for.inc213, %for.end80
  %call216 = call i32 @fclose(ptr noundef nonnull %call6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodeHeight) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodeWidth) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %s4) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %temp) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %line) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare ptr @lvector(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @cvector(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @cmatrix(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @freeHash() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  tail call void @free(ptr noundef %0) #14
  %1 = load ptr, ptr @RN, align 8, !tbaa !15
  %2 = load i64, ptr @hashSize, align 8, !tbaa !13
  tail call void @free_lvector(ptr noundef %1, i64 noundef 1, i64 noundef %2) #14
  %3 = load ptr, ptr @hashFlag, align 8, !tbaa !15
  %4 = load i64, ptr @hashSize, align 8, !tbaa !13
  tail call void @free_cvector(ptr noundef %3, i64 noundef 1, i64 noundef %4) #14
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #9

declare void @free_lvector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @free_cvector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @readAuxFile(ptr nocapture noundef readonly %benchmarkPath, ptr noundef %auxFile) local_unnamed_addr #0 {
entry:
  %temp = alloca [200 x i8], align 16
  %placementType = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %temp) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %placementType) #14
  %call = call ptr @strcpy(ptr noundef nonnull %temp, ptr noundef nonnull dereferenceable(1) %benchmarkPath) #14
  %strlen = call i64 @strlen(ptr nonnull %temp)
  %endptr = getelementptr i8, ptr %temp, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %temp, ptr noundef nonnull dereferenceable(1) %auxFile) #14
  %call6 = call ptr @fopen(ptr noundef nonnull %temp, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %auxFile)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call9 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.9, ptr noundef nonnull %placementType, ptr noundef nonnull @nodesFile, ptr noundef nonnull @netsFile, ptr noundef nonnull @wtsFile, ptr noundef nonnull @plFile, ptr noundef nonnull @sclFile) #14
  %cmp10.not = icmp eq i32 %call9, 6
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @abort() #15
  unreachable

if.end12:                                         ; preds = %if.end
  %call14 = call ptr @strcpy(ptr noundef nonnull %temp, ptr noundef nonnull dereferenceable(1) %auxFile) #14
  %call16 = call ptr @strtok(ptr noundef nonnull %temp, ptr noundef nonnull @.str.10) #14
  %call17 = call ptr @strcpy(ptr noundef nonnull @benchmarkName, ptr noundef nonnull dereferenceable(1) %call16) #14
  %call18 = call i32 @fclose(ptr noundef nonnull %call6)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %placementType) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %temp) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @readNodesFile(ptr nocapture noundef readonly %benchmarkPath, ptr noundef %nodesFile) local_unnamed_addr #0 {
entry:
  %line = alloca [200 x i8], align 16
  %tempStr = alloca [200 x i8], align 16
  %s4 = alloca [30 x i8], align 16
  %nodeWidth = alloca float, align 4
  %nodeHeight = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %line) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tempStr) #14
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %s4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodeWidth) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodeHeight) #14
  %call = call ptr @strcpy(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %benchmarkPath) #14
  %strlen = call i64 @strlen(ptr nonnull %tempStr)
  %endptr = getelementptr i8, ptr %tempStr, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %nodesFile) #14
  %call6 = call ptr @fopen(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %nodesFile)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call9 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then10, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call12231 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14232 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not233 = icmp eq ptr %call14232, null
  br i1 %tobool15.not233, label %if.then16, label %do.cond

if.then10:                                        ; preds = %if.end
  call void @abort() #15
  unreachable

if.then16:                                        ; preds = %do.body.backedge, %do.body.preheader
  call void @abort() #15
  unreachable

do.cond:                                          ; preds = %do.body.preheader, %do.body.backedge
  %call12234 = phi i64 [ %call12, %do.body.backedge ], [ %call12231, %do.body.preheader ]
  %0 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp18 = icmp eq i8 %0, 35
  br i1 %cmp18, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %call21 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp22 = icmp ult i64 %call21, 5
  br i1 %cmp22, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call12 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %do.cond, !llvm.loop !26

do.end:                                           ; preds = %lor.rhs
  %call24 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call12234, i32 noundef 0)
  %call25 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.3, ptr noundef nonnull @numNodes) #14
  %cmp26.not = icmp eq i32 %call25, 1
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end
  call void @abort() #15
  unreachable

if.end29:                                         ; preds = %do.end
  %call30 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.4, ptr noundef nonnull @numTerminals) #14
  %cmp31.not = icmp eq i32 %call30, 1
  br i1 %cmp31.not, label %do.body35.preheader, label %if.then33

do.body35.preheader:                              ; preds = %if.end29
  %call36235 = call i64 @ftell(ptr noundef nonnull %call6)
  %call38236 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool39.not237 = icmp eq ptr %call38236, null
  br i1 %tobool39.not237, label %if.then40, label %do.cond42

if.then33:                                        ; preds = %if.end29
  call void @abort() #15
  unreachable

if.then40:                                        ; preds = %do.body35.backedge, %do.body35.preheader
  call void @abort() #15
  unreachable

do.cond42:                                        ; preds = %do.body35.preheader, %do.body35.backedge
  %call36238 = phi i64 [ %call36, %do.body35.backedge ], [ %call36235, %do.body35.preheader ]
  %1 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp45 = icmp eq i8 %1, 35
  br i1 %cmp45, label %do.body35.backedge, label %lor.rhs47

lor.rhs47:                                        ; preds = %do.cond42
  %call49 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp50 = icmp ult i64 %call49, 5
  br i1 %cmp50, label %do.body35.backedge, label %do.end53

do.body35.backedge:                               ; preds = %lor.rhs47, %do.cond42
  %call36 = call i64 @ftell(ptr noundef nonnull %call6)
  %call38 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %do.cond42, !llvm.loop !27

do.end53:                                         ; preds = %lor.rhs47
  %call54 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call36238, i32 noundef 0)
  %2 = load i32, ptr @numNodes, align 4, !tbaa !11
  %3 = load i32, ptr @numTerminals, align 4, !tbaa !11
  %sub = sub nsw i32 %2, %3
  store i32 %sub, ptr @movableNodes, align 4, !tbaa !11
  %conv55 = sext i32 %2 to i64
  %call56 = call ptr @vector(i64 noundef 1, i64 noundef %conv55) #14
  store ptr %call56, ptr @cellWidth, align 8, !tbaa !15
  %4 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv57 = sext i32 %4 to i64
  %call58 = call ptr @vector(i64 noundef 1, i64 noundef %conv57) #14
  store ptr %call58, ptr @cellHeight, align 8, !tbaa !15
  %5 = load i32, ptr @numNodes, align 4, !tbaa !11
  %cmp60.not269 = icmp slt i32 %5, 1
  br i1 %cmp60.not269, label %for.end172, label %for.body

for.body:                                         ; preds = %do.end53, %for.inc170
  %sumWidth.0271 = phi float [ %sumWidth.1, %for.inc170 ], [ 0.000000e+00, %do.end53 ]
  %nodeNo.0270 = phi i64 [ %inc171, %for.inc170 ], [ 1, %do.end53 ]
  %call63 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.body
  call void @abort() #15
  unreachable

if.end66:                                         ; preds = %for.body
  store i8 0, ptr %s4, align 16
  %call72 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.6, ptr noundef nonnull %tempStr, ptr noundef nonnull %nodeWidth, ptr noundef nonnull %nodeHeight, ptr noundef nonnull %s4) #14
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %s4, ptr noundef nonnull dereferenceable(9) @.str.7, i64 9)
  %cmp75 = icmp eq i32 %bcmp, 0
  %call80 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %conv81 = trunc i64 %call80 to i32
  %6 = load i64, ptr @modresNum, align 8, !tbaa !13
  %conv82 = trunc i64 %6 to i32
  %cmp83 = icmp slt i32 %conv81, %conv82
  %call80. = select i1 %cmp83, i64 %call80, i64 %6
  %7 = trunc i64 %call80. to i32
  %cmp86.not253 = icmp slt i32 %7, 1
  br i1 %cmp75, label %for.cond78.preheader, label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %if.end66
  br i1 %cmp86.not253, label %for.cond114.preheader.for.end139_crit_edge, label %for.body128.lr.ph

for.cond114.preheader.for.end139_crit_edge:       ; preds = %for.cond114.preheader
  %.pre = load i64, ptr @hashSize, align 8, !tbaa !13
  br label %for.end139

for.body128.lr.ph:                                ; preds = %for.cond114.preheader
  %conv125281 = and i64 %call80., 4294967295
  %8 = load i64, ptr @hashSize, align 8, !tbaa !13
  %xtraiter = and i64 %call80., 1
  %9 = icmp eq i64 %conv125281, 1
  br i1 %9, label %for.end139.loopexit.unr-lcssa, label %for.body128.lr.ph.new

for.body128.lr.ph.new:                            ; preds = %for.body128.lr.ph
  %unroll_iter = sub nsw i64 %conv125281, %xtraiter
  br label %for.body128

for.cond78.preheader:                             ; preds = %if.end66
  br i1 %cmp86.not253, label %for.cond78.preheader.for.end_crit_edge, label %for.body88.lr.ph

for.cond78.preheader.for.end_crit_edge:           ; preds = %for.cond78.preheader
  %.pre279 = load i64, ptr @hashSize, align 8, !tbaa !13
  br label %for.end

for.body88.lr.ph:                                 ; preds = %for.cond78.preheader
  %conv85280 = and i64 %call80., 4294967295
  %10 = load i64, ptr @hashSize, align 8, !tbaa !13
  %xtraiter295 = and i64 %call80., 1
  %11 = icmp eq i64 %conv85280, 1
  br i1 %11, label %for.end.loopexit.unr-lcssa, label %for.body88.lr.ph.new

for.body88.lr.ph.new:                             ; preds = %for.body88.lr.ph
  %unroll_iter298 = sub nsw i64 %conv85280, %xtraiter295
  br label %for.body88

for.body88:                                       ; preds = %for.body88, %for.body88.lr.ph.new
  %hashfunc.0255 = phi i64 [ 0, %for.body88.lr.ph.new ], [ %add.1, %for.body88 ]
  %j.0254 = phi i64 [ 1, %for.body88.lr.ph.new ], [ %inc.1, %for.body88 ]
  %niter299 = phi i64 [ 0, %for.body88.lr.ph.new ], [ %niter299.next.1, %for.body88 ]
  %sub89 = add nsw i64 %j.0254, -1
  %arrayidx90 = getelementptr inbounds [200 x i8], ptr %tempStr, i64 0, i64 %sub89
  %12 = load i8, ptr %arrayidx90, align 1, !tbaa !5
  %conv91 = sext i8 %12 to i64
  %mul = mul nuw nsw i64 %sub89, 3
  %shl = shl i64 %conv91, %mul
  %rem = srem i64 %shl, %10
  %add = add nsw i64 %rem, %hashfunc.0255
  %arrayidx90.1 = getelementptr inbounds [200 x i8], ptr %tempStr, i64 0, i64 %j.0254
  %13 = load i8, ptr %arrayidx90.1, align 1, !tbaa !5
  %conv91.1 = sext i8 %13 to i64
  %mul.1 = mul nuw nsw i64 %j.0254, 3
  %shl.1 = shl i64 %conv91.1, %mul.1
  %rem.1 = srem i64 %shl.1, %10
  %add.1 = add nsw i64 %rem.1, %add
  %inc.1 = add nuw nsw i64 %j.0254, 2
  %niter299.next.1 = add nuw i64 %niter299, 2
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body88, !llvm.loop !28

for.end.loopexit.unr-lcssa:                       ; preds = %for.body88, %for.body88.lr.ph
  %add.lcssa.ph = phi i64 [ undef, %for.body88.lr.ph ], [ %add.1, %for.body88 ]
  %hashfunc.0255.unr = phi i64 [ 0, %for.body88.lr.ph ], [ %add.1, %for.body88 ]
  %j.0254.unr = phi i64 [ 1, %for.body88.lr.ph ], [ %inc.1, %for.body88 ]
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %for.end, label %for.body88.epil

for.body88.epil:                                  ; preds = %for.end.loopexit.unr-lcssa
  %sub89.epil = add nsw i64 %j.0254.unr, -1
  %arrayidx90.epil = getelementptr inbounds [200 x i8], ptr %tempStr, i64 0, i64 %sub89.epil
  %14 = load i8, ptr %arrayidx90.epil, align 1, !tbaa !5
  %conv91.epil = sext i8 %14 to i64
  %mul.epil = mul nuw nsw i64 %sub89.epil, 3
  %shl.epil = shl i64 %conv91.epil, %mul.epil
  %rem.epil = srem i64 %shl.epil, %10
  %add.epil = add nsw i64 %rem.epil, %hashfunc.0255.unr
  br label %for.end

for.end:                                          ; preds = %for.body88.epil, %for.end.loopexit.unr-lcssa, %for.cond78.preheader.for.end_crit_edge
  %15 = phi i64 [ %.pre279, %for.cond78.preheader.for.end_crit_edge ], [ %10, %for.end.loopexit.unr-lcssa ], [ %10, %for.body88.epil ]
  %hashfunc.0.lcssa = phi i64 [ 0, %for.cond78.preheader.for.end_crit_edge ], [ %add.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %add.epil, %for.body88.epil ]
  %16 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %hashfunc.1257 = srem i64 %hashfunc.0.lcssa, %15
  %arrayidx95258 = getelementptr inbounds %struct.nodesHash, ptr %16, i64 %hashfunc.1257
  %call97259 = call i32 @strcmp(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %arrayidx95258) #16
  %cmp98.not260 = icmp ne i32 %call97259, 0
  %cmp100261 = icmp sgt i64 %15, 1
  %or.cond262 = select i1 %cmp98.not260, i1 %cmp100261, i1 false
  br i1 %or.cond262, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %17 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %hashfunc.1264 = phi i64 [ %hashfunc.1257, %while.body.lr.ph ], [ %hashfunc.1, %while.body ]
  %RN_index.0263 = phi i64 [ 1, %while.body.lr.ph ], [ %inc105, %while.body ]
  %arrayidx102 = getelementptr inbounds i64, ptr %17, i64 %RN_index.0263
  %18 = load i64, ptr %arrayidx102, align 8, !tbaa !13
  %add103 = add nsw i64 %18, %hashfunc.1264
  %inc105 = add nuw nsw i64 %RN_index.0263, 1
  %hashfunc.1 = srem i64 %add103, %15
  %arrayidx95 = getelementptr inbounds %struct.nodesHash, ptr %16, i64 %hashfunc.1
  %call97 = call i32 @strcmp(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %arrayidx95) #16
  %cmp98.not = icmp ne i32 %call97, 0
  %cmp100 = icmp slt i64 %inc105, %15
  %or.cond = select i1 %cmp98.not, i1 %cmp100, i1 false
  br i1 %or.cond, label %while.body, label %while.end, !llvm.loop !29

while.end:                                        ; preds = %while.body, %for.end
  %RN_index.0.lcssa = phi i64 [ 1, %for.end ], [ %inc105, %while.body ]
  %hashfunc.1.lcssa = phi i64 [ %hashfunc.1257, %for.end ], [ %hashfunc.1, %while.body ]
  %cmp106.not = icmp slt i64 %RN_index.0.lcssa, %15
  br i1 %cmp106.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %while.end
  %puts223 = call i32 @puts(ptr nonnull @str.37)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end110:                                        ; preds = %while.end
  %index = getelementptr inbounds %struct.nodesHash, ptr %16, i64 %hashfunc.1.lcssa, i32 1
  %19 = load i64, ptr %index, align 8, !tbaa !21
  %20 = load float, ptr %nodeWidth, align 4, !tbaa !30
  %21 = load ptr, ptr @cellWidth, align 8, !tbaa !15
  %arrayidx112 = getelementptr inbounds float, ptr %21, i64 %19
  store float %20, ptr %arrayidx112, align 4, !tbaa !30
  %22 = load float, ptr %nodeHeight, align 4, !tbaa !30
  %23 = load ptr, ptr @cellHeight, align 8, !tbaa !15
  %arrayidx113 = getelementptr inbounds float, ptr %23, i64 %19
  store float %22, ptr %arrayidx113, align 4, !tbaa !30
  br label %for.inc170

for.body128:                                      ; preds = %for.body128, %for.body128.lr.ph.new
  %hashfunc.2241 = phi i64 [ 0, %for.body128.lr.ph.new ], [ %add136.1, %for.body128 ]
  %j.1240 = phi i64 [ 1, %for.body128.lr.ph.new ], [ %inc138.1, %for.body128 ]
  %niter = phi i64 [ 0, %for.body128.lr.ph.new ], [ %niter.next.1, %for.body128 ]
  %sub129 = add nsw i64 %j.1240, -1
  %arrayidx130 = getelementptr inbounds [200 x i8], ptr %tempStr, i64 0, i64 %sub129
  %24 = load i8, ptr %arrayidx130, align 1, !tbaa !5
  %conv131 = sext i8 %24 to i64
  %mul133 = mul nuw nsw i64 %sub129, 3
  %shl134 = shl i64 %conv131, %mul133
  %rem135 = srem i64 %shl134, %8
  %add136 = add nsw i64 %rem135, %hashfunc.2241
  %arrayidx130.1 = getelementptr inbounds [200 x i8], ptr %tempStr, i64 0, i64 %j.1240
  %25 = load i8, ptr %arrayidx130.1, align 1, !tbaa !5
  %conv131.1 = sext i8 %25 to i64
  %mul133.1 = mul nuw nsw i64 %j.1240, 3
  %shl134.1 = shl i64 %conv131.1, %mul133.1
  %rem135.1 = srem i64 %shl134.1, %8
  %add136.1 = add nsw i64 %rem135.1, %add136
  %inc138.1 = add nuw nsw i64 %j.1240, 2
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end139.loopexit.unr-lcssa, label %for.body128, !llvm.loop !32

for.end139.loopexit.unr-lcssa:                    ; preds = %for.body128, %for.body128.lr.ph
  %add136.lcssa.ph = phi i64 [ undef, %for.body128.lr.ph ], [ %add136.1, %for.body128 ]
  %hashfunc.2241.unr = phi i64 [ 0, %for.body128.lr.ph ], [ %add136.1, %for.body128 ]
  %j.1240.unr = phi i64 [ 1, %for.body128.lr.ph ], [ %inc138.1, %for.body128 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end139, label %for.body128.epil

for.body128.epil:                                 ; preds = %for.end139.loopexit.unr-lcssa
  %sub129.epil = add nsw i64 %j.1240.unr, -1
  %arrayidx130.epil = getelementptr inbounds [200 x i8], ptr %tempStr, i64 0, i64 %sub129.epil
  %26 = load i8, ptr %arrayidx130.epil, align 1, !tbaa !5
  %conv131.epil = sext i8 %26 to i64
  %mul133.epil = mul nuw nsw i64 %sub129.epil, 3
  %shl134.epil = shl i64 %conv131.epil, %mul133.epil
  %rem135.epil = srem i64 %shl134.epil, %8
  %add136.epil = add nsw i64 %rem135.epil, %hashfunc.2241.unr
  br label %for.end139

for.end139:                                       ; preds = %for.body128.epil, %for.end139.loopexit.unr-lcssa, %for.cond114.preheader.for.end139_crit_edge
  %27 = phi i64 [ %.pre, %for.cond114.preheader.for.end139_crit_edge ], [ %8, %for.end139.loopexit.unr-lcssa ], [ %8, %for.body128.epil ]
  %hashfunc.2.lcssa = phi i64 [ 0, %for.cond114.preheader.for.end139_crit_edge ], [ %add136.lcssa.ph, %for.end139.loopexit.unr-lcssa ], [ %add136.epil, %for.body128.epil ]
  %28 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %hashfunc.3242 = srem i64 %hashfunc.2.lcssa, %27
  %arrayidx143243 = getelementptr inbounds %struct.nodesHash, ptr %28, i64 %hashfunc.3242
  %call146244 = call i32 @strcmp(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %arrayidx143243) #16
  %cmp147.not245 = icmp ne i32 %call146244, 0
  %cmp150246 = icmp sgt i64 %27, 1
  %or.cond224247 = select i1 %cmp147.not245, i1 %cmp150246, i1 false
  br i1 %or.cond224247, label %while.body153.lr.ph, label %while.end158

while.body153.lr.ph:                              ; preds = %for.end139
  %29 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %while.body153

while.body153:                                    ; preds = %while.body153.lr.ph, %while.body153
  %hashfunc.3249 = phi i64 [ %hashfunc.3242, %while.body153.lr.ph ], [ %hashfunc.3, %while.body153 ]
  %RN_index.1248 = phi i64 [ 1, %while.body153.lr.ph ], [ %inc157, %while.body153 ]
  %arrayidx154 = getelementptr inbounds i64, ptr %29, i64 %RN_index.1248
  %30 = load i64, ptr %arrayidx154, align 8, !tbaa !13
  %add155 = add nsw i64 %30, %hashfunc.3249
  %inc157 = add nuw nsw i64 %RN_index.1248, 1
  %hashfunc.3 = srem i64 %add155, %27
  %arrayidx143 = getelementptr inbounds %struct.nodesHash, ptr %28, i64 %hashfunc.3
  %call146 = call i32 @strcmp(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %arrayidx143) #16
  %cmp147.not = icmp ne i32 %call146, 0
  %cmp150 = icmp slt i64 %inc157, %27
  %or.cond224 = select i1 %cmp147.not, i1 %cmp150, i1 false
  br i1 %or.cond224, label %while.body153, label %while.end158, !llvm.loop !33

while.end158:                                     ; preds = %while.body153, %for.end139
  %RN_index.1.lcssa = phi i64 [ 1, %for.end139 ], [ %inc157, %while.body153 ]
  %hashfunc.3.lcssa = phi i64 [ %hashfunc.3242, %for.end139 ], [ %hashfunc.3, %while.body153 ]
  %cmp159.not = icmp slt i64 %RN_index.1.lcssa, %27
  br i1 %cmp159.not, label %if.end163, label %if.then161

if.then161:                                       ; preds = %while.end158
  %puts = call i32 @puts(ptr nonnull @str.37)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end163:                                        ; preds = %while.end158
  %index165 = getelementptr inbounds %struct.nodesHash, ptr %28, i64 %hashfunc.3.lcssa, i32 1
  %31 = load i64, ptr %index165, align 8, !tbaa !21
  %32 = load float, ptr %nodeWidth, align 4, !tbaa !30
  %33 = load ptr, ptr @cellWidth, align 8, !tbaa !15
  %arrayidx166 = getelementptr inbounds float, ptr %33, i64 %31
  store float %32, ptr %arrayidx166, align 4, !tbaa !30
  %34 = load float, ptr %nodeHeight, align 4, !tbaa !30
  %35 = load ptr, ptr @cellHeight, align 8, !tbaa !15
  %arrayidx167 = getelementptr inbounds float, ptr %35, i64 %31
  store float %34, ptr %arrayidx167, align 4, !tbaa !30
  %36 = load float, ptr %nodeWidth, align 4, !tbaa !30
  %add168 = fadd float %sumWidth.0271, %36
  br label %for.inc170

for.inc170:                                       ; preds = %if.end110, %if.end163
  %sumWidth.1 = phi float [ %sumWidth.0271, %if.end110 ], [ %add168, %if.end163 ]
  %inc171 = add nuw nsw i64 %nodeNo.0270, 1
  %37 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv59 = sext i32 %37 to i64
  %cmp60.not.not = icmp slt i64 %nodeNo.0270, %conv59
  br i1 %cmp60.not.not, label %for.body, label %for.end172, !llvm.loop !34

for.end172:                                       ; preds = %for.inc170, %do.end53
  %sumWidth.0.lcssa = phi float [ 0.000000e+00, %do.end53 ], [ %sumWidth.1, %for.inc170 ]
  %38 = load i32, ptr @movableNodes, align 4, !tbaa !11
  %conv173 = sitofp i32 %38 to float
  %div = fdiv float %sumWidth.0.lcssa, %conv173
  %mul174 = fmul float %div, 1.000000e+02
  %conv175 = fptosi float %mul174 to i32
  %conv176 = sitofp i32 %conv175 to float
  %div177 = fdiv float %conv176, 1.000000e+02
  store float %div177, ptr @averageCellWidth, align 4, !tbaa !30
  %call178 = call i32 @fclose(ptr noundef nonnull %call6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodeHeight) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodeWidth) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %s4) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tempStr) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %line) #14
  ret void
}

declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @readNetsFile(ptr nocapture noundef readonly %benchmarkPath, ptr noundef %netsFile) local_unnamed_addr #0 {
entry:
  %tempStr = alloca [200 x i8], align 16
  %nodeName = alloca [200 x i8], align 16
  %degree = alloca i32, align 4
  %xOffset = alloca float, align 4
  %yOffset = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tempStr) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %nodeName) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %degree) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xOffset) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yOffset) #14
  %call = call ptr @strcpy(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %benchmarkPath) #14
  %strlen = call i64 @strlen(ptr nonnull %tempStr)
  %endptr = getelementptr i8, ptr %tempStr, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %netsFile) #14
  %call6 = call ptr @fopen(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %netsFile)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call9 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then10, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call12234 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14235 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not236 = icmp eq ptr %call14235, null
  br i1 %tobool15.not236, label %if.then16, label %do.cond

if.then10:                                        ; preds = %if.end
  call void @abort() #15
  unreachable

if.then16:                                        ; preds = %do.body.backedge, %do.body.preheader
  call void @abort() #15
  unreachable

do.cond:                                          ; preds = %do.body.preheader, %do.body.backedge
  %call12237 = phi i64 [ %call12, %do.body.backedge ], [ %call12234, %do.body.preheader ]
  %0 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp18 = icmp eq i8 %0, 35
  br i1 %cmp18, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %call21 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp22 = icmp ult i64 %call21, 5
  br i1 %cmp22, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call12 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %do.cond, !llvm.loop !35

do.end:                                           ; preds = %lor.rhs
  %call24 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call12237, i32 noundef 0)
  %call25 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.13, ptr noundef nonnull @numNets) #14
  %cmp26.not = icmp eq i32 %call25, 1
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end
  call void @abort() #15
  unreachable

if.end29:                                         ; preds = %do.end
  %call30 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.14, ptr noundef nonnull @numPins) #14
  %cmp31.not = icmp eq i32 %call30, 1
  br i1 %cmp31.not, label %do.body35.preheader, label %if.then33

do.body35.preheader:                              ; preds = %if.end29
  %call36238 = call i64 @ftell(ptr noundef nonnull %call6)
  %call38239 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool39.not240 = icmp eq ptr %call38239, null
  br i1 %tobool39.not240, label %if.then40, label %do.cond42

if.then33:                                        ; preds = %if.end29
  call void @abort() #15
  unreachable

if.then40:                                        ; preds = %do.body35.backedge, %do.body35.preheader
  call void @abort() #15
  unreachable

do.cond42:                                        ; preds = %do.body35.preheader, %do.body35.backedge
  %call36241 = phi i64 [ %call36, %do.body35.backedge ], [ %call36238, %do.body35.preheader ]
  %1 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp45 = icmp eq i8 %1, 35
  br i1 %cmp45, label %do.body35.backedge, label %lor.rhs47

lor.rhs47:                                        ; preds = %do.cond42
  %call49 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp50 = icmp ult i64 %call49, 5
  br i1 %cmp50, label %do.body35.backedge, label %do.end53

do.body35.backedge:                               ; preds = %lor.rhs47, %do.cond42
  %call36 = call i64 @ftell(ptr noundef nonnull %call6)
  %call38 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %do.cond42, !llvm.loop !36

do.end53:                                         ; preds = %lor.rhs47
  %call54 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call36241, i32 noundef 0)
  %2 = load i32, ptr @numPins, align 4, !tbaa !11
  %add = add nsw i32 %2, 1
  %conv55 = sext i32 %add to i64
  %call56 = call ptr @ivector(i64 noundef 1, i64 noundef %conv55) #14
  store ptr %call56, ptr @netlist, align 8, !tbaa !15
  %3 = load i32, ptr @numPins, align 4, !tbaa !11
  %add57 = add nsw i32 %3, 1
  %conv58 = sext i32 %add57 to i64
  %call59 = call ptr @vector(i64 noundef 1, i64 noundef %conv58) #14
  store ptr %call59, ptr @xPinOffset, align 8, !tbaa !15
  %4 = load i32, ptr @numPins, align 4, !tbaa !11
  %add60 = add nsw i32 %4, 1
  %conv61 = sext i32 %add60 to i64
  %call62 = call ptr @vector(i64 noundef 1, i64 noundef %conv61) #14
  store ptr %call62, ptr @yPinOffset, align 8, !tbaa !15
  %5 = load i32, ptr @numNets, align 4, !tbaa !11
  %add63 = add nsw i32 %5, 1
  %conv64 = sext i32 %add63 to i64
  %call65 = call ptr @ivector(i64 noundef 0, i64 noundef %conv64) #14
  store ptr %call65, ptr @netlistIndex, align 8, !tbaa !15
  store i32 1, ptr %call65, align 4, !tbaa !11
  %6 = load i32, ptr @numNets, align 4, !tbaa !11
  %cmp68.not266 = icmp slt i32 %6, 1
  br i1 %cmp68.not266, label %for.end173, label %do.body70.preheader

do.body70.preheader:                              ; preds = %do.end53, %for.inc171
  %prevElements.0268 = phi i32 [ %10, %for.inc171 ], [ 0, %do.end53 ]
  %netNo.0267 = phi i64 [ %inc172, %for.inc171 ], [ 1, %do.end53 ]
  %call71242 = call i64 @ftell(ptr noundef nonnull %call6)
  %call73243 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool74.not244 = icmp eq ptr %call73243, null
  br i1 %tobool74.not244, label %if.then75, label %do.cond77

if.then75:                                        ; preds = %do.body70.preheader, %do.body70.backedge
  call void @abort() #15
  unreachable

do.cond77:                                        ; preds = %do.body70.preheader, %do.body70.backedge
  %7 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp80 = icmp eq i8 %7, 35
  br i1 %cmp80, label %do.body70.backedge, label %lor.rhs82

lor.rhs82:                                        ; preds = %do.cond77
  %call84 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp85 = icmp ult i64 %call84, 5
  br i1 %cmp85, label %do.body70.backedge, label %do.end88

do.body70.backedge:                               ; preds = %lor.rhs82, %do.cond77
  %call71 = call i64 @ftell(ptr noundef nonnull %call6)
  %call73 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %do.cond77, !llvm.loop !37

do.end88:                                         ; preds = %lor.rhs82
  %call90 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.15, ptr noundef nonnull %degree) #14
  %8 = load ptr, ptr @netlistIndex, align 8, !tbaa !15
  %sub = add nsw i64 %netNo.0267, -1
  %arrayidx91 = getelementptr inbounds i32, ptr %8, i64 %sub
  %9 = load i32, ptr %arrayidx91, align 4, !tbaa !11
  %add92 = add nsw i32 %9, %prevElements.0268
  %arrayidx93 = getelementptr inbounds i32, ptr %8, i64 %netNo.0267
  store i32 %add92, ptr %arrayidx93, align 4, !tbaa !11
  %10 = load i32, ptr %degree, align 4, !tbaa !11
  %cmp98.not263 = icmp slt i32 %10, 1
  br i1 %cmp98.not263, label %for.inc171, label %do.body101.preheader.lr.ph

do.body101.preheader.lr.ph:                       ; preds = %do.end88
  %conv95 = sext i32 %add92 to i64
  %add159 = add nsw i64 %conv95, -1
  br label %do.body101.preheader

do.body101.preheader:                             ; preds = %do.body101.preheader.lr.ph, %if.end156
  %k.0264 = phi i64 [ 1, %do.body101.preheader.lr.ph ], [ %inc169, %if.end156 ]
  %call102245 = call i64 @ftell(ptr noundef nonnull %call6)
  %call104246 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool105.not247 = icmp eq ptr %call104246, null
  br i1 %tobool105.not247, label %if.then106, label %do.cond108

if.then106:                                       ; preds = %do.body101.preheader, %do.body101.backedge
  call void @abort() #15
  unreachable

do.cond108:                                       ; preds = %do.body101.preheader, %do.body101.backedge
  %11 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp111 = icmp eq i8 %11, 35
  br i1 %cmp111, label %do.body101.backedge, label %lor.rhs113

lor.rhs113:                                       ; preds = %do.cond108
  %call115 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp116 = icmp ult i64 %call115, 5
  br i1 %cmp116, label %do.body101.backedge, label %do.end119

do.body101.backedge:                              ; preds = %lor.rhs113, %do.cond108
  %call102 = call i64 @ftell(ptr noundef nonnull %call6)
  %call104 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then106, label %do.cond108, !llvm.loop !38

do.end119:                                        ; preds = %lor.rhs113
  store float 0.000000e+00, ptr %yOffset, align 4, !tbaa !30
  store float 0.000000e+00, ptr %xOffset, align 4, !tbaa !30
  %call122 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.16, ptr noundef nonnull %nodeName, ptr noundef nonnull %xOffset, ptr noundef nonnull %yOffset) #14
  %call125 = call i64 @strlen(ptr noundef nonnull %nodeName) #16
  %conv126 = trunc i64 %call125 to i32
  %12 = load i64, ptr @modresNum, align 8, !tbaa !13
  %conv127 = trunc i64 %12 to i32
  %cmp128 = icmp slt i32 %conv126, %conv127
  %call125. = select i1 %cmp128, i64 %call125, i64 %12
  %13 = trunc i64 %call125. to i32
  %cmp131.not248 = icmp slt i32 %13, 1
  br i1 %cmp131.not248, label %do.end119.for.end_crit_edge, label %for.body133.lr.ph

do.end119.for.end_crit_edge:                      ; preds = %do.end119
  %.pre = load i64, ptr @hashSize, align 8, !tbaa !13
  br label %for.end

for.body133.lr.ph:                                ; preds = %do.end119
  %conv130284 = and i64 %call125., 4294967295
  %14 = load i64, ptr @hashSize, align 8, !tbaa !13
  %xtraiter = and i64 %call125., 1
  %15 = icmp eq i64 %conv130284, 1
  br i1 %15, label %for.end.loopexit.unr-lcssa, label %for.body133.lr.ph.new

for.body133.lr.ph.new:                            ; preds = %for.body133.lr.ph
  %unroll_iter = sub nsw i64 %conv130284, %xtraiter
  br label %for.body133

for.body133:                                      ; preds = %for.body133, %for.body133.lr.ph.new
  %hashfunc.0250 = phi i64 [ 0, %for.body133.lr.ph.new ], [ %add138.1, %for.body133 ]
  %j.0249 = phi i64 [ 1, %for.body133.lr.ph.new ], [ %inc.1, %for.body133 ]
  %niter = phi i64 [ 0, %for.body133.lr.ph.new ], [ %niter.next.1, %for.body133 ]
  %sub134 = add nsw i64 %j.0249, -1
  %arrayidx135 = getelementptr inbounds [200 x i8], ptr %nodeName, i64 0, i64 %sub134
  %16 = load i8, ptr %arrayidx135, align 1, !tbaa !5
  %conv136 = sext i8 %16 to i64
  %mul = mul nuw nsw i64 %sub134, 3
  %shl = shl i64 %conv136, %mul
  %rem = srem i64 %shl, %14
  %add138 = add nsw i64 %rem, %hashfunc.0250
  %arrayidx135.1 = getelementptr inbounds [200 x i8], ptr %nodeName, i64 0, i64 %j.0249
  %17 = load i8, ptr %arrayidx135.1, align 1, !tbaa !5
  %conv136.1 = sext i8 %17 to i64
  %mul.1 = mul nuw nsw i64 %j.0249, 3
  %shl.1 = shl i64 %conv136.1, %mul.1
  %rem.1 = srem i64 %shl.1, %14
  %add138.1 = add nsw i64 %rem.1, %add138
  %inc.1 = add nuw nsw i64 %j.0249, 2
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body133, !llvm.loop !39

for.end.loopexit.unr-lcssa:                       ; preds = %for.body133, %for.body133.lr.ph
  %add138.lcssa.ph = phi i64 [ undef, %for.body133.lr.ph ], [ %add138.1, %for.body133 ]
  %hashfunc.0250.unr = phi i64 [ 0, %for.body133.lr.ph ], [ %add138.1, %for.body133 ]
  %j.0249.unr = phi i64 [ 1, %for.body133.lr.ph ], [ %inc.1, %for.body133 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body133.epil

for.body133.epil:                                 ; preds = %for.end.loopexit.unr-lcssa
  %sub134.epil = add nsw i64 %j.0249.unr, -1
  %arrayidx135.epil = getelementptr inbounds [200 x i8], ptr %nodeName, i64 0, i64 %sub134.epil
  %18 = load i8, ptr %arrayidx135.epil, align 1, !tbaa !5
  %conv136.epil = sext i8 %18 to i64
  %mul.epil = mul nuw nsw i64 %sub134.epil, 3
  %shl.epil = shl i64 %conv136.epil, %mul.epil
  %rem.epil = srem i64 %shl.epil, %14
  %add138.epil = add nsw i64 %rem.epil, %hashfunc.0250.unr
  br label %for.end

for.end:                                          ; preds = %for.body133.epil, %for.end.loopexit.unr-lcssa, %do.end119.for.end_crit_edge
  %19 = phi i64 [ %.pre, %do.end119.for.end_crit_edge ], [ %14, %for.end.loopexit.unr-lcssa ], [ %14, %for.body133.epil ]
  %hashfunc.0.lcssa = phi i64 [ 0, %do.end119.for.end_crit_edge ], [ %add138.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %add138.epil, %for.body133.epil ]
  %20 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %hashfunc.1251 = srem i64 %hashfunc.0.lcssa, %19
  %arrayidx141252 = getelementptr inbounds %struct.nodesHash, ptr %20, i64 %hashfunc.1251
  %call143253 = call i32 @strcmp(ptr noundef nonnull %nodeName, ptr noundef nonnull dereferenceable(1) %arrayidx141252) #16
  %cmp144.not254 = icmp ne i32 %call143253, 0
  %cmp146255 = icmp sgt i64 %19, 1
  %or.cond256 = select i1 %cmp144.not254, i1 %cmp146255, i1 false
  br i1 %or.cond256, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %21 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %hashfunc.1258 = phi i64 [ %hashfunc.1251, %while.body.lr.ph ], [ %hashfunc.1, %while.body ]
  %RN_index.0257 = phi i64 [ 1, %while.body.lr.ph ], [ %inc151, %while.body ]
  %arrayidx148 = getelementptr inbounds i64, ptr %21, i64 %RN_index.0257
  %22 = load i64, ptr %arrayidx148, align 8, !tbaa !13
  %add149 = add nsw i64 %22, %hashfunc.1258
  %inc151 = add nuw nsw i64 %RN_index.0257, 1
  %hashfunc.1 = srem i64 %add149, %19
  %arrayidx141 = getelementptr inbounds %struct.nodesHash, ptr %20, i64 %hashfunc.1
  %call143 = call i32 @strcmp(ptr noundef nonnull %nodeName, ptr noundef nonnull dereferenceable(1) %arrayidx141) #16
  %cmp144.not = icmp ne i32 %call143, 0
  %cmp146 = icmp slt i64 %inc151, %19
  %or.cond = select i1 %cmp144.not, i1 %cmp146, i1 false
  br i1 %or.cond, label %while.body, label %while.end, !llvm.loop !40

while.end:                                        ; preds = %while.body, %for.end
  %RN_index.0.lcssa = phi i64 [ 1, %for.end ], [ %inc151, %while.body ]
  %hashfunc.1.lcssa = phi i64 [ %hashfunc.1251, %for.end ], [ %hashfunc.1, %while.body ]
  %cmp152.not = icmp slt i64 %RN_index.0.lcssa, %19
  br i1 %cmp152.not, label %if.end156, label %if.then154

if.then154:                                       ; preds = %while.end
  %puts = call i32 @puts(ptr nonnull @str.37)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end156:                                        ; preds = %while.end
  %index = getelementptr inbounds %struct.nodesHash, ptr %20, i64 %hashfunc.1.lcssa, i32 1
  %23 = load i64, ptr %index, align 8, !tbaa !21
  %conv158 = trunc i64 %23 to i32
  %24 = load ptr, ptr @netlist, align 8, !tbaa !15
  %sub160 = add nsw i64 %add159, %k.0264
  %arrayidx161 = getelementptr inbounds i32, ptr %24, i64 %sub160
  store i32 %conv158, ptr %arrayidx161, align 4, !tbaa !11
  %25 = load float, ptr %xOffset, align 4, !tbaa !30
  %26 = load ptr, ptr @xPinOffset, align 8, !tbaa !15
  %arrayidx164 = getelementptr inbounds float, ptr %26, i64 %sub160
  store float %25, ptr %arrayidx164, align 4, !tbaa !30
  %27 = load float, ptr %yOffset, align 4, !tbaa !30
  %28 = load ptr, ptr @yPinOffset, align 8, !tbaa !15
  %arrayidx167 = getelementptr inbounds float, ptr %28, i64 %sub160
  store float %27, ptr %arrayidx167, align 4, !tbaa !30
  %inc169 = add nuw nsw i64 %k.0264, 1
  %29 = load i32, ptr %degree, align 4, !tbaa !11
  %conv97 = sext i32 %29 to i64
  %cmp98.not.not = icmp slt i64 %k.0264, %conv97
  br i1 %cmp98.not.not, label %do.body101.preheader, label %for.inc171, !llvm.loop !41

for.inc171:                                       ; preds = %if.end156, %do.end88
  %inc172 = add nuw nsw i64 %netNo.0267, 1
  %30 = load i32, ptr @numNets, align 4, !tbaa !11
  %conv67 = sext i32 %30 to i64
  %cmp68.not.not = icmp slt i64 %netNo.0267, %conv67
  br i1 %cmp68.not.not, label %do.body70.preheader, label %for.end173.loopexit, !llvm.loop !42

for.end173.loopexit:                              ; preds = %for.inc171
  %.pre282 = load ptr, ptr @netlistIndex, align 8, !tbaa !15
  br label %for.end173

for.end173:                                       ; preds = %do.end53, %for.end173.loopexit
  %31 = phi ptr [ %.pre282, %for.end173.loopexit ], [ %call65, %do.end53 ]
  %.lcssa = phi i32 [ %30, %for.end173.loopexit ], [ %6, %do.end53 ]
  %prevElements.0.lcssa = phi i32 [ %10, %for.end173.loopexit ], [ 0, %do.end53 ]
  %conv67.le.pre-phi = sext i32 %.lcssa to i64
  %arrayidx174 = getelementptr inbounds i32, ptr %31, i64 %conv67.le.pre-phi
  %32 = load i32, ptr %arrayidx174, align 4, !tbaa !11
  %add175 = add nsw i32 %32, %prevElements.0.lcssa
  %add176 = add nsw i32 %.lcssa, 1
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %31, i64 %idxprom177
  store i32 %add175, ptr %arrayidx178, align 4, !tbaa !11
  %33 = load ptr, ptr @netlist, align 8, !tbaa !15
  %34 = load i32, ptr @numNets, align 4, !tbaa !11
  %add179 = add nsw i32 %34, 1
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %31, i64 %idxprom180
  %35 = load i32, ptr %arrayidx181, align 4, !tbaa !11
  %idxprom182 = sext i32 %35 to i64
  %arrayidx183 = getelementptr inbounds i32, ptr %33, i64 %idxprom182
  store i32 0, ptr %arrayidx183, align 4, !tbaa !11
  %call184 = call i32 @fclose(ptr noundef nonnull %call6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yOffset) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xOffset) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %degree) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %nodeName) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tempStr) #14
  ret void
}

declare ptr @ivector(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @readPlFile(ptr nocapture noundef readonly %benchmarkPath, ptr noundef %plFile) local_unnamed_addr #0 {
entry:
  %tempStr = alloca [200 x i8], align 16
  %nodeName = alloca [200 x i8], align 16
  %fixedType = alloca [200 x i8], align 16
  %xCoord = alloca float, align 4
  %yCoord = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tempStr) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %nodeName) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %fixedType) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xCoord) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yCoord) #14
  %call = call ptr @strcpy(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %benchmarkPath) #14
  %strlen = call i64 @strlen(ptr nonnull %tempStr)
  %endptr = getelementptr i8, ptr %tempStr, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %plFile) #14
  %call6 = call ptr @fopen(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %plFile)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call9 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then10, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call12120 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14121 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not122 = icmp eq ptr %call14121, null
  br i1 %tobool15.not122, label %if.then16, label %do.cond

if.then10:                                        ; preds = %if.end
  call void @abort() #15
  unreachable

if.then16:                                        ; preds = %do.body.backedge, %do.body.preheader
  call void @abort() #15
  unreachable

do.cond:                                          ; preds = %do.body.preheader, %do.body.backedge
  %call12123 = phi i64 [ %call12, %do.body.backedge ], [ %call12120, %do.body.preheader ]
  %0 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp18 = icmp eq i8 %0, 35
  br i1 %cmp18, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %call21 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp22 = icmp ult i64 %call21, 5
  br i1 %cmp22, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call12 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %do.cond, !llvm.loop !43

do.end:                                           ; preds = %lor.rhs
  %call24 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call12123, i32 noundef 0)
  %1 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv25 = sext i32 %1 to i64
  %call26 = call ptr @vector(i64 noundef 1, i64 noundef %conv25) #14
  store ptr %call26, ptr @xCellCoord, align 8, !tbaa !15
  %2 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv27 = sext i32 %2 to i64
  %call28 = call ptr @vector(i64 noundef 1, i64 noundef %conv27) #14
  store ptr %call28, ptr @yCellCoord, align 8, !tbaa !15
  %3 = load i32, ptr @numTerminals, align 4, !tbaa !11
  %conv29 = sext i32 %3 to i64
  %call30 = call ptr @ivector(i64 noundef 1, i64 noundef %conv29) #14
  store ptr %call30, ptr @areaArrayIO, align 8, !tbaa !15
  store i32 0, ptr @numAreaArrayIO, align 4, !tbaa !11
  %4 = load i32, ptr @numNodes, align 4, !tbaa !11
  %cmp33.not139 = icmp slt i32 %4, 1
  br i1 %cmp33.not139, label %for.end96, label %for.body

for.body:                                         ; preds = %do.end, %if.end78
  %nodeNo.0140 = phi i64 [ %inc95, %if.end78 ], [ 1, %do.end ]
  %call36 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  call void @abort() #15
  unreachable

if.end39:                                         ; preds = %for.body
  store i8 0, ptr %fixedType, align 16
  %call45 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.17, ptr noundef nonnull %nodeName, ptr noundef nonnull %xCoord, ptr noundef nonnull %yCoord, ptr noundef nonnull %fixedType) #14
  %call48 = call i64 @strlen(ptr noundef nonnull %nodeName) #16
  %conv49 = trunc i64 %call48 to i32
  %5 = load i64, ptr @modresNum, align 8, !tbaa !13
  %conv50 = trunc i64 %5 to i32
  %cmp51 = icmp slt i32 %conv49, %conv50
  %call48. = select i1 %cmp51, i64 %call48, i64 %5
  %6 = trunc i64 %call48. to i32
  %cmp54.not124 = icmp slt i32 %6, 1
  br i1 %cmp54.not124, label %if.end39.for.end_crit_edge, label %for.body56.lr.ph

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  %.pre = load i64, ptr @hashSize, align 8, !tbaa !13
  br label %for.end

for.body56.lr.ph:                                 ; preds = %if.end39
  %conv53143 = and i64 %call48., 4294967295
  %7 = load i64, ptr @hashSize, align 8, !tbaa !13
  %xtraiter = and i64 %call48., 1
  %8 = icmp eq i64 %conv53143, 1
  br i1 %8, label %for.end.loopexit.unr-lcssa, label %for.body56.lr.ph.new

for.body56.lr.ph.new:                             ; preds = %for.body56.lr.ph
  %unroll_iter = sub nsw i64 %conv53143, %xtraiter
  br label %for.body56

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph.new
  %j.0126 = phi i64 [ 1, %for.body56.lr.ph.new ], [ %inc.1, %for.body56 ]
  %hashfunc.0125 = phi i64 [ 0, %for.body56.lr.ph.new ], [ %add.1, %for.body56 ]
  %niter = phi i64 [ 0, %for.body56.lr.ph.new ], [ %niter.next.1, %for.body56 ]
  %sub57 = add nsw i64 %j.0126, -1
  %arrayidx58 = getelementptr inbounds [200 x i8], ptr %nodeName, i64 0, i64 %sub57
  %9 = load i8, ptr %arrayidx58, align 1, !tbaa !5
  %conv59 = sext i8 %9 to i64
  %mul = mul nuw nsw i64 %sub57, 3
  %shl = shl i64 %conv59, %mul
  %rem = srem i64 %shl, %7
  %add = add nsw i64 %rem, %hashfunc.0125
  %arrayidx58.1 = getelementptr inbounds [200 x i8], ptr %nodeName, i64 0, i64 %j.0126
  %10 = load i8, ptr %arrayidx58.1, align 1, !tbaa !5
  %conv59.1 = sext i8 %10 to i64
  %mul.1 = mul nuw nsw i64 %j.0126, 3
  %shl.1 = shl i64 %conv59.1, %mul.1
  %rem.1 = srem i64 %shl.1, %7
  %add.1 = add nsw i64 %rem.1, %add
  %inc.1 = add nuw nsw i64 %j.0126, 2
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body56, !llvm.loop !44

for.end.loopexit.unr-lcssa:                       ; preds = %for.body56, %for.body56.lr.ph
  %add.lcssa.ph = phi i64 [ undef, %for.body56.lr.ph ], [ %add.1, %for.body56 ]
  %j.0126.unr = phi i64 [ 1, %for.body56.lr.ph ], [ %inc.1, %for.body56 ]
  %hashfunc.0125.unr = phi i64 [ 0, %for.body56.lr.ph ], [ %add.1, %for.body56 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body56.epil

for.body56.epil:                                  ; preds = %for.end.loopexit.unr-lcssa
  %sub57.epil = add nsw i64 %j.0126.unr, -1
  %arrayidx58.epil = getelementptr inbounds [200 x i8], ptr %nodeName, i64 0, i64 %sub57.epil
  %11 = load i8, ptr %arrayidx58.epil, align 1, !tbaa !5
  %conv59.epil = sext i8 %11 to i64
  %mul.epil = mul nuw nsw i64 %sub57.epil, 3
  %shl.epil = shl i64 %conv59.epil, %mul.epil
  %rem.epil = srem i64 %shl.epil, %7
  %add.epil = add nsw i64 %rem.epil, %hashfunc.0125.unr
  br label %for.end

for.end:                                          ; preds = %for.body56.epil, %for.end.loopexit.unr-lcssa, %if.end39.for.end_crit_edge
  %12 = phi i64 [ %.pre, %if.end39.for.end_crit_edge ], [ %7, %for.end.loopexit.unr-lcssa ], [ %7, %for.body56.epil ]
  %hashfunc.0.lcssa = phi i64 [ 0, %if.end39.for.end_crit_edge ], [ %add.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %add.epil, %for.body56.epil ]
  %13 = load ptr, ptr @NodesInfo, align 8, !tbaa !15
  %hashfunc.1127 = srem i64 %hashfunc.0.lcssa, %12
  %arrayidx63128 = getelementptr inbounds %struct.nodesHash, ptr %13, i64 %hashfunc.1127
  %call65129 = call i32 @strcmp(ptr noundef nonnull %nodeName, ptr noundef nonnull dereferenceable(1) %arrayidx63128) #16
  %cmp66.not130 = icmp ne i32 %call65129, 0
  %cmp68131 = icmp sgt i64 %12, 1
  %or.cond132 = select i1 %cmp66.not130, i1 %cmp68131, i1 false
  br i1 %or.cond132, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %14 = load ptr, ptr @RN, align 8, !tbaa !15
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %hashfunc.1134 = phi i64 [ %hashfunc.1127, %while.body.lr.ph ], [ %hashfunc.1, %while.body ]
  %RN_index.0133 = phi i64 [ 1, %while.body.lr.ph ], [ %inc73, %while.body ]
  %arrayidx70 = getelementptr inbounds i64, ptr %14, i64 %RN_index.0133
  %15 = load i64, ptr %arrayidx70, align 8, !tbaa !13
  %add71 = add nsw i64 %15, %hashfunc.1134
  %inc73 = add nuw nsw i64 %RN_index.0133, 1
  %hashfunc.1 = srem i64 %add71, %12
  %arrayidx63 = getelementptr inbounds %struct.nodesHash, ptr %13, i64 %hashfunc.1
  %call65 = call i32 @strcmp(ptr noundef nonnull %nodeName, ptr noundef nonnull dereferenceable(1) %arrayidx63) #16
  %cmp66.not = icmp ne i32 %call65, 0
  %cmp68 = icmp slt i64 %inc73, %12
  %or.cond = select i1 %cmp66.not, i1 %cmp68, i1 false
  br i1 %or.cond, label %while.body, label %while.end, !llvm.loop !45

while.end:                                        ; preds = %while.body, %for.end
  %RN_index.0.lcssa = phi i64 [ 1, %for.end ], [ %inc73, %while.body ]
  %hashfunc.1.lcssa = phi i64 [ %hashfunc.1127, %for.end ], [ %hashfunc.1, %while.body ]
  %cmp74.not = icmp slt i64 %RN_index.0.lcssa, %12
  br i1 %cmp74.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %while.end
  %puts = call i32 @puts(ptr nonnull @str.37)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end78:                                         ; preds = %while.end
  %index = getelementptr inbounds %struct.nodesHash, ptr %13, i64 %hashfunc.1.lcssa, i32 1
  %16 = load i64, ptr %index, align 8, !tbaa !21
  %17 = load float, ptr %xCoord, align 4, !tbaa !30
  %conv80 = fpext float %17 to double
  %18 = load ptr, ptr @cellWidth, align 8, !tbaa !15
  %arrayidx81 = getelementptr inbounds float, ptr %18, i64 %16
  %19 = load float, ptr %arrayidx81, align 4, !tbaa !30
  %conv82 = fpext float %19 to double
  %20 = call double @llvm.fmuladd.f64(double %conv82, double 5.000000e-01, double %conv80)
  %conv84 = fptosi double %20 to i32
  %conv85 = sitofp i32 %conv84 to float
  %21 = load ptr, ptr @xCellCoord, align 8, !tbaa !15
  %arrayidx86 = getelementptr inbounds float, ptr %21, i64 %16
  store float %conv85, ptr %arrayidx86, align 4, !tbaa !30
  %22 = load float, ptr %yCoord, align 4, !tbaa !30
  %conv87 = fpext float %22 to double
  %23 = load ptr, ptr @cellHeight, align 8, !tbaa !15
  %arrayidx88 = getelementptr inbounds float, ptr %23, i64 %16
  %24 = load float, ptr %arrayidx88, align 4, !tbaa !30
  %conv89 = fpext float %24 to double
  %25 = call double @llvm.fmuladd.f64(double %conv89, double 5.000000e-01, double %conv87)
  %conv91 = fptosi double %25 to i32
  %conv92 = sitofp i32 %conv91 to float
  %26 = load ptr, ptr @yCellCoord, align 8, !tbaa !15
  %arrayidx93 = getelementptr inbounds float, ptr %26, i64 %16
  store float %conv92, ptr %arrayidx93, align 4, !tbaa !30
  %inc95 = add nuw nsw i64 %nodeNo.0140, 1
  %27 = load i32, ptr @numNodes, align 4, !tbaa !11
  %conv32 = sext i32 %27 to i64
  %cmp33.not.not = icmp slt i64 %nodeNo.0140, %conv32
  br i1 %cmp33.not.not, label %for.body, label %for.end96, !llvm.loop !46

for.end96:                                        ; preds = %if.end78, %do.end
  %call97 = call i32 @fclose(ptr noundef nonnull %call6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yCoord) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xCoord) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %fixedType) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %nodeName) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tempStr) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind uwtable
define dso_local void @readSclFile(ptr nocapture noundef readonly %benchmarkPath, ptr noundef %sclFile) local_unnamed_addr #0 {
entry:
  %tempStr = alloca [200 x i8], align 16
  %siteOrient = alloca [2 x i8], align 1
  %siteSymmetry = alloca [2 x i8], align 1
  %junk = alloca [200 x i8], align 16
  %totalSites = alloca i32, align 4
  %originY = alloca float, align 4
  %originX = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tempStr) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %siteOrient) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %siteSymmetry) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %junk) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %totalSites) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %originY) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %originX) #14
  %call = call ptr @strcpy(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %benchmarkPath) #14
  %strlen = call i64 @strlen(ptr nonnull %tempStr)
  %endptr = getelementptr i8, ptr %tempStr, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %sclFile) #14
  %call6 = call ptr @fopen(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %sclFile)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call9 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then10, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call12354 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14355 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not356 = icmp eq ptr %call14355, null
  br i1 %tobool15.not356, label %if.then16, label %do.cond

if.then10:                                        ; preds = %if.end
  call void @abort() #15
  unreachable

if.then16:                                        ; preds = %do.body.backedge, %do.body.preheader
  call void @abort() #15
  unreachable

do.cond:                                          ; preds = %do.body.preheader, %do.body.backedge
  %call12357 = phi i64 [ %call12, %do.body.backedge ], [ %call12354, %do.body.preheader ]
  %0 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp18 = icmp eq i8 %0, 35
  br i1 %cmp18, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %call21 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp22 = icmp ult i64 %call21, 5
  br i1 %cmp22, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call12 = call i64 @ftell(ptr noundef nonnull %call6)
  %call14 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %do.cond, !llvm.loop !47

do.end:                                           ; preds = %lor.rhs
  %call24 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call12357, i32 noundef 0)
  %call25 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.18, ptr noundef nonnull @numRows) #14
  %cmp26.not = icmp eq i32 %call25, 1
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end
  call void @abort() #15
  unreachable

if.end29:                                         ; preds = %do.end
  %1 = load i32, ptr @numRows, align 4, !tbaa !11
  %conv30 = sext i32 %1 to i64
  %call31 = call ptr @vector(i64 noundef 1, i64 noundef %conv30) #14
  store ptr %call31, ptr @rowOriginX, align 8, !tbaa !15
  %2 = load i32, ptr @numRows, align 4, !tbaa !11
  %conv32 = sext i32 %2 to i64
  %call33 = call ptr @vector(i64 noundef 1, i64 noundef %conv32) #14
  store ptr %call33, ptr @rowEndX, align 8, !tbaa !15
  %3 = load i32, ptr @numRows, align 4, !tbaa !11
  %mul = shl nsw i32 %3, 1
  %conv34 = sext i32 %mul to i64
  %call35 = call ptr @vector(i64 noundef 1, i64 noundef %conv34) #14
  store ptr %call35, ptr @xRowBlockage, align 8, !tbaa !15
  %4 = load i32, ptr @numRows, align 4, !tbaa !11
  %mul36 = shl nsw i32 %4, 1
  %conv37 = sext i32 %mul36 to i64
  %call38 = call ptr @vector(i64 noundef 1, i64 noundef %conv37) #14
  store ptr %call38, ptr @yRowBlockage, align 8, !tbaa !15
  %5 = load i32, ptr @numRows, align 4, !tbaa !11
  %mul39 = shl nsw i32 %5, 1
  %conv40 = sext i32 %mul39 to i64
  %call41 = call ptr @vector(i64 noundef 1, i64 noundef %conv40) #14
  store ptr %call41, ptr @widthRowBlockage, align 8, !tbaa !15
  %call43358 = call i64 @ftell(ptr noundef nonnull %call6)
  %call45359 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool46.not360 = icmp eq ptr %call45359, null
  br i1 %tobool46.not360, label %if.then47, label %do.cond49

if.then47:                                        ; preds = %do.body42.backedge, %if.end29
  call void @abort() #15
  unreachable

do.cond49:                                        ; preds = %if.end29, %do.body42.backedge
  %call43361 = phi i64 [ %call43, %do.body42.backedge ], [ %call43358, %if.end29 ]
  %6 = load i8, ptr %tempStr, align 16, !tbaa !5
  %cmp52 = icmp eq i8 %6, 35
  br i1 %cmp52, label %do.body42.backedge, label %lor.rhs54

lor.rhs54:                                        ; preds = %do.cond49
  %call56 = call i64 @strlen(ptr noundef nonnull %tempStr) #16
  %cmp57 = icmp ult i64 %call56, 5
  br i1 %cmp57, label %do.body42.backedge, label %do.end60

do.body42.backedge:                               ; preds = %lor.rhs54, %do.cond49
  %call43 = call i64 @ftell(ptr noundef nonnull %call6)
  %call45 = call ptr @fgets(ptr noundef nonnull %tempStr, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then47, label %do.cond49, !llvm.loop !48

do.end60:                                         ; preds = %lor.rhs54
  %call61 = call i32 @fseek(ptr noundef nonnull %call6, i64 noundef %call43361, i32 noundef 0)
  store float 1.000000e+06, ptr @siteOriginX, align 4, !tbaa !30
  store float -1.000000e+06, ptr @siteEndX, align 4, !tbaa !30
  %7 = load i32, ptr @numRows, align 4, !tbaa !11
  %cmp62.not362 = icmp slt i32 %7, 1
  br i1 %cmp62.not362, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end60
  %call65.peel = call ptr @fgets(ptr noundef nonnull %junk, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool66.not.peel = icmp eq ptr %call65.peel, null
  br i1 %tobool66.not.peel, label %if.then67, label %if.end68.peel

if.end68.peel:                                    ; preds = %for.body.preheader
  %call69.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.19, ptr noundef nonnull %originY) #14
  %cmp70.not.peel = icmp eq i32 %call69.peel, 1
  br i1 %cmp70.not.peel, label %if.end77.peel, label %if.then72

if.end77.peel:                                    ; preds = %if.end68.peel
  %8 = load float, ptr %originY, align 4, !tbaa !30
  store float %8, ptr @siteOriginY, align 4, !tbaa !30
  %call78.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.20, ptr noundef nonnull @coreRowHeight) #14
  %cmp79.not.peel = icmp eq i32 %call78.peel, 1
  br i1 %cmp79.not.peel, label %if.end82.peel, label %if.then81

if.end82.peel:                                    ; preds = %if.end77.peel
  %call83.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.21, ptr noundef nonnull @siteWidth) #14
  %cmp84.not.peel = icmp eq i32 %call83.peel, 1
  br i1 %cmp84.not.peel, label %if.end87.peel, label %if.then86

if.end87.peel:                                    ; preds = %if.end82.peel
  %call88.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.22, ptr noundef nonnull @siteSpacing) #14
  %cmp89.not.peel = icmp eq i32 %call88.peel, 1
  br i1 %cmp89.not.peel, label %if.end92.peel, label %if.then91

if.end92.peel:                                    ; preds = %if.end87.peel
  %call94.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.23, ptr noundef nonnull %siteOrient) #14
  %cmp95.not.peel = icmp eq i32 %call94.peel, 1
  br i1 %cmp95.not.peel, label %if.end98.peel, label %if.then97

if.end98.peel:                                    ; preds = %if.end92.peel
  %call100.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.24, ptr noundef nonnull %siteSymmetry) #14
  %cmp101.not.peel = icmp eq i32 %call100.peel, 1
  br i1 %cmp101.not.peel, label %if.end104.peel, label %if.then103

if.end104.peel:                                   ; preds = %if.end98.peel
  %call105.peel = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.25, ptr noundef nonnull %originX, ptr noundef nonnull %totalSites) #14
  %cmp106.not.peel = icmp eq i32 %call105.peel, 2
  br i1 %cmp106.not.peel, label %if.end109.peel, label %if.then108

if.end109.peel:                                   ; preds = %if.end104.peel
  %call111.peel = call ptr @fgets(ptr noundef nonnull %junk, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool112.not.peel = icmp eq ptr %call111.peel, null
  br i1 %tobool112.not.peel, label %if.then113, label %if.end114.peel

if.end114.peel:                                   ; preds = %if.end109.peel
  %9 = load float, ptr %originX, align 4, !tbaa !30
  %10 = load ptr, ptr @rowOriginX, align 8, !tbaa !15
  %arrayidx115.peel = getelementptr inbounds float, ptr %10, i64 1
  store float %9, ptr %arrayidx115.peel, align 4, !tbaa !30
  %11 = load i32, ptr %totalSites, align 4, !tbaa !11
  %conv116.peel = sitofp i32 %11 to float
  %12 = load float, ptr @siteSpacing, align 4, !tbaa !30
  %13 = call float @llvm.fmuladd.f32(float %conv116.peel, float %12, float %9)
  %14 = load ptr, ptr @rowEndX, align 8, !tbaa !15
  %arrayidx119.peel = getelementptr inbounds float, ptr %14, i64 1
  store float %13, ptr %arrayidx119.peel, align 4, !tbaa !30
  %15 = load float, ptr %arrayidx115.peel, align 4, !tbaa !30
  %16 = load float, ptr @siteOriginX, align 4, !tbaa !30
  %cmp122.peel = fcmp olt float %15, %16
  br i1 %cmp122.peel, label %if.then124.peel, label %if.end127.peel

if.then124.peel:                                  ; preds = %if.end114.peel
  store float %15, ptr @siteOriginX, align 4, !tbaa !30
  br label %if.end127.peel

if.end127.peel:                                   ; preds = %if.then124.peel, %if.end114.peel
  %17 = phi float [ %15, %if.then124.peel ], [ %16, %if.end114.peel ]
  %18 = load float, ptr @siteEndX, align 4, !tbaa !30
  %cmp130.peel = fcmp ogt float %13, %18
  br i1 %cmp130.peel, label %if.then132.peel, label %for.inc.peel

if.then132.peel:                                  ; preds = %if.end127.peel
  store float %13, ptr @siteEndX, align 4, !tbaa !30
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then132.peel, %if.end127.peel
  %19 = phi float [ %13, %if.then132.peel ], [ %18, %if.end127.peel ]
  %20 = load i32, ptr @numRows, align 4, !tbaa !11
  %cmp62.not.not.peel = icmp sgt i32 %20, 1
  br i1 %cmp62.not.not.peel, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc.peel, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 2, %for.inc.peel ]
  %call65 = call ptr @fgets(ptr noundef nonnull %junk, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.body, %for.body.preheader
  call void @abort() #15
  unreachable

if.end68:                                         ; preds = %for.body
  %call69 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.19, ptr noundef nonnull %originY) #14
  %cmp70.not = icmp eq i32 %call69, 1
  br i1 %cmp70.not, label %if.end77, label %if.then72

if.then72:                                        ; preds = %if.end68, %if.end68.peel
  call void @abort() #15
  unreachable

if.end77:                                         ; preds = %if.end68
  %call78 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.20, ptr noundef nonnull @coreRowHeight) #14
  %cmp79.not = icmp eq i32 %call78, 1
  br i1 %cmp79.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end77, %if.end77.peel
  call void @abort() #15
  unreachable

if.end82:                                         ; preds = %if.end77
  %call83 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.21, ptr noundef nonnull @siteWidth) #14
  %cmp84.not = icmp eq i32 %call83, 1
  br i1 %cmp84.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end82, %if.end82.peel
  call void @abort() #15
  unreachable

if.end87:                                         ; preds = %if.end82
  %call88 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.22, ptr noundef nonnull @siteSpacing) #14
  %cmp89.not = icmp eq i32 %call88, 1
  br i1 %cmp89.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end87, %if.end87.peel
  call void @abort() #15
  unreachable

if.end92:                                         ; preds = %if.end87
  %call94 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.23, ptr noundef nonnull %siteOrient) #14
  %cmp95.not = icmp eq i32 %call94, 1
  br i1 %cmp95.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end92, %if.end92.peel
  call void @abort() #15
  unreachable

if.end98:                                         ; preds = %if.end92
  %call100 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.24, ptr noundef nonnull %siteSymmetry) #14
  %cmp101.not = icmp eq i32 %call100, 1
  br i1 %cmp101.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end98, %if.end98.peel
  call void @abort() #15
  unreachable

if.end104:                                        ; preds = %if.end98
  %call105 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.25, ptr noundef nonnull %originX, ptr noundef nonnull %totalSites) #14
  %cmp106.not = icmp eq i32 %call105, 2
  br i1 %cmp106.not, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end104, %if.end104.peel
  call void @abort() #15
  unreachable

if.end109:                                        ; preds = %if.end104
  %call111 = call ptr @fgets(ptr noundef nonnull %junk, i32 noundef 200, ptr noundef nonnull %call6)
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end109, %if.end109.peel
  call void @abort() #15
  unreachable

if.end114:                                        ; preds = %if.end109
  %21 = load float, ptr %originX, align 4, !tbaa !30
  %22 = load ptr, ptr @rowOriginX, align 8, !tbaa !15
  %arrayidx115 = getelementptr inbounds float, ptr %22, i64 %indvars.iv
  store float %21, ptr %arrayidx115, align 4, !tbaa !30
  %23 = load float, ptr %originX, align 4, !tbaa !30
  %24 = load i32, ptr %totalSites, align 4, !tbaa !11
  %conv116 = sitofp i32 %24 to float
  %25 = load float, ptr @siteSpacing, align 4, !tbaa !30
  %26 = call float @llvm.fmuladd.f32(float %conv116, float %25, float %23)
  %27 = load ptr, ptr @rowEndX, align 8, !tbaa !15
  %arrayidx119 = getelementptr inbounds float, ptr %27, i64 %indvars.iv
  store float %26, ptr %arrayidx119, align 4, !tbaa !30
  %28 = load float, ptr %arrayidx115, align 4, !tbaa !30
  %29 = load float, ptr @siteOriginX, align 4, !tbaa !30
  %cmp122 = fcmp olt float %28, %29
  br i1 %cmp122, label %if.then124, label %if.end127

if.then124:                                       ; preds = %if.end114
  store float %28, ptr @siteOriginX, align 4, !tbaa !30
  %.pre = load float, ptr %arrayidx119, align 4, !tbaa !30
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end114
  %30 = phi float [ %28, %if.then124 ], [ %29, %if.end114 ]
  %31 = phi float [ %.pre, %if.then124 ], [ %26, %if.end114 ]
  %32 = load float, ptr @siteEndX, align 4, !tbaa !30
  %cmp130 = fcmp ogt float %31, %32
  br i1 %cmp130, label %if.then132, label %for.inc

if.then132:                                       ; preds = %if.end127
  store float %31, ptr @siteEndX, align 4, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %if.end127, %if.then132
  %33 = phi float [ %32, %if.end127 ], [ %31, %if.then132 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %34 = load i32, ptr @numRows, align 4, !tbaa !11
  %35 = sext i32 %34 to i64
  %cmp62.not.not = icmp slt i64 %indvars.iv, %35
  br i1 %cmp62.not.not, label %for.body, label %for.end, !llvm.loop !49

for.end:                                          ; preds = %for.inc, %for.inc.peel, %do.end60
  %36 = phi float [ 1.000000e+06, %do.end60 ], [ %17, %for.inc.peel ], [ %30, %for.inc ]
  %37 = phi float [ -1.000000e+06, %do.end60 ], [ %19, %for.inc.peel ], [ %33, %for.inc ]
  %.lcssa = phi i32 [ %7, %do.end60 ], [ %20, %for.inc.peel ], [ %34, %for.inc ]
  %conv136 = sitofp i32 %.lcssa to float
  %38 = load float, ptr @coreRowHeight, align 4, !tbaa !30
  %39 = load float, ptr @siteOriginY, align 4, !tbaa !30
  %40 = call float @llvm.fmuladd.f32(float %conv136, float %38, float %39)
  store float %40, ptr @siteEndY, align 4, !tbaa !30
  %sub = fsub float %40, %39
  store float %sub, ptr @coreHeight, align 4, !tbaa !30
  %sub138 = fsub float %37, %36
  store float %sub138, ptr @coreWidth, align 4, !tbaa !30
  store i32 0, ptr @numRowBlockages, align 4, !tbaa !11
  %cmp140.not367 = icmp slt i32 %.lcssa, 1
  br i1 %cmp140.not367, label %for.end205, label %for.body142.lr.ph

for.body142.lr.ph:                                ; preds = %for.end
  %41 = load ptr, ptr @rowOriginX, align 8, !tbaa !15
  %42 = load ptr, ptr @xRowBlockage, align 8
  %43 = load ptr, ptr @yRowBlockage, align 8
  %44 = load ptr, ptr @widthRowBlockage, align 8
  %45 = load ptr, ptr @rowEndX, align 8, !tbaa !15
  %46 = add nuw i32 %.lcssa, 1
  %wide.trip.count = zext i32 %46 to i64
  br label %for.body142

for.body142:                                      ; preds = %for.inc203.for.body142_crit_edge, %for.body142.lr.ph
  %47 = phi float [ %36, %for.body142.lr.ph ], [ %.pre383, %for.inc203.for.body142_crit_edge ]
  %indvars.iv380 = phi i64 [ 1, %for.body142.lr.ph ], [ %indvars.iv.next381, %for.inc203.for.body142_crit_edge ]
  %inc177364368 = phi i32 [ 0, %for.body142.lr.ph ], [ %inc177365, %for.inc203.for.body142_crit_edge ]
  %arrayidx144 = getelementptr inbounds float, ptr %41, i64 %indvars.iv380
  %48 = load float, ptr %arrayidx144, align 4, !tbaa !30
  %cmp145 = fcmp ogt float %48, %47
  br i1 %cmp145, label %if.then147, label %if.end171

if.then147:                                       ; preds = %for.body142
  %inc148 = add nsw i32 %inc177364368, 1
  store i32 %inc148, ptr @numRowBlockages, align 4, !tbaa !11
  %conv149 = fpext float %47 to double
  %sub152 = fsub float %48, %47
  %conv153 = fpext float %sub152 to double
  %49 = call double @llvm.fmuladd.f64(double %conv153, double 5.000000e-01, double %conv149)
  %conv155 = fptrunc double %49 to float
  %idxprom156 = sext i32 %inc148 to i64
  %arrayidx157 = getelementptr inbounds float, ptr %42, i64 %idxprom156
  store float %conv155, ptr %arrayidx157, align 4, !tbaa !30
  %50 = load float, ptr @siteOriginY, align 4, !tbaa !30
  %conv158 = fpext float %50 to double
  %51 = trunc i64 %indvars.iv380 to i32
  %conv159 = sitofp i32 %51 to double
  %sub160 = fadd double %conv159, -5.000000e-01
  %52 = load float, ptr @coreRowHeight, align 4, !tbaa !30
  %conv161 = fpext float %52 to double
  %53 = call double @llvm.fmuladd.f64(double %sub160, double %conv161, double %conv158)
  %conv163 = fptrunc double %53 to float
  %arrayidx165 = getelementptr inbounds float, ptr %43, i64 %idxprom156
  store float %conv163, ptr %arrayidx165, align 4, !tbaa !30
  %54 = load float, ptr %arrayidx144, align 4, !tbaa !30
  %55 = load float, ptr @siteOriginX, align 4, !tbaa !30
  %sub168 = fsub float %54, %55
  %arrayidx170 = getelementptr inbounds float, ptr %44, i64 %idxprom156
  store float %sub168, ptr %arrayidx170, align 4, !tbaa !30
  br label %if.end171

if.end171:                                        ; preds = %if.then147, %for.body142
  %inc177366 = phi i32 [ %inc148, %if.then147 ], [ %inc177364368, %for.body142 ]
  %56 = load float, ptr @siteEndX, align 4, !tbaa !30
  %arrayidx173 = getelementptr inbounds float, ptr %45, i64 %indvars.iv380
  %57 = load float, ptr %arrayidx173, align 4, !tbaa !30
  %cmp174 = fcmp ogt float %56, %57
  br i1 %cmp174, label %if.then176, label %for.inc203

if.then176:                                       ; preds = %if.end171
  %inc177 = add nsw i32 %inc177366, 1
  store i32 %inc177, ptr @numRowBlockages, align 4, !tbaa !11
  %conv180 = fpext float %57 to double
  %sub183 = fsub float %56, %57
  %conv184 = fpext float %sub183 to double
  %58 = call double @llvm.fmuladd.f64(double %conv184, double 5.000000e-01, double %conv180)
  %conv186 = fptrunc double %58 to float
  %idxprom187 = sext i32 %inc177 to i64
  %arrayidx188 = getelementptr inbounds float, ptr %42, i64 %idxprom187
  store float %conv186, ptr %arrayidx188, align 4, !tbaa !30
  %59 = load float, ptr @siteOriginY, align 4, !tbaa !30
  %conv189 = fpext float %59 to double
  %60 = trunc i64 %indvars.iv380 to i32
  %conv190 = sitofp i32 %60 to double
  %sub191 = fadd double %conv190, -5.000000e-01
  %61 = load float, ptr @coreRowHeight, align 4, !tbaa !30
  %conv192 = fpext float %61 to double
  %62 = call double @llvm.fmuladd.f64(double %sub191, double %conv192, double %conv189)
  %conv194 = fptrunc double %62 to float
  %arrayidx196 = getelementptr inbounds float, ptr %43, i64 %idxprom187
  store float %conv194, ptr %arrayidx196, align 4, !tbaa !30
  %63 = load float, ptr @siteEndX, align 4, !tbaa !30
  %64 = load float, ptr %arrayidx173, align 4, !tbaa !30
  %sub199 = fsub float %63, %64
  %arrayidx201 = getelementptr inbounds float, ptr %44, i64 %idxprom187
  store float %sub199, ptr %arrayidx201, align 4, !tbaa !30
  br label %for.inc203

for.inc203:                                       ; preds = %if.end171, %if.then176
  %inc177365 = phi i32 [ %inc177366, %if.end171 ], [ %inc177, %if.then176 ]
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count
  br i1 %exitcond.not, label %for.end205, label %for.inc203.for.body142_crit_edge, !llvm.loop !51

for.inc203.for.body142_crit_edge:                 ; preds = %for.inc203
  %.pre383 = load float, ptr @siteOriginX, align 4, !tbaa !30
  br label %for.body142

for.end205:                                       ; preds = %for.inc203, %for.end
  store float 0.000000e+00, ptr @maxX, align 4, !tbaa !30
  store float 1.000000e+10, ptr @minX, align 4, !tbaa !30
  store float 0.000000e+00, ptr @maxY, align 4, !tbaa !30
  store float 1.000000e+10, ptr @minY, align 4, !tbaa !30
  %65 = load i32, ptr @numNodes, align 4, !tbaa !11
  %66 = load i32, ptr @numTerminals, align 4, !tbaa !11
  %conv209 = sext i32 %65 to i64
  %cmp210.not.not373 = icmp sgt i32 %66, 0
  br i1 %cmp210.not.not373, label %for.body212.lr.ph, label %for.end239

for.body212.lr.ph:                                ; preds = %for.end205
  %sub206 = sub nsw i32 %65, %66
  %conv207 = sext i32 %sub206 to i64
  %67 = load ptr, ptr @xCellCoord, align 8, !tbaa !15
  %68 = load ptr, ptr @yCellCoord, align 8, !tbaa !15
  br label %for.body212

for.body212:                                      ; preds = %for.body212.lr.ph, %for.inc237
  %69 = phi float [ 1.000000e+10, %for.body212.lr.ph ], [ %80, %for.inc237 ]
  %70 = phi float [ 0.000000e+00, %for.body212.lr.ph ], [ %79, %for.inc237 ]
  %71 = phi float [ 1.000000e+10, %for.body212.lr.ph ], [ %76, %for.inc237 ]
  %72 = phi float [ 0.000000e+00, %for.body212.lr.ph ], [ %75, %for.inc237 ]
  %nodeIndex.0374.in = phi i64 [ %conv207, %for.body212.lr.ph ], [ %nodeIndex.0374, %for.inc237 ]
  %nodeIndex.0374 = add nsw i64 %nodeIndex.0374.in, 1
  %arrayidx213 = getelementptr inbounds float, ptr %67, i64 %nodeIndex.0374
  %73 = load float, ptr %arrayidx213, align 4, !tbaa !30
  %cmp214 = fcmp ogt float %73, %72
  br i1 %cmp214, label %if.then216, label %if.end218

if.then216:                                       ; preds = %for.body212
  store float %73, ptr @maxX, align 4, !tbaa !30
  %.pre384 = load float, ptr %arrayidx213, align 4, !tbaa !30
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %for.body212
  %74 = phi float [ %.pre384, %if.then216 ], [ %73, %for.body212 ]
  %75 = phi float [ %73, %if.then216 ], [ %72, %for.body212 ]
  %cmp220 = fcmp olt float %74, %71
  br i1 %cmp220, label %if.then222, label %if.end224

if.then222:                                       ; preds = %if.end218
  store float %74, ptr @minX, align 4, !tbaa !30
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %if.end218
  %76 = phi float [ %74, %if.then222 ], [ %71, %if.end218 ]
  %arrayidx225 = getelementptr inbounds float, ptr %68, i64 %nodeIndex.0374
  %77 = load float, ptr %arrayidx225, align 4, !tbaa !30
  %cmp226 = fcmp ogt float %77, %70
  br i1 %cmp226, label %if.then228, label %if.end230

if.then228:                                       ; preds = %if.end224
  store float %77, ptr @maxY, align 4, !tbaa !30
  %.pre385 = load float, ptr %arrayidx225, align 4, !tbaa !30
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.end224
  %78 = phi float [ %.pre385, %if.then228 ], [ %77, %if.end224 ]
  %79 = phi float [ %77, %if.then228 ], [ %70, %if.end224 ]
  %cmp232 = fcmp olt float %78, %69
  br i1 %cmp232, label %if.then234, label %for.inc237

if.then234:                                       ; preds = %if.end230
  store float %78, ptr @minY, align 4, !tbaa !30
  br label %for.inc237

for.inc237:                                       ; preds = %if.end230, %if.then234
  %80 = phi float [ %69, %if.end230 ], [ %78, %if.then234 ]
  %cmp210.not.not = icmp slt i64 %nodeIndex.0374, %conv209
  br i1 %cmp210.not.not, label %for.body212, label %for.end239, !llvm.loop !52

for.end239:                                       ; preds = %for.inc237, %for.end205
  %81 = phi float [ 1.000000e+10, %for.end205 ], [ %80, %for.inc237 ]
  %82 = phi float [ 0.000000e+00, %for.end205 ], [ %79, %for.inc237 ]
  %83 = phi float [ 1.000000e+10, %for.end205 ], [ %76, %for.inc237 ]
  %84 = phi float [ 0.000000e+00, %for.end205 ], [ %75, %for.inc237 ]
  %conv240 = fpext float %84 to double
  %85 = load float, ptr @siteEndX, align 4, !tbaa !30
  %conv241 = fpext float %85 to double
  %add242 = fadd double %conv241, 5.000000e+00
  %cmp243 = fcmp olt double %add242, %conv240
  %86 = fptrunc double %add242 to float
  %narrow.sel = select i1 %cmp243, float %84, float %86
  store float %narrow.sel, ptr @maxX, align 4, !tbaa !30
  %conv249 = fpext float %83 to double
  %87 = load float, ptr @siteOriginX, align 4, !tbaa !30
  %conv250 = fpext float %87 to double
  %sub251 = fadd double %conv250, -5.000000e+00
  %cmp252 = fcmp ogt double %sub251, %conv249
  br i1 %cmp252, label %cond.end259, label %cond.false256

cond.false256:                                    ; preds = %for.end239
  br label %cond.end259

cond.end259:                                      ; preds = %for.end239, %cond.false256
  %cond260 = phi double [ %sub251, %cond.false256 ], [ %conv249, %for.end239 ]
  %conv261 = fptrunc double %cond260 to float
  store float %conv261, ptr @minX, align 4, !tbaa !30
  %conv262 = fpext float %82 to double
  %88 = load float, ptr @siteEndY, align 4, !tbaa !30
  %conv263 = fpext float %88 to double
  %add264 = fadd double %conv263, 5.000000e+00
  %cmp265 = fcmp olt double %add264, %conv262
  %89 = fptrunc double %add264 to float
  %narrow.sel342 = select i1 %cmp265, float %82, float %89
  store float %narrow.sel342, ptr @maxY, align 4, !tbaa !30
  %conv275 = fpext float %81 to double
  %90 = load float, ptr @siteOriginY, align 4, !tbaa !30
  %conv276 = fpext float %90 to double
  %sub277 = fadd double %conv276, -5.000000e+00
  %cmp278 = fcmp ogt double %sub277, %conv275
  br i1 %cmp278, label %cond.end285, label %cond.false282

cond.false282:                                    ; preds = %cond.end259
  br label %cond.end285

cond.end285:                                      ; preds = %cond.end259, %cond.false282
  %cond286 = phi double [ %sub277, %cond.false282 ], [ %conv275, %cond.end259 ]
  %conv287 = fptrunc double %cond286 to float
  store float %conv287, ptr @minY, align 4, !tbaa !30
  %call288 = call i32 @fclose(ptr noundef nonnull %call6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %originX) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %originY) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %totalSites) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %junk) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %siteSymmetry) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %siteOrient) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tempStr) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nounwind uwtable
define dso_local void @writePlFile(ptr nocapture noundef readonly %outputDir, ptr noundef %benchmarkName, ptr nocapture noundef readonly %xCoord, ptr nocapture noundef readonly %yCoord) local_unnamed_addr #0 {
entry:
  %tempStr = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %tempStr) #14
  %call = call ptr @strcpy(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %outputDir) #14
  %strlen = call i64 @strlen(ptr nonnull %tempStr)
  %endptr = getelementptr i8, ptr %tempStr, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %call4 = call ptr @strcat(ptr noundef nonnull %tempStr, ptr noundef nonnull dereferenceable(1) %benchmarkName) #14
  %strlen39 = call i64 @strlen(ptr nonnull %tempStr)
  %endptr40 = getelementptr i8, ptr %tempStr, i64 %strlen39
  store i64 30522642309410655, ptr %endptr40, align 1
  %call8 = call ptr @fopen(ptr noundef nonnull %tempStr, ptr noundef nonnull @.str.27)
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call10 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.28, ptr noundef nonnull %tempStr)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.29, ptr noundef nonnull %tempStr)
  %0 = call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr nonnull %call8)
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call8, ptr noundef nonnull @.str.31, ptr noundef %benchmarkName)
  %1 = load i32, ptr @numNodes, align 4, !tbaa !11
  %cmp15.not41 = icmp slt i32 %1, 1
  br i1 %cmp15.not41, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.end ]
  %2 = load ptr, ptr @cellName, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !15
  %arrayidx17 = getelementptr inbounds float, ptr %xCoord, i64 %indvars.iv
  %4 = load float, ptr %arrayidx17, align 4, !tbaa !30
  %conv = fpext float %4 to double
  %5 = load ptr, ptr @cellWidth, align 8, !tbaa !15
  %arrayidx19 = getelementptr inbounds float, ptr %5, i64 %indvars.iv
  %6 = load float, ptr %arrayidx19, align 4, !tbaa !30
  %conv20 = fpext float %6 to double
  %7 = call double @llvm.fmuladd.f64(double %conv20, double -5.000000e-01, double %conv)
  %arrayidx22 = getelementptr inbounds float, ptr %yCoord, i64 %indvars.iv
  %8 = load float, ptr %arrayidx22, align 4, !tbaa !30
  %conv23 = fpext float %8 to double
  %9 = load ptr, ptr @cellHeight, align 8, !tbaa !15
  %arrayidx25 = getelementptr inbounds float, ptr %9, i64 %indvars.iv
  %10 = load float, ptr %arrayidx25, align 4, !tbaa !30
  %conv26 = fpext float %10 to double
  %11 = call double @llvm.fmuladd.f64(double %conv26, double -5.000000e-01, double %conv23)
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call8, ptr noundef nonnull @.str.32, ptr noundef %3, double noundef %7, double noundef %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32, ptr @numNodes, align 4, !tbaa !11
  %13 = sext i32 %12 to i64
  %cmp15.not.not = icmp slt i64 %indvars.iv, %13
  br i1 %cmp15.not.not, label %for.body, label %for.end, !llvm.loop !53

for.end:                                          ; preds = %for.body, %if.end
  %call28 = call i32 @fclose(ptr noundef nonnull %call8)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %tempStr) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare double @exp2(double) local_unnamed_addr

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!22, !14, i64 32}
!22 = !{!"nodesHash", !6, i64 0, !14, i64 32}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !6, i64 0}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9, !50}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
