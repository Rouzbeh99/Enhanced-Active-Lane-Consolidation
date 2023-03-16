; ModuleID = 'NPNManager.cpp'
source_filename = "NPNManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.algorithm::NPNManager" = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_ZN9algorithm10NPNManager23rewritePracticalClassesE = dso_local local_unnamed_addr constant [136 x i16] [i16 0, i16 1, i16 3, i16 6, i16 7, i16 15, i16 22, i16 23, i16 24, i16 25, i16 27, i16 30, i16 31, i16 60, i16 61, i16 63, i16 105, i16 107, i16 111, i16 126, i16 127, i16 255, i16 278, i16 280, i16 281, i16 282, i16 283, i16 286, i16 287, i16 300, i16 301, i16 303, i16 316, i16 317, i16 318, i16 319, i16 360, i16 361, i16 367, i16 383, i16 384, i16 385, i16 386, i16 387, i16 390, i16 393, i16 395, i16 399, i16 408, i16 409, i16 411, i16 424, i16 425, i16 426, i16 427, i16 428, i16 429, i16 430, i16 431, i16 447, i16 489, i16 490, i16 491, i16 494, i16 495, i16 510, i16 828, i16 829, i16 831, i16 854, i16 855, i16 856, i16 857, i16 858, i16 859, i16 863, i16 872, i16 873, i16 876, i16 878, i16 893, i16 960, i16 961, i16 963, i16 967, i16 975, i16 980, i16 981, i16 983, i16 984, i16 985, i16 988, i16 989, i16 990, i16 1020, i16 1632, i16 1633, i16 1638, i16 1641, i16 1647, i16 1654, i16 1662, i16 1680, i16 1686, i16 1687, i16 1695, i16 1713, i16 1718, i16 1776, i16 1778, i16 1782, i16 1785, i16 1910, i16 1912, i16 1968, i16 1969, i16 1972, i16 1980, i16 2032, i16 2034, i16 2040, i16 4080, i16 5763, i16 5782, i16 5784, i16 5790, i16 5865, i16 6030, i16 6120, i16 6375, i16 6630, i16 7140, i16 7905, i16 15555, i16 27030, i16 0], align 16
@.str = private unnamed_addr constant [24 x i8] c"uTruth > canons[uTruth]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NPNManager.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN9algorithm10NPNManagerC2Ev = private unnamed_addr constant [36 x i8] c"algorithm::NPNManager::NPNManager()\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"canons[uPerm] == uTruth\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nClasses == 222\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nVars < 6\00", align 1
@__PRETTY_FUNCTION__._ZN9algorithm10NPNManager12truthPermuteEjPcii = private unnamed_addr constant [81 x i8] c"unsigned int algorithm::NPNManager::truthPermute(unsigned int, char *, int, int)\00", align 1
@__PRETTY_FUNCTION__._ZN9algorithm10NPNManager13truthPolarizeEjii = private unnamed_addr constant [74 x i8] c"unsigned int algorithm::NPNManager::truthPolarize(unsigned int, int, int)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"nCols > 0 && nRows > 0 && Size > 0\00", align 1
@__PRETTY_FUNCTION__._ZN9algorithm10NPNManager10arrayAllocEiii = private unnamed_addr constant [56 x i8] c"void **algorithm::NPNManager::arrayAlloc(int, int, int)\00", align 1

@_ZN9algorithm10NPNManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9algorithm10NPNManagerC2Ev
@_ZN9algorithm10NPNManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9algorithm10NPNManagerD2Ev

; Function Attrs: nounwind uwtable
define dso_local void @_ZN9algorithm10NPNManagerC2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(64) %this) unnamed_addr #0 align 2 {
for.body.preheader.i:
  %Array.i = alloca [50 x i8], align 16
  store i32 65536, ptr %this, align 8, !tbaa !5
  %calloc345 = call dereferenceable_or_null(131072) ptr @calloc(i64 1, i64 131072)
  %canons = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 5
  store ptr %calloc345, ptr %canons, align 8, !tbaa !11
  %calloc346 = call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536)
  %phases = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 1
  store ptr %calloc346, ptr %phases, align 8, !tbaa !12
  %calloc347 = call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536)
  %perms = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 2
  store ptr %calloc347, ptr %perms, align 8, !tbaa !13
  %calloc348 = call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536)
  %map = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 3
  store ptr %calloc348, ptr %map, align 8, !tbaa !14
  %calloc349 = call dereferenceable_or_null(444) ptr @calloc(i64 1, i64 444)
  %mapInv = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 4
  store ptr %calloc349, ptr %mapInv, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %Array.i) #16
  %call.i.i = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #17
  %0 = insertelement <2 x ptr> poison, ptr %call.i.i, i64 0
  %1 = shufflevector <2 x ptr> %0, <2 x ptr> poison, <2 x i32> zeroinitializer
  %2 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 192, i64 196>
  store <2 x ptr> %2, ptr %call.i.i, align 8, !tbaa !16
  %arrayidx14.i.i.1 = getelementptr inbounds ptr, ptr %call.i.i, i64 2
  %3 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 200, i64 204>
  store <2 x ptr> %3, ptr %arrayidx14.i.i.1, align 8, !tbaa !16
  %arrayidx14.i.i.3 = getelementptr inbounds ptr, ptr %call.i.i, i64 4
  %4 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 208, i64 212>
  store <2 x ptr> %4, ptr %arrayidx14.i.i.3, align 8, !tbaa !16
  %arrayidx14.i.i.5 = getelementptr inbounds ptr, ptr %call.i.i, i64 6
  %5 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 216, i64 220>
  store <2 x ptr> %5, ptr %arrayidx14.i.i.5, align 8, !tbaa !16
  %arrayidx14.i.i.7 = getelementptr inbounds ptr, ptr %call.i.i, i64 8
  %6 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 224, i64 228>
  store <2 x ptr> %6, ptr %arrayidx14.i.i.7, align 8, !tbaa !16
  %arrayidx14.i.i.9 = getelementptr inbounds ptr, ptr %call.i.i, i64 10
  %7 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 232, i64 236>
  store <2 x ptr> %7, ptr %arrayidx14.i.i.9, align 8, !tbaa !16
  %arrayidx14.i.i.11 = getelementptr inbounds ptr, ptr %call.i.i, i64 12
  %8 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 240, i64 244>
  store <2 x ptr> %8, ptr %arrayidx14.i.i.11, align 8, !tbaa !16
  %arrayidx14.i.i.13 = getelementptr inbounds ptr, ptr %call.i.i, i64 14
  %9 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 248, i64 252>
  store <2 x ptr> %9, ptr %arrayidx14.i.i.13, align 8, !tbaa !16
  %arrayidx14.i.i.15 = getelementptr inbounds ptr, ptr %call.i.i, i64 16
  %10 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 256, i64 260>
  store <2 x ptr> %10, ptr %arrayidx14.i.i.15, align 8, !tbaa !16
  %arrayidx14.i.i.17 = getelementptr inbounds ptr, ptr %call.i.i, i64 18
  %11 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 264, i64 268>
  store <2 x ptr> %11, ptr %arrayidx14.i.i.17, align 8, !tbaa !16
  %arrayidx14.i.i.19 = getelementptr inbounds ptr, ptr %call.i.i, i64 20
  %12 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 272, i64 276>
  store <2 x ptr> %12, ptr %arrayidx14.i.i.19, align 8, !tbaa !16
  %arrayidx14.i.i.21 = getelementptr inbounds ptr, ptr %call.i.i, i64 22
  %13 = getelementptr i8, <2 x ptr> %1, <2 x i64> <i64 280, i64 284>
  store <2 x ptr> %13, ptr %arrayidx14.i.i.21, align 8, !tbaa !16
  store i8 0, ptr %Array.i, align 16, !tbaa !17
  %arrayidx.i.1 = getelementptr inbounds [50 x i8], ptr %Array.i, i64 0, i64 1
  store i8 1, ptr %arrayidx.i.1, align 1, !tbaa !17
  %arrayidx.i.2 = getelementptr inbounds [50 x i8], ptr %Array.i, i64 0, i64 2
  store i8 2, ptr %arrayidx.i.2, align 2, !tbaa !17
  %arrayidx.i.3 = getelementptr inbounds [50 x i8], ptr %Array.i, i64 0, i64 3
  store i8 3, ptr %arrayidx.i.3, align 1, !tbaa !17
  call void @_ZN9algorithm10NPNManager18getPermutationsRecEPPciiS1_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef nonnull %call.i.i, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %Array.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %Array.i) #16
  %perms4 = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 6
  store ptr %call.i.i, ptr %perms4, align 8, !tbaa !18
  %calloc350 = call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536)
  %practical = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 7
  store ptr %calloc350, ptr %practical, align 8, !tbaa !19
  store i8 1, ptr %calloc350, align 1, !tbaa !17
  %arrayidx7.i352 = getelementptr inbounds i8, ptr %calloc350, i64 1
  store i8 1, ptr %arrayidx7.i352, align 1, !tbaa !17
  br label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i.if.end.i_crit_edge.1, %for.body.preheader.i
  %indvars.iv.next.i238353 = phi i64 [ 2, %for.body.preheader.i ], [ %indvars.iv.next.i238.3, %if.end.i.if.end.i_crit_edge.1 ]
  %.pre = load ptr, ptr %practical, align 8, !tbaa !19
  %arrayidx2.i = getelementptr inbounds [136 x i16], ptr @_ZN9algorithm10NPNManager23rewritePracticalClassesE, i64 0, i64 %indvars.iv.next.i238353
  %14 = load i16, ptr %arrayidx2.i, align 4, !tbaa !20
  %idxprom6.i = zext i16 %14 to i64
  %arrayidx7.i = getelementptr inbounds i8, ptr %.pre, i64 %idxprom6.i
  store i8 1, ptr %arrayidx7.i, align 1, !tbaa !17
  %indvars.iv.next.i238 = or i64 %indvars.iv.next.i238353, 1
  %15 = icmp eq i64 %indvars.iv.next.i238, 135
  br i1 %15, label %for.body, label %if.end.i.if.end.i_crit_edge.1, !llvm.loop !22

if.end.i.if.end.i_crit_edge.1:                    ; preds = %if.end.i.if.end.i_crit_edge
  %.pre.1 = load ptr, ptr %practical, align 8, !tbaa !19
  %arrayidx2.i.1 = getelementptr inbounds [136 x i16], ptr @_ZN9algorithm10NPNManager23rewritePracticalClassesE, i64 0, i64 %indvars.iv.next.i238
  %16 = load i16, ptr %arrayidx2.i.1, align 2, !tbaa !20
  %idxprom6.i.1 = zext i16 %16 to i64
  %arrayidx7.i.1 = getelementptr inbounds i8, ptr %.pre.1, i64 %idxprom6.i.1
  store i8 1, ptr %arrayidx7.i.1, align 1, !tbaa !17
  %indvars.iv.next.i238.1 = add nuw nsw i64 %indvars.iv.next.i238353, 2
  %.pre.2 = load ptr, ptr %practical, align 8, !tbaa !19
  %arrayidx2.i.2 = getelementptr inbounds [136 x i16], ptr @_ZN9algorithm10NPNManager23rewritePracticalClassesE, i64 0, i64 %indvars.iv.next.i238.1
  %17 = load i16, ptr %arrayidx2.i.2, align 4, !tbaa !20
  %idxprom6.i.2 = zext i16 %17 to i64
  %arrayidx7.i.2 = getelementptr inbounds i8, ptr %.pre.2, i64 %idxprom6.i.2
  store i8 1, ptr %arrayidx7.i.2, align 1, !tbaa !17
  %indvars.iv.next.i238.2 = add nuw nsw i64 %indvars.iv.next.i238353, 3
  %.pre.3 = load ptr, ptr %practical, align 8, !tbaa !19
  %arrayidx2.i.3 = getelementptr inbounds [136 x i16], ptr @_ZN9algorithm10NPNManager23rewritePracticalClassesE, i64 0, i64 %indvars.iv.next.i238.2
  %18 = load i16, ptr %arrayidx2.i.3, align 2, !tbaa !20
  %idxprom6.i.3 = zext i16 %18 to i64
  %arrayidx7.i.3 = getelementptr inbounds i8, ptr %.pre.3, i64 %idxprom6.i.3
  store i8 1, ptr %arrayidx7.i.3, align 1, !tbaa !17
  %indvars.iv.next.i238.3 = add nuw nsw i64 %indvars.iv.next.i238353, 4
  br label %if.end.i.if.end.i_crit_edge

for.body:                                         ; preds = %if.end.i.if.end.i_crit_edge, %for.inc167
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %for.inc167 ], [ 1, %if.end.i.if.end.i_crit_edge ]
  %nClasses.0330 = phi i32 [ %nClasses.1, %for.inc167 ], [ 1, %if.end.i.if.end.i_crit_edge ]
  %indvars340 = trunc i64 %indvars.iv337 to i32
  %19 = load ptr, ptr %canons, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i16, ptr %19, i64 %indvars.iv337
  %20 = load i16, ptr %arrayidx, align 2, !tbaa !20
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %21 = zext i16 %20 to i64
  %cmp38 = icmp ugt i64 %indvars.iv337, %21
  br i1 %cmp38, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManagerC2Ev) #18
  unreachable

cond.end:                                         ; preds = %if.then
  %22 = load ptr, ptr %map, align 8, !tbaa !14
  %idxprom43 = zext i16 %20 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %22, i64 %idxprom43
  %23 = load i8, ptr %arrayidx44, align 1, !tbaa !17
  %arrayidx47 = getelementptr inbounds i8, ptr %22, i64 %indvars.iv337
  store i8 %23, ptr %arrayidx47, align 1, !tbaa !17
  %24 = load ptr, ptr %map, align 8, !tbaa !14
  %and = and i64 %indvars.iv337, 4294967295
  %idxprom49 = xor i64 %and, 65535
  %arrayidx50 = getelementptr inbounds i8, ptr %24, i64 %idxprom49
  store i8 %23, ptr %arrayidx50, align 1, !tbaa !17
  br label %for.inc167

if.end:                                           ; preds = %for.body
  %inc = add nsw i32 %nClasses.0330, 1
  %conv51 = trunc i32 %nClasses.0330 to i8
  %25 = load ptr, ptr %map, align 8, !tbaa !14
  %arrayidx54 = getelementptr inbounds i8, ptr %25, i64 %indvars.iv337
  store i8 %conv51, ptr %arrayidx54, align 1, !tbaa !17
  %conv72 = trunc i64 %indvars.iv337 to i16
  %and109 = xor i32 %indvars340, 65535
  %and3.i = shl i32 %indvars340, 1
  %shl8.i = and i32 %and3.i, -1431655766
  %and6.i = lshr i32 %indvars340, 1
  %shr.i = and i32 %and6.i, 1431655765
  %or.i = or i32 %shl8.i, %shr.i
  %and3.i263 = shl i32 %and109, 1
  %shl8.i265 = and i32 %and3.i263, -1431655766
  %and6.i264 = lshr i32 %and109, 1
  %shr.i266 = and i32 %and6.i264, 1431655765
  %or.i267 = or i32 %shl8.i265, %shr.i266
  br label %for.body.i241.preheader

for.body.i241.preheader:                          ; preds = %if.end, %for.inc164
  %i.0327 = phi i32 [ 0, %if.end ], [ %inc165, %for.inc164 ]
  %and.i = and i32 %i.0327, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.not.i, i32 %indvars340, i32 %or.i
  %and.i.1 = and i32 %i.0327, 2
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %for.body.i241.preheader
  %and3.i.1 = shl i32 %spec.select, 2
  %shl8.i.1 = and i32 %and3.i.1, -858993460
  %and6.i.1 = lshr i32 %spec.select, 2
  %shr.i.1 = and i32 %and6.i.1, 858993459
  %or.i.1 = or i32 %shl8.i.1, %shr.i.1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.body.i241.preheader
  %uTruth.addr.1.i.1 = phi i32 [ %or.i.1, %if.then.i.1 ], [ %spec.select, %for.body.i241.preheader ]
  %and.i.2 = and i32 %i.0327, 4
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  %and3.i.2 = shl i32 %uTruth.addr.1.i.1, 4
  %shl8.i.2 = and i32 %and3.i.2, -252645136
  %and6.i.2 = lshr i32 %uTruth.addr.1.i.1, 4
  %shr.i.2 = and i32 %and6.i.2, 252645135
  %or.i.2 = or i32 %shl8.i.2, %shr.i.2
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.inc.i.1
  %uTruth.addr.1.i.2 = phi i32 [ %or.i.2, %if.then.i.2 ], [ %uTruth.addr.1.i.1, %for.inc.i.1 ]
  %and.i.3 = and i32 %i.0327, 8
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3, label %if.then.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  %and3.i.3 = shl i32 %uTruth.addr.1.i.2, 8
  %shl8.i.3 = and i32 %and3.i.3, -16711936
  %and6.i.3 = lshr i32 %uTruth.addr.1.i.2, 8
  %shr.i.3 = and i32 %and6.i.3, 16711935
  %or.i.3 = or i32 %shl8.i.3, %shr.i.3
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.3, %for.inc.i.2
  %uTruth.addr.1.i.3 = phi i32 [ %or.i.3, %if.then.i.3 ], [ %uTruth.addr.1.i.2, %for.inc.i.2 ]
  %conv76 = trunc i32 %i.0327 to i8
  %conv90 = or i8 %conv76, 16
  %26 = insertelement <16 x i32> poison, i32 %uTruth.addr.1.i.3, i64 0
  %shuffle354 = shufflevector <16 x i32> %26, <16 x i32> poison, <16 x i32> zeroinitializer
  %27 = and <16 x i32> %shuffle354, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %28 = icmp eq <16 x i32> %27, zeroinitializer
  %29 = extractelement <16 x i1> %28, i64 15
  %30 = extractelement <16 x i1> %28, i64 14
  %31 = extractelement <16 x i1> %28, i64 13
  %32 = extractelement <16 x i1> %28, i64 12
  %33 = extractelement <16 x i1> %28, i64 11
  %34 = extractelement <16 x i1> %28, i64 10
  %35 = extractelement <16 x i1> %28, i64 9
  %36 = extractelement <16 x i1> %28, i64 8
  %37 = extractelement <16 x i1> %28, i64 7
  %38 = extractelement <16 x i1> %28, i64 6
  %39 = extractelement <16 x i1> %28, i64 5
  %40 = extractelement <16 x i1> %28, i64 4
  %41 = extractelement <16 x i1> %28, i64 3
  %42 = extractelement <16 x i1> %28, i64 2
  %43 = extractelement <16 x i1> %28, i64 1
  %44 = extractelement <16 x i1> %28, i64 0
  br label %for.body61

for.body61:                                       ; preds = %for.inc.i.3, %for.inc
  %indvars.iv = phi i64 [ 0, %for.inc.i.3 ], [ %indvars.iv.next, %for.inc ]
  %45 = load ptr, ptr %perms4, align 8, !tbaa !18
  %arrayidx64 = getelementptr inbounds ptr, ptr %45, i64 %indvars.iv
  %46 = load ptr, ptr %arrayidx64, align 8, !tbaa !16
  %call.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  %calloc344 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64)
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %call.i, align 4, !tbaa !24
  %arrayidx.i247.4 = getelementptr inbounds i32, ptr %call.i, i64 4
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %arrayidx.i247.4, align 4, !tbaa !24
  %arrayidx.i247.8 = getelementptr inbounds i32, ptr %call.i, i64 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %arrayidx.i247.8, align 4, !tbaa !24
  %arrayidx.i247.12 = getelementptr inbounds i32, ptr %call.i, i64 12
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %arrayidx.i247.12, align 4, !tbaa !24
  %arrayidx6.us.i.i.1 = getelementptr inbounds i8, ptr %46, i64 1
  %arrayidx6.us.i.i.2 = getelementptr inbounds i8, ptr %46, i64 2
  %arrayidx6.us.i.i.3 = getelementptr inbounds i8, ptr %46, i64 3
  br label %for.cond2.preheader.us.i.i

for.cond2.preheader.us.i.i:                       ; preds = %for.inc.us.i.i.3.for.cond2.preheader.us.i.i_crit_edge, %for.body61
  %47 = phi i32 [ 0, %for.body61 ], [ %.pre342, %for.inc.us.i.i.3.for.cond2.preheader.us.i.i_crit_edge ]
  %indvars.iv31.i.i = phi i64 [ 0, %for.body61 ], [ %indvars.iv.next32.i.i, %for.inc.us.i.i.3.for.cond2.preheader.us.i.i_crit_edge ]
  %arrayidx10.us.i.i = getelementptr inbounds i32, ptr %calloc344, i64 %indvars.iv31.i.i
  %and.us.i.i = and i32 %47, 1
  %tobool.not.us.i.i = icmp eq i32 %and.us.i.i, 0
  br i1 %tobool.not.us.i.i, label %for.inc.us.i.i, label %if.then.us.i.i

if.then.us.i.i:                                   ; preds = %for.cond2.preheader.us.i.i
  %48 = load i8, ptr %46, align 1, !tbaa !17
  %conv722.us.i.i = zext i8 %48 to i32
  %shl8.us.i.i = shl nuw i32 1, %conv722.us.i.i
  %49 = load i32, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  %or.us.i.i = or i32 %shl8.us.i.i, %49
  store i32 %or.us.i.i, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  br label %for.inc.us.i.i

for.inc.us.i.i:                                   ; preds = %if.then.us.i.i, %for.cond2.preheader.us.i.i
  %and.us.i.i.1 = and i32 %47, 2
  %tobool.not.us.i.i.1 = icmp eq i32 %and.us.i.i.1, 0
  br i1 %tobool.not.us.i.i.1, label %for.inc.us.i.i.1, label %if.then.us.i.i.1

if.then.us.i.i.1:                                 ; preds = %for.inc.us.i.i
  %50 = load i8, ptr %arrayidx6.us.i.i.1, align 1, !tbaa !17
  %conv722.us.i.i.1 = zext i8 %50 to i32
  %shl8.us.i.i.1 = shl nuw i32 1, %conv722.us.i.i.1
  %51 = load i32, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  %or.us.i.i.1 = or i32 %shl8.us.i.i.1, %51
  store i32 %or.us.i.i.1, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  br label %for.inc.us.i.i.1

for.inc.us.i.i.1:                                 ; preds = %if.then.us.i.i.1, %for.inc.us.i.i
  %and.us.i.i.2 = and i32 %47, 4
  %tobool.not.us.i.i.2 = icmp eq i32 %and.us.i.i.2, 0
  br i1 %tobool.not.us.i.i.2, label %for.inc.us.i.i.2, label %if.then.us.i.i.2

if.then.us.i.i.2:                                 ; preds = %for.inc.us.i.i.1
  %52 = load i8, ptr %arrayidx6.us.i.i.2, align 1, !tbaa !17
  %conv722.us.i.i.2 = zext i8 %52 to i32
  %shl8.us.i.i.2 = shl nuw i32 1, %conv722.us.i.i.2
  %53 = load i32, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  %or.us.i.i.2 = or i32 %shl8.us.i.i.2, %53
  store i32 %or.us.i.i.2, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  br label %for.inc.us.i.i.2

for.inc.us.i.i.2:                                 ; preds = %if.then.us.i.i.2, %for.inc.us.i.i.1
  %and.us.i.i.3 = and i32 %47, 8
  %tobool.not.us.i.i.3 = icmp eq i32 %and.us.i.i.3, 0
  br i1 %tobool.not.us.i.i.3, label %for.inc.us.i.i.3, label %if.then.us.i.i.3

if.then.us.i.i.3:                                 ; preds = %for.inc.us.i.i.2
  %54 = load i8, ptr %arrayidx6.us.i.i.3, align 1, !tbaa !17
  %conv722.us.i.i.3 = zext i8 %54 to i32
  %shl8.us.i.i.3 = shl nuw i32 1, %conv722.us.i.i.3
  %55 = load i32, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  %or.us.i.i.3 = or i32 %shl8.us.i.i.3, %55
  store i32 %or.us.i.i.3, ptr %arrayidx10.us.i.i, align 4, !tbaa !24
  br label %for.inc.us.i.i.3

for.inc.us.i.i.3:                                 ; preds = %if.then.us.i.i.3, %for.inc.us.i.i.2
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1
  %exitcond35.not.i.i = icmp eq i64 %indvars.iv.next32.i.i, 16
  br i1 %exitcond35.not.i.i, label %for.body20.i.preheader, label %for.inc.us.i.i.3.for.cond2.preheader.us.i.i_crit_edge, !llvm.loop !25

for.inc.us.i.i.3.for.cond2.preheader.us.i.i_crit_edge: ; preds = %for.inc.us.i.i.3
  %arrayidx.us.i.i.phi.trans.insert = getelementptr inbounds i32, ptr %call.i, i64 %indvars.iv.next32.i.i
  %.pre342 = load i32, ptr %arrayidx.us.i.i.phi.trans.insert, align 4, !tbaa !24
  br label %for.cond2.preheader.us.i.i

for.body20.i.preheader:                           ; preds = %for.inc.us.i.i.3
  br i1 %29, label %for.inc30.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body20.i.preheader
  %56 = load i32, ptr %calloc344, align 4, !tbaa !24
  %shl27.i = shl nuw i32 1, %56
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.then24.i, %for.body20.i.preheader
  %Result.3.i = phi i32 [ %shl27.i, %if.then24.i ], [ 0, %for.body20.i.preheader ]
  br i1 %30, label %for.inc30.i.1, label %if.then24.i.1

if.then24.i.1:                                    ; preds = %for.inc30.i
  %arrayidx26.i.1 = getelementptr inbounds i32, ptr %calloc344, i64 1
  %57 = load i32, ptr %arrayidx26.i.1, align 4, !tbaa !24
  %shl27.i.1 = shl nuw i32 1, %57
  %or28.i.1 = or i32 %shl27.i.1, %Result.3.i
  br label %for.inc30.i.1

for.inc30.i.1:                                    ; preds = %if.then24.i.1, %for.inc30.i
  %Result.3.i.1 = phi i32 [ %or28.i.1, %if.then24.i.1 ], [ %Result.3.i, %for.inc30.i ]
  br i1 %31, label %for.inc30.i.2, label %if.then24.i.2

if.then24.i.2:                                    ; preds = %for.inc30.i.1
  %arrayidx26.i.2 = getelementptr inbounds i32, ptr %calloc344, i64 2
  %58 = load i32, ptr %arrayidx26.i.2, align 4, !tbaa !24
  %shl27.i.2 = shl nuw i32 1, %58
  %or28.i.2 = or i32 %shl27.i.2, %Result.3.i.1
  br label %for.inc30.i.2

for.inc30.i.2:                                    ; preds = %if.then24.i.2, %for.inc30.i.1
  %Result.3.i.2 = phi i32 [ %or28.i.2, %if.then24.i.2 ], [ %Result.3.i.1, %for.inc30.i.1 ]
  br i1 %32, label %for.inc30.i.3, label %if.then24.i.3

if.then24.i.3:                                    ; preds = %for.inc30.i.2
  %arrayidx26.i.3 = getelementptr inbounds i32, ptr %calloc344, i64 3
  %59 = load i32, ptr %arrayidx26.i.3, align 4, !tbaa !24
  %shl27.i.3 = shl nuw i32 1, %59
  %or28.i.3 = or i32 %shl27.i.3, %Result.3.i.2
  br label %for.inc30.i.3

for.inc30.i.3:                                    ; preds = %if.then24.i.3, %for.inc30.i.2
  %Result.3.i.3 = phi i32 [ %or28.i.3, %if.then24.i.3 ], [ %Result.3.i.2, %for.inc30.i.2 ]
  br i1 %33, label %for.inc30.i.4, label %if.then24.i.4

if.then24.i.4:                                    ; preds = %for.inc30.i.3
  %arrayidx26.i.4 = getelementptr inbounds i32, ptr %calloc344, i64 4
  %60 = load i32, ptr %arrayidx26.i.4, align 4, !tbaa !24
  %shl27.i.4 = shl nuw i32 1, %60
  %or28.i.4 = or i32 %shl27.i.4, %Result.3.i.3
  br label %for.inc30.i.4

for.inc30.i.4:                                    ; preds = %if.then24.i.4, %for.inc30.i.3
  %Result.3.i.4 = phi i32 [ %or28.i.4, %if.then24.i.4 ], [ %Result.3.i.3, %for.inc30.i.3 ]
  br i1 %34, label %for.inc30.i.5, label %if.then24.i.5

if.then24.i.5:                                    ; preds = %for.inc30.i.4
  %arrayidx26.i.5 = getelementptr inbounds i32, ptr %calloc344, i64 5
  %61 = load i32, ptr %arrayidx26.i.5, align 4, !tbaa !24
  %shl27.i.5 = shl nuw i32 1, %61
  %or28.i.5 = or i32 %shl27.i.5, %Result.3.i.4
  br label %for.inc30.i.5

for.inc30.i.5:                                    ; preds = %if.then24.i.5, %for.inc30.i.4
  %Result.3.i.5 = phi i32 [ %or28.i.5, %if.then24.i.5 ], [ %Result.3.i.4, %for.inc30.i.4 ]
  br i1 %35, label %for.inc30.i.6, label %if.then24.i.6

if.then24.i.6:                                    ; preds = %for.inc30.i.5
  %arrayidx26.i.6 = getelementptr inbounds i32, ptr %calloc344, i64 6
  %62 = load i32, ptr %arrayidx26.i.6, align 4, !tbaa !24
  %shl27.i.6 = shl nuw i32 1, %62
  %or28.i.6 = or i32 %shl27.i.6, %Result.3.i.5
  br label %for.inc30.i.6

for.inc30.i.6:                                    ; preds = %if.then24.i.6, %for.inc30.i.5
  %Result.3.i.6 = phi i32 [ %or28.i.6, %if.then24.i.6 ], [ %Result.3.i.5, %for.inc30.i.5 ]
  br i1 %36, label %for.inc30.i.7, label %if.then24.i.7

if.then24.i.7:                                    ; preds = %for.inc30.i.6
  %arrayidx26.i.7 = getelementptr inbounds i32, ptr %calloc344, i64 7
  %63 = load i32, ptr %arrayidx26.i.7, align 4, !tbaa !24
  %shl27.i.7 = shl nuw i32 1, %63
  %or28.i.7 = or i32 %shl27.i.7, %Result.3.i.6
  br label %for.inc30.i.7

for.inc30.i.7:                                    ; preds = %if.then24.i.7, %for.inc30.i.6
  %Result.3.i.7 = phi i32 [ %or28.i.7, %if.then24.i.7 ], [ %Result.3.i.6, %for.inc30.i.6 ]
  br i1 %37, label %for.inc30.i.8, label %if.then24.i.8

if.then24.i.8:                                    ; preds = %for.inc30.i.7
  %arrayidx26.i.8 = getelementptr inbounds i32, ptr %calloc344, i64 8
  %64 = load i32, ptr %arrayidx26.i.8, align 4, !tbaa !24
  %shl27.i.8 = shl nuw i32 1, %64
  %or28.i.8 = or i32 %shl27.i.8, %Result.3.i.7
  br label %for.inc30.i.8

for.inc30.i.8:                                    ; preds = %if.then24.i.8, %for.inc30.i.7
  %Result.3.i.8 = phi i32 [ %or28.i.8, %if.then24.i.8 ], [ %Result.3.i.7, %for.inc30.i.7 ]
  br i1 %38, label %for.inc30.i.9, label %if.then24.i.9

if.then24.i.9:                                    ; preds = %for.inc30.i.8
  %arrayidx26.i.9 = getelementptr inbounds i32, ptr %calloc344, i64 9
  %65 = load i32, ptr %arrayidx26.i.9, align 4, !tbaa !24
  %shl27.i.9 = shl nuw i32 1, %65
  %or28.i.9 = or i32 %shl27.i.9, %Result.3.i.8
  br label %for.inc30.i.9

for.inc30.i.9:                                    ; preds = %if.then24.i.9, %for.inc30.i.8
  %Result.3.i.9 = phi i32 [ %or28.i.9, %if.then24.i.9 ], [ %Result.3.i.8, %for.inc30.i.8 ]
  br i1 %39, label %for.inc30.i.10, label %if.then24.i.10

if.then24.i.10:                                   ; preds = %for.inc30.i.9
  %arrayidx26.i.10 = getelementptr inbounds i32, ptr %calloc344, i64 10
  %66 = load i32, ptr %arrayidx26.i.10, align 4, !tbaa !24
  %shl27.i.10 = shl nuw i32 1, %66
  %or28.i.10 = or i32 %shl27.i.10, %Result.3.i.9
  br label %for.inc30.i.10

for.inc30.i.10:                                   ; preds = %if.then24.i.10, %for.inc30.i.9
  %Result.3.i.10 = phi i32 [ %or28.i.10, %if.then24.i.10 ], [ %Result.3.i.9, %for.inc30.i.9 ]
  br i1 %40, label %for.inc30.i.11, label %if.then24.i.11

if.then24.i.11:                                   ; preds = %for.inc30.i.10
  %arrayidx26.i.11 = getelementptr inbounds i32, ptr %calloc344, i64 11
  %67 = load i32, ptr %arrayidx26.i.11, align 4, !tbaa !24
  %shl27.i.11 = shl nuw i32 1, %67
  %or28.i.11 = or i32 %shl27.i.11, %Result.3.i.10
  br label %for.inc30.i.11

for.inc30.i.11:                                   ; preds = %if.then24.i.11, %for.inc30.i.10
  %Result.3.i.11 = phi i32 [ %or28.i.11, %if.then24.i.11 ], [ %Result.3.i.10, %for.inc30.i.10 ]
  br i1 %41, label %for.inc30.i.12, label %if.then24.i.12

if.then24.i.12:                                   ; preds = %for.inc30.i.11
  %arrayidx26.i.12 = getelementptr inbounds i32, ptr %calloc344, i64 12
  %68 = load i32, ptr %arrayidx26.i.12, align 4, !tbaa !24
  %shl27.i.12 = shl nuw i32 1, %68
  %or28.i.12 = or i32 %shl27.i.12, %Result.3.i.11
  br label %for.inc30.i.12

for.inc30.i.12:                                   ; preds = %if.then24.i.12, %for.inc30.i.11
  %Result.3.i.12 = phi i32 [ %or28.i.12, %if.then24.i.12 ], [ %Result.3.i.11, %for.inc30.i.11 ]
  br i1 %42, label %for.inc30.i.13, label %if.then24.i.13

if.then24.i.13:                                   ; preds = %for.inc30.i.12
  %arrayidx26.i.13 = getelementptr inbounds i32, ptr %calloc344, i64 13
  %69 = load i32, ptr %arrayidx26.i.13, align 4, !tbaa !24
  %shl27.i.13 = shl nuw i32 1, %69
  %or28.i.13 = or i32 %shl27.i.13, %Result.3.i.12
  br label %for.inc30.i.13

for.inc30.i.13:                                   ; preds = %if.then24.i.13, %for.inc30.i.12
  %Result.3.i.13 = phi i32 [ %or28.i.13, %if.then24.i.13 ], [ %Result.3.i.12, %for.inc30.i.12 ]
  br i1 %43, label %for.inc30.i.14, label %if.then24.i.14

if.then24.i.14:                                   ; preds = %for.inc30.i.13
  %arrayidx26.i.14 = getelementptr inbounds i32, ptr %calloc344, i64 14
  %70 = load i32, ptr %arrayidx26.i.14, align 4, !tbaa !24
  %shl27.i.14 = shl nuw i32 1, %70
  %or28.i.14 = or i32 %shl27.i.14, %Result.3.i.13
  br label %for.inc30.i.14

for.inc30.i.14:                                   ; preds = %if.then24.i.14, %for.inc30.i.13
  %Result.3.i.14 = phi i32 [ %or28.i.14, %if.then24.i.14 ], [ %Result.3.i.13, %for.inc30.i.13 ]
  br i1 %44, label %for.inc30.i.15, label %if.then24.i.15

if.then24.i.15:                                   ; preds = %for.inc30.i.14
  %arrayidx26.i.15 = getelementptr inbounds i32, ptr %calloc344, i64 15
  %71 = load i32, ptr %arrayidx26.i.15, align 4, !tbaa !24
  %shl27.i.15 = shl nuw i32 1, %71
  %or28.i.15 = or i32 %shl27.i.15, %Result.3.i.14
  br label %for.inc30.i.15

for.inc30.i.15:                                   ; preds = %if.then24.i.15, %for.inc30.i.14
  %Result.3.i.15 = phi i32 [ %or28.i.15, %if.then24.i.15 ], [ %Result.3.i.14, %for.inc30.i.14 ]
  tail call void @free(ptr noundef nonnull %call.i) #16
  tail call void @free(ptr noundef %calloc344) #16
  %72 = load ptr, ptr %canons, align 8, !tbaa !11
  %idxprom67 = zext i32 %Result.3.i.15 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %72, i64 %idxprom67
  %73 = load i16, ptr %arrayidx68, align 2, !tbaa !20
  %cmp70 = icmp eq i16 %73, 0
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.inc30.i.15
  store i16 %conv72, ptr %arrayidx68, align 2, !tbaa !20
  %74 = load ptr, ptr %phases, align 8, !tbaa !12
  %arrayidx79 = getelementptr inbounds i8, ptr %74, i64 %idxprom67
  store i8 %conv76, ptr %arrayidx79, align 1, !tbaa !17
  %conv80 = trunc i64 %indvars.iv to i8
  %75 = load ptr, ptr %perms, align 8, !tbaa !13
  %arrayidx83 = getelementptr inbounds i8, ptr %75, i64 %idxprom67
  store i8 %conv80, ptr %arrayidx83, align 1, !tbaa !17
  %neg84 = and i32 %Result.3.i.15, 65535
  %and85 = xor i32 %neg84, 65535
  %76 = load ptr, ptr %canons, align 8, !tbaa !11
  %idxprom88 = zext i32 %and85 to i64
  %arrayidx89 = getelementptr inbounds i16, ptr %76, i64 %idxprom88
  store i16 %conv72, ptr %arrayidx89, align 2, !tbaa !20
  %77 = load ptr, ptr %phases, align 8, !tbaa !12
  %arrayidx93 = getelementptr inbounds i8, ptr %77, i64 %idxprom88
  store i8 %conv90, ptr %arrayidx93, align 1, !tbaa !17
  %78 = load ptr, ptr %perms, align 8, !tbaa !13
  %arrayidx97 = getelementptr inbounds i8, ptr %78, i64 %idxprom88
  store i8 %conv80, ptr %arrayidx97, align 1, !tbaa !17
  br label %for.inc

if.else:                                          ; preds = %for.inc30.i.15
  %79 = zext i16 %73 to i64
  %cmp102 = icmp eq i64 %indvars.iv337, %79
  br i1 %cmp102, label %for.inc, label %cond.false104

cond.false104:                                    ; preds = %if.else
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManagerC2Ev) #18
  unreachable

for.inc:                                          ; preds = %if.then71, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %for.body.i260.preheader, label %for.body61, !llvm.loop !26

for.body.i260.preheader:                          ; preds = %for.inc
  %spec.select351 = select i1 %tobool.not.i, i32 %and109, i32 %or.i267
  br i1 %tobool.not.i.1, label %for.inc.i272.1, label %if.then.i268.1

if.then.i268.1:                                   ; preds = %for.body.i260.preheader
  %and3.i263.1 = shl i32 %spec.select351, 2
  %shl8.i265.1 = and i32 %and3.i263.1, -858993460
  %and6.i264.1 = lshr i32 %spec.select351, 2
  %shr.i266.1 = and i32 %and6.i264.1, 858993459
  %or.i267.1 = or i32 %shl8.i265.1, %shr.i266.1
  br label %for.inc.i272.1

for.inc.i272.1:                                   ; preds = %if.then.i268.1, %for.body.i260.preheader
  %uTruth.addr.1.i269.1 = phi i32 [ %or.i267.1, %if.then.i268.1 ], [ %spec.select351, %for.body.i260.preheader ]
  br i1 %tobool.not.i.2, label %for.inc.i272.2, label %if.then.i268.2

if.then.i268.2:                                   ; preds = %for.inc.i272.1
  %and3.i263.2 = shl i32 %uTruth.addr.1.i269.1, 4
  %shl8.i265.2 = and i32 %and3.i263.2, -252645136
  %and6.i264.2 = lshr i32 %uTruth.addr.1.i269.1, 4
  %shr.i266.2 = and i32 %and6.i264.2, 252645135
  %or.i267.2 = or i32 %shl8.i265.2, %shr.i266.2
  br label %for.inc.i272.2

for.inc.i272.2:                                   ; preds = %if.then.i268.2, %for.inc.i272.1
  %uTruth.addr.1.i269.2 = phi i32 [ %or.i267.2, %if.then.i268.2 ], [ %uTruth.addr.1.i269.1, %for.inc.i272.1 ]
  br i1 %tobool.not.i.3, label %for.inc.i272.3, label %if.then.i268.3

if.then.i268.3:                                   ; preds = %for.inc.i272.2
  %and3.i263.3 = shl i32 %uTruth.addr.1.i269.2, 8
  %shl8.i265.3 = and i32 %and3.i263.3, -16711936
  %and6.i264.3 = lshr i32 %uTruth.addr.1.i269.2, 8
  %shr.i266.3 = and i32 %and6.i264.3, 16711935
  %or.i267.3 = or i32 %shl8.i265.3, %shr.i266.3
  br label %for.inc.i272.3

for.inc.i272.3:                                   ; preds = %if.then.i268.3, %for.inc.i272.2
  %uTruth.addr.1.i269.3 = phi i32 [ %or.i267.3, %if.then.i268.3 ], [ %uTruth.addr.1.i269.2, %for.inc.i272.2 ]
  %80 = insertelement <16 x i32> poison, i32 %uTruth.addr.1.i269.3, i64 0
  %shuffle = shufflevector <16 x i32> %80, <16 x i32> poison, <16 x i32> zeroinitializer
  %81 = and <16 x i32> %shuffle, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %82 = icmp eq <16 x i32> %81, zeroinitializer
  %83 = extractelement <16 x i1> %82, i64 15
  %84 = extractelement <16 x i1> %82, i64 14
  %85 = extractelement <16 x i1> %82, i64 13
  %86 = extractelement <16 x i1> %82, i64 12
  %87 = extractelement <16 x i1> %82, i64 11
  %88 = extractelement <16 x i1> %82, i64 10
  %89 = extractelement <16 x i1> %82, i64 9
  %90 = extractelement <16 x i1> %82, i64 8
  %91 = extractelement <16 x i1> %82, i64 7
  %92 = extractelement <16 x i1> %82, i64 6
  %93 = extractelement <16 x i1> %82, i64 5
  %94 = extractelement <16 x i1> %82, i64 4
  %95 = extractelement <16 x i1> %82, i64 3
  %96 = extractelement <16 x i1> %82, i64 2
  %97 = extractelement <16 x i1> %82, i64 1
  %98 = extractelement <16 x i1> %82, i64 0
  br label %for.body113

for.body113:                                      ; preds = %for.inc.i272.3, %for.inc161
  %indvars.iv332 = phi i64 [ 0, %for.inc.i272.3 ], [ %indvars.iv.next333, %for.inc161 ]
  %99 = load ptr, ptr %perms4, align 8, !tbaa !18
  %arrayidx116 = getelementptr inbounds ptr, ptr %99, i64 %indvars.iv332
  %100 = load ptr, ptr %arrayidx116, align 8, !tbaa !16
  %call.i275 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  %calloc = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64)
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %call.i275, align 4, !tbaa !24
  %arrayidx.i279.4 = getelementptr inbounds i32, ptr %call.i275, i64 4
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %arrayidx.i279.4, align 4, !tbaa !24
  %arrayidx.i279.8 = getelementptr inbounds i32, ptr %call.i275, i64 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %arrayidx.i279.8, align 4, !tbaa !24
  %arrayidx.i279.12 = getelementptr inbounds i32, ptr %call.i275, i64 12
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %arrayidx.i279.12, align 4, !tbaa !24
  %arrayidx6.us.i.i293.1 = getelementptr inbounds i8, ptr %100, i64 1
  %arrayidx6.us.i.i293.2 = getelementptr inbounds i8, ptr %100, i64 2
  %arrayidx6.us.i.i293.3 = getelementptr inbounds i8, ptr %100, i64 3
  br label %for.cond2.preheader.us.i.i287

for.cond2.preheader.us.i.i287:                    ; preds = %for.inc.us.i.i300.3.for.cond2.preheader.us.i.i287_crit_edge, %for.body113
  %101 = phi i32 [ 0, %for.body113 ], [ %.pre343, %for.inc.us.i.i300.3.for.cond2.preheader.us.i.i287_crit_edge ]
  %indvars.iv31.i.i284 = phi i64 [ 0, %for.body113 ], [ %indvars.iv.next32.i.i301, %for.inc.us.i.i300.3.for.cond2.preheader.us.i.i287_crit_edge ]
  %arrayidx10.us.i.i286 = getelementptr inbounds i32, ptr %calloc, i64 %indvars.iv31.i.i284
  %and.us.i.i290 = and i32 %101, 1
  %tobool.not.us.i.i291 = icmp eq i32 %and.us.i.i290, 0
  br i1 %tobool.not.us.i.i291, label %for.inc.us.i.i300, label %if.then.us.i.i297

if.then.us.i.i297:                                ; preds = %for.cond2.preheader.us.i.i287
  %102 = load i8, ptr %100, align 1, !tbaa !17
  %conv722.us.i.i294 = zext i8 %102 to i32
  %shl8.us.i.i295 = shl nuw i32 1, %conv722.us.i.i294
  %103 = load i32, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  %or.us.i.i296 = or i32 %shl8.us.i.i295, %103
  store i32 %or.us.i.i296, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  br label %for.inc.us.i.i300

for.inc.us.i.i300:                                ; preds = %if.then.us.i.i297, %for.cond2.preheader.us.i.i287
  %and.us.i.i290.1 = and i32 %101, 2
  %tobool.not.us.i.i291.1 = icmp eq i32 %and.us.i.i290.1, 0
  br i1 %tobool.not.us.i.i291.1, label %for.inc.us.i.i300.1, label %if.then.us.i.i297.1

if.then.us.i.i297.1:                              ; preds = %for.inc.us.i.i300
  %104 = load i8, ptr %arrayidx6.us.i.i293.1, align 1, !tbaa !17
  %conv722.us.i.i294.1 = zext i8 %104 to i32
  %shl8.us.i.i295.1 = shl nuw i32 1, %conv722.us.i.i294.1
  %105 = load i32, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  %or.us.i.i296.1 = or i32 %shl8.us.i.i295.1, %105
  store i32 %or.us.i.i296.1, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  br label %for.inc.us.i.i300.1

for.inc.us.i.i300.1:                              ; preds = %if.then.us.i.i297.1, %for.inc.us.i.i300
  %and.us.i.i290.2 = and i32 %101, 4
  %tobool.not.us.i.i291.2 = icmp eq i32 %and.us.i.i290.2, 0
  br i1 %tobool.not.us.i.i291.2, label %for.inc.us.i.i300.2, label %if.then.us.i.i297.2

if.then.us.i.i297.2:                              ; preds = %for.inc.us.i.i300.1
  %106 = load i8, ptr %arrayidx6.us.i.i293.2, align 1, !tbaa !17
  %conv722.us.i.i294.2 = zext i8 %106 to i32
  %shl8.us.i.i295.2 = shl nuw i32 1, %conv722.us.i.i294.2
  %107 = load i32, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  %or.us.i.i296.2 = or i32 %shl8.us.i.i295.2, %107
  store i32 %or.us.i.i296.2, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  br label %for.inc.us.i.i300.2

for.inc.us.i.i300.2:                              ; preds = %if.then.us.i.i297.2, %for.inc.us.i.i300.1
  %and.us.i.i290.3 = and i32 %101, 8
  %tobool.not.us.i.i291.3 = icmp eq i32 %and.us.i.i290.3, 0
  br i1 %tobool.not.us.i.i291.3, label %for.inc.us.i.i300.3, label %if.then.us.i.i297.3

if.then.us.i.i297.3:                              ; preds = %for.inc.us.i.i300.2
  %108 = load i8, ptr %arrayidx6.us.i.i293.3, align 1, !tbaa !17
  %conv722.us.i.i294.3 = zext i8 %108 to i32
  %shl8.us.i.i295.3 = shl nuw i32 1, %conv722.us.i.i294.3
  %109 = load i32, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  %or.us.i.i296.3 = or i32 %shl8.us.i.i295.3, %109
  store i32 %or.us.i.i296.3, ptr %arrayidx10.us.i.i286, align 4, !tbaa !24
  br label %for.inc.us.i.i300.3

for.inc.us.i.i300.3:                              ; preds = %if.then.us.i.i297.3, %for.inc.us.i.i300.2
  %indvars.iv.next32.i.i301 = add nuw nsw i64 %indvars.iv31.i.i284, 1
  %exitcond35.not.i.i302 = icmp eq i64 %indvars.iv.next32.i.i301, 16
  br i1 %exitcond35.not.i.i302, label %for.body20.i310.preheader, label %for.inc.us.i.i300.3.for.cond2.preheader.us.i.i287_crit_edge, !llvm.loop !25

for.inc.us.i.i300.3.for.cond2.preheader.us.i.i287_crit_edge: ; preds = %for.inc.us.i.i300.3
  %arrayidx.us.i.i285.phi.trans.insert = getelementptr inbounds i32, ptr %call.i275, i64 %indvars.iv.next32.i.i301
  %.pre343 = load i32, ptr %arrayidx.us.i.i285.phi.trans.insert, align 4, !tbaa !24
  br label %for.cond2.preheader.us.i.i287

for.body20.i310.preheader:                        ; preds = %for.inc.us.i.i300.3
  br i1 %83, label %for.inc30.i318, label %if.then24.i314

if.then24.i314:                                   ; preds = %for.body20.i310.preheader
  %110 = load i32, ptr %calloc, align 4, !tbaa !24
  %shl27.i312 = shl nuw i32 1, %110
  br label %for.inc30.i318

for.inc30.i318:                                   ; preds = %if.then24.i314, %for.body20.i310.preheader
  %Result.3.i315 = phi i32 [ %shl27.i312, %if.then24.i314 ], [ 0, %for.body20.i310.preheader ]
  br i1 %84, label %for.inc30.i318.1, label %if.then24.i314.1

if.then24.i314.1:                                 ; preds = %for.inc30.i318
  %arrayidx26.i311.1 = getelementptr inbounds i32, ptr %calloc, i64 1
  %111 = load i32, ptr %arrayidx26.i311.1, align 4, !tbaa !24
  %shl27.i312.1 = shl nuw i32 1, %111
  %or28.i313.1 = or i32 %shl27.i312.1, %Result.3.i315
  br label %for.inc30.i318.1

for.inc30.i318.1:                                 ; preds = %if.then24.i314.1, %for.inc30.i318
  %Result.3.i315.1 = phi i32 [ %or28.i313.1, %if.then24.i314.1 ], [ %Result.3.i315, %for.inc30.i318 ]
  br i1 %85, label %for.inc30.i318.2, label %if.then24.i314.2

if.then24.i314.2:                                 ; preds = %for.inc30.i318.1
  %arrayidx26.i311.2 = getelementptr inbounds i32, ptr %calloc, i64 2
  %112 = load i32, ptr %arrayidx26.i311.2, align 4, !tbaa !24
  %shl27.i312.2 = shl nuw i32 1, %112
  %or28.i313.2 = or i32 %shl27.i312.2, %Result.3.i315.1
  br label %for.inc30.i318.2

for.inc30.i318.2:                                 ; preds = %if.then24.i314.2, %for.inc30.i318.1
  %Result.3.i315.2 = phi i32 [ %or28.i313.2, %if.then24.i314.2 ], [ %Result.3.i315.1, %for.inc30.i318.1 ]
  br i1 %86, label %for.inc30.i318.3, label %if.then24.i314.3

if.then24.i314.3:                                 ; preds = %for.inc30.i318.2
  %arrayidx26.i311.3 = getelementptr inbounds i32, ptr %calloc, i64 3
  %113 = load i32, ptr %arrayidx26.i311.3, align 4, !tbaa !24
  %shl27.i312.3 = shl nuw i32 1, %113
  %or28.i313.3 = or i32 %shl27.i312.3, %Result.3.i315.2
  br label %for.inc30.i318.3

for.inc30.i318.3:                                 ; preds = %if.then24.i314.3, %for.inc30.i318.2
  %Result.3.i315.3 = phi i32 [ %or28.i313.3, %if.then24.i314.3 ], [ %Result.3.i315.2, %for.inc30.i318.2 ]
  br i1 %87, label %for.inc30.i318.4, label %if.then24.i314.4

if.then24.i314.4:                                 ; preds = %for.inc30.i318.3
  %arrayidx26.i311.4 = getelementptr inbounds i32, ptr %calloc, i64 4
  %114 = load i32, ptr %arrayidx26.i311.4, align 4, !tbaa !24
  %shl27.i312.4 = shl nuw i32 1, %114
  %or28.i313.4 = or i32 %shl27.i312.4, %Result.3.i315.3
  br label %for.inc30.i318.4

for.inc30.i318.4:                                 ; preds = %if.then24.i314.4, %for.inc30.i318.3
  %Result.3.i315.4 = phi i32 [ %or28.i313.4, %if.then24.i314.4 ], [ %Result.3.i315.3, %for.inc30.i318.3 ]
  br i1 %88, label %for.inc30.i318.5, label %if.then24.i314.5

if.then24.i314.5:                                 ; preds = %for.inc30.i318.4
  %arrayidx26.i311.5 = getelementptr inbounds i32, ptr %calloc, i64 5
  %115 = load i32, ptr %arrayidx26.i311.5, align 4, !tbaa !24
  %shl27.i312.5 = shl nuw i32 1, %115
  %or28.i313.5 = or i32 %shl27.i312.5, %Result.3.i315.4
  br label %for.inc30.i318.5

for.inc30.i318.5:                                 ; preds = %if.then24.i314.5, %for.inc30.i318.4
  %Result.3.i315.5 = phi i32 [ %or28.i313.5, %if.then24.i314.5 ], [ %Result.3.i315.4, %for.inc30.i318.4 ]
  br i1 %89, label %for.inc30.i318.6, label %if.then24.i314.6

if.then24.i314.6:                                 ; preds = %for.inc30.i318.5
  %arrayidx26.i311.6 = getelementptr inbounds i32, ptr %calloc, i64 6
  %116 = load i32, ptr %arrayidx26.i311.6, align 4, !tbaa !24
  %shl27.i312.6 = shl nuw i32 1, %116
  %or28.i313.6 = or i32 %shl27.i312.6, %Result.3.i315.5
  br label %for.inc30.i318.6

for.inc30.i318.6:                                 ; preds = %if.then24.i314.6, %for.inc30.i318.5
  %Result.3.i315.6 = phi i32 [ %or28.i313.6, %if.then24.i314.6 ], [ %Result.3.i315.5, %for.inc30.i318.5 ]
  br i1 %90, label %for.inc30.i318.7, label %if.then24.i314.7

if.then24.i314.7:                                 ; preds = %for.inc30.i318.6
  %arrayidx26.i311.7 = getelementptr inbounds i32, ptr %calloc, i64 7
  %117 = load i32, ptr %arrayidx26.i311.7, align 4, !tbaa !24
  %shl27.i312.7 = shl nuw i32 1, %117
  %or28.i313.7 = or i32 %shl27.i312.7, %Result.3.i315.6
  br label %for.inc30.i318.7

for.inc30.i318.7:                                 ; preds = %if.then24.i314.7, %for.inc30.i318.6
  %Result.3.i315.7 = phi i32 [ %or28.i313.7, %if.then24.i314.7 ], [ %Result.3.i315.6, %for.inc30.i318.6 ]
  br i1 %91, label %for.inc30.i318.8, label %if.then24.i314.8

if.then24.i314.8:                                 ; preds = %for.inc30.i318.7
  %arrayidx26.i311.8 = getelementptr inbounds i32, ptr %calloc, i64 8
  %118 = load i32, ptr %arrayidx26.i311.8, align 4, !tbaa !24
  %shl27.i312.8 = shl nuw i32 1, %118
  %or28.i313.8 = or i32 %shl27.i312.8, %Result.3.i315.7
  br label %for.inc30.i318.8

for.inc30.i318.8:                                 ; preds = %if.then24.i314.8, %for.inc30.i318.7
  %Result.3.i315.8 = phi i32 [ %or28.i313.8, %if.then24.i314.8 ], [ %Result.3.i315.7, %for.inc30.i318.7 ]
  br i1 %92, label %for.inc30.i318.9, label %if.then24.i314.9

if.then24.i314.9:                                 ; preds = %for.inc30.i318.8
  %arrayidx26.i311.9 = getelementptr inbounds i32, ptr %calloc, i64 9
  %119 = load i32, ptr %arrayidx26.i311.9, align 4, !tbaa !24
  %shl27.i312.9 = shl nuw i32 1, %119
  %or28.i313.9 = or i32 %shl27.i312.9, %Result.3.i315.8
  br label %for.inc30.i318.9

for.inc30.i318.9:                                 ; preds = %if.then24.i314.9, %for.inc30.i318.8
  %Result.3.i315.9 = phi i32 [ %or28.i313.9, %if.then24.i314.9 ], [ %Result.3.i315.8, %for.inc30.i318.8 ]
  br i1 %93, label %for.inc30.i318.10, label %if.then24.i314.10

if.then24.i314.10:                                ; preds = %for.inc30.i318.9
  %arrayidx26.i311.10 = getelementptr inbounds i32, ptr %calloc, i64 10
  %120 = load i32, ptr %arrayidx26.i311.10, align 4, !tbaa !24
  %shl27.i312.10 = shl nuw i32 1, %120
  %or28.i313.10 = or i32 %shl27.i312.10, %Result.3.i315.9
  br label %for.inc30.i318.10

for.inc30.i318.10:                                ; preds = %if.then24.i314.10, %for.inc30.i318.9
  %Result.3.i315.10 = phi i32 [ %or28.i313.10, %if.then24.i314.10 ], [ %Result.3.i315.9, %for.inc30.i318.9 ]
  br i1 %94, label %for.inc30.i318.11, label %if.then24.i314.11

if.then24.i314.11:                                ; preds = %for.inc30.i318.10
  %arrayidx26.i311.11 = getelementptr inbounds i32, ptr %calloc, i64 11
  %121 = load i32, ptr %arrayidx26.i311.11, align 4, !tbaa !24
  %shl27.i312.11 = shl nuw i32 1, %121
  %or28.i313.11 = or i32 %shl27.i312.11, %Result.3.i315.10
  br label %for.inc30.i318.11

for.inc30.i318.11:                                ; preds = %if.then24.i314.11, %for.inc30.i318.10
  %Result.3.i315.11 = phi i32 [ %or28.i313.11, %if.then24.i314.11 ], [ %Result.3.i315.10, %for.inc30.i318.10 ]
  br i1 %95, label %for.inc30.i318.12, label %if.then24.i314.12

if.then24.i314.12:                                ; preds = %for.inc30.i318.11
  %arrayidx26.i311.12 = getelementptr inbounds i32, ptr %calloc, i64 12
  %122 = load i32, ptr %arrayidx26.i311.12, align 4, !tbaa !24
  %shl27.i312.12 = shl nuw i32 1, %122
  %or28.i313.12 = or i32 %shl27.i312.12, %Result.3.i315.11
  br label %for.inc30.i318.12

for.inc30.i318.12:                                ; preds = %if.then24.i314.12, %for.inc30.i318.11
  %Result.3.i315.12 = phi i32 [ %or28.i313.12, %if.then24.i314.12 ], [ %Result.3.i315.11, %for.inc30.i318.11 ]
  br i1 %96, label %for.inc30.i318.13, label %if.then24.i314.13

if.then24.i314.13:                                ; preds = %for.inc30.i318.12
  %arrayidx26.i311.13 = getelementptr inbounds i32, ptr %calloc, i64 13
  %123 = load i32, ptr %arrayidx26.i311.13, align 4, !tbaa !24
  %shl27.i312.13 = shl nuw i32 1, %123
  %or28.i313.13 = or i32 %shl27.i312.13, %Result.3.i315.12
  br label %for.inc30.i318.13

for.inc30.i318.13:                                ; preds = %if.then24.i314.13, %for.inc30.i318.12
  %Result.3.i315.13 = phi i32 [ %or28.i313.13, %if.then24.i314.13 ], [ %Result.3.i315.12, %for.inc30.i318.12 ]
  br i1 %97, label %for.inc30.i318.14, label %if.then24.i314.14

if.then24.i314.14:                                ; preds = %for.inc30.i318.13
  %arrayidx26.i311.14 = getelementptr inbounds i32, ptr %calloc, i64 14
  %124 = load i32, ptr %arrayidx26.i311.14, align 4, !tbaa !24
  %shl27.i312.14 = shl nuw i32 1, %124
  %or28.i313.14 = or i32 %shl27.i312.14, %Result.3.i315.13
  br label %for.inc30.i318.14

for.inc30.i318.14:                                ; preds = %if.then24.i314.14, %for.inc30.i318.13
  %Result.3.i315.14 = phi i32 [ %or28.i313.14, %if.then24.i314.14 ], [ %Result.3.i315.13, %for.inc30.i318.13 ]
  br i1 %98, label %for.inc30.i318.15, label %if.then24.i314.15

if.then24.i314.15:                                ; preds = %for.inc30.i318.14
  %arrayidx26.i311.15 = getelementptr inbounds i32, ptr %calloc, i64 15
  %125 = load i32, ptr %arrayidx26.i311.15, align 4, !tbaa !24
  %shl27.i312.15 = shl nuw i32 1, %125
  %or28.i313.15 = or i32 %shl27.i312.15, %Result.3.i315.14
  br label %for.inc30.i318.15

for.inc30.i318.15:                                ; preds = %if.then24.i314.15, %for.inc30.i318.14
  %Result.3.i315.15 = phi i32 [ %or28.i313.15, %if.then24.i314.15 ], [ %Result.3.i315.14, %for.inc30.i318.14 ]
  tail call void @free(ptr noundef nonnull %call.i275) #16
  tail call void @free(ptr noundef %calloc) #16
  %126 = load ptr, ptr %canons, align 8, !tbaa !11
  %idxprom119 = zext i32 %Result.3.i315.15 to i64
  %arrayidx120 = getelementptr inbounds i16, ptr %126, i64 %idxprom119
  %127 = load i16, ptr %arrayidx120, align 2, !tbaa !20
  %cmp122 = icmp eq i16 %127, 0
  br i1 %cmp122, label %if.then123, label %if.else151

if.then123:                                       ; preds = %for.inc30.i318.15
  store i16 %conv72, ptr %arrayidx120, align 2, !tbaa !20
  %128 = load ptr, ptr %phases, align 8, !tbaa !12
  %arrayidx131 = getelementptr inbounds i8, ptr %128, i64 %idxprom119
  store i8 %conv76, ptr %arrayidx131, align 1, !tbaa !17
  %conv132 = trunc i64 %indvars.iv332 to i8
  %129 = load ptr, ptr %perms, align 8, !tbaa !13
  %arrayidx135 = getelementptr inbounds i8, ptr %129, i64 %idxprom119
  store i8 %conv132, ptr %arrayidx135, align 1, !tbaa !17
  %neg136 = and i32 %Result.3.i315.15, 65535
  %and137 = xor i32 %neg136, 65535
  %130 = load ptr, ptr %canons, align 8, !tbaa !11
  %idxprom140 = zext i32 %and137 to i64
  %arrayidx141 = getelementptr inbounds i16, ptr %130, i64 %idxprom140
  store i16 %conv72, ptr %arrayidx141, align 2, !tbaa !20
  %131 = load ptr, ptr %phases, align 8, !tbaa !12
  %arrayidx146 = getelementptr inbounds i8, ptr %131, i64 %idxprom140
  store i8 %conv90, ptr %arrayidx146, align 1, !tbaa !17
  %132 = load ptr, ptr %perms, align 8, !tbaa !13
  %arrayidx150 = getelementptr inbounds i8, ptr %132, i64 %idxprom140
  store i8 %conv132, ptr %arrayidx150, align 1, !tbaa !17
  br label %for.inc161

if.else151:                                       ; preds = %for.inc30.i318.15
  %133 = zext i16 %127 to i64
  %cmp156 = icmp eq i64 %indvars.iv337, %133
  br i1 %cmp156, label %for.inc161, label %cond.false158

cond.false158:                                    ; preds = %if.else151
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManagerC2Ev) #18
  unreachable

for.inc161:                                       ; preds = %if.then123, %if.else151
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1
  %exitcond335.not = icmp eq i64 %indvars.iv.next333, 24
  br i1 %exitcond335.not, label %for.inc164, label %for.body113, !llvm.loop !27

for.inc164:                                       ; preds = %for.inc161
  %inc165 = add nuw nsw i32 %i.0327, 1
  %exitcond336.not = icmp eq i32 %inc165, 16
  br i1 %exitcond336.not, label %for.inc167, label %for.body.i241.preheader, !llvm.loop !28

for.inc167:                                       ; preds = %for.inc164, %cond.end
  %nClasses.1 = phi i32 [ %nClasses.0330, %cond.end ], [ %inc, %for.inc164 ]
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, 32768
  br i1 %exitcond341.not, label %for.end169, label %for.body, !llvm.loop !29

for.end169:                                       ; preds = %for.inc167
  %134 = load ptr, ptr %phases, align 8, !tbaa !12
  %arrayidx171 = getelementptr inbounds i8, ptr %134, i64 65535
  store i8 16, ptr %arrayidx171, align 1, !tbaa !17
  %cmp172 = icmp eq i32 %nClasses.1, 222
  br i1 %cmp172, label %cond.end175, label %cond.false174

cond.false174:                                    ; preds = %for.end169
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManagerC2Ev) #18
  unreachable

cond.end175:                                      ; preds = %for.end169
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager15getPermutationsEi(ptr nocapture noundef nonnull readnone align 8 dereferenceable(64) %this, i32 noundef %n) local_unnamed_addr #4 align 2 {
entry:
  %Array = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %Array) #16
  %cmp.not5.i = icmp slt i32 %n, 1
  br i1 %cmp.not5.i, label %cond.false.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %for.body.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i32 %n, -8
  %ind.end = or i32 %n.vec, 1
  %0 = add i32 %n.vec, -8
  %1 = lshr exact i32 %0, 3
  %2 = add nuw nsw i32 %1, 1
  %xtraiter = and i32 %2, 3
  %3 = icmp ult i32 %0, 24
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i32 %2, 1073741820
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph.new ], [ %vec.ind.next.3, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph.new ], [ %10, %vector.body ]
  %vec.phi22 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph.new ], [ %11, %vector.body ]
  %niter = phi i32 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, <i32 4, i32 4, i32 4, i32 4>
  %4 = mul <4 x i32> %vec.phi, %vec.ind
  %5 = mul <4 x i32> %vec.phi22, %step.add
  %vec.ind.next = add <4 x i32> %vec.ind, <i32 8, i32 8, i32 8, i32 8>
  %step.add.1 = add <4 x i32> %vec.ind, <i32 12, i32 12, i32 12, i32 12>
  %6 = mul <4 x i32> %4, %vec.ind.next
  %7 = mul <4 x i32> %5, %step.add.1
  %vec.ind.next.1 = add <4 x i32> %vec.ind, <i32 16, i32 16, i32 16, i32 16>
  %step.add.2 = add <4 x i32> %vec.ind, <i32 20, i32 20, i32 20, i32 20>
  %8 = mul <4 x i32> %6, %vec.ind.next.1
  %9 = mul <4 x i32> %7, %step.add.2
  %vec.ind.next.2 = add <4 x i32> %vec.ind, <i32 24, i32 24, i32 24, i32 24>
  %step.add.3 = add <4 x i32> %vec.ind, <i32 28, i32 28, i32 28, i32 28>
  %10 = mul <4 x i32> %8, %vec.ind.next.2
  %11 = mul <4 x i32> %9, %step.add.3
  %vec.ind.next.3 = add <4 x i32> %vec.ind, <i32 32, i32 32, i32 32, i32 32>
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !30

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa41.ph = phi <4 x i32> [ undef, %vector.ph ], [ %10, %vector.body ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %11, %vector.body ]
  %vec.ind.unr = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %vec.phi.unr = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %10, %vector.body ]
  %vec.phi22.unr = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %11, %vector.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %vec.ind.epil = phi <4 x i32> [ %vec.ind.next.epil, %vector.body.epil ], [ %vec.ind.unr, %middle.block.unr-lcssa ]
  %vec.phi.epil = phi <4 x i32> [ %12, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi22.epil = phi <4 x i32> [ %13, %vector.body.epil ], [ %vec.phi22.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %step.add.epil = add <4 x i32> %vec.ind.epil, <i32 4, i32 4, i32 4, i32 4>
  %12 = mul <4 x i32> %vec.phi.epil, %vec.ind.epil
  %13 = mul <4 x i32> %vec.phi22.epil, %step.add.epil
  %vec.ind.next.epil = add <4 x i32> %vec.ind.epil, <i32 8, i32 8, i32 8, i32 8>
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa41 = phi <4 x i32> [ %.lcssa41.ph, %middle.block.unr-lcssa ], [ %12, %vector.body.epil ]
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %13, %vector.body.epil ]
  %bin.rdx = mul <4 x i32> %.lcssa, %.lcssa41
  %14 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %n.vec, %n
  br i1 %cmp.n, label %_ZN9algorithm10NPNManager9factorialEi.exit, label %for.body.i.preheader39

for.body.i.preheader39:                           ; preds = %for.body.i.preheader, %middle.block
  %i.07.i.ph = phi i32 [ 1, %for.body.i.preheader ], [ %ind.end, %middle.block ]
  %res.06.i.ph = phi i32 [ 1, %for.body.i.preheader ], [ %14, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader39, %for.body.i
  %i.07.i = phi i32 [ %inc.i, %for.body.i ], [ %i.07.i.ph, %for.body.i.preheader39 ]
  %res.06.i = phi i32 [ %mul.i, %for.body.i ], [ %res.06.i.ph, %for.body.i.preheader39 ]
  %mul.i = mul nsw i32 %res.06.i, %i.07.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %i.07.i, %n
  br i1 %exitcond.not.i, label %_ZN9algorithm10NPNManager9factorialEi.exit, label %for.body.i, !llvm.loop !34

_ZN9algorithm10NPNManager9factorialEi.exit:       ; preds = %for.body.i, %middle.block
  %mul.i.lcssa = phi i32 [ %14, %middle.block ], [ %mul.i, %for.body.i ]
  %cmp.i = icmp sgt i32 %mul.i.lcssa, 0
  %cmp2.i = icmp sgt i32 %n, 0
  %or.cond.i = and i1 %cmp2.i, %cmp.i
  br i1 %or.cond.i, label %cond.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %entry, %_ZN9algorithm10NPNManager9factorialEi.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManager10arrayAllocEiii) #18
  unreachable

cond.end.i:                                       ; preds = %_ZN9algorithm10NPNManager9factorialEi.exit
  %conv30.i = zext i32 %mul.i.lcssa to i64
  %conv4.i17 = zext i32 %n to i64
  %add.i = add nuw nsw i64 %conv4.i17, 8
  %mul5.i = mul nuw nsw i64 %add.i, %conv30.i
  %call.i = tail call noalias ptr @malloc(i64 noundef %mul5.i) #17
  %mul8.i = shl nuw nsw i64 %conv30.i, 3
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i, i64 %mul8.i
  store ptr %add.ptr.i, ptr %call.i, align 8, !tbaa !16
  %cmp931.i = icmp ugt i32 %mul.i.lcssa, 1
  br i1 %cmp931.i, label %for.body.i12.preheader, label %for.body.preheader

for.body.i12.preheader:                           ; preds = %cond.end.i
  %15 = add nsw i64 %conv30.i, -1
  %16 = add nsw i64 %conv30.i, -2
  %xtraiter44 = and i64 %15, 3
  %17 = icmp ult i64 %16, 3
  br i1 %17, label %for.body.preheader.loopexit.unr-lcssa, label %for.body.i12.preheader.new

for.body.i12.preheader.new:                       ; preds = %for.body.i12.preheader
  %unroll_iter47 = and i64 %15, -4
  br label %for.body.i12

for.body.i12:                                     ; preds = %for.body.i12, %for.body.i12.preheader.new
  %indvars.iv.i = phi i64 [ 1, %for.body.i12.preheader.new ], [ %indvars.iv.next.i.3, %for.body.i12 ]
  %niter48 = phi i64 [ 0, %for.body.i12.preheader.new ], [ %niter48.next.3, %for.body.i12 ]
  %18 = trunc i64 %indvars.iv.i to i32
  %mul12.i = mul i32 %18, %n
  %idx.ext.i = sext i32 %mul12.i to i64
  %add.ptr13.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i
  %arrayidx14.i = getelementptr inbounds ptr, ptr %call.i, i64 %indvars.iv.i
  store ptr %add.ptr13.i, ptr %arrayidx14.i, align 8, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %19 = trunc i64 %indvars.iv.next.i to i32
  %mul12.i.1 = mul i32 %19, %n
  %idx.ext.i.1 = sext i32 %mul12.i.1 to i64
  %add.ptr13.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i.1
  %arrayidx14.i.1 = getelementptr inbounds ptr, ptr %call.i, i64 %indvars.iv.next.i
  store ptr %add.ptr13.i.1, ptr %arrayidx14.i.1, align 8, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %20 = trunc i64 %indvars.iv.next.i.1 to i32
  %mul12.i.2 = mul i32 %20, %n
  %idx.ext.i.2 = sext i32 %mul12.i.2 to i64
  %add.ptr13.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i.2
  %arrayidx14.i.2 = getelementptr inbounds ptr, ptr %call.i, i64 %indvars.iv.next.i.1
  store ptr %add.ptr13.i.2, ptr %arrayidx14.i.2, align 8, !tbaa !16
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %21 = trunc i64 %indvars.iv.next.i.2 to i32
  %mul12.i.3 = mul i32 %21, %n
  %idx.ext.i.3 = sext i32 %mul12.i.3 to i64
  %add.ptr13.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i.3
  %arrayidx14.i.3 = getelementptr inbounds ptr, ptr %call.i, i64 %indvars.iv.next.i.2
  store ptr %add.ptr13.i.3, ptr %arrayidx14.i.3, align 8, !tbaa !16
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter48.next.3 = add i64 %niter48, 4
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, %unroll_iter47
  br i1 %niter48.ncmp.3, label %for.body.preheader.loopexit.unr-lcssa, label %for.body.i12, !llvm.loop !36

for.body.preheader.loopexit.unr-lcssa:            ; preds = %for.body.i12, %for.body.i12.preheader
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.i12.preheader ], [ %indvars.iv.next.i.3, %for.body.i12 ]
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %for.body.preheader, label %for.body.i12.epil

for.body.i12.epil:                                ; preds = %for.body.preheader.loopexit.unr-lcssa, %for.body.i12.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i12.epil ], [ %indvars.iv.i.unr, %for.body.preheader.loopexit.unr-lcssa ]
  %epil.iter45 = phi i64 [ %epil.iter45.next, %for.body.i12.epil ], [ 0, %for.body.preheader.loopexit.unr-lcssa ]
  %22 = trunc i64 %indvars.iv.i.epil to i32
  %mul12.i.epil = mul i32 %22, %n
  %idx.ext.i.epil = sext i32 %mul12.i.epil to i64
  %add.ptr13.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i.epil
  %arrayidx14.i.epil = getelementptr inbounds ptr, ptr %call.i, i64 %indvars.iv.i.epil
  store ptr %add.ptr13.i.epil, ptr %arrayidx14.i.epil, align 8, !tbaa !16
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter45.next = add i64 %epil.iter45, 1
  %epil.iter45.cmp.not = icmp eq i64 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %for.body.preheader, label %for.body.i12.epil, !llvm.loop !37

for.body.preheader:                               ; preds = %for.body.preheader.loopexit.unr-lcssa, %for.body.i12.epil, %cond.end.i
  %min.iters.check25 = icmp ult i32 %n, 32
  br i1 %min.iters.check25, label %for.body.preheader38, label %vector.ph26

vector.ph26:                                      ; preds = %for.body.preheader
  %n.vec28 = and i64 %conv4.i17, 4294967264
  %23 = add nsw i64 %n.vec28, -32
  %24 = lshr exact i64 %23, 5
  %25 = add nuw nsw i64 %24, 1
  %xtraiter49 = and i64 %25, 3
  %26 = icmp ult i64 %23, 96
  br i1 %26, label %middle.block23.unr-lcssa, label %vector.ph26.new

vector.ph26.new:                                  ; preds = %vector.ph26
  %unroll_iter52 = and i64 %25, 1152921504606846972
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph26.new
  %index32 = phi i64 [ 0, %vector.ph26.new ], [ %index.next37.3, %vector.body31 ]
  %vec.ind33 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph26.new ], [ %vec.ind.next36.3, %vector.body31 ]
  %niter53 = phi i64 [ 0, %vector.ph26.new ], [ %niter53.next.3, %vector.body31 ]
  %step.add34 = add <16 x i8> %vec.ind33, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %27 = getelementptr inbounds [50 x i8], ptr %Array, i64 0, i64 %index32
  store <16 x i8> %vec.ind33, ptr %27, align 16, !tbaa !17
  %28 = getelementptr inbounds i8, ptr %27, i64 16
  store <16 x i8> %step.add34, ptr %28, align 16, !tbaa !17
  %index.next37 = or i64 %index32, 32
  %vec.ind.next36 = add <16 x i8> %vec.ind33, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %step.add34.1 = add <16 x i8> %vec.ind33, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %29 = getelementptr inbounds [50 x i8], ptr %Array, i64 0, i64 %index.next37
  store <16 x i8> %vec.ind.next36, ptr %29, align 16, !tbaa !17
  %30 = getelementptr inbounds i8, ptr %29, i64 16
  store <16 x i8> %step.add34.1, ptr %30, align 16, !tbaa !17
  %index.next37.1 = or i64 %index32, 64
  %vec.ind.next36.1 = add <16 x i8> %vec.ind33, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %step.add34.2 = add <16 x i8> %vec.ind33, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %31 = getelementptr inbounds [50 x i8], ptr %Array, i64 0, i64 %index.next37.1
  store <16 x i8> %vec.ind.next36.1, ptr %31, align 16, !tbaa !17
  %32 = getelementptr inbounds i8, ptr %31, i64 16
  store <16 x i8> %step.add34.2, ptr %32, align 16, !tbaa !17
  %index.next37.2 = or i64 %index32, 96
  %vec.ind.next36.2 = add <16 x i8> %vec.ind33, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %step.add34.3 = add <16 x i8> %vec.ind33, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %33 = getelementptr inbounds [50 x i8], ptr %Array, i64 0, i64 %index.next37.2
  store <16 x i8> %vec.ind.next36.2, ptr %33, align 16, !tbaa !17
  %34 = getelementptr inbounds i8, ptr %33, i64 16
  store <16 x i8> %step.add34.3, ptr %34, align 16, !tbaa !17
  %index.next37.3 = add nuw i64 %index32, 128
  %vec.ind.next36.3 = xor <16 x i8> %vec.ind33, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %niter53.next.3 = add i64 %niter53, 4
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %middle.block23.unr-lcssa, label %vector.body31, !llvm.loop !38

middle.block23.unr-lcssa:                         ; preds = %vector.body31, %vector.ph26
  %index32.unr = phi i64 [ 0, %vector.ph26 ], [ %index.next37.3, %vector.body31 ]
  %vec.ind33.unr = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph26 ], [ %vec.ind.next36.3, %vector.body31 ]
  %lcmp.mod51.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod51.not, label %middle.block23, label %vector.body31.epil

vector.body31.epil:                               ; preds = %middle.block23.unr-lcssa, %vector.body31.epil
  %index32.epil = phi i64 [ %index.next37.epil, %vector.body31.epil ], [ %index32.unr, %middle.block23.unr-lcssa ]
  %vec.ind33.epil = phi <16 x i8> [ %vec.ind.next36.epil, %vector.body31.epil ], [ %vec.ind33.unr, %middle.block23.unr-lcssa ]
  %epil.iter50 = phi i64 [ %epil.iter50.next, %vector.body31.epil ], [ 0, %middle.block23.unr-lcssa ]
  %step.add34.epil = add <16 x i8> %vec.ind33.epil, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %35 = getelementptr inbounds [50 x i8], ptr %Array, i64 0, i64 %index32.epil
  store <16 x i8> %vec.ind33.epil, ptr %35, align 16, !tbaa !17
  %36 = getelementptr inbounds i8, ptr %35, i64 16
  store <16 x i8> %step.add34.epil, ptr %36, align 16, !tbaa !17
  %index.next37.epil = add nuw i64 %index32.epil, 32
  %vec.ind.next36.epil = add <16 x i8> %vec.ind33.epil, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %epil.iter50.next = add i64 %epil.iter50, 1
  %epil.iter50.cmp.not = icmp eq i64 %epil.iter50.next, %xtraiter49
  br i1 %epil.iter50.cmp.not, label %middle.block23, label %vector.body31.epil, !llvm.loop !39

middle.block23:                                   ; preds = %vector.body31.epil, %middle.block23.unr-lcssa
  %cmp.n30 = icmp eq i64 %n.vec28, %conv4.i17
  br i1 %cmp.n30, label %for.end, label %for.body.preheader38

for.body.preheader38:                             ; preds = %for.body.preheader, %middle.block23
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec28, %middle.block23 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader38, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader38 ]
  %conv = trunc i64 %indvars.iv to i8
  %arrayidx = getelementptr inbounds [50 x i8], ptr %Array, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv4.i17
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !40

for.end:                                          ; preds = %for.body, %middle.block23
  call void @_ZN9algorithm10NPNManager18getPermutationsRecEPPciiS1_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef nonnull %call.i, i32 noundef %mul.i.lcssa, i32 noundef %n, ptr noundef nonnull %Array)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %Array) #16
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN9algorithm10NPNManager19initializePracticalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #5 align 2 {
entry:
  %practical = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 7
  %0 = load ptr, ptr %practical, align 8, !tbaa !19
  store i8 1, ptr %0, align 1, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.1, %if.end ]
  %arrayidx2 = getelementptr inbounds [136 x i16], ptr @_ZN9algorithm10NPNManager23rewritePracticalClassesE, i64 0, i64 %indvars.iv
  %1 = load i16, ptr %arrayidx2, align 2, !tbaa !20
  %2 = load ptr, ptr %practical, align 8, !tbaa !19
  %idxprom6 = zext i16 %1 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 %idxprom6
  store i8 1, ptr %arrayidx7, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx2.1 = getelementptr inbounds [136 x i16], ptr @_ZN9algorithm10NPNManager23rewritePracticalClassesE, i64 0, i64 %indvars.iv.next
  %3 = load i16, ptr %arrayidx2.1, align 2, !tbaa !20
  %4 = load ptr, ptr %practical, align 8, !tbaa !19
  %idxprom6.1 = zext i16 %3 to i64
  %arrayidx7.1 = getelementptr inbounds i8, ptr %4, i64 %idxprom6.1
  store i8 1, ptr %arrayidx7.1, align 1, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %5 = icmp eq i64 %indvars.iv.next.1, 135
  br i1 %5, label %for.end, label %if.end, !llvm.loop !22

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN9algorithm10NPNManager13truthPolarizeEjii(ptr nocapture nonnull readnone align 8 %this, i32 noundef %uTruth, i32 noundef %Polarity, i32 noundef %nVars) local_unnamed_addr #4 align 2 {
entry:
  %cmp = icmp slt i32 %nVars, 6
  br i1 %cmp, label %for.cond.preheader, label %cond.false

for.cond.preheader:                               ; preds = %entry
  %cmp220 = icmp sgt i32 %nVars, 0
  br i1 %cmp220, label %for.body, label %for.end

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManager13truthPolarizeEjii) #18
  unreachable

for.body:                                         ; preds = %for.cond.preheader
  %and = and i32 %Polarity, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %and3 = shl i32 %uTruth, 1
  %shl8 = and i32 %and3, -1431655766
  %and6 = lshr i32 %uTruth, 1
  %shr = and i32 %and6, 1431655765
  %or = or i32 %shl8, %shr
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %uTruth.addr.1 = phi i32 [ %or, %if.then ], [ %uTruth, %for.body ]
  %exitcond.not = icmp eq i32 %nVars, 1
  br i1 %exitcond.not, label %for.end, label %for.body.1, !llvm.loop !41

for.body.1:                                       ; preds = %for.inc
  %and.1 = and i32 %Polarity, 2
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.body.1
  %and3.1 = shl i32 %uTruth.addr.1, 2
  %shl8.1 = and i32 %and3.1, -858993460
  %and6.1 = lshr i32 %uTruth.addr.1, 2
  %shr.1 = and i32 %and6.1, 858993459
  %or.1 = or i32 %shl8.1, %shr.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.body.1
  %uTruth.addr.1.1 = phi i32 [ %or.1, %if.then.1 ], [ %uTruth.addr.1, %for.body.1 ]
  %exitcond.not.1 = icmp eq i32 %nVars, 2
  br i1 %exitcond.not.1, label %for.end, label %for.body.2, !llvm.loop !41

for.body.2:                                       ; preds = %for.inc.1
  %and.2 = and i32 %Polarity, 4
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.body.2
  %and3.2 = shl i32 %uTruth.addr.1.1, 4
  %shl8.2 = and i32 %and3.2, -252645136
  %and6.2 = lshr i32 %uTruth.addr.1.1, 4
  %shr.2 = and i32 %and6.2, 252645135
  %or.2 = or i32 %shl8.2, %shr.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.body.2
  %uTruth.addr.1.2 = phi i32 [ %or.2, %if.then.2 ], [ %uTruth.addr.1.1, %for.body.2 ]
  %exitcond.not.2 = icmp eq i32 %nVars, 3
  br i1 %exitcond.not.2, label %for.end, label %for.body.3, !llvm.loop !41

for.body.3:                                       ; preds = %for.inc.2
  %and.3 = and i32 %Polarity, 8
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.body.3
  %and3.3 = shl i32 %uTruth.addr.1.2, 8
  %shl8.3 = and i32 %and3.3, -16711936
  %and6.3 = lshr i32 %uTruth.addr.1.2, 8
  %shr.3 = and i32 %and6.3, 16711935
  %or.3 = or i32 %shl8.3, %shr.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.body.3
  %uTruth.addr.1.3 = phi i32 [ %or.3, %if.then.3 ], [ %uTruth.addr.1.2, %for.body.3 ]
  %exitcond.not.3 = icmp eq i32 %nVars, 4
  br i1 %exitcond.not.3, label %for.end, label %for.body.4, !llvm.loop !41

for.body.4:                                       ; preds = %for.inc.3
  %and.4 = and i32 %Polarity, 16
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %or.4 = call i32 @llvm.fshl.i32(i32 %uTruth.addr.1.3, i32 %uTruth.addr.1.3, i32 16)
  %spec.select = select i1 %tobool.not.4, i32 %uTruth.addr.1.3, i32 %or.4
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.inc.1, %for.inc.2, %for.inc.3, %for.body.4, %for.cond.preheader
  %uTruth.addr.0.lcssa = phi i32 [ %uTruth, %for.cond.preheader ], [ %uTruth.addr.1, %for.inc ], [ %uTruth.addr.1.1, %for.inc.1 ], [ %uTruth.addr.1.2, %for.inc.2 ], [ %uTruth.addr.1.3, %for.inc.3 ], [ %spec.select, %for.body.4 ]
  ret i32 %uTruth.addr.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN9algorithm10NPNManager12truthPermuteEjPcii(ptr nocapture noundef nonnull readnone align 8 dereferenceable(64) %this, i32 noundef %Truth, ptr nocapture noundef readonly %pPerms, i32 noundef %nVars, i32 noundef %fReverse) local_unnamed_addr #4 align 2 {
entry:
  %cmp = icmp slt i32 %nVars, 6
  br i1 %cmp, label %for.body.preheader, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 237, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManager12truthPermuteEjPcii) #18
  unreachable

for.body.preheader:                               ; preds = %entry
  %shl = shl nuw nsw i32 1, %nVars
  %conv = sext i32 %shl to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #17
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul) #17
  %smax = call i32 @llvm.smax.i32(i32 %shl, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  %min.iters.check = icmp ult i32 %smax, 8
  br i1 %min.iters.check, label %for.body.preheader89, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  %0 = add nsw i64 %n.vec, -8
  %1 = lshr exact i64 %0, 3
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 3
  %3 = icmp ult i64 %0, 24
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 4611686018427387900
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph.new ], [ %vec.ind.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, <i32 4, i32 4, i32 4, i32 4>
  %4 = getelementptr inbounds i32, ptr %call, i64 %index
  store <4 x i32> %vec.ind, ptr %4, align 4, !tbaa !24
  %5 = getelementptr inbounds i32, ptr %4, i64 4
  store <4 x i32> %step.add, ptr %5, align 4, !tbaa !24
  %index.next = or i64 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, <i32 8, i32 8, i32 8, i32 8>
  %step.add.1 = add <4 x i32> %vec.ind, <i32 12, i32 12, i32 12, i32 12>
  %6 = getelementptr inbounds i32, ptr %call, i64 %index.next
  store <4 x i32> %vec.ind.next, ptr %6, align 4, !tbaa !24
  %7 = getelementptr inbounds i32, ptr %6, i64 4
  store <4 x i32> %step.add.1, ptr %7, align 4, !tbaa !24
  %index.next.1 = or i64 %index, 16
  %vec.ind.next.1 = add <4 x i32> %vec.ind, <i32 16, i32 16, i32 16, i32 16>
  %step.add.2 = add <4 x i32> %vec.ind, <i32 20, i32 20, i32 20, i32 20>
  %8 = getelementptr inbounds i32, ptr %call, i64 %index.next.1
  store <4 x i32> %vec.ind.next.1, ptr %8, align 4, !tbaa !24
  %9 = getelementptr inbounds i32, ptr %8, i64 4
  store <4 x i32> %step.add.2, ptr %9, align 4, !tbaa !24
  %index.next.2 = or i64 %index, 24
  %vec.ind.next.2 = add <4 x i32> %vec.ind, <i32 24, i32 24, i32 24, i32 24>
  %step.add.3 = add <4 x i32> %vec.ind, <i32 28, i32 28, i32 28, i32 28>
  %10 = getelementptr inbounds i32, ptr %call, i64 %index.next.2
  store <4 x i32> %vec.ind.next.2, ptr %10, align 4, !tbaa !24
  %11 = getelementptr inbounds i32, ptr %10, i64 4
  store <4 x i32> %step.add.3, ptr %11, align 4, !tbaa !24
  %index.next.3 = add nuw i64 %index, 32
  %vec.ind.next.3 = add <4 x i32> %vec.ind, <i32 32, i32 32, i32 32, i32 32>
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !42

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind.unr = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.ind.epil = phi <4 x i32> [ %vec.ind.next.epil, %vector.body.epil ], [ %vec.ind.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %step.add.epil = add <4 x i32> %vec.ind.epil, <i32 4, i32 4, i32 4, i32 4>
  %12 = getelementptr inbounds i32, ptr %call, i64 %index.epil
  store <4 x i32> %vec.ind.epil, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds i32, ptr %12, i64 4
  store <4 x i32> %step.add.epil, ptr %13, align 4, !tbaa !24
  %index.next.epil = add nuw i64 %index.epil, 8
  %vec.ind.next.epil = add <4 x i32> %vec.ind.epil, <i32 8, i32 8, i32 8, i32 8>
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !43

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader89

for.body.preheader89:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader89, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader89 ]
  %arrayidx = getelementptr inbounds i32, ptr %call, i64 %indvars.iv
  %14 = trunc i64 %indvars.iv to i32
  store i32 %14, ptr %arrayidx, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !44

for.end:                                          ; preds = %for.body, %middle.block
  tail call void @llvm.memset.p0.i64(ptr align 4 %call4, i8 0, i64 %mul, i1 false) #16
  %cmp26.i = icmp ne i32 %nVars, 31
  %cmp323.i = icmp sgt i32 %nVars, 0
  %or.cond.i = and i1 %cmp26.i, %cmp323.i
  br i1 %or.cond.i, label %for.cond2.preheader.us.preheader.i, label %_ZN9algorithm10NPNManager15truthPermuteIntEPiiPciS1_.exit

for.cond2.preheader.us.preheader.i:               ; preds = %for.end
  %wide.trip.count34.i = zext i32 %shl to i64
  %wide.trip.count.i = zext i32 %nVars to i64
  %xtraiter90 = and i64 %wide.trip.count.i, 1
  %15 = icmp eq i32 %nVars, 1
  %unroll_iter93 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod92.not = icmp eq i64 %xtraiter90, 0
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.for.inc11_crit_edge.us.i, %for.cond2.preheader.us.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %for.cond2.preheader.us.preheader.i ], [ %indvars.iv.next32.i, %for.cond2.for.inc11_crit_edge.us.i ]
  %arrayidx.us.i = getelementptr inbounds i32, ptr %call, i64 %indvars.iv31.i
  %arrayidx10.us.i = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv31.i
  %16 = load i32, ptr %arrayidx.us.i, align 4, !tbaa !24
  br i1 %15, label %for.cond2.for.inc11_crit_edge.us.i.unr-lcssa, label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.cond2.preheader.us.i, %for.inc.us.i.1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %for.inc.us.i.1 ], [ 0, %for.cond2.preheader.us.i ]
  %niter94 = phi i64 [ %niter94.next.1, %for.inc.us.i.1 ], [ 0, %for.cond2.preheader.us.i ]
  %17 = trunc i64 %indvars.iv.i to i32
  %shl.us.i = shl nuw i32 1, %17
  %and.us.i = and i32 %shl.us.i, %16
  %tobool.not.us.i = icmp eq i32 %and.us.i, 0
  br i1 %tobool.not.us.i, label %for.inc.us.i, label %if.then.us.i

if.then.us.i:                                     ; preds = %for.body4.us.i
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %pPerms, i64 %indvars.iv.i
  %18 = load i8, ptr %arrayidx6.us.i, align 1, !tbaa !17
  %conv722.us.i = zext i8 %18 to i32
  %shl8.us.i = shl nuw i32 1, %conv722.us.i
  %19 = load i32, ptr %arrayidx10.us.i, align 4, !tbaa !24
  %or.us.i = or i32 %shl8.us.i, %19
  store i32 %or.us.i, ptr %arrayidx10.us.i, align 4, !tbaa !24
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %if.then.us.i, %for.body4.us.i
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %20 = trunc i64 %indvars.iv.next.i to i32
  %shl.us.i.1 = shl nuw i32 1, %20
  %and.us.i.1 = and i32 %shl.us.i.1, %16
  %tobool.not.us.i.1 = icmp eq i32 %and.us.i.1, 0
  br i1 %tobool.not.us.i.1, label %for.inc.us.i.1, label %if.then.us.i.1

if.then.us.i.1:                                   ; preds = %for.inc.us.i
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pPerms, i64 %indvars.iv.next.i
  %21 = load i8, ptr %arrayidx6.us.i.1, align 1, !tbaa !17
  %conv722.us.i.1 = zext i8 %21 to i32
  %shl8.us.i.1 = shl nuw i32 1, %conv722.us.i.1
  %22 = load i32, ptr %arrayidx10.us.i, align 4, !tbaa !24
  %or.us.i.1 = or i32 %shl8.us.i.1, %22
  store i32 %or.us.i.1, ptr %arrayidx10.us.i, align 4, !tbaa !24
  br label %for.inc.us.i.1

for.inc.us.i.1:                                   ; preds = %if.then.us.i.1, %for.inc.us.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter94.next.1 = add i64 %niter94, 2
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %for.cond2.for.inc11_crit_edge.us.i.unr-lcssa, label %for.body4.us.i, !llvm.loop !45

for.cond2.for.inc11_crit_edge.us.i.unr-lcssa:     ; preds = %for.inc.us.i.1, %for.cond2.preheader.us.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.cond2.preheader.us.i ], [ %indvars.iv.next.i.1, %for.inc.us.i.1 ]
  br i1 %lcmp.mod92.not, label %for.cond2.for.inc11_crit_edge.us.i, label %for.body4.us.i.epil

for.body4.us.i.epil:                              ; preds = %for.cond2.for.inc11_crit_edge.us.i.unr-lcssa
  %23 = trunc i64 %indvars.iv.i.unr to i32
  %shl.us.i.epil = shl nuw i32 1, %23
  %and.us.i.epil = and i32 %shl.us.i.epil, %16
  %tobool.not.us.i.epil = icmp eq i32 %and.us.i.epil, 0
  br i1 %tobool.not.us.i.epil, label %for.cond2.for.inc11_crit_edge.us.i, label %if.then.us.i.epil

if.then.us.i.epil:                                ; preds = %for.body4.us.i.epil
  %arrayidx6.us.i.epil = getelementptr inbounds i8, ptr %pPerms, i64 %indvars.iv.i.unr
  %24 = load i8, ptr %arrayidx6.us.i.epil, align 1, !tbaa !17
  %conv722.us.i.epil = zext i8 %24 to i32
  %shl8.us.i.epil = shl nuw i32 1, %conv722.us.i.epil
  %25 = load i32, ptr %arrayidx10.us.i, align 4, !tbaa !24
  %or.us.i.epil = or i32 %shl8.us.i.epil, %25
  store i32 %or.us.i.epil, ptr %arrayidx10.us.i, align 4, !tbaa !24
  br label %for.cond2.for.inc11_crit_edge.us.i

for.cond2.for.inc11_crit_edge.us.i:               ; preds = %for.body4.us.i.epil, %if.then.us.i.epil, %for.cond2.for.inc11_crit_edge.us.i.unr-lcssa
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %_ZN9algorithm10NPNManager15truthPermuteIntEPiiPciS1_.exit, label %for.cond2.preheader.us.i, !llvm.loop !25

_ZN9algorithm10NPNManager15truthPermuteIntEPiiPciS1_.exit: ; preds = %for.cond2.for.inc11_crit_edge.us.i, %for.end
  %tobool.not = icmp eq i32 %fReverse, 0
  %cmp1966.not = icmp eq i32 %nVars, 31
  br i1 %tobool.not, label %for.cond18.preheader, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %_ZN9algorithm10NPNManager15truthPermuteIntEPiiPciS1_.exit
  br i1 %cmp1966.not, label %if.end33, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.cond6.preheader
  %xtraiter95 = and i64 %wide.trip.count, 1
  %26 = icmp slt i32 %shl, 2
  br i1 %26, label %if.end33.loopexit88.unr-lcssa, label %for.body8.preheader.new

for.body8.preheader.new:                          ; preds = %for.body8.preheader
  %unroll_iter99 = and i64 %wide.trip.count, 2147483646
  br label %for.body8

for.cond18.preheader:                             ; preds = %_ZN9algorithm10NPNManager15truthPermuteIntEPiiPciS1_.exit
  br i1 %cmp1966.not, label %if.end33, label %for.body20.preheader

for.body20.preheader:                             ; preds = %for.cond18.preheader
  %xtraiter101 = and i64 %wide.trip.count, 1
  %27 = icmp slt i32 %shl, 2
  br i1 %27, label %if.end33.loopexit.unr-lcssa, label %for.body20.preheader.new

for.body20.preheader.new:                         ; preds = %for.body20.preheader
  %unroll_iter105 = and i64 %wide.trip.count, 2147483646
  br label %for.body20

for.body8:                                        ; preds = %for.inc15.1, %for.body8.preheader.new
  %indvars.iv73 = phi i64 [ 0, %for.body8.preheader.new ], [ %indvars.iv.next74.1, %for.inc15.1 ]
  %Result.063 = phi i32 [ 0, %for.body8.preheader.new ], [ %Result.1.1, %for.inc15.1 ]
  %niter100 = phi i64 [ 0, %for.body8.preheader.new ], [ %niter100.next.1, %for.inc15.1 ]
  %arrayidx10 = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv73
  %28 = load i32, ptr %arrayidx10, align 4, !tbaa !24
  %shl11 = shl nuw i32 1, %28
  %and = and i32 %shl11, %Truth
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.inc15, label %if.then13

if.then13:                                        ; preds = %for.body8
  %29 = trunc i64 %indvars.iv73 to i32
  %shl14 = shl nuw i32 1, %29
  %or = or i32 %shl14, %Result.063
  br label %for.inc15

for.inc15:                                        ; preds = %for.body8, %if.then13
  %Result.1 = phi i32 [ %or, %if.then13 ], [ %Result.063, %for.body8 ]
  %indvars.iv.next74 = or i64 %indvars.iv73, 1
  %arrayidx10.1 = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv.next74
  %30 = load i32, ptr %arrayidx10.1, align 4, !tbaa !24
  %shl11.1 = shl nuw i32 1, %30
  %and.1 = and i32 %shl11.1, %Truth
  %tobool12.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool12.not.1, label %for.inc15.1, label %if.then13.1

if.then13.1:                                      ; preds = %for.inc15
  %31 = trunc i64 %indvars.iv.next74 to i32
  %shl14.1 = shl nuw i32 1, %31
  %or.1 = or i32 %shl14.1, %Result.1
  br label %for.inc15.1

for.inc15.1:                                      ; preds = %if.then13.1, %for.inc15
  %Result.1.1 = phi i32 [ %or.1, %if.then13.1 ], [ %Result.1, %for.inc15 ]
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2
  %niter100.next.1 = add i64 %niter100, 2
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %if.end33.loopexit88.unr-lcssa, label %for.body8, !llvm.loop !46

for.body20:                                       ; preds = %for.inc30.1, %for.body20.preheader.new
  %indvars.iv79 = phi i64 [ 0, %for.body20.preheader.new ], [ %indvars.iv.next80.1, %for.inc30.1 ]
  %Result.267 = phi i32 [ 0, %for.body20.preheader.new ], [ %Result.3.1, %for.inc30.1 ]
  %niter106 = phi i64 [ 0, %for.body20.preheader.new ], [ %niter106.next.1, %for.inc30.1 ]
  %32 = trunc i64 %indvars.iv79 to i32
  %shl21 = shl nuw i32 1, %32
  %and22 = and i32 %shl21, %Truth
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.inc30, label %if.then24

if.then24:                                        ; preds = %for.body20
  %arrayidx26 = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv79
  %33 = load i32, ptr %arrayidx26, align 4, !tbaa !24
  %shl27 = shl nuw i32 1, %33
  %or28 = or i32 %shl27, %Result.267
  br label %for.inc30

for.inc30:                                        ; preds = %for.body20, %if.then24
  %Result.3 = phi i32 [ %or28, %if.then24 ], [ %Result.267, %for.body20 ]
  %indvars.iv.next80 = or i64 %indvars.iv79, 1
  %34 = trunc i64 %indvars.iv.next80 to i32
  %shl21.1 = shl nuw i32 1, %34
  %and22.1 = and i32 %shl21.1, %Truth
  %tobool23.not.1 = icmp eq i32 %and22.1, 0
  br i1 %tobool23.not.1, label %for.inc30.1, label %if.then24.1

if.then24.1:                                      ; preds = %for.inc30
  %arrayidx26.1 = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv.next80
  %35 = load i32, ptr %arrayidx26.1, align 4, !tbaa !24
  %shl27.1 = shl nuw i32 1, %35
  %or28.1 = or i32 %shl27.1, %Result.3
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %if.then24.1, %for.inc30
  %Result.3.1 = phi i32 [ %or28.1, %if.then24.1 ], [ %Result.3, %for.inc30 ]
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2
  %niter106.next.1 = add i64 %niter106, 2
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %if.end33.loopexit.unr-lcssa, label %for.body20, !llvm.loop !47

if.end33.loopexit.unr-lcssa:                      ; preds = %for.inc30.1, %for.body20.preheader
  %Result.3.lcssa.ph = phi i32 [ undef, %for.body20.preheader ], [ %Result.3.1, %for.inc30.1 ]
  %indvars.iv79.unr = phi i64 [ 0, %for.body20.preheader ], [ %indvars.iv.next80.1, %for.inc30.1 ]
  %Result.267.unr = phi i32 [ 0, %for.body20.preheader ], [ %Result.3.1, %for.inc30.1 ]
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %if.end33, label %for.body20.epil

for.body20.epil:                                  ; preds = %if.end33.loopexit.unr-lcssa
  %36 = trunc i64 %indvars.iv79.unr to i32
  %shl21.epil = shl nuw i32 1, %36
  %and22.epil = and i32 %shl21.epil, %Truth
  %tobool23.not.epil = icmp eq i32 %and22.epil, 0
  br i1 %tobool23.not.epil, label %if.end33, label %if.then24.epil

if.then24.epil:                                   ; preds = %for.body20.epil
  %arrayidx26.epil = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv79.unr
  %37 = load i32, ptr %arrayidx26.epil, align 4, !tbaa !24
  %shl27.epil = shl nuw i32 1, %37
  %or28.epil = or i32 %shl27.epil, %Result.267.unr
  br label %if.end33

if.end33.loopexit88.unr-lcssa:                    ; preds = %for.inc15.1, %for.body8.preheader
  %Result.1.lcssa.ph = phi i32 [ undef, %for.body8.preheader ], [ %Result.1.1, %for.inc15.1 ]
  %indvars.iv73.unr = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next74.1, %for.inc15.1 ]
  %Result.063.unr = phi i32 [ 0, %for.body8.preheader ], [ %Result.1.1, %for.inc15.1 ]
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %if.end33, label %for.body8.epil

for.body8.epil:                                   ; preds = %if.end33.loopexit88.unr-lcssa
  %arrayidx10.epil = getelementptr inbounds i32, ptr %call4, i64 %indvars.iv73.unr
  %38 = load i32, ptr %arrayidx10.epil, align 4, !tbaa !24
  %shl11.epil = shl nuw i32 1, %38
  %and.epil = and i32 %shl11.epil, %Truth
  %tobool12.not.epil = icmp eq i32 %and.epil, 0
  br i1 %tobool12.not.epil, label %if.end33, label %if.then13.epil

if.then13.epil:                                   ; preds = %for.body8.epil
  %39 = trunc i64 %indvars.iv73.unr to i32
  %shl14.epil = shl nuw i32 1, %39
  %or.epil = or i32 %shl14.epil, %Result.063.unr
  br label %if.end33

if.end33:                                         ; preds = %if.end33.loopexit88.unr-lcssa, %if.then13.epil, %for.body8.epil, %if.end33.loopexit.unr-lcssa, %if.then24.epil, %for.body20.epil, %for.cond6.preheader, %for.cond18.preheader
  %Result.4 = phi i32 [ 0, %for.cond18.preheader ], [ 0, %for.cond6.preheader ], [ %Result.3.lcssa.ph, %if.end33.loopexit.unr-lcssa ], [ %or28.epil, %if.then24.epil ], [ %Result.267.unr, %for.body20.epil ], [ %Result.1.lcssa.ph, %if.end33.loopexit88.unr-lcssa ], [ %or.epil, %if.then13.epil ], [ %Result.063.unr, %for.body8.epil ]
  tail call void @free(ptr noundef %call) #16
  tail call void @free(ptr noundef %call4) #16
  ret i32 %Result.4
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @_ZN9algorithm10NPNManagerD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) unnamed_addr #7 align 2 {
entry:
  %phases = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %phases, align 8, !tbaa !12
  tail call void @free(ptr noundef %0) #16
  %perms = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %perms, align 8, !tbaa !13
  tail call void @free(ptr noundef %1) #16
  %map = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 3
  %2 = load ptr, ptr %map, align 8, !tbaa !14
  tail call void @free(ptr noundef %2) #16
  %mapInv = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 4
  %3 = load ptr, ptr %mapInv, align 8, !tbaa !15
  tail call void @free(ptr noundef %3) #16
  %canons = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 5
  %4 = load ptr, ptr %canons, align 8, !tbaa !11
  tail call void @free(ptr noundef %4) #16
  %perms4 = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 6
  %5 = load ptr, ptr %perms4, align 8, !tbaa !18
  tail call void @free(ptr noundef %5) #16
  %practical = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 7
  %6 = load ptr, ptr %practical, align 8, !tbaa !19
  tail call void @free(ptr noundef %6) #16
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noundef i32 @_ZN9algorithm10NPNManager9factorialEi(ptr nocapture nonnull readnone align 8 %this, i32 noundef %n) local_unnamed_addr #9 align 2 {
entry:
  %cmp.not5 = icmp slt i32 %n, 1
  br i1 %cmp.not5, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %for.body.preheader10, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i32 %n, -8
  %ind.end = or i32 %n.vec, 1
  %0 = add i32 %n.vec, -8
  %1 = lshr exact i32 %0, 3
  %2 = add nuw nsw i32 %1, 1
  %xtraiter = and i32 %2, 3
  %3 = icmp ult i32 %0, 24
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i32 %2, 1073741820
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph.new ], [ %vec.ind.next.3, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph.new ], [ %10, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph.new ], [ %11, %vector.body ]
  %niter = phi i32 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, <i32 4, i32 4, i32 4, i32 4>
  %4 = mul <4 x i32> %vec.ind, %vec.phi
  %5 = mul <4 x i32> %step.add, %vec.phi9
  %vec.ind.next = add <4 x i32> %vec.ind, <i32 8, i32 8, i32 8, i32 8>
  %step.add.1 = add <4 x i32> %vec.ind, <i32 12, i32 12, i32 12, i32 12>
  %6 = mul <4 x i32> %vec.ind.next, %4
  %7 = mul <4 x i32> %step.add.1, %5
  %vec.ind.next.1 = add <4 x i32> %vec.ind, <i32 16, i32 16, i32 16, i32 16>
  %step.add.2 = add <4 x i32> %vec.ind, <i32 20, i32 20, i32 20, i32 20>
  %8 = mul <4 x i32> %vec.ind.next.1, %6
  %9 = mul <4 x i32> %step.add.2, %7
  %vec.ind.next.2 = add <4 x i32> %vec.ind, <i32 24, i32 24, i32 24, i32 24>
  %step.add.3 = add <4 x i32> %vec.ind, <i32 28, i32 28, i32 28, i32 28>
  %10 = mul <4 x i32> %vec.ind.next.2, %8
  %11 = mul <4 x i32> %step.add.3, %9
  %vec.ind.next.3 = add <4 x i32> %vec.ind, <i32 32, i32 32, i32 32, i32 32>
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !48

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa11.ph = phi <4 x i32> [ undef, %vector.ph ], [ %10, %vector.body ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %11, %vector.body ]
  %vec.ind.unr = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %vec.phi.unr = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %10, %vector.body ]
  %vec.phi9.unr = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %11, %vector.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %vec.ind.epil = phi <4 x i32> [ %vec.ind.next.epil, %vector.body.epil ], [ %vec.ind.unr, %middle.block.unr-lcssa ]
  %vec.phi.epil = phi <4 x i32> [ %12, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi9.epil = phi <4 x i32> [ %13, %vector.body.epil ], [ %vec.phi9.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %step.add.epil = add <4 x i32> %vec.ind.epil, <i32 4, i32 4, i32 4, i32 4>
  %12 = mul <4 x i32> %vec.ind.epil, %vec.phi.epil
  %13 = mul <4 x i32> %step.add.epil, %vec.phi9.epil
  %vec.ind.next.epil = add <4 x i32> %vec.ind.epil, <i32 8, i32 8, i32 8, i32 8>
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !49

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa11 = phi <4 x i32> [ %.lcssa11.ph, %middle.block.unr-lcssa ], [ %12, %vector.body.epil ]
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %13, %vector.body.epil ]
  %bin.rdx = mul <4 x i32> %.lcssa, %.lcssa11
  %14 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %n.vec, %n
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader10

for.body.preheader10:                             ; preds = %for.body.preheader, %middle.block
  %i.07.ph = phi i32 [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %res.06.ph = phi i32 [ 1, %for.body.preheader ], [ %14, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  %res.0.lcssa = phi i32 [ 1, %entry ], [ %14, %middle.block ], [ %mul, %for.body ]
  ret i32 %res.0.lcssa

for.body:                                         ; preds = %for.body.preheader10, %for.body
  %i.07 = phi i32 [ %inc, %for.body ], [ %i.07.ph, %for.body.preheader10 ]
  %res.06 = phi i32 [ %mul, %for.body ], [ %res.06.ph, %for.body.preheader10 ]
  %mul = mul nsw i32 %i.07, %res.06
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %i.07, %n
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !50
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager10arrayAllocEiii(ptr nocapture nonnull readnone align 8 %this, i32 noundef %nCols, i32 noundef %nRows, i32 noundef %Size) local_unnamed_addr #4 align 2 {
entry:
  %cmp = icmp sgt i32 %nCols, 0
  %cmp2 = icmp sgt i32 %nRows, 0
  %or.cond = and i1 %cmp, %cmp2
  %cmp3 = icmp sgt i32 %Size, 0
  %or.cond15 = and i1 %or.cond, %cmp3
  br i1 %or.cond15, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10NPNManager10arrayAllocEiii) #18
  unreachable

cond.end:                                         ; preds = %entry
  %conv30 = zext i32 %nCols to i64
  %mul = mul i32 %Size, %nRows
  %conv4 = sext i32 %mul to i64
  %add = add nsw i64 %conv4, 8
  %mul5 = mul nsw i64 %add, %conv30
  %call = tail call noalias ptr @malloc(i64 noundef %mul5) #17
  %mul8 = shl nuw nsw i64 %conv30, 3
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %mul8
  store ptr %add.ptr, ptr %call, align 8, !tbaa !16
  %cmp931 = icmp ugt i32 %nCols, 1
  br i1 %cmp931, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %cond.end
  %0 = add nsw i64 %conv30, -1
  %1 = add nsw i64 %conv30, -2
  %xtraiter = and i64 %0, 3
  %2 = icmp ult i64 %1, 3
  br i1 %2, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %0, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 1, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %3 = trunc i64 %indvars.iv to i32
  %mul12 = mul i32 %mul, %3
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %arrayidx14 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv
  store ptr %add.ptr13, ptr %arrayidx14, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = trunc i64 %indvars.iv.next to i32
  %mul12.1 = mul i32 %mul, %4
  %idx.ext.1 = sext i32 %mul12.1 to i64
  %add.ptr13.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.1
  %arrayidx14.1 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.next
  store ptr %add.ptr13.1, ptr %arrayidx14.1, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %5 = trunc i64 %indvars.iv.next.1 to i32
  %mul12.2 = mul i32 %mul, %5
  %idx.ext.2 = sext i32 %mul12.2 to i64
  %add.ptr13.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.2
  %arrayidx14.2 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.next.1
  store ptr %add.ptr13.2, ptr %arrayidx14.2, align 8, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %6 = trunc i64 %indvars.iv.next.2 to i32
  %mul12.3 = mul i32 %mul, %6
  %idx.ext.3 = sext i32 %mul12.3 to i64
  %add.ptr13.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.3
  %arrayidx14.3 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.next.2
  store ptr %add.ptr13.3, ptr %arrayidx14.3, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !36

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %7 = trunc i64 %indvars.iv.epil to i32
  %mul12.epil = mul i32 %mul, %7
  %idx.ext.epil = sext i32 %mul12.epil to i64
  %add.ptr13.epil = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.epil
  %arrayidx14.epil = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.epil
  store ptr %add.ptr13.epil, ptr %arrayidx14.epil, align 8, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !51

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %cond.end
  ret ptr %call
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_ZN9algorithm10NPNManager18getPermutationsRecEPPciiS1_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(64) %this, ptr nocapture noundef readonly %pRes, i32 noundef %nFact, i32 noundef %n, ptr nocapture noundef %Array) local_unnamed_addr #10 align 2 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %Array, align 1, !tbaa !17
  %1 = load ptr, ptr %pRes, align 8, !tbaa !16
  store i8 %0, ptr %1, align 1, !tbaa !17
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %nFact, %n
  %sub = add nsw i32 %n, -1
  %cmp478 = icmp sgt i32 %n, 0
  br i1 %cmp478, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %idxprom698 = zext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %Array, i64 %idxprom698
  %cmp1676 = icmp sgt i32 %div, 0
  br i1 %cmp1676, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %2 = sext i32 %div to i64
  %wide.trip.count = zext i32 %n to i64
  %.pre = load i8, ptr %arrayidx7, align 1, !tbaa !17
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %3 = zext i32 %div to i64
  %wide.trip.count94 = zext i32 %n to i64
  %.pre96 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  %wide.trip.count87 = zext i32 %div to i64
  %4 = add nsw i64 %wide.trip.count87, -1
  %5 = add nsw i64 %wide.trip.count87, -2
  %exitcond88.not103 = icmp eq i32 %div, 1
  %xtraiter = and i64 %4, 3
  %6 = icmp ult i64 %5, 3
  %unroll_iter = and i64 %4, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond15.for.end_crit_edge.us
  %7 = phi i8 [ %.pre96, %for.body.us.preheader ], [ %17, %for.cond15.for.end_crit_edge.us ]
  %indvars.iv89 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next90, %for.cond15.for.end_crit_edge.us ]
  %arrayidx5.us = getelementptr inbounds i8, ptr %Array, i64 %indvars.iv89
  %8 = load i8, ptr %arrayidx5.us, align 1, !tbaa !17
  store i8 %7, ptr %arrayidx5.us, align 1, !tbaa !17
  store i8 %8, ptr %arrayidx7, align 1, !tbaa !17
  %9 = sub nsw i64 %idxprom698, %indvars.iv89
  %10 = mul nsw i64 %9, %3
  %add.ptr.us = getelementptr inbounds ptr, ptr %pRes, i64 %10
  %11 = load ptr, ptr %add.ptr.us, align 8, !tbaa !16
  %arrayidx23.us102 = getelementptr inbounds i8, ptr %11, i64 %idxprom698
  store i8 %8, ptr %arrayidx23.us102, align 1, !tbaa !17
  br i1 %exitcond88.not103, label %for.cond15.for.end_crit_edge.us, label %for.body17.us.for.body17.us_crit_edge.preheader, !llvm.loop !52

for.body17.us.for.body17.us_crit_edge.preheader:  ; preds = %for.body.us
  br i1 %6, label %for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa, label %for.body17.us.for.body17.us_crit_edge

for.body17.us.for.body17.us_crit_edge:            ; preds = %for.body17.us.for.body17.us_crit_edge.preheader, %for.body17.us.for.body17.us_crit_edge
  %indvars.iv.next85104 = phi i64 [ %indvars.iv.next85.3, %for.body17.us.for.body17.us_crit_edge ], [ 1, %for.body17.us.for.body17.us_crit_edge.preheader ]
  %niter = phi i64 [ %niter.next.3, %for.body17.us.for.body17.us_crit_edge ], [ 0, %for.body17.us.for.body17.us_crit_edge.preheader ]
  %.pre97 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  %arrayidx21.us = getelementptr inbounds ptr, ptr %add.ptr.us, i64 %indvars.iv.next85104
  %12 = load ptr, ptr %arrayidx21.us, align 8, !tbaa !16
  %arrayidx23.us = getelementptr inbounds i8, ptr %12, i64 %idxprom698
  store i8 %.pre97, ptr %arrayidx23.us, align 1, !tbaa !17
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv.next85104, 1
  %.pre97.1 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  %arrayidx21.us.1 = getelementptr inbounds ptr, ptr %add.ptr.us, i64 %indvars.iv.next85
  %13 = load ptr, ptr %arrayidx21.us.1, align 8, !tbaa !16
  %arrayidx23.us.1 = getelementptr inbounds i8, ptr %13, i64 %idxprom698
  store i8 %.pre97.1, ptr %arrayidx23.us.1, align 1, !tbaa !17
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv.next85104, 2
  %.pre97.2 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  %arrayidx21.us.2 = getelementptr inbounds ptr, ptr %add.ptr.us, i64 %indvars.iv.next85.1
  %14 = load ptr, ptr %arrayidx21.us.2, align 8, !tbaa !16
  %arrayidx23.us.2 = getelementptr inbounds i8, ptr %14, i64 %idxprom698
  store i8 %.pre97.2, ptr %arrayidx23.us.2, align 1, !tbaa !17
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv.next85104, 3
  %.pre97.3 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  %arrayidx21.us.3 = getelementptr inbounds ptr, ptr %add.ptr.us, i64 %indvars.iv.next85.2
  %15 = load ptr, ptr %arrayidx21.us.3, align 8, !tbaa !16
  %arrayidx23.us.3 = getelementptr inbounds i8, ptr %15, i64 %idxprom698
  store i8 %.pre97.3, ptr %arrayidx23.us.3, align 1, !tbaa !17
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv.next85104, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa, label %for.body17.us.for.body17.us_crit_edge, !llvm.loop !52

for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa: ; preds = %for.body17.us.for.body17.us_crit_edge, %for.body17.us.for.body17.us_crit_edge.preheader
  %indvars.iv.next85104.unr = phi i64 [ 1, %for.body17.us.for.body17.us_crit_edge.preheader ], [ %indvars.iv.next85.3, %for.body17.us.for.body17.us_crit_edge ]
  br i1 %lcmp.mod.not, label %for.cond15.for.end_crit_edge.us, label %for.body17.us.for.body17.us_crit_edge.epil

for.body17.us.for.body17.us_crit_edge.epil:       ; preds = %for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa, %for.body17.us.for.body17.us_crit_edge.epil
  %indvars.iv.next85104.epil = phi i64 [ %indvars.iv.next85.epil, %for.body17.us.for.body17.us_crit_edge.epil ], [ %indvars.iv.next85104.unr, %for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body17.us.for.body17.us_crit_edge.epil ], [ 0, %for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa ]
  %.pre97.epil = load i8, ptr %arrayidx7, align 1, !tbaa !17
  %arrayidx21.us.epil = getelementptr inbounds ptr, ptr %add.ptr.us, i64 %indvars.iv.next85104.epil
  %16 = load ptr, ptr %arrayidx21.us.epil, align 8, !tbaa !16
  %arrayidx23.us.epil = getelementptr inbounds i8, ptr %16, i64 %idxprom698
  store i8 %.pre97.epil, ptr %arrayidx23.us.epil, align 1, !tbaa !17
  %indvars.iv.next85.epil = add nuw nsw i64 %indvars.iv.next85104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond15.for.end_crit_edge.us, label %for.body17.us.for.body17.us_crit_edge.epil, !llvm.loop !53

for.cond15.for.end_crit_edge.us:                  ; preds = %for.cond15.for.end_crit_edge.us.loopexit.unr-lcssa, %for.body17.us.for.body17.us_crit_edge.epil, %for.body.us
  tail call void @_ZN9algorithm10NPNManager18getPermutationsRecEPPciiS1_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef nonnull %add.ptr.us, i32 noundef %div, i32 noundef %sub, ptr noundef nonnull %Array)
  %17 = load i8, ptr %arrayidx5.us, align 1, !tbaa !17
  %18 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  store i8 %18, ptr %arrayidx5.us, align 1, !tbaa !17
  store i8 %17, ptr %arrayidx7, align 1, !tbaa !17
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count94
  br i1 %exitcond95.not, label %cleanup, label %for.body.us, !llvm.loop !54

for.body:                                         ; preds = %for.body.preheader, %for.body
  %19 = phi i8 [ %.pre, %for.body.preheader ], [ %23, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx5 = getelementptr inbounds i8, ptr %Array, i64 %indvars.iv
  %20 = load i8, ptr %arrayidx5, align 1, !tbaa !17
  store i8 %19, ptr %arrayidx5, align 1, !tbaa !17
  store i8 %20, ptr %arrayidx7, align 1, !tbaa !17
  %21 = sub nsw i64 %idxprom698, %indvars.iv
  %22 = mul nsw i64 %21, %2
  %add.ptr = getelementptr inbounds ptr, ptr %pRes, i64 %22
  tail call void @_ZN9algorithm10NPNManager18getPermutationsRecEPPciiS1_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %add.ptr, i32 noundef %div, i32 noundef %sub, ptr noundef nonnull %Array)
  %23 = load i8, ptr %arrayidx5, align 1, !tbaa !17
  %24 = load i8, ptr %arrayidx7, align 1, !tbaa !17
  store i8 %24, ptr %arrayidx5, align 1, !tbaa !17
  store i8 %23, ptr %arrayidx7, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !54

cleanup:                                          ; preds = %for.body, %for.cond15.for.end_crit_edge.us, %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind uwtable
define dso_local void @_ZN9algorithm10NPNManager15truthPermuteIntEPiiPciS1_(ptr nocapture nonnull readnone align 8 %this, ptr nocapture noundef readonly %pMints, i32 noundef %nMints, ptr nocapture noundef readonly %pPerm, i32 noundef %nVars, ptr nocapture noundef %pMintsP) local_unnamed_addr #11 align 2 {
entry:
  %conv = sext i32 %nMints to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %pMintsP, i8 0, i64 %mul, i1 false)
  %cmp26 = icmp sgt i32 %nMints, 0
  %cmp323 = icmp sgt i32 %nVars, 0
  %or.cond = and i1 %cmp26, %cmp323
  br i1 %or.cond, label %for.cond2.preheader.us.preheader, label %for.end13

for.cond2.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count34 = zext i32 %nMints to i64
  %wide.trip.count = zext i32 %nVars to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %nVars, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond2.preheader.us

for.cond2.preheader.us:                           ; preds = %for.cond2.preheader.us.preheader, %for.cond2.for.inc11_crit_edge.us
  %indvars.iv31 = phi i64 [ 0, %for.cond2.preheader.us.preheader ], [ %indvars.iv.next32, %for.cond2.for.inc11_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds i32, ptr %pMints, i64 %indvars.iv31
  %arrayidx10.us = getelementptr inbounds i32, ptr %pMintsP, i64 %indvars.iv31
  br i1 %0, label %for.cond2.for.inc11_crit_edge.us.unr-lcssa, label %for.body4.us

for.body4.us:                                     ; preds = %for.cond2.preheader.us, %for.inc.us.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.inc.us.1 ], [ 0, %for.cond2.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %for.inc.us.1 ], [ 0, %for.cond2.preheader.us ]
  %1 = load i32, ptr %arrayidx.us, align 4, !tbaa !24
  %2 = trunc i64 %indvars.iv to i32
  %shl.us = shl nuw i32 1, %2
  %and.us = and i32 %1, %shl.us
  %tobool.not.us = icmp eq i32 %and.us, 0
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx6.us = getelementptr inbounds i8, ptr %pPerm, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx6.us, align 1, !tbaa !17
  %conv722.us = zext i8 %3 to i32
  %shl8.us = shl nuw i32 1, %conv722.us
  %4 = load i32, ptr %arrayidx10.us, align 4, !tbaa !24
  %or.us = or i32 %shl8.us, %4
  store i32 %or.us, ptr %arrayidx10.us, align 4, !tbaa !24
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = or i64 %indvars.iv, 1
  %5 = load i32, ptr %arrayidx.us, align 4, !tbaa !24
  %6 = trunc i64 %indvars.iv.next to i32
  %shl.us.1 = shl nuw i32 1, %6
  %and.us.1 = and i32 %5, %shl.us.1
  %tobool.not.us.1 = icmp eq i32 %and.us.1, 0
  br i1 %tobool.not.us.1, label %for.inc.us.1, label %if.then.us.1

if.then.us.1:                                     ; preds = %for.inc.us
  %arrayidx6.us.1 = getelementptr inbounds i8, ptr %pPerm, i64 %indvars.iv.next
  %7 = load i8, ptr %arrayidx6.us.1, align 1, !tbaa !17
  %conv722.us.1 = zext i8 %7 to i32
  %shl8.us.1 = shl nuw i32 1, %conv722.us.1
  %8 = load i32, ptr %arrayidx10.us, align 4, !tbaa !24
  %or.us.1 = or i32 %shl8.us.1, %8
  store i32 %or.us.1, ptr %arrayidx10.us, align 4, !tbaa !24
  br label %for.inc.us.1

for.inc.us.1:                                     ; preds = %if.then.us.1, %for.inc.us
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond2.for.inc11_crit_edge.us.unr-lcssa, label %for.body4.us, !llvm.loop !45

for.cond2.for.inc11_crit_edge.us.unr-lcssa:       ; preds = %for.inc.us.1, %for.cond2.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond2.preheader.us ], [ %indvars.iv.next.1, %for.inc.us.1 ]
  br i1 %lcmp.mod.not, label %for.cond2.for.inc11_crit_edge.us, label %for.body4.us.epil

for.body4.us.epil:                                ; preds = %for.cond2.for.inc11_crit_edge.us.unr-lcssa
  %9 = load i32, ptr %arrayidx.us, align 4, !tbaa !24
  %10 = trunc i64 %indvars.iv.unr to i32
  %shl.us.epil = shl nuw i32 1, %10
  %and.us.epil = and i32 %9, %shl.us.epil
  %tobool.not.us.epil = icmp eq i32 %and.us.epil, 0
  br i1 %tobool.not.us.epil, label %for.cond2.for.inc11_crit_edge.us, label %if.then.us.epil

if.then.us.epil:                                  ; preds = %for.body4.us.epil
  %arrayidx6.us.epil = getelementptr inbounds i8, ptr %pPerm, i64 %indvars.iv.unr
  %11 = load i8, ptr %arrayidx6.us.epil, align 1, !tbaa !17
  %conv722.us.epil = zext i8 %11 to i32
  %shl8.us.epil = shl nuw i32 1, %conv722.us.epil
  %12 = load i32, ptr %arrayidx10.us, align 4, !tbaa !24
  %or.us.epil = or i32 %shl8.us.epil, %12
  store i32 %or.us.epil, ptr %arrayidx10.us, align 4, !tbaa !24
  br label %for.cond2.for.inc11_crit_edge.us

for.cond2.for.inc11_crit_edge.us:                 ; preds = %for.body4.us.epil, %if.then.us.epil, %for.cond2.for.inc11_crit_edge.us.unr-lcssa
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end13, label %for.cond2.preheader.us, !llvm.loop !25

for.end13:                                        ; preds = %for.cond2.for.inc11_crit_edge.us, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef i32 @_ZN9algorithm10NPNManager9getNFuncsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %0 = load i32, ptr %this, align 8, !tbaa !5
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager9getCanonsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %canons = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %canons, align 8, !tbaa !11
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager9getPhasesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %phases = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %phases, align 8, !tbaa !12
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager8getPermsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %perms = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %perms, align 8, !tbaa !13
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager12getPracticalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %practical = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 7
  %0 = load ptr, ptr %practical, align 8, !tbaa !19
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager6getMapEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %map = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %map, align 8, !tbaa !14
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager9getMapInvEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %mapInv = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 4
  %0 = load ptr, ptr %mapInv, align 8, !tbaa !15
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZN9algorithm10NPNManager9getPerms4Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %perms4 = getelementptr inbounds %"class.algorithm::NPNManager", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %perms4, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSN9algorithm10NPNManagerE", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 40}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !10, i64 16}
!14 = !{!6, !10, i64 24}
!15 = !{!6, !10, i64 32}
!16 = !{!10, !10, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!6, !10, i64 48}
!19 = !{!6, !10, i64 56}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !8, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23, !31}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !23, !35, !31}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !23, !31}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !23, !35, !31}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23, !31}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !23, !35, !31}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23, !31}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !23, !35, !31}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !23}
