; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/av.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, %union._xnvu, %union.anon.17, i64, ptr, i8, i8 }
%union.anon.16 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%union.anon.17 = type { i64 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.20, %union._xivu }
%union.anon.20 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.21, %union._xivu, %union._xnvu }
%union.anon.21 = type { i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu, %union._xnvu }
%union.anon.18 = type { i64 }

@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_consts = external local_unnamed_addr global [35 x ptr], align 16
@.str = private unnamed_addr constant [7 x i8] c"EXTEND\00", align 1
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_delaymagic = external local_unnamed_addr global i16, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNSHIFT\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"STORESIZE\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"NEGATIVE_INDICES\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @Perl_av_reify(ptr nocapture noundef %av) local_unnamed_addr #0 !dbg !711 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !716, metadata !DIExpression()), !dbg !720
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !721
  %0 = load i32, ptr %sv_flags, align 4, !dbg !721
  %and = and i32 %0, 1073741824, !dbg !721
  %tobool.not = icmp eq i32 %and, 0, !dbg !721
  br i1 %tobool.not, label %if.end, label %cleanup, !dbg !723

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %av, align 8, !dbg !724
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %1, i64 0, i32 3, !dbg !724
  %2 = load i64, ptr %xav_max, align 8, !dbg !724
  %add = add nsw i64 %2, 1, !dbg !725
  call void @llvm.dbg.value(metadata i64 %add, metadata !717, metadata !DIExpression()), !dbg !720
  %xav_fill45 = getelementptr inbounds %struct.xpvav, ptr %1, i64 0, i32 2, !dbg !726
  %3 = load i64, ptr %xav_fill45, align 8, !dbg !726
  %cmp47 = icmp sgt i64 %2, %3, !dbg !727
  br i1 %cmp47, label %while.body.lr.ph, label %while.cond3.preheader, !dbg !728

while.body.lr.ph:                                 ; preds = %if.end
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body, !dbg !728

while.cond3.preheader:                            ; preds = %while.body, %if.end
  %4 = phi ptr [ %1, %if.end ], [ %6, %while.body ]
  %key.0.lcssa = phi i64 [ %add, %if.end ], [ %dec, %while.body ], !dbg !720
  call void @llvm.dbg.value(metadata i64 %key.0.lcssa, metadata !717, metadata !DIExpression()), !dbg !720
  %tobool4.not49 = icmp eq i64 %key.0.lcssa, 0, !dbg !729
  br i1 %tobool4.not49, label %while.end15, label %while.body5.lr.ph, !dbg !729

while.body5.lr.ph:                                ; preds = %while.cond3.preheader
  %sv_u6 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body5, !dbg !729

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %key.048 = phi i64 [ %add, %while.body.lr.ph ], [ %dec, %while.body ]
  call void @llvm.dbg.value(metadata i64 %key.048, metadata !717, metadata !DIExpression()), !dbg !720
  %5 = load ptr, ptr %sv_u, align 8, !dbg !730
  %dec = add nsw i64 %key.048, -1, !dbg !731
  call void @llvm.dbg.value(metadata i64 %dec, metadata !717, metadata !DIExpression()), !dbg !720
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %dec, !dbg !730
  store ptr null, ptr %arrayidx, align 8, !dbg !732
  %6 = load ptr, ptr %av, align 8, !dbg !726
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %6, i64 0, i32 2, !dbg !726
  %7 = load i64, ptr %xav_fill, align 8, !dbg !726
  %add2 = add nsw i64 %7, 1, !dbg !733
  %cmp = icmp sgt i64 %dec, %add2, !dbg !727
  br i1 %cmp, label %while.body, label %while.cond3.preheader, !dbg !728, !llvm.loop !734

while.body5:                                      ; preds = %while.body5.lr.ph, %if.end14
  %key.150 = phi i64 [ %key.0.lcssa, %while.body5.lr.ph ], [ %dec7, %if.end14 ]
  call void @llvm.dbg.value(metadata i64 %key.150, metadata !717, metadata !DIExpression()), !dbg !720
  %8 = load ptr, ptr %sv_u6, align 8, !dbg !738
  %dec7 = add nsw i64 %key.150, -1, !dbg !739
  call void @llvm.dbg.value(metadata i64 %dec7, metadata !717, metadata !DIExpression()), !dbg !720
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 %dec7, !dbg !738
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !738
  call void @llvm.dbg.value(metadata ptr %9, metadata !718, metadata !DIExpression()), !dbg !740
  %cmp9 = icmp ne ptr %9, @PL_sv_undef, !dbg !741
  %tobool11 = icmp ne ptr %9, null
  %or.cond = and i1 %cmp9, %tobool11, !dbg !743
  br i1 %or.cond, label %if.then12, label %if.end14, !dbg !743

if.then12:                                        ; preds = %while.body5
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 1, !dbg !744
  %10 = load i32, ptr %sv_refcnt, align 8, !dbg !744
  %inc = add i32 %10, 1, !dbg !744
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !744
  br label %if.end14, !dbg !744

if.end14:                                         ; preds = %if.then12, %while.body5
  call void @llvm.dbg.value(metadata i64 %dec7, metadata !717, metadata !DIExpression()), !dbg !720
  %tobool4.not = icmp eq i64 %dec7, 0, !dbg !729
  br i1 %tobool4.not, label %while.end15.loopexit, label %while.body5, !dbg !729, !llvm.loop !747

while.end15.loopexit:                             ; preds = %if.end14
  %.pre = load ptr, ptr %av, align 8, !dbg !749
  br label %while.end15, !dbg !750

while.end15:                                      ; preds = %while.end15.loopexit, %while.cond3.preheader
  %11 = phi ptr [ %.pre, %while.end15.loopexit ], [ %4, %while.cond3.preheader ], !dbg !749
  %sv_u16 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !750
  %12 = load ptr, ptr %sv_u16, align 8, !dbg !750
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %11, i64 0, i32 4, !dbg !749
  %13 = load ptr, ptr %xav_alloc, align 8, !dbg !749
  call void @llvm.dbg.value(metadata !DIArgList(ptr %12, ptr %13), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !720
  %tobool19.not51 = icmp eq ptr %12, %13, !dbg !751
  br i1 %tobool19.not51, label %while.end25, label %while.body20.preheader, !dbg !751

while.body20.preheader:                           ; preds = %while.end15
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !752
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast, ptr %13), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !720
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !752
  call void @llvm.dbg.value(metadata !DIArgList(ptr %12, i64 %sub.ptr.rhs.cast), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !720
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !752
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !717, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !720
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !752
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !717, metadata !DIExpression()), !dbg !720
  %dec2355 = add nsw i64 %sub.ptr.div, -1, !dbg !753
  call void @llvm.dbg.value(metadata i64 %dec2355, metadata !717, metadata !DIExpression()), !dbg !720
  %arrayidx2456 = getelementptr inbounds ptr, ptr %13, i64 %dec2355, !dbg !754
  store ptr null, ptr %arrayidx2456, align 8, !dbg !755
  %tobool19.not57 = icmp eq i64 %dec2355, 0, !dbg !751
  br i1 %tobool19.not57, label %while.end25, label %while.body20.while.body20_crit_edge, !dbg !751, !llvm.loop !756

while.body20.while.body20_crit_edge:              ; preds = %while.body20.preheader, %while.body20.while.body20_crit_edge
  %dec2358 = phi i64 [ %dec23, %while.body20.while.body20_crit_edge ], [ %dec2355, %while.body20.preheader ]
  %.pre53 = load ptr, ptr %av, align 8, !dbg !754
  %xav_alloc22.phi.trans.insert = getelementptr inbounds %struct.xpvav, ptr %.pre53, i64 0, i32 4
  %.pre54 = load ptr, ptr %xav_alloc22.phi.trans.insert, align 8, !dbg !754
  call void @llvm.dbg.value(metadata i64 %dec2358, metadata !717, metadata !DIExpression()), !dbg !720
  %dec23 = add nsw i64 %dec2358, -1, !dbg !753
  call void @llvm.dbg.value(metadata i64 %dec23, metadata !717, metadata !DIExpression()), !dbg !720
  %arrayidx24 = getelementptr inbounds ptr, ptr %.pre54, i64 %dec23, !dbg !754
  store ptr null, ptr %arrayidx24, align 8, !dbg !755
  %tobool19.not = icmp eq i64 %dec23, 0, !dbg !751
  br i1 %tobool19.not, label %while.end25, label %while.body20.while.body20_crit_edge, !dbg !751, !llvm.loop !756

while.end25:                                      ; preds = %while.body20.while.body20_crit_edge, %while.body20.preheader, %while.end15
  %14 = load i32, ptr %sv_flags, align 4, !dbg !758
  %and27 = and i32 %14, 1073741823, !dbg !758
  %or = or i32 %and27, 1073741824, !dbg !759
  store i32 %or, ptr %sv_flags, align 4, !dbg !759
  br label %cleanup, !dbg !760

cleanup:                                          ; preds = %entry, %while.end25
  ret void, !dbg !760
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_extend(ptr noundef %av, i64 noundef %key) local_unnamed_addr #1 !dbg !761 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !765, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 %key, metadata !766, metadata !DIExpression()), !dbg !771
  %sv_flags = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !772
  %0 = load i32, ptr %sv_flags, align 4, !dbg !772
  %and = and i32 %0, 8388608, !dbg !772
  %tobool.not = icmp eq i32 %and, 0, !dbg !772
  br i1 %tobool.not, label %if.end, label %cond.end, !dbg !772

cond.end:                                         ; preds = %entry
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !772
  call void @llvm.dbg.value(metadata ptr %call, metadata !767, metadata !DIExpression()), !dbg !771
  %tobool1.not = icmp eq ptr %call, null, !dbg !773
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !774

if.then:                                          ; preds = %cond.end
  %call2 = tail call ptr @Perl_sv_newmortal() #6, !dbg !775
  call void @llvm.dbg.value(metadata ptr %call2, metadata !768, metadata !DIExpression()), !dbg !776
  %add = add nsw i64 %key, 1, !dbg !777
  tail call void @Perl_sv_setiv(ptr noundef %call2, i64 noundef %add) #6, !dbg !777
  %1 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 14), align 16, !dbg !778
  %tobool3.not = icmp eq ptr %1, null, !dbg !778
  br i1 %tobool3.not, label %cond.false5, label %cond.end7, !dbg !778

cond.false5:                                      ; preds = %if.then
  %call6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str, i32 noundef 0) #6, !dbg !778
  store ptr %call6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 14), align 16, !dbg !778
  br label %cond.end7, !dbg !778

cond.end7:                                        ; preds = %if.then, %cond.false5
  %cond8 = phi ptr [ %call6, %cond.false5 ], [ %1, %if.then ], !dbg !778
  %call9 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef %cond8, i32 noundef 4, i32 noundef 1, ptr noundef %call2) #6, !dbg !779
  br label %cleanup

if.end:                                           ; preds = %entry, %cond.end
  %2 = load ptr, ptr %av, align 8, !dbg !780
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %2, i64 0, i32 3, !dbg !780
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %2, i64 0, i32 4, !dbg !780
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !780
  tail call void @Perl_av_extend_guts(ptr noundef nonnull %av, i64 noundef %key, ptr noundef nonnull %xav_max, ptr noundef nonnull %xav_alloc, ptr noundef nonnull %sv_u), !dbg !780
  br label %cleanup, !dbg !781

cleanup:                                          ; preds = %if.end, %cond.end7
  ret void, !dbg !781
}

declare !dbg !782 ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !787 ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare !dbg !790 void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !794 ptr @Perl_magic_methcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare !dbg !799 ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_extend_guts(ptr noundef readonly %av, i64 noundef %key, ptr nocapture noundef %maxp, ptr nocapture noundef %allocp, ptr nocapture noundef %arrayp) local_unnamed_addr #1 !dbg !802 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !807, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i64 %key, metadata !808, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr %maxp, metadata !809, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr %allocp, metadata !810, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr %arrayp, metadata !811, metadata !DIExpression()), !dbg !822
  %0 = load i64, ptr %maxp, align 8, !dbg !823
  %cmp = icmp slt i64 %0, %key, !dbg !824
  br i1 %cmp, label %if.then, label %if.end59, !dbg !825

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %av, null, !dbg !826
  %.pr = load ptr, ptr %allocp, align 8, !dbg !827
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !828

land.lhs.true:                                    ; preds = %if.then
  %1 = load ptr, ptr %arrayp, align 8, !dbg !829
  %cmp1.not = icmp eq ptr %.pr, %1, !dbg !830
  br i1 %cmp1.not, label %if.else, label %if.then2, !dbg !831

if.then2:                                         ; preds = %land.lhs.true
  %2 = load ptr, ptr %av, align 8, !dbg !832
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %2, i64 0, i32 2, !dbg !832
  %3 = load i64, ptr %xav_fill, align 8, !dbg !832
  call void @llvm.dbg.value(metadata !DIArgList(ptr %.pr, i64 %3), metadata !812, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !834
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !835
  %sub.ptr.rhs.cast = ptrtoint ptr %.pr to i64, !dbg !835
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !835
  %sub.ptr.div = ashr i64 %sub.ptr.sub, 3, !dbg !835
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !815, metadata !DIExpression()), !dbg !834
  %add = shl i64 %3, 3, !dbg !836
  %mul = add i64 %add, 8, !dbg !836
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.pr, ptr align 1 %1, i64 %mul, i1 false), !dbg !836
  %4 = load i64, ptr %maxp, align 8, !dbg !837
  %add6 = add nsw i64 %4, %sub.ptr.div, !dbg !837
  store i64 %add6, ptr %maxp, align 8, !dbg !837
  %5 = load ptr, ptr %allocp, align 8, !dbg !838
  store ptr %5, ptr %arrayp, align 8, !dbg !839
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !840
  %6 = load i32, ptr %sv_flags, align 4, !dbg !840
  %and = and i32 %6, 1073741824, !dbg !840
  %tobool7.not = icmp eq i32 %and, 0, !dbg !840
  br i1 %tobool7.not, label %if.end, label %while.body.preheader, !dbg !842

while.body.preheader:                             ; preds = %if.then2
  %add.ptr = getelementptr inbounds ptr, ptr %.pr, i64 %3, !dbg !843
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !812, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !834
  %add.ptr3 = getelementptr ptr, ptr %add.ptr, i64 1, !dbg !844
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !812, metadata !DIExpression()), !dbg !834
  %7 = and i64 %sub.ptr.sub, -8, !dbg !845
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr3, i8 0, i64 %7, i1 false), !dbg !847
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !834
  br label %if.end, !dbg !848

if.end:                                           ; preds = %while.body.preheader, %if.then2
  %8 = load i64, ptr %maxp, align 8, !dbg !848
  %sub = add nsw i64 %8, -10, !dbg !850
  %cmp10 = icmp slt i64 %sub, %key, !dbg !851
  br i1 %cmp10, label %if.then11, label %if.end59, !dbg !852

if.then11:                                        ; preds = %if.end
  %add12 = add nsw i64 %8, %key, !dbg !853
  call void @llvm.dbg.value(metadata i64 %add12, metadata !816, metadata !DIExpression()), !dbg !834
  %.pre = load ptr, ptr %allocp, align 8, !dbg !855
  br label %resize, !dbg !856

if.else:                                          ; preds = %if.then, %land.lhs.true
  %tobool14.not = icmp eq ptr %.pr, null, !dbg !857
  br i1 %tobool14.not, label %if.else33, label %if.then15, !dbg !858

if.then15:                                        ; preds = %if.else
  %div = sdiv i64 %0, 5, !dbg !859
  call void @llvm.dbg.value(metadata i64 %div, metadata !816, metadata !DIExpression()), !dbg !834
  %sub16 = sub nsw i64 9223372036854775807, %div, !dbg !860
  %cmp17 = icmp slt i64 %sub16, %key, !dbg !861
  %add18 = add nsw i64 %div, %key
  %spec.select = select i1 %cmp17, i64 9223372036854775807, i64 %add18, !dbg !862
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !816, metadata !DIExpression()), !dbg !834
  br label %resize, !dbg !863

resize:                                           ; preds = %if.then15, %if.then11
  %9 = phi ptr [ %.pre, %if.then11 ], [ %.pr, %if.then15 ], !dbg !855
  %newmax.0 = phi i64 [ %add12, %if.then11 ], [ %spec.select, %if.then15 ], !dbg !827
  call void @llvm.dbg.value(metadata i64 %newmax.0, metadata !816, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.label(metadata !817), !dbg !864
  %add19 = shl i64 %newmax.0, 3, !dbg !855
  %mul20 = add i64 %add19, 8, !dbg !855
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %9, i64 noundef %mul20) #6, !dbg !855
  store ptr %call, ptr %allocp, align 8, !dbg !855
  %10 = load i64, ptr %maxp, align 8, !dbg !865
  %add.ptr21 = getelementptr inbounds ptr, ptr %call, i64 %10, !dbg !866
  call void @llvm.dbg.value(metadata ptr %add.ptr21, metadata !812, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !834
  %sub23 = sub nsw i64 %newmax.0, %10, !dbg !867
  call void @llvm.dbg.value(metadata i64 %sub23, metadata !815, metadata !DIExpression()), !dbg !834
  %11 = load ptr, ptr @PL_curstack, align 8, !dbg !868
  %cmp24 = icmp eq ptr %11, %av, !dbg !870
  br i1 %cmp24, label %if.then25, label %if.end44, !dbg !871

if.then25:                                        ; preds = %resize
  %12 = load ptr, ptr @PL_stack_sp, align 8, !dbg !872
  %13 = load ptr, ptr @PL_stack_base, align 8, !dbg !874
  %sub.ptr.lhs.cast26 = ptrtoint ptr %12 to i64, !dbg !875
  %sub.ptr.rhs.cast27 = ptrtoint ptr %13 to i64, !dbg !875
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27, !dbg !875
  %sub.ptr.div29 = ashr exact i64 %sub.ptr.sub28, 3, !dbg !875
  %add.ptr30 = getelementptr inbounds ptr, ptr %call, i64 %sub.ptr.div29, !dbg !876
  store ptr %add.ptr30, ptr @PL_stack_sp, align 8, !dbg !877
  %14 = load ptr, ptr %allocp, align 8, !dbg !878
  store ptr %14, ptr @PL_stack_base, align 8, !dbg !879
  %add.ptr31 = getelementptr inbounds ptr, ptr %14, i64 %newmax.0, !dbg !880
  store ptr %add.ptr31, ptr @PL_stack_max, align 8, !dbg !881
  br label %if.end44, !dbg !882

if.else33:                                        ; preds = %if.else
  %15 = tail call i64 @llvm.smax.i64(i64 %key, i64 3), !dbg !883
  call void @llvm.dbg.value(metadata i64 %15, metadata !816, metadata !DIExpression()), !dbg !834
  %add39 = shl i64 %15, 3, !dbg !885
  %mul40 = add i64 %add39, 8, !dbg !885
  %call41 = tail call ptr @Perl_safesysmalloc(i64 noundef %mul40) #6, !dbg !885
  store ptr %call41, ptr %allocp, align 8, !dbg !885
  call void @llvm.dbg.value(metadata ptr %call41, metadata !812, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !834
  call void @llvm.dbg.value(metadata i64 %15, metadata !815, metadata !DIExpression()), !dbg !834
  store ptr null, ptr %call41, align 8, !dbg !886
  br label %if.end44

if.end44:                                         ; preds = %resize, %if.then25, %if.else33
  %add.ptr21.pn = phi ptr [ %add.ptr21, %if.then25 ], [ %add.ptr21, %resize ], [ %call41, %if.else33 ]
  %tmp.1 = phi i64 [ %sub23, %if.then25 ], [ %sub23, %resize ], [ %15, %if.else33 ], !dbg !887
  %newmax.1 = phi i64 [ %newmax.0, %if.then25 ], [ %newmax.0, %resize ], [ %15, %if.else33 ], !dbg !827
  call void @llvm.dbg.value(metadata i64 %newmax.1, metadata !816, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i64 %tmp.1, metadata !815, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %add.ptr21.pn, metadata !812, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !834
  br i1 %tobool.not, label %if.end57, label %land.lhs.true46, !dbg !888

land.lhs.true46:                                  ; preds = %if.end44
  %sv_flags47 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !890
  %16 = load i32, ptr %sv_flags47, align 4, !dbg !890
  %and48 = and i32 %16, 1073741824, !dbg !890
  %tobool49 = icmp ne i32 %and48, 0, !dbg !890
  %tobool52 = icmp ne i64 %tmp.1, 0
  %or.cond61 = select i1 %tobool49, i1 %tobool52, i1 false, !dbg !891
  br i1 %or.cond61, label %while.body53.preheader, label %if.end57, !dbg !891

while.body53.preheader:                           ; preds = %land.lhs.true46
  %uglygep = getelementptr i8, ptr %add.ptr21.pn, i64 8, !dbg !892
  %17 = shl nuw i64 %tmp.1, 3, !dbg !892
  call void @llvm.memset.p0.i64(ptr align 8 %uglygep, i8 0, i64 %17, i1 false), !dbg !894
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !834
  br label %if.end57, !dbg !895

if.end57:                                         ; preds = %while.body53.preheader, %land.lhs.true46, %if.end44
  %18 = load ptr, ptr %allocp, align 8, !dbg !895
  store ptr %18, ptr %arrayp, align 8, !dbg !896
  store i64 %newmax.1, ptr %maxp, align 8, !dbg !897
  br label %if.end59

if.end59:                                         ; preds = %if.end57, %if.end, %entry
  ret void, !dbg !898
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

declare !dbg !899 ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !902 ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_fetch(ptr noundef %av, i64 noundef %key, i32 noundef %lval) local_unnamed_addr #1 !dbg !905 {
entry:
  %key.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %av, metadata !909, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i64 %key, metadata !910, metadata !DIExpression()), !dbg !922
  store i64 %key, ptr %key.addr, align 8
  call void @llvm.dbg.value(metadata i32 %lval, metadata !911, metadata !DIExpression()), !dbg !922
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !923
  %0 = load i32, ptr %sv_flags, align 4, !dbg !923
  %and = and i32 %0, 8388608, !dbg !923
  %tobool.not = icmp eq i32 %and, 0, !dbg !923
  br i1 %tobool.not, label %if.end21, label %if.then, !dbg !924

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !925
  call void @llvm.dbg.value(metadata ptr %call, metadata !912, metadata !DIExpression()), !dbg !926
  %tobool1.not = icmp eq ptr %call, null, !dbg !927
  br i1 %tobool1.not, label %lor.lhs.false, label %if.then4, !dbg !928

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 68) #6, !dbg !929
  %tobool3.not = icmp eq ptr %call2, null, !dbg !929
  br i1 %tobool3.not, label %if.end21, label %if.then4, !dbg !930

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  call void @llvm.dbg.value(metadata i64 %key, metadata !910, metadata !DIExpression()), !dbg !922
  %cmp = icmp slt i64 %key, 0, !dbg !931
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !933

if.then5:                                         ; preds = %if.then4
  call void @llvm.dbg.value(metadata ptr %key.addr, metadata !910, metadata !DIExpression(DW_OP_deref)), !dbg !922
  %call6 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %av, ptr noundef %call, ptr noundef nonnull %key.addr), !dbg !934
  br i1 %call6, label %if.then5.if.end8_crit_edge, label %return, !dbg !937

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  %.pre = load i64, ptr %key.addr, align 8, !dbg !938
  br label %if.end8, !dbg !937

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %if.then4
  %1 = phi i64 [ %.pre, %if.then5.if.end8_crit_edge ], [ %key, %if.then4 ], !dbg !938
  %call9 = tail call ptr @Perl_sv_newmortal() #6, !dbg !939
  call void @llvm.dbg.value(metadata ptr %call9, metadata !916, metadata !DIExpression()), !dbg !940
  tail call void @Perl_sv_upgrade(ptr noundef %call9, i32 noundef 10) #6, !dbg !941
  call void @llvm.dbg.value(metadata i64 %1, metadata !910, metadata !DIExpression()), !dbg !922
  %conv = trunc i64 %1 to i32, !dbg !938
  %call10 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %av, ptr noundef %call9, ptr noundef null, i32 noundef %conv) #6, !dbg !938
  br i1 %tobool1.not, label %if.then12, label %if.end15, !dbg !942

if.then12:                                        ; preds = %if.end8
  %sv_flags13 = getelementptr inbounds %struct.sv, ptr %call9, i64 0, i32 2, !dbg !943
  %2 = load i32, ptr %sv_flags13, align 4, !dbg !943
  %and14 = and i32 %2, -524289, !dbg !943
  store i32 %and14, ptr %sv_flags13, align 4, !dbg !943
  br label %if.end15, !dbg !943

if.end15:                                         ; preds = %if.then12, %if.end8
  %3 = load ptr, ptr %call9, align 8, !dbg !945
  %xlv_type = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 9, !dbg !945
  store i8 116, ptr %xlv_type, align 8, !dbg !946
  %4 = load ptr, ptr %call9, align 8, !dbg !947
  %xlv_targ = getelementptr inbounds %struct.xpvlv, ptr %4, i64 0, i32 8, !dbg !947
  store ptr %call9, ptr %xlv_targ, align 8, !dbg !948
  %5 = load ptr, ptr %call9, align 8, !dbg !949
  %xlv_targ18 = getelementptr inbounds %struct.xpvlv, ptr %5, i64 0, i32 8, !dbg !949
  br label %return, !dbg !950

if.end21:                                         ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.value(metadata i64 %key, metadata !910, metadata !DIExpression()), !dbg !922
  %cmp22 = icmp slt i64 %key, 0, !dbg !951
  br i1 %cmp22, label %if.then24, label %if.end36, !dbg !953

if.then24:                                        ; preds = %if.end21
  %sv_flags25 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !954
  %6 = load i32, ptr %sv_flags25, align 4, !dbg !954
  %and26 = and i32 %6, 8388608, !dbg !954
  %tobool27.not = icmp eq i32 %and26, 0, !dbg !954
  br i1 %tobool27.not, label %cond.false, label %cond.true, !dbg !954

cond.true:                                        ; preds = %if.then24
  %call28 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !954
  %conv29 = sext i32 %call28 to i64, !dbg !954
  br label %cond.end, !dbg !954

cond.false:                                       ; preds = %if.then24
  %7 = load ptr, ptr %av, align 8, !dbg !954
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 2, !dbg !954
  %8 = load i64, ptr %xav_fill, align 8, !dbg !954
  br label %cond.end, !dbg !954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv29, %cond.true ], [ %8, %cond.false ], !dbg !954
  call void @llvm.dbg.value(metadata i64 %key, metadata !910, metadata !DIExpression()), !dbg !922
  %add = add nsw i64 %key, 1, !dbg !956
  %add31 = add i64 %add, %cond, !dbg !957
  call void @llvm.dbg.value(metadata i64 %add31, metadata !910, metadata !DIExpression()), !dbg !922
  store i64 %add31, ptr %key.addr, align 8, !dbg !957
  %cmp32 = icmp slt i64 %add31, 0, !dbg !958
  br i1 %cmp32, label %return, label %if.end36, !dbg !960

if.end36:                                         ; preds = %cond.end, %if.end21
  %9 = phi i64 [ %add31, %cond.end ], [ %key, %if.end21 ], !dbg !961
  call void @llvm.dbg.value(metadata i64 %9, metadata !910, metadata !DIExpression()), !dbg !922
  %10 = load ptr, ptr %av, align 8, !dbg !962
  %xav_fill38 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2, !dbg !962
  %11 = load i64, ptr %xav_fill38, align 8, !dbg !962
  %cmp39 = icmp sgt i64 %9, %11, !dbg !963
  br i1 %cmp39, label %emptyness, label %lor.lhs.false41, !dbg !964

lor.lhs.false41:                                  ; preds = %if.end36
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !965
  %12 = load ptr, ptr %sv_u, align 8, !dbg !965
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %9, !dbg !965
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !965
  %tobool42.not = icmp eq ptr %13, null, !dbg !965
  br i1 %tobool42.not, label %emptyness, label %if.end51, !dbg !966

emptyness:                                        ; preds = %if.end36, %lor.lhs.false41, %if.then66
  call void @llvm.dbg.label(metadata !919), !dbg !967
  %tobool44.not = icmp eq i32 %lval, 0, !dbg !968
  br i1 %tobool44.not, label %return, label %cond.true45, !dbg !968

cond.true45:                                      ; preds = %emptyness
  call void @llvm.dbg.value(metadata i64 %9, metadata !910, metadata !DIExpression()), !dbg !922
  %call46 = tail call ptr @Perl_newSV(i64 noundef 0) #6, !dbg !969
  %call47 = tail call ptr @Perl_av_store(ptr noundef nonnull %av, i64 noundef %9, ptr noundef %call46), !dbg !969
  br label %return, !dbg !968

if.end51:                                         ; preds = %lor.lhs.false41
  %14 = load i32, ptr %sv_flags, align 4, !dbg !970
  %tobool54.not = icmp sgt i32 %14, -1, !dbg !970
  br i1 %tobool54.not, label %return, label %lor.lhs.false58, !dbg !972

lor.lhs.false58:                                  ; preds = %if.end51
  %sv_flags61 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !973
  %15 = load i32, ptr %sv_flags61, align 4, !dbg !973
  %cmp62 = icmp eq i32 %15, 255, !dbg !973
  br i1 %cmp62, label %if.then66, label %return, !dbg !974

if.then66:                                        ; preds = %lor.lhs.false58
  call void @llvm.dbg.value(metadata i64 %9, metadata !910, metadata !DIExpression()), !dbg !922
  store ptr null, ptr %arrayidx, align 8, !dbg !975
  br label %emptyness, !dbg !977

return:                                           ; preds = %if.end15, %if.then5, %if.end51, %lor.lhs.false58, %cond.true45, %emptyness, %cond.end
  %retval.2 = phi ptr [ null, %cond.end ], [ %call47, %cond.true45 ], [ null, %emptyness ], [ %arrayidx, %lor.lhs.false58 ], [ %arrayidx, %if.end51 ], [ null, %if.then5 ], [ %xlv_targ18, %if.end15 ], !dbg !922
  ret ptr %retval.2, !dbg !978
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @S_adjust_index(ptr noundef %av, ptr noundef readonly %mg, ptr nocapture noundef %keyp) unnamed_addr #1 !dbg !979 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !983, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr %mg, metadata !984, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr %keyp, metadata !985, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8 1, metadata !986, metadata !DIExpression()), !dbg !995
  %tobool.not = icmp eq ptr %mg, null, !dbg !996
  br i1 %tobool.not, label %if.then147, label %if.then, !dbg !997

if.then:                                          ; preds = %entry
  %mg_obj = getelementptr inbounds %struct.magic, ptr %mg, i64 0, i32 6, !dbg !998
  %0 = load ptr, ptr %mg_obj, align 8, !dbg !998
  %tobool1.not = icmp eq ptr %0, null, !dbg !998
  br i1 %tobool1.not, label %cond.false, label %cond.end, !dbg !998

cond.false:                                       ; preds = %if.then
  %call = tail call ptr @Perl_newRV(ptr noundef %av) #6, !dbg !998
  %call3 = tail call ptr @Perl_sv_2mortal(ptr noundef %call) #6, !dbg !998
  br label %cond.end, !dbg !998

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi ptr [ %call3, %cond.false ], [ %0, %if.then ], !dbg !998
  call void @llvm.dbg.value(metadata ptr %cond, metadata !987, metadata !DIExpression()), !dbg !999
  %sv_flags = getelementptr inbounds %struct.sv, ptr %cond, i64 0, i32 2, !dbg !1000
  %1 = load i32, ptr %sv_flags, align 4, !dbg !1000
  %and = and i32 %1, 2097152, !dbg !1000
  %tobool4.not = icmp eq i32 %and, 0, !dbg !1000
  br i1 %tobool4.not, label %land.end, label %land.rhs, !dbg !1000

land.rhs:                                         ; preds = %cond.end
  %call7 = tail call i32 @Perl_mg_get(ptr noundef nonnull %cond) #6, !dbg !1000
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1001
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.rhs
  %2 = phi i32 [ %1, %cond.end ], [ %.pre, %land.rhs ], !dbg !1001
  %and10 = and i32 %2, 2048, !dbg !1001
  %tobool11.not = icmp eq i32 %and10, 0, !dbg !1001
  br i1 %tobool11.not, label %if.then147, label %land.lhs.true, !dbg !1002

land.lhs.true:                                    ; preds = %land.end
  %sv_u = getelementptr inbounds %struct.sv, ptr %cond, i64 0, i32 3, !dbg !1003
  %3 = load ptr, ptr %sv_u, align 8, !dbg !1003
  %sv_flags12 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2, !dbg !1003
  %4 = load i32, ptr %sv_flags12, align 4, !dbg !1003
  %and13 = and i32 %4, 1048576, !dbg !1003
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !1003
  br i1 %tobool14.not, label %if.then147, label %if.then15, !dbg !1004

if.then15:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %3, align 8, !dbg !1005
  %6 = load ptr, ptr %5, align 8, !dbg !1005
  %call17 = tail call ptr @Perl_hv_common(ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.6, i64 noundef 16, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %call17, metadata !990, metadata !DIExpression()), !dbg !1006
  %tobool18.not = icmp eq ptr %call17, null, !dbg !1007
  br i1 %tobool18.not, label %if.then147, label %land.lhs.true19, !dbg !1009

land.lhs.true19:                                  ; preds = %if.then15
  %7 = load ptr, ptr %call17, align 8, !dbg !1010
  %sv_flags20 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2, !dbg !1010
  %8 = load i32, ptr %sv_flags20, align 4, !dbg !1010
  %and21 = and i32 %8, 255, !dbg !1010
  %cmp = icmp eq i32 %and21, 9, !dbg !1010
  br i1 %cmp, label %land.lhs.true22, label %if.then147, !dbg !1011

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %sv_u23 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3, !dbg !1012
  %9 = load ptr, ptr %sv_u23, align 8, !dbg !1012
  %10 = load ptr, ptr %9, align 8, !dbg !1012
  %tobool24.not = icmp eq ptr %10, null, !dbg !1012
  br i1 %tobool24.not, label %if.then147, label %land.lhs.true27, !dbg !1012

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %sv_flags31 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2, !dbg !1012
  %11 = load i32, ptr %sv_flags31, align 4, !dbg !1012
  %and32 = and i32 %11, 2097152, !dbg !1012
  %tobool33.not = icmp eq i32 %and32, 0, !dbg !1012
  br i1 %tobool33.not, label %cond.false41, label %cond.true36, !dbg !1013

cond.true36:                                      ; preds = %land.lhs.true27
  %call40 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %10, i32 noundef 2) #6, !dbg !1012
  br i1 %call40, label %if.end163, label %if.then147, !dbg !1012

cond.false41:                                     ; preds = %land.lhs.true27
  %and46 = and i32 %11, 65280, !dbg !1012
  %tobool47.not = icmp ne i32 %and46, 0, !dbg !1012
  %and52 = and i32 %11, 255, !dbg !1012
  %cmp53 = icmp eq i32 %and52, 8, !dbg !1012
  %or.cond = or i1 %tobool47.not, %cmp53, !dbg !1012
  %and59 = and i32 %11, 16826623, !dbg !1012
  %cmp60 = icmp eq i32 %and59, 16777226, !dbg !1012
  %or.cond196 = select i1 %or.cond, i1 true, i1 %cmp60, !dbg !1012
  br i1 %or.cond196, label %cond.false62, label %if.then147, !dbg !1012

cond.false62:                                     ; preds = %cond.false41
  %and67 = and i32 %11, 1024, !dbg !1012
  %tobool68.not = icmp eq i32 %and67, 0, !dbg !1012
  br i1 %tobool68.not, label %cond.false95, label %cond.true69, !dbg !1013

cond.true69:                                      ; preds = %cond.false62
  %12 = load ptr, ptr %10, align 8, !dbg !1012
  %tobool74.not = icmp eq ptr %12, null, !dbg !1012
  br i1 %tobool74.not, label %if.then147, label %land.lhs.true75, !dbg !1012

land.lhs.true75:                                  ; preds = %cond.true69
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2, !dbg !1012
  %13 = load i64, ptr %xpv_cur, align 8, !dbg !1012
  %cmp80 = icmp ugt i64 %13, 1, !dbg !1012
  br i1 %cmp80, label %if.end163, label %lor.lhs.false81, !dbg !1012

lor.lhs.false81:                                  ; preds = %land.lhs.true75
  %tobool87.not = icmp eq i64 %13, 0, !dbg !1012
  br i1 %tobool87.not, label %if.then147, label %land.lhs.true88, !dbg !1012

land.lhs.true88:                                  ; preds = %lor.lhs.false81
  %sv_u92 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3, !dbg !1012
  %14 = load ptr, ptr %sv_u92, align 8, !dbg !1012
  %15 = load i8, ptr %14, align 1, !dbg !1012
  %cmp93.not = icmp eq i8 %15, 48, !dbg !1012
  br i1 %cmp93.not, label %if.then147, label %if.end163, !dbg !1012

cond.false95:                                     ; preds = %cond.false62
  %and100 = and i32 %11, 768, !dbg !1012
  %tobool101.not = icmp eq i32 %and100, 0, !dbg !1012
  br i1 %tobool101.not, label %cond.false137, label %cond.true102, !dbg !1013

cond.true102:                                     ; preds = %cond.false95
  %and107 = and i32 %11, 256, !dbg !1012
  %tobool108.not = icmp eq i32 %and107, 0, !dbg !1012
  br i1 %tobool108.not, label %lor.lhs.false116, label %land.lhs.true109, !dbg !1012

land.lhs.true109:                                 ; preds = %cond.true102
  %16 = load ptr, ptr %10, align 8, !dbg !1012
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %16, i64 0, i32 4, !dbg !1012
  %17 = load i64, ptr %xiv_u, align 8, !dbg !1012
  %cmp114.not = icmp eq i64 %17, 0, !dbg !1012
  br i1 %cmp114.not, label %lor.lhs.false116, label %if.end163, !dbg !1012

lor.lhs.false116:                                 ; preds = %land.lhs.true109, %cond.true102
  %and121 = and i32 %11, 512, !dbg !1012
  %tobool122.not = icmp eq i32 %and121, 0, !dbg !1012
  br i1 %tobool122.not, label %if.then147, label %land.lhs.true123, !dbg !1012

land.lhs.true123:                                 ; preds = %lor.lhs.false116
  %18 = load ptr, ptr %10, align 8, !dbg !1012
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %18, i64 0, i32 5, !dbg !1012
  %19 = load double, ptr %xnv_u, align 8, !dbg !1012
  %20 = fcmp une double %19, 0.000000e+00, !dbg !1012
  br i1 %20, label %if.end163, label %if.then147, !dbg !1012

cond.false137:                                    ; preds = %cond.false95
  %call141 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %10, i32 noundef 0) #6, !dbg !1012
  br i1 %call141, label %if.end163, label %if.then147, !dbg !1013

if.then147:                                       ; preds = %land.end, %land.lhs.true, %entry, %if.then15, %land.lhs.true19, %cond.true36, %cond.true69, %lor.lhs.false81, %land.lhs.true88, %lor.lhs.false116, %cond.false137, %land.lhs.true22, %cond.false41, %land.lhs.true123
  %sv_flags148 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1014
  %21 = load i32, ptr %sv_flags148, align 4, !dbg !1014
  %and149 = and i32 %21, 8388608, !dbg !1014
  %tobool150.not = icmp eq i32 %and149, 0, !dbg !1014
  br i1 %tobool150.not, label %cond.false154, label %cond.true151, !dbg !1014

cond.true151:                                     ; preds = %if.then147
  %call152 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1014
  %conv153 = sext i32 %call152 to i64, !dbg !1014
  br label %cond.end156, !dbg !1014

cond.false154:                                    ; preds = %if.then147
  %22 = load ptr, ptr %av, align 8, !dbg !1014
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 2, !dbg !1014
  %23 = load i64, ptr %xav_fill, align 8, !dbg !1014
  br label %cond.end156, !dbg !1014

cond.end156:                                      ; preds = %cond.false154, %cond.true151
  %cond157 = phi i64 [ %conv153, %cond.true151 ], [ %23, %cond.false154 ], !dbg !1014
  %add = add nsw i64 %cond157, 1, !dbg !1017
  %24 = load i64, ptr %keyp, align 8, !dbg !1018
  %add158 = add nsw i64 %add, %24, !dbg !1018
  store i64 %add158, ptr %keyp, align 8, !dbg !1018
  %cmp159 = icmp slt i64 %add158, 0, !dbg !1019
  br i1 %cmp159, label %cleanup, label %if.end163, !dbg !1021

if.end163:                                        ; preds = %cond.true36, %land.lhs.true75, %land.lhs.true88, %land.lhs.true109, %land.lhs.true123, %cond.false137, %cond.end156
  br label %cleanup, !dbg !1022

cleanup:                                          ; preds = %cond.end156, %if.end163
  %retval.0 = phi i1 [ true, %if.end163 ], [ false, %cond.end156 ], !dbg !995
  ret i1 %retval.0, !dbg !1023
}

declare !dbg !1024 void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1027 i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1030 i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_store(ptr noundef %av, i64 noundef %key, ptr noundef %val) local_unnamed_addr #1 !dbg !1033 {
entry:
  %key.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %av, metadata !1037, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %key, metadata !1038, metadata !DIExpression()), !dbg !1048
  store i64 %key, ptr %key.addr, align 8
  call void @llvm.dbg.value(metadata ptr %val, metadata !1039, metadata !DIExpression()), !dbg !1048
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1049
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1049
  %and = and i32 %0, 8388608, !dbg !1049
  %tobool.not = icmp eq i32 %and, 0, !dbg !1049
  br i1 %tobool.not, label %if.end12, label %if.then, !dbg !1050

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1051
  call void @llvm.dbg.value(metadata ptr %call, metadata !1041, metadata !DIExpression()), !dbg !1052
  %tobool1.not = icmp eq ptr %call, null, !dbg !1053
  br i1 %tobool1.not, label %if.end12, label %if.then2, !dbg !1055

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i64 %key, metadata !1038, metadata !DIExpression()), !dbg !1048
  %cmp = icmp slt i64 %key, 0, !dbg !1056
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !1059

if.then3:                                         ; preds = %if.then2
  call void @llvm.dbg.value(metadata ptr %key.addr, metadata !1038, metadata !DIExpression(DW_OP_deref)), !dbg !1048
  %call4 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef nonnull %key.addr), !dbg !1060
  %tobool7.not = icmp ne ptr %val, null
  %1 = and i1 %tobool7.not, %call4, !dbg !1063
  br i1 %1, label %if.then3.if.then8_crit_edge, label %cleanup142, !dbg !1063

if.then3.if.then8_crit_edge:                      ; preds = %if.then3
  %.pre = load i64, ptr %key.addr, align 8, !dbg !1064
  br label %if.then8, !dbg !1063

if.end6:                                          ; preds = %if.then2
  %tobool7.not.old = icmp eq ptr %val, null, !dbg !1067
  br i1 %tobool7.not.old, label %cleanup142, label %if.then8, !dbg !1068

if.then8:                                         ; preds = %if.then3.if.then8_crit_edge, %if.end6
  %2 = phi i64 [ %.pre, %if.then3.if.then8_crit_edge ], [ %key, %if.end6 ], !dbg !1064
  call void @llvm.dbg.value(metadata i64 %2, metadata !1038, metadata !DIExpression()), !dbg !1048
  %conv = trunc i64 %2 to i32, !dbg !1064
  %call9 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %av, ptr noundef nonnull %val, ptr noundef null, i32 noundef %conv) #6, !dbg !1064
  br label %cleanup142, !dbg !1069

if.end12:                                         ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 %key, metadata !1038, metadata !DIExpression()), !dbg !1048
  %cmp13 = icmp slt i64 %key, 0, !dbg !1070
  br i1 %cmp13, label %if.then15, label %if.end26, !dbg !1072

if.then15:                                        ; preds = %if.end12
  %sv_flags16 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1073
  %3 = load i32, ptr %sv_flags16, align 4, !dbg !1073
  %and17 = and i32 %3, 8388608, !dbg !1073
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !1073
  br i1 %tobool18.not, label %cond.false, label %cond.true, !dbg !1073

cond.true:                                        ; preds = %if.then15
  %call19 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1073
  %conv20 = sext i32 %call19 to i64, !dbg !1073
  br label %cond.end, !dbg !1073

cond.false:                                       ; preds = %if.then15
  %4 = load ptr, ptr %av, align 8, !dbg !1073
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %4, i64 0, i32 2, !dbg !1073
  %5 = load i64, ptr %xav_fill, align 8, !dbg !1073
  br label %cond.end, !dbg !1073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv20, %cond.true ], [ %5, %cond.false ], !dbg !1073
  call void @llvm.dbg.value(metadata i64 %key, metadata !1038, metadata !DIExpression()), !dbg !1048
  %add = add nsw i64 %key, 1, !dbg !1075
  %add21 = add i64 %add, %cond, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %add21, metadata !1038, metadata !DIExpression()), !dbg !1048
  store i64 %add21, ptr %key.addr, align 8, !dbg !1076
  %cmp22 = icmp slt i64 %add21, 0, !dbg !1077
  br i1 %cmp22, label %cleanup142, label %if.end26, !dbg !1079

if.end26:                                         ; preds = %cond.end, %if.end12
  %6 = phi i64 [ %add21, %cond.end ], [ %key, %if.end12 ]
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1080
  %and28 = and i32 %7, 134283264, !dbg !1080
  %tobool29.not = icmp eq i32 %and28, 0, !dbg !1080
  br i1 %tobool29.not, label %if.end44, label %land.lhs.true, !dbg !1082

land.lhs.true:                                    ; preds = %if.end26
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  %and31 = and i32 %7, 8388608, !dbg !1083
  %tobool32.not = icmp eq i32 %and31, 0, !dbg !1083
  br i1 %tobool32.not, label %cond.false36, label %cond.true33, !dbg !1083

cond.true33:                                      ; preds = %land.lhs.true
  %call34 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1083
  %conv35 = sext i32 %call34 to i64, !dbg !1083
  br label %cond.end39, !dbg !1083

cond.false36:                                     ; preds = %land.lhs.true
  %8 = load ptr, ptr %av, align 8, !dbg !1083
  %xav_fill38 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2, !dbg !1083
  %9 = load i64, ptr %xav_fill38, align 8, !dbg !1083
  br label %cond.end39, !dbg !1083

cond.end39:                                       ; preds = %cond.false36, %cond.true33
  %cond40 = phi i64 [ %conv35, %cond.true33 ], [ %9, %cond.false36 ], !dbg !1083
  %cmp41.not = icmp slt i64 %6, %cond40, !dbg !1084
  br i1 %cmp41.not, label %if.end44, label %if.then43, !dbg !1085

if.then43:                                        ; preds = %cond.end39
  tail call void @Perl_croak_no_modify() #6, !dbg !1086
  br label %if.end44, !dbg !1086

if.end44:                                         ; preds = %if.then43, %cond.end39, %if.end26
  %10 = load i32, ptr %sv_flags, align 4, !dbg !1087
  %11 = and i32 %10, -1073741824, !dbg !1089
  %.not = icmp eq i32 %11, -2147483648, !dbg !1089
  br i1 %.not, label %if.end.i, label %if.end53, !dbg !1089

if.end.i:                                         ; preds = %if.end44
  call void @llvm.dbg.value(metadata ptr %av, metadata !716, metadata !DIExpression()), !dbg !1090
  %12 = load ptr, ptr %av, align 8, !dbg !1092
  %xav_max.i = getelementptr inbounds %struct.xpvav, ptr %12, i64 0, i32 3, !dbg !1092
  %13 = load i64, ptr %xav_max.i, align 8, !dbg !1092
  %add.i = add nsw i64 %13, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %xav_fill45.i = getelementptr inbounds %struct.xpvav, ptr %12, i64 0, i32 2, !dbg !1094
  %14 = load i64, ptr %xav_fill45.i, align 8, !dbg !1094
  %cmp47.i = icmp sgt i64 %13, %14, !dbg !1095
  br i1 %cmp47.i, label %while.body.lr.ph.i, label %while.cond3.preheader.i, !dbg !1096

while.body.lr.ph.i:                               ; preds = %if.end.i
  %sv_u.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body.i, !dbg !1096

while.cond3.preheader.i:                          ; preds = %while.body.i, %if.end.i
  %15 = phi ptr [ %12, %if.end.i ], [ %17, %while.body.i ]
  %key.0.lcssa.i = phi i64 [ %add.i, %if.end.i ], [ %dec.i, %while.body.i ], !dbg !1090
  call void @llvm.dbg.value(metadata i64 %key.0.lcssa.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %tobool4.not49.i = icmp eq i64 %key.0.lcssa.i, 0, !dbg !1097
  br i1 %tobool4.not49.i, label %while.end15.i, label %while.body5.lr.ph.i, !dbg !1097

while.body5.lr.ph.i:                              ; preds = %while.cond3.preheader.i
  %sv_u6.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body5.i, !dbg !1097

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %key.048.i = phi i64 [ %add.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %key.048.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %16 = load ptr, ptr %sv_u.i, align 8, !dbg !1098
  %dec.i = add nsw i64 %key.048.i, -1, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %arrayidx.i = getelementptr inbounds ptr, ptr %16, i64 %dec.i, !dbg !1098
  store ptr null, ptr %arrayidx.i, align 8, !dbg !1100
  %17 = load ptr, ptr %av, align 8, !dbg !1094
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %17, i64 0, i32 2, !dbg !1094
  %18 = load i64, ptr %xav_fill.i, align 8, !dbg !1094
  %add2.i = add nsw i64 %18, 1, !dbg !1101
  %cmp.i = icmp sgt i64 %dec.i, %add2.i, !dbg !1095
  br i1 %cmp.i, label %while.body.i, label %while.cond3.preheader.i, !dbg !1096, !llvm.loop !1102

while.body5.i:                                    ; preds = %if.end14.i, %while.body5.lr.ph.i
  %key.150.i = phi i64 [ %key.0.lcssa.i, %while.body5.lr.ph.i ], [ %dec7.i, %if.end14.i ]
  call void @llvm.dbg.value(metadata i64 %key.150.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %19 = load ptr, ptr %sv_u6.i, align 8, !dbg !1104
  %dec7.i = add nsw i64 %key.150.i, -1, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %dec7.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %arrayidx8.i = getelementptr inbounds ptr, ptr %19, i64 %dec7.i, !dbg !1104
  %20 = load ptr, ptr %arrayidx8.i, align 8, !dbg !1104
  call void @llvm.dbg.value(metadata ptr %20, metadata !718, metadata !DIExpression()), !dbg !1106
  %cmp9.i = icmp ne ptr %20, @PL_sv_undef, !dbg !1107
  %tobool11.i = icmp ne ptr %20, null
  %or.cond.i = and i1 %cmp9.i, %tobool11.i, !dbg !1108
  br i1 %or.cond.i, label %if.then12.i, label %if.end14.i, !dbg !1108

if.then12.i:                                      ; preds = %while.body5.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 1, !dbg !1109
  %21 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1109
  %inc.i = add i32 %21, 1, !dbg !1109
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !1109
  br label %if.end14.i, !dbg !1109

if.end14.i:                                       ; preds = %if.then12.i, %while.body5.i
  call void @llvm.dbg.value(metadata i64 %dec7.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %tobool4.not.i = icmp eq i64 %dec7.i, 0, !dbg !1097
  br i1 %tobool4.not.i, label %while.end15.loopexit.i, label %while.body5.i, !dbg !1097, !llvm.loop !1110

while.end15.loopexit.i:                           ; preds = %if.end14.i
  %.pre.i = load ptr, ptr %av, align 8, !dbg !1112
  br label %while.end15.i, !dbg !1113

while.end15.i:                                    ; preds = %while.end15.loopexit.i, %while.cond3.preheader.i
  %22 = phi ptr [ %.pre.i, %while.end15.loopexit.i ], [ %15, %while.cond3.preheader.i ], !dbg !1112
  %sv_u16.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1113
  %23 = load ptr, ptr %sv_u16.i, align 8, !dbg !1113
  %xav_alloc.i = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 4, !dbg !1112
  %24 = load ptr, ptr %xav_alloc.i, align 8, !dbg !1112
  call void @llvm.dbg.value(metadata !DIArgList(ptr %23, ptr %24), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1090
  %tobool19.not51.i = icmp eq ptr %23, %24, !dbg !1114
  br i1 %tobool19.not51.i, label %Perl_av_reify.exit, label %while.body20.preheader.i, !dbg !1114

while.body20.preheader.i:                         ; preds = %while.end15.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i64, !dbg !1115
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast.i, ptr %24), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1090
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i64, !dbg !1115
  call void @llvm.dbg.value(metadata !DIArgList(ptr %23, i64 %sub.ptr.rhs.cast.i), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1090
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, metadata !717, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1090
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %dec23.i188 = add nsw i64 %sub.ptr.div.i, -1, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %dec23.i188, metadata !717, metadata !DIExpression()), !dbg !1090
  %arrayidx24.i189 = getelementptr inbounds ptr, ptr %24, i64 %dec23.i188, !dbg !1117
  store ptr null, ptr %arrayidx24.i189, align 8, !dbg !1118
  %tobool19.not.i190 = icmp eq i64 %dec23.i188, 0, !dbg !1114
  br i1 %tobool19.not.i190, label %Perl_av_reify.exit, label %while.body20.while.body20_crit_edge.i, !dbg !1114, !llvm.loop !1119

while.body20.while.body20_crit_edge.i:            ; preds = %while.body20.preheader.i, %while.body20.while.body20_crit_edge.i
  %dec23.i191 = phi i64 [ %dec23.i, %while.body20.while.body20_crit_edge.i ], [ %dec23.i188, %while.body20.preheader.i ]
  %.pre53.i = load ptr, ptr %av, align 8, !dbg !1117
  %xav_alloc22.phi.trans.insert.i = getelementptr inbounds %struct.xpvav, ptr %.pre53.i, i64 0, i32 4
  %.pre54.i = load ptr, ptr %xav_alloc22.phi.trans.insert.i, align 8, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %dec23.i191, metadata !717, metadata !DIExpression()), !dbg !1090
  %dec23.i = add nsw i64 %dec23.i191, -1, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %dec23.i, metadata !717, metadata !DIExpression()), !dbg !1090
  %arrayidx24.i = getelementptr inbounds ptr, ptr %.pre54.i, i64 %dec23.i, !dbg !1117
  store ptr null, ptr %arrayidx24.i, align 8, !dbg !1118
  %tobool19.not.i = icmp eq i64 %dec23.i, 0, !dbg !1114
  br i1 %tobool19.not.i, label %Perl_av_reify.exit, label %while.body20.while.body20_crit_edge.i, !dbg !1114, !llvm.loop !1119

Perl_av_reify.exit:                               ; preds = %while.body20.while.body20_crit_edge.i, %while.body20.preheader.i, %while.end15.i
  %25 = load i32, ptr %sv_flags, align 4, !dbg !1121
  %and27.i = and i32 %25, 1073741823, !dbg !1121
  %or.i = or i32 %and27.i, 1073741824, !dbg !1122
  store i32 %or.i, ptr %sv_flags, align 4, !dbg !1122
  br label %if.end53, !dbg !1123

if.end53:                                         ; preds = %Perl_av_reify.exit, %if.end44
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  %26 = load ptr, ptr %av, align 8, !dbg !1124
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 3, !dbg !1124
  %27 = load i64, ptr %xav_max, align 8, !dbg !1124
  %cmp55 = icmp sgt i64 %6, %27, !dbg !1126
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !1127

if.then57:                                        ; preds = %if.end53
  tail call void @Perl_av_extend(ptr noundef nonnull %av, i64 noundef %6), !dbg !1128
  %.pre197 = load ptr, ptr %av, align 8, !dbg !1129
  br label %if.end58, !dbg !1128

if.end58:                                         ; preds = %if.then57, %if.end53
  %28 = phi ptr [ %.pre197, %if.then57 ], [ %26, %if.end53 ], !dbg !1129
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1131
  %29 = load ptr, ptr %sv_u, align 8, !dbg !1131
  call void @llvm.dbg.value(metadata ptr %29, metadata !1040, metadata !DIExpression()), !dbg !1048
  %xav_fill60 = getelementptr inbounds %struct.xpvav, ptr %28, i64 0, i32 2, !dbg !1129
  %30 = load i64, ptr %xav_fill60, align 8, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  %cmp61 = icmp slt i64 %30, %6, !dbg !1132
  %31 = load i32, ptr %sv_flags, align 4, !dbg !1133
  %and65 = and i32 %31, 1073741824, !dbg !1133
  %tobool66.not = icmp eq i32 %and65, 0, !dbg !1133
  br i1 %cmp61, label %if.then63, label %if.else, !dbg !1134

if.then63:                                        ; preds = %if.end58
  br i1 %tobool66.not, label %if.then67, label %if.end81, !dbg !1135

if.then67:                                        ; preds = %if.then63
  %32 = load ptr, ptr @PL_curstack, align 8, !dbg !1137
  %cmp68 = icmp eq ptr %32, %av, !dbg !1141
  br i1 %cmp68, label %land.lhs.true70, label %do.body.preheader, !dbg !1142

land.lhs.true70:                                  ; preds = %if.then67
  %33 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1143
  %34 = load ptr, ptr @PL_stack_base, align 8, !dbg !1144
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64, !dbg !1145
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i64, !dbg !1145
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1145
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !1145
  %cmp71 = icmp sgt i64 %6, %sub.ptr.div, !dbg !1146
  br i1 %cmp71, label %if.then73, label %do.body.preheader, !dbg !1147

if.then73:                                        ; preds = %land.lhs.true70
  %add.ptr = getelementptr inbounds ptr, ptr %34, i64 %6, !dbg !1148
  store ptr %add.ptr, ptr @PL_stack_sp, align 8, !dbg !1149
  %.pre198.pre = load ptr, ptr %av, align 8, !dbg !1150
  %xav_fill76.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.xpvav, ptr %.pre198.pre, i64 0, i32 2
  %.pre199.pre = load i64, ptr %xav_fill76.phi.trans.insert.phi.trans.insert, align 8, !dbg !1152
  br label %do.body.preheader, !dbg !1153

do.body.preheader:                                ; preds = %if.then73, %land.lhs.true70, %if.then67
  %.ph = phi i64 [ %30, %if.then67 ], [ %30, %land.lhs.true70 ], [ %.pre199.pre, %if.then73 ]
  %.ph209 = phi ptr [ %28, %if.then67 ], [ %28, %land.lhs.true70 ], [ %.pre198.pre, %if.then73 ]
  br label %do.body, !dbg !1154

do.body:                                          ; preds = %do.body.preheader, %do.body
  %35 = phi i64 [ %38, %do.body ], [ %.ph, %do.body.preheader ], !dbg !1152
  %36 = phi ptr [ %37, %do.body ], [ %.ph209, %do.body.preheader ], !dbg !1150
  %xav_fill76 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2, !dbg !1150
  %inc = add nsw i64 %35, 1, !dbg !1152
  store i64 %inc, ptr %xav_fill76, align 8, !dbg !1152
  %arrayidx = getelementptr inbounds ptr, ptr %29, i64 %inc, !dbg !1155
  store ptr null, ptr %arrayidx, align 8, !dbg !1156
  %37 = load ptr, ptr %av, align 8, !dbg !1157
  %xav_fill78 = getelementptr inbounds %struct.xpvav, ptr %37, i64 0, i32 2, !dbg !1157
  %38 = load i64, ptr %xav_fill78, align 8, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  %cmp79 = icmp slt i64 %38, %6, !dbg !1158
  br i1 %cmp79, label %do.body, label %if.end81, !dbg !1159, !llvm.loop !1160

if.end81:                                         ; preds = %do.body, %if.then63
  %39 = phi ptr [ %28, %if.then63 ], [ %37, %do.body ], !dbg !1162
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  %xav_fill83 = getelementptr inbounds %struct.xpvav, ptr %39, i64 0, i32 2, !dbg !1162
  store i64 %6, ptr %xav_fill83, align 8, !dbg !1163
  br label %if.end90, !dbg !1164

if.else:                                          ; preds = %if.end58
  br i1 %tobool66.not, label %if.end90, label %if.then87, !dbg !1165

if.then87:                                        ; preds = %if.else
  %arrayidx88 = getelementptr inbounds ptr, ptr %29, i64 %6, !dbg !1166
  %40 = load ptr, ptr %arrayidx88, align 8, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %40, metadata !1168, metadata !DIExpression()) #6, !dbg !1177
  %cmp.not.i = icmp eq ptr %40, null, !dbg !1179
  br i1 %cmp.not.i, label %if.end90, label %if.then.i, !dbg !1180

if.then.i:                                        ; preds = %if.then87
  %sv_refcnt.i187 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 1, !dbg !1181
  %41 = load i32, ptr %sv_refcnt.i187, align 8, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %41, metadata !1174, metadata !DIExpression()) #6, !dbg !1182
  %cmp1.i = icmp ugt i32 %41, 1, !dbg !1183
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1185

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %41, -1, !dbg !1186
  store i32 %sub.i, ptr %sv_refcnt.i187, align 8, !dbg !1187
  br label %if.end90, !dbg !1188

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %40, i32 noundef %41) #6, !dbg !1189
  br label %if.end90

if.end90:                                         ; preds = %if.else.i, %if.then4.i, %if.then87, %if.else, %if.end81
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  %arrayidx91 = getelementptr inbounds ptr, ptr %29, i64 %6, !dbg !1190
  store ptr %val, ptr %arrayidx91, align 8, !dbg !1191
  %42 = load i32, ptr %sv_flags, align 4, !dbg !1192
  %and93 = and i32 %42, 4194304, !dbg !1192
  %tobool94.not = icmp eq i32 %and93, 0, !dbg !1192
  br i1 %tobool94.not, label %cleanup142, label %if.then95, !dbg !1193

if.then95:                                        ; preds = %if.end90
  %43 = load ptr, ptr %av, align 8, !dbg !1194
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %43, i64 0, i32 1, !dbg !1194
  call void @llvm.dbg.value(metadata ptr undef, metadata !1044, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1195
  %mg.0192 = load ptr, ptr %xmg_u, align 8, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %mg.0192, metadata !1044, metadata !DIExpression()), !dbg !1195
  %tobool97.not193 = icmp eq ptr %mg.0192, null, !dbg !1196
  br i1 %tobool97.not193, label %if.then137, label %for.body.lr.ph, !dbg !1196

for.body.lr.ph:                                   ; preds = %if.then95
  %tobool104.not = icmp eq ptr %val, null
  %conv123 = trunc i64 %6 to i32
  br i1 %tobool104.not, label %for.body.us, label %for.body, !dbg !1198

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %mg.0195.us = phi ptr [ %mg.0.us, %for.inc.us ], [ %mg.0192, %for.body.lr.ph ]
  %set.0194.us = phi i8 [ %set.1.us, %for.inc.us ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i8 %set.0194.us, metadata !1047, metadata !DIExpression()), !dbg !1195
  %mg_type.us = getelementptr inbounds %struct.magic, ptr %mg.0195.us, i64 0, i32 3, !dbg !1201
  %44 = load i8, ptr %mg_type.us, align 2, !dbg !1201
  %idxprom.us = zext i8 %44 to i64, !dbg !1201
  %arrayidx98.us = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom.us, !dbg !1201
  %45 = load i32, ptr %arrayidx98.us, align 4, !dbg !1201
  %and99.us = and i32 %45, 16400, !dbg !1201
  %cmp100.us = icmp eq i32 %and99.us, 16400, !dbg !1201
  br i1 %cmp100.us, label %if.end103.us, label %for.inc.us, !dbg !1203

if.end103.us:                                     ; preds = %for.body.us
  %46 = load i16, ptr @PL_delaymagic, align 2, !dbg !1204
  %tobool126.not.us = icmp ne i16 %46, 0, !dbg !1204
  %cmp130.us = icmp eq i8 %44, 73
  %or.cond = select i1 %tobool126.not.us, i1 %cmp130.us, i1 false, !dbg !1206
  br i1 %or.cond, label %if.then132.us, label %for.inc.us, !dbg !1206

if.then132.us:                                    ; preds = %if.end103.us
  %47 = or i16 %46, 4, !dbg !1207
  store i16 %47, ptr @PL_delaymagic, align 2, !dbg !1207
  call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1195
  br label %for.inc.us, !dbg !1209

for.inc.us:                                       ; preds = %if.then132.us, %if.end103.us, %for.body.us
  %set.1.us = phi i8 [ 0, %if.then132.us ], [ %set.0194.us, %if.end103.us ], [ %set.0194.us, %for.body.us ], !dbg !1195
  call void @llvm.dbg.value(metadata i8 %set.1.us, metadata !1047, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr undef, metadata !1044, metadata !DIExpression()), !dbg !1195
  %mg.0.us = load ptr, ptr %mg.0195.us, align 8, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %mg.0.us, metadata !1044, metadata !DIExpression()), !dbg !1195
  %tobool97.not.us = icmp eq ptr %mg.0.us, null, !dbg !1196
  br i1 %tobool97.not.us, label %for.end, label %for.body.us, !dbg !1196, !llvm.loop !1210

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %mg.0195 = phi ptr [ %mg.0, %for.inc ], [ %mg.0192, %for.body.lr.ph ]
  %set.0194 = phi i8 [ %set.1, %for.inc ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i8 %set.0194, metadata !1047, metadata !DIExpression()), !dbg !1195
  %mg_type = getelementptr inbounds %struct.magic, ptr %mg.0195, i64 0, i32 3, !dbg !1201
  %48 = load i8, ptr %mg_type, align 2, !dbg !1201
  %idxprom = zext i8 %48 to i64, !dbg !1201
  %arrayidx98 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1201
  %49 = load i32, ptr %arrayidx98, align 4, !dbg !1201
  %and99 = and i32 %49, 16400, !dbg !1201
  %cmp100 = icmp eq i32 %and99, 16400, !dbg !1201
  br i1 %cmp100, label %if.end103, label %for.inc, !dbg !1203

if.end103:                                        ; preds = %for.body
  %add115 = add i8 %48, 32, !dbg !1212
  %conv117 = zext i8 %add115 to i32, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %6, metadata !1038, metadata !DIExpression()), !dbg !1048
  tail call void @Perl_sv_magic(ptr noundef nonnull %val, ptr noundef nonnull %av, i32 noundef %conv117, ptr noundef null, i32 noundef %conv123) #6, !dbg !1212
  %50 = load i16, ptr @PL_delaymagic, align 2, !dbg !1204
  %tobool126.not = icmp eq i16 %50, 0, !dbg !1204
  br i1 %tobool126.not, label %for.inc, label %land.lhs.true127, !dbg !1206

land.lhs.true127:                                 ; preds = %if.end103
  %51 = load i8, ptr %mg_type, align 2, !dbg !1215
  %cmp130 = icmp eq i8 %51, 73, !dbg !1216
  br i1 %cmp130, label %if.then132, label %for.inc, !dbg !1217

if.then132:                                       ; preds = %land.lhs.true127
  %52 = or i16 %50, 4, !dbg !1207
  store i16 %52, ptr @PL_delaymagic, align 2, !dbg !1207
  call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1195
  br label %for.inc, !dbg !1209

for.inc:                                          ; preds = %if.end103, %land.lhs.true127, %if.then132, %for.body
  %set.1 = phi i8 [ 0, %if.then132 ], [ %set.0194, %land.lhs.true127 ], [ %set.0194, %if.end103 ], [ %set.0194, %for.body ], !dbg !1195
  call void @llvm.dbg.value(metadata i8 %set.1, metadata !1047, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr undef, metadata !1044, metadata !DIExpression()), !dbg !1195
  %mg.0 = load ptr, ptr %mg.0195, align 8, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %mg.0, metadata !1044, metadata !DIExpression()), !dbg !1195
  %tobool97.not = icmp eq ptr %mg.0, null, !dbg !1196
  br i1 %tobool97.not, label %for.end, label %for.body, !dbg !1196, !llvm.loop !1210

for.end:                                          ; preds = %for.inc, %for.inc.us
  %set.0.lcssa = phi i8 [ %set.1.us, %for.inc.us ], [ %set.1, %for.inc ], !dbg !1195
  %53 = and i8 %set.0.lcssa, 1, !dbg !1218
  %tobool136.not = icmp eq i8 %53, 0, !dbg !1218
  br i1 %tobool136.not, label %cleanup142, label %if.then137, !dbg !1220

if.then137:                                       ; preds = %if.then95, %for.end
  %call138 = tail call i32 @Perl_mg_set(ptr noundef nonnull %av) #6, !dbg !1221
  br label %cleanup142, !dbg !1221

cleanup142:                                       ; preds = %if.end90, %if.then137, %for.end, %if.then3, %if.then8, %if.end6, %cond.end
  %retval.1 = phi ptr [ null, %cond.end ], [ null, %if.end6 ], [ null, %if.then8 ], [ null, %if.then3 ], [ %arrayidx91, %for.end ], [ %arrayidx91, %if.then137 ], [ %arrayidx91, %if.end90 ], !dbg !1048
  ret ptr %retval.1, !dbg !1222
}

declare !dbg !1223 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare !dbg !1227 void @Perl_croak_no_modify() local_unnamed_addr #2

declare !dbg !1230 void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1234 i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_make(i64 noundef %size, ptr nocapture noundef readonly %strp) local_unnamed_addr #1 !dbg !1237 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !1241, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %strp, metadata !1242, metadata !DIExpression()), !dbg !1249
  %call = tail call ptr @Perl_newSV_type(i32 noundef 11) #6, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %call, metadata !1243, metadata !DIExpression()), !dbg !1249
  %tobool.not = icmp eq i64 %size, 0, !dbg !1251
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1252

if.then:                                          ; preds = %entry
  %mul = shl i64 %size, 3, !dbg !1253
  %call1 = tail call ptr @Perl_safesysmalloc(i64 noundef %mul) #6, !dbg !1253
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1245, metadata !DIExpression()), !dbg !1254
  %0 = load ptr, ptr %call, align 8, !dbg !1255
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %0, i64 0, i32 4, !dbg !1255
  store ptr %call1, ptr %xav_alloc, align 8, !dbg !1256
  %sv_u = getelementptr inbounds %struct.av, ptr %call, i64 0, i32 3, !dbg !1257
  store ptr %call1, ptr %sv_u, align 8, !dbg !1258
  %sub = add nsw i64 %size, -1, !dbg !1259
  %1 = load ptr, ptr %call, align 8, !dbg !1260
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %1, i64 0, i32 3, !dbg !1260
  store i64 %sub, ptr %xav_max, align 8, !dbg !1261
  %2 = load ptr, ptr %call, align 8, !dbg !1262
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %2, i64 0, i32 2, !dbg !1262
  store i64 -1, ptr %xav_fill, align 8, !dbg !1263
  tail call void @Perl_push_scope() #6, !dbg !1264
  tail call void @Perl_save_pushptr(ptr noundef nonnull %call, i32 noundef 11) #6, !dbg !1265
  call void @llvm.dbg.value(metadata i64 0, metadata !1248, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr %strp, metadata !1242, metadata !DIExpression()), !dbg !1249
  %cmp32 = icmp sgt i64 %size, 0, !dbg !1266
  br i1 %cmp32, label %for.body, label %for.end, !dbg !1269

for.body:                                         ; preds = %if.then, %land.end
  %i.034 = phi i64 [ %inc11, %land.end ], [ 0, %if.then ]
  %strp.addr.033 = phi ptr [ %incdec.ptr, %land.end ], [ %strp, %if.then ]
  call void @llvm.dbg.value(metadata i64 %i.034, metadata !1248, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr %strp.addr.033, metadata !1242, metadata !DIExpression()), !dbg !1249
  %3 = load ptr, ptr %strp.addr.033, align 8, !dbg !1270
  %sv_flags = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2, !dbg !1270
  %4 = load i32, ptr %sv_flags, align 4, !dbg !1270
  %and = and i32 %4, 2097152, !dbg !1270
  %tobool4.not = icmp eq i32 %and, 0, !dbg !1270
  br i1 %tobool4.not, label %land.end, label %land.rhs, !dbg !1270

land.rhs:                                         ; preds = %for.body
  %call5 = tail call i32 @Perl_mg_get(ptr noundef nonnull %3) #6, !dbg !1270
  br label %land.end

land.end:                                         ; preds = %for.body, %land.rhs
  %5 = load ptr, ptr %call, align 8, !dbg !1272
  %xav_fill8 = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !1272
  %6 = load i64, ptr %xav_fill8, align 8, !dbg !1273
  %inc = add nsw i64 %6, 1, !dbg !1273
  store i64 %inc, ptr %xav_fill8, align 8, !dbg !1273
  %call9 = tail call ptr @Perl_newSV(i64 noundef 0) #6, !dbg !1274
  %arrayidx = getelementptr inbounds ptr, ptr %call1, i64 %i.034, !dbg !1275
  store ptr %call9, ptr %arrayidx, align 8, !dbg !1276
  %7 = load ptr, ptr %strp.addr.033, align 8, !dbg !1277
  tail call void @Perl_sv_setsv_flags(ptr noundef %call9, ptr noundef %7, i32 noundef 1552) #6, !dbg !1277
  %incdec.ptr = getelementptr inbounds ptr, ptr %strp.addr.033, i64 1, !dbg !1278
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1242, metadata !DIExpression()), !dbg !1249
  %inc11 = add nuw nsw i64 %i.034, 1, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !1248, metadata !DIExpression()), !dbg !1254
  %exitcond.not = icmp eq i64 %inc11, %size, !dbg !1266
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1269, !llvm.loop !1280

for.end:                                          ; preds = %land.end, %if.then
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !1282
  %8 = load i32, ptr %sv_refcnt, align 8, !dbg !1282
  %inc12 = add i32 %8, 1, !dbg !1282
  store i32 %inc12, ptr %sv_refcnt, align 8, !dbg !1282
  tail call void @Perl_pop_scope() #6, !dbg !1283
  br label %if.end, !dbg !1284

if.end:                                           ; preds = %for.end, %entry
  ret ptr %call, !dbg !1285
}

declare !dbg !1286 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare !dbg !1290 void @Perl_push_scope() local_unnamed_addr #2

declare !dbg !1291 void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1295 i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare !dbg !1296 void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1299 void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_clear(ptr noundef %av) local_unnamed_addr #1 !dbg !1300 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1302, metadata !DIExpression()), !dbg !1314
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1315
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1315
  %and = and i32 %0, 134283264, !dbg !1315
  %tobool.not = icmp eq i32 %and, 0, !dbg !1315
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1317

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1318
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1319
  br label %if.end, !dbg !1318

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1319
  %and2 = and i32 %1, 8388608, !dbg !1319
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !1319
  br i1 %tobool3.not, label %if.end14, label %if.then4, !dbg !1320

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %av, align 8, !dbg !1321
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1, !dbg !1321
  %3 = load ptr, ptr %xmg_u, align 8, !dbg !1321
  call void @llvm.dbg.value(metadata ptr %3, metadata !1305, metadata !DIExpression()), !dbg !1322
  %4 = load i16, ptr @PL_delaymagic, align 2, !dbg !1323
  %tobool5 = icmp ne i16 %4, 0, !dbg !1323
  %tobool6 = icmp ne ptr %3, null
  %or.cond = select i1 %tobool5, i1 %tobool6, i1 false, !dbg !1325
  br i1 %or.cond, label %land.lhs.true7, label %if.else, !dbg !1325

land.lhs.true7:                                   ; preds = %if.then4
  %mg_type = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 3, !dbg !1326
  %5 = load i8, ptr %mg_type, align 2, !dbg !1326
  %cmp = icmp eq i8 %5, 73, !dbg !1327
  br i1 %cmp, label %if.then10, label %if.else, !dbg !1328

if.then10:                                        ; preds = %land.lhs.true7
  %6 = or i16 %4, 4, !dbg !1329
  store i16 %6, ptr @PL_delaymagic, align 2, !dbg !1329
  br label %if.end14, !dbg !1330

if.else:                                          ; preds = %land.lhs.true7, %if.then4
  %call = tail call i32 @Perl_mg_clear(ptr noundef nonnull %av) #6, !dbg !1331
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else, %if.end
  %7 = load ptr, ptr %av, align 8, !dbg !1332
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 3, !dbg !1332
  %8 = load i64, ptr %xav_max, align 8, !dbg !1332
  %cmp16 = icmp slt i64 %8, 0, !dbg !1334
  br i1 %cmp16, label %cleanup, label %if.end19, !dbg !1335

if.end19:                                         ; preds = %if.end14
  %9 = load i32, ptr %sv_flags, align 4, !dbg !1336
  %and21 = and i32 %9, 1073741824, !dbg !1336
  %tobool22.not = icmp eq i32 %and21, 0, !dbg !1337
  call void @llvm.dbg.value(metadata i1 %tobool22.not, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1314
  br i1 %tobool22.not, label %if.end28, label %if.then24, !dbg !1338

if.then24:                                        ; preds = %if.end19
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1339
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %10, metadata !1308, metadata !DIExpression()), !dbg !1340
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 2, !dbg !1341
  %11 = load i64, ptr %xav_fill, align 8, !dbg !1341
  %add = add nsw i64 %11, 1, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %add, metadata !1311, metadata !DIExpression()), !dbg !1340
  tail call void @Perl_push_scope() #6, !dbg !1343
  %sv_refcnt = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 1, !dbg !1344
  %12 = load i32, ptr %sv_refcnt, align 8, !dbg !1344
  %inc = add i32 %12, 1, !dbg !1344
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !1344
  tail call void @Perl_save_pushptr(ptr noundef nonnull %av, i32 noundef 11) #6, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %add, metadata !1311, metadata !DIExpression()), !dbg !1340
  %tobool26.not66 = icmp eq i64 %add, 0, !dbg !1345
  br i1 %tobool26.not66, label %if.end28, label %while.body, !dbg !1345

while.body:                                       ; preds = %if.then24, %S_SvREFCNT_dec.exit
  %index.067 = phi i64 [ %dec, %S_SvREFCNT_dec.exit ], [ %add, %if.then24 ]
  call void @llvm.dbg.value(metadata i64 %index.067, metadata !1311, metadata !DIExpression()), !dbg !1340
  %dec = add nsw i64 %index.067, -1, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1311, metadata !DIExpression()), !dbg !1340
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %dec, !dbg !1347
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %13, metadata !1312, metadata !DIExpression()), !dbg !1348
  store ptr null, ptr %arrayidx, align 8, !dbg !1349
  call void @llvm.dbg.value(metadata ptr %13, metadata !1168, metadata !DIExpression()) #6, !dbg !1350
  %cmp.not.i = icmp eq ptr %13, null, !dbg !1352
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !1353

if.then.i:                                        ; preds = %while.body
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 1, !dbg !1354
  %14 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %14, metadata !1174, metadata !DIExpression()) #6, !dbg !1355
  %cmp1.i = icmp ugt i32 %14, 1, !dbg !1356
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1357

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %14, -1, !dbg !1358
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1359
  br label %S_SvREFCNT_dec.exit, !dbg !1360

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %13, i32 noundef %14) #6, !dbg !1361
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %while.body, %if.then4.i, %if.else.i
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1311, metadata !DIExpression()), !dbg !1340
  %tobool26.not = icmp eq i64 %dec, 0, !dbg !1345
  br i1 %tobool26.not, label %if.end28, label %while.body, !dbg !1345, !llvm.loop !1362

if.end28:                                         ; preds = %S_SvREFCNT_dec.exit, %if.then24, %if.end19
  %sv_u29 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1364
  %15 = load ptr, ptr %sv_u29, align 8, !dbg !1364
  %16 = load ptr, ptr %av, align 8, !dbg !1365
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %16, i64 0, i32 4, !dbg !1365
  %17 = load ptr, ptr %xav_alloc, align 8, !dbg !1365
  call void @llvm.dbg.value(metadata !DIArgList(ptr %15, ptr %17), metadata !1303, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1314
  %tobool31.not = icmp eq ptr %15, %17, !dbg !1366
  br i1 %tobool31.not, label %if.end39, label %if.then32, !dbg !1368

if.then32:                                        ; preds = %if.end28
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64, !dbg !1369
  call void @llvm.dbg.value(metadata !DIArgList(ptr %15, i64 %sub.ptr.rhs.cast), metadata !1303, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1314
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64, !dbg !1369
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast, ptr %17), metadata !1303, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1314
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1303, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1314
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !1303, metadata !DIExpression()), !dbg !1314
  %xav_max34 = getelementptr inbounds %struct.xpvav, ptr %16, i64 0, i32 3, !dbg !1370
  %18 = load i64, ptr %xav_max34, align 8, !dbg !1372
  %add35 = add nsw i64 %18, %sub.ptr.div, !dbg !1372
  store i64 %add35, ptr %xav_max34, align 8, !dbg !1372
  %19 = load ptr, ptr %av, align 8, !dbg !1373
  %xav_alloc37 = getelementptr inbounds %struct.xpvav, ptr %19, i64 0, i32 4, !dbg !1373
  %20 = load ptr, ptr %xav_alloc37, align 8, !dbg !1373
  store ptr %20, ptr %sv_u29, align 8, !dbg !1374
  br label %if.end39, !dbg !1375

if.end39:                                         ; preds = %if.then32, %if.end28
  %21 = phi ptr [ %19, %if.then32 ], [ %16, %if.end28 ], !dbg !1376
  %xav_fill41 = getelementptr inbounds %struct.xpvav, ptr %21, i64 0, i32 2, !dbg !1376
  store i64 -1, ptr %xav_fill41, align 8, !dbg !1377
  br i1 %tobool22.not, label %cleanup, label %if.then43, !dbg !1378

if.then43:                                        ; preds = %if.end39
  tail call void @Perl_pop_scope() #6, !dbg !1379
  br label %cleanup, !dbg !1379

cleanup:                                          ; preds = %if.end39, %if.then43, %if.end14
  ret void, !dbg !1381
}

declare !dbg !1382 i32 @Perl_mg_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_undef(ptr noundef %av) local_unnamed_addr #1 !dbg !1383 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1385, metadata !DIExpression()), !dbg !1390
  %sv_flags = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1391
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1391
  %and = and i32 %0, 8388608, !dbg !1391
  %tobool.not = icmp eq i32 %and, 0, !dbg !1391
  br i1 %tobool.not, label %if.end, label %cond.true, !dbg !1393

cond.true:                                        ; preds = %entry
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1391
  %tobool1.not = icmp eq ptr %call, null, !dbg !1391
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !1391

if.then:                                          ; preds = %cond.true
  tail call void @Perl_av_fill(ptr noundef nonnull %av, i64 noundef -1), !dbg !1394
  br label %if.end, !dbg !1394

if.end:                                           ; preds = %entry, %if.then, %cond.true
  %sv_flags2 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1395
  %1 = load i32, ptr %sv_flags2, align 4, !dbg !1395
  %and3 = and i32 %1, 1073741824, !dbg !1395
  %tobool4.not = icmp eq i32 %and3, 0, !dbg !1396
  call void @llvm.dbg.value(metadata i1 %tobool4.not, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1390
  br i1 %tobool4.not, label %if.end8, label %if.then6, !dbg !1397

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr %av, align 8, !dbg !1398
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %2, i64 0, i32 2, !dbg !1398
  %3 = load i64, ptr %xav_fill, align 8, !dbg !1398
  %add = add nsw i64 %3, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %add, metadata !1387, metadata !DIExpression()), !dbg !1400
  tail call void @Perl_push_scope() #6, !dbg !1401
  %sv_refcnt = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 1, !dbg !1402
  %4 = load i32, ptr %sv_refcnt, align 8, !dbg !1402
  %inc = add i32 %4, 1, !dbg !1402
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !1402
  tail call void @Perl_save_pushptr(ptr noundef nonnull %av, i32 noundef 11) #6, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %add, metadata !1387, metadata !DIExpression()), !dbg !1400
  %tobool7.not40 = icmp eq i64 %add, 0, !dbg !1403
  br i1 %tobool7.not40, label %if.end8, label %while.body.lr.ph, !dbg !1403

while.body.lr.ph:                                 ; preds = %if.then6
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body, !dbg !1403

while.body:                                       ; preds = %while.body.lr.ph, %S_SvREFCNT_dec.exit
  %key.041 = phi i64 [ %add, %while.body.lr.ph ], [ %dec, %S_SvREFCNT_dec.exit ]
  call void @llvm.dbg.value(metadata i64 %key.041, metadata !1387, metadata !DIExpression()), !dbg !1400
  %5 = load ptr, ptr %sv_u, align 8, !dbg !1404
  %dec = add nsw i64 %key.041, -1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1387, metadata !DIExpression()), !dbg !1400
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %dec, !dbg !1404
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %6, metadata !1168, metadata !DIExpression()) #6, !dbg !1405
  %cmp.not.i = icmp eq ptr %6, null, !dbg !1407
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !1408

if.then.i:                                        ; preds = %while.body
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1, !dbg !1409
  %7 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %7, metadata !1174, metadata !DIExpression()) #6, !dbg !1410
  %cmp1.i = icmp ugt i32 %7, 1, !dbg !1411
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1412

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %7, -1, !dbg !1413
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1414
  br label %S_SvREFCNT_dec.exit, !dbg !1415

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %6, i32 noundef %7) #6, !dbg !1416
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %while.body, %if.then4.i, %if.else.i
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1387, metadata !DIExpression()), !dbg !1400
  %tobool7.not = icmp eq i64 %dec, 0, !dbg !1403
  br i1 %tobool7.not, label %if.end8, label %while.body, !dbg !1403, !llvm.loop !1417

if.end8:                                          ; preds = %S_SvREFCNT_dec.exit, %if.then6, %if.end
  %8 = load ptr, ptr %av, align 8, !dbg !1418
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 4, !dbg !1418
  %9 = load ptr, ptr %xav_alloc, align 8, !dbg !1418
  tail call void @Perl_safesysfree(ptr noundef %9) #6, !dbg !1418
  %10 = load ptr, ptr %av, align 8, !dbg !1419
  %xav_alloc11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 4, !dbg !1419
  store ptr null, ptr %xav_alloc11, align 8, !dbg !1420
  %sv_u12 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1421
  store ptr null, ptr %sv_u12, align 8, !dbg !1422
  %11 = load ptr, ptr %av, align 8, !dbg !1423
  %xav_fill14 = getelementptr inbounds %struct.xpvav, ptr %11, i64 0, i32 2, !dbg !1423
  store i64 -1, ptr %xav_fill14, align 8, !dbg !1424
  %12 = load ptr, ptr %av, align 8, !dbg !1425
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %12, i64 0, i32 3, !dbg !1425
  store i64 -1, ptr %xav_max, align 8, !dbg !1426
  %13 = load i32, ptr %sv_flags2, align 4, !dbg !1427
  %and17 = and i32 %13, 8388608, !dbg !1427
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !1427
  br i1 %tobool18.not, label %if.end21, label %if.then19, !dbg !1429

if.then19:                                        ; preds = %if.end8
  %call20 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %av) #6, !dbg !1430
  br label %if.end21, !dbg !1430

if.end21:                                         ; preds = %if.then19, %if.end8
  br i1 %tobool4.not, label %if.end24, label %if.then23, !dbg !1431

if.then23:                                        ; preds = %if.end21
  tail call void @Perl_pop_scope() #6, !dbg !1432
  br label %if.end24, !dbg !1432

if.end24:                                         ; preds = %if.then23, %if.end21
  ret void, !dbg !1434
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_fill(ptr noundef %av, i64 noundef %fill) local_unnamed_addr #1 !dbg !1435 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1437, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %fill, metadata !1438, metadata !DIExpression()), !dbg !1447
  %0 = tail call i64 @llvm.smax.i64(i64 %fill, i64 -1), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %0, metadata !1438, metadata !DIExpression()), !dbg !1447
  %sv_flags = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1449
  %1 = load i32, ptr %sv_flags, align 4, !dbg !1449
  %and = and i32 %1, 8388608, !dbg !1449
  %tobool.not = icmp eq i32 %and, 0, !dbg !1449
  br i1 %tobool.not, label %if.end11, label %cond.end, !dbg !1449

cond.end:                                         ; preds = %entry
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %call, metadata !1439, metadata !DIExpression()), !dbg !1447
  %tobool1.not = icmp eq ptr %call, null, !dbg !1450
  br i1 %tobool1.not, label %if.end11, label %if.then2, !dbg !1451

if.then2:                                         ; preds = %cond.end
  %call3 = tail call ptr @Perl_sv_newmortal() #6, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1440, metadata !DIExpression()), !dbg !1453
  %add = add nsw i64 %0, 1, !dbg !1454
  tail call void @Perl_sv_setiv(ptr noundef %call3, i64 noundef %add) #6, !dbg !1454
  %2 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 7), align 8, !dbg !1455
  %tobool4.not = icmp eq ptr %2, null, !dbg !1455
  br i1 %tobool4.not, label %cond.false6, label %cond.end8, !dbg !1455

cond.false6:                                      ; preds = %if.then2
  %call7 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.5, i32 noundef 0) #6, !dbg !1455
  store ptr %call7, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 7), align 8, !dbg !1455
  br label %cond.end8, !dbg !1455

cond.end8:                                        ; preds = %if.then2, %cond.false6
  %cond9 = phi ptr [ %call7, %cond.false6 ], [ %2, %if.then2 ], !dbg !1455
  %call10 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef %cond9, i32 noundef 4, i32 noundef 1, ptr noundef %call3) #6, !dbg !1456
  br label %cleanup

if.end11:                                         ; preds = %entry, %cond.end
  %3 = load ptr, ptr %av, align 8, !dbg !1457
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %3, i64 0, i32 3, !dbg !1457
  %4 = load i64, ptr %xav_max, align 8, !dbg !1457
  %cmp12.not = icmp sgt i64 %0, %4, !dbg !1458
  br i1 %cmp12.not, label %if.else35, label %if.then13, !dbg !1459

if.then13:                                        ; preds = %if.end11
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %3, i64 0, i32 2, !dbg !1460
  %5 = load i64, ptr %xav_fill, align 8, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %5, metadata !1443, metadata !DIExpression()), !dbg !1461
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1462
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1462
  call void @llvm.dbg.value(metadata ptr %6, metadata !1446, metadata !DIExpression()), !dbg !1461
  %sv_flags15 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1463
  %7 = load i32, ptr %sv_flags15, align 4, !dbg !1463
  %and16 = and i32 %7, 1073741824, !dbg !1463
  %tobool17.not = icmp eq i32 %and16, 0, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %5, metadata !1443, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %5, metadata !1443, metadata !DIExpression()), !dbg !1461
  br i1 %tobool17.not, label %while.cond21.preheader, label %while.cond.preheader, !dbg !1465

while.cond.preheader:                             ; preds = %if.then13
  %cmp1964 = icmp slt i64 %0, %5, !dbg !1466
  br i1 %cmp1964, label %while.body, label %if.end26, !dbg !1468

while.cond21.preheader:                           ; preds = %if.then13
  %cmp2266 = icmp sgt i64 %0, %5, !dbg !1469
  br i1 %cmp2266, label %while.body23.preheader, label %if.end26, !dbg !1471

while.body23.preheader:                           ; preds = %while.cond21.preheader
  %8 = shl i64 %5, 3, !dbg !1471
  %9 = add i64 %8, 8, !dbg !1471
  %uglygep = getelementptr i8, ptr %6, i64 %9, !dbg !1471
  %10 = sub i64 %0, %5, !dbg !1471
  %11 = shl i64 %10, 3, !dbg !1471
  call void @llvm.memset.p0.i64(ptr align 8 %uglygep, i8 0, i64 %11, i1 false), !dbg !1472
  call void @llvm.dbg.value(metadata i32 undef, metadata !1443, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 undef, metadata !1443, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1461
  br label %if.end26, !dbg !1473

while.body:                                       ; preds = %while.cond.preheader, %S_SvREFCNT_dec.exit
  %key.065 = phi i64 [ %dec, %S_SvREFCNT_dec.exit ], [ %5, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %key.065, metadata !1443, metadata !DIExpression()), !dbg !1461
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %key.065, !dbg !1474
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !1474
  call void @llvm.dbg.value(metadata ptr %12, metadata !1168, metadata !DIExpression()) #6, !dbg !1476
  %cmp.not.i = icmp eq ptr %12, null, !dbg !1478
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !1479

if.then.i:                                        ; preds = %while.body
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 1, !dbg !1480
  %13 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %13, metadata !1174, metadata !DIExpression()) #6, !dbg !1481
  %cmp1.i = icmp ugt i32 %13, 1, !dbg !1482
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1483

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %13, -1, !dbg !1484
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1485
  br label %S_SvREFCNT_dec.exit, !dbg !1486

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %12, i32 noundef %13) #6, !dbg !1487
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %while.body, %if.then4.i, %if.else.i
  %dec = add nsw i64 %key.065, -1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1443, metadata !DIExpression()), !dbg !1461
  store ptr null, ptr %arrayidx, align 8, !dbg !1489
  %cmp19 = icmp sgt i64 %dec, %0, !dbg !1466
  br i1 %cmp19, label %while.body, label %if.end26, !dbg !1468, !llvm.loop !1490

if.end26:                                         ; preds = %S_SvREFCNT_dec.exit, %while.body23.preheader, %while.cond.preheader, %while.cond21.preheader
  %14 = load ptr, ptr %av, align 8, !dbg !1473
  %xav_fill28 = getelementptr inbounds %struct.xpvav, ptr %14, i64 0, i32 2, !dbg !1473
  store i64 %0, ptr %xav_fill28, align 8, !dbg !1492
  %15 = load i32, ptr %sv_flags15, align 4, !dbg !1493
  %and30 = and i32 %15, 4194304, !dbg !1493
  %tobool31.not = icmp eq i32 %and30, 0, !dbg !1493
  br i1 %tobool31.not, label %cleanup, label %if.then32, !dbg !1495

if.then32:                                        ; preds = %if.end26
  %call33 = tail call i32 @Perl_mg_set(ptr noundef nonnull %av) #6, !dbg !1496
  br label %cleanup, !dbg !1496

if.else35:                                        ; preds = %if.end11
  %call36 = tail call ptr @Perl_av_store(ptr noundef nonnull %av, i64 noundef %0, ptr noundef null), !dbg !1497
  br label %cleanup

cleanup:                                          ; preds = %if.else35, %if.then32, %if.end26, %cond.end8
  ret void, !dbg !1498
}

declare !dbg !1499 void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_create_and_push(ptr nocapture noundef %avp, ptr noundef %val) local_unnamed_addr #1 !dbg !1500 {
entry:
  call void @llvm.dbg.value(metadata ptr %avp, metadata !1506, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata ptr %val, metadata !1507, metadata !DIExpression()), !dbg !1508
  %0 = load ptr, ptr %avp, align 8, !dbg !1509
  %tobool.not = icmp eq ptr %0, null, !dbg !1509
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1511

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_newSV_type(i32 noundef 11) #6, !dbg !1512
  store ptr %call, ptr %avp, align 8, !dbg !1513
  br label %if.end, !dbg !1514

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %call, %if.then ], [ %0, %entry ], !dbg !1515
  tail call void @Perl_av_push(ptr noundef %1, ptr noundef %val), !dbg !1515
  ret void, !dbg !1516
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_push(ptr noundef %av, ptr noundef %val) local_unnamed_addr #1 !dbg !1517 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1521, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %val, metadata !1522, metadata !DIExpression()), !dbg !1524
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1525
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1525
  %and = and i32 %0, 134283264, !dbg !1525
  %tobool.not = icmp eq i32 %and, 0, !dbg !1525
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1527

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1528
  %sv_flags1.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2
  %.pre = load i32, ptr %sv_flags1.phi.trans.insert, align 4, !dbg !1529
  br label %if.end, !dbg !1528

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1529
  %and2 = and i32 %1, 8388608, !dbg !1529
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !1529
  br i1 %tobool3.not, label %if.end13, label %cond.end, !dbg !1529

cond.end:                                         ; preds = %if.end
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1529
  call void @llvm.dbg.value(metadata ptr %call, metadata !1523, metadata !DIExpression()), !dbg !1524
  %tobool4.not = icmp eq ptr %call, null, !dbg !1531
  br i1 %tobool4.not, label %if.end13, label %if.then5, !dbg !1532

if.then5:                                         ; preds = %cond.end
  %2 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 9), align 8, !dbg !1533
  %tobool6.not = icmp eq ptr %2, null, !dbg !1533
  br i1 %tobool6.not, label %cond.false8, label %cond.end10, !dbg !1533

cond.false8:                                      ; preds = %if.then5
  %call9 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.1, i32 noundef 0) #6, !dbg !1533
  store ptr %call9, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 9), align 8, !dbg !1533
  br label %cond.end10, !dbg !1533

cond.end10:                                       ; preds = %if.then5, %cond.false8
  %cond11 = phi ptr [ %call9, %cond.false8 ], [ %2, %if.then5 ], !dbg !1533
  %call12 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef %cond11, i32 noundef 4, i32 noundef 1, ptr noundef %val) #6, !dbg !1535
  br label %cleanup, !dbg !1536

if.end13:                                         ; preds = %if.end, %cond.end
  %3 = load ptr, ptr %av, align 8, !dbg !1537
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %3, i64 0, i32 2, !dbg !1537
  %4 = load i64, ptr %xav_fill, align 8, !dbg !1537
  %add = add nsw i64 %4, 1, !dbg !1537
  %call14 = tail call ptr @Perl_av_store(ptr noundef nonnull %av, i64 noundef %add, ptr noundef %val), !dbg !1537
  br label %cleanup, !dbg !1538

cleanup:                                          ; preds = %if.end13, %cond.end10
  ret void, !dbg !1538
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_pop(ptr noundef %av) local_unnamed_addr #1 !dbg !1539 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1543, metadata !DIExpression()), !dbg !1546
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1547
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1547
  %and = and i32 %0, 134283264, !dbg !1547
  %tobool.not = icmp eq i32 %and, 0, !dbg !1547
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1549

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1550
  %sv_flags2.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2
  %.pre = load i32, ptr %sv_flags2.phi.trans.insert, align 4, !dbg !1551
  br label %if.end, !dbg !1550

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1551
  %sv_flags2 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1551
  %and3 = and i32 %1, 8388608, !dbg !1551
  %tobool4.not = icmp eq i32 %and3, 0, !dbg !1551
  br i1 %tobool4.not, label %if.end18, label %cond.end, !dbg !1551

cond.end:                                         ; preds = %if.end
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1551
  call void @llvm.dbg.value(metadata ptr %call, metadata !1545, metadata !DIExpression()), !dbg !1546
  %tobool5.not = icmp eq ptr %call, null, !dbg !1553
  br i1 %tobool5.not, label %if.end18, label %if.then6, !dbg !1554

if.then6:                                         ; preds = %cond.end
  %2 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 10), align 16, !dbg !1555
  %tobool7.not = icmp eq ptr %2, null, !dbg !1555
  br i1 %tobool7.not, label %cond.false9, label %cond.end11, !dbg !1555

cond.false9:                                      ; preds = %if.then6
  %call10 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.2, i32 noundef 0) #6, !dbg !1555
  store ptr %call10, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 10), align 16, !dbg !1555
  br label %cond.end11, !dbg !1555

cond.end11:                                       ; preds = %if.then6, %cond.false9
  %cond12 = phi ptr [ %call10, %cond.false9 ], [ %2, %if.then6 ], !dbg !1555
  %call13 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef %cond12, i32 noundef 0, i32 noundef 0) #6, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1544, metadata !DIExpression()), !dbg !1546
  %tobool14.not = icmp eq ptr %call13, null, !dbg !1558
  br i1 %tobool14.not, label %cleanup, label %if.then15, !dbg !1560

if.then15:                                        ; preds = %cond.end11
  %call16 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %call13) #6, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1544, metadata !DIExpression()), !dbg !1546
  br label %cleanup, !dbg !1562

if.end18:                                         ; preds = %if.end, %cond.end
  %3 = load i32, ptr %sv_flags2, align 4, !dbg !1563
  %and20 = and i32 %3, 8388608, !dbg !1563
  %tobool21.not = icmp eq i32 %and20, 0, !dbg !1563
  br i1 %tobool21.not, label %cond.false24, label %cond.true22, !dbg !1563

cond.true22:                                      ; preds = %if.end18
  %call23 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1563
  %conv = sext i32 %call23 to i64, !dbg !1563
  br label %cond.end25, !dbg !1563

cond.false24:                                     ; preds = %if.end18
  %4 = load ptr, ptr %av, align 8, !dbg !1563
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %4, i64 0, i32 2, !dbg !1563
  %5 = load i64, ptr %xav_fill, align 8, !dbg !1563
  br label %cond.end25, !dbg !1563

cond.end25:                                       ; preds = %cond.false24, %cond.true22
  %cond26 = phi i64 [ %conv, %cond.true22 ], [ %5, %cond.false24 ], !dbg !1563
  %cmp = icmp slt i64 %cond26, 0, !dbg !1565
  br i1 %cmp, label %cleanup, label %if.end29, !dbg !1566

if.end29:                                         ; preds = %cond.end25
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1567
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1567
  %7 = load ptr, ptr %av, align 8, !dbg !1568
  %xav_fill31 = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 2, !dbg !1568
  %8 = load i64, ptr %xav_fill31, align 8, !dbg !1568
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %8, !dbg !1567
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %9, metadata !1544, metadata !DIExpression()), !dbg !1546
  %dec = add nsw i64 %8, -1, !dbg !1569
  store i64 %dec, ptr %xav_fill31, align 8, !dbg !1569
  store ptr null, ptr %arrayidx, align 8, !dbg !1570
  %10 = load i32, ptr %sv_flags, align 4, !dbg !1571
  %and37 = and i32 %10, 4194304, !dbg !1571
  %tobool38.not = icmp eq i32 %and37, 0, !dbg !1571
  br i1 %tobool38.not, label %if.end41, label %if.then39, !dbg !1573

if.then39:                                        ; preds = %if.end29
  %call40 = tail call i32 @Perl_mg_set(ptr noundef nonnull %av) #6, !dbg !1574
  br label %if.end41, !dbg !1574

if.end41:                                         ; preds = %if.then39, %if.end29
  %tobool42.not = icmp eq ptr %9, null, !dbg !1575
  %spec.select = select i1 %tobool42.not, ptr @PL_sv_undef, ptr %9, !dbg !1575
  br label %cleanup, !dbg !1576

cleanup:                                          ; preds = %cond.end25, %cond.end11, %if.then15, %if.end41
  %retval.0 = phi ptr [ %spec.select, %if.end41 ], [ %call16, %if.then15 ], [ null, %cond.end11 ], [ @PL_sv_undef, %cond.end25 ], !dbg !1546
  ret ptr %retval.0, !dbg !1577
}

declare !dbg !1578 ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_create_and_unshift_one(ptr nocapture noundef %avp, ptr noundef %val) local_unnamed_addr #1 !dbg !1581 {
entry:
  call void @llvm.dbg.value(metadata ptr %avp, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %val, metadata !1586, metadata !DIExpression()), !dbg !1587
  %0 = load ptr, ptr %avp, align 8, !dbg !1588
  %tobool.not = icmp eq ptr %0, null, !dbg !1588
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1590

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_newSV_type(i32 noundef 11) #6, !dbg !1591
  store ptr %call, ptr %avp, align 8, !dbg !1592
  br label %if.end, !dbg !1593

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %call, %if.then ], [ %0, %entry ], !dbg !1594
  tail call void @Perl_av_unshift(ptr noundef %1, i64 noundef 1), !dbg !1594
  %2 = load ptr, ptr %avp, align 8, !dbg !1595
  %call1 = tail call ptr @Perl_av_store(ptr noundef %2, i64 noundef 0, ptr noundef %val), !dbg !1595
  ret ptr %call1, !dbg !1596
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_unshift(ptr noundef %av, i64 noundef %num) local_unnamed_addr #1 !dbg !1597 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1599, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i64 %num, metadata !1600, metadata !DIExpression()), !dbg !1609
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1610
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1610
  %and = and i32 %0, 134283264, !dbg !1610
  %tobool.not = icmp eq i32 %and, 0, !dbg !1610
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1612

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1613
  %sv_flags1.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2
  %.pre = load i32, ptr %sv_flags1.phi.trans.insert, align 4, !dbg !1614
  br label %if.end, !dbg !1613

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1614
  %and2 = and i32 %1, 8388608, !dbg !1614
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !1614
  br i1 %tobool3.not, label %if.end13, label %cond.end, !dbg !1614

cond.end:                                         ; preds = %if.end
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1614
  call void @llvm.dbg.value(metadata ptr %call, metadata !1602, metadata !DIExpression()), !dbg !1609
  %tobool4.not = icmp eq ptr %call, null, !dbg !1616
  br i1 %tobool4.not, label %if.end13, label %if.then5, !dbg !1617

if.then5:                                         ; preds = %cond.end
  %2 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 12), align 16, !dbg !1618
  %tobool6.not = icmp eq ptr %2, null, !dbg !1618
  br i1 %tobool6.not, label %cond.false8, label %cond.end10, !dbg !1618

cond.false8:                                      ; preds = %if.then5
  %call9 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.3, i32 noundef 0) #6, !dbg !1618
  store ptr %call9, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 12), align 16, !dbg !1618
  br label %cond.end10, !dbg !1618

cond.end10:                                       ; preds = %if.then5, %cond.false8
  %cond11 = phi ptr [ %call9, %cond.false8 ], [ %2, %if.then5 ], !dbg !1618
  %conv = trunc i64 %num to i32, !dbg !1620
  %call12 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef %cond11, i32 noundef 516, i32 noundef %conv) #6, !dbg !1621
  br label %cleanup, !dbg !1622

if.end13:                                         ; preds = %if.end, %cond.end
  %cmp = icmp slt i64 %num, 1, !dbg !1623
  br i1 %cmp, label %cleanup, label %if.end16, !dbg !1625

if.end16:                                         ; preds = %if.end13
  %3 = load i32, ptr %sv_flags, align 4, !dbg !1626
  %4 = and i32 %3, -1073741824, !dbg !1628
  %.not = icmp eq i32 %4, -2147483648, !dbg !1628
  br i1 %.not, label %if.end.i, label %if.end24, !dbg !1628

if.end.i:                                         ; preds = %if.end16
  call void @llvm.dbg.value(metadata ptr %av, metadata !716, metadata !DIExpression()), !dbg !1629
  %5 = load ptr, ptr %av, align 8, !dbg !1631
  %xav_max.i = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 3, !dbg !1631
  %6 = load i64, ptr %xav_max.i, align 8, !dbg !1631
  %add.i = add nsw i64 %6, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %xav_fill45.i = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !1633
  %7 = load i64, ptr %xav_fill45.i, align 8, !dbg !1633
  %cmp47.i = icmp sgt i64 %6, %7, !dbg !1634
  br i1 %cmp47.i, label %while.body.lr.ph.i, label %while.cond3.preheader.i, !dbg !1635

while.body.lr.ph.i:                               ; preds = %if.end.i
  %sv_u.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body.i, !dbg !1635

while.cond3.preheader.i:                          ; preds = %while.body.i, %if.end.i
  %8 = phi ptr [ %5, %if.end.i ], [ %10, %while.body.i ]
  %key.0.lcssa.i = phi i64 [ %add.i, %if.end.i ], [ %dec.i, %while.body.i ], !dbg !1629
  call void @llvm.dbg.value(metadata i64 %key.0.lcssa.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %tobool4.not49.i = icmp eq i64 %key.0.lcssa.i, 0, !dbg !1636
  br i1 %tobool4.not49.i, label %while.end15.i, label %while.body5.lr.ph.i, !dbg !1636

while.body5.lr.ph.i:                              ; preds = %while.cond3.preheader.i
  %sv_u6.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body5.i, !dbg !1636

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %key.048.i = phi i64 [ %add.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %key.048.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %9 = load ptr, ptr %sv_u.i, align 8, !dbg !1637
  %dec.i = add nsw i64 %key.048.i, -1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %arrayidx.i = getelementptr inbounds ptr, ptr %9, i64 %dec.i, !dbg !1637
  store ptr null, ptr %arrayidx.i, align 8, !dbg !1639
  %10 = load ptr, ptr %av, align 8, !dbg !1633
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2, !dbg !1633
  %11 = load i64, ptr %xav_fill.i, align 8, !dbg !1633
  %add2.i = add nsw i64 %11, 1, !dbg !1640
  %cmp.i = icmp sgt i64 %dec.i, %add2.i, !dbg !1634
  br i1 %cmp.i, label %while.body.i, label %while.cond3.preheader.i, !dbg !1635, !llvm.loop !1641

while.body5.i:                                    ; preds = %if.end14.i, %while.body5.lr.ph.i
  %key.150.i = phi i64 [ %key.0.lcssa.i, %while.body5.lr.ph.i ], [ %dec7.i, %if.end14.i ]
  call void @llvm.dbg.value(metadata i64 %key.150.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %12 = load ptr, ptr %sv_u6.i, align 8, !dbg !1643
  %dec7.i = add nsw i64 %key.150.i, -1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %dec7.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %arrayidx8.i = getelementptr inbounds ptr, ptr %12, i64 %dec7.i, !dbg !1643
  %13 = load ptr, ptr %arrayidx8.i, align 8, !dbg !1643
  call void @llvm.dbg.value(metadata ptr %13, metadata !718, metadata !DIExpression()), !dbg !1645
  %cmp9.i = icmp ne ptr %13, @PL_sv_undef, !dbg !1646
  %tobool11.i = icmp ne ptr %13, null
  %or.cond.i = and i1 %cmp9.i, %tobool11.i, !dbg !1647
  br i1 %or.cond.i, label %if.then12.i, label %if.end14.i, !dbg !1647

if.then12.i:                                      ; preds = %while.body5.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 1, !dbg !1648
  %14 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1648
  %inc.i = add i32 %14, 1, !dbg !1648
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !1648
  br label %if.end14.i, !dbg !1648

if.end14.i:                                       ; preds = %if.then12.i, %while.body5.i
  call void @llvm.dbg.value(metadata i64 %dec7.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %tobool4.not.i = icmp eq i64 %dec7.i, 0, !dbg !1636
  br i1 %tobool4.not.i, label %while.end15.loopexit.i, label %while.body5.i, !dbg !1636, !llvm.loop !1649

while.end15.loopexit.i:                           ; preds = %if.end14.i
  %.pre.i = load ptr, ptr %av, align 8, !dbg !1651
  br label %while.end15.i, !dbg !1652

while.end15.i:                                    ; preds = %while.end15.loopexit.i, %while.cond3.preheader.i
  %15 = phi ptr [ %.pre.i, %while.end15.loopexit.i ], [ %8, %while.cond3.preheader.i ], !dbg !1651
  %sv_u16.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1652
  %16 = load ptr, ptr %sv_u16.i, align 8, !dbg !1652
  %xav_alloc.i = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 4, !dbg !1651
  %17 = load ptr, ptr %xav_alloc.i, align 8, !dbg !1651
  call void @llvm.dbg.value(metadata !DIArgList(ptr %16, ptr %17), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1629
  %tobool19.not51.i = icmp eq ptr %16, %17, !dbg !1653
  br i1 %tobool19.not51.i, label %Perl_av_reify.exit, label %while.body20.preheader.i, !dbg !1653

while.body20.preheader.i:                         ; preds = %while.end15.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i64, !dbg !1654
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast.i, ptr %17), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1629
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i64, !dbg !1654
  call void @llvm.dbg.value(metadata !DIArgList(ptr %16, i64 %sub.ptr.rhs.cast.i), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1629
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, metadata !717, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1629
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %dec23.i114 = add nsw i64 %sub.ptr.div.i, -1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %dec23.i114, metadata !717, metadata !DIExpression()), !dbg !1629
  %arrayidx24.i115 = getelementptr inbounds ptr, ptr %17, i64 %dec23.i114, !dbg !1656
  store ptr null, ptr %arrayidx24.i115, align 8, !dbg !1657
  %tobool19.not.i116 = icmp eq i64 %dec23.i114, 0, !dbg !1653
  br i1 %tobool19.not.i116, label %Perl_av_reify.exit, label %while.body20.while.body20_crit_edge.i, !dbg !1653, !llvm.loop !1658

while.body20.while.body20_crit_edge.i:            ; preds = %while.body20.preheader.i, %while.body20.while.body20_crit_edge.i
  %dec23.i117 = phi i64 [ %dec23.i, %while.body20.while.body20_crit_edge.i ], [ %dec23.i114, %while.body20.preheader.i ]
  %.pre53.i = load ptr, ptr %av, align 8, !dbg !1656
  %xav_alloc22.phi.trans.insert.i = getelementptr inbounds %struct.xpvav, ptr %.pre53.i, i64 0, i32 4
  %.pre54.i = load ptr, ptr %xav_alloc22.phi.trans.insert.i, align 8, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %dec23.i117, metadata !717, metadata !DIExpression()), !dbg !1629
  %dec23.i = add nsw i64 %dec23.i117, -1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %dec23.i, metadata !717, metadata !DIExpression()), !dbg !1629
  %arrayidx24.i = getelementptr inbounds ptr, ptr %.pre54.i, i64 %dec23.i, !dbg !1656
  store ptr null, ptr %arrayidx24.i, align 8, !dbg !1657
  %tobool19.not.i = icmp eq i64 %dec23.i, 0, !dbg !1653
  br i1 %tobool19.not.i, label %Perl_av_reify.exit, label %while.body20.while.body20_crit_edge.i, !dbg !1653, !llvm.loop !1658

Perl_av_reify.exit:                               ; preds = %while.body20.while.body20_crit_edge.i, %while.body20.preheader.i, %while.end15.i
  %18 = load i32, ptr %sv_flags, align 4, !dbg !1660
  %and27.i = and i32 %18, 1073741823, !dbg !1660
  %or.i = or i32 %and27.i, 1073741824, !dbg !1661
  store i32 %or.i, ptr %sv_flags, align 4, !dbg !1661
  br label %if.end24, !dbg !1662

if.end24:                                         ; preds = %Perl_av_reify.exit, %if.end16
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1663
  %19 = load ptr, ptr %sv_u, align 8, !dbg !1663
  %20 = load ptr, ptr %av, align 8, !dbg !1664
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %20, i64 0, i32 4, !dbg !1664
  %21 = load ptr, ptr %xav_alloc, align 8, !dbg !1664
  call void @llvm.dbg.value(metadata !DIArgList(ptr %19, ptr %21), metadata !1601, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1609
  %tobool25.not = icmp eq ptr %19, %21, !dbg !1665
  br i1 %tobool25.not, label %if.end36, label %if.then26, !dbg !1667

if.then26:                                        ; preds = %if.end24
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64, !dbg !1668
  call void @llvm.dbg.value(metadata !DIArgList(ptr %19, i64 %sub.ptr.rhs.cast), metadata !1601, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1609
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64, !dbg !1668
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast, ptr %21), metadata !1601, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1609
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1601, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1609
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !1601, metadata !DIExpression()), !dbg !1609
  %22 = tail call i64 @llvm.smin.i64(i64 %sub.ptr.div, i64 %num), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %22, metadata !1601, metadata !DIExpression()), !dbg !1609
  %sub = sub nsw i64 %num, %22, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1600, metadata !DIExpression()), !dbg !1609
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %20, i64 0, i32 3, !dbg !1672
  %23 = load i64, ptr %xav_max, align 8, !dbg !1673
  %add = add nsw i64 %23, %22, !dbg !1673
  store i64 %add, ptr %xav_max, align 8, !dbg !1673
  %24 = load ptr, ptr %av, align 8, !dbg !1674
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %24, i64 0, i32 2, !dbg !1674
  %25 = load i64, ptr %xav_fill, align 8, !dbg !1675
  %add33 = add nsw i64 %25, %22, !dbg !1675
  store i64 %add33, ptr %xav_fill, align 8, !dbg !1675
  %26 = load ptr, ptr %sv_u, align 8, !dbg !1676
  %idx.neg = sub i64 0, %22, !dbg !1677
  %add.ptr = getelementptr inbounds ptr, ptr %26, i64 %idx.neg, !dbg !1677
  store ptr %add.ptr, ptr %sv_u, align 8, !dbg !1678
  br label %if.end36, !dbg !1679

if.end36:                                         ; preds = %if.then26, %if.end24
  %num.addr.0 = phi i64 [ %sub, %if.then26 ], [ %num, %if.end24 ]
  call void @llvm.dbg.value(metadata i64 %num.addr.0, metadata !1600, metadata !DIExpression()), !dbg !1609
  %tobool37.not = icmp eq i64 %num.addr.0, 0, !dbg !1680
  br i1 %tobool37.not, label %cleanup, label %if.then38, !dbg !1681

if.then38:                                        ; preds = %if.end36
  %27 = load ptr, ptr %av, align 8, !dbg !1682
  %xav_fill41 = getelementptr inbounds %struct.xpvav, ptr %27, i64 0, i32 2, !dbg !1682
  %28 = load i64, ptr %xav_fill41, align 8, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %28, metadata !1606, metadata !DIExpression()), !dbg !1683
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 0), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %29, metadata !1608, metadata !DIExpression()), !dbg !1683
  %add48 = add nsw i64 %29, %num.addr.0, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %add48, metadata !1600, metadata !DIExpression()), !dbg !1609
  %add49 = add nsw i64 %add48, %28, !dbg !1686
  tail call void @Perl_av_extend(ptr noundef nonnull %av, i64 noundef %add49), !dbg !1686
  %30 = load ptr, ptr %av, align 8, !dbg !1687
  %xav_fill51 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2, !dbg !1687
  %31 = load i64, ptr %xav_fill51, align 8, !dbg !1688
  %add52 = add nsw i64 %31, %add48, !dbg !1688
  store i64 %add52, ptr %xav_fill51, align 8, !dbg !1688
  %32 = load ptr, ptr %sv_u, align 8, !dbg !1689
  call void @llvm.dbg.value(metadata ptr %32, metadata !1603, metadata !DIExpression()), !dbg !1683
  %add.ptr54 = getelementptr inbounds ptr, ptr %32, i64 %add48, !dbg !1690
  %add55 = shl i64 %28, 3, !dbg !1690
  %mul = add i64 %add55, 8, !dbg !1690
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr54, ptr align 1 %32, i64 %mul, i1 false), !dbg !1690
  %33 = shl nuw i64 %add48, 3, !dbg !1691
  call void @llvm.memset.p0.i64(ptr align 8 %32, i8 0, i64 %33, i1 false), !dbg !1692
  call void @llvm.dbg.value(metadata i32 undef, metadata !1600, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1609
  %34 = load ptr, ptr %av, align 8, !dbg !1694
  %xav_max58 = getelementptr inbounds %struct.xpvav, ptr %34, i64 0, i32 3, !dbg !1694
  %35 = load i64, ptr %xav_max58, align 8, !dbg !1695
  %sub59 = sub nsw i64 %35, %29, !dbg !1695
  store i64 %sub59, ptr %xav_max58, align 8, !dbg !1695
  %36 = load ptr, ptr %av, align 8, !dbg !1696
  %xav_fill61 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2, !dbg !1696
  %37 = load i64, ptr %xav_fill61, align 8, !dbg !1697
  %sub62 = sub nsw i64 %37, %29, !dbg !1697
  store i64 %sub62, ptr %xav_fill61, align 8, !dbg !1697
  %38 = load ptr, ptr %sv_u, align 8, !dbg !1698
  %add.ptr64 = getelementptr inbounds ptr, ptr %38, i64 %29, !dbg !1699
  store ptr %add.ptr64, ptr %sv_u, align 8, !dbg !1700
  br label %cleanup, !dbg !1701

cleanup:                                          ; preds = %if.end36, %if.then38, %if.end13, %cond.end10
  ret void, !dbg !1702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_shift(ptr noundef %av) local_unnamed_addr #1 !dbg !1703 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1705, metadata !DIExpression()), !dbg !1708
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1709
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1709
  %and = and i32 %0, 134283264, !dbg !1709
  %tobool.not = icmp eq i32 %and, 0, !dbg !1709
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1711

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1712
  %sv_flags2.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2
  %.pre = load i32, ptr %sv_flags2.phi.trans.insert, align 4, !dbg !1713
  br label %if.end, !dbg !1712

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1713
  %sv_flags2 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1713
  %and3 = and i32 %1, 8388608, !dbg !1713
  %tobool4.not = icmp eq i32 %and3, 0, !dbg !1713
  br i1 %tobool4.not, label %if.end18, label %cond.end, !dbg !1713

cond.end:                                         ; preds = %if.end
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %call, metadata !1707, metadata !DIExpression()), !dbg !1708
  %tobool5.not = icmp eq ptr %call, null, !dbg !1715
  br i1 %tobool5.not, label %if.end18, label %if.then6, !dbg !1716

if.then6:                                         ; preds = %cond.end
  %2 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 11), align 8, !dbg !1717
  %tobool7.not = icmp eq ptr %2, null, !dbg !1717
  br i1 %tobool7.not, label %cond.false9, label %cond.end11, !dbg !1717

cond.false9:                                      ; preds = %if.then6
  %call10 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.4, i32 noundef 0) #6, !dbg !1717
  store ptr %call10, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 11), align 8, !dbg !1717
  br label %cond.end11, !dbg !1717

cond.end11:                                       ; preds = %if.then6, %cond.false9
  %cond12 = phi ptr [ %call10, %cond.false9 ], [ %2, %if.then6 ], !dbg !1717
  %call13 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %av, ptr noundef nonnull %call, ptr noundef %cond12, i32 noundef 0, i32 noundef 0) #6, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1706, metadata !DIExpression()), !dbg !1708
  %tobool14.not = icmp eq ptr %call13, null, !dbg !1720
  br i1 %tobool14.not, label %cleanup, label %if.then15, !dbg !1722

if.then15:                                        ; preds = %cond.end11
  %call16 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %call13) #6, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1706, metadata !DIExpression()), !dbg !1708
  br label %cleanup, !dbg !1724

if.end18:                                         ; preds = %if.end, %cond.end
  %3 = load i32, ptr %sv_flags2, align 4, !dbg !1725
  %and20 = and i32 %3, 8388608, !dbg !1725
  %tobool21.not = icmp eq i32 %and20, 0, !dbg !1725
  br i1 %tobool21.not, label %cond.false24, label %cond.true22, !dbg !1725

cond.true22:                                      ; preds = %if.end18
  %call23 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1725
  %conv = sext i32 %call23 to i64, !dbg !1725
  br label %cond.end25, !dbg !1725

cond.false24:                                     ; preds = %if.end18
  %4 = load ptr, ptr %av, align 8, !dbg !1725
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %4, i64 0, i32 2, !dbg !1725
  %5 = load i64, ptr %xav_fill, align 8, !dbg !1725
  br label %cond.end25, !dbg !1725

cond.end25:                                       ; preds = %cond.false24, %cond.true22
  %cond26 = phi i64 [ %conv, %cond.true22 ], [ %5, %cond.false24 ], !dbg !1725
  %cmp = icmp slt i64 %cond26, 0, !dbg !1727
  br i1 %cmp, label %cleanup, label %if.end29, !dbg !1728

if.end29:                                         ; preds = %cond.end25
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1729
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1729
  %7 = load ptr, ptr %6, align 8, !dbg !1730
  call void @llvm.dbg.value(metadata ptr %7, metadata !1706, metadata !DIExpression()), !dbg !1708
  %8 = load i32, ptr %sv_flags, align 4, !dbg !1731
  %and31 = and i32 %8, 1073741824, !dbg !1731
  %tobool32.not = icmp eq i32 %and31, 0, !dbg !1731
  br i1 %tobool32.not, label %if.end35, label %if.then33, !dbg !1733

if.then33:                                        ; preds = %if.end29
  store ptr null, ptr %6, align 8, !dbg !1734
  %.pre75 = load ptr, ptr %sv_u, align 8, !dbg !1735
  br label %if.end35, !dbg !1736

if.end35:                                         ; preds = %if.then33, %if.end29
  %9 = phi ptr [ %.pre75, %if.then33 ], [ %6, %if.end29 ], !dbg !1735
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 1, !dbg !1737
  store ptr %add.ptr, ptr %sv_u, align 8, !dbg !1738
  %10 = load ptr, ptr %av, align 8, !dbg !1739
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 3, !dbg !1739
  %11 = load i64, ptr %xav_max, align 8, !dbg !1740
  %dec = add nsw i64 %11, -1, !dbg !1740
  store i64 %dec, ptr %xav_max, align 8, !dbg !1740
  %12 = load ptr, ptr %av, align 8, !dbg !1741
  %xav_fill40 = getelementptr inbounds %struct.xpvav, ptr %12, i64 0, i32 2, !dbg !1741
  %13 = load i64, ptr %xav_fill40, align 8, !dbg !1742
  %dec41 = add nsw i64 %13, -1, !dbg !1742
  store i64 %dec41, ptr %xav_fill40, align 8, !dbg !1742
  %14 = load i32, ptr %sv_flags, align 4, !dbg !1743
  %and43 = and i32 %14, 4194304, !dbg !1743
  %tobool44.not = icmp eq i32 %and43, 0, !dbg !1743
  br i1 %tobool44.not, label %if.end47, label %if.then45, !dbg !1745

if.then45:                                        ; preds = %if.end35
  %call46 = tail call i32 @Perl_mg_set(ptr noundef nonnull %av) #6, !dbg !1746
  br label %if.end47, !dbg !1746

if.end47:                                         ; preds = %if.then45, %if.end35
  %tobool48.not = icmp eq ptr %7, null, !dbg !1747
  %spec.select = select i1 %tobool48.not, ptr @PL_sv_undef, ptr %7, !dbg !1747
  br label %cleanup, !dbg !1748

cleanup:                                          ; preds = %cond.end25, %cond.end11, %if.then15, %if.end47
  %retval.0 = phi ptr [ %spec.select, %if.end47 ], [ %call16, %if.then15 ], [ null, %cond.end11 ], [ @PL_sv_undef, %cond.end25 ], !dbg !1708
  ret ptr %retval.0, !dbg !1749
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_av_len(ptr noundef %av) local_unnamed_addr #1 !dbg !1750 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata ptr %av, metadata !1756, metadata !DIExpression()) #6, !dbg !1759
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1761
  %0 = load i32, ptr %sv_flags.i, align 4, !dbg !1761
  %and.i = and i32 %0, 8388608, !dbg !1761
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1761
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i, !dbg !1761

cond.true.i:                                      ; preds = %entry
  %call.i = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1761
  %conv.i = sext i32 %call.i to i64, !dbg !1761
  br label %S_av_top_index.exit, !dbg !1761

cond.false.i:                                     ; preds = %entry
  %1 = load ptr, ptr %av, align 8, !dbg !1761
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %1, i64 0, i32 2, !dbg !1761
  %2 = load i64, ptr %xav_fill.i, align 8, !dbg !1761
  br label %S_av_top_index.exit, !dbg !1761

S_av_top_index.exit:                              ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %2, %cond.false.i ], !dbg !1761
  ret i64 %cond.i, !dbg !1762
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_delete(ptr noundef %av, i64 noundef %key, i32 noundef %flags) local_unnamed_addr #1 !dbg !1763 {
entry:
  %key.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %av, metadata !1767, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %key, metadata !1768, metadata !DIExpression()), !dbg !1777
  store i64 %key, ptr %key.addr, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1769, metadata !DIExpression()), !dbg !1777
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1778
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1778
  %and = and i32 %0, 134283264, !dbg !1778
  %tobool.not = icmp eq i32 %and, 0, !dbg !1778
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1780

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1781
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1782
  br label %if.end, !dbg !1781

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1782
  %and2 = and i32 %1, 8388608, !dbg !1782
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !1782
  br i1 %tobool3.not, label %if.end28, label %if.then4, !dbg !1783

if.then4:                                         ; preds = %if.end
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %call, metadata !1771, metadata !DIExpression()), !dbg !1785
  %tobool5.not = icmp eq ptr %call, null, !dbg !1786
  br i1 %tobool5.not, label %lor.lhs.false, label %if.then8, !dbg !1787

lor.lhs.false:                                    ; preds = %if.then4
  %call6 = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 68) #6, !dbg !1788
  %tobool7.not = icmp eq ptr %call6, null, !dbg !1788
  br i1 %tobool7.not, label %if.end28, label %if.then8, !dbg !1789

if.then8:                                         ; preds = %lor.lhs.false, %if.then4
  call void @llvm.dbg.value(metadata i64 %key, metadata !1768, metadata !DIExpression()), !dbg !1777
  %cmp = icmp slt i64 %key, 0, !dbg !1790
  br i1 %cmp, label %if.then9, label %if.end13, !dbg !1792

if.then9:                                         ; preds = %if.then8
  call void @llvm.dbg.value(metadata ptr %key.addr, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !1777
  %call10 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %av, ptr noundef %call, ptr noundef nonnull %key.addr), !dbg !1793
  br i1 %call10, label %if.then9.if.end13_crit_edge, label %cleanup92, !dbg !1796

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  %.pre138 = load i64, ptr %key.addr, align 8, !dbg !1797
  br label %if.end13, !dbg !1796

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.then8
  %2 = phi i64 [ %.pre138, %if.then9.if.end13_crit_edge ], [ %key, %if.then8 ], !dbg !1797
  call void @llvm.dbg.value(metadata i64 %2, metadata !1768, metadata !DIExpression()), !dbg !1777
  %call14 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %av, i64 noundef %2, i32 noundef 1), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1774, metadata !DIExpression()), !dbg !1798
  %tobool15.not = icmp eq ptr %call14, null, !dbg !1799
  br i1 %tobool15.not, label %if.end28, label %if.then16, !dbg !1801

if.then16:                                        ; preds = %if.end13
  %3 = load ptr, ptr %call14, align 8, !dbg !1802
  call void @llvm.dbg.value(metadata ptr %3, metadata !1770, metadata !DIExpression()), !dbg !1777
  %call17 = tail call i32 @Perl_mg_clear(ptr noundef %3) #6, !dbg !1804
  %call18 = tail call ptr @Perl_mg_find(ptr noundef %3, i32 noundef 112) #6, !dbg !1805
  %tobool19.not = icmp eq ptr %call18, null, !dbg !1805
  br i1 %tobool19.not, label %cleanup92, label %if.then20, !dbg !1807

if.then20:                                        ; preds = %if.then16
  %call21 = tail call i32 @Perl_sv_unmagic(ptr noundef %3, i32 noundef 112) #6, !dbg !1808
  br label %cleanup92, !dbg !1810

if.end28:                                         ; preds = %lor.lhs.false, %if.end, %if.end13
  %4 = phi i64 [ %2, %if.end13 ], [ %key, %if.end ], [ %key, %lor.lhs.false ], !dbg !1811
  call void @llvm.dbg.value(metadata i64 %4, metadata !1768, metadata !DIExpression()), !dbg !1777
  %cmp29 = icmp slt i64 %4, 0, !dbg !1813
  br i1 %cmp29, label %if.then30, label %if.end40, !dbg !1814

if.then30:                                        ; preds = %if.end28
  %sv_flags31 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1815
  %5 = load i32, ptr %sv_flags31, align 4, !dbg !1815
  %and32 = and i32 %5, 8388608, !dbg !1815
  %tobool33.not = icmp eq i32 %and32, 0, !dbg !1815
  br i1 %tobool33.not, label %cond.false, label %cond.true, !dbg !1815

cond.true:                                        ; preds = %if.then30
  %call34 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1815
  %conv = sext i32 %call34 to i64, !dbg !1815
  br label %cond.end, !dbg !1815

cond.false:                                       ; preds = %if.then30
  %6 = load ptr, ptr %av, align 8, !dbg !1815
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %6, i64 0, i32 2, !dbg !1815
  %7 = load i64, ptr %xav_fill, align 8, !dbg !1815
  br label %cond.end, !dbg !1815

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %7, %cond.false ], !dbg !1815
  call void @llvm.dbg.value(metadata i64 %4, metadata !1768, metadata !DIExpression()), !dbg !1777
  %add = add nsw i64 %4, 1, !dbg !1817
  %add35 = add i64 %add, %cond, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %add35, metadata !1768, metadata !DIExpression()), !dbg !1777
  %cmp36 = icmp slt i64 %add35, 0, !dbg !1819
  br i1 %cmp36, label %cleanup92, label %if.end40, !dbg !1821

if.end40:                                         ; preds = %cond.end, %if.end28
  %key.addr.promoted = phi i64 [ %add35, %cond.end ], [ %4, %if.end28 ], !dbg !1822
  call void @llvm.dbg.value(metadata i64 %key.addr.promoted, metadata !1768, metadata !DIExpression()), !dbg !1777
  %8 = load ptr, ptr %av, align 8, !dbg !1824
  %xav_fill42 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2, !dbg !1824
  %9 = load i64, ptr %xav_fill42, align 8, !dbg !1824
  %cmp43 = icmp sgt i64 %key.addr.promoted, %9, !dbg !1825
  br i1 %cmp43, label %cleanup92, label %if.else, !dbg !1826

if.else:                                          ; preds = %if.end40
  %10 = load i32, ptr %sv_flags, align 4, !dbg !1827
  %11 = and i32 %10, -1073741824, !dbg !1830
  %.not = icmp eq i32 %11, -2147483648, !dbg !1830
  br i1 %.not, label %if.end.i, label %if.end53, !dbg !1830

if.end.i:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %av, metadata !716, metadata !DIExpression()), !dbg !1831
  %xav_max.i = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 3, !dbg !1833
  %12 = load i64, ptr %xav_max.i, align 8, !dbg !1833
  %add.i = add nsw i64 %12, 1, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %cmp47.i = icmp sgt i64 %12, %9, !dbg !1835
  br i1 %cmp47.i, label %while.body.lr.ph.i, label %while.cond3.preheader.i, !dbg !1836

while.body.lr.ph.i:                               ; preds = %if.end.i
  %sv_u.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body.i, !dbg !1836

while.cond3.preheader.i:                          ; preds = %while.body.i, %if.end.i
  %13 = phi ptr [ %8, %if.end.i ], [ %15, %while.body.i ]
  %key.0.lcssa.i = phi i64 [ %add.i, %if.end.i ], [ %dec.i, %while.body.i ], !dbg !1831
  call void @llvm.dbg.value(metadata i64 %key.0.lcssa.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %tobool4.not49.i = icmp eq i64 %key.0.lcssa.i, 0, !dbg !1837
  br i1 %tobool4.not49.i, label %while.end15.i, label %while.body5.lr.ph.i, !dbg !1837

while.body5.lr.ph.i:                              ; preds = %while.cond3.preheader.i
  %sv_u6.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3
  br label %while.body5.i, !dbg !1837

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %key.048.i = phi i64 [ %add.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %key.048.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %14 = load ptr, ptr %sv_u.i, align 8, !dbg !1838
  %dec.i = add nsw i64 %key.048.i, -1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %arrayidx.i = getelementptr inbounds ptr, ptr %14, i64 %dec.i, !dbg !1838
  store ptr null, ptr %arrayidx.i, align 8, !dbg !1840
  %15 = load ptr, ptr %av, align 8, !dbg !1841
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2, !dbg !1841
  %16 = load i64, ptr %xav_fill.i, align 8, !dbg !1841
  %add2.i = add nsw i64 %16, 1, !dbg !1842
  %cmp.i = icmp sgt i64 %dec.i, %add2.i, !dbg !1835
  br i1 %cmp.i, label %while.body.i, label %while.cond3.preheader.i, !dbg !1836, !llvm.loop !1843

while.body5.i:                                    ; preds = %if.end14.i, %while.body5.lr.ph.i
  %key.150.i = phi i64 [ %key.0.lcssa.i, %while.body5.lr.ph.i ], [ %dec7.i, %if.end14.i ]
  call void @llvm.dbg.value(metadata i64 %key.150.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %17 = load ptr, ptr %sv_u6.i, align 8, !dbg !1845
  %dec7.i = add nsw i64 %key.150.i, -1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %dec7.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %arrayidx8.i = getelementptr inbounds ptr, ptr %17, i64 %dec7.i, !dbg !1845
  %18 = load ptr, ptr %arrayidx8.i, align 8, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %18, metadata !718, metadata !DIExpression()), !dbg !1847
  %cmp9.i = icmp ne ptr %18, @PL_sv_undef, !dbg !1848
  %tobool11.i = icmp ne ptr %18, null
  %or.cond.i = and i1 %cmp9.i, %tobool11.i, !dbg !1849
  br i1 %or.cond.i, label %if.then12.i, label %if.end14.i, !dbg !1849

if.then12.i:                                      ; preds = %while.body5.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 1, !dbg !1850
  %19 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1850
  %inc.i = add i32 %19, 1, !dbg !1850
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !1850
  br label %if.end14.i, !dbg !1850

if.end14.i:                                       ; preds = %if.then12.i, %while.body5.i
  call void @llvm.dbg.value(metadata i64 %dec7.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %tobool4.not.i = icmp eq i64 %dec7.i, 0, !dbg !1837
  br i1 %tobool4.not.i, label %while.end15.loopexit.i, label %while.body5.i, !dbg !1837, !llvm.loop !1851

while.end15.loopexit.i:                           ; preds = %if.end14.i
  %.pre.i = load ptr, ptr %av, align 8, !dbg !1853
  br label %while.end15.i, !dbg !1854

while.end15.i:                                    ; preds = %while.end15.loopexit.i, %while.cond3.preheader.i
  %20 = phi ptr [ %.pre.i, %while.end15.loopexit.i ], [ %13, %while.cond3.preheader.i ], !dbg !1853
  %sv_u16.i = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1854
  %21 = load ptr, ptr %sv_u16.i, align 8, !dbg !1854
  %xav_alloc.i = getelementptr inbounds %struct.xpvav, ptr %20, i64 0, i32 4, !dbg !1853
  %22 = load ptr, ptr %xav_alloc.i, align 8, !dbg !1853
  call void @llvm.dbg.value(metadata !DIArgList(ptr %21, ptr %22), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1831
  %tobool19.not51.i = icmp eq ptr %21, %22, !dbg !1855
  br i1 %tobool19.not51.i, label %Perl_av_reify.exit, label %while.body20.preheader.i, !dbg !1855

while.body20.preheader.i:                         ; preds = %while.end15.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i64, !dbg !1856
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast.i, ptr %22), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1831
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i64, !dbg !1856
  call void @llvm.dbg.value(metadata !DIArgList(ptr %21, i64 %sub.ptr.rhs.cast.i), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1831
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, metadata !717, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value)), !dbg !1831
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %dec23.i132 = add nsw i64 %sub.ptr.div.i, -1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %dec23.i132, metadata !717, metadata !DIExpression()), !dbg !1831
  %arrayidx24.i133 = getelementptr inbounds ptr, ptr %22, i64 %dec23.i132, !dbg !1858
  store ptr null, ptr %arrayidx24.i133, align 8, !dbg !1859
  %tobool19.not.i134 = icmp eq i64 %dec23.i132, 0, !dbg !1855
  br i1 %tobool19.not.i134, label %Perl_av_reify.exit, label %while.body20.while.body20_crit_edge.i, !dbg !1855, !llvm.loop !1860

while.body20.while.body20_crit_edge.i:            ; preds = %while.body20.preheader.i, %while.body20.while.body20_crit_edge.i
  %dec23.i135 = phi i64 [ %dec23.i, %while.body20.while.body20_crit_edge.i ], [ %dec23.i132, %while.body20.preheader.i ]
  %.pre53.i = load ptr, ptr %av, align 8, !dbg !1858
  %xav_alloc22.phi.trans.insert.i = getelementptr inbounds %struct.xpvav, ptr %.pre53.i, i64 0, i32 4
  %.pre54.i = load ptr, ptr %xav_alloc22.phi.trans.insert.i, align 8, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %dec23.i135, metadata !717, metadata !DIExpression()), !dbg !1831
  %dec23.i = add nsw i64 %dec23.i135, -1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %dec23.i, metadata !717, metadata !DIExpression()), !dbg !1831
  %arrayidx24.i = getelementptr inbounds ptr, ptr %.pre54.i, i64 %dec23.i, !dbg !1858
  store ptr null, ptr %arrayidx24.i, align 8, !dbg !1859
  %tobool19.not.i = icmp eq i64 %dec23.i, 0, !dbg !1855
  br i1 %tobool19.not.i, label %Perl_av_reify.exit, label %while.body20.while.body20_crit_edge.i, !dbg !1855, !llvm.loop !1860

Perl_av_reify.exit:                               ; preds = %while.body20.while.body20_crit_edge.i, %while.body20.preheader.i, %while.end15.i
  %23 = load i32, ptr %sv_flags, align 4, !dbg !1862
  %and27.i = and i32 %23, 1073741823, !dbg !1862
  %or.i = or i32 %and27.i, 1073741824, !dbg !1863
  store i32 %or.i, ptr %sv_flags, align 4, !dbg !1863
  br label %if.end53, !dbg !1864

if.end53:                                         ; preds = %Perl_av_reify.exit, %if.else
  %sv_u = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1865
  %24 = load ptr, ptr %sv_u, align 8, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %key.addr.promoted, metadata !1768, metadata !DIExpression()), !dbg !1777
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %key.addr.promoted, !dbg !1865
  %25 = load ptr, ptr %arrayidx, align 8, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %25, metadata !1770, metadata !DIExpression()), !dbg !1777
  store ptr null, ptr %arrayidx, align 8, !dbg !1866
  %26 = load ptr, ptr %av, align 8, !dbg !1867
  %xav_fill57 = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 2, !dbg !1867
  %27 = load i64, ptr %xav_fill57, align 8, !dbg !1867
  %cmp58 = icmp eq i64 %key.addr.promoted, %27, !dbg !1869
  br i1 %cmp58, label %do.body.preheader, label %if.end69, !dbg !1870

do.body.preheader:                                ; preds = %if.end53
  %smin = call i64 @llvm.smin.i64(i64 %key.addr.promoted, i64 0), !dbg !1871
  %28 = add i64 %smin, -1, !dbg !1871
  %xav_fill62141 = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 2, !dbg !1873
  %dec142 = add nsw i64 %key.addr.promoted, -1, !dbg !1875
  store i64 %dec142, ptr %xav_fill62141, align 8, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %key.addr.promoted, metadata !1768, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %key.addr.promoted, metadata !1768, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1777
  %cmp64144 = icmp sgt i64 %key.addr.promoted, 0, !dbg !1876
  br i1 %cmp64144, label %land.rhs, label %if.end69.loopexit, !dbg !1877

land.rhs:                                         ; preds = %do.body.preheader, %land.rhs.do.body_crit_edge
  %dec63145.in = phi i64 [ %dec63145, %land.rhs.do.body_crit_edge ], [ %key.addr.promoted, %do.body.preheader ]
  %dec63145 = add nsw i64 %dec63145.in, -1, !dbg !1878
  %29 = load ptr, ptr %sv_u, align 8, !dbg !1879
  %arrayidx67 = getelementptr inbounds ptr, ptr %29, i64 %dec63145, !dbg !1879
  %30 = load ptr, ptr %arrayidx67, align 8, !dbg !1879
  %tobool68.not = icmp eq ptr %30, null, !dbg !1880
  br i1 %tobool68.not, label %land.rhs.do.body_crit_edge, label %if.end69.loopexit, !dbg !1881, !llvm.loop !1882

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  %.pre139 = load ptr, ptr %av, align 8, !dbg !1873
  %xav_fill62.phi.trans.insert = getelementptr inbounds %struct.xpvav, ptr %.pre139, i64 0, i32 2
  %.pre140 = load i64, ptr %xav_fill62.phi.trans.insert, align 8, !dbg !1875
  %xav_fill62 = getelementptr inbounds %struct.xpvav, ptr %.pre139, i64 0, i32 2, !dbg !1873
  %dec = add nsw i64 %.pre140, -1, !dbg !1875
  store i64 %dec, ptr %xav_fill62, align 8, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %dec63145, metadata !1768, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %dec63145, metadata !1768, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1777
  %cmp64 = icmp sgt i64 %dec63145.in, 1, !dbg !1876
  br i1 %cmp64, label %land.rhs, label %if.end69.loopexit, !dbg !1877

if.end69.loopexit:                                ; preds = %land.rhs.do.body_crit_edge, %land.rhs, %do.body.preheader
  %dec63.lcssa = phi i64 [ %28, %do.body.preheader ], [ %28, %land.rhs.do.body_crit_edge ], [ %dec63145, %land.rhs ], !dbg !1878
  store i64 %dec63.lcssa, ptr %key.addr, align 8, !dbg !1878
  br label %if.end69, !dbg !1884

if.end69:                                         ; preds = %if.end69.loopexit, %if.end53
  %31 = load i32, ptr %sv_flags, align 4, !dbg !1884
  %and71 = and i32 %31, 4194304, !dbg !1884
  %tobool72.not = icmp eq i32 %and71, 0, !dbg !1884
  br i1 %tobool72.not, label %if.end76, label %if.then73, !dbg !1886

if.then73:                                        ; preds = %if.end69
  %call74 = tail call i32 @Perl_mg_set(ptr noundef nonnull %av) #6, !dbg !1887
  br label %if.end76, !dbg !1887

if.end76:                                         ; preds = %if.end69, %if.then73
  %cmp77.not = icmp eq ptr %25, null, !dbg !1888
  br i1 %cmp77.not, label %cleanup92, label %if.then79, !dbg !1890

if.then79:                                        ; preds = %if.end76
  %and80 = and i32 %flags, 4, !dbg !1891
  %tobool81.not = icmp eq i32 %and80, 0, !dbg !1891
  br i1 %tobool81.not, label %if.else83, label %if.then82, !dbg !1894

if.then82:                                        ; preds = %if.then79
  call void @llvm.dbg.value(metadata ptr %25, metadata !1895, metadata !DIExpression()) #6, !dbg !1899
  %sv_refcnt.i125 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1, !dbg !1902
  %32 = load i32, ptr %sv_refcnt.i125, align 8, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %32, metadata !1898, metadata !DIExpression()) #6, !dbg !1899
  %cmp.i126 = icmp ugt i32 %32, 1, !dbg !1903
  br i1 %cmp.i126, label %if.then.i, label %if.else.i, !dbg !1905

if.then.i:                                        ; preds = %if.then82
  %sub.i = add i32 %32, -1, !dbg !1906
  store i32 %sub.i, ptr %sv_refcnt.i125, align 8, !dbg !1907
  br label %cleanup92, !dbg !1908

if.else.i:                                        ; preds = %if.then82
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %32) #6, !dbg !1909
  br label %cleanup92

if.else83:                                        ; preds = %if.then79
  %33 = load i32, ptr %sv_flags, align 4, !dbg !1910
  %and85 = and i32 %33, 1073741824, !dbg !1910
  %tobool86.not = icmp eq i32 %and85, 0, !dbg !1910
  br i1 %tobool86.not, label %cleanup92, label %if.then87, !dbg !1912

if.then87:                                        ; preds = %if.else83
  %call88 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %25) #6, !dbg !1913
  br label %cleanup92, !dbg !1913

cleanup92:                                        ; preds = %if.else.i, %if.then.i, %if.then16, %if.then9, %if.then20, %if.end76, %if.else83, %if.then87, %if.end40, %cond.end
  %retval.3 = phi ptr [ null, %cond.end ], [ null, %if.end40 ], [ %25, %if.then87 ], [ %25, %if.else83 ], [ null, %if.end76 ], [ null, %if.then16 ], [ null, %if.then9 ], [ %3, %if.then20 ], [ null, %if.then.i ], [ null, %if.else.i ], !dbg !1777
  ret ptr %retval.3, !dbg !1914
}

declare !dbg !1915 i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1918 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_av_exists(ptr noundef %av, i64 noundef %key) local_unnamed_addr #1 !dbg !1919 {
entry:
  %key.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %av, metadata !1923, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %key, metadata !1924, metadata !DIExpression()), !dbg !1938
  store i64 %key, ptr %key.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !1939
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1939
  %and = and i32 %0, 8388608, !dbg !1939
  %tobool.not = icmp eq i32 %and, 0, !dbg !1939
  br i1 %tobool.not, label %if.end108, label %if.then, !dbg !1940

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #6, !dbg !1941
  call void @llvm.dbg.value(metadata ptr %call, metadata !1925, metadata !DIExpression()), !dbg !1942
  %call1 = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 68) #6, !dbg !1943
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1928, metadata !DIExpression()), !dbg !1942
  %tobool2 = icmp ne ptr %call, null, !dbg !1944
  %tobool3 = icmp ne ptr %call1, null
  %or.cond = select i1 %tobool2, i1 true, i1 %tobool3, !dbg !1945
  br i1 %or.cond, label %if.then4, label %if.end108, !dbg !1945

if.then4:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i64 %key, metadata !1924, metadata !DIExpression()), !dbg !1938
  %cmp = icmp slt i64 %key, 0, !dbg !1946
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !1948

if.then5:                                         ; preds = %if.then4
  call void @llvm.dbg.value(metadata ptr %key.addr, metadata !1924, metadata !DIExpression(DW_OP_deref)), !dbg !1938
  %call6 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %av, ptr noundef %call, ptr noundef nonnull %key.addr), !dbg !1949
  br i1 %call6, label %if.then5.if.end8_crit_edge, label %return, !dbg !1952

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  %.pre = load i64, ptr %key.addr, align 8, !dbg !1953
  br label %if.end8, !dbg !1952

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %if.then4
  %1 = phi i64 [ %.pre, %if.then5.if.end8_crit_edge ], [ %key, %if.then4 ], !dbg !1953
  call void @llvm.dbg.value(metadata i64 %1, metadata !1924, metadata !DIExpression()), !dbg !1938
  %cmp9 = icmp sgt i64 %1, -1, !dbg !1955
  %or.cond140 = select i1 %cmp9, i1 %tobool3, i1 false, !dbg !1956
  br i1 %or.cond140, label %if.then11, label %if.end19, !dbg !1956

if.then11:                                        ; preds = %if.end8
  %sv_flags12 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1957
  %2 = load i32, ptr %sv_flags12, align 4, !dbg !1957
  %and13 = and i32 %2, 8388608, !dbg !1957
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !1957
  br i1 %tobool14.not, label %cond.false, label %cond.true, !dbg !1957

cond.true:                                        ; preds = %if.then11
  %call15 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1957
  %conv = sext i32 %call15 to i64, !dbg !1957
  br label %cond.end, !dbg !1957

cond.false:                                       ; preds = %if.then11
  %3 = load ptr, ptr %av, align 8, !dbg !1957
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %3, i64 0, i32 2, !dbg !1957
  %4 = load i64, ptr %xav_fill, align 8, !dbg !1957
  br label %cond.end, !dbg !1957

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %4, %cond.false ], !dbg !1957
  %cmp16.not = icmp sle i64 %1, %cond, !dbg !1960
  br label %return, !dbg !1961

if.end19:                                         ; preds = %if.end8
  %call20 = tail call ptr @Perl_sv_newmortal() #6, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1932, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %1, metadata !1924, metadata !DIExpression()), !dbg !1938
  %conv21 = trunc i64 %1 to i32, !dbg !1964
  %call22 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %av, ptr noundef %call20, ptr noundef null, i32 noundef %conv21) #6, !dbg !1964
  %call23 = tail call ptr @Perl_mg_find(ptr noundef %call20, i32 noundef 112) #6, !dbg !1965
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1929, metadata !DIExpression()), !dbg !1966
  %tobool24.not = icmp eq ptr %call23, null, !dbg !1967
  br i1 %tobool24.not, label %if.end108, label %if.then25, !dbg !1968

if.then25:                                        ; preds = %if.end19
  %call26 = tail call i32 @Perl_magic_existspack(ptr noundef %call20, ptr noundef nonnull %call23) #6, !dbg !1969
  %sv_flags27 = getelementptr inbounds %struct.sv, ptr %call20, i64 0, i32 2, !dbg !1970
  %5 = load i32, ptr %sv_flags27, align 4, !dbg !1970
  %and28 = and i32 %5, 65280, !dbg !1970
  %tobool29.not = icmp ne i32 %and28, 0, !dbg !1970
  %and32 = and i32 %5, 255, !dbg !1970
  %cmp33 = icmp eq i32 %and32, 8, !dbg !1970
  %or.cond178 = or i1 %tobool29.not, %cmp33, !dbg !1970
  %and37 = and i32 %5, 16826623, !dbg !1970
  %cmp38 = icmp eq i32 %and37, 16777226, !dbg !1970
  %or.cond179 = select i1 %or.cond178, i1 true, i1 %cmp38, !dbg !1970
  br i1 %or.cond179, label %cond.false41, label %return, !dbg !1970

cond.false41:                                     ; preds = %if.then25
  %and43 = and i32 %5, 1024, !dbg !1970
  %tobool44.not = icmp eq i32 %and43, 0, !dbg !1970
  br i1 %tobool44.not, label %cond.false59, label %cond.true45, !dbg !1970

cond.true45:                                      ; preds = %cond.false41
  %6 = load ptr, ptr %call20, align 8, !dbg !1970
  %tobool47.not = icmp eq ptr %6, null, !dbg !1970
  br i1 %tobool47.not, label %return, label %land.rhs, !dbg !1970

land.rhs:                                         ; preds = %cond.true45
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %6, i64 0, i32 2, !dbg !1970
  %7 = load i64, ptr %xpv_cur, align 8, !dbg !1970
  %cmp49 = icmp ugt i64 %7, 1, !dbg !1970
  br i1 %cmp49, label %return, label %lor.rhs, !dbg !1970

lor.rhs:                                          ; preds = %land.rhs
  %tobool53.not = icmp eq i64 %7, 0, !dbg !1970
  br i1 %tobool53.not, label %return, label %land.rhs54, !dbg !1970

land.rhs54:                                       ; preds = %lor.rhs
  %sv_u = getelementptr inbounds %struct.sv, ptr %call20, i64 0, i32 3, !dbg !1970
  %8 = load ptr, ptr %sv_u, align 8, !dbg !1970
  %9 = load i8, ptr %8, align 1, !dbg !1970
  %cmp56 = icmp ne i8 %9, 48, !dbg !1970
  br label %return

cond.false59:                                     ; preds = %cond.false41
  %and61 = and i32 %5, 768, !dbg !1970
  %tobool62.not = icmp eq i32 %and61, 0, !dbg !1970
  br i1 %tobool62.not, label %cond.false87, label %cond.true63, !dbg !1970

cond.true63:                                      ; preds = %cond.false59
  %and65 = and i32 %5, 256, !dbg !1970
  %tobool66.not = icmp eq i32 %and65, 0, !dbg !1970
  br i1 %tobool66.not, label %lor.rhs71, label %land.lhs.true67, !dbg !1970

land.lhs.true67:                                  ; preds = %cond.true63
  %10 = load ptr, ptr %call20, align 8, !dbg !1970
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %10, i64 0, i32 4, !dbg !1970
  %11 = load i64, ptr %xiv_u, align 8, !dbg !1970
  %cmp69.not = icmp eq i64 %11, 0, !dbg !1970
  br i1 %cmp69.not, label %lor.rhs71, label %return, !dbg !1970

lor.rhs71:                                        ; preds = %land.lhs.true67, %cond.true63
  %and73 = and i32 %5, 512, !dbg !1970
  %tobool74.not = icmp eq i32 %and73, 0, !dbg !1970
  br i1 %tobool74.not, label %return, label %land.rhs75, !dbg !1970

land.rhs75:                                       ; preds = %lor.rhs71
  %12 = load ptr, ptr %call20, align 8, !dbg !1970
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %12, i64 0, i32 5, !dbg !1970
  %13 = load double, ptr %xnv_u, align 8, !dbg !1970
  %cmp77 = fcmp uno double %13, 0.000000e+00, !dbg !1970
  br i1 %cmp77, label %return, label %lor.rhs78, !dbg !1970

lor.rhs78:                                        ; preds = %land.rhs75
  %cmp81 = fcmp une double %13, 0.000000e+00, !dbg !1970
  br label %return, !dbg !1970

cond.false87:                                     ; preds = %cond.false59
  %call88 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %call20, i32 noundef 0) #6, !dbg !1970
  br label %return, !dbg !1970

if.end108:                                        ; preds = %if.then, %if.end19, %entry
  %14 = phi i64 [ %key, %entry ], [ %1, %if.end19 ], [ %key, %if.then ], !dbg !1971
  call void @llvm.dbg.value(metadata i64 %14, metadata !1924, metadata !DIExpression()), !dbg !1938
  %cmp109 = icmp slt i64 %14, 0, !dbg !1973
  br i1 %cmp109, label %if.then111, label %if.end128, !dbg !1974

if.then111:                                       ; preds = %if.end108
  %sv_flags112 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !1975
  %15 = load i32, ptr %sv_flags112, align 4, !dbg !1975
  %and113 = and i32 %15, 8388608, !dbg !1975
  %tobool114.not = icmp eq i32 %and113, 0, !dbg !1975
  br i1 %tobool114.not, label %cond.false118, label %cond.true115, !dbg !1975

cond.true115:                                     ; preds = %if.then111
  %call116 = tail call i32 @Perl_mg_size(ptr noundef nonnull %av) #6, !dbg !1975
  %conv117 = sext i32 %call116 to i64, !dbg !1975
  br label %cond.end121, !dbg !1975

cond.false118:                                    ; preds = %if.then111
  %16 = load ptr, ptr %av, align 8, !dbg !1975
  %xav_fill120 = getelementptr inbounds %struct.xpvav, ptr %16, i64 0, i32 2, !dbg !1975
  %17 = load i64, ptr %xav_fill120, align 8, !dbg !1975
  br label %cond.end121, !dbg !1975

cond.end121:                                      ; preds = %cond.false118, %cond.true115
  %cond122 = phi i64 [ %conv117, %cond.true115 ], [ %17, %cond.false118 ], !dbg !1975
  call void @llvm.dbg.value(metadata i64 %14, metadata !1924, metadata !DIExpression()), !dbg !1938
  %add = add nsw i64 %14, 1, !dbg !1977
  %add123 = add i64 %add, %cond122, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %add123, metadata !1924, metadata !DIExpression()), !dbg !1938
  store i64 %add123, ptr %key.addr, align 8, !dbg !1978
  %cmp124 = icmp slt i64 %add123, 0, !dbg !1979
  br i1 %cmp124, label %return, label %if.end128, !dbg !1981

if.end128:                                        ; preds = %cond.end121, %if.end108
  %18 = phi i64 [ %add123, %cond.end121 ], [ %14, %if.end108 ], !dbg !1982
  call void @llvm.dbg.value(metadata i64 %18, metadata !1924, metadata !DIExpression()), !dbg !1938
  %19 = load ptr, ptr %av, align 8, !dbg !1984
  %xav_fill130 = getelementptr inbounds %struct.xpvav, ptr %19, i64 0, i32 2, !dbg !1984
  %20 = load i64, ptr %xav_fill130, align 8, !dbg !1984
  %cmp131.not = icmp sgt i64 %18, %20, !dbg !1985
  br i1 %cmp131.not, label %if.else137, label %land.lhs.true133, !dbg !1986

land.lhs.true133:                                 ; preds = %if.end128
  %sv_u134 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 3, !dbg !1987
  %21 = load ptr, ptr %sv_u134, align 8, !dbg !1987
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %18, !dbg !1987
  %22 = load ptr, ptr %arrayidx, align 8, !dbg !1987
  %tobool135.not = icmp eq ptr %22, null, !dbg !1987
  br i1 %tobool135.not, label %if.else137, label %return, !dbg !1988

if.else137:                                       ; preds = %land.lhs.true133, %if.end128
  br label %return, !dbg !1989

return:                                           ; preds = %cond.false87, %if.then25, %land.rhs, %land.rhs54, %lor.rhs, %cond.true45, %lor.rhs71, %lor.rhs78, %land.rhs75, %land.lhs.true67, %cond.end, %if.then5, %land.lhs.true133, %cond.end121, %if.else137
  %retval.4 = phi i1 [ false, %if.else137 ], [ false, %cond.end121 ], [ true, %land.lhs.true133 ], [ %cmp81, %lor.rhs78 ], [ true, %land.rhs75 ], [ false, %lor.rhs71 ], [ true, %land.lhs.true67 ], [ %cmp56, %land.rhs54 ], [ false, %lor.rhs ], [ true, %land.rhs ], [ false, %cond.true45 ], [ false, %if.then25 ], [ %call88, %cond.false87 ], [ %cmp16.not, %cond.end ], [ false, %if.then5 ], !dbg !1938
  ret i1 %retval.4, !dbg !1990
}

declare !dbg !1991 i32 @Perl_magic_existspack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1994 zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @Perl_av_arylen_p(ptr noundef %av) local_unnamed_addr #1 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %av, metadata !2005, metadata !DIExpression()) #6, !dbg !2011
  %call.i = tail call ptr @Perl_mg_find(ptr noundef %av, i32 noundef 64) #6, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2010, metadata !DIExpression()) #6, !dbg !2011
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !2014
  br i1 %tobool.not.i, label %if.then.i, label %S_get_aux_mg.exit, !dbg !2016

if.then.i:                                        ; preds = %entry
  %call1.i = tail call ptr @Perl_sv_magicext(ptr noundef %av, ptr noundef null, i32 noundef 64, ptr noundef getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 1), ptr noundef null, i32 noundef 0) #6, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !2010, metadata !DIExpression()) #6, !dbg !2011
  %mg_flags.i = getelementptr inbounds %struct.magic, ptr %call1.i, i64 0, i32 4, !dbg !2019
  %0 = load i8, ptr %mg_flags.i, align 1, !dbg !2020
  %1 = or i8 %0, 2, !dbg !2020
  store i8 %1, ptr %mg_flags.i, align 1, !dbg !2020
  br label %S_get_aux_mg.exit, !dbg !2021

S_get_aux_mg.exit:                                ; preds = %entry, %if.then.i
  %mg.0.i = phi ptr [ %call.i, %entry ], [ %call1.i, %if.then.i ], !dbg !2011
  call void @llvm.dbg.value(metadata ptr %mg.0.i, metadata !2010, metadata !DIExpression()) #6, !dbg !2011
  call void @llvm.dbg.value(metadata ptr %mg.0.i, metadata !2002, metadata !DIExpression()), !dbg !2004
  %mg_obj = getelementptr inbounds %struct.magic, ptr %mg.0.i, i64 0, i32 6, !dbg !2022
  ret ptr %mg_obj, !dbg !2023
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_iter_p(ptr noundef %av) local_unnamed_addr #1 !dbg !2024 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !2028, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata ptr %av, metadata !2005, metadata !DIExpression()) #6, !dbg !2034
  %call.i = tail call ptr @Perl_mg_find(ptr noundef %av, i32 noundef 64) #6, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2010, metadata !DIExpression()) #6, !dbg !2034
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !2037
  br i1 %tobool.not.i, label %if.then.i, label %S_get_aux_mg.exit, !dbg !2038

if.then.i:                                        ; preds = %entry
  %call1.i = tail call ptr @Perl_sv_magicext(ptr noundef %av, ptr noundef null, i32 noundef 64, ptr noundef getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 1), ptr noundef null, i32 noundef 0) #6, !dbg !2039
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !2010, metadata !DIExpression()) #6, !dbg !2034
  %mg_flags.i = getelementptr inbounds %struct.magic, ptr %call1.i, i64 0, i32 4, !dbg !2040
  %0 = load i8, ptr %mg_flags.i, align 1, !dbg !2041
  %1 = or i8 %0, 2, !dbg !2041
  store i8 %1, ptr %mg_flags.i, align 1, !dbg !2041
  br label %S_get_aux_mg.exit, !dbg !2042

S_get_aux_mg.exit:                                ; preds = %entry, %if.then.i
  %mg.0.i = phi ptr [ %call.i, %entry ], [ %call1.i, %if.then.i ], !dbg !2034
  call void @llvm.dbg.value(metadata ptr %mg.0.i, metadata !2010, metadata !DIExpression()) #6, !dbg !2034
  call void @llvm.dbg.value(metadata ptr %mg.0.i, metadata !2029, metadata !DIExpression()), !dbg !2033
  %mg_ptr = getelementptr inbounds %struct.magic, ptr %mg.0.i, i64 0, i32 7, !dbg !2043
  %2 = load ptr, ptr %mg_ptr, align 8, !dbg !2043
  %tobool.not = icmp eq ptr %2, null, !dbg !2044
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2045

if.then:                                          ; preds = %S_get_aux_mg.exit
  %mg_len = getelementptr inbounds %struct.magic, ptr %mg.0.i, i64 0, i32 5, !dbg !2046
  store i64 8, ptr %mg_len, align 8, !dbg !2047
  %call1 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 8) #6, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2030, metadata !DIExpression()), !dbg !2049
  store ptr %call1, ptr %mg_ptr, align 8, !dbg !2050
  br label %if.end, !dbg !2051

if.end:                                           ; preds = %if.then, %S_get_aux_mg.exit
  %3 = phi ptr [ %call1, %if.then ], [ %2, %S_get_aux_mg.exit ], !dbg !2052
  ret ptr %3, !dbg !2053
}

declare !dbg !2054 ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2057 ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare !dbg !2058 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2061 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2064 ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!704, !705, !706, !707, !708, !709}
!llvm.ident = !{!710}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !59, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/av.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "2c624193e258f0791153898fdf74a8c1")
!2 = !{!3, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 132, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!7 = !DIEnumerator(name: "SVt_NULL", value: 0)
!8 = !DIEnumerator(name: "SVt_IV", value: 1)
!9 = !DIEnumerator(name: "SVt_NV", value: 2)
!10 = !DIEnumerator(name: "SVt_PV", value: 3)
!11 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!12 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!13 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!14 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!15 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!16 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!17 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!18 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!19 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!20 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!21 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!22 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!23 = !DIEnumerator(name: "SVt_LAST", value: 16)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 61, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "apps/500.perlbench_r/src/mg_vtable.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e447d9af3167273e6abad74e52347050")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!27 = !DIEnumerator(name: "want_vtbl_arylen", value: 0)
!28 = !DIEnumerator(name: "want_vtbl_arylen_p", value: 1)
!29 = !DIEnumerator(name: "want_vtbl_backref", value: 2)
!30 = !DIEnumerator(name: "want_vtbl_checkcall", value: 3)
!31 = !DIEnumerator(name: "want_vtbl_collxfrm", value: 4)
!32 = !DIEnumerator(name: "want_vtbl_dbline", value: 5)
!33 = !DIEnumerator(name: "want_vtbl_debugvar", value: 6)
!34 = !DIEnumerator(name: "want_vtbl_defelem", value: 7)
!35 = !DIEnumerator(name: "want_vtbl_env", value: 8)
!36 = !DIEnumerator(name: "want_vtbl_envelem", value: 9)
!37 = !DIEnumerator(name: "want_vtbl_hints", value: 10)
!38 = !DIEnumerator(name: "want_vtbl_hintselem", value: 11)
!39 = !DIEnumerator(name: "want_vtbl_isa", value: 12)
!40 = !DIEnumerator(name: "want_vtbl_isaelem", value: 13)
!41 = !DIEnumerator(name: "want_vtbl_lvref", value: 14)
!42 = !DIEnumerator(name: "want_vtbl_mglob", value: 15)
!43 = !DIEnumerator(name: "want_vtbl_nkeys", value: 16)
!44 = !DIEnumerator(name: "want_vtbl_ovrld", value: 17)
!45 = !DIEnumerator(name: "want_vtbl_pack", value: 18)
!46 = !DIEnumerator(name: "want_vtbl_packelem", value: 19)
!47 = !DIEnumerator(name: "want_vtbl_pos", value: 20)
!48 = !DIEnumerator(name: "want_vtbl_regdata", value: 21)
!49 = !DIEnumerator(name: "want_vtbl_regdatum", value: 22)
!50 = !DIEnumerator(name: "want_vtbl_regexp", value: 23)
!51 = !DIEnumerator(name: "want_vtbl_sigelem", value: 24)
!52 = !DIEnumerator(name: "want_vtbl_substr", value: 25)
!53 = !DIEnumerator(name: "want_vtbl_sv", value: 26)
!54 = !DIEnumerator(name: "want_vtbl_taint", value: 27)
!55 = !DIEnumerator(name: "want_vtbl_utf8", value: 28)
!56 = !DIEnumerator(name: "want_vtbl_uvar", value: 29)
!57 = !DIEnumerator(name: "want_vtbl_vec", value: 30)
!58 = !DIEnumerator(name: "magic_vtable_max", value: 31)
!59 = !{!60, !497, !115, !98, !103, !112, !468, !396, !133, !166, !626, !367, !649, !291, !450, !663, !664, !676, !689, !703}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !62, line: 2666, baseType: !63)
!62 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !64, line: 11, size: 320, elements: !65)
!64 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!65 = !{!66, !622, !623, !624, !625}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !63, file: !64, line: 12, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !62, line: 2649, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !4, line: 246, size: 192, elements: !70)
!70 = !{!71, !607, !608, !609}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !69, file: !4, line: 247, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !62, line: 2667, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !75, line: 130, size: 256, elements: !76)
!75 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!76 = !{!77, !78, !605, !606}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !74, file: !75, line: 131, baseType: !67, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !74, file: !75, line: 132, baseType: !79, size: 64, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !4, line: 494, size: 64, elements: !80)
!80 = !{!81, !604}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !79, file: !4, line: 495, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !62, line: 2658, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !85, line: 23, size: 384, elements: !86)
!85 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!86 = !{!87, !88, !596, !599, !600, !601, !602, !603}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !84, file: !85, line: 24, baseType: !82, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !84, file: !85, line: 25, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !62, line: 2673, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !85, line: 11, size: 512, elements: !92)
!92 = !{!93, !566, !567, !571, !572, !573, !577, !595}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !91, file: !85, line: 12, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98, !82}
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !62, line: 2647, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !4, line: 218, size: 192, elements: !101)
!101 = !{!102, !104, !107, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !100, file: !4, line: 219, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !100, file: !4, line: 219, baseType: !105, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !106, line: 175, baseType: !5)
!106 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !100, file: !4, line: 219, baseType: !105, size: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !100, file: !4, line: 220, baseType: !109, size: 64, offset: 128)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !4, line: 220, size: 64, elements: !110)
!110 = !{!111, !114, !117, !120, !123, !124, !562, !563, !564, !565}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !109, file: !4, line: 220, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !109, file: !4, line: 220, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !62, line: 1670, baseType: !116)
!116 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !109, file: !4, line: 220, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !62, line: 1671, baseType: !119)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !109, file: !4, line: 220, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !62, line: 1877, baseType: !122)
!122 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !109, file: !4, line: 220, baseType: !98, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !109, file: !4, line: 220, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !127, line: 140, size: 1536, elements: !128)
!127 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!128 = !{!129, !130, !131, !135, !140, !518, !519, !520, !521, !522, !523, !524, !540, !541, !542, !543, !544, !545, !553, !554, !555, !556, !557, !558, !559, !560, !561}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !126, file: !127, line: 141, baseType: !67, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !126, file: !127, line: 141, baseType: !79, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !126, file: !127, line: 141, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !62, line: 2615, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 46, baseType: !119)
!134 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !126, file: !127, line: 141, baseType: !136, size: 64, offset: 192)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !127, line: 141, size: 64, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !136, file: !127, line: 141, baseType: !132, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !136, file: !127, line: 141, baseType: !112, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !126, file: !127, line: 142, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !127, line: 157, size: 768, elements: !144)
!144 = !{!145, !458, !463, !479, !483, !487, !492, !499, !503, !507, !511, !512}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !143, file: !127, line: 158, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !457, !105}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !62, line: 2651, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !4, line: 256, size: 192, elements: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !151, file: !4, line: 257, baseType: !125, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !151, file: !4, line: 257, baseType: !105, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !151, file: !4, line: 257, baseType: !105, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !151, file: !4, line: 258, baseType: !157, size: 64, offset: 128)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !4, line: 258, size: 64, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !167, !191, !456}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !157, file: !4, line: 258, baseType: !112, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !157, file: !4, line: 258, baseType: !115, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !157, file: !4, line: 258, baseType: !118, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !157, file: !4, line: 258, baseType: !121, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !157, file: !4, line: 258, baseType: !98, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !157, file: !4, line: 258, baseType: !125, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !157, file: !4, line: 258, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !157, file: !4, line: 258, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !4, line: 186, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !75, line: 32, size: 192, elements: !172)
!172 = !{!173, !174, !186}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !171, file: !75, line: 36, baseType: !169, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !171, file: !75, line: 37, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !4, line: 187, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !75, line: 45, size: 96, elements: !178)
!178 = !{!179, !180, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !177, file: !75, line: 46, baseType: !105, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !177, file: !75, line: 47, baseType: !181, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !106, line: 174, baseType: !97)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !177, file: !75, line: 48, baseType: !183, size: 8, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !171, file: !75, line: 41, baseType: !187, size: 64, offset: 128)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !75, line: 38, size: 64, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !187, file: !75, line: 39, baseType: !98, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !187, file: !75, line: 40, baseType: !133, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !157, file: !4, line: 258, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !62, line: 2652, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !195, line: 11, size: 640, elements: !196)
!195 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!196 = !{!197, !198, !308, !446, !447, !448, !449, !451, !452, !453, !454, !455}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !194, file: !195, line: 12, baseType: !98, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !194, file: !195, line: 13, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !4, line: 251, size: 192, elements: !201)
!201 = !{!202, !293, !294, !295}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !200, file: !4, line: 252, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !62, line: 2672, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !4, line: 603, size: 1088, elements: !206)
!206 = !{!207, !208, !209, !210, !215, !221, !228, !237, !238, !239, !240, !241, !285, !286, !287, !288, !289, !290}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !205, file: !4, line: 604, baseType: !67, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !205, file: !4, line: 604, baseType: !79, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !205, file: !4, line: 604, baseType: !132, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !205, file: !4, line: 604, baseType: !211, size: 64, offset: 192)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !4, line: 604, size: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !211, file: !4, line: 604, baseType: !132, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !211, file: !4, line: 604, baseType: !112, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !205, file: !4, line: 605, baseType: !216, size: 64, offset: 256)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !4, line: 488, size: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !216, file: !4, line: 489, baseType: !115, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !216, file: !4, line: 490, baseType: !118, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !216, file: !4, line: 491, baseType: !175, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !205, file: !4, line: 607, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !224, line: 85, baseType: !225)
!224 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !224, line: 83, baseType: !227)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !224, line: 83, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !205, file: !4, line: 620, baseType: !229, size: 64, offset: 384)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !4, line: 617, size: 64, elements: !230)
!230 = !{!231, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !229, file: !4, line: 618, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !234, line: 127, baseType: !235)
!234 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !234, line: 127, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !229, file: !4, line: 619, baseType: !103, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !205, file: !4, line: 622, baseType: !115, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !205, file: !4, line: 623, baseType: !115, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !205, file: !4, line: 624, baseType: !115, size: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !205, file: !4, line: 625, baseType: !112, size: 64, offset: 640)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !205, file: !4, line: 626, baseType: !242, size: 64, offset: 704)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !62, line: 2653, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !4, line: 231, size: 192, elements: !245)
!245 = !{!246, !270, !271, !272}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !244, file: !4, line: 232, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !62, line: 2668, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !4, line: 561, size: 384, elements: !250)
!250 = !{!251, !252, !253, !254, !259, !260}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !249, file: !4, line: 562, baseType: !67, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !249, file: !4, line: 562, baseType: !79, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !249, file: !4, line: 562, baseType: !132, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !249, file: !4, line: 562, baseType: !255, size: 64, offset: 192)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !4, line: 562, size: 64, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !255, file: !4, line: 562, baseType: !132, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !255, file: !4, line: 562, baseType: !112, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !249, file: !4, line: 563, baseType: !216, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !249, file: !4, line: 564, baseType: !261, size: 64, offset: 320)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !4, line: 479, size: 64, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !261, file: !4, line: 480, baseType: !121, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !261, file: !4, line: 481, baseType: !67, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !261, file: !4, line: 485, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !4, line: 482, size: 64, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !266, file: !4, line: 483, baseType: !105, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !266, file: !4, line: 484, baseType: !105, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !244, file: !4, line: 232, baseType: !105, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !244, file: !4, line: 232, baseType: !105, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !244, file: !4, line: 233, baseType: !273, size: 64, offset: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !4, line: 233, size: 64, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !273, file: !4, line: 233, baseType: !112, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !273, file: !4, line: 233, baseType: !115, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !273, file: !4, line: 233, baseType: !118, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !273, file: !4, line: 233, baseType: !121, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !273, file: !4, line: 233, baseType: !98, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !273, file: !4, line: 233, baseType: !125, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !273, file: !4, line: 233, baseType: !166, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !273, file: !4, line: 233, baseType: !168, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !273, file: !4, line: 233, baseType: !192, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !273, file: !4, line: 233, baseType: !222, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !205, file: !4, line: 627, baseType: !112, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !205, file: !4, line: 628, baseType: !242, size: 64, offset: 832)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !205, file: !4, line: 629, baseType: !112, size: 64, offset: 896)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !205, file: !4, line: 630, baseType: !242, size: 64, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !205, file: !4, line: 631, baseType: !113, size: 8, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !205, file: !4, line: 632, baseType: !291, size: 8, offset: 1032)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !106, line: 171, baseType: !292)
!292 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !200, file: !4, line: 252, baseType: !105, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !200, file: !4, line: 252, baseType: !105, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !200, file: !4, line: 253, baseType: !296, size: 64, offset: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !4, line: 253, size: 64, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !296, file: !4, line: 253, baseType: !112, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !296, file: !4, line: 253, baseType: !115, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !296, file: !4, line: 253, baseType: !118, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !296, file: !4, line: 253, baseType: !121, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !296, file: !4, line: 253, baseType: !98, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !296, file: !4, line: 253, baseType: !125, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !296, file: !4, line: 253, baseType: !166, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !296, file: !4, line: 253, baseType: !168, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !296, file: !4, line: 253, baseType: !192, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !296, file: !4, line: 253, baseType: !222, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !194, file: !195, line: 14, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !62, line: 2650, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !4, line: 236, size: 192, elements: !312)
!312 = !{!313, !431, !432, !433}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !311, file: !4, line: 237, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !62, line: 2669, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !317, line: 13, size: 832, elements: !318)
!317 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!318 = !{!319, !320, !321, !322, !327, !328, !373, !381, !386, !387, !426, !427, !428, !430}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !316, file: !317, line: 14, baseType: !67, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !316, file: !317, line: 14, baseType: !79, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !316, file: !317, line: 14, baseType: !132, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !316, file: !317, line: 14, baseType: !323, size: 64, offset: 192)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 14, size: 64, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !323, file: !317, line: 14, baseType: !132, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !323, file: !317, line: 14, baseType: !112, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !316, file: !317, line: 15, baseType: !67, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !316, file: !317, line: 15, baseType: !329, size: 64, offset: 320)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 15, size: 64, elements: !330)
!330 = !{!331, !356}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !329, file: !317, line: 15, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !62, line: 2617, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !335, line: 202, size: 320, elements: !336)
!335 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!336 = !{!337, !338, !339, !343, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !334, file: !335, line: 203, baseType: !332, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !334, file: !335, line: 203, baseType: !332, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !334, file: !335, line: 203, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!332}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !334, file: !335, line: 203, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !345, line: 25, baseType: !119)
!345 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !334, file: !335, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !334, file: !335, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !334, file: !335, line: 203, baseType: !291, size: 8, offset: 272)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !334, file: !335, line: 203, baseType: !291, size: 8, offset: 280)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !329, file: !317, line: 15, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !62, line: 2674, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !62, line: 3691, size: 64, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !368, !372}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !358, file: !62, line: 3692, baseType: !103, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !358, file: !62, line: 3693, baseType: !181, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !358, file: !62, line: 3694, baseType: !105, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !358, file: !62, line: 3695, baseType: !115, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !358, file: !62, line: 3696, baseType: !118, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !358, file: !62, line: 3697, baseType: !116, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !358, file: !62, line: 3698, baseType: !367, size: 8)
!367 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !358, file: !62, line: 3699, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !103}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !358, file: !62, line: 3700, baseType: !369, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !316, file: !317, line: 15, baseType: !374, size: 64, offset: 384)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 15, size: 64, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !374, file: !317, line: 15, baseType: !332, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !374, file: !317, line: 15, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !309}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !316, file: !317, line: 15, baseType: !382, size: 64, offset: 448)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 15, size: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !382, file: !317, line: 15, baseType: !242, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !382, file: !317, line: 15, baseType: !175, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !316, file: !317, line: 15, baseType: !112, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !316, file: !317, line: 15, baseType: !388, size: 64, offset: 576)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 15, size: 64, elements: !389)
!389 = !{!390, !425}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !388, file: !317, line: 15, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !62, line: 2681, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !345, line: 34, size: 192, elements: !394)
!394 = !{!395, !400, !423, !424}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !393, file: !345, line: 35, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !397, line: 108, baseType: !398)
!397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !399, line: 193, baseType: !116)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !393, file: !345, line: 36, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !62, line: 2682, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !62, line: 2648, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !4, line: 241, size: 192, elements: !406)
!406 = !{!407, !408, !409, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !405, file: !4, line: 242, baseType: !60, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !405, file: !4, line: 242, baseType: !105, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !405, file: !4, line: 242, baseType: !105, size: 32, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !405, file: !4, line: 243, baseType: !411, size: 64, offset: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !4, line: 243, size: 64, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !411, file: !4, line: 243, baseType: !112, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !411, file: !4, line: 243, baseType: !115, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !411, file: !4, line: 243, baseType: !118, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !411, file: !4, line: 243, baseType: !121, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !411, file: !4, line: 243, baseType: !98, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !411, file: !4, line: 243, baseType: !125, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !411, file: !4, line: 243, baseType: !166, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !411, file: !4, line: 243, baseType: !168, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !411, file: !4, line: 243, baseType: !192, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !411, file: !4, line: 243, baseType: !222, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !393, file: !345, line: 37, baseType: !105, size: 32, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !393, file: !345, line: 38, baseType: !105, size: 32, offset: 160)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !388, file: !317, line: 15, baseType: !103, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !316, file: !317, line: 15, baseType: !309, size: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !316, file: !317, line: 15, baseType: !105, size: 32, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !316, file: !317, line: 15, baseType: !429, size: 32, offset: 736)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !4, line: 567, baseType: !105)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !316, file: !317, line: 15, baseType: !181, size: 32, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !311, file: !4, line: 237, baseType: !105, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !311, file: !4, line: 237, baseType: !105, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !311, file: !4, line: 238, baseType: !434, size: 64, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !4, line: 238, size: 64, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !434, file: !4, line: 238, baseType: !112, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !434, file: !4, line: 238, baseType: !115, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !434, file: !4, line: 238, baseType: !118, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !434, file: !4, line: 238, baseType: !121, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !434, file: !4, line: 238, baseType: !98, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !434, file: !4, line: 238, baseType: !125, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !434, file: !4, line: 238, baseType: !166, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !434, file: !4, line: 238, baseType: !168, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !434, file: !4, line: 238, baseType: !192, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !434, file: !4, line: 238, baseType: !222, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !194, file: !195, line: 15, baseType: !105, size: 32, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !194, file: !195, line: 16, baseType: !105, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !194, file: !195, line: 17, baseType: !67, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !194, file: !195, line: 18, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !194, file: !195, line: 19, baseType: !309, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !194, file: !195, line: 20, baseType: !242, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !194, file: !195, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !194, file: !195, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !194, file: !195, line: 23, baseType: !175, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !157, file: !4, line: 258, baseType: !222, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !143, file: !127, line: 159, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!181, !462, !112, !112, !112, !396, !98, !103, !105}
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !143, file: !127, line: 162, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!112, !462, !98, !467, !112, !112, !470, !471}
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !127, line: 152, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !127, line: 148, size: 128, elements: !474)
!474 = !{!475, !477}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !473, file: !127, line: 150, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !473, file: !127, line: 151, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !143, file: !127, line: 170, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!98, !462}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !143, file: !127, line: 171, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !462}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !143, file: !127, line: 172, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !462, !491, !457}
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !143, file: !127, line: 174, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !462, !491, !496}
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !143, file: !127, line: 176, baseType: !500, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!181, !462, !496, !491}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !143, file: !127, line: 178, baseType: !504, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!98, !462, !457, !457, !470}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !143, file: !127, line: 180, baseType: !508, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!98, !462, !496, !470}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !143, file: !127, line: 182, baseType: !480, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !143, file: !127, line: 186, baseType: !513, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!149, !516, !97, !332, !141, !149, !517, !105, !105}
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !126, file: !127, line: 142, baseType: !149, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !126, file: !127, line: 142, baseType: !67, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !126, file: !127, line: 142, baseType: !105, size: 32, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !126, file: !127, line: 142, baseType: !396, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !126, file: !127, line: 142, baseType: !396, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !126, file: !127, line: 142, baseType: !132, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !126, file: !127, line: 142, baseType: !525, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !127, line: 45, size: 1024, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !526, file: !127, line: 46, baseType: !291, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !526, file: !127, line: 47, baseType: !530, size: 960, offset: 64)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 960, elements: !538)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !127, line: 38, size: 320, elements: !532)
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !531, file: !127, line: 39, baseType: !396, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !531, file: !127, line: 40, baseType: !396, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !531, file: !127, line: 41, baseType: !98, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !531, file: !127, line: 42, baseType: !98, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !531, file: !127, line: 43, baseType: !396, size: 64, offset: 256)
!538 = !{!539}
!539 = !DISubrange(count: 3)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !126, file: !127, line: 142, baseType: !105, size: 32, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !126, file: !127, line: 142, baseType: !105, size: 32, offset: 800)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !126, file: !127, line: 142, baseType: !103, size: 64, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !126, file: !127, line: 142, baseType: !105, size: 32, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !126, file: !127, line: 142, baseType: !105, size: 32, offset: 928)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !126, file: !127, line: 142, baseType: !546, size: 64, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !127, line: 68, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !127, line: 58, size: 192, elements: !549)
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !548, file: !127, line: 59, baseType: !396, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !548, file: !127, line: 60, baseType: !396, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !548, file: !127, line: 67, baseType: !396, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !126, file: !127, line: 142, baseType: !112, size: 64, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !126, file: !127, line: 142, baseType: !98, size: 64, offset: 1088)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !126, file: !127, line: 142, baseType: !396, size: 64, offset: 1152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !126, file: !127, line: 142, baseType: !396, size: 64, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !126, file: !127, line: 142, baseType: !396, size: 64, offset: 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !126, file: !127, line: 142, baseType: !396, size: 64, offset: 1344)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !126, file: !127, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !126, file: !127, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !126, file: !127, line: 142, baseType: !309, size: 64, offset: 1472)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !109, file: !4, line: 220, baseType: !166, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !109, file: !4, line: 220, baseType: !168, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !109, file: !4, line: 220, baseType: !192, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !109, file: !4, line: 220, baseType: !222, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !91, file: !85, line: 13, baseType: !94, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !91, file: !85, line: 14, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!105, !98, !82}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !91, file: !85, line: 15, baseType: !94, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !91, file: !85, line: 16, baseType: !94, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !91, file: !85, line: 17, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!97, !98, !82, !98, !468, !181}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !91, file: !85, line: 19, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!97, !82, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !62, line: 2677, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !4, line: 2150, size: 320, elements: !584)
!584 = !{!585, !586, !587, !593, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !583, file: !4, line: 2151, baseType: !450, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !4, line: 2152, baseType: !118, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !583, file: !4, line: 2153, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !62, line: 2639, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !62, line: 5434, size: 8, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !590, file: !62, line: 5435, baseType: !113, size: 8)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !583, file: !4, line: 2154, baseType: !588, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !583, file: !4, line: 2155, baseType: !450, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !91, file: !85, line: 20, baseType: !94, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !84, file: !85, line: 26, baseType: !597, size: 16, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !106, line: 173, baseType: !598)
!598 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !84, file: !85, line: 27, baseType: !113, size: 8, offset: 144)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !84, file: !85, line: 28, baseType: !291, size: 8, offset: 152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !84, file: !85, line: 29, baseType: !396, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !84, file: !85, line: 30, baseType: !98, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !84, file: !85, line: 31, baseType: !112, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !79, file: !4, line: 496, baseType: !132, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !74, file: !75, line: 133, baseType: !132, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !74, file: !75, line: 134, baseType: !132, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !69, file: !4, line: 247, baseType: !105, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !69, file: !4, line: 247, baseType: !105, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !69, file: !4, line: 248, baseType: !610, size: 64, offset: 128)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !4, line: 248, size: 64, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !610, file: !4, line: 248, baseType: !112, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !610, file: !4, line: 248, baseType: !115, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !610, file: !4, line: 248, baseType: !118, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !610, file: !4, line: 248, baseType: !121, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !610, file: !4, line: 248, baseType: !98, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !610, file: !4, line: 248, baseType: !125, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !610, file: !4, line: 248, baseType: !166, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !610, file: !4, line: 248, baseType: !168, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !610, file: !4, line: 248, baseType: !192, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !610, file: !4, line: 248, baseType: !222, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !63, file: !64, line: 13, baseType: !79, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !63, file: !64, line: 14, baseType: !396, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !63, file: !64, line: 15, baseType: !396, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !63, file: !64, line: 16, baseType: !166, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVLV", file: !62, line: 2664, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvlv", file: !4, line: 530, size: 640, elements: !629)
!629 = !{!630, !631, !632, !633, !638, !639, !640, !645, !646, !647, !648}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !628, file: !4, line: 531, baseType: !67, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !628, file: !4, line: 531, baseType: !79, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !628, file: !4, line: 531, baseType: !132, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !628, file: !4, line: 531, baseType: !634, size: 64, offset: 192)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !4, line: 531, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !634, file: !4, line: 531, baseType: !132, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !634, file: !4, line: 531, baseType: !112, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !628, file: !4, line: 532, baseType: !216, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !628, file: !4, line: 533, baseType: !261, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targoff_u", scope: !628, file: !4, line: 537, baseType: !641, size: 64, offset: 384)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !4, line: 534, size: 64, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "xlvu_targoff", scope: !641, file: !4, line: 535, baseType: !132, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xlvu_stargoff", scope: !641, file: !4, line: 536, baseType: !396, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targlen", scope: !628, file: !4, line: 538, baseType: !132, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targ", scope: !628, file: !4, line: 539, baseType: !98, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_type", scope: !628, file: !4, line: 540, baseType: !113, size: 8, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_flags", scope: !628, file: !4, line: 542, baseType: !113, size: 8, offset: 584)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !62, line: 2663, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !4, line: 524, size: 384, elements: !652)
!652 = !{!653, !654, !655, !656, !661, !662}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !651, file: !4, line: 525, baseType: !67, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !651, file: !4, line: 525, baseType: !79, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !651, file: !4, line: 525, baseType: !132, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !651, file: !4, line: 525, baseType: !657, size: 64, offset: 192)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !4, line: 525, size: 64, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !657, file: !4, line: 525, baseType: !132, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !657, file: !4, line: 525, baseType: !112, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !651, file: !4, line: 526, baseType: !216, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !651, file: !4, line: 527, baseType: !261, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !4, line: 153, baseType: !3)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !62, line: 2659, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !4, line: 499, size: 256, elements: !667)
!667 = !{!668, !669, !670, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !666, file: !4, line: 500, baseType: !67, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !666, file: !4, line: 500, baseType: !79, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !666, file: !4, line: 500, baseType: !132, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !666, file: !4, line: 500, baseType: !672, size: 64, offset: 192)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !4, line: 500, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !672, file: !4, line: 500, baseType: !132, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !672, file: !4, line: 500, baseType: !112, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIV", file: !62, line: 2660, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpviv", file: !4, line: 503, size: 320, elements: !679)
!679 = !{!680, !681, !682, !683, !688}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !678, file: !4, line: 504, baseType: !67, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !678, file: !4, line: 504, baseType: !79, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !678, file: !4, line: 504, baseType: !132, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !678, file: !4, line: 504, baseType: !684, size: 64, offset: 192)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !4, line: 504, size: 64, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !684, file: !4, line: 504, baseType: !132, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !684, file: !4, line: 504, baseType: !112, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !678, file: !4, line: 505, baseType: !216, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVNV", file: !62, line: 2662, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvnv", file: !4, line: 517, size: 384, elements: !692)
!692 = !{!693, !694, !695, !696, !701, !702}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !691, file: !4, line: 518, baseType: !67, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !691, file: !4, line: 518, baseType: !79, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !691, file: !4, line: 518, baseType: !132, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !691, file: !4, line: 518, baseType: !697, size: 64, offset: 192)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !4, line: 518, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !697, file: !4, line: 518, baseType: !132, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !697, file: !4, line: 518, baseType: !112, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !691, file: !4, line: 519, baseType: !216, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !691, file: !4, line: 520, baseType: !261, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!704 = !{i32 7, !"Dwarf Version", i32 5}
!705 = !{i32 2, !"Debug Info Version", i32 3}
!706 = !{i32 1, !"wchar_size", i32 4}
!707 = !{i32 7, !"PIC Level", i32 2}
!708 = !{i32 7, !"PIE Level", i32 2}
!709 = !{i32 7, !"uwtable", i32 2}
!710 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!711 = distinct !DISubprogram(name: "Perl_av_reify", scope: !712, file: !712, line: 27, type: !713, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !715)
!712 = !DIFile(filename: "apps/500.perlbench_r/src/av.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2c624193e258f0791153898fdf74a8c1")
!713 = !DISubroutineType(types: !714)
!714 = !{null, !450}
!715 = !{!716, !717, !718}
!716 = !DILocalVariable(name: "av", arg: 1, scope: !711, file: !712, line: 27, type: !450)
!717 = !DILocalVariable(name: "key", scope: !711, file: !712, line: 29, type: !396)
!718 = !DILocalVariable(name: "sv", scope: !719, file: !712, line: 44, type: !457)
!719 = distinct !DILexicalBlock(scope: !711, file: !712, line: 43, column: 17)
!720 = !DILocation(line: 0, scope: !711)
!721 = !DILocation(line: 34, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !711, file: !712, line: 34, column: 9)
!723 = !DILocation(line: 34, column: 9, scope: !711)
!724 = !DILocation(line: 40, column: 11, scope: !711)
!725 = !DILocation(line: 40, column: 21, scope: !711)
!726 = !DILocation(line: 41, column: 18, scope: !711)
!727 = !DILocation(line: 41, column: 16, scope: !711)
!728 = !DILocation(line: 41, column: 5, scope: !711)
!729 = !DILocation(line: 43, column: 5, scope: !711)
!730 = !DILocation(line: 42, column: 2, scope: !711)
!731 = !DILocation(line: 42, column: 14, scope: !711)
!732 = !DILocation(line: 42, column: 21, scope: !711)
!733 = !DILocation(line: 41, column: 30, scope: !711)
!734 = distinct !{!734, !728, !735, !736, !737}
!735 = !DILocation(line: 42, column: 23, scope: !711)
!736 = !{!"llvm.loop.mustprogress"}
!737 = !{!"llvm.loop.unroll.disable"}
!738 = !DILocation(line: 44, column: 18, scope: !719)
!739 = !DILocation(line: 44, column: 30, scope: !719)
!740 = !DILocation(line: 0, scope: !719)
!741 = !DILocation(line: 45, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !719, file: !712, line: 45, column: 6)
!743 = !DILocation(line: 45, column: 6, scope: !719)
!744 = !DILocation(line: 46, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !712, line: 46, column: 6)
!746 = distinct !DILexicalBlock(scope: !742, file: !712, line: 46, column: 6)
!747 = distinct !{!747, !729, !748, !736, !737}
!748 = !DILocation(line: 47, column: 5, scope: !711)
!749 = !DILocation(line: 48, column: 25, scope: !711)
!750 = !DILocation(line: 48, column: 11, scope: !711)
!751 = !DILocation(line: 49, column: 5, scope: !711)
!752 = !DILocation(line: 48, column: 23, scope: !711)
!753 = !DILocation(line: 50, column: 14, scope: !711)
!754 = !DILocation(line: 50, column: 2, scope: !711)
!755 = !DILocation(line: 50, column: 21, scope: !711)
!756 = distinct !{!756, !751, !757, !736, !737}
!757 = !DILocation(line: 50, column: 23, scope: !711)
!758 = !DILocation(line: 51, column: 5, scope: !711)
!759 = !DILocation(line: 52, column: 5, scope: !711)
!760 = !DILocation(line: 53, column: 1, scope: !711)
!761 = distinct !DISubprogram(name: "Perl_av_extend", scope: !712, file: !712, line: 65, type: !762, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !450, !396}
!764 = !{!765, !766, !767, !768}
!765 = !DILocalVariable(name: "av", arg: 1, scope: !761, file: !712, line: 65, type: !450)
!766 = !DILocalVariable(name: "key", arg: 2, scope: !761, file: !712, line: 65, type: !396)
!767 = !DILocalVariable(name: "mg", scope: !761, file: !712, line: 67, type: !82)
!768 = !DILocalVariable(name: "arg1", scope: !769, file: !712, line: 74, type: !98)
!769 = distinct !DILexicalBlock(scope: !770, file: !712, line: 73, column: 13)
!770 = distinct !DILexicalBlock(scope: !761, file: !712, line: 73, column: 9)
!771 = !DILocation(line: 0, scope: !761)
!772 = !DILocation(line: 72, column: 10, scope: !761)
!773 = !DILocation(line: 73, column: 9, scope: !770)
!774 = !DILocation(line: 73, column: 9, scope: !761)
!775 = !DILocation(line: 74, column: 13, scope: !769)
!776 = !DILocation(line: 0, scope: !769)
!777 = !DILocation(line: 75, column: 2, scope: !769)
!778 = !DILocation(line: 76, column: 48, scope: !769)
!779 = !DILocation(line: 76, column: 2, scope: !769)
!780 = !DILocation(line: 80, column: 5, scope: !761)
!781 = !DILocation(line: 81, column: 1, scope: !761)
!782 = !DISubprogram(name: "Perl_mg_find", scope: !783, file: !783, line: 2648, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!783 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!784 = !DISubroutineType(types: !785)
!785 = !{!82, !497, !97}
!786 = !{}
!787 = !DISubprogram(name: "Perl_sv_newmortal", scope: !783, file: !783, line: 4449, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!788 = !DISubroutineType(types: !789)
!789 = !{!98}
!790 = !DISubprogram(name: "Perl_sv_setiv", scope: !783, file: !783, line: 4587, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !457, !793}
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!794 = !DISubprogram(name: "Perl_magic_methcall", scope: !783, file: !783, line: 2451, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!795 = !DISubroutineType(types: !796)
!796 = !{!98, !98, !797, !98, !105, !105, null}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!799 = !DISubprogram(name: "Perl_newSVpv_share", scope: !783, file: !783, line: 3100, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!800 = !DISubroutineType(types: !801)
!801 = !{!98, !468, !105}
!802 = distinct !DISubprogram(name: "Perl_av_extend_guts", scope: !712, file: !712, line: 85, type: !803, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !806)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !450, !396, !478, !805, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!806 = !{!807, !808, !809, !810, !811, !812, !815, !816, !817}
!807 = !DILocalVariable(name: "av", arg: 1, scope: !802, file: !712, line: 85, type: !450)
!808 = !DILocalVariable(name: "key", arg: 2, scope: !802, file: !712, line: 85, type: !396)
!809 = !DILocalVariable(name: "maxp", arg: 3, scope: !802, file: !712, line: 85, type: !478)
!810 = !DILocalVariable(name: "allocp", arg: 4, scope: !802, file: !712, line: 85, type: !805)
!811 = !DILocalVariable(name: "arrayp", arg: 5, scope: !802, file: !712, line: 86, type: !805)
!812 = !DILocalVariable(name: "ary", scope: !813, file: !712, line: 91, type: !166)
!813 = distinct !DILexicalBlock(scope: !814, file: !712, line: 90, column: 22)
!814 = distinct !DILexicalBlock(scope: !802, file: !712, line: 90, column: 9)
!815 = !DILocalVariable(name: "tmp", scope: !813, file: !712, line: 92, type: !396)
!816 = !DILocalVariable(name: "newmax", scope: !813, file: !712, line: 93, type: !396)
!817 = !DILabel(scope: !818, name: "resize", file: !712, line: 137)
!818 = distinct !DILexicalBlock(scope: !819, file: !712, line: 111, column: 19)
!819 = distinct !DILexicalBlock(scope: !820, file: !712, line: 111, column: 10)
!820 = distinct !DILexicalBlock(scope: !821, file: !712, line: 110, column: 7)
!821 = distinct !DILexicalBlock(scope: !813, file: !712, line: 95, column: 6)
!822 = !DILocation(line: 0, scope: !802)
!823 = !DILocation(line: 90, column: 15, scope: !814)
!824 = !DILocation(line: 90, column: 13, scope: !814)
!825 = !DILocation(line: 90, column: 9, scope: !802)
!826 = !DILocation(line: 95, column: 6, scope: !821)
!827 = !DILocation(line: 0, scope: !821)
!828 = !DILocation(line: 95, column: 9, scope: !821)
!829 = !DILocation(line: 95, column: 23, scope: !821)
!830 = !DILocation(line: 95, column: 20, scope: !821)
!831 = !DILocation(line: 95, column: 6, scope: !813)
!832 = !DILocation(line: 96, column: 22, scope: !833)
!833 = distinct !DILexicalBlock(scope: !821, file: !712, line: 95, column: 32)
!834 = !DILocation(line: 0, scope: !813)
!835 = !DILocation(line: 97, column: 20, scope: !833)
!836 = !DILocation(line: 98, column: 6, scope: !833)
!837 = !DILocation(line: 99, column: 12, scope: !833)
!838 = !DILocation(line: 100, column: 16, scope: !833)
!839 = !DILocation(line: 100, column: 14, scope: !833)
!840 = !DILocation(line: 101, column: 10, scope: !841)
!841 = distinct !DILexicalBlock(scope: !833, file: !712, line: 101, column: 10)
!842 = !DILocation(line: 101, column: 10, scope: !833)
!843 = !DILocation(line: 96, column: 20, scope: !833)
!844 = !DILocation(line: 96, column: 34, scope: !833)
!845 = !DILocation(line: 102, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !712, line: 101, column: 22)
!847 = !DILocation(line: 103, column: 18, scope: !846)
!848 = !DILocation(line: 105, column: 16, scope: !849)
!849 = distinct !DILexicalBlock(scope: !833, file: !712, line: 105, column: 10)
!850 = !DILocation(line: 105, column: 22, scope: !849)
!851 = !DILocation(line: 105, column: 14, scope: !849)
!852 = !DILocation(line: 105, column: 10, scope: !833)
!853 = !DILocation(line: 106, column: 16, scope: !854)
!854 = distinct !DILexicalBlock(scope: !849, file: !712, line: 105, column: 28)
!855 = !DILocation(line: 159, column: 3, scope: !818)
!856 = !DILocation(line: 107, column: 3, scope: !854)
!857 = !DILocation(line: 111, column: 10, scope: !819)
!858 = !DILocation(line: 111, column: 10, scope: !820)
!859 = !DILocation(line: 134, column: 18, scope: !818)
!860 = !DILocation(line: 135, column: 45, scope: !818)
!861 = !DILocation(line: 135, column: 31, scope: !818)
!862 = !DILocation(line: 135, column: 26, scope: !818)
!863 = !DILocation(line: 135, column: 17, scope: !818)
!864 = !DILocation(line: 137, column: 8, scope: !818)
!865 = !DILocation(line: 164, column: 19, scope: !818)
!866 = !DILocation(line: 164, column: 17, scope: !818)
!867 = !DILocation(line: 165, column: 16, scope: !818)
!868 = !DILocation(line: 166, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !818, file: !712, line: 166, column: 7)
!870 = !DILocation(line: 166, column: 10, scope: !869)
!871 = !DILocation(line: 166, column: 7, scope: !818)
!872 = !DILocation(line: 167, column: 32, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !712, line: 166, column: 26)
!874 = !DILocation(line: 167, column: 46, scope: !873)
!875 = !DILocation(line: 167, column: 44, scope: !873)
!876 = !DILocation(line: 167, column: 29, scope: !873)
!877 = !DILocation(line: 167, column: 19, scope: !873)
!878 = !DILocation(line: 168, column: 23, scope: !873)
!879 = !DILocation(line: 168, column: 21, scope: !873)
!880 = !DILocation(line: 169, column: 36, scope: !873)
!881 = !DILocation(line: 169, column: 20, scope: !873)
!882 = !DILocation(line: 170, column: 3, scope: !873)
!883 = !DILocation(line: 173, column: 12, scope: !884)
!884 = distinct !DILexicalBlock(scope: !819, file: !712, line: 172, column: 11)
!885 = !DILocation(line: 182, column: 3, scope: !884)
!886 = !DILocation(line: 185, column: 14, scope: !884)
!887 = !DILocation(line: 0, scope: !819)
!888 = !DILocation(line: 187, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !820, file: !712, line: 187, column: 10)
!890 = !DILocation(line: 187, column: 16, scope: !889)
!891 = !DILocation(line: 187, column: 10, scope: !820)
!892 = !DILocation(line: 188, column: 3, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !712, line: 187, column: 28)
!894 = !DILocation(line: 189, column: 18, scope: !893)
!895 = !DILocation(line: 192, column: 16, scope: !820)
!896 = !DILocation(line: 192, column: 14, scope: !820)
!897 = !DILocation(line: 193, column: 12, scope: !820)
!898 = !DILocation(line: 196, column: 1, scope: !802)
!899 = !DISubprogram(name: "Perl_safesysrealloc", scope: !783, file: !783, line: 3755, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!900 = !DISubroutineType(types: !901)
!901 = !{!103, !103, !133}
!902 = !DISubprogram(name: "Perl_safesysmalloc", scope: !783, file: !783, line: 3751, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!903 = !DISubroutineType(types: !904)
!904 = !{!103, !133}
!905 = distinct !DISubprogram(name: "Perl_av_fetch", scope: !712, file: !712, line: 241, type: !906, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!166, !450, !396, !181}
!908 = !{!909, !910, !911, !912, !916, !919}
!909 = !DILocalVariable(name: "av", arg: 1, scope: !905, file: !712, line: 241, type: !450)
!910 = !DILocalVariable(name: "key", arg: 2, scope: !905, file: !712, line: 241, type: !396)
!911 = !DILocalVariable(name: "lval", arg: 3, scope: !905, file: !712, line: 241, type: !181)
!912 = !DILocalVariable(name: "tied_magic", scope: !913, file: !712, line: 247, type: !915)
!913 = distinct !DILexicalBlock(scope: !914, file: !712, line: 246, column: 25)
!914 = distinct !DILexicalBlock(scope: !905, file: !712, line: 246, column: 9)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!916 = !DILocalVariable(name: "sv", scope: !917, file: !712, line: 250, type: !98)
!917 = distinct !DILexicalBlock(scope: !918, file: !712, line: 249, column: 72)
!918 = distinct !DILexicalBlock(scope: !913, file: !712, line: 249, column: 13)
!919 = !DILabel(scope: !920, name: "emptyness", file: !712, line: 274)
!920 = distinct !DILexicalBlock(scope: !921, file: !712, line: 273, column: 49)
!921 = distinct !DILexicalBlock(scope: !905, file: !712, line: 273, column: 9)
!922 = !DILocation(line: 0, scope: !905)
!923 = !DILocation(line: 246, column: 9, scope: !914)
!924 = !DILocation(line: 246, column: 9, scope: !905)
!925 = !DILocation(line: 248, column: 8, scope: !913)
!926 = !DILocation(line: 0, scope: !913)
!927 = !DILocation(line: 249, column: 13, scope: !918)
!928 = !DILocation(line: 249, column: 24, scope: !918)
!929 = !DILocation(line: 249, column: 27, scope: !918)
!930 = !DILocation(line: 249, column: 13, scope: !913)
!931 = !DILocation(line: 251, column: 14, scope: !932)
!932 = distinct !DILexicalBlock(scope: !917, file: !712, line: 251, column: 10)
!933 = !DILocation(line: 251, column: 10, scope: !917)
!934 = !DILocation(line: 252, column: 8, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !712, line: 252, column: 7)
!936 = distinct !DILexicalBlock(scope: !932, file: !712, line: 251, column: 19)
!937 = !DILocation(line: 252, column: 7, scope: !936)
!938 = !DILocation(line: 258, column: 6, scope: !917)
!939 = !DILocation(line: 256, column: 18, scope: !917)
!940 = !DILocation(line: 0, scope: !917)
!941 = !DILocation(line: 257, column: 6, scope: !917)
!942 = !DILocation(line: 259, column: 10, scope: !917)
!943 = !DILocation(line: 260, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !917, file: !712, line: 259, column: 10)
!945 = !DILocation(line: 261, column: 6, scope: !917)
!946 = !DILocation(line: 261, column: 17, scope: !917)
!947 = !DILocation(line: 262, column: 6, scope: !917)
!948 = !DILocation(line: 262, column: 17, scope: !917)
!949 = !DILocation(line: 263, column: 15, scope: !917)
!950 = !DILocation(line: 263, column: 6, scope: !917)
!951 = !DILocation(line: 267, column: 13, scope: !952)
!952 = distinct !DILexicalBlock(scope: !905, file: !712, line: 267, column: 9)
!953 = !DILocation(line: 267, column: 9, scope: !905)
!954 = !DILocation(line: 268, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !712, line: 267, column: 18)
!956 = !DILocation(line: 268, column: 20, scope: !955)
!957 = !DILocation(line: 268, column: 6, scope: !955)
!958 = !DILocation(line: 269, column: 10, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !712, line: 269, column: 6)
!960 = !DILocation(line: 269, column: 6, scope: !955)
!961 = !DILocation(line: 273, column: 9, scope: !921)
!962 = !DILocation(line: 273, column: 15, scope: !921)
!963 = !DILocation(line: 273, column: 13, scope: !921)
!964 = !DILocation(line: 273, column: 27, scope: !921)
!965 = !DILocation(line: 273, column: 31, scope: !921)
!966 = !DILocation(line: 273, column: 9, scope: !905)
!967 = !DILocation(line: 274, column: 7, scope: !920)
!968 = !DILocation(line: 275, column: 9, scope: !920)
!969 = !DILocation(line: 275, column: 16, scope: !920)
!970 = !DILocation(line: 278, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !905, file: !712, line: 278, column: 9)
!972 = !DILocation(line: 279, column: 7, scope: !971)
!973 = !DILocation(line: 280, column: 7, scope: !971)
!974 = !DILocation(line: 278, column: 9, scope: !905)
!975 = !DILocation(line: 281, column: 19, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !712, line: 280, column: 38)
!977 = !DILocation(line: 282, column: 2, scope: !976)
!978 = !DILocation(line: 285, column: 1, scope: !905)
!979 = distinct !DISubprogram(name: "S_adjust_index", scope: !712, file: !712, line: 215, type: !980, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!367, !450, !797, !478}
!982 = !{!983, !984, !985, !986, !987, !990}
!983 = !DILocalVariable(name: "av", arg: 1, scope: !979, file: !712, line: 215, type: !450)
!984 = !DILocalVariable(name: "mg", arg: 2, scope: !979, file: !712, line: 215, type: !797)
!985 = !DILocalVariable(name: "keyp", arg: 3, scope: !979, file: !712, line: 215, type: !478)
!986 = !DILocalVariable(name: "adjust_index", scope: !979, file: !712, line: 217, type: !367)
!987 = !DILocalVariable(name: "ref", scope: !988, file: !712, line: 220, type: !457)
!988 = distinct !DILexicalBlock(scope: !989, file: !712, line: 218, column: 13)
!989 = distinct !DILexicalBlock(scope: !979, file: !712, line: 218, column: 9)
!990 = !DILocalVariable(name: "negative_indices_glob", scope: !991, file: !712, line: 223, type: !993)
!991 = distinct !DILexicalBlock(scope: !992, file: !712, line: 222, column: 41)
!992 = distinct !DILexicalBlock(scope: !988, file: !712, line: 222, column: 6)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!995 = !DILocation(line: 0, scope: !979)
!996 = !DILocation(line: 218, column: 9, scope: !989)
!997 = !DILocation(line: 218, column: 9, scope: !979)
!998 = !DILocation(line: 220, column: 19, scope: !988)
!999 = !DILocation(line: 0, scope: !988)
!1000 = !DILocation(line: 221, column: 2, scope: !988)
!1001 = !DILocation(line: 222, column: 6, scope: !992)
!1002 = !DILocation(line: 222, column: 17, scope: !992)
!1003 = !DILocation(line: 222, column: 20, scope: !992)
!1004 = !DILocation(line: 222, column: 6, scope: !988)
!1005 = !DILocation(line: 224, column: 3, scope: !991)
!1006 = !DILocation(line: 0, scope: !991)
!1007 = !DILocation(line: 226, column: 10, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !991, file: !712, line: 226, column: 10)
!1009 = !DILocation(line: 226, column: 32, scope: !1008)
!1010 = !DILocation(line: 226, column: 35, scope: !1008)
!1011 = !DILocation(line: 227, column: 7, scope: !1008)
!1012 = !DILocation(line: 227, column: 10, scope: !1008)
!1013 = !DILocation(line: 226, column: 10, scope: !991)
!1014 = !DILocation(line: 233, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !712, line: 232, column: 23)
!1016 = distinct !DILexicalBlock(scope: !979, file: !712, line: 232, column: 9)
!1017 = !DILocation(line: 233, column: 22, scope: !1015)
!1018 = !DILocation(line: 233, column: 8, scope: !1015)
!1019 = !DILocation(line: 234, column: 12, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !712, line: 234, column: 6)
!1021 = !DILocation(line: 234, column: 6, scope: !1015)
!1022 = !DILocation(line: 237, column: 5, scope: !979)
!1023 = !DILocation(line: 238, column: 1, scope: !979)
!1024 = !DISubprogram(name: "Perl_sv_upgrade", scope: !783, file: !783, line: 4747, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !457, !663}
!1027 = !DISubprogram(name: "Perl_mg_copy", scope: !783, file: !783, line: 2642, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!97, !98, !98, !468, !181}
!1030 = !DISubprogram(name: "Perl_mg_size", scope: !783, file: !783, line: 2697, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!181, !98}
!1033 = distinct !DISubprogram(name: "Perl_av_store", scope: !712, file: !712, line: 310, type: !1034, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!166, !450, !396, !98}
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1044, !1047}
!1037 = !DILocalVariable(name: "av", arg: 1, scope: !1033, file: !712, line: 310, type: !450)
!1038 = !DILocalVariable(name: "key", arg: 2, scope: !1033, file: !712, line: 310, type: !396)
!1039 = !DILocalVariable(name: "val", arg: 3, scope: !1033, file: !712, line: 310, type: !98)
!1040 = !DILocalVariable(name: "ary", scope: !1033, file: !712, line: 312, type: !166)
!1041 = !DILocalVariable(name: "tied_magic", scope: !1042, file: !712, line: 322, type: !915)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !712, line: 321, column: 25)
!1043 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 321, column: 9)
!1044 = !DILocalVariable(name: "mg", scope: !1045, file: !712, line: 364, type: !797)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !712, line: 363, column: 25)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 363, column: 9)
!1047 = !DILocalVariable(name: "set", scope: !1045, file: !712, line: 365, type: !367)
!1048 = !DILocation(line: 0, scope: !1033)
!1049 = !DILocation(line: 321, column: 9, scope: !1043)
!1050 = !DILocation(line: 321, column: 9, scope: !1033)
!1051 = !DILocation(line: 322, column: 42, scope: !1042)
!1052 = !DILocation(line: 0, scope: !1042)
!1053 = !DILocation(line: 323, column: 13, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1042, file: !712, line: 323, column: 13)
!1055 = !DILocation(line: 323, column: 13, scope: !1042)
!1056 = !DILocation(line: 324, column: 21, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !712, line: 324, column: 17)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !712, line: 323, column: 25)
!1059 = !DILocation(line: 324, column: 17, scope: !1058)
!1060 = !DILocation(line: 325, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !712, line: 325, column: 7)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !712, line: 324, column: 26)
!1063 = !DILocation(line: 325, column: 7, scope: !1062)
!1064 = !DILocation(line: 329, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !712, line: 328, column: 15)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !712, line: 328, column: 10)
!1067 = !DILocation(line: 328, column: 10, scope: !1066)
!1068 = !DILocation(line: 328, column: 10, scope: !1058)
!1069 = !DILocation(line: 330, column: 6, scope: !1065)
!1070 = !DILocation(line: 336, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 336, column: 9)
!1072 = !DILocation(line: 336, column: 9, scope: !1033)
!1073 = !DILocation(line: 337, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !712, line: 336, column: 18)
!1075 = !DILocation(line: 337, column: 20, scope: !1074)
!1076 = !DILocation(line: 337, column: 6, scope: !1074)
!1077 = !DILocation(line: 338, column: 10, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !712, line: 338, column: 6)
!1079 = !DILocation(line: 338, column: 6, scope: !1074)
!1080 = !DILocation(line: 342, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 342, column: 9)
!1082 = !DILocation(line: 342, column: 24, scope: !1081)
!1083 = !DILocation(line: 342, column: 34, scope: !1081)
!1084 = !DILocation(line: 342, column: 31, scope: !1081)
!1085 = !DILocation(line: 342, column: 9, scope: !1033)
!1086 = !DILocation(line: 343, column: 2, scope: !1081)
!1087 = !DILocation(line: 345, column: 10, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 345, column: 9)
!1089 = !DILocation(line: 345, column: 21, scope: !1088)
!1090 = !DILocation(line: 0, scope: !711, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 346, column: 2, scope: !1088)
!1092 = !DILocation(line: 40, column: 11, scope: !711, inlinedAt: !1091)
!1093 = !DILocation(line: 40, column: 21, scope: !711, inlinedAt: !1091)
!1094 = !DILocation(line: 41, column: 18, scope: !711, inlinedAt: !1091)
!1095 = !DILocation(line: 41, column: 16, scope: !711, inlinedAt: !1091)
!1096 = !DILocation(line: 41, column: 5, scope: !711, inlinedAt: !1091)
!1097 = !DILocation(line: 43, column: 5, scope: !711, inlinedAt: !1091)
!1098 = !DILocation(line: 42, column: 2, scope: !711, inlinedAt: !1091)
!1099 = !DILocation(line: 42, column: 14, scope: !711, inlinedAt: !1091)
!1100 = !DILocation(line: 42, column: 21, scope: !711, inlinedAt: !1091)
!1101 = !DILocation(line: 41, column: 30, scope: !711, inlinedAt: !1091)
!1102 = distinct !{!1102, !1096, !1103, !736, !737}
!1103 = !DILocation(line: 42, column: 23, scope: !711, inlinedAt: !1091)
!1104 = !DILocation(line: 44, column: 18, scope: !719, inlinedAt: !1091)
!1105 = !DILocation(line: 44, column: 30, scope: !719, inlinedAt: !1091)
!1106 = !DILocation(line: 0, scope: !719, inlinedAt: !1091)
!1107 = !DILocation(line: 45, column: 9, scope: !742, inlinedAt: !1091)
!1108 = !DILocation(line: 45, column: 6, scope: !719, inlinedAt: !1091)
!1109 = !DILocation(line: 46, column: 6, scope: !745, inlinedAt: !1091)
!1110 = distinct !{!1110, !1097, !1111, !736, !737}
!1111 = !DILocation(line: 47, column: 5, scope: !711, inlinedAt: !1091)
!1112 = !DILocation(line: 48, column: 25, scope: !711, inlinedAt: !1091)
!1113 = !DILocation(line: 48, column: 11, scope: !711, inlinedAt: !1091)
!1114 = !DILocation(line: 49, column: 5, scope: !711, inlinedAt: !1091)
!1115 = !DILocation(line: 48, column: 23, scope: !711, inlinedAt: !1091)
!1116 = !DILocation(line: 50, column: 14, scope: !711, inlinedAt: !1091)
!1117 = !DILocation(line: 50, column: 2, scope: !711, inlinedAt: !1091)
!1118 = !DILocation(line: 50, column: 21, scope: !711, inlinedAt: !1091)
!1119 = distinct !{!1119, !1114, !1120, !736, !737}
!1120 = !DILocation(line: 50, column: 23, scope: !711, inlinedAt: !1091)
!1121 = !DILocation(line: 51, column: 5, scope: !711, inlinedAt: !1091)
!1122 = !DILocation(line: 52, column: 5, scope: !711, inlinedAt: !1091)
!1123 = !DILocation(line: 346, column: 2, scope: !1088)
!1124 = !DILocation(line: 347, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 347, column: 9)
!1126 = !DILocation(line: 347, column: 13, scope: !1125)
!1127 = !DILocation(line: 347, column: 9, scope: !1033)
!1128 = !DILocation(line: 348, column: 2, scope: !1125)
!1129 = !DILocation(line: 350, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1033, file: !712, line: 350, column: 9)
!1131 = !DILocation(line: 349, column: 11, scope: !1033)
!1132 = !DILocation(line: 350, column: 21, scope: !1130)
!1133 = !DILocation(line: 0, scope: !1130)
!1134 = !DILocation(line: 350, column: 9, scope: !1033)
!1135 = !DILocation(line: 351, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !712, line: 350, column: 28)
!1137 = !DILocation(line: 352, column: 16, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !712, line: 352, column: 10)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !712, line: 351, column: 19)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !712, line: 351, column: 6)
!1141 = !DILocation(line: 352, column: 13, scope: !1138)
!1142 = !DILocation(line: 352, column: 28, scope: !1138)
!1143 = !DILocation(line: 352, column: 37, scope: !1138)
!1144 = !DILocation(line: 352, column: 51, scope: !1138)
!1145 = !DILocation(line: 352, column: 49, scope: !1138)
!1146 = !DILocation(line: 352, column: 35, scope: !1138)
!1147 = !DILocation(line: 352, column: 10, scope: !1139)
!1148 = !DILocation(line: 353, column: 31, scope: !1138)
!1149 = !DILocation(line: 353, column: 15, scope: !1138)
!1150 = !DILocation(line: 355, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1139, file: !712, line: 354, column: 9)
!1152 = !DILocation(line: 355, column: 7, scope: !1151)
!1153 = !DILocation(line: 353, column: 3, scope: !1138)
!1154 = !DILocation(line: 354, column: 6, scope: !1139)
!1155 = !DILocation(line: 355, column: 3, scope: !1151)
!1156 = !DILocation(line: 355, column: 22, scope: !1151)
!1157 = !DILocation(line: 356, column: 15, scope: !1139)
!1158 = !DILocation(line: 356, column: 27, scope: !1139)
!1159 = !DILocation(line: 356, column: 6, scope: !1151)
!1160 = distinct !{!1160, !1154, !1161, !736, !737}
!1161 = !DILocation(line: 356, column: 32, scope: !1139)
!1162 = !DILocation(line: 358, column: 2, scope: !1136)
!1163 = !DILocation(line: 358, column: 14, scope: !1136)
!1164 = !DILocation(line: 359, column: 5, scope: !1136)
!1165 = !DILocation(line: 360, column: 14, scope: !1130)
!1166 = !DILocation(line: 361, column: 2, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1130, file: !712, line: 360, column: 14)
!1168 = !DILocalVariable(name: "sv", arg: 1, scope: !1169, file: !1170, line: 159, type: !98)
!1169 = distinct !DISubprogram(name: "S_SvREFCNT_dec", scope: !1170, file: !1170, line: 159, type: !1171, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1173)
!1170 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !98}
!1173 = !{!1168, !1174}
!1174 = !DILocalVariable(name: "rc", scope: !1175, file: !1170, line: 162, type: !105)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !1170, line: 161, column: 29)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !1170, line: 161, column: 9)
!1177 = !DILocation(line: 0, scope: !1169, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 361, column: 2, scope: !1167)
!1179 = !DILocation(line: 161, column: 9, scope: !1176, inlinedAt: !1178)
!1180 = !DILocation(line: 161, column: 9, scope: !1169, inlinedAt: !1178)
!1181 = !DILocation(line: 162, column: 11, scope: !1175, inlinedAt: !1178)
!1182 = !DILocation(line: 0, scope: !1175, inlinedAt: !1178)
!1183 = !DILocation(line: 163, column: 6, scope: !1184, inlinedAt: !1178)
!1184 = distinct !DILexicalBlock(scope: !1175, file: !1170, line: 163, column: 6)
!1185 = !DILocation(line: 163, column: 6, scope: !1175, inlinedAt: !1178)
!1186 = !DILocation(line: 164, column: 24, scope: !1184, inlinedAt: !1178)
!1187 = !DILocation(line: 164, column: 19, scope: !1184, inlinedAt: !1178)
!1188 = !DILocation(line: 164, column: 6, scope: !1184, inlinedAt: !1178)
!1189 = !DILocation(line: 166, column: 6, scope: !1184, inlinedAt: !1178)
!1190 = !DILocation(line: 362, column: 5, scope: !1033)
!1191 = !DILocation(line: 362, column: 14, scope: !1033)
!1192 = !DILocation(line: 363, column: 9, scope: !1046)
!1193 = !DILocation(line: 363, column: 9, scope: !1033)
!1194 = !DILocation(line: 364, column: 20, scope: !1045)
!1195 = !DILocation(line: 0, scope: !1045)
!1196 = !DILocation(line: 366, column: 2, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1045, file: !712, line: 366, column: 2)
!1198 = !DILocation(line: 368, column: 8, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !712, line: 366, column: 36)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !712, line: 366, column: 2)
!1201 = !DILocation(line: 367, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !712, line: 367, column: 8)
!1203 = !DILocation(line: 367, column: 8, scope: !1199)
!1204 = !DILocation(line: 371, column: 8, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !712, line: 371, column: 8)
!1206 = !DILocation(line: 371, column: 22, scope: !1205)
!1207 = !DILocation(line: 372, column: 20, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !712, line: 371, column: 56)
!1209 = !DILocation(line: 374, column: 4, scope: !1208)
!1210 = distinct !{!1210, !1196, !1211, !736, !737}
!1211 = !DILocation(line: 375, column: 2, scope: !1197)
!1212 = !DILocation(line: 369, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !712, line: 368, column: 13)
!1214 = distinct !DILexicalBlock(scope: !1199, file: !712, line: 368, column: 8)
!1215 = !DILocation(line: 371, column: 29, scope: !1205)
!1216 = !DILocation(line: 371, column: 37, scope: !1205)
!1217 = !DILocation(line: 371, column: 8, scope: !1199)
!1218 = !DILocation(line: 376, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1045, file: !712, line: 376, column: 6)
!1220 = !DILocation(line: 376, column: 6, scope: !1045)
!1221 = !DILocation(line: 377, column: 5, scope: !1219)
!1222 = !DILocation(line: 380, column: 1, scope: !1033)
!1223 = !DISubprogram(name: "Perl_newSV", scope: !783, file: !783, line: 3055, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!98, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1227 = !DISubprogram(name: "Perl_croak_no_modify", scope: !783, file: !783, line: 751, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null}
!1230 = !DISubprogram(name: "Perl_sv_magic", scope: !783, file: !783, line: 4426, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !457, !457, !1233, !467, !491}
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1234 = !DISubprogram(name: "Perl_mg_set", scope: !783, file: !783, line: 2692, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!97, !98}
!1237 = distinct !DISubprogram(name: "Perl_av_make", scope: !712, file: !712, line: 395, type: !1238, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!450, !396, !166}
!1240 = !{!1241, !1242, !1243, !1245, !1248}
!1241 = !DILocalVariable(name: "size", arg: 1, scope: !1237, file: !712, line: 395, type: !396)
!1242 = !DILocalVariable(name: "strp", arg: 2, scope: !1237, file: !712, line: 395, type: !166)
!1243 = !DILocalVariable(name: "av", scope: !1237, file: !712, line: 397, type: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!1245 = !DILocalVariable(name: "ary", scope: !1246, file: !712, line: 403, type: !166)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !712, line: 402, column: 15)
!1247 = distinct !DILexicalBlock(scope: !1237, file: !712, line: 402, column: 9)
!1248 = !DILocalVariable(name: "i", scope: !1246, file: !712, line: 404, type: !396)
!1249 = !DILocation(line: 0, scope: !1237)
!1250 = !DILocation(line: 397, column: 21, scope: !1237)
!1251 = !DILocation(line: 402, column: 9, scope: !1247)
!1252 = !DILocation(line: 402, column: 9, scope: !1237)
!1253 = !DILocation(line: 405, column: 2, scope: !1246)
!1254 = !DILocation(line: 0, scope: !1246)
!1255 = !DILocation(line: 406, column: 2, scope: !1246)
!1256 = !DILocation(line: 406, column: 14, scope: !1246)
!1257 = !DILocation(line: 407, column: 2, scope: !1246)
!1258 = !DILocation(line: 407, column: 14, scope: !1246)
!1259 = !DILocation(line: 408, column: 19, scope: !1246)
!1260 = !DILocation(line: 408, column: 2, scope: !1246)
!1261 = !DILocation(line: 408, column: 12, scope: !1246)
!1262 = !DILocation(line: 409, column: 2, scope: !1246)
!1263 = !DILocation(line: 409, column: 14, scope: !1246)
!1264 = !DILocation(line: 410, column: 2, scope: !1246)
!1265 = !DILocation(line: 411, column: 2, scope: !1246)
!1266 = !DILocation(line: 412, column: 16, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !712, line: 412, column: 2)
!1268 = distinct !DILexicalBlock(scope: !1246, file: !712, line: 412, column: 2)
!1269 = !DILocation(line: 412, column: 2, scope: !1268)
!1270 = !DILocation(line: 419, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !712, line: 412, column: 29)
!1272 = !DILocation(line: 420, column: 6, scope: !1271)
!1273 = !DILocation(line: 420, column: 17, scope: !1271)
!1274 = !DILocation(line: 421, column: 15, scope: !1271)
!1275 = !DILocation(line: 421, column: 6, scope: !1271)
!1276 = !DILocation(line: 421, column: 13, scope: !1271)
!1277 = !DILocation(line: 422, column: 6, scope: !1271)
!1278 = !DILocation(line: 424, column: 10, scope: !1271)
!1279 = !DILocation(line: 412, column: 25, scope: !1267)
!1280 = distinct !{!1280, !1269, !1281, !736, !737}
!1281 = !DILocation(line: 425, column: 2, scope: !1268)
!1282 = !DILocation(line: 426, column: 2, scope: !1246)
!1283 = !DILocation(line: 427, column: 2, scope: !1246)
!1284 = !DILocation(line: 428, column: 5, scope: !1246)
!1285 = !DILocation(line: 429, column: 5, scope: !1237)
!1286 = !DISubprogram(name: "Perl_newSV_type", scope: !783, file: !783, line: 3073, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!98, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!1290 = !DISubprogram(name: "Perl_push_scope", scope: !783, file: !783, line: 3507, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1291 = !DISubprogram(name: "Perl_save_pushptr", scope: !783, file: !783, line: 3917, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !1294, !1233}
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1295 = !DISubprogram(name: "Perl_mg_get", scope: !783, file: !783, line: 2670, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1296 = !DISubprogram(name: "Perl_sv_setsv_flags", scope: !783, file: !783, line: 4683, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !98, !98, !491}
!1299 = !DISubprogram(name: "Perl_pop_scope", scope: !783, file: !783, line: 3451, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1300 = distinct !DISubprogram(name: "Perl_av_clear", scope: !712, file: !712, line: 449, type: !713, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1308, !1311, !1312}
!1302 = !DILocalVariable(name: "av", arg: 1, scope: !1300, file: !712, line: 449, type: !450)
!1303 = !DILocalVariable(name: "extra", scope: !1300, file: !712, line: 451, type: !396)
!1304 = !DILocalVariable(name: "real", scope: !1300, file: !712, line: 452, type: !367)
!1305 = !DILocalVariable(name: "mg", scope: !1306, file: !712, line: 468, type: !915)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !712, line: 467, column: 25)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !712, line: 467, column: 9)
!1308 = !DILocalVariable(name: "ary", scope: !1309, file: !712, line: 479, type: !516)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !712, line: 478, column: 32)
!1310 = distinct !DILexicalBlock(scope: !1300, file: !712, line: 478, column: 9)
!1311 = !DILocalVariable(name: "index", scope: !1309, file: !712, line: 480, type: !396)
!1312 = !DILocalVariable(name: "sv", scope: !1313, file: !712, line: 484, type: !457)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !712, line: 483, column: 16)
!1314 = !DILocation(line: 0, scope: !1300)
!1315 = !DILocation(line: 463, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1300, file: !712, line: 463, column: 9)
!1317 = !DILocation(line: 463, column: 9, scope: !1300)
!1318 = !DILocation(line: 464, column: 2, scope: !1316)
!1319 = !DILocation(line: 467, column: 9, scope: !1307)
!1320 = !DILocation(line: 467, column: 9, scope: !1300)
!1321 = !DILocation(line: 468, column: 26, scope: !1306)
!1322 = !DILocation(line: 0, scope: !1306)
!1323 = !DILocation(line: 469, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1306, file: !712, line: 469, column: 6)
!1325 = !DILocation(line: 469, column: 20, scope: !1324)
!1326 = !DILocation(line: 469, column: 33, scope: !1324)
!1327 = !DILocation(line: 469, column: 41, scope: !1324)
!1328 = !DILocation(line: 469, column: 6, scope: !1306)
!1329 = !DILocation(line: 470, column: 20, scope: !1324)
!1330 = !DILocation(line: 470, column: 6, scope: !1324)
!1331 = !DILocation(line: 472, column: 6, scope: !1324)
!1332 = !DILocation(line: 475, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1300, file: !712, line: 475, column: 9)
!1334 = !DILocation(line: 475, column: 19, scope: !1333)
!1335 = !DILocation(line: 475, column: 9, scope: !1300)
!1336 = !DILocation(line: 478, column: 19, scope: !1310)
!1337 = !DILocation(line: 478, column: 18, scope: !1310)
!1338 = !DILocation(line: 478, column: 9, scope: !1300)
!1339 = !DILocation(line: 479, column: 19, scope: !1309)
!1340 = !DILocation(line: 0, scope: !1309)
!1341 = !DILocation(line: 480, column: 18, scope: !1309)
!1342 = !DILocation(line: 480, column: 30, scope: !1309)
!1343 = !DILocation(line: 481, column: 2, scope: !1309)
!1344 = !DILocation(line: 482, column: 2, scope: !1309)
!1345 = !DILocation(line: 483, column: 2, scope: !1309)
!1346 = !DILocation(line: 484, column: 26, scope: !1313)
!1347 = !DILocation(line: 484, column: 22, scope: !1313)
!1348 = !DILocation(line: 0, scope: !1313)
!1349 = !DILocation(line: 487, column: 17, scope: !1313)
!1350 = !DILocation(line: 0, scope: !1169, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 488, column: 6, scope: !1313)
!1352 = !DILocation(line: 161, column: 9, scope: !1176, inlinedAt: !1351)
!1353 = !DILocation(line: 161, column: 9, scope: !1169, inlinedAt: !1351)
!1354 = !DILocation(line: 162, column: 11, scope: !1175, inlinedAt: !1351)
!1355 = !DILocation(line: 0, scope: !1175, inlinedAt: !1351)
!1356 = !DILocation(line: 163, column: 6, scope: !1184, inlinedAt: !1351)
!1357 = !DILocation(line: 163, column: 6, scope: !1175, inlinedAt: !1351)
!1358 = !DILocation(line: 164, column: 24, scope: !1184, inlinedAt: !1351)
!1359 = !DILocation(line: 164, column: 19, scope: !1184, inlinedAt: !1351)
!1360 = !DILocation(line: 164, column: 6, scope: !1184, inlinedAt: !1351)
!1361 = !DILocation(line: 166, column: 6, scope: !1184, inlinedAt: !1351)
!1362 = distinct !{!1362, !1345, !1363, !736, !737}
!1363 = !DILocation(line: 489, column: 2, scope: !1309)
!1364 = !DILocation(line: 491, column: 13, scope: !1300)
!1365 = !DILocation(line: 491, column: 27, scope: !1300)
!1366 = !DILocation(line: 492, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1300, file: !712, line: 492, column: 9)
!1368 = !DILocation(line: 492, column: 9, scope: !1300)
!1369 = !DILocation(line: 491, column: 25, scope: !1300)
!1370 = !DILocation(line: 493, column: 2, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !712, line: 492, column: 16)
!1372 = !DILocation(line: 493, column: 12, scope: !1371)
!1373 = !DILocation(line: 494, column: 16, scope: !1371)
!1374 = !DILocation(line: 494, column: 14, scope: !1371)
!1375 = !DILocation(line: 495, column: 5, scope: !1371)
!1376 = !DILocation(line: 496, column: 5, scope: !1300)
!1377 = !DILocation(line: 496, column: 17, scope: !1300)
!1378 = !DILocation(line: 497, column: 9, scope: !1300)
!1379 = !DILocation(line: 497, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1300, file: !712, line: 497, column: 9)
!1381 = !DILocation(line: 498, column: 1, scope: !1300)
!1382 = !DISubprogram(name: "Perl_mg_clear", scope: !783, file: !783, line: 2637, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1383 = distinct !DISubprogram(name: "Perl_av_undef", scope: !712, file: !712, line: 515, type: !713, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "av", arg: 1, scope: !1383, file: !712, line: 515, type: !450)
!1386 = !DILocalVariable(name: "real", scope: !1383, file: !712, line: 517, type: !367)
!1387 = !DILocalVariable(name: "key", scope: !1388, file: !712, line: 527, type: !396)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !712, line: 526, column: 32)
!1389 = distinct !DILexicalBlock(scope: !1383, file: !712, line: 526, column: 9)
!1390 = !DILocation(line: 0, scope: !1383)
!1391 = !DILocation(line: 523, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !712, line: 523, column: 9)
!1393 = !DILocation(line: 523, column: 9, scope: !1383)
!1394 = !DILocation(line: 524, column: 2, scope: !1392)
!1395 = !DILocation(line: 526, column: 19, scope: !1389)
!1396 = !DILocation(line: 526, column: 18, scope: !1389)
!1397 = !DILocation(line: 526, column: 9, scope: !1383)
!1398 = !DILocation(line: 527, column: 16, scope: !1388)
!1399 = !DILocation(line: 527, column: 28, scope: !1388)
!1400 = !DILocation(line: 0, scope: !1388)
!1401 = !DILocation(line: 528, column: 2, scope: !1388)
!1402 = !DILocation(line: 529, column: 2, scope: !1388)
!1403 = !DILocation(line: 530, column: 2, scope: !1388)
!1404 = !DILocation(line: 531, column: 6, scope: !1388)
!1405 = !DILocation(line: 0, scope: !1169, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 531, column: 6, scope: !1388)
!1407 = !DILocation(line: 161, column: 9, scope: !1176, inlinedAt: !1406)
!1408 = !DILocation(line: 161, column: 9, scope: !1169, inlinedAt: !1406)
!1409 = !DILocation(line: 162, column: 11, scope: !1175, inlinedAt: !1406)
!1410 = !DILocation(line: 0, scope: !1175, inlinedAt: !1406)
!1411 = !DILocation(line: 163, column: 6, scope: !1184, inlinedAt: !1406)
!1412 = !DILocation(line: 163, column: 6, scope: !1175, inlinedAt: !1406)
!1413 = !DILocation(line: 164, column: 24, scope: !1184, inlinedAt: !1406)
!1414 = !DILocation(line: 164, column: 19, scope: !1184, inlinedAt: !1406)
!1415 = !DILocation(line: 164, column: 6, scope: !1184, inlinedAt: !1406)
!1416 = !DILocation(line: 166, column: 6, scope: !1184, inlinedAt: !1406)
!1417 = distinct !{!1417, !1403, !1404, !736, !737}
!1418 = !DILocation(line: 534, column: 5, scope: !1383)
!1419 = !DILocation(line: 535, column: 5, scope: !1383)
!1420 = !DILocation(line: 535, column: 17, scope: !1383)
!1421 = !DILocation(line: 536, column: 5, scope: !1383)
!1422 = !DILocation(line: 536, column: 17, scope: !1383)
!1423 = !DILocation(line: 537, column: 17, scope: !1383)
!1424 = !DILocation(line: 537, column: 29, scope: !1383)
!1425 = !DILocation(line: 537, column: 5, scope: !1383)
!1426 = !DILocation(line: 537, column: 15, scope: !1383)
!1427 = !DILocation(line: 539, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1383, file: !712, line: 539, column: 8)
!1429 = !DILocation(line: 539, column: 8, scope: !1383)
!1430 = !DILocation(line: 539, column: 24, scope: !1428)
!1431 = !DILocation(line: 540, column: 8, scope: !1383)
!1432 = !DILocation(line: 540, column: 14, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1383, file: !712, line: 540, column: 8)
!1434 = !DILocation(line: 541, column: 1, scope: !1383)
!1435 = distinct !DISubprogram(name: "Perl_av_fill", scope: !712, file: !712, line: 802, type: !762, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1443, !1446}
!1437 = !DILocalVariable(name: "av", arg: 1, scope: !1435, file: !712, line: 802, type: !450)
!1438 = !DILocalVariable(name: "fill", arg: 2, scope: !1435, file: !712, line: 802, type: !396)
!1439 = !DILocalVariable(name: "mg", scope: !1435, file: !712, line: 804, type: !82)
!1440 = !DILocalVariable(name: "arg1", scope: !1441, file: !712, line: 812, type: !98)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !712, line: 811, column: 60)
!1442 = distinct !DILexicalBlock(scope: !1435, file: !712, line: 811, column: 9)
!1443 = !DILocalVariable(name: "key", scope: !1444, file: !712, line: 819, type: !396)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !712, line: 818, column: 28)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !712, line: 818, column: 9)
!1446 = !DILocalVariable(name: "ary", scope: !1444, file: !712, line: 820, type: !516)
!1447 = !DILocation(line: 0, scope: !1435)
!1448 = !DILocation(line: 809, column: 9, scope: !1435)
!1449 = !DILocation(line: 811, column: 15, scope: !1442)
!1450 = !DILocation(line: 811, column: 13, scope: !1442)
!1451 = !DILocation(line: 811, column: 9, scope: !1435)
!1452 = !DILocation(line: 812, column: 13, scope: !1441)
!1453 = !DILocation(line: 0, scope: !1441)
!1454 = !DILocation(line: 813, column: 2, scope: !1441)
!1455 = !DILocation(line: 814, column: 48, scope: !1441)
!1456 = !DILocation(line: 814, column: 2, scope: !1441)
!1457 = !DILocation(line: 818, column: 17, scope: !1445)
!1458 = !DILocation(line: 818, column: 14, scope: !1445)
!1459 = !DILocation(line: 818, column: 9, scope: !1435)
!1460 = !DILocation(line: 819, column: 16, scope: !1444)
!1461 = !DILocation(line: 0, scope: !1444)
!1462 = !DILocation(line: 820, column: 19, scope: !1444)
!1463 = !DILocation(line: 822, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1444, file: !712, line: 822, column: 6)
!1465 = !DILocation(line: 822, column: 6, scope: !1444)
!1466 = !DILocation(line: 823, column: 17, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !712, line: 822, column: 18)
!1468 = !DILocation(line: 823, column: 6, scope: !1467)
!1469 = !DILocation(line: 829, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !712, line: 828, column: 7)
!1471 = !DILocation(line: 829, column: 6, scope: !1470)
!1472 = !DILocation(line: 830, column: 14, scope: !1470)
!1473 = !DILocation(line: 833, column: 2, scope: !1444)
!1474 = !DILocation(line: 824, column: 3, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1467, file: !712, line: 823, column: 25)
!1476 = !DILocation(line: 0, scope: !1169, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 824, column: 3, scope: !1475)
!1478 = !DILocation(line: 161, column: 9, scope: !1176, inlinedAt: !1477)
!1479 = !DILocation(line: 161, column: 9, scope: !1169, inlinedAt: !1477)
!1480 = !DILocation(line: 162, column: 11, scope: !1175, inlinedAt: !1477)
!1481 = !DILocation(line: 0, scope: !1175, inlinedAt: !1477)
!1482 = !DILocation(line: 163, column: 6, scope: !1184, inlinedAt: !1477)
!1483 = !DILocation(line: 163, column: 6, scope: !1175, inlinedAt: !1477)
!1484 = !DILocation(line: 164, column: 24, scope: !1184, inlinedAt: !1477)
!1485 = !DILocation(line: 164, column: 19, scope: !1184, inlinedAt: !1477)
!1486 = !DILocation(line: 164, column: 6, scope: !1184, inlinedAt: !1477)
!1487 = !DILocation(line: 166, column: 6, scope: !1184, inlinedAt: !1477)
!1488 = !DILocation(line: 825, column: 10, scope: !1475)
!1489 = !DILocation(line: 825, column: 14, scope: !1475)
!1490 = distinct !{!1490, !1468, !1491, !736, !737}
!1491 = !DILocation(line: 826, column: 6, scope: !1467)
!1492 = !DILocation(line: 833, column: 14, scope: !1444)
!1493 = !DILocation(line: 834, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1444, file: !712, line: 834, column: 6)
!1495 = !DILocation(line: 834, column: 6, scope: !1444)
!1496 = !DILocation(line: 835, column: 6, scope: !1494)
!1497 = !DILocation(line: 838, column: 8, scope: !1445)
!1498 = !DILocation(line: 839, column: 1, scope: !1435)
!1499 = !DISubprogram(name: "Perl_safesysfree", scope: !783, file: !783, line: 3750, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1500 = distinct !DISubprogram(name: "Perl_av_create_and_push", scope: !712, file: !712, line: 554, type: !1501, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1505)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !1503, !457}
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!1505 = !{!1506, !1507}
!1506 = !DILocalVariable(name: "avp", arg: 1, scope: !1500, file: !712, line: 554, type: !1503)
!1507 = !DILocalVariable(name: "val", arg: 2, scope: !1500, file: !712, line: 554, type: !457)
!1508 = !DILocation(line: 0, scope: !1500)
!1509 = !DILocation(line: 558, column: 10, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1500, file: !712, line: 558, column: 9)
!1511 = !DILocation(line: 558, column: 9, scope: !1500)
!1512 = !DILocation(line: 559, column: 9, scope: !1510)
!1513 = !DILocation(line: 559, column: 7, scope: !1510)
!1514 = !DILocation(line: 559, column: 2, scope: !1510)
!1515 = !DILocation(line: 560, column: 5, scope: !1500)
!1516 = !DILocation(line: 561, column: 1, scope: !1500)
!1517 = distinct !DISubprogram(name: "Perl_av_push", scope: !712, file: !712, line: 575, type: !1518, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !450, !98}
!1520 = !{!1521, !1522, !1523}
!1521 = !DILocalVariable(name: "av", arg: 1, scope: !1517, file: !712, line: 575, type: !450)
!1522 = !DILocalVariable(name: "val", arg: 2, scope: !1517, file: !712, line: 575, type: !98)
!1523 = !DILocalVariable(name: "mg", scope: !1517, file: !712, line: 577, type: !82)
!1524 = !DILocation(line: 0, scope: !1517)
!1525 = !DILocation(line: 582, column: 9, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1517, file: !712, line: 582, column: 9)
!1527 = !DILocation(line: 582, column: 9, scope: !1517)
!1528 = !DILocation(line: 583, column: 2, scope: !1526)
!1529 = !DILocation(line: 585, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1517, file: !712, line: 585, column: 9)
!1531 = !DILocation(line: 585, column: 13, scope: !1530)
!1532 = !DILocation(line: 585, column: 9, scope: !1517)
!1533 = !DILocation(line: 586, column: 48, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !712, line: 585, column: 60)
!1535 = !DILocation(line: 586, column: 2, scope: !1534)
!1536 = !DILocation(line: 588, column: 2, scope: !1534)
!1537 = !DILocation(line: 590, column: 5, scope: !1517)
!1538 = !DILocation(line: 591, column: 1, scope: !1517)
!1539 = distinct !DISubprogram(name: "Perl_av_pop", scope: !712, file: !712, line: 606, type: !1540, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!98, !450}
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "av", arg: 1, scope: !1539, file: !712, line: 606, type: !450)
!1544 = !DILocalVariable(name: "retval", scope: !1539, file: !712, line: 608, type: !98)
!1545 = !DILocalVariable(name: "mg", scope: !1539, file: !712, line: 609, type: !82)
!1546 = !DILocation(line: 0, scope: !1539)
!1547 = !DILocation(line: 614, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !712, line: 614, column: 9)
!1549 = !DILocation(line: 614, column: 9, scope: !1539)
!1550 = !DILocation(line: 615, column: 2, scope: !1548)
!1551 = !DILocation(line: 616, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1539, file: !712, line: 616, column: 9)
!1553 = !DILocation(line: 616, column: 13, scope: !1552)
!1554 = !DILocation(line: 616, column: 9, scope: !1539)
!1555 = !DILocation(line: 617, column: 57, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !712, line: 616, column: 60)
!1557 = !DILocation(line: 617, column: 11, scope: !1556)
!1558 = !DILocation(line: 618, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !712, line: 618, column: 6)
!1560 = !DILocation(line: 618, column: 6, scope: !1556)
!1561 = !DILocation(line: 619, column: 15, scope: !1559)
!1562 = !DILocation(line: 619, column: 6, scope: !1559)
!1563 = !DILocation(line: 622, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1539, file: !712, line: 622, column: 9)
!1565 = !DILocation(line: 622, column: 20, scope: !1564)
!1566 = !DILocation(line: 622, column: 9, scope: !1539)
!1567 = !DILocation(line: 624, column: 14, scope: !1539)
!1568 = !DILocation(line: 624, column: 26, scope: !1539)
!1569 = !DILocation(line: 625, column: 28, scope: !1539)
!1570 = !DILocation(line: 625, column: 32, scope: !1539)
!1571 = !DILocation(line: 626, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1539, file: !712, line: 626, column: 9)
!1573 = !DILocation(line: 626, column: 9, scope: !1539)
!1574 = !DILocation(line: 627, column: 2, scope: !1572)
!1575 = !DILocation(line: 628, column: 12, scope: !1539)
!1576 = !DILocation(line: 628, column: 5, scope: !1539)
!1577 = !DILocation(line: 629, column: 1, scope: !1539)
!1578 = !DISubprogram(name: "Perl_newSVsv", scope: !783, file: !783, line: 3129, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!98, !457}
!1581 = distinct !DISubprogram(name: "Perl_av_create_and_unshift_one", scope: !712, file: !712, line: 643, type: !1582, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!166, !1503, !457}
!1584 = !{!1585, !1586}
!1585 = !DILocalVariable(name: "avp", arg: 1, scope: !1581, file: !712, line: 643, type: !1503)
!1586 = !DILocalVariable(name: "val", arg: 2, scope: !1581, file: !712, line: 643, type: !457)
!1587 = !DILocation(line: 0, scope: !1581)
!1588 = !DILocation(line: 647, column: 10, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1581, file: !712, line: 647, column: 9)
!1590 = !DILocation(line: 647, column: 9, scope: !1581)
!1591 = !DILocation(line: 648, column: 9, scope: !1589)
!1592 = !DILocation(line: 648, column: 7, scope: !1589)
!1593 = !DILocation(line: 648, column: 2, scope: !1589)
!1594 = !DILocation(line: 649, column: 5, scope: !1581)
!1595 = !DILocation(line: 650, column: 12, scope: !1581)
!1596 = !DILocation(line: 650, column: 5, scope: !1581)
!1597 = distinct !DISubprogram(name: "Perl_av_unshift", scope: !712, file: !712, line: 666, type: !762, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1606, !1608}
!1599 = !DILocalVariable(name: "av", arg: 1, scope: !1597, file: !712, line: 666, type: !450)
!1600 = !DILocalVariable(name: "num", arg: 2, scope: !1597, file: !712, line: 666, type: !396)
!1601 = !DILocalVariable(name: "i", scope: !1597, file: !712, line: 668, type: !396)
!1602 = !DILocalVariable(name: "mg", scope: !1597, file: !712, line: 669, type: !82)
!1603 = !DILocalVariable(name: "ary", scope: !1604, file: !712, line: 698, type: !166)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !712, line: 697, column: 14)
!1605 = distinct !DILexicalBlock(scope: !1597, file: !712, line: 697, column: 9)
!1606 = !DILocalVariable(name: "i", scope: !1604, file: !712, line: 699, type: !1607)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!1608 = !DILocalVariable(name: "slide", scope: !1604, file: !712, line: 701, type: !1607)
!1609 = !DILocation(line: 0, scope: !1597)
!1610 = !DILocation(line: 674, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1597, file: !712, line: 674, column: 9)
!1612 = !DILocation(line: 674, column: 9, scope: !1597)
!1613 = !DILocation(line: 675, column: 2, scope: !1611)
!1614 = !DILocation(line: 677, column: 15, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1597, file: !712, line: 677, column: 9)
!1616 = !DILocation(line: 677, column: 13, scope: !1615)
!1617 = !DILocation(line: 677, column: 9, scope: !1597)
!1618 = !DILocation(line: 678, column: 48, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !712, line: 677, column: 60)
!1620 = !DILocation(line: 679, column: 34, scope: !1619)
!1621 = !DILocation(line: 678, column: 2, scope: !1619)
!1622 = !DILocation(line: 680, column: 2, scope: !1619)
!1623 = !DILocation(line: 683, column: 13, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1597, file: !712, line: 683, column: 9)
!1625 = !DILocation(line: 683, column: 9, scope: !1597)
!1626 = !DILocation(line: 685, column: 10, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1597, file: !712, line: 685, column: 9)
!1628 = !DILocation(line: 685, column: 21, scope: !1627)
!1629 = !DILocation(line: 0, scope: !711, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 686, column: 2, scope: !1627)
!1631 = !DILocation(line: 40, column: 11, scope: !711, inlinedAt: !1630)
!1632 = !DILocation(line: 40, column: 21, scope: !711, inlinedAt: !1630)
!1633 = !DILocation(line: 41, column: 18, scope: !711, inlinedAt: !1630)
!1634 = !DILocation(line: 41, column: 16, scope: !711, inlinedAt: !1630)
!1635 = !DILocation(line: 41, column: 5, scope: !711, inlinedAt: !1630)
!1636 = !DILocation(line: 43, column: 5, scope: !711, inlinedAt: !1630)
!1637 = !DILocation(line: 42, column: 2, scope: !711, inlinedAt: !1630)
!1638 = !DILocation(line: 42, column: 14, scope: !711, inlinedAt: !1630)
!1639 = !DILocation(line: 42, column: 21, scope: !711, inlinedAt: !1630)
!1640 = !DILocation(line: 41, column: 30, scope: !711, inlinedAt: !1630)
!1641 = distinct !{!1641, !1635, !1642, !736, !737}
!1642 = !DILocation(line: 42, column: 23, scope: !711, inlinedAt: !1630)
!1643 = !DILocation(line: 44, column: 18, scope: !719, inlinedAt: !1630)
!1644 = !DILocation(line: 44, column: 30, scope: !719, inlinedAt: !1630)
!1645 = !DILocation(line: 0, scope: !719, inlinedAt: !1630)
!1646 = !DILocation(line: 45, column: 9, scope: !742, inlinedAt: !1630)
!1647 = !DILocation(line: 45, column: 6, scope: !719, inlinedAt: !1630)
!1648 = !DILocation(line: 46, column: 6, scope: !745, inlinedAt: !1630)
!1649 = distinct !{!1649, !1636, !1650, !736, !737}
!1650 = !DILocation(line: 47, column: 5, scope: !711, inlinedAt: !1630)
!1651 = !DILocation(line: 48, column: 25, scope: !711, inlinedAt: !1630)
!1652 = !DILocation(line: 48, column: 11, scope: !711, inlinedAt: !1630)
!1653 = !DILocation(line: 49, column: 5, scope: !711, inlinedAt: !1630)
!1654 = !DILocation(line: 48, column: 23, scope: !711, inlinedAt: !1630)
!1655 = !DILocation(line: 50, column: 14, scope: !711, inlinedAt: !1630)
!1656 = !DILocation(line: 50, column: 2, scope: !711, inlinedAt: !1630)
!1657 = !DILocation(line: 50, column: 21, scope: !711, inlinedAt: !1630)
!1658 = distinct !{!1658, !1653, !1659, !736, !737}
!1659 = !DILocation(line: 50, column: 23, scope: !711, inlinedAt: !1630)
!1660 = !DILocation(line: 51, column: 5, scope: !711, inlinedAt: !1630)
!1661 = !DILocation(line: 52, column: 5, scope: !711, inlinedAt: !1630)
!1662 = !DILocation(line: 686, column: 2, scope: !1627)
!1663 = !DILocation(line: 687, column: 9, scope: !1597)
!1664 = !DILocation(line: 687, column: 23, scope: !1597)
!1665 = !DILocation(line: 688, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1597, file: !712, line: 688, column: 9)
!1667 = !DILocation(line: 688, column: 9, scope: !1597)
!1668 = !DILocation(line: 687, column: 21, scope: !1597)
!1669 = !DILocation(line: 689, column: 6, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !712, line: 688, column: 12)
!1671 = !DILocation(line: 691, column: 6, scope: !1670)
!1672 = !DILocation(line: 693, column: 2, scope: !1670)
!1673 = !DILocation(line: 693, column: 12, scope: !1670)
!1674 = !DILocation(line: 694, column: 2, scope: !1670)
!1675 = !DILocation(line: 694, column: 14, scope: !1670)
!1676 = !DILocation(line: 695, column: 16, scope: !1670)
!1677 = !DILocation(line: 695, column: 28, scope: !1670)
!1678 = !DILocation(line: 695, column: 14, scope: !1670)
!1679 = !DILocation(line: 696, column: 5, scope: !1670)
!1680 = !DILocation(line: 697, column: 9, scope: !1605)
!1681 = !DILocation(line: 697, column: 9, scope: !1597)
!1682 = !DILocation(line: 699, column: 20, scope: !1604)
!1683 = !DILocation(line: 0, scope: !1604)
!1684 = !DILocation(line: 701, column: 24, scope: !1604)
!1685 = !DILocation(line: 702, column: 6, scope: !1604)
!1686 = !DILocation(line: 703, column: 2, scope: !1604)
!1687 = !DILocation(line: 704, column: 2, scope: !1604)
!1688 = !DILocation(line: 704, column: 14, scope: !1604)
!1689 = !DILocation(line: 705, column: 8, scope: !1604)
!1690 = !DILocation(line: 706, column: 2, scope: !1604)
!1691 = !DILocation(line: 707, column: 2, scope: !1604)
!1692 = !DILocation(line: 708, column: 17, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1604, file: !712, line: 707, column: 5)
!1694 = !DILocation(line: 711, column: 2, scope: !1604)
!1695 = !DILocation(line: 711, column: 12, scope: !1604)
!1696 = !DILocation(line: 712, column: 2, scope: !1604)
!1697 = !DILocation(line: 712, column: 14, scope: !1604)
!1698 = !DILocation(line: 713, column: 16, scope: !1604)
!1699 = !DILocation(line: 713, column: 28, scope: !1604)
!1700 = !DILocation(line: 713, column: 14, scope: !1604)
!1701 = !DILocation(line: 714, column: 5, scope: !1604)
!1702 = !DILocation(line: 715, column: 1, scope: !1597)
!1703 = distinct !DISubprogram(name: "Perl_av_shift", scope: !712, file: !712, line: 730, type: !1540, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1704)
!1704 = !{!1705, !1706, !1707}
!1705 = !DILocalVariable(name: "av", arg: 1, scope: !1703, file: !712, line: 730, type: !450)
!1706 = !DILocalVariable(name: "retval", scope: !1703, file: !712, line: 732, type: !98)
!1707 = !DILocalVariable(name: "mg", scope: !1703, file: !712, line: 733, type: !82)
!1708 = !DILocation(line: 0, scope: !1703)
!1709 = !DILocation(line: 738, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1703, file: !712, line: 738, column: 9)
!1711 = !DILocation(line: 738, column: 9, scope: !1703)
!1712 = !DILocation(line: 739, column: 2, scope: !1710)
!1713 = !DILocation(line: 740, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1703, file: !712, line: 740, column: 9)
!1715 = !DILocation(line: 740, column: 13, scope: !1714)
!1716 = !DILocation(line: 740, column: 9, scope: !1703)
!1717 = !DILocation(line: 741, column: 57, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !712, line: 740, column: 60)
!1719 = !DILocation(line: 741, column: 11, scope: !1718)
!1720 = !DILocation(line: 742, column: 6, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !712, line: 742, column: 6)
!1722 = !DILocation(line: 742, column: 6, scope: !1718)
!1723 = !DILocation(line: 743, column: 15, scope: !1721)
!1724 = !DILocation(line: 743, column: 6, scope: !1721)
!1725 = !DILocation(line: 746, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1703, file: !712, line: 746, column: 9)
!1727 = !DILocation(line: 746, column: 20, scope: !1726)
!1728 = !DILocation(line: 746, column: 9, scope: !1703)
!1729 = !DILocation(line: 748, column: 15, scope: !1703)
!1730 = !DILocation(line: 748, column: 14, scope: !1703)
!1731 = !DILocation(line: 749, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1703, file: !712, line: 749, column: 9)
!1733 = !DILocation(line: 749, column: 9, scope: !1703)
!1734 = !DILocation(line: 750, column: 15, scope: !1732)
!1735 = !DILocation(line: 751, column: 19, scope: !1703)
!1736 = !DILocation(line: 750, column: 2, scope: !1732)
!1737 = !DILocation(line: 751, column: 31, scope: !1703)
!1738 = !DILocation(line: 751, column: 17, scope: !1703)
!1739 = !DILocation(line: 752, column: 5, scope: !1703)
!1740 = !DILocation(line: 752, column: 14, scope: !1703)
!1741 = !DILocation(line: 753, column: 5, scope: !1703)
!1742 = !DILocation(line: 753, column: 16, scope: !1703)
!1743 = !DILocation(line: 754, column: 9, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1703, file: !712, line: 754, column: 9)
!1745 = !DILocation(line: 754, column: 9, scope: !1703)
!1746 = !DILocation(line: 755, column: 2, scope: !1744)
!1747 = !DILocation(line: 756, column: 12, scope: !1703)
!1748 = !DILocation(line: 756, column: 5, scope: !1703)
!1749 = !DILocation(line: 757, column: 1, scope: !1703)
!1750 = distinct !DISubprogram(name: "Perl_av_len", scope: !712, file: !712, line: 780, type: !1751, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!396, !450}
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "av", arg: 1, scope: !1750, file: !712, line: 780, type: !450)
!1755 = !DILocation(line: 0, scope: !1750)
!1756 = !DILocalVariable(name: "av", arg: 1, scope: !1757, file: !1170, line: 18, type: !450)
!1757 = distinct !DISubprogram(name: "S_av_top_index", scope: !1170, file: !1170, line: 18, type: !1751, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1758)
!1758 = !{!1756}
!1759 = !DILocation(line: 0, scope: !1757, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 784, column: 12, scope: !1750)
!1761 = !DILocation(line: 23, column: 12, scope: !1757, inlinedAt: !1760)
!1762 = !DILocation(line: 784, column: 5, scope: !1750)
!1763 = distinct !DISubprogram(name: "Perl_av_delete", scope: !712, file: !712, line: 853, type: !1764, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!98, !450, !396, !181}
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1774}
!1767 = !DILocalVariable(name: "av", arg: 1, scope: !1763, file: !712, line: 853, type: !450)
!1768 = !DILocalVariable(name: "key", arg: 2, scope: !1763, file: !712, line: 853, type: !396)
!1769 = !DILocalVariable(name: "flags", arg: 3, scope: !1763, file: !712, line: 853, type: !181)
!1770 = !DILocalVariable(name: "sv", scope: !1763, file: !712, line: 855, type: !98)
!1771 = !DILocalVariable(name: "tied_magic", scope: !1772, file: !712, line: 864, type: !915)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !712, line: 863, column: 25)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !712, line: 863, column: 9)
!1774 = !DILocalVariable(name: "svp", scope: !1775, file: !712, line: 867, type: !166)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !712, line: 866, column: 74)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !712, line: 866, column: 13)
!1777 = !DILocation(line: 0, scope: !1763)
!1778 = !DILocation(line: 860, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1763, file: !712, line: 860, column: 9)
!1780 = !DILocation(line: 860, column: 9, scope: !1763)
!1781 = !DILocation(line: 861, column: 2, scope: !1779)
!1782 = !DILocation(line: 863, column: 9, scope: !1773)
!1783 = !DILocation(line: 863, column: 9, scope: !1763)
!1784 = !DILocation(line: 865, column: 8, scope: !1772)
!1785 = !DILocation(line: 0, scope: !1772)
!1786 = !DILocation(line: 866, column: 14, scope: !1776)
!1787 = !DILocation(line: 866, column: 25, scope: !1776)
!1788 = !DILocation(line: 866, column: 28, scope: !1776)
!1789 = !DILocation(line: 866, column: 13, scope: !1772)
!1790 = !DILocation(line: 868, column: 21, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1775, file: !712, line: 868, column: 17)
!1792 = !DILocation(line: 868, column: 17, scope: !1775)
!1793 = !DILocation(line: 869, column: 8, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !712, line: 869, column: 7)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !712, line: 868, column: 26)
!1796 = !DILocation(line: 869, column: 7, scope: !1795)
!1797 = !DILocation(line: 872, column: 19, scope: !1775)
!1798 = !DILocation(line: 0, scope: !1775)
!1799 = !DILocation(line: 873, column: 17, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1775, file: !712, line: 873, column: 17)
!1801 = !DILocation(line: 873, column: 17, scope: !1775)
!1802 = !DILocation(line: 874, column: 22, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !712, line: 873, column: 22)
!1804 = !DILocation(line: 875, column: 17, scope: !1803)
!1805 = !DILocation(line: 876, column: 21, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !712, line: 876, column: 21)
!1807 = !DILocation(line: 876, column: 21, scope: !1803)
!1808 = !DILocation(line: 877, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !712, line: 876, column: 55)
!1810 = !DILocation(line: 878, column: 21, scope: !1809)
!1811 = !DILocation(line: 885, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1763, file: !712, line: 885, column: 9)
!1813 = !DILocation(line: 885, column: 13, scope: !1812)
!1814 = !DILocation(line: 885, column: 9, scope: !1763)
!1815 = !DILocation(line: 886, column: 9, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !712, line: 885, column: 18)
!1817 = !DILocation(line: 886, column: 20, scope: !1816)
!1818 = !DILocation(line: 886, column: 6, scope: !1816)
!1819 = !DILocation(line: 887, column: 10, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !712, line: 887, column: 6)
!1821 = !DILocation(line: 887, column: 6, scope: !1816)
!1822 = !DILocation(line: 891, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1763, file: !712, line: 891, column: 9)
!1824 = !DILocation(line: 891, column: 15, scope: !1823)
!1825 = !DILocation(line: 891, column: 13, scope: !1823)
!1826 = !DILocation(line: 891, column: 9, scope: !1763)
!1827 = !DILocation(line: 894, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !712, line: 894, column: 6)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !712, line: 893, column: 10)
!1830 = !DILocation(line: 894, column: 18, scope: !1828)
!1831 = !DILocation(line: 0, scope: !711, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 895, column: 6, scope: !1828)
!1833 = !DILocation(line: 40, column: 11, scope: !711, inlinedAt: !1832)
!1834 = !DILocation(line: 40, column: 21, scope: !711, inlinedAt: !1832)
!1835 = !DILocation(line: 41, column: 16, scope: !711, inlinedAt: !1832)
!1836 = !DILocation(line: 41, column: 5, scope: !711, inlinedAt: !1832)
!1837 = !DILocation(line: 43, column: 5, scope: !711, inlinedAt: !1832)
!1838 = !DILocation(line: 42, column: 2, scope: !711, inlinedAt: !1832)
!1839 = !DILocation(line: 42, column: 14, scope: !711, inlinedAt: !1832)
!1840 = !DILocation(line: 42, column: 21, scope: !711, inlinedAt: !1832)
!1841 = !DILocation(line: 41, column: 18, scope: !711, inlinedAt: !1832)
!1842 = !DILocation(line: 41, column: 30, scope: !711, inlinedAt: !1832)
!1843 = distinct !{!1843, !1836, !1844, !736, !737}
!1844 = !DILocation(line: 42, column: 23, scope: !711, inlinedAt: !1832)
!1845 = !DILocation(line: 44, column: 18, scope: !719, inlinedAt: !1832)
!1846 = !DILocation(line: 44, column: 30, scope: !719, inlinedAt: !1832)
!1847 = !DILocation(line: 0, scope: !719, inlinedAt: !1832)
!1848 = !DILocation(line: 45, column: 9, scope: !742, inlinedAt: !1832)
!1849 = !DILocation(line: 45, column: 6, scope: !719, inlinedAt: !1832)
!1850 = !DILocation(line: 46, column: 6, scope: !745, inlinedAt: !1832)
!1851 = distinct !{!1851, !1837, !1852, !736, !737}
!1852 = !DILocation(line: 47, column: 5, scope: !711, inlinedAt: !1832)
!1853 = !DILocation(line: 48, column: 25, scope: !711, inlinedAt: !1832)
!1854 = !DILocation(line: 48, column: 11, scope: !711, inlinedAt: !1832)
!1855 = !DILocation(line: 49, column: 5, scope: !711, inlinedAt: !1832)
!1856 = !DILocation(line: 48, column: 23, scope: !711, inlinedAt: !1832)
!1857 = !DILocation(line: 50, column: 14, scope: !711, inlinedAt: !1832)
!1858 = !DILocation(line: 50, column: 2, scope: !711, inlinedAt: !1832)
!1859 = !DILocation(line: 50, column: 21, scope: !711, inlinedAt: !1832)
!1860 = distinct !{!1860, !1855, !1861, !736, !737}
!1861 = !DILocation(line: 50, column: 23, scope: !711, inlinedAt: !1832)
!1862 = !DILocation(line: 51, column: 5, scope: !711, inlinedAt: !1832)
!1863 = !DILocation(line: 52, column: 5, scope: !711, inlinedAt: !1832)
!1864 = !DILocation(line: 895, column: 6, scope: !1828)
!1865 = !DILocation(line: 896, column: 7, scope: !1829)
!1866 = !DILocation(line: 897, column: 19, scope: !1829)
!1867 = !DILocation(line: 898, column: 13, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1829, file: !712, line: 898, column: 6)
!1869 = !DILocation(line: 898, column: 10, scope: !1868)
!1870 = !DILocation(line: 898, column: 6, scope: !1829)
!1871 = !DILocation(line: 899, column: 6, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !712, line: 898, column: 26)
!1873 = !DILocation(line: 900, column: 3, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1872, file: !712, line: 899, column: 9)
!1875 = !DILocation(line: 900, column: 14, scope: !1874)
!1876 = !DILocation(line: 901, column: 21, scope: !1872)
!1877 = !DILocation(line: 901, column: 26, scope: !1872)
!1878 = !DILocation(line: 901, column: 15, scope: !1872)
!1879 = !DILocation(line: 901, column: 30, scope: !1872)
!1880 = !DILocation(line: 901, column: 29, scope: !1872)
!1881 = !DILocation(line: 901, column: 6, scope: !1874)
!1882 = distinct !{!1882, !1871, !1883, !736, !737}
!1883 = !DILocation(line: 901, column: 46, scope: !1872)
!1884 = !DILocation(line: 903, column: 6, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1829, file: !712, line: 903, column: 6)
!1886 = !DILocation(line: 903, column: 6, scope: !1829)
!1887 = !DILocation(line: 904, column: 6, scope: !1885)
!1888 = !DILocation(line: 906, column: 11, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1763, file: !712, line: 906, column: 8)
!1890 = !DILocation(line: 906, column: 8, scope: !1763)
!1891 = !DILocation(line: 907, column: 12, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !712, line: 907, column: 6)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !712, line: 906, column: 20)
!1894 = !DILocation(line: 907, column: 6, scope: !1893)
!1895 = !DILocalVariable(name: "sv", arg: 1, scope: !1896, file: !1170, line: 171, type: !98)
!1896 = distinct !DISubprogram(name: "S_SvREFCNT_dec_NN", scope: !1170, file: !1170, line: 171, type: !1171, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1897)
!1897 = !{!1895, !1898}
!1898 = !DILocalVariable(name: "rc", scope: !1896, file: !1170, line: 173, type: !105)
!1899 = !DILocation(line: 0, scope: !1896, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 908, column: 6, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1892, file: !712, line: 907, column: 25)
!1902 = !DILocation(line: 173, column: 14, scope: !1896, inlinedAt: !1900)
!1903 = !DILocation(line: 174, column: 9, scope: !1904, inlinedAt: !1900)
!1904 = distinct !DILexicalBlock(scope: !1896, file: !1170, line: 174, column: 9)
!1905 = !DILocation(line: 174, column: 9, scope: !1896, inlinedAt: !1900)
!1906 = !DILocation(line: 175, column: 20, scope: !1904, inlinedAt: !1900)
!1907 = !DILocation(line: 175, column: 15, scope: !1904, inlinedAt: !1900)
!1908 = !DILocation(line: 175, column: 2, scope: !1904, inlinedAt: !1900)
!1909 = !DILocation(line: 177, column: 2, scope: !1904, inlinedAt: !1900)
!1910 = !DILocation(line: 911, column: 11, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1892, file: !712, line: 911, column: 11)
!1912 = !DILocation(line: 911, column: 11, scope: !1892)
!1913 = !DILocation(line: 912, column: 6, scope: !1911)
!1914 = !DILocation(line: 915, column: 1, scope: !1763)
!1915 = !DISubprogram(name: "Perl_sv_unmagic", scope: !783, file: !783, line: 4722, type: !1916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!97, !457, !1233}
!1918 = !DISubprogram(name: "Perl_sv_2mortal", scope: !783, file: !783, line: 4114, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1919 = distinct !DISubprogram(name: "Perl_av_exists", scope: !712, file: !712, line: 930, type: !1920, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!367, !450, !396}
!1922 = !{!1923, !1924, !1925, !1928, !1929, !1932, !1934}
!1923 = !DILocalVariable(name: "av", arg: 1, scope: !1919, file: !712, line: 930, type: !450)
!1924 = !DILocalVariable(name: "key", arg: 2, scope: !1919, file: !712, line: 930, type: !396)
!1925 = !DILocalVariable(name: "tied_magic", scope: !1926, file: !712, line: 936, type: !915)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !712, line: 935, column: 25)
!1927 = distinct !DILexicalBlock(scope: !1919, file: !712, line: 935, column: 9)
!1928 = !DILocalVariable(name: "regdata_magic", scope: !1926, file: !712, line: 938, type: !915)
!1929 = !DILocalVariable(name: "mg", scope: !1930, file: !712, line: 941, type: !82)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !712, line: 940, column: 42)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !712, line: 940, column: 13)
!1932 = !DILocalVariable(name: "sv", scope: !1933, file: !712, line: 955, type: !457)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !712, line: 954, column: 6)
!1934 = !DILocalVariable(name: "retbool", scope: !1935, file: !712, line: 961, type: !181)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !712, line: 960, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !712, line: 958, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !712, line: 958, column: 7)
!1938 = !DILocation(line: 0, scope: !1919)
!1939 = !DILocation(line: 935, column: 9, scope: !1927)
!1940 = !DILocation(line: 935, column: 9, scope: !1919)
!1941 = !DILocation(line: 937, column: 8, scope: !1926)
!1942 = !DILocation(line: 0, scope: !1926)
!1943 = !DILocation(line: 939, column: 15, scope: !1926)
!1944 = !DILocation(line: 940, column: 13, scope: !1931)
!1945 = !DILocation(line: 940, column: 24, scope: !1931)
!1946 = !DILocation(line: 943, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1930, file: !712, line: 943, column: 17)
!1948 = !DILocation(line: 943, column: 17, scope: !1930)
!1949 = !DILocation(line: 944, column: 8, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !712, line: 944, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !712, line: 943, column: 26)
!1952 = !DILocation(line: 944, column: 7, scope: !1951)
!1953 = !DILocation(line: 948, column: 16, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1930, file: !712, line: 948, column: 16)
!1955 = !DILocation(line: 948, column: 20, scope: !1954)
!1956 = !DILocation(line: 948, column: 25, scope: !1954)
!1957 = !DILocation(line: 949, column: 28, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !712, line: 949, column: 21)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !712, line: 948, column: 43)
!1960 = !DILocation(line: 949, column: 25, scope: !1958)
!1961 = !DILocation(line: 0, scope: !1958)
!1962 = !DILocation(line: 955, column: 19, scope: !1933)
!1963 = !DILocation(line: 0, scope: !1933)
!1964 = !DILocation(line: 956, column: 3, scope: !1933)
!1965 = !DILocation(line: 957, column: 8, scope: !1933)
!1966 = !DILocation(line: 0, scope: !1930)
!1967 = !DILocation(line: 958, column: 7, scope: !1937)
!1968 = !DILocation(line: 958, column: 7, scope: !1933)
!1969 = !DILocation(line: 959, column: 7, scope: !1936)
!1970 = !DILocation(line: 961, column: 18, scope: !1935)
!1971 = !DILocation(line: 969, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1919, file: !712, line: 969, column: 9)
!1973 = !DILocation(line: 969, column: 13, scope: !1972)
!1974 = !DILocation(line: 969, column: 9, scope: !1919)
!1975 = !DILocation(line: 970, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !712, line: 969, column: 18)
!1977 = !DILocation(line: 970, column: 20, scope: !1976)
!1978 = !DILocation(line: 970, column: 6, scope: !1976)
!1979 = !DILocation(line: 971, column: 10, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !712, line: 971, column: 6)
!1981 = !DILocation(line: 971, column: 6, scope: !1976)
!1982 = !DILocation(line: 975, column: 9, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1919, file: !712, line: 975, column: 9)
!1984 = !DILocation(line: 975, column: 16, scope: !1983)
!1985 = !DILocation(line: 975, column: 13, scope: !1983)
!1986 = !DILocation(line: 975, column: 28, scope: !1983)
!1987 = !DILocation(line: 975, column: 31, scope: !1983)
!1988 = !DILocation(line: 975, column: 9, scope: !1919)
!1989 = !DILocation(line: 980, column: 2, scope: !1983)
!1990 = !DILocation(line: 981, column: 1, scope: !1919)
!1991 = !DISubprogram(name: "Perl_magic_existspack", scope: !783, file: !783, line: 2355, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!97, !98, !797}
!1994 = !DISubprogram(name: "Perl_sv_2bool_flags", scope: !783, file: !783, line: 4088, type: !1995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!367, !98, !181}
!1997 = distinct !DISubprogram(name: "Perl_av_arylen_p", scope: !712, file: !712, line: 1003, type: !1998, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2000)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!166, !450}
!2000 = !{!2001, !2002}
!2001 = !DILocalVariable(name: "av", arg: 1, scope: !1997, file: !712, line: 1003, type: !450)
!2002 = !DILocalVariable(name: "mg", scope: !1997, file: !712, line: 1004, type: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!2004 = !DILocation(line: 0, scope: !1997)
!2005 = !DILocalVariable(name: "av", arg: 1, scope: !2006, file: !712, line: 984, type: !450)
!2006 = distinct !DISubprogram(name: "S_get_aux_mg", scope: !712, file: !712, line: 984, type: !2007, scopeLine: 984, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!82, !450}
!2009 = !{!2005, !2010}
!2010 = !DILocalVariable(name: "mg", scope: !2006, file: !712, line: 985, type: !82)
!2011 = !DILocation(line: 0, scope: !2006, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 1004, column: 23, scope: !1997)
!2013 = !DILocation(line: 990, column: 10, scope: !2006, inlinedAt: !2012)
!2014 = !DILocation(line: 992, column: 10, scope: !2015, inlinedAt: !2012)
!2015 = distinct !DILexicalBlock(scope: !2006, file: !712, line: 992, column: 9)
!2016 = !DILocation(line: 992, column: 9, scope: !2006, inlinedAt: !2012)
!2017 = !DILocation(line: 993, column: 7, scope: !2018, inlinedAt: !2012)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !712, line: 992, column: 14)
!2019 = !DILocation(line: 997, column: 6, scope: !2018, inlinedAt: !2012)
!2020 = !DILocation(line: 997, column: 15, scope: !2018, inlinedAt: !2012)
!2021 = !DILocation(line: 998, column: 5, scope: !2018, inlinedAt: !2012)
!2022 = !DILocation(line: 1009, column: 18, scope: !1997)
!2023 = !DILocation(line: 1009, column: 5, scope: !1997)
!2024 = distinct !DISubprogram(name: "Perl_av_iter_p", scope: !712, file: !712, line: 1013, type: !2025, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!703, !450}
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "av", arg: 1, scope: !2024, file: !712, line: 1013, type: !450)
!2029 = !DILocalVariable(name: "mg", scope: !2024, file: !712, line: 1014, type: !2003)
!2030 = !DILocalVariable(name: "temp", scope: !2031, file: !712, line: 1023, type: !703)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !712, line: 1022, column: 22)
!2032 = distinct !DILexicalBlock(scope: !2024, file: !712, line: 1022, column: 9)
!2033 = !DILocation(line: 0, scope: !2024)
!2034 = !DILocation(line: 0, scope: !2006, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 1014, column: 23, scope: !2024)
!2036 = !DILocation(line: 990, column: 10, scope: !2006, inlinedAt: !2035)
!2037 = !DILocation(line: 992, column: 10, scope: !2015, inlinedAt: !2035)
!2038 = !DILocation(line: 992, column: 9, scope: !2006, inlinedAt: !2035)
!2039 = !DILocation(line: 993, column: 7, scope: !2018, inlinedAt: !2035)
!2040 = !DILocation(line: 997, column: 6, scope: !2018, inlinedAt: !2035)
!2041 = !DILocation(line: 997, column: 15, scope: !2018, inlinedAt: !2035)
!2042 = !DILocation(line: 998, column: 5, scope: !2018, inlinedAt: !2035)
!2043 = !DILocation(line: 1022, column: 14, scope: !2032)
!2044 = !DILocation(line: 1022, column: 10, scope: !2032)
!2045 = !DILocation(line: 1022, column: 9, scope: !2024)
!2046 = !DILocation(line: 1024, column: 6, scope: !2031)
!2047 = !DILocation(line: 1024, column: 13, scope: !2031)
!2048 = !DILocation(line: 1025, column: 2, scope: !2031)
!2049 = !DILocation(line: 0, scope: !2031)
!2050 = !DILocation(line: 1026, column: 13, scope: !2031)
!2051 = !DILocation(line: 1027, column: 5, scope: !2031)
!2052 = !DILocation(line: 1028, column: 22, scope: !2024)
!2053 = !DILocation(line: 1028, column: 5, scope: !2024)
!2054 = !DISubprogram(name: "Perl_safesyscalloc", scope: !783, file: !783, line: 3746, type: !2055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!103, !133, !133}
!2057 = !DISubprogram(name: "Perl_newRV", scope: !783, file: !783, line: 3027, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!2058 = !DISubprogram(name: "Perl_hv_common", scope: !783, file: !783, line: 1626, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!103, !67, !98, !468, !132, !97, !97, !98, !105}
!2061 = !DISubprogram(name: "Perl_sv_free2", scope: !783, file: !783, line: 4371, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !457, !470}
!2064 = !DISubprogram(name: "Perl_sv_magicext", scope: !783, file: !783, line: 4431, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !786)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!82, !457, !457, !1233, !2067, !467, !491}
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
