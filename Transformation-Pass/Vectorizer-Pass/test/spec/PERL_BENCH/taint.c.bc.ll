; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/taint.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/taint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.8 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.16 }
%union.anon.16 = type { i64 }

@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_no_security = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c" while running setuid\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" while running setgid\00", align 1
@PL_taint_warn = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" while running with -t switch\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c" while running with -T switch\00", align 1
@PL_unsafe = external local_unnamed_addr global i8, align 1
@Perl_taint_env.misc_env = internal unnamed_addr constant [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null], align 16, !dbg !0
@.str.4 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"BASH_ENV\00", align 1
@PL_envgv = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"%%ENV is aliased to %s%s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"another variable\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%%ENV is aliased to %%%s%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"$ENV{PATH}\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Insecure directory in %s%s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"-_.+\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Insecure $ENV{%s}%s\00", align 1
@PL_sv_undef = external global %struct.sv, align 8

; Function Attrs: nounwind uwtable
define dso_local void @Perl_taint_proper(ptr noundef %f, ptr noundef %s) local_unnamed_addr #0 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata ptr %f, metadata !646, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata ptr %s, metadata !647, metadata !DIExpression()), !dbg !651
  %0 = load i8, ptr @PL_tainted, align 1, !dbg !652, !range !653
  %tobool.not = icmp eq i8 %0, 0, !dbg !652
  br i1 %tobool.not, label %if.end21, label %if.then, !dbg !654

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %f, null, !dbg !655
  %spec.store.select = select i1 %tobool1.not, ptr @PL_no_security, ptr %f, !dbg !657
  call void @llvm.dbg.value(metadata ptr %spec.store.select, metadata !646, metadata !DIExpression()), !dbg !651
  %call = tail call i32 @getuid() #7, !dbg !658
  %call3 = tail call i32 @geteuid() #7, !dbg !660
  %cmp.not = icmp eq i32 %call, %call3, !dbg !661
  br i1 %cmp.not, label %if.else, label %if.end15, !dbg !662

if.else:                                          ; preds = %if.then
  %call5 = tail call i32 @getgid() #7, !dbg !663
  %call6 = tail call i32 @getegid() #7, !dbg !665
  %cmp7.not = icmp eq i32 %call5, %call6, !dbg !666
  br i1 %cmp7.not, label %if.else9, label %if.end15, !dbg !667

if.else9:                                         ; preds = %if.else
  %1 = load i8, ptr @PL_taint_warn, align 1, !dbg !668, !range !653
  %tobool10.not = icmp eq i8 %1, 0, !dbg !668
  %.str.3..str.2 = select i1 %tobool10.not, ptr @.str.3, ptr @.str.2
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.else, %if.then
  %ug.0 = phi ptr [ @.str, %if.then ], [ @.str.1, %if.else ], [ %.str.3..str.2, %if.else9 ], !dbg !670
  call void @llvm.dbg.value(metadata ptr %ug.0, metadata !648, metadata !DIExpression()), !dbg !671
  %2 = load i8, ptr @PL_unsafe, align 1, !dbg !672, !range !653
  %tobool16.not = icmp eq i8 %2, 0, !dbg !672
  %3 = load i8, ptr @PL_taint_warn, align 1
  %tobool17.not = icmp eq i8 %3, 0
  %or.cond = select i1 %tobool16.not, i1 %tobool17.not, i1 false, !dbg !674
  br i1 %or.cond, label %if.else19, label %if.then18, !dbg !674

if.then18:                                        ; preds = %if.end15
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 39, ptr noundef %spec.store.select, ptr noundef %s, ptr noundef nonnull %ug.0) #7, !dbg !675
  br label %if.end21, !dbg !677

if.else19:                                        ; preds = %if.end15
  tail call void (ptr, ...) @Perl_croak(ptr noundef %spec.store.select, ptr noundef %s, ptr noundef nonnull %ug.0) #7, !dbg !678
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.else19, %entry
  ret void, !dbg !680
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !681 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !686 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !687 i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !691 i32 @getegid() local_unnamed_addr #2

declare !dbg !692 void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !696 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_taint_env() local_unnamed_addr #0 !dbg !2 {
entry:
  %len = alloca i64, align 8
  %0 = load ptr, ptr @PL_envgv, align 8, !dbg !699
  %tobool.not = icmp eq ptr %0, null, !dbg !699
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !701

if.end:                                           ; preds = %entry
  %sv_u = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3, !dbg !702
  %1 = load ptr, ptr %sv_u, align 8, !dbg !702
  %gp_hv = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 5, !dbg !702
  %2 = load ptr, ptr %gp_hv, align 8, !dbg !702
  %tobool1.not = icmp eq ptr %2, null, !dbg !702
  br i1 %tobool1.not, label %if.then10, label %lor.lhs.false, !dbg !703

lor.lhs.false:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 2, !dbg !704
  %3 = load i32, ptr %sv_flags, align 4, !dbg !704
  %and = and i32 %3, 8388608, !dbg !704
  %tobool5.not = icmp eq i32 %and, 0, !dbg !704
  br i1 %tobool5.not, label %if.then10, label %land.lhs.true, !dbg !705

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call ptr @Perl_mg_find(ptr noundef nonnull %2, i32 noundef 69) #7, !dbg !706
  %tobool9.not = icmp eq ptr %call, null, !dbg !706
  br i1 %tobool9.not, label %land.lhs.true.if.then10_crit_edge, label %if.end24, !dbg !707

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  %.pre = load ptr, ptr @PL_envgv, align 8, !dbg !708
  %sv_u12.phi.trans.insert = getelementptr inbounds %struct.gv, ptr %.pre, i64 0, i32 3
  %.pre206 = load ptr, ptr %sv_u12.phi.trans.insert, align 8, !dbg !708
  br label %if.then10, !dbg !707

if.then10:                                        ; preds = %land.lhs.true.if.then10_crit_edge, %lor.lhs.false, %if.end
  %4 = phi ptr [ %.pre206, %land.lhs.true.if.then10_crit_edge ], [ %1, %lor.lhs.false ], [ %1, %if.end ], !dbg !708
  %5 = phi ptr [ %.pre, %land.lhs.true.if.then10_crit_edge ], [ %0, %lor.lhs.false ], [ %0, %if.end ], !dbg !708
  %6 = load i8, ptr @PL_tainted, align 1, !dbg !709, !range !653
  call void @llvm.dbg.value(metadata i8 %6, metadata !615, metadata !DIExpression()), !dbg !710
  %gp_egv = getelementptr inbounds %struct.gp, ptr %4, i64 0, i32 8, !dbg !708
  %7 = load ptr, ptr %gp_egv, align 8, !dbg !708
  %tobool14.not = icmp eq ptr %7, null, !dbg !708
  %. = select i1 %tobool14.not, ptr %5, ptr %7, !dbg !708
  %8 = load ptr, ptr %., align 8, !dbg !708
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %8, i64 0, i32 4, !dbg !708
  %9 = load ptr, ptr %xiv_u, align 8, !dbg !708
  %hek_key = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 2, !dbg !708
  call void @llvm.dbg.value(metadata ptr %hek_key, metadata !619, metadata !DIExpression()), !dbg !710
  store i8 1, ptr @PL_tainted, align 1, !dbg !711
  %call18 = tail call i32 @strcmp(ptr noundef nonnull %hek_key, ptr noundef nonnull dereferenceable(4) @.str.6) #8, !dbg !712
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !712
  br i1 %tobool19.not, label %if.then20, label %if.else, !dbg !714

if.then20:                                        ; preds = %if.then10
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9), !dbg !715
  br label %if.end21, !dbg !715

if.else:                                          ; preds = %if.then10
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.10, ptr noundef nonnull %hek_key), !dbg !716
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  store i8 %6, ptr @PL_tainted, align 1, !dbg !717
  br label %if.end24, !dbg !718

if.end24:                                         ; preds = %if.end21, %land.lhs.true
  %10 = load ptr, ptr @PL_envgv, align 8, !dbg !719
  %sv_u25 = getelementptr inbounds %struct.gv, ptr %10, i64 0, i32 3, !dbg !719
  %11 = load ptr, ptr %sv_u25, align 8, !dbg !719
  %gp_hv27 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 5, !dbg !719
  %12 = load ptr, ptr %gp_hv27, align 8, !dbg !719
  %tobool28.not = icmp eq ptr %12, null, !dbg !719
  br i1 %tobool28.not, label %cond.false33, label %cond.end38, !dbg !719

cond.false33:                                     ; preds = %if.end24
  %call34 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %10, i32 noundef 12) #7, !dbg !719
  %sv_u35 = getelementptr inbounds %struct.gv, ptr %call34, i64 0, i32 3, !dbg !719
  %13 = load ptr, ptr %sv_u35, align 8, !dbg !719
  %gp_hv37 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 5, !dbg !719
  %14 = load ptr, ptr %gp_hv37, align 8, !dbg !719
  br label %cond.end38, !dbg !719

cond.end38:                                       ; preds = %if.end24, %cond.false33
  %cond39 = phi ptr [ %14, %cond.false33 ], [ %12, %if.end24 ], !dbg !719
  %call40 = tail call ptr @Perl_hv_common(ptr noundef %cond39, ptr noundef null, ptr noundef nonnull @.str.11, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !719
  call void @llvm.dbg.value(metadata ptr %call40, metadata !611, metadata !DIExpression()), !dbg !720
  %tobool41.not = icmp eq ptr %call40, null, !dbg !721
  br i1 %tobool41.not, label %if.end59, label %land.lhs.true42, !dbg !723

land.lhs.true42:                                  ; preds = %cond.end38
  %15 = load ptr, ptr %call40, align 8, !dbg !724
  %tobool43.not = icmp eq ptr %15, null, !dbg !724
  br i1 %tobool43.not, label %if.end59, label %if.then44, !dbg !725

if.then44:                                        ; preds = %land.lhs.true42
  %sv_flags45 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2, !dbg !726
  %16 = load i32, ptr %sv_flags45, align 4, !dbg !726
  %and46 = and i32 %16, 14680064, !dbg !726
  %tobool47.not = icmp eq i32 %and46, 0, !dbg !726
  br i1 %tobool47.not, label %if.end51, label %land.lhs.true48, !dbg !726

land.lhs.true48:                                  ; preds = %if.then44
  %call49 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %15) #7, !dbg !726
  br i1 %call49, label %if.then50, label %if.end51, !dbg !729

if.then50:                                        ; preds = %land.lhs.true48
  store i8 1, ptr @PL_tainted, align 1, !dbg !730
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13), !dbg !732
  br label %if.end51, !dbg !733

if.end51:                                         ; preds = %if.then50, %land.lhs.true48, %if.then44
  %17 = load ptr, ptr %call40, align 8, !dbg !734
  %call52 = tail call ptr @Perl_mg_find(ptr noundef %17, i32 noundef 101) #7, !dbg !736
  call void @llvm.dbg.value(metadata ptr %call52, metadata !612, metadata !DIExpression()), !dbg !720
  %tobool53.not = icmp eq ptr %call52, null, !dbg !737
  br i1 %tobool53.not, label %if.end59, label %land.lhs.true54, !dbg !738

land.lhs.true54:                                  ; preds = %if.end51
  %mg_flags = getelementptr inbounds %struct.magic, ptr %call52, i64 0, i32 4, !dbg !739
  %18 = load i8, ptr %mg_flags, align 1, !dbg !739
  %19 = and i8 %18, 1, !dbg !739
  %tobool56.not = icmp eq i8 %19, 0, !dbg !739
  br i1 %tobool56.not, label %if.end59, label %if.then57, !dbg !740

if.then57:                                        ; preds = %land.lhs.true54
  store i8 1, ptr @PL_tainted, align 1, !dbg !741
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13), !dbg !743
  br label %if.end59, !dbg !744

if.end59:                                         ; preds = %if.end51, %land.lhs.true54, %if.then57, %land.lhs.true42, %cond.end38
  %20 = load ptr, ptr @PL_envgv, align 8, !dbg !745
  %sv_u60 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 3, !dbg !745
  %21 = load ptr, ptr %sv_u60, align 8, !dbg !745
  %gp_hv62 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 5, !dbg !745
  %22 = load ptr, ptr %gp_hv62, align 8, !dbg !745
  %tobool63.not = icmp eq ptr %22, null, !dbg !745
  br i1 %tobool63.not, label %cond.false68, label %cond.end73, !dbg !745

cond.false68:                                     ; preds = %if.end59
  %call69 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %20, i32 noundef 12) #7, !dbg !745
  %sv_u70 = getelementptr inbounds %struct.gv, ptr %call69, i64 0, i32 3, !dbg !745
  %23 = load ptr, ptr %sv_u70, align 8, !dbg !745
  %gp_hv72 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 5, !dbg !745
  %24 = load ptr, ptr %gp_hv72, align 8, !dbg !745
  br label %cond.end73, !dbg !745

cond.end73:                                       ; preds = %if.end59, %cond.false68
  %cond74 = phi ptr [ %24, %cond.false68 ], [ %22, %if.end59 ], !dbg !745
  %call75 = tail call ptr @Perl_hv_common(ptr noundef %cond74, ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !745
  call void @llvm.dbg.value(metadata ptr %call75, metadata !611, metadata !DIExpression()), !dbg !720
  %tobool76.not = icmp eq ptr %call75, null, !dbg !746
  br i1 %tobool76.not, label %for.body.preheader, label %land.lhs.true77, !dbg !747

land.lhs.true77:                                  ; preds = %cond.end73
  %25 = load ptr, ptr %call75, align 8, !dbg !748
  %tobool78.not = icmp eq ptr %25, null, !dbg !748
  br i1 %tobool78.not, label %for.body.preheader, label %land.lhs.true79, !dbg !749

land.lhs.true79:                                  ; preds = %land.lhs.true77
  %sv_flags80 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2, !dbg !750
  %26 = load i32, ptr %sv_flags80, align 4, !dbg !750
  %and81 = and i32 %26, 14680064, !dbg !750
  %tobool82.not = icmp eq i32 %and81, 0, !dbg !750
  br i1 %tobool82.not, label %for.body.preheader, label %land.lhs.true83, !dbg !750

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %call84 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %25) #7, !dbg !750
  br i1 %call84, label %if.then86, label %for.body.preheader, !dbg !751

if.then86:                                        ; preds = %land.lhs.true83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !752
  %27 = load i8, ptr @PL_tainted, align 1, !dbg !753, !range !653
  call void @llvm.dbg.value(metadata i8 %27, metadata !623, metadata !DIExpression()), !dbg !754
  %28 = load ptr, ptr %call75, align 8, !dbg !755
  %sv_flags90 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2, !dbg !755
  %29 = load i32, ptr %sv_flags90, align 4, !dbg !755
  %and91 = and i32 %29, 2098176, !dbg !755
  %cmp = icmp eq i32 %and91, 1024, !dbg !755
  br i1 %cmp, label %cond.true93, label %cond.false97, !dbg !755

cond.true93:                                      ; preds = %if.then86
  %30 = load ptr, ptr %28, align 8, !dbg !755
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2, !dbg !755
  %31 = load i64, ptr %xpv_cur, align 8, !dbg !755
  call void @llvm.dbg.value(metadata i64 %31, metadata !620, metadata !DIExpression()), !dbg !754
  store i64 %31, ptr %len, align 8, !dbg !755
  %32 = load ptr, ptr %call75, align 8, !dbg !755
  %sv_u95 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3, !dbg !755
  %33 = load ptr, ptr %sv_u95, align 8, !dbg !755
  br label %cond.end99, !dbg !755

cond.false97:                                     ; preds = %if.then86
  call void @llvm.dbg.value(metadata ptr %len, metadata !620, metadata !DIExpression(DW_OP_deref)), !dbg !754
  %call98 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %28, ptr noundef nonnull %len, i32 noundef 34) #7, !dbg !755
  %.pr = load i64, ptr %len, align 8, !dbg !756
  br label %cond.end99, !dbg !755

cond.end99:                                       ; preds = %cond.false97, %cond.true93
  %34 = phi i64 [ %.pr, %cond.false97 ], [ %31, %cond.true93 ], !dbg !756
  %cond100 = phi ptr [ %call98, %cond.false97 ], [ %33, %cond.true93 ], !dbg !755
  call void @llvm.dbg.value(metadata ptr %cond100, metadata !624, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %34, metadata !620, metadata !DIExpression()), !dbg !754
  %add.ptr102 = getelementptr inbounds i8, ptr %cond100, i64 %34, !dbg !757
  call void @llvm.dbg.value(metadata ptr %add.ptr102, metadata !625, metadata !DIExpression()), !dbg !754
  store i8 %27, ptr @PL_tainted, align 1, !dbg !758
  %cmp105 = icmp sgt i64 %34, 0, !dbg !759
  br i1 %cmp105, label %land.lhs.true107, label %if.end112, !dbg !761

land.lhs.true107:                                 ; preds = %cond.end99
  %35 = load i8, ptr %cond100, align 1, !dbg !762
  %idxprom = zext i8 %35 to i64, !dbg !762
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !762
  %36 = load i32, ptr %arrayidx, align 4, !dbg !762
  %and108 = and i32 %36, 16385, !dbg !762
  %cmp109 = icmp eq i32 %and108, 16385, !dbg !762
  %spec.select.idx = zext i1 %cmp109 to i64, !dbg !763
  %spec.select = getelementptr i8, ptr %cond100, i64 %spec.select.idx, !dbg !763
  br label %if.end112, !dbg !763

if.end112:                                        ; preds = %land.lhs.true107, %cond.end99
  %t.0 = phi ptr [ %cond100, %cond.end99 ], [ %spec.select, %land.lhs.true107 ], !dbg !754
  call void @llvm.dbg.value(metadata ptr %t.0, metadata !624, metadata !DIExpression()), !dbg !754
  %cmp113203 = icmp ult ptr %t.0, %add.ptr102, !dbg !764
  br i1 %cmp113203, label %land.rhs, label %if.end127, !dbg !765

land.rhs:                                         ; preds = %if.end112, %while.body
  %t.1204 = phi ptr [ %incdec.ptr123, %while.body ], [ %t.0, %if.end112 ]
  call void @llvm.dbg.value(metadata ptr %t.1204, metadata !624, metadata !DIExpression()), !dbg !754
  %37 = load i8, ptr %t.1204, align 1, !dbg !766
  %idxprom115 = zext i8 %37 to i64, !dbg !766
  %arrayidx116 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom115, !dbg !766
  %38 = load i32, ptr %arrayidx116, align 4, !dbg !766
  %and117 = and i32 %38, 16385, !dbg !766
  %cmp118 = icmp eq i32 %and117, 16385, !dbg !766
  br i1 %cmp118, label %while.body, label %lor.rhs, !dbg !767

lor.rhs:                                          ; preds = %land.rhs
  %conv120 = sext i8 %37 to i32, !dbg !768
  %memchr = call ptr @memchr(ptr noundef nonnull @.str.16, i32 %conv120, i64 5), !dbg !769
  %tobool122.not = icmp eq ptr %memchr, null, !dbg !767
  br i1 %tobool122.not, label %if.then126, label %while.body, !dbg !770

while.body:                                       ; preds = %land.rhs, %lor.rhs
  %incdec.ptr123 = getelementptr inbounds i8, ptr %t.1204, i64 1, !dbg !771
  call void @llvm.dbg.value(metadata ptr %incdec.ptr123, metadata !624, metadata !DIExpression()), !dbg !754
  %cmp113 = icmp ult ptr %incdec.ptr123, %add.ptr102, !dbg !764
  br i1 %cmp113, label %land.rhs, label %if.end127, !dbg !765, !llvm.loop !772

if.then126:                                       ; preds = %lor.rhs
  store i8 1, ptr @PL_tainted, align 1, !dbg !775
  call void @Perl_taint_proper(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15), !dbg !778
  br label %if.end127, !dbg !779

if.end127:                                        ; preds = %while.body, %if.end112, %if.then126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !780
  br label %for.body.preheader, !dbg !781

for.body.preheader:                               ; preds = %if.end127, %land.lhs.true83, %land.lhs.true79, %land.lhs.true77, %cond.end73
  br label %for.body, !dbg !782

for.body:                                         ; preds = %for.body.preheader, %if.end161
  %e.0205 = phi ptr [ %incdec.ptr162, %if.end161 ], [ @Perl_taint_env.misc_env, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %e.0205, metadata !613, metadata !DIExpression()), !dbg !720
  %39 = load ptr, ptr @PL_envgv, align 8, !dbg !783
  %sv_u131 = getelementptr inbounds %struct.gv, ptr %39, i64 0, i32 3, !dbg !783
  %40 = load ptr, ptr %sv_u131, align 8, !dbg !783
  %gp_hv133 = getelementptr inbounds %struct.gp, ptr %40, i64 0, i32 5, !dbg !783
  %41 = load ptr, ptr %gp_hv133, align 8, !dbg !783
  %tobool134.not = icmp eq ptr %41, null, !dbg !783
  br i1 %tobool134.not, label %cond.false139, label %cond.end144, !dbg !783

cond.false139:                                    ; preds = %for.body
  %call140 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %39, i32 noundef 12) #7, !dbg !783
  %sv_u141 = getelementptr inbounds %struct.gv, ptr %call140, i64 0, i32 3, !dbg !783
  %42 = load ptr, ptr %sv_u141, align 8, !dbg !783
  %gp_hv143 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 5, !dbg !783
  %43 = load ptr, ptr %gp_hv143, align 8, !dbg !783
  br label %cond.end144, !dbg !783

cond.end144:                                      ; preds = %for.body, %cond.false139
  %cond145 = phi ptr [ %43, %cond.false139 ], [ %41, %for.body ], !dbg !783
  %44 = load ptr, ptr %e.0205, align 8, !dbg !783
  %call146 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #8, !dbg !783
  %conv147 = trunc i64 %call146 to i32, !dbg !783
  %call148 = call ptr @Perl_hv_common_key_len(ptr noundef %cond145, ptr noundef %44, i32 noundef %conv147, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !783
  call void @llvm.dbg.value(metadata ptr %call148, metadata !626, metadata !DIExpression()), !dbg !784
  %tobool149.not = icmp eq ptr %call148, null, !dbg !785
  br i1 %tobool149.not, label %if.end161, label %land.lhs.true150, !dbg !787

land.lhs.true150:                                 ; preds = %cond.end144
  %45 = load ptr, ptr %call148, align 8, !dbg !788
  %cmp151.not = icmp eq ptr %45, @PL_sv_undef, !dbg !789
  br i1 %cmp151.not, label %if.end161, label %land.lhs.true153, !dbg !790

land.lhs.true153:                                 ; preds = %land.lhs.true150
  %sv_flags154 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2, !dbg !791
  %46 = load i32, ptr %sv_flags154, align 4, !dbg !791
  %and155 = and i32 %46, 14680064, !dbg !791
  %tobool156.not = icmp eq i32 %and155, 0, !dbg !791
  br i1 %tobool156.not, label %if.end161, label %land.lhs.true157, !dbg !791

land.lhs.true157:                                 ; preds = %land.lhs.true153
  %call158 = call zeroext i1 @Perl_sv_tainted(ptr noundef %45) #7, !dbg !791
  br i1 %call158, label %if.then160, label %if.end161, !dbg !792

if.then160:                                       ; preds = %land.lhs.true157
  store i8 1, ptr @PL_tainted, align 1, !dbg !793
  %47 = load ptr, ptr %e.0205, align 8, !dbg !795
  call void @Perl_taint_proper(ptr noundef nonnull @.str.17, ptr noundef %47), !dbg !795
  br label %if.end161, !dbg !796

if.end161:                                        ; preds = %if.then160, %land.lhs.true157, %land.lhs.true153, %land.lhs.true150, %cond.end144
  %incdec.ptr162 = getelementptr inbounds ptr, ptr %e.0205, i64 1, !dbg !797
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162, metadata !613, metadata !DIExpression()), !dbg !720
  %48 = load ptr, ptr %incdec.ptr162, align 8, !dbg !798
  %tobool129.not = icmp eq ptr %48, null, !dbg !782
  br i1 %tobool129.not, label %cleanup, label %for.body, !dbg !782, !llvm.loop !799

cleanup:                                          ; preds = %if.end161, %entry
  ret void, !dbg !801
}

declare !dbg !802 ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !805 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !808 ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !812 zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

declare !dbg !815 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !820 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!635, !636, !637, !638, !639, !640}
!llvm.ident = !{!641}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "misc_env", scope: !2, file: !3, line: 83, type: !632, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "Perl_taint_env", scope: !3, file: !3, line: 78, type: !4, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !610)
!3 = !DIFile(filename: "apps/500.perlbench_r/src/taint.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ac406ac8220a2c1e475253743c472671")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !30, globals: !609, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/taint.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "ac406ac8220a2c1e475253743c472671")
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 132, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!13 = !DIEnumerator(name: "SVt_NULL", value: 0)
!14 = !DIEnumerator(name: "SVt_IV", value: 1)
!15 = !DIEnumerator(name: "SVt_NV", value: 2)
!16 = !DIEnumerator(name: "SVt_PV", value: 3)
!17 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!18 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!19 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!20 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!21 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!22 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!23 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!24 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!25 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!26 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!27 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!28 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!29 = !DIEnumerator(name: "SVt_LAST", value: 16)
!30 = !{!31, !234, !139, !597, !108, !278}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !34, line: 2647, baseType: !35)
!34 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !10, line: 218, size: 192, elements: !36)
!36 = !{!37, !39, !42, !43}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !35, file: !10, line: 219, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !35, file: !10, line: 219, baseType: !40, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !41, line: 175, baseType: !11)
!41 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !35, file: !10, line: 219, baseType: !40, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !35, file: !10, line: 220, baseType: !44, size: 64, offset: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !10, line: 220, size: 64, elements: !45)
!45 = !{!46, !49, !52, !55, !58, !60, !593, !594, !595, !596}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !44, file: !10, line: 220, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !44, file: !10, line: 220, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !34, line: 1670, baseType: !51)
!51 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !44, file: !10, line: 220, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !34, line: 1671, baseType: !54)
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !44, file: !10, line: 220, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !34, line: 1877, baseType: !57)
!57 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !44, file: !10, line: 220, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !44, file: !10, line: 220, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !63, line: 140, size: 1536, elements: !64)
!63 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!64 = !{!65, !456, !457, !458, !463, !549, !550, !551, !552, !553, !554, !555, !571, !572, !573, !574, !575, !576, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !62, file: !63, line: 141, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !34, line: 2649, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !10, line: 246, size: 192, elements: !69)
!69 = !{!70, !441, !442, !443}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !68, file: !10, line: 247, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !34, line: 2667, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !74, line: 130, size: 256, elements: !75)
!74 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!75 = !{!76, !77, !439, !440}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !73, file: !74, line: 131, baseType: !66, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !73, file: !74, line: 132, baseType: !78, size: 64, offset: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !10, line: 494, size: 64, elements: !79)
!79 = !{!80, !438}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !78, file: !10, line: 495, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !34, line: 2658, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !84, line: 23, size: 384, elements: !85)
!84 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!85 = !{!86, !87, !430, !433, !434, !435, !436, !437}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !83, file: !84, line: 24, baseType: !81, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !83, file: !84, line: 25, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !34, line: 2673, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !84, line: 11, size: 512, elements: !91)
!91 = !{!92, !97, !98, !102, !103, !104, !111, !429}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !90, file: !84, line: 12, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !59, !81}
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !90, file: !84, line: 13, baseType: !93, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !90, file: !84, line: 14, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!40, !59, !81}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !90, file: !84, line: 15, baseType: !93, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !90, file: !84, line: 16, baseType: !93, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !90, file: !84, line: 17, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!96, !59, !81, !59, !108, !110}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !41, line: 174, baseType: !96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !90, file: !84, line: 19, baseType: !112, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!96, !81, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !34, line: 2677, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !10, line: 2150, size: 320, elements: !118)
!118 = !{!119, !420, !421, !427, !428}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !117, file: !10, line: 2151, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !34, line: 2648, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !10, line: 241, size: 192, elements: !123)
!123 = !{!124, !140, !141, !142}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !122, file: !10, line: 242, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !34, line: 2666, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !128, line: 11, size: 320, elements: !129)
!128 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!129 = !{!130, !131, !132, !137, !138}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !127, file: !128, line: 12, baseType: !66, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !127, file: !128, line: 13, baseType: !78, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !127, file: !128, line: 14, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 108, baseType: !135)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !136, line: 193, baseType: !51)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !127, file: !128, line: 15, baseType: !133, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !127, file: !128, line: 16, baseType: !139, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !122, file: !10, line: 242, baseType: !40, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !122, file: !10, line: 242, baseType: !40, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !122, file: !10, line: 243, baseType: !143, size: 64, offset: 128)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !10, line: 243, size: 64, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !177, !419}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !143, file: !10, line: 243, baseType: !47, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !143, file: !10, line: 243, baseType: !50, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !143, file: !10, line: 243, baseType: !53, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !143, file: !10, line: 243, baseType: !56, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !143, file: !10, line: 243, baseType: !59, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !143, file: !10, line: 243, baseType: !61, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !143, file: !10, line: 243, baseType: !139, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !143, file: !10, line: 243, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !10, line: 186, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !74, line: 32, size: 192, elements: !157)
!157 = !{!158, !159, !170}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !156, file: !74, line: 36, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !156, file: !74, line: 37, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !10, line: 187, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !74, line: 45, size: 96, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !162, file: !74, line: 46, baseType: !40, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !162, file: !74, line: 47, baseType: !110, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !162, file: !74, line: 48, baseType: !167, size: 8, offset: 64)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 1)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !156, file: !74, line: 41, baseType: !171, size: 64, offset: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !74, line: 38, size: 64, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !171, file: !74, line: 39, baseType: !59, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !171, file: !74, line: 40, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 46, baseType: !54)
!176 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !143, file: !10, line: 243, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !34, line: 2652, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !181, line: 11, size: 640, elements: !182)
!181 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!182 = !{!183, !184, !295, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !180, file: !181, line: 12, baseType: !59, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !180, file: !181, line: 13, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !10, line: 251, size: 192, elements: !187)
!187 = !{!188, !280, !281, !282}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !186, file: !10, line: 252, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !34, line: 2672, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !10, line: 603, size: 1088, elements: !192)
!192 = !{!193, !194, !195, !197, !202, !208, !215, !224, !225, !226, !227, !228, !272, !273, !274, !275, !276, !277}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !191, file: !10, line: 604, baseType: !66, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !191, file: !10, line: 604, baseType: !78, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !191, file: !10, line: 604, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !34, line: 2615, baseType: !175)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !191, file: !10, line: 604, baseType: !198, size: 64, offset: 192)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !10, line: 604, size: 64, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !198, file: !10, line: 604, baseType: !196, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !198, file: !10, line: 604, baseType: !47, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !191, file: !10, line: 605, baseType: !203, size: 64, offset: 256)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !10, line: 488, size: 64, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !203, file: !10, line: 489, baseType: !50, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !203, file: !10, line: 490, baseType: !53, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !203, file: !10, line: 491, baseType: !160, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !191, file: !10, line: 607, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !211, line: 85, baseType: !212)
!211 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !211, line: 83, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !211, line: 83, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !191, file: !10, line: 620, baseType: !216, size: 64, offset: 384)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !10, line: 617, size: 64, elements: !217)
!217 = !{!218, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !216, file: !10, line: 618, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !221, line: 127, baseType: !222)
!221 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !221, line: 127, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !216, file: !10, line: 619, baseType: !38, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !191, file: !10, line: 622, baseType: !50, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !191, file: !10, line: 623, baseType: !50, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !191, file: !10, line: 624, baseType: !50, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !191, file: !10, line: 625, baseType: !47, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !191, file: !10, line: 626, baseType: !229, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !34, line: 2653, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !10, line: 231, size: 192, elements: !232)
!232 = !{!233, !257, !258, !259}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !231, file: !10, line: 232, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !34, line: 2668, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !10, line: 561, size: 384, elements: !237)
!237 = !{!238, !239, !240, !241, !246, !247}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !236, file: !10, line: 562, baseType: !66, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !236, file: !10, line: 562, baseType: !78, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !236, file: !10, line: 562, baseType: !196, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !236, file: !10, line: 562, baseType: !242, size: 64, offset: 192)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !10, line: 562, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !242, file: !10, line: 562, baseType: !196, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !242, file: !10, line: 562, baseType: !47, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !236, file: !10, line: 563, baseType: !203, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !236, file: !10, line: 564, baseType: !248, size: 64, offset: 320)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !10, line: 479, size: 64, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !248, file: !10, line: 480, baseType: !56, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !248, file: !10, line: 481, baseType: !66, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !248, file: !10, line: 485, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !10, line: 482, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !253, file: !10, line: 483, baseType: !40, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !253, file: !10, line: 484, baseType: !40, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !231, file: !10, line: 232, baseType: !40, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !231, file: !10, line: 232, baseType: !40, size: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !231, file: !10, line: 233, baseType: !260, size: 64, offset: 128)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !10, line: 233, size: 64, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !260, file: !10, line: 233, baseType: !47, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !260, file: !10, line: 233, baseType: !50, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !260, file: !10, line: 233, baseType: !53, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !260, file: !10, line: 233, baseType: !56, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !260, file: !10, line: 233, baseType: !59, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !260, file: !10, line: 233, baseType: !61, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !260, file: !10, line: 233, baseType: !139, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !260, file: !10, line: 233, baseType: !153, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !260, file: !10, line: 233, baseType: !178, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !260, file: !10, line: 233, baseType: !209, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !191, file: !10, line: 627, baseType: !47, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !191, file: !10, line: 628, baseType: !229, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !191, file: !10, line: 629, baseType: !47, size: 64, offset: 896)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !191, file: !10, line: 630, baseType: !229, size: 64, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !191, file: !10, line: 631, baseType: !48, size: 8, offset: 1024)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !191, file: !10, line: 632, baseType: !278, size: 8, offset: 1032)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !41, line: 171, baseType: !279)
!279 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !186, file: !10, line: 252, baseType: !40, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !186, file: !10, line: 252, baseType: !40, size: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !186, file: !10, line: 253, baseType: !283, size: 64, offset: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !10, line: 253, size: 64, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !283, file: !10, line: 253, baseType: !47, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !283, file: !10, line: 253, baseType: !50, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !283, file: !10, line: 253, baseType: !53, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !283, file: !10, line: 253, baseType: !56, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !283, file: !10, line: 253, baseType: !59, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !283, file: !10, line: 253, baseType: !61, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !283, file: !10, line: 253, baseType: !139, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !283, file: !10, line: 253, baseType: !153, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !283, file: !10, line: 253, baseType: !178, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !283, file: !10, line: 253, baseType: !209, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !180, file: !181, line: 14, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !34, line: 2650, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !10, line: 236, size: 192, elements: !299)
!299 = !{!300, !395, !396, !397}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !298, file: !10, line: 237, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !34, line: 2669, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !304, line: 13, size: 832, elements: !305)
!304 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!305 = !{!306, !307, !308, !309, !314, !315, !360, !368, !373, !374, !390, !391, !392, !394}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !303, file: !304, line: 14, baseType: !66, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !303, file: !304, line: 14, baseType: !78, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !303, file: !304, line: 14, baseType: !196, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !303, file: !304, line: 14, baseType: !310, size: 64, offset: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 14, size: 64, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !310, file: !304, line: 14, baseType: !196, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !310, file: !304, line: 14, baseType: !47, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !303, file: !304, line: 15, baseType: !66, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !303, file: !304, line: 15, baseType: !316, size: 64, offset: 320)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !317)
!317 = !{!318, !343}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !316, file: !304, line: 15, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !34, line: 2617, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !322, line: 202, size: 320, elements: !323)
!322 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!323 = !{!324, !325, !326, !330, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !321, file: !322, line: 203, baseType: !319, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !321, file: !322, line: 203, baseType: !319, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !321, file: !322, line: 203, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!319}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !321, file: !322, line: 203, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !332, line: 25, baseType: !54)
!332 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !321, file: !322, line: 203, baseType: !11, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !321, file: !322, line: 203, baseType: !11, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !321, file: !322, line: 203, baseType: !278, size: 8, offset: 272)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !321, file: !322, line: 203, baseType: !278, size: 8, offset: 280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !316, file: !304, line: 15, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !34, line: 2674, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !34, line: 3691, size: 64, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !355, !359}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !345, file: !34, line: 3692, baseType: !38, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !345, file: !34, line: 3693, baseType: !110, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !345, file: !34, line: 3694, baseType: !40, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !345, file: !34, line: 3695, baseType: !50, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !345, file: !34, line: 3696, baseType: !53, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !345, file: !34, line: 3697, baseType: !51, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !345, file: !34, line: 3698, baseType: !354, size: 8)
!354 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !345, file: !34, line: 3699, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !38}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !345, file: !34, line: 3700, baseType: !356, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !303, file: !304, line: 15, baseType: !361, size: 64, offset: 384)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !361, file: !304, line: 15, baseType: !319, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !361, file: !304, line: 15, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !296}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !303, file: !304, line: 15, baseType: !369, size: 64, offset: 448)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !369, file: !304, line: 15, baseType: !229, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !369, file: !304, line: 15, baseType: !160, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !303, file: !304, line: 15, baseType: !47, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !303, file: !304, line: 15, baseType: !375, size: 64, offset: 576)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !376)
!376 = !{!377, !389}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !375, file: !304, line: 15, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !34, line: 2681, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !332, line: 34, size: 192, elements: !381)
!381 = !{!382, !383, !387, !388}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !380, file: !332, line: 35, baseType: !133, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !380, file: !332, line: 36, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !34, line: 2682, baseType: !121)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !380, file: !332, line: 37, baseType: !40, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !380, file: !332, line: 38, baseType: !40, size: 32, offset: 160)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !375, file: !304, line: 15, baseType: !38, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !303, file: !304, line: 15, baseType: !296, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !303, file: !304, line: 15, baseType: !40, size: 32, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !303, file: !304, line: 15, baseType: !393, size: 32, offset: 736)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !10, line: 567, baseType: !40)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !303, file: !304, line: 15, baseType: !110, size: 32, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !298, file: !10, line: 237, baseType: !40, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !298, file: !10, line: 237, baseType: !40, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !298, file: !10, line: 238, baseType: !398, size: 64, offset: 128)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !10, line: 238, size: 64, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !398, file: !10, line: 238, baseType: !47, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !398, file: !10, line: 238, baseType: !50, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !398, file: !10, line: 238, baseType: !53, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !398, file: !10, line: 238, baseType: !56, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !398, file: !10, line: 238, baseType: !59, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !398, file: !10, line: 238, baseType: !61, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !398, file: !10, line: 238, baseType: !139, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !398, file: !10, line: 238, baseType: !153, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !398, file: !10, line: 238, baseType: !178, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !398, file: !10, line: 238, baseType: !209, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !180, file: !181, line: 15, baseType: !40, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !180, file: !181, line: 16, baseType: !40, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !180, file: !181, line: 17, baseType: !66, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !180, file: !181, line: 18, baseType: !120, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !180, file: !181, line: 19, baseType: !296, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !180, file: !181, line: 20, baseType: !229, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !180, file: !181, line: 21, baseType: !11, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !180, file: !181, line: 22, baseType: !11, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !180, file: !181, line: 23, baseType: !160, size: 64, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !143, file: !10, line: 243, baseType: !209, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !10, line: 2152, baseType: !53, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !117, file: !10, line: 2153, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !34, line: 2639, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !34, line: 5434, size: 8, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !424, file: !34, line: 5435, baseType: !48, size: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !117, file: !10, line: 2154, baseType: !422, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !117, file: !10, line: 2155, baseType: !120, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !90, file: !84, line: 20, baseType: !93, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !83, file: !84, line: 26, baseType: !431, size: 16, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !41, line: 173, baseType: !432)
!432 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !83, file: !84, line: 27, baseType: !48, size: 8, offset: 144)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !83, file: !84, line: 28, baseType: !278, size: 8, offset: 152)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !83, file: !84, line: 29, baseType: !133, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !83, file: !84, line: 30, baseType: !59, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !83, file: !84, line: 31, baseType: !47, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !78, file: !10, line: 496, baseType: !196, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !73, file: !74, line: 133, baseType: !196, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !73, file: !74, line: 134, baseType: !196, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !68, file: !10, line: 247, baseType: !40, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !68, file: !10, line: 247, baseType: !40, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !68, file: !10, line: 248, baseType: !444, size: 64, offset: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !10, line: 248, size: 64, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !444, file: !10, line: 248, baseType: !47, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !444, file: !10, line: 248, baseType: !50, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !444, file: !10, line: 248, baseType: !53, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !444, file: !10, line: 248, baseType: !56, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !444, file: !10, line: 248, baseType: !59, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !444, file: !10, line: 248, baseType: !61, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !444, file: !10, line: 248, baseType: !139, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !444, file: !10, line: 248, baseType: !153, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !444, file: !10, line: 248, baseType: !178, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !444, file: !10, line: 248, baseType: !209, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !62, file: !63, line: 141, baseType: !78, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !62, file: !63, line: 141, baseType: !196, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !62, file: !63, line: 141, baseType: !459, size: 64, offset: 192)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !63, line: 141, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !459, file: !63, line: 141, baseType: !196, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !459, file: !63, line: 141, baseType: !47, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !62, file: !63, line: 142, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !63, line: 157, size: 768, elements: !467)
!467 = !{!468, !493, !498, !512, !516, !520, !525, !530, !534, !538, !542, !543}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !466, file: !63, line: 158, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !492, !40}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !34, line: 2651, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !10, line: 256, size: 192, elements: !475)
!475 = !{!476, !477, !478, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !474, file: !10, line: 257, baseType: !61, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !474, file: !10, line: 257, baseType: !40, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !474, file: !10, line: 257, baseType: !40, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !474, file: !10, line: 258, baseType: !480, size: 64, offset: 128)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !10, line: 258, size: 64, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !480, file: !10, line: 258, baseType: !47, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !480, file: !10, line: 258, baseType: !50, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !480, file: !10, line: 258, baseType: !53, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !480, file: !10, line: 258, baseType: !56, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !480, file: !10, line: 258, baseType: !59, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !480, file: !10, line: 258, baseType: !61, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !480, file: !10, line: 258, baseType: !139, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !480, file: !10, line: 258, baseType: !153, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !480, file: !10, line: 258, baseType: !178, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !480, file: !10, line: 258, baseType: !209, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !466, file: !63, line: 159, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!110, !497, !47, !47, !47, !133, !59, !38, !40}
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !466, file: !63, line: 162, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!47, !497, !59, !502, !47, !47, !503, !504}
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !63, line: 152, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !63, line: 148, size: 128, elements: !507)
!507 = !{!508, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !506, file: !63, line: 150, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !506, file: !63, line: 151, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !466, file: !63, line: 170, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!59, !497}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !466, file: !63, line: 171, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !497}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !466, file: !63, line: 172, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !497, !524, !492}
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !466, file: !63, line: 174, baseType: !526, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !497, !524, !529}
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !466, file: !63, line: 176, baseType: !531, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!110, !497, !529, !524}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !466, file: !63, line: 178, baseType: !535, size: 64, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!59, !497, !492, !492, !503}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !466, file: !63, line: 180, baseType: !539, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!59, !497, !529, !503}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !466, file: !63, line: 182, baseType: !513, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !466, file: !63, line: 186, baseType: !544, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!472, !547, !96, !319, !464, !472, !548, !40, !40}
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !62, file: !63, line: 142, baseType: !472, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !62, file: !63, line: 142, baseType: !66, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !62, file: !63, line: 142, baseType: !40, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !62, file: !63, line: 142, baseType: !133, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !62, file: !63, line: 142, baseType: !133, size: 64, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !62, file: !63, line: 142, baseType: !196, size: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !62, file: !63, line: 142, baseType: !556, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !63, line: 45, size: 1024, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !557, file: !63, line: 46, baseType: !278, size: 8)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !557, file: !63, line: 47, baseType: !561, size: 960, offset: 64)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 960, elements: !569)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !63, line: 38, size: 320, elements: !563)
!563 = !{!564, !565, !566, !567, !568}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !562, file: !63, line: 39, baseType: !133, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !562, file: !63, line: 40, baseType: !133, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !562, file: !63, line: 41, baseType: !59, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !562, file: !63, line: 42, baseType: !59, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !562, file: !63, line: 43, baseType: !133, size: 64, offset: 256)
!569 = !{!570}
!570 = !DISubrange(count: 3)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !62, file: !63, line: 142, baseType: !40, size: 32, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !62, file: !63, line: 142, baseType: !40, size: 32, offset: 800)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !62, file: !63, line: 142, baseType: !38, size: 64, offset: 832)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !62, file: !63, line: 142, baseType: !40, size: 32, offset: 896)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !62, file: !63, line: 142, baseType: !40, size: 32, offset: 928)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !62, file: !63, line: 142, baseType: !577, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !63, line: 68, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !63, line: 58, size: 192, elements: !580)
!580 = !{!581, !582, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !579, file: !63, line: 59, baseType: !133, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !579, file: !63, line: 60, baseType: !133, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !579, file: !63, line: 67, baseType: !133, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !62, file: !63, line: 142, baseType: !47, size: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !62, file: !63, line: 142, baseType: !59, size: 64, offset: 1088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !62, file: !63, line: 142, baseType: !133, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !62, file: !63, line: 142, baseType: !133, size: 64, offset: 1216)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !62, file: !63, line: 142, baseType: !133, size: 64, offset: 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !62, file: !63, line: 142, baseType: !133, size: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !62, file: !63, line: 142, baseType: !11, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !62, file: !63, line: 142, baseType: !11, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !62, file: !63, line: 142, baseType: !296, size: 64, offset: 1472)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !44, file: !10, line: 220, baseType: !139, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !44, file: !10, line: 220, baseType: !153, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !44, file: !10, line: 220, baseType: !178, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !44, file: !10, line: 220, baseType: !209, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !34, line: 2659, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !10, line: 499, size: 256, elements: !600)
!600 = !{!601, !602, !603, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !599, file: !10, line: 500, baseType: !66, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !599, file: !10, line: 500, baseType: !78, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !599, file: !10, line: 500, baseType: !196, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !599, file: !10, line: 500, baseType: !605, size: 64, offset: 192)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !10, line: 500, size: 64, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !605, file: !10, line: 500, baseType: !196, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !605, file: !10, line: 500, baseType: !47, size: 64)
!609 = !{!0}
!610 = !{!611, !612, !613, !615, !619, !620, !623, !624, !625, !626}
!611 = !DILocalVariable(name: "svp", scope: !2, file: !3, line: 80, type: !139)
!612 = !DILocalVariable(name: "mg", scope: !2, file: !3, line: 81, type: !81)
!613 = !DILocalVariable(name: "e", scope: !2, file: !3, line: 82, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!615 = !DILocalVariable(name: "was_tainted", scope: !616, file: !3, line: 101, type: !618)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 100, column: 63)
!617 = distinct !DILexicalBlock(scope: !2, file: !3, line: 99, column: 9)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!619 = !DILocalVariable(name: "name", scope: !616, file: !3, line: 102, type: !502)
!620 = !DILocalVariable(name: "len", scope: !621, file: !3, line: 158, type: !196)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 157, column: 41)
!622 = distinct !DILexicalBlock(scope: !2, file: !3, line: 157, column: 9)
!623 = !DILocalVariable(name: "was_tainted", scope: !621, file: !3, line: 159, type: !618)
!624 = !DILocalVariable(name: "t", scope: !621, file: !3, line: 160, type: !108)
!625 = !DILocalVariable(name: "e", scope: !621, file: !3, line: 161, type: !502)
!626 = !DILocalVariable(name: "svp", scope: !627, file: !3, line: 179, type: !630)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 178, column: 33)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 178, column: 5)
!629 = distinct !DILexicalBlock(scope: !2, file: !3, line: 178, column: 5)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 320, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 5)
!635 = !{i32 7, !"Dwarf Version", i32 5}
!636 = !{i32 2, !"Debug Info Version", i32 3}
!637 = !{i32 1, !"wchar_size", i32 4}
!638 = !{i32 7, !"PIC Level", i32 2}
!639 = !{i32 7, !"PIE Level", i32 2}
!640 = !{i32 7, !"uwtable", i32 2}
!641 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!642 = distinct !DISubprogram(name: "Perl_taint_proper", scope: !3, file: !3, line: 27, type: !643, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !108, !502}
!645 = !{!646, !647, !648}
!646 = !DILocalVariable(name: "f", arg: 1, scope: !642, file: !3, line: 27, type: !108)
!647 = !DILocalVariable(name: "s", arg: 2, scope: !642, file: !3, line: 27, type: !502)
!648 = !DILocalVariable(name: "ug", scope: !649, file: !3, line: 49, type: !108)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 48, column: 20)
!650 = distinct !DILexicalBlock(scope: !642, file: !3, line: 48, column: 9)
!651 = !DILocation(line: 0, scope: !642)
!652 = !DILocation(line: 48, column: 9, scope: !650)
!653 = !{i8 0, i8 2}
!654 = !DILocation(line: 48, column: 9, scope: !642)
!655 = !DILocation(line: 51, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 51, column: 6)
!657 = !DILocation(line: 51, column: 6, scope: !649)
!658 = !DILocation(line: 53, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !649, file: !3, line: 53, column: 6)
!660 = !DILocation(line: 53, column: 27, scope: !659)
!661 = !DILocation(line: 53, column: 24, scope: !659)
!662 = !DILocation(line: 53, column: 6, scope: !649)
!663 = !DILocation(line: 55, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 55, column: 11)
!665 = !DILocation(line: 55, column: 32, scope: !664)
!666 = !DILocation(line: 55, column: 29, scope: !664)
!667 = !DILocation(line: 55, column: 11, scope: !659)
!668 = !DILocation(line: 57, column: 11, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !3, line: 57, column: 11)
!670 = !DILocation(line: 0, scope: !659)
!671 = !DILocation(line: 0, scope: !649)
!672 = !DILocation(line: 66, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !649, file: !3, line: 66, column: 6)
!674 = !DILocation(line: 66, column: 16, scope: !673)
!675 = !DILocation(line: 67, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 66, column: 35)
!677 = !DILocation(line: 68, column: 9, scope: !676)
!678 = !DILocation(line: 70, column: 13, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !3, line: 69, column: 14)
!680 = !DILocation(line: 75, column: 1, scope: !642)
!681 = !DISubprogram(name: "getuid", scope: !34, file: !34, line: 4003, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!682 = !DISubroutineType(types: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !136, line: 146, baseType: !11)
!685 = !{}
!686 = !DISubprogram(name: "geteuid", scope: !34, file: !34, line: 4004, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!687 = !DISubprogram(name: "getgid", scope: !34, file: !34, line: 4005, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!688 = !DISubroutineType(types: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !136, line: 147, baseType: !11)
!691 = !DISubprogram(name: "getegid", scope: !34, file: !34, line: 4006, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!692 = !DISubprogram(name: "Perl_ck_warner_d", scope: !693, file: !693, line: 706, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!693 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!694 = !DISubroutineType(types: !695)
!695 = !{null, !40, !108, null}
!696 = !DISubprogram(name: "Perl_croak", scope: !693, file: !693, line: 741, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !108, null}
!699 = !DILocation(line: 95, column: 10, scope: !700)
!700 = distinct !DILexicalBlock(scope: !2, file: !3, line: 95, column: 9)
!701 = !DILocation(line: 95, column: 9, scope: !2)
!702 = !DILocation(line: 99, column: 10, scope: !617)
!703 = !DILocation(line: 99, column: 25, scope: !617)
!704 = !DILocation(line: 99, column: 30, scope: !617)
!705 = !DILocation(line: 100, column: 6, scope: !617)
!706 = !DILocation(line: 100, column: 9, scope: !617)
!707 = !DILocation(line: 99, column: 9, scope: !2)
!708 = !DILocation(line: 102, column: 28, scope: !616)
!709 = !DILocation(line: 101, column: 27, scope: !616)
!710 = !DILocation(line: 0, scope: !616)
!711 = !DILocation(line: 103, column: 2, scope: !616)
!712 = !DILocation(line: 104, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !616, file: !3, line: 104, column: 6)
!714 = !DILocation(line: 104, column: 6, scope: !616)
!715 = !DILocation(line: 106, column: 6, scope: !713)
!716 = !DILocation(line: 109, column: 6, scope: !713)
!717 = !DILocation(line: 111, column: 2, scope: !616)
!718 = !DILocation(line: 115, column: 5, scope: !616)
!719 = !DILocation(line: 142, column: 11, scope: !2)
!720 = !DILocation(line: 0, scope: !2)
!721 = !DILocation(line: 143, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !2, file: !3, line: 143, column: 9)
!723 = !DILocation(line: 143, column: 13, scope: !722)
!724 = !DILocation(line: 143, column: 16, scope: !722)
!725 = !DILocation(line: 143, column: 9, scope: !2)
!726 = !DILocation(line: 144, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 144, column: 6)
!728 = distinct !DILexicalBlock(scope: !722, file: !3, line: 143, column: 22)
!729 = !DILocation(line: 144, column: 6, scope: !728)
!730 = !DILocation(line: 145, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 144, column: 23)
!732 = !DILocation(line: 146, column: 6, scope: !731)
!733 = !DILocation(line: 147, column: 2, scope: !731)
!734 = !DILocation(line: 148, column: 20, scope: !735)
!735 = distinct !DILexicalBlock(scope: !728, file: !3, line: 148, column: 6)
!736 = !DILocation(line: 148, column: 12, scope: !735)
!737 = !DILocation(line: 148, column: 10, scope: !735)
!738 = !DILocation(line: 148, column: 47, scope: !735)
!739 = !DILocation(line: 148, column: 50, scope: !735)
!740 = !DILocation(line: 148, column: 6, scope: !728)
!741 = !DILocation(line: 149, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !735, file: !3, line: 148, column: 68)
!743 = !DILocation(line: 150, column: 6, scope: !742)
!744 = !DILocation(line: 151, column: 2, scope: !742)
!745 = !DILocation(line: 156, column: 11, scope: !2)
!746 = !DILocation(line: 157, column: 9, scope: !622)
!747 = !DILocation(line: 157, column: 13, scope: !622)
!748 = !DILocation(line: 157, column: 16, scope: !622)
!749 = !DILocation(line: 157, column: 21, scope: !622)
!750 = !DILocation(line: 157, column: 24, scope: !622)
!751 = !DILocation(line: 157, column: 9, scope: !2)
!752 = !DILocation(line: 158, column: 2, scope: !621)
!753 = !DILocation(line: 159, column: 27, scope: !621)
!754 = !DILocation(line: 0, scope: !621)
!755 = !DILocation(line: 160, column: 18, scope: !621)
!756 = !DILocation(line: 161, column: 29, scope: !621)
!757 = !DILocation(line: 161, column: 27, scope: !621)
!758 = !DILocation(line: 163, column: 2, scope: !621)
!759 = !DILocation(line: 167, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !621, file: !3, line: 167, column: 6)
!761 = !DILocation(line: 167, column: 12, scope: !760)
!762 = !DILocation(line: 167, column: 15, scope: !760)
!763 = !DILocation(line: 167, column: 6, scope: !621)
!764 = !DILocation(line: 169, column: 11, scope: !621)
!765 = !DILocation(line: 169, column: 15, scope: !621)
!766 = !DILocation(line: 169, column: 19, scope: !621)
!767 = !DILocation(line: 169, column: 34, scope: !621)
!768 = !DILocation(line: 169, column: 52, scope: !621)
!769 = !DILocation(line: 169, column: 37, scope: !621)
!770 = !DILocation(line: 169, column: 2, scope: !621)
!771 = !DILocation(line: 170, column: 7, scope: !621)
!772 = distinct !{!772, !770, !771, !773, !774}
!773 = !{!"llvm.loop.mustprogress"}
!774 = !{!"llvm.loop.unroll.disable"}
!775 = !DILocation(line: 172, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 171, column: 13)
!777 = distinct !DILexicalBlock(scope: !621, file: !3, line: 171, column: 6)
!778 = !DILocation(line: 173, column: 6, scope: !776)
!779 = !DILocation(line: 174, column: 2, scope: !776)
!780 = !DILocation(line: 175, column: 5, scope: !622)
!781 = !DILocation(line: 175, column: 5, scope: !621)
!782 = !DILocation(line: 178, column: 5, scope: !629)
!783 = !DILocation(line: 179, column: 27, scope: !627)
!784 = !DILocation(line: 0, scope: !627)
!785 = !DILocation(line: 180, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !627, file: !3, line: 180, column: 6)
!787 = !DILocation(line: 180, column: 10, scope: !786)
!788 = !DILocation(line: 180, column: 13, scope: !786)
!789 = !DILocation(line: 180, column: 18, scope: !786)
!790 = !DILocation(line: 180, column: 34, scope: !786)
!791 = !DILocation(line: 180, column: 37, scope: !786)
!792 = !DILocation(line: 180, column: 6, scope: !627)
!793 = !DILocation(line: 181, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !786, file: !3, line: 180, column: 54)
!795 = !DILocation(line: 182, column: 6, scope: !794)
!796 = !DILocation(line: 183, column: 2, scope: !794)
!797 = !DILocation(line: 178, column: 29, scope: !628)
!798 = !DILocation(line: 178, column: 24, scope: !628)
!799 = distinct !{!799, !782, !800, !773, !774}
!800 = !DILocation(line: 184, column: 5, scope: !629)
!801 = !DILocation(line: 185, column: 1, scope: !2)
!802 = !DISubprogram(name: "Perl_mg_find", scope: !693, file: !693, line: 2648, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!803 = !DISubroutineType(types: !804)
!804 = !{!81, !31, !96}
!805 = !DISubprogram(name: "Perl_hv_common", scope: !693, file: !693, line: 1626, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!806 = !DISubroutineType(types: !807)
!807 = !{!38, !66, !59, !108, !196, !96, !96, !59, !40}
!808 = !DISubprogram(name: "Perl_gv_add_by_type", scope: !693, file: !693, line: 1391, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!809 = !DISubroutineType(types: !810)
!810 = !{!229, !229, !811}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !10, line: 153, baseType: !9)
!812 = !DISubprogram(name: "Perl_sv_tainted", scope: !693, file: !693, line: 4708, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!813 = !DISubroutineType(types: !814)
!814 = !{!354, !492}
!815 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !693, file: !693, line: 4130, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!816 = !DISubroutineType(types: !817)
!817 = !{!47, !492, !818, !524}
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!820 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !693, file: !693, line: 1627, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !685)
!821 = !DISubroutineType(types: !822)
!822 = !{!38, !66, !108, !110, !823, !59, !503}
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
