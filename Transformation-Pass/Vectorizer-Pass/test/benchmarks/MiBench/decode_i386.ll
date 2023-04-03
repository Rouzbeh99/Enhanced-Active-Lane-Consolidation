; ModuleID = 'mpglib/decode_i386.c'
source_filename = "mpglib/decode_i386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@gmp = external local_unnamed_addr global ptr, align 8
@decwin = external local_unnamed_addr global [544 x double], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @synth_1to1_mono(ptr noundef %bandPtr, ptr nocapture noundef writeonly %samples, ptr nocapture noundef %pnt) local_unnamed_addr #0 {
entry:
  %samples_tmp = alloca [64 x i16], align 16
  %pnt1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %samples_tmp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pnt1) #3
  store i32 0, ptr %pnt1, align 4, !tbaa !5
  %call = call i32 @synth_1to1(ptr noundef %bandPtr, i32 noundef 0, ptr noundef nonnull %samples_tmp, ptr noundef nonnull %pnt1)
  %0 = load i32, ptr %pnt, align 4, !tbaa !5
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %samples, i64 %idx.ext
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %samples.addr.011 = phi ptr [ %add.ptr, %entry ], [ %add.ptr2, %for.body ]
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %tmp1.09 = phi ptr [ %samples_tmp, %entry ], [ %add.ptr3, %for.body ]
  %1 = load i16, ptr %tmp1.09, align 2, !tbaa !9
  store i16 %1, ptr %samples.addr.011, align 2, !tbaa !9
  %add.ptr2 = getelementptr inbounds i8, ptr %samples.addr.011, i64 2
  %add.ptr3 = getelementptr inbounds i16, ptr %tmp1.09, i64 2
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body
  %add = add nsw i32 %0, 64
  store i32 %add, ptr %pnt, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pnt1) #3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %samples_tmp) #3
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @synth_1to1(ptr noundef %bandPtr, i32 noundef %channel, ptr nocapture noundef writeonly %out, ptr nocapture noundef %pnt) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %pnt, align 4, !tbaa !5
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %idx.ext
  %1 = load ptr, ptr @gmp, align 8, !tbaa !14
  %synth_bo = getelementptr inbounds %struct.mpstr, ptr %1, i64 0, i32 12
  %2 = load i32, ptr %synth_bo, align 8, !tbaa !16
  %tobool.not = icmp eq i32 %channel, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dec = add i32 %2, 15
  %and = and i32 %dec, 15
  %synth_buffs = getelementptr inbounds %struct.mpstr, ptr %1, i64 0, i32 11
  br label %if.end

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i16, ptr %add.ptr, i64 1
  %arrayidx2 = getelementptr inbounds %struct.mpstr, ptr %1, i64 0, i32 11, i64 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bo.0 = phi i32 [ %2, %if.else ], [ %and, %if.then ]
  %samples.0 = phi ptr [ %incdec.ptr, %if.else ], [ %add.ptr, %if.then ]
  %buf.0 = phi ptr [ %arrayidx2, %if.else ], [ %synth_buffs, %if.then ]
  %and4 = and i32 %bo.0, 1
  %tobool5.not = icmp eq i32 %and4, 0
  %arrayidx19 = getelementptr inbounds [272 x double], ptr %buf.0, i64 1
  %add21 = add nsw i32 %bo.0, 1
  br i1 %tobool5.not, label %if.else18, label %if.then6

if.then6:                                         ; preds = %if.end
  %and11 = and i32 %add21, 15
  %3 = zext i32 %and11 to i64
  %add.ptr13 = getelementptr inbounds double, ptr %arrayidx19, i64 %3
  %idx.ext16 = sext i32 %bo.0 to i64
  %add.ptr17 = getelementptr inbounds double, ptr %buf.0, i64 %idx.ext16
  tail call void @dct64(ptr noundef nonnull %add.ptr13, ptr noundef nonnull %add.ptr17, ptr noundef %bandPtr) #3
  br label %if.end31

if.else18:                                        ; preds = %if.end
  %idx.ext24 = sext i32 %bo.0 to i64
  %add.ptr25 = getelementptr inbounds double, ptr %buf.0, i64 %idx.ext24
  %add.ptr29 = getelementptr inbounds double, ptr %arrayidx19, i64 %idx.ext24
  %add.ptr30 = getelementptr inbounds double, ptr %add.ptr29, i64 1
  tail call void @dct64(ptr noundef nonnull %add.ptr25, ptr noundef nonnull %add.ptr30, ptr noundef %bandPtr) #3
  %.pre467 = sext i32 %add21 to i64
  br label %if.end31

if.end31:                                         ; preds = %if.else18, %if.then6
  %idx.ext33.pre-phi = phi i64 [ %.pre467, %if.else18 ], [ %idx.ext16, %if.then6 ]
  %b0.0 = phi ptr [ %arrayidx19, %if.else18 ], [ %buf.0, %if.then6 ]
  %bo1.0 = phi i32 [ %add21, %if.else18 ], [ %bo.0, %if.then6 ]
  %4 = load ptr, ptr @gmp, align 8, !tbaa !14
  %synth_bo32 = getelementptr inbounds %struct.mpstr, ptr %4, i64 0, i32 12
  store i32 %bo.0, ptr %synth_bo32, align 8, !tbaa !16
  %idx.neg = sub nsw i64 0, %idx.ext33.pre-phi
  %add.ptr34 = getelementptr inbounds double, ptr getelementptr inbounds ([544 x double], ptr @decwin, i64 0, i64 16), i64 %idx.neg
  br label %for.body

for.body:                                         ; preds = %if.end31, %if.end104
  %window.0458 = phi ptr [ %add.ptr34, %if.end31 ], [ %add.ptr107, %if.end104 ]
  %j.0457 = phi i32 [ 16, %if.end31 ], [ %dec105, %if.end104 ]
  %clip.0456 = phi i32 [ 0, %if.end31 ], [ %clip.1, %if.end104 ]
  %b0.1455 = phi ptr [ %b0.0, %if.end31 ], [ %add.ptr106, %if.end104 ]
  %samples.1453 = phi ptr [ %samples.0, %if.end31 ], [ %add.ptr108, %if.end104 ]
  %5 = load double, ptr %window.0458, align 8, !tbaa !20
  %6 = load double, ptr %b0.1455, align 8, !tbaa !20
  %mul = fmul fast double %6, %5
  %arrayidx38 = getelementptr inbounds double, ptr %window.0458, i64 1
  %7 = load double, ptr %arrayidx38, align 8, !tbaa !20
  %arrayidx39 = getelementptr inbounds double, ptr %b0.1455, i64 1
  %8 = load double, ptr %arrayidx39, align 8, !tbaa !20
  %arrayidx41 = getelementptr inbounds double, ptr %window.0458, i64 2
  %9 = load double, ptr %arrayidx41, align 8, !tbaa !20
  %arrayidx42 = getelementptr inbounds double, ptr %b0.1455, i64 2
  %10 = load double, ptr %arrayidx42, align 8, !tbaa !20
  %mul43 = fmul fast double %10, %9
  %arrayidx45 = getelementptr inbounds double, ptr %window.0458, i64 3
  %11 = load double, ptr %arrayidx45, align 8, !tbaa !20
  %arrayidx46 = getelementptr inbounds double, ptr %b0.1455, i64 3
  %12 = load double, ptr %arrayidx46, align 8, !tbaa !20
  %arrayidx49 = getelementptr inbounds double, ptr %window.0458, i64 4
  %13 = load double, ptr %arrayidx49, align 8, !tbaa !20
  %arrayidx50 = getelementptr inbounds double, ptr %b0.1455, i64 4
  %14 = load double, ptr %arrayidx50, align 8, !tbaa !20
  %mul51 = fmul fast double %14, %13
  %arrayidx53 = getelementptr inbounds double, ptr %window.0458, i64 5
  %15 = load double, ptr %arrayidx53, align 8, !tbaa !20
  %arrayidx54 = getelementptr inbounds double, ptr %b0.1455, i64 5
  %16 = load double, ptr %arrayidx54, align 8, !tbaa !20
  %arrayidx57 = getelementptr inbounds double, ptr %window.0458, i64 6
  %17 = load double, ptr %arrayidx57, align 8, !tbaa !20
  %arrayidx58 = getelementptr inbounds double, ptr %b0.1455, i64 6
  %18 = load double, ptr %arrayidx58, align 8, !tbaa !20
  %mul59 = fmul fast double %18, %17
  %arrayidx61 = getelementptr inbounds double, ptr %window.0458, i64 7
  %19 = load double, ptr %arrayidx61, align 8, !tbaa !20
  %arrayidx62 = getelementptr inbounds double, ptr %b0.1455, i64 7
  %20 = load double, ptr %arrayidx62, align 8, !tbaa !20
  %arrayidx65 = getelementptr inbounds double, ptr %window.0458, i64 8
  %21 = load double, ptr %arrayidx65, align 8, !tbaa !20
  %arrayidx66 = getelementptr inbounds double, ptr %b0.1455, i64 8
  %22 = load double, ptr %arrayidx66, align 8, !tbaa !20
  %mul67 = fmul fast double %22, %21
  %arrayidx69 = getelementptr inbounds double, ptr %window.0458, i64 9
  %23 = load double, ptr %arrayidx69, align 8, !tbaa !20
  %arrayidx70 = getelementptr inbounds double, ptr %b0.1455, i64 9
  %24 = load double, ptr %arrayidx70, align 8, !tbaa !20
  %arrayidx73 = getelementptr inbounds double, ptr %window.0458, i64 10
  %25 = load double, ptr %arrayidx73, align 8, !tbaa !20
  %arrayidx74 = getelementptr inbounds double, ptr %b0.1455, i64 10
  %26 = load double, ptr %arrayidx74, align 8, !tbaa !20
  %mul75 = fmul fast double %26, %25
  %arrayidx77 = getelementptr inbounds double, ptr %window.0458, i64 11
  %27 = load double, ptr %arrayidx77, align 8, !tbaa !20
  %arrayidx78 = getelementptr inbounds double, ptr %b0.1455, i64 11
  %28 = load double, ptr %arrayidx78, align 8, !tbaa !20
  %arrayidx81 = getelementptr inbounds double, ptr %window.0458, i64 12
  %29 = load double, ptr %arrayidx81, align 8, !tbaa !20
  %arrayidx82 = getelementptr inbounds double, ptr %b0.1455, i64 12
  %30 = load double, ptr %arrayidx82, align 8, !tbaa !20
  %mul83 = fmul fast double %30, %29
  %arrayidx85 = getelementptr inbounds double, ptr %window.0458, i64 13
  %31 = load double, ptr %arrayidx85, align 8, !tbaa !20
  %arrayidx86 = getelementptr inbounds double, ptr %b0.1455, i64 13
  %32 = load double, ptr %arrayidx86, align 8, !tbaa !20
  %arrayidx89 = getelementptr inbounds double, ptr %window.0458, i64 14
  %33 = load double, ptr %arrayidx89, align 8, !tbaa !20
  %arrayidx90 = getelementptr inbounds double, ptr %b0.1455, i64 14
  %34 = load double, ptr %arrayidx90, align 8, !tbaa !20
  %mul91 = fmul fast double %34, %33
  %arrayidx93 = getelementptr inbounds double, ptr %window.0458, i64 15
  %35 = load double, ptr %arrayidx93, align 8, !tbaa !20
  %arrayidx94 = getelementptr inbounds double, ptr %b0.1455, i64 15
  %36 = load double, ptr %arrayidx94, align 8, !tbaa !20
  %mul40.neg = fmul fast double %8, %7
  %mul47.neg = fmul fast double %12, %11
  %mul55.neg = fmul fast double %16, %15
  %mul63.neg = fmul fast double %20, %19
  %mul71.neg = fmul fast double %24, %23
  %mul79.neg = fmul fast double %28, %27
  %mul87.neg = fmul fast double %32, %31
  %mul95.neg = fmul fast double %36, %35
  %reass.add = fadd fast double %mul47.neg, %mul40.neg
  %reass.add418 = fadd fast double %reass.add, %mul55.neg
  %reass.add419 = fadd fast double %reass.add418, %mul63.neg
  %reass.add420 = fadd fast double %reass.add419, %mul71.neg
  %reass.add421 = fadd fast double %reass.add420, %mul79.neg
  %reass.add422 = fadd fast double %reass.add421, %mul87.neg
  %reass.add423 = fadd fast double %reass.add422, %mul95.neg
  %37 = fadd fast double %mul43, %mul
  %38 = fadd fast double %37, %mul51
  %39 = fadd fast double %38, %mul59
  %40 = fadd fast double %39, %mul67
  %41 = fadd fast double %40, %mul75
  %42 = fadd fast double %41, %mul83
  %43 = fadd fast double %42, %mul91
  %sub96 = fsub fast double %43, %reass.add423
  %cmp = fcmp fast ogt double %sub96, 3.276700e+04
  br i1 %cmp, label %if.then97, label %if.else98

if.then97:                                        ; preds = %for.body
  store i16 32767, ptr %samples.1453, align 2, !tbaa !9
  %inc = add nsw i32 %clip.0456, 1
  br label %if.end104

if.else98:                                        ; preds = %for.body
  %cmp99 = fcmp fast olt double %sub96, -3.276800e+04
  br i1 %cmp99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.else98
  store i16 -32768, ptr %samples.1453, align 2, !tbaa !9
  %inc101 = add nsw i32 %clip.0456, 1
  br label %if.end104

if.else102:                                       ; preds = %if.else98
  %conv = fptosi double %sub96 to i16
  store i16 %conv, ptr %samples.1453, align 2, !tbaa !9
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.else102, %if.then97
  %clip.1 = phi i32 [ %inc, %if.then97 ], [ %inc101, %if.then100 ], [ %clip.0456, %if.else102 ]
  %dec105 = add nsw i32 %j.0457, -1
  %add.ptr106 = getelementptr inbounds double, ptr %b0.1455, i64 16
  %add.ptr107 = getelementptr inbounds double, ptr %window.0458, i64 32
  %add.ptr108 = getelementptr inbounds i16, ptr %samples.1453, i64 2
  %tobool35.not = icmp eq i32 %dec105, 0
  br i1 %tobool35.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %if.end104
  %44 = load double, ptr %add.ptr107, align 8, !tbaa !20
  %45 = load double, ptr %add.ptr106, align 8, !tbaa !20
  %mul112 = fmul fast double %45, %44
  %arrayidx113 = getelementptr inbounds double, ptr %window.0458, i64 34
  %46 = load double, ptr %arrayidx113, align 8, !tbaa !20
  %arrayidx114 = getelementptr inbounds double, ptr %b0.1455, i64 18
  %47 = load double, ptr %arrayidx114, align 8, !tbaa !20
  %mul115 = fmul fast double %47, %46
  %add116 = fadd fast double %mul115, %mul112
  %arrayidx117 = getelementptr inbounds double, ptr %window.0458, i64 36
  %48 = load double, ptr %arrayidx117, align 8, !tbaa !20
  %arrayidx118 = getelementptr inbounds double, ptr %b0.1455, i64 20
  %49 = load double, ptr %arrayidx118, align 8, !tbaa !20
  %mul119 = fmul fast double %49, %48
  %add120 = fadd fast double %add116, %mul119
  %arrayidx121 = getelementptr inbounds double, ptr %window.0458, i64 38
  %50 = load double, ptr %arrayidx121, align 8, !tbaa !20
  %arrayidx122 = getelementptr inbounds double, ptr %b0.1455, i64 22
  %51 = load double, ptr %arrayidx122, align 8, !tbaa !20
  %mul123 = fmul fast double %51, %50
  %add124 = fadd fast double %add120, %mul123
  %arrayidx125 = getelementptr inbounds double, ptr %window.0458, i64 40
  %52 = load double, ptr %arrayidx125, align 8, !tbaa !20
  %arrayidx126 = getelementptr inbounds double, ptr %b0.1455, i64 24
  %53 = load double, ptr %arrayidx126, align 8, !tbaa !20
  %mul127 = fmul fast double %53, %52
  %add128 = fadd fast double %add124, %mul127
  %arrayidx129 = getelementptr inbounds double, ptr %window.0458, i64 42
  %54 = load double, ptr %arrayidx129, align 8, !tbaa !20
  %arrayidx130 = getelementptr inbounds double, ptr %b0.1455, i64 26
  %55 = load double, ptr %arrayidx130, align 8, !tbaa !20
  %mul131 = fmul fast double %55, %54
  %add132 = fadd fast double %add128, %mul131
  %arrayidx133 = getelementptr inbounds double, ptr %window.0458, i64 44
  %56 = load double, ptr %arrayidx133, align 8, !tbaa !20
  %arrayidx134 = getelementptr inbounds double, ptr %b0.1455, i64 28
  %57 = load double, ptr %arrayidx134, align 8, !tbaa !20
  %mul135 = fmul fast double %57, %56
  %add136 = fadd fast double %add132, %mul135
  %arrayidx137 = getelementptr inbounds double, ptr %window.0458, i64 46
  %58 = load double, ptr %arrayidx137, align 8, !tbaa !20
  %arrayidx138 = getelementptr inbounds double, ptr %b0.1455, i64 30
  %59 = load double, ptr %arrayidx138, align 8, !tbaa !20
  %mul139 = fmul fast double %59, %58
  %add140 = fadd fast double %add136, %mul139
  %cmp141 = fcmp fast ogt double %add140, 3.276700e+04
  br i1 %cmp141, label %if.then143, label %if.else145

if.then143:                                       ; preds = %for.end
  store i16 32767, ptr %add.ptr108, align 2, !tbaa !9
  %inc144 = add nsw i32 %clip.1, 1
  br label %if.end153

if.else145:                                       ; preds = %for.end
  %cmp146 = fcmp fast olt double %add140, -3.276800e+04
  br i1 %cmp146, label %if.then148, label %if.else150

if.then148:                                       ; preds = %if.else145
  store i16 -32768, ptr %add.ptr108, align 2, !tbaa !9
  %inc149 = add nsw i32 %clip.1, 1
  br label %if.end153

if.else150:                                       ; preds = %if.else145
  %conv151 = fptosi double %add140 to i16
  store i16 %conv151, ptr %add.ptr108, align 2, !tbaa !9
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.else150, %if.then143
  %clip.2 = phi i32 [ %inc144, %if.then143 ], [ %inc149, %if.then148 ], [ %clip.1, %if.else150 ]
  %shl = shl i32 %bo1.0, 1
  %idx.ext157 = sext i32 %shl to i64
  %add.ptr158 = getelementptr inbounds double, ptr %window.0458, i64 %idx.ext157
  %samples.2460 = getelementptr inbounds i16, ptr %samples.1453, i64 4
  br label %for.body161

for.body161:                                      ; preds = %if.end238.for.body161_crit_edge, %if.end153
  %60 = phi double [ %6, %if.end153 ], [ %.pre, %if.end238.for.body161_crit_edge ]
  %samples.2466 = phi ptr [ %samples.2460, %if.end153 ], [ %samples.2, %if.end238.for.body161_crit_edge ]
  %b0.2465 = phi ptr [ %b0.1455, %if.end153 ], [ %b0.2, %if.end238.for.body161_crit_edge ]
  %window.1464 = phi ptr [ %add.ptr158, %if.end153 ], [ %add.ptr242, %if.end238.for.body161_crit_edge ]
  %j.1463 = phi i32 [ 15, %if.end153 ], [ %dec240, %if.end238.for.body161_crit_edge ]
  %clip.3462 = phi i32 [ %clip.2, %if.end153 ], [ %clip.4, %if.end238.for.body161_crit_edge ]
  %b0.1.pn461 = phi ptr [ %add.ptr106, %if.end153 ], [ %b0.2465, %if.end238.for.body161_crit_edge ]
  %arrayidx163 = getelementptr inbounds double, ptr %window.1464, i64 -1
  %61 = load double, ptr %arrayidx163, align 8, !tbaa !20
  %mul165 = fmul fast double %60, %61
  %arrayidx166 = getelementptr inbounds double, ptr %window.1464, i64 -2
  %62 = load double, ptr %arrayidx166, align 8, !tbaa !20
  %arrayidx167 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -15
  %63 = load double, ptr %arrayidx167, align 8, !tbaa !20
  %arrayidx170 = getelementptr inbounds double, ptr %window.1464, i64 -3
  %64 = load double, ptr %arrayidx170, align 8, !tbaa !20
  %arrayidx171 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -14
  %65 = load double, ptr %arrayidx171, align 8, !tbaa !20
  %arrayidx174 = getelementptr inbounds double, ptr %window.1464, i64 -4
  %66 = load double, ptr %arrayidx174, align 8, !tbaa !20
  %arrayidx175 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -13
  %67 = load double, ptr %arrayidx175, align 8, !tbaa !20
  %arrayidx178 = getelementptr inbounds double, ptr %window.1464, i64 -5
  %68 = load double, ptr %arrayidx178, align 8, !tbaa !20
  %arrayidx179 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -12
  %69 = load double, ptr %arrayidx179, align 8, !tbaa !20
  %arrayidx182 = getelementptr inbounds double, ptr %window.1464, i64 -6
  %70 = load double, ptr %arrayidx182, align 8, !tbaa !20
  %arrayidx183 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -11
  %71 = load double, ptr %arrayidx183, align 8, !tbaa !20
  %arrayidx186 = getelementptr inbounds double, ptr %window.1464, i64 -7
  %72 = load double, ptr %arrayidx186, align 8, !tbaa !20
  %arrayidx187 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -10
  %73 = load double, ptr %arrayidx187, align 8, !tbaa !20
  %arrayidx190 = getelementptr inbounds double, ptr %window.1464, i64 -8
  %74 = load double, ptr %arrayidx190, align 8, !tbaa !20
  %arrayidx191 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -9
  %75 = load double, ptr %arrayidx191, align 8, !tbaa !20
  %arrayidx194 = getelementptr inbounds double, ptr %window.1464, i64 -9
  %76 = load double, ptr %arrayidx194, align 8, !tbaa !20
  %arrayidx195 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -8
  %77 = load double, ptr %arrayidx195, align 8, !tbaa !20
  %arrayidx198 = getelementptr inbounds double, ptr %window.1464, i64 -10
  %78 = load double, ptr %arrayidx198, align 8, !tbaa !20
  %arrayidx199 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -7
  %79 = load double, ptr %arrayidx199, align 8, !tbaa !20
  %arrayidx202 = getelementptr inbounds double, ptr %window.1464, i64 -11
  %80 = load double, ptr %arrayidx202, align 8, !tbaa !20
  %arrayidx203 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -6
  %81 = load double, ptr %arrayidx203, align 8, !tbaa !20
  %arrayidx206 = getelementptr inbounds double, ptr %window.1464, i64 -12
  %82 = load double, ptr %arrayidx206, align 8, !tbaa !20
  %arrayidx207 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -5
  %83 = load double, ptr %arrayidx207, align 8, !tbaa !20
  %arrayidx210 = getelementptr inbounds double, ptr %window.1464, i64 -13
  %84 = load double, ptr %arrayidx210, align 8, !tbaa !20
  %arrayidx211 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -4
  %85 = load double, ptr %arrayidx211, align 8, !tbaa !20
  %arrayidx214 = getelementptr inbounds double, ptr %window.1464, i64 -14
  %86 = load double, ptr %arrayidx214, align 8, !tbaa !20
  %arrayidx215 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -3
  %87 = load double, ptr %arrayidx215, align 8, !tbaa !20
  %arrayidx218 = getelementptr inbounds double, ptr %window.1464, i64 -15
  %88 = load double, ptr %arrayidx218, align 8, !tbaa !20
  %arrayidx219 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -2
  %89 = load double, ptr %arrayidx219, align 8, !tbaa !20
  %90 = load double, ptr %window.1464, align 8, !tbaa !20
  %arrayidx223 = getelementptr inbounds double, ptr %b0.1.pn461, i64 -1
  %91 = load double, ptr %arrayidx223, align 8, !tbaa !20
  %mul168.neg = fmul fast double %63, %62
  %mul172.neg = fmul fast double %65, %64
  %mul176.neg = fmul fast double %67, %66
  %mul180.neg = fmul fast double %69, %68
  %mul184.neg = fmul fast double %71, %70
  %mul188.neg = fmul fast double %73, %72
  %mul192.neg = fmul fast double %75, %74
  %mul196.neg = fmul fast double %77, %76
  %mul200.neg = fmul fast double %79, %78
  %mul204.neg = fmul fast double %81, %80
  %mul208.neg = fmul fast double %83, %82
  %mul212.neg = fmul fast double %85, %84
  %mul216.neg = fmul fast double %87, %86
  %mul220.neg = fmul fast double %89, %88
  %mul224.neg = fmul fast double %91, %90
  %reass.add437 = fadd fast double %mul168.neg, %mul165
  %reass.add438 = fadd fast double %reass.add437, %mul172.neg
  %reass.add439 = fadd fast double %reass.add438, %mul176.neg
  %reass.add440 = fadd fast double %reass.add439, %mul180.neg
  %reass.add441 = fadd fast double %reass.add440, %mul184.neg
  %reass.add442 = fadd fast double %reass.add441, %mul188.neg
  %reass.add443 = fadd fast double %reass.add442, %mul192.neg
  %reass.add444 = fadd fast double %reass.add443, %mul196.neg
  %reass.add445 = fadd fast double %reass.add444, %mul200.neg
  %reass.add446 = fadd fast double %reass.add445, %mul204.neg
  %reass.add447 = fadd fast double %reass.add446, %mul208.neg
  %reass.add448 = fadd fast double %reass.add447, %mul212.neg
  %reass.add449 = fadd fast double %reass.add448, %mul216.neg
  %reass.add450 = fadd fast double %reass.add449, %mul220.neg
  %reass.add451 = fadd fast double %reass.add450, %mul224.neg
  %reass.mul452 = fneg fast double %reass.add451
  %cmp226 = fcmp fast olt double %reass.add451, -3.276700e+04
  br i1 %cmp226, label %if.then228, label %if.else230

if.then228:                                       ; preds = %for.body161
  store i16 32767, ptr %samples.2466, align 2, !tbaa !9
  %inc229 = add nsw i32 %clip.3462, 1
  br label %if.end238

if.else230:                                       ; preds = %for.body161
  %cmp231 = fcmp fast ogt double %reass.add451, 3.276800e+04
  br i1 %cmp231, label %if.then233, label %if.else235

if.then233:                                       ; preds = %if.else230
  store i16 -32768, ptr %samples.2466, align 2, !tbaa !9
  %inc234 = add nsw i32 %clip.3462, 1
  br label %if.end238

if.else235:                                       ; preds = %if.else230
  %conv236 = fptosi double %reass.mul452 to i16
  store i16 %conv236, ptr %samples.2466, align 2, !tbaa !9
  br label %if.end238

if.end238:                                        ; preds = %if.then233, %if.else235, %if.then228
  %clip.4 = phi i32 [ %inc229, %if.then228 ], [ %inc234, %if.then233 ], [ %clip.3462, %if.else235 ]
  %dec240 = add nsw i32 %j.1463, -1
  %tobool160.not = icmp eq i32 %dec240, 0
  br i1 %tobool160.not, label %for.end244, label %if.end238.for.body161_crit_edge, !llvm.loop !23

if.end238.for.body161_crit_edge:                  ; preds = %if.end238
  %samples.2 = getelementptr inbounds i16, ptr %samples.2466, i64 2
  %b0.2 = getelementptr inbounds double, ptr %b0.2465, i64 -16
  %add.ptr242 = getelementptr inbounds double, ptr %window.1464, i64 -32
  %.pre = load double, ptr %b0.2, align 8, !tbaa !20
  br label %for.body161

for.end244:                                       ; preds = %if.end238
  %92 = load i32, ptr %pnt, align 4, !tbaa !5
  %add245 = add nsw i32 %92, 128
  store i32 %add245, ptr %pnt, align 4, !tbaa !5
  ret i32 %clip.4
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @dct64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !6, i64 31872}
!17 = !{!"mpstr", !15, i64 0, !15, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !18, i64 28, !7, i64 100, !7, i64 4712, !7, i64 23144, !19, i64 23152, !6, i64 23160, !7, i64 23168, !6, i64 31872}
!18 = !{!"frame", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68}
!19 = !{!"long", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
