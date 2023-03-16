; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/Opcode.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/Opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.7, ptr, %union.anon.8, %union.anon.9, %union.anon.10, ptr, %union.anon.11, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.7 = type { i64 }
%union.anon.8 = type { ptr }
%union.anon.9 = type { ptr }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu }
%union.anon.17 = type { i64 }
%union._xivu = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [80 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/Opcode.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Opcode::_safe_pkg_prep\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Opcode::_safe_call_sv\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"$$$\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Opcode::verify_opset\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Opcode::invert_opset\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Opcode::opset_to_ops\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Opcode::opset\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Opcode::deny\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"$;@\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Opcode::deny_only\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Opcode::permit\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Opcode::permit_only\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Opcode::opdesc\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Opcode::define_optag\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Opcode::empty_opset\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Opcode::full_opset\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Opcode::opmask_add\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Opcode::opcodes\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Opcode::opmask\00", align 1
@PL_maxo = external local_unnamed_addr global i32, align 4
@my_cxt.0 = internal unnamed_addr global ptr null, align 8, !dbg !0
@my_cxt.1 = internal unnamed_addr global ptr null, align 8, !dbg !672
@my_cxt.2 = internal unnamed_addr global i64 0, align 8, !dbg !673
@PL_unitcheckav = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"Package\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [22 x i8] c"Package, mask, codesv\00", align 1
@PL_endav = external global ptr, align 8
@PL_defstash = external global ptr, align 8
@PL_curstash = external global ptr, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_incgv = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_op_mask = external global ptr, align 8
@.str.34 = private unnamed_addr constant [38 x i8] c"Can't add to uninitialised PL_op_mask\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"wrong size\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Invalid opset: %s\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"opset, fatal = 0\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [6 x i8] c"opset\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"opset, desc = 0\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [8 x i8] c"(opset)\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Unknown operator tag \22%s\22\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Can't negate operators here (\22%s\22)\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.45 = private unnamed_addr constant [27 x i8] c"Unknown operator name \22%s\22\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"Unknown operator prefix \22%s\22\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"panic: opcode \22%s\22 value %d is invalid\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"panic: invalid bitspec for \22%s\22 (type %u)\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"safe, ...\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Not a Safe object\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"panic: opcode %d (%s) out of range\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"optagsv, mask\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"Opcode tag \22%s\22 already defined\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"opcodes in list context not yet implemented\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c":none\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c":all\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @boot_Opcode(ptr noundef %cv) local_unnamed_addr #0 !dbg !681 {
entry:
  %len.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !683, metadata !DIExpression()), !dbg !693
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !694
  call void @llvm.dbg.value(metadata ptr %0, metadata !684, metadata !DIExpression()), !dbg !693
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !694
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !694
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !694
  %2 = load i32, ptr %1, align 4, !dbg !694
  call void @llvm.dbg.value(metadata i32 %2, metadata !685, metadata !DIExpression()), !dbg !693
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !694
  %inc = add nsw i32 %2, 1, !dbg !694
  call void @llvm.dbg.value(metadata i32 %inc, metadata !685, metadata !DIExpression()), !dbg !693
  %idx.ext = sext i32 %2 to i64, !dbg !694
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !694
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !686, metadata !DIExpression()), !dbg !693
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !694
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !694
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !694
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !694
  %conv = trunc i64 %4 to i32, !dbg !694
  call void @llvm.dbg.value(metadata i32 %conv, metadata !687, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata ptr @.str, metadata !688, metadata !DIExpression()), !dbg !693
  %call = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676679, ptr noundef %cv, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %inc, ptr noundef nonnull @.str.1) #7, !dbg !695
  %call1 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Opcode__safe_pkg_prep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7, !dbg !696
  %call2 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Opcode__safe_call_sv, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #7, !dbg !697
  %call3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Opcode_verify_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #7, !dbg !698
  %call4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Opcode_invert_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7, !dbg !699
  %call5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Opcode_opset_to_ops, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #7, !dbg !700
  %call6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Opcode_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #7, !dbg !701
  %call7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7, !dbg !702
  call void @llvm.dbg.value(metadata ptr %call7, metadata !683, metadata !DIExpression()), !dbg !693
  %5 = load ptr, ptr %call7, align 8, !dbg !703
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5, !dbg !703
  store i32 3, ptr %xcv_start_u, align 8, !dbg !704
  %call8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7, !dbg !705
  call void @llvm.dbg.value(metadata ptr %call8, metadata !683, metadata !DIExpression()), !dbg !693
  %6 = load ptr, ptr %call8, align 8, !dbg !706
  %xcv_start_u10 = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 5, !dbg !706
  store i32 2, ptr %xcv_start_u10, align 8, !dbg !707
  %call11 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7, !dbg !708
  call void @llvm.dbg.value(metadata ptr %call11, metadata !683, metadata !DIExpression()), !dbg !693
  %7 = load ptr, ptr %call11, align 8, !dbg !709
  %xcv_start_u13 = getelementptr inbounds %struct.xpvcv, ptr %7, i64 0, i32 5, !dbg !709
  store i32 1, ptr %xcv_start_u13, align 8, !dbg !710
  %call14 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7, !dbg !711
  call void @llvm.dbg.value(metadata ptr %call14, metadata !683, metadata !DIExpression()), !dbg !693
  %8 = load ptr, ptr %call14, align 8, !dbg !712
  %xcv_start_u16 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5, !dbg !712
  store i32 0, ptr %xcv_start_u16, align 8, !dbg !713
  %call17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Opcode_opdesc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #7, !dbg !714
  %call18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.18, ptr noundef nonnull @XS_Opcode_define_optag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i32 noundef 0) #7, !dbg !715
  %call19 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_Opcode_empty_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7, !dbg !716
  %call20 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_Opcode_full_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7, !dbg !717
  %call21 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_Opcode_opmask_add, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7, !dbg !718
  %call22 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_Opcode_opcodes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7, !dbg !719
  %call23 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.25, ptr noundef nonnull @XS_Opcode_opmask, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7, !dbg !720
  %9 = load i32, ptr @PL_maxo, align 4, !dbg !721
  %add = add nsw i32 %9, 7, !dbg !723
  %div = sdiv i32 %add, 8, !dbg !724
  %conv24 = sext i32 %div to i64, !dbg !725
  store i64 %conv24, ptr @my_cxt.2, align 8, !dbg !726
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i) #7, !dbg !727
  %call.i = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !741
  store ptr %call.i, ptr @my_cxt.0, align 8, !dbg !742
  %call1.i = tail call ptr @Perl_get_op_names() #7, !dbg !743
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !734, metadata !DIExpression()) #7, !dbg !744
  call void @llvm.dbg.value(metadata i32 0, metadata !732, metadata !DIExpression()) #7, !dbg !744
  %10 = load i32, ptr @PL_maxo, align 4, !dbg !745
  %cmp38.i = icmp sgt i32 %10, 0, !dbg !746
  br i1 %cmp38.i, label %for.body.i, label %for.end.i, !dbg !747

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !732, metadata !DIExpression()) #7, !dbg !744
  %call2.i = tail call ptr @Perl_newSViv(i64 noundef %indvars.iv.i) #7, !dbg !748
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !736, metadata !DIExpression()) #7, !dbg !749
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !750
  %11 = load i32, ptr %sv_flags.i, align 4, !dbg !750
  %or.i = or i32 %11, 134217728, !dbg !750
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !750
  %12 = load ptr, ptr @my_cxt.0, align 8, !dbg !751
  %arrayidx.i = getelementptr inbounds ptr, ptr %call1.i, i64 %indvars.iv.i, !dbg !751
  %13 = load ptr, ptr %arrayidx.i, align 8, !dbg !751
  %call5.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #8, !dbg !751
  %conv6.i = trunc i64 %call5.i to i32, !dbg !751
  %call7.i = tail call ptr @Perl_hv_common_key_len(ptr noundef %12, ptr noundef %13, i32 noundef %conv6.i, i32 noundef 36, ptr noundef %call2.i, i32 noundef 0) #7, !dbg !751
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !752
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !732, metadata !DIExpression()) #7, !dbg !744
  %14 = load i32, ptr @PL_maxo, align 4, !dbg !745
  %15 = sext i32 %14 to i64, !dbg !746
  %cmp.i = icmp slt i64 %indvars.iv.next.i, %15, !dbg !746
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !dbg !747, !llvm.loop !753

for.end.i:                                        ; preds = %for.body.i, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !757, metadata !DIExpression()) #7, !dbg !763
  %16 = load i64, ptr @my_cxt.2, align 8, !dbg !765
  %call2.i.i = tail call ptr @Perl_newSV(i64 noundef %16) #7, !dbg !765
  call void @llvm.dbg.value(metadata ptr %call2.i.i, metadata !762, metadata !DIExpression()) #7, !dbg !763
  %sv_u.i.i = getelementptr inbounds %struct.sv, ptr %call2.i.i, i64 0, i32 3, !dbg !768
  %17 = load ptr, ptr %sv_u.i.i, align 8, !dbg !768
  %18 = load i64, ptr @my_cxt.2, align 8, !dbg !768
  %add.i.i = add nsw i64 %18, 1, !dbg !768
  tail call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 %add.i.i, i1 false) #7, !dbg !768
  %19 = load ptr, ptr %call2.i.i, align 8, !dbg !769
  %xpv_cur.i.i = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2, !dbg !769
  store i64 %18, ptr %xpv_cur.i.i, align 8, !dbg !769
  %sv_flags.i.i = getelementptr inbounds %struct.sv, ptr %call2.i.i, i64 0, i32 2, !dbg !771
  %20 = load i32, ptr %sv_flags.i.i, align 4, !dbg !771
  %and.i.i = and i32 %20, 1610547455, !dbg !771
  %or.i.i = or i32 %and.i.i, 17408, !dbg !771
  store i32 %or.i.i, ptr %sv_flags.i.i, align 4, !dbg !771
  %call9.i = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %call2.i.i) #7, !dbg !772
  tail call fastcc void @put_op_bitspec(ptr noundef nonnull @.str.60, i64 noundef 5, ptr noundef %call9.i) #7, !dbg !773
  call void @llvm.dbg.value(metadata ptr null, metadata !757, metadata !DIExpression()) #7, !dbg !774
  %21 = load i64, ptr @my_cxt.2, align 8, !dbg !776
  %call2.i31.i = tail call ptr @Perl_newSV(i64 noundef %21) #7, !dbg !776
  call void @llvm.dbg.value(metadata ptr %call2.i31.i, metadata !762, metadata !DIExpression()) #7, !dbg !774
  %sv_u.i32.i = getelementptr inbounds %struct.sv, ptr %call2.i31.i, i64 0, i32 3, !dbg !777
  %22 = load ptr, ptr %sv_u.i32.i, align 8, !dbg !777
  %23 = load i64, ptr @my_cxt.2, align 8, !dbg !777
  %add.i33.i = add nsw i64 %23, 1, !dbg !777
  tail call void @llvm.memset.p0.i64(ptr align 1 %22, i8 0, i64 %add.i33.i, i1 false) #7, !dbg !777
  %24 = load ptr, ptr %call2.i31.i, align 8, !dbg !778
  %xpv_cur.i34.i = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2, !dbg !778
  store i64 %23, ptr %xpv_cur.i34.i, align 8, !dbg !778
  %sv_flags.i35.i = getelementptr inbounds %struct.sv, ptr %call2.i31.i, i64 0, i32 2, !dbg !779
  %25 = load i32, ptr %sv_flags.i35.i, align 4, !dbg !779
  %and.i36.i = and i32 %25, 1610547455, !dbg !779
  %or.i37.i = or i32 %and.i36.i, 17408, !dbg !779
  store i32 %or.i37.i, ptr %sv_flags.i35.i, align 4, !dbg !779
  store ptr %call2.i31.i, ptr @my_cxt.1, align 8, !dbg !780
  %and.i = and i32 %or.i37.i, 2098176, !dbg !781
  %cmp12.i = icmp eq i32 %and.i, 1024, !dbg !781
  br i1 %cmp12.i, label %cond.true.i, label %cond.false.i, !dbg !781

cond.true.i:                                      ; preds = %for.end.i
  %26 = load ptr, ptr %call2.i31.i, align 8, !dbg !781
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2, !dbg !781
  %27 = load i64, ptr %xpv_cur.i, align 8, !dbg !781
  call void @llvm.dbg.value(metadata i64 %27, metadata !733, metadata !DIExpression()) #7, !dbg !744
  store i64 %27, ptr %len.i, align 8, !dbg !781
  %28 = load ptr, ptr %sv_u.i32.i, align 8, !dbg !781
  br label %cond.end.i, !dbg !781

cond.false.i:                                     ; preds = %for.end.i
  call void @llvm.dbg.value(metadata ptr %len.i, metadata !733, metadata !DIExpression(DW_OP_deref)) #7, !dbg !744
  %call14.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call2.i31.i, ptr noundef nonnull %len.i, i32 noundef 2) #7, !dbg !781
  %.pre.i = load i64, ptr %len.i, align 8, !dbg !782
  br label %cond.end.i, !dbg !781

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %29 = phi i64 [ %27, %cond.true.i ], [ %.pre.i, %cond.false.i ], !dbg !782
  %cond.i = phi ptr [ %28, %cond.true.i ], [ %call14.i, %cond.false.i ], !dbg !781
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !735, metadata !DIExpression()) #7, !dbg !744
  call void @llvm.dbg.value(metadata i64 %29, metadata !733, metadata !DIExpression()) #7, !dbg !744
  %sub.i = add i64 %29, -1, !dbg !783
  call void @llvm.memset.p0.i64(ptr align 1 %cond.i, i8 -1, i64 %sub.i, i1 false) #7, !dbg !784
  %30 = load i32, ptr @PL_maxo, align 4, !dbg !785
  %and15.i = and i32 %30, 7, !dbg !786
  %tobool.not.i = icmp eq i32 %and15.i, 0, !dbg !786
  br i1 %tobool.not.i, label %op_names_init.exit, label %cond.true16.i, !dbg !787

cond.true16.i:                                    ; preds = %cond.end.i
  %shl.i = shl nuw nsw i32 255, %and15.i, !dbg !788
  %31 = trunc i32 %shl.i to i8, !dbg !787
  %phi.cast.i = xor i8 %31, -1, !dbg !787
  br label %op_names_init.exit, !dbg !787

op_names_init.exit:                               ; preds = %cond.end.i, %cond.true16.i
  %cond20.i = phi i8 [ %phi.cast.i, %cond.true16.i ], [ -1, %cond.end.i ]
  %32 = load i64, ptr %len.i, align 8, !dbg !789
  call void @llvm.dbg.value(metadata i64 %32, metadata !733, metadata !DIExpression()) #7, !dbg !744
  %sub22.i = add i64 %32, -1, !dbg !790
  %arrayidx23.i = getelementptr inbounds i8, ptr %cond.i, i64 %sub22.i, !dbg !791
  store i8 %cond20.i, ptr %arrayidx23.i, align 1, !dbg !792
  %33 = load ptr, ptr @my_cxt.1, align 8, !dbg !793
  call fastcc void @put_op_bitspec(ptr noundef nonnull @.str.61, i64 noundef 4, ptr noundef %33) #7, !dbg !794
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i) #7, !dbg !795
  %34 = load ptr, ptr @PL_unitcheckav, align 8, !dbg !796
  %tobool.not = icmp eq ptr %34, null, !dbg !796
  br i1 %tobool.not, label %do.body, label %if.then26, !dbg !798

if.then26:                                        ; preds = %op_names_init.exit
  %35 = load i32, ptr @PL_scopestack_ix, align 4, !dbg !799
  call void @Perl_call_list(i32 noundef %35, ptr noundef nonnull %34) #7, !dbg !799
  br label %do.body, !dbg !799

do.body:                                          ; preds = %op_names_init.exit, %if.then26
  %36 = load ptr, ptr @PL_stack_base, align 8, !dbg !800
  %idxprom = sext i32 %inc to i64, !dbg !800
  %arrayidx = getelementptr inbounds ptr, ptr %36, i64 %idxprom, !dbg !800
  store ptr @PL_sv_yes, ptr %arrayidx, align 8, !dbg !800
  call void @llvm.dbg.value(metadata i64 1, metadata !689, metadata !DIExpression()), !dbg !801
  %37 = load ptr, ptr @PL_stack_base, align 8, !dbg !802
  %add.ptr31 = getelementptr inbounds ptr, ptr %37, i64 %idxprom, !dbg !802
  store ptr %add.ptr31, ptr @PL_stack_sp, align 8, !dbg !802
  ret void, !dbg !803
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !804 i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !809 ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode__safe_pkg_prep(ptr noundef %cv) #0 !dbg !813 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !815, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !825
  call void @llvm.dbg.value(metadata ptr %0, metadata !816, metadata !DIExpression()), !dbg !824
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !825
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !825
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !825
  %2 = load i32, ptr %1, align 4, !dbg !825
  call void @llvm.dbg.value(metadata i32 %2, metadata !817, metadata !DIExpression()), !dbg !824
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !825
  %inc = add nsw i32 %2, 1, !dbg !825
  call void @llvm.dbg.value(metadata i32 %inc, metadata !817, metadata !DIExpression()), !dbg !824
  %idx.ext = sext i32 %2 to i64, !dbg !825
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !825
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !818, metadata !DIExpression()), !dbg !824
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !825
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !825
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !825
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !819, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !824
  %4 = and i64 %sub.ptr.sub, 34359738360, !dbg !826
  %cmp.not = icmp eq i64 %4, 8, !dbg !826
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !828

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.27) #7, !dbg !829
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !830
  br label %if.end, !dbg !829

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !830
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !824
  %idxprom = sext i32 %inc to i64, !dbg !830
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !830
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !830
  call void @llvm.dbg.value(metadata ptr %6, metadata !820, metadata !DIExpression()), !dbg !831
  tail call void @Perl_push_scope() #7, !dbg !832
  %call = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 4) #7, !dbg !833
  call void @llvm.dbg.value(metadata ptr %call, metadata !822, metadata !DIExpression()), !dbg !831
  %sv_flags = getelementptr inbounds %struct.hv, ptr %call, i64 0, i32 2, !dbg !834
  %7 = load i32, ptr %sv_flags, align 4, !dbg !834
  %and = and i32 %7, 33554432, !dbg !834
  %tobool.not = icmp eq i32 %and, 0, !dbg !834
  br i1 %tobool.not, label %if.then56, label %land.lhs.true, !dbg !834

land.lhs.true:                                    ; preds = %if.end
  %sv_u = getelementptr inbounds %struct.hv, ptr %call, i64 0, i32 3, !dbg !834
  %8 = load ptr, ptr %sv_u, align 8, !dbg !834
  %9 = load ptr, ptr %call, align 8, !dbg !834
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3, !dbg !834
  %10 = load i64, ptr %xhv_max, align 8, !dbg !834
  %add4 = add i64 %10, 1, !dbg !834
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 %add4, !dbg !834
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !834
  %tobool6.not = icmp eq ptr %11, null, !dbg !834
  br i1 %tobool6.not, label %if.then56, label %land.lhs.true7, !dbg !834

land.lhs.true7:                                   ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx5, i64 0, i32 4, !dbg !834
  %12 = load i32, ptr %xhv_name_count, align 4, !dbg !834
  %tobool13.not = icmp eq i32 %12, 0, !dbg !834
  br i1 %tobool13.not, label %lor.lhs.false, label %cond.true, !dbg !834

cond.true:                                        ; preds = %land.lhs.true7
  %13 = load ptr, ptr %11, align 8, !dbg !834
  %tobool20.not = icmp eq ptr %13, null, !dbg !834
  br i1 %tobool20.not, label %if.then56, label %lor.lhs.false, !dbg !834

lor.lhs.false:                                    ; preds = %land.lhs.true7, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ %11, %land.lhs.true7 ], !dbg !834
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond, i64 0, i32 2, !dbg !834
  call void @llvm.dbg.value(metadata ptr %hek_key, metadata !823, metadata !DIExpression()), !dbg !831
  %call54 = tail call i32 @strcmp(ptr noundef nonnull %hek_key, ptr noundef nonnull dereferenceable(5) @.str.28) #8, !dbg !835
  %tobool55.not = icmp eq i32 %call54, 0, !dbg !835
  br i1 %tobool55.not, label %if.end59, label %if.then56, !dbg !837

if.then56:                                        ; preds = %if.end, %land.lhs.true, %cond.true, %lor.lhs.false
  tail call void @Perl_hv_name_set(ptr noundef nonnull %call, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef 0) #7, !dbg !838
  %14 = load ptr, ptr @PL_defgv, align 8, !dbg !840
  %call57 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %call, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 36, ptr noundef %14, i32 noundef 0) #7, !dbg !840
  %15 = load ptr, ptr @PL_defgv, align 8, !dbg !841
  call void @llvm.dbg.value(metadata ptr %15, metadata !842, metadata !DIExpression()), !dbg !846
  %cmp.not.i = icmp eq ptr %15, null, !dbg !848
  br i1 %cmp.not.i, label %if.end59, label %if.then.i, !dbg !850

if.then.i:                                        ; preds = %if.then56
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 1, !dbg !851
  %16 = load i32, ptr %sv_refcnt.i, align 8, !dbg !852
  %inc.i = add i32 %16, 1, !dbg !852
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !852
  br label %if.end59, !dbg !851

if.end59:                                         ; preds = %if.then.i, %if.then56, %lor.lhs.false
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !853
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !824
  %idx.ext2 = ashr i64 %sext, 32, !dbg !853
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext2), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !824
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !853
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !824
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !853
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !816, metadata !DIExpression()), !dbg !824
  tail call void @Perl_pop_scope() #7, !dbg !854
  store ptr %add.ptr3, ptr @PL_stack_sp, align 8, !dbg !855
  ret void, !dbg !856
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode__safe_call_sv(ptr noundef %cv) #0 !dbg !857 {
entry:
  %op_mask_buf = alloca [496 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %cv, metadata !859, metadata !DIExpression()), !dbg !877
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !878
  call void @llvm.dbg.value(metadata ptr %0, metadata !860, metadata !DIExpression()), !dbg !877
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !878
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !878
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !878
  %2 = load i32, ptr %1, align 4, !dbg !878
  call void @llvm.dbg.value(metadata i32 %2, metadata !861, metadata !DIExpression()), !dbg !877
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !878
  %inc = add nsw i32 %2, 1, !dbg !878
  call void @llvm.dbg.value(metadata i32 %inc, metadata !861, metadata !DIExpression()), !dbg !877
  %idx.ext = sext i32 %2 to i64, !dbg !878
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !878
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !862, metadata !DIExpression()), !dbg !877
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !878
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !878
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !878
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !863, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !877
  %4 = and i64 %sub.ptr.sub, 34359738360, !dbg !879
  %cmp.not = icmp eq i64 %4, 24, !dbg !879
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !881

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.30) #7, !dbg !882
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !883
  br label %if.end, !dbg !882

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !883
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !884
  %idx.ext2 = ashr i64 %sext, 32, !dbg !884
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !884
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !884
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !860, metadata !DIExpression()), !dbg !877
  %idxprom = sext i32 %inc to i64, !dbg !883
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !883
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !883
  call void @llvm.dbg.value(metadata ptr %6, metadata !864, metadata !DIExpression()), !dbg !885
  %add4 = add nsw i32 %2, 2, !dbg !886
  %idxprom5 = sext i32 %add4 to i64, !dbg !886
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 %idxprom5, !dbg !886
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !886
  call void @llvm.dbg.value(metadata ptr %7, metadata !866, metadata !DIExpression()), !dbg !885
  %add7 = add nsw i32 %2, 3, !dbg !887
  %idxprom8 = sext i32 %add7 to i64, !dbg !887
  %arrayidx9 = getelementptr inbounds ptr, ptr %5, i64 %idxprom8, !dbg !887
  %8 = load ptr, ptr %arrayidx9, align 8, !dbg !887
  call void @llvm.dbg.value(metadata ptr %8, metadata !867, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 496, ptr nonnull %op_mask_buf) #7, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %op_mask_buf, metadata !868, metadata !DIExpression()), !dbg !889
  tail call void @Perl_push_scope() #7, !dbg !890
  call void @llvm.dbg.value(metadata ptr %7, metadata !891, metadata !DIExpression()) #7, !dbg !898
  call void @llvm.dbg.value(metadata ptr %op_mask_buf, metadata !896, metadata !DIExpression()) #7, !dbg !898
  %9 = load ptr, ptr @PL_op_mask, align 8, !dbg !900
  call void @llvm.dbg.value(metadata ptr %9, metadata !897, metadata !DIExpression()) #7, !dbg !898
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_op_mask) #7, !dbg !901
  store ptr %op_mask_buf, ptr @PL_op_mask, align 8, !dbg !902
  %tobool.not.i = icmp eq ptr %9, null, !dbg !903
  %10 = load i32, ptr @PL_maxo, align 4, !dbg !905
  %conv2.i = sext i32 %10 to i64, !dbg !905
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i, !dbg !906

if.then1.i:                                       ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %op_mask_buf, ptr nonnull align 1 %9, i64 %conv2.i, i1 false) #7, !dbg !907
  br label %opmask_addlocal.exit, !dbg !907

if.else.i:                                        ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %op_mask_buf, i8 0, i64 %conv2.i, i1 false) #7, !dbg !908
  br label %opmask_addlocal.exit

opmask_addlocal.exit:                             ; preds = %if.then1.i, %if.else.i
  call fastcc void @opmask_add(ptr noundef %7) #7, !dbg !909
  call void @Perl_save_aptr(ptr noundef nonnull @PL_endav) #7, !dbg !910
  %call = call ptr @Perl_newSV_type(i32 noundef 11) #7, !dbg !911
  %call10 = call ptr @Perl_sv_2mortal(ptr noundef %call) #7, !dbg !911
  store ptr %call10, ptr @PL_endav, align 8, !dbg !912
  call void @Perl_save_hptr(ptr noundef nonnull @PL_defstash) #7, !dbg !913
  %call11 = call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 4) #7, !dbg !914
  store ptr %call11, ptr @PL_defstash, align 8, !dbg !915
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_curstash) #7, !dbg !916
  %11 = load ptr, ptr @PL_defstash, align 8, !dbg !917
  call void @llvm.dbg.value(metadata ptr %11, metadata !842, metadata !DIExpression()), !dbg !918
  %cmp.not.i = icmp eq ptr %11, null, !dbg !920
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !921

if.then.i:                                        ; preds = %opmask_addlocal.exit
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 1, !dbg !922
  %12 = load i32, ptr %sv_refcnt.i, align 8, !dbg !923
  %inc.i = add i32 %12, 1, !dbg !923
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !923
  br label %S_SvREFCNT_inc.exit, !dbg !922

S_SvREFCNT_inc.exit:                              ; preds = %opmask_addlocal.exit, %if.then.i
  store ptr %11, ptr @PL_curstash, align 8, !dbg !924
  %call13 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.31, i64 noundef 6, i32 noundef 4, i32 noundef 12) #7, !dbg !925
  call void @llvm.dbg.value(metadata ptr %call13, metadata !872, metadata !DIExpression()), !dbg !885
  %sv_u = getelementptr inbounds %struct.gv, ptr %call13, i64 0, i32 3, !dbg !926
  %13 = load ptr, ptr %sv_u, align 8, !dbg !926
  %gp_hv = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 5, !dbg !926
  %14 = load ptr, ptr %gp_hv, align 8, !dbg !926
  call void @Perl_sv_free(ptr noundef %14) #7, !dbg !926
  %15 = load ptr, ptr @PL_defstash, align 8, !dbg !927
  call void @llvm.dbg.value(metadata ptr %15, metadata !842, metadata !DIExpression()), !dbg !928
  %cmp.not.i62 = icmp eq ptr %15, null, !dbg !930
  br i1 %cmp.not.i62, label %S_SvREFCNT_inc.exit66, label %if.then.i65, !dbg !931

if.then.i65:                                      ; preds = %S_SvREFCNT_inc.exit
  %sv_refcnt.i63 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 1, !dbg !932
  %16 = load i32, ptr %sv_refcnt.i63, align 8, !dbg !933
  %inc.i64 = add i32 %16, 1, !dbg !933
  store i32 %inc.i64, ptr %sv_refcnt.i63, align 8, !dbg !933
  br label %S_SvREFCNT_inc.exit66, !dbg !932

S_SvREFCNT_inc.exit66:                            ; preds = %S_SvREFCNT_inc.exit, %if.then.i65
  %17 = load ptr, ptr %sv_u, align 8, !dbg !934
  %gp_hv18 = getelementptr inbounds %struct.gp, ptr %17, i64 0, i32 5, !dbg !934
  store ptr %15, ptr %gp_hv18, align 8, !dbg !935
  %18 = load ptr, ptr @PL_incgv, align 8, !dbg !936
  %call19 = call ptr @Perl_save_hash(ptr noundef %18) #7, !dbg !936
  call void @llvm.dbg.value(metadata ptr %call19, metadata !873, metadata !DIExpression()), !dbg !885
  %call20 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.32, i64 noundef 3, i32 noundef 1, i32 noundef 12) #7, !dbg !937
  %call21 = call ptr @Perl_gv_add_by_type(ptr noundef %call20, i32 noundef 12) #7, !dbg !937
  %sv_u22 = getelementptr inbounds %struct.gv, ptr %call21, i64 0, i32 3, !dbg !937
  %19 = load ptr, ptr %sv_u22, align 8, !dbg !937
  %gp_hv24 = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 5, !dbg !937
  %20 = load ptr, ptr %gp_hv24, align 8, !dbg !937
  call void @llvm.dbg.value(metadata ptr %20, metadata !842, metadata !DIExpression()), !dbg !938
  %cmp.not.i67 = icmp eq ptr %20, null, !dbg !940
  br i1 %cmp.not.i67, label %S_SvREFCNT_inc.exit71, label %if.then.i70, !dbg !941

if.then.i70:                                      ; preds = %S_SvREFCNT_inc.exit66
  %sv_refcnt.i68 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 1, !dbg !942
  %21 = load i32, ptr %sv_refcnt.i68, align 8, !dbg !943
  %inc.i69 = add i32 %21, 1, !dbg !943
  store i32 %inc.i69, ptr %sv_refcnt.i68, align 8, !dbg !943
  br label %S_SvREFCNT_inc.exit71, !dbg !942

S_SvREFCNT_inc.exit71:                            ; preds = %S_SvREFCNT_inc.exit66, %if.then.i70
  %22 = load ptr, ptr @PL_incgv, align 8, !dbg !944
  %sv_u26 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3, !dbg !944
  %23 = load ptr, ptr %sv_u26, align 8, !dbg !944
  %gp_hv28 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 5, !dbg !944
  store ptr %20, ptr %gp_hv28, align 8, !dbg !945
  %24 = load i32, ptr @PL_sub_generation, align 4, !dbg !946
  %inc29 = add i32 %24, 1, !dbg !946
  store i32 %inc29, ptr @PL_sub_generation, align 4, !dbg !946
  %25 = load ptr, ptr @PL_stashcache, align 8, !dbg !947
  call void @Perl_hv_clear(ptr noundef %25) #7, !dbg !947
  %26 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !948
  %incdec.ptr30 = getelementptr inbounds i32, ptr %26, i64 1, !dbg !948
  store ptr %incdec.ptr30, ptr @PL_markstack_ptr, align 8, !dbg !948
  call void @llvm.dbg.value(metadata ptr %incdec.ptr30, metadata !874, metadata !DIExpression()), !dbg !950
  %27 = load ptr, ptr @PL_markstack_max, align 8, !dbg !948
  %cmp31 = icmp eq ptr %incdec.ptr30, %27, !dbg !948
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !951

if.then33:                                        ; preds = %S_SvREFCNT_inc.exit71
  %call34 = call ptr @Perl_markstack_grow() #7, !dbg !948
  call void @llvm.dbg.value(metadata ptr %call34, metadata !874, metadata !DIExpression()), !dbg !950
  br label %if.end35, !dbg !948

if.end35:                                         ; preds = %S_SvREFCNT_inc.exit71, %if.then33
  %mark_stack_entry.0 = phi ptr [ %call34, %if.then33 ], [ %incdec.ptr30, %S_SvREFCNT_inc.exit71 ], !dbg !948
  call void @llvm.dbg.value(metadata ptr %mark_stack_entry.0, metadata !874, metadata !DIExpression()), !dbg !950
  %28 = load ptr, ptr @PL_stack_base, align 8, !dbg !951
  %sub.ptr.lhs.cast36 = ptrtoint ptr %add.ptr3 to i64, !dbg !951
  %sub.ptr.rhs.cast37 = ptrtoint ptr %28 to i64, !dbg !951
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !951
  %29 = lshr exact i64 %sub.ptr.sub38, 3, !dbg !951
  %conv40 = trunc i64 %29 to i32, !dbg !951
  store i32 %conv40, ptr %mark_stack_entry.0, align 4, !dbg !951
  %30 = load ptr, ptr @PL_op, align 8, !dbg !952
  %op_flags = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 5, !dbg !952
  %31 = load i8, ptr %op_flags, align 2, !dbg !952
  %32 = and i8 %31, 3, !dbg !952
  %tobool.not = icmp eq i8 %32, 0, !dbg !952
  br i1 %tobool.not, label %cond.false48, label %cond.true42, !dbg !952

cond.true42:                                      ; preds = %if.end35
  %cmp46 = icmp eq i8 %32, 3, !dbg !952
  %cond = select i1 %cmp46, i32 3, i32 2, !dbg !952
  br label %cond.end, !dbg !952

cond.false48:                                     ; preds = %if.end35
  %call49 = call i32 @Perl_dowantarray() #7, !dbg !952
  br label %cond.end, !dbg !952

cond.end:                                         ; preds = %cond.false48, %cond.true42
  %cond50 = phi i32 [ %cond, %cond.true42 ], [ %call49, %cond.false48 ], !dbg !952
  %or51 = or i32 %cond50, 40, !dbg !952
  %call52 = call i32 @Perl_call_sv(ptr noundef %8, i32 noundef %or51) #7, !dbg !952
  call void @Perl_sv_free(ptr noundef %call19) #7, !dbg !953
  %33 = load ptr, ptr @PL_stack_sp, align 8, !dbg !954
  call void @llvm.dbg.value(metadata ptr %33, metadata !860, metadata !DIExpression()), !dbg !877
  call void @Perl_pop_scope() #7, !dbg !955
  store ptr %33, ptr @PL_stack_sp, align 8, !dbg !956
  call void @llvm.lifetime.end.p0(i64 496, ptr nonnull %op_mask_buf) #7, !dbg !957
  ret void, !dbg !958
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_verify_opset(ptr noundef %cv) #0 !dbg !959 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !961, metadata !DIExpression()), !dbg !973
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !974
  call void @llvm.dbg.value(metadata ptr %0, metadata !962, metadata !DIExpression()), !dbg !973
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !974
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !974
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !974
  %2 = load i32, ptr %1, align 4, !dbg !974
  call void @llvm.dbg.value(metadata i32 %2, metadata !963, metadata !DIExpression()), !dbg !973
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !974
  %inc = add nsw i32 %2, 1, !dbg !974
  call void @llvm.dbg.value(metadata i32 %inc, metadata !963, metadata !DIExpression()), !dbg !973
  %idx.ext = sext i32 %2 to i64, !dbg !974
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !974
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !964, metadata !DIExpression()), !dbg !973
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !974
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !974
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !974
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !974
  %conv = trunc i64 %4 to i32, !dbg !974
  call void @llvm.dbg.value(metadata i32 %conv, metadata !965, metadata !DIExpression()), !dbg !973
  %5 = add i32 %conv, -3, !dbg !975
  %6 = icmp ult i32 %5, -2, !dbg !975
  br i1 %6, label %if.then, label %if.end, !dbg !975

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.39) #7, !dbg !977
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !978
  br label %if.end, !dbg !977

if.end:                                           ; preds = %entry, %if.then
  %7 = phi ptr [ %3, %entry ], [ %.pre, %if.then ], !dbg !978
  %idxprom = sext i32 %inc to i64, !dbg !978
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !978
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !978
  call void @llvm.dbg.value(metadata ptr %8, metadata !966, metadata !DIExpression()), !dbg !979
  %9 = load ptr, ptr @PL_op, align 8, !dbg !980
  %op_private = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 6, !dbg !980
  %10 = load i8, ptr %op_private, align 1, !dbg !980
  %11 = and i8 %10, 4, !dbg !980
  %tobool.not = icmp eq i8 %11, 0, !dbg !980
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !980

cond.true:                                        ; preds = %if.end
  %12 = load ptr, ptr @PL_curpad, align 8, !dbg !980
  %op_targ = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3, !dbg !980
  %13 = load i64, ptr %op_targ, align 8, !dbg !980
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !980
  %14 = load ptr, ptr %arrayidx5, align 8, !dbg !980
  br label %cond.end, !dbg !980

cond.false:                                       ; preds = %if.end
  %call = tail call ptr @Perl_sv_newmortal() #7, !dbg !980
  br label %cond.end, !dbg !980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %14, %cond.true ], [ %call, %cond.false ], !dbg !980
  call void @llvm.dbg.value(metadata ptr %cond, metadata !970, metadata !DIExpression()), !dbg !979
  %cmp6 = icmp slt i32 %conv, 2, !dbg !981
  br i1 %cmp6, label %if.end27, label %if.else, !dbg !983

if.else:                                          ; preds = %cond.end
  %15 = load ptr, ptr @PL_stack_base, align 8, !dbg !984
  %add9 = add nsw i32 %2, 2, !dbg !984
  %idxprom10 = sext i32 %add9 to i64, !dbg !984
  %arrayidx11 = getelementptr inbounds ptr, ptr %15, i64 %idxprom10, !dbg !984
  %16 = load ptr, ptr %arrayidx11, align 8, !dbg !984
  %sv_flags = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2, !dbg !984
  %17 = load i32, ptr %sv_flags, align 4, !dbg !984
  %and12 = and i32 %17, 2097408, !dbg !984
  %cmp13 = icmp eq i32 %and12, 256, !dbg !984
  br i1 %cmp13, label %cond.true15, label %cond.false19, !dbg !984

cond.true15:                                      ; preds = %if.else
  %18 = load ptr, ptr %16, align 8, !dbg !984
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4, !dbg !984
  %19 = load i64, ptr %xiv_u, align 8, !dbg !984
  br label %cond.end24, !dbg !984

cond.false19:                                     ; preds = %if.else
  %call23 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %16, i32 noundef 2) #7, !dbg !984
  br label %cond.end24, !dbg !984

cond.end24:                                       ; preds = %cond.false19, %cond.true15
  %cond25 = phi i64 [ %19, %cond.true15 ], [ %call23, %cond.false19 ], !dbg !984
  %conv26 = trunc i64 %cond25 to i32, !dbg !986
  call void @llvm.dbg.value(metadata i32 %conv26, metadata !968, metadata !DIExpression()), !dbg !979
  br label %if.end27

if.end27:                                         ; preds = %cond.end, %cond.end24
  %fatal.0 = phi i32 [ %conv26, %cond.end24 ], [ 0, %cond.end ], !dbg !987
  call void @llvm.dbg.value(metadata i32 %fatal.0, metadata !968, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr %8, metadata !988, metadata !DIExpression()) #7, !dbg !995
  call void @llvm.dbg.value(metadata i32 %fatal.0, metadata !993, metadata !DIExpression()) #7, !dbg !995
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !995
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !997
  %20 = load i32, ptr %sv_flags.i, align 4, !dbg !997
  %and.i = and i32 %20, 65280, !dbg !997
  %tobool.not.i = icmp ne i32 %and.i, 0, !dbg !997
  %and2.i = and i32 %20, 255, !dbg !997
  %cmp.i = icmp eq i32 %and2.i, 8, !dbg !997
  %or.cond27.i = or i1 %tobool.not.i, %cmp.i, !dbg !997
  %and5.i = and i32 %20, 16826623, !dbg !997
  %cmp6.i = icmp eq i32 %and5.i, 16777226, !dbg !997
  %or.cond28.i = select i1 %or.cond27.i, i1 true, i1 %cmp6.i, !dbg !997
  br i1 %or.cond28.i, label %if.else.i, label %if.end15.i, !dbg !997

if.else.i:                                        ; preds = %if.end27
  %and8.i = and i32 %20, 1024, !dbg !999
  %tobool9.not.i = icmp eq i32 %and8.i, 0, !dbg !999
  br i1 %tobool9.not.i, label %if.end15.i, label %if.else11.i, !dbg !1001

if.else11.i:                                      ; preds = %if.else.i
  %21 = load ptr, ptr %8, align 8, !dbg !1002
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2, !dbg !1002
  %22 = load i64, ptr %xpv_cur.i, align 8, !dbg !1002
  %23 = load i64, ptr @my_cxt.2, align 8, !dbg !1004
  %cmp12.not.i = icmp eq i64 %22, %23, !dbg !1005
  %not.cmp12.not.i = xor i1 %cmp12.not.i, true, !dbg !1006
  %spec.select29.i = select i1 %cmp12.not.i, ptr null, ptr @.str.37, !dbg !1006
  br label %if.end15.i, !dbg !1006

if.end15.i:                                       ; preds = %if.else11.i, %if.else.i, %if.end27
  %tobool16.i = phi i1 [ true, %if.end27 ], [ true, %if.else.i ], [ %not.cmp12.not.i, %if.else11.i ], !dbg !995
  %err.0.i = phi ptr [ @.str.35, %if.end27 ], [ @.str.36, %if.else.i ], [ %spec.select29.i, %if.else11.i ], !dbg !995
  call void @llvm.dbg.value(metadata ptr %err.0.i, metadata !994, metadata !DIExpression()) #7, !dbg !995
  %tobool17.i = icmp ne i32 %fatal.0, 0
  %or.cond.i = and i1 %tobool17.i, %tobool16.i, !dbg !1007
  br i1 %or.cond.i, label %if.then18.i, label %verify_opset.exit, !dbg !1007

if.then18.i:                                      ; preds = %if.end15.i
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef %err.0.i) #7, !dbg !1009
  br label %verify_opset.exit, !dbg !1011

verify_opset.exit:                                ; preds = %if.end15.i, %if.then18.i
  %lnot.i = xor i1 %tobool16.i, true, !dbg !1012
  call void @llvm.dbg.value(metadata i1 %lnot.i, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !979
  %24 = load ptr, ptr @PL_stack_base, align 8, !dbg !1013
  call void @llvm.dbg.value(metadata !DIArgList(ptr %24, i64 %idxprom), metadata !962, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !973
  %25 = zext i1 %lnot.i to i64
  tail call void @Perl_sv_setiv(ptr noundef %cond, i64 noundef %25) #7, !dbg !1014
  %sv_flags35 = getelementptr inbounds %struct.sv, ptr %cond, i64 0, i32 2, !dbg !1016
  %26 = load i32, ptr %sv_flags35, align 4, !dbg !1016
  %and36 = and i32 %26, 4194304, !dbg !1016
  %tobool37.not = icmp eq i32 %and36, 0, !dbg !1016
  br i1 %tobool37.not, label %do.end, label %if.then40, !dbg !1020

if.then40:                                        ; preds = %verify_opset.exit
  %call41 = tail call i32 @Perl_mg_set(ptr noundef nonnull %cond) #7, !dbg !1016
  br label %do.end, !dbg !1016

do.end:                                           ; preds = %verify_opset.exit, %if.then40
  %add.ptr30 = getelementptr inbounds ptr, ptr %24, i64 %idxprom, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %add.ptr30, metadata !962, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !973
  %add.ptr31 = getelementptr inbounds ptr, ptr %add.ptr30, i64 -1, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %add.ptr31, metadata !962, metadata !DIExpression()), !dbg !973
  %incdec.ptr43 = getelementptr inbounds ptr, ptr %add.ptr31, i64 1, !dbg !1021
  call void @llvm.dbg.value(metadata ptr %incdec.ptr43, metadata !962, metadata !DIExpression()), !dbg !973
  store ptr %cond, ptr %incdec.ptr43, align 8, !dbg !1021
  call void @llvm.dbg.value(metadata i64 1, metadata !971, metadata !DIExpression()), !dbg !1022
  %27 = load ptr, ptr @PL_stack_base, align 8, !dbg !1023
  %add.ptr50 = getelementptr inbounds ptr, ptr %27, i64 %idxprom, !dbg !1023
  store ptr %add.ptr50, ptr @PL_stack_sp, align 8, !dbg !1023
  ret void, !dbg !1024
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_invert_opset(ptr noundef %cv) #0 !dbg !1025 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1027, metadata !DIExpression()), !dbg !1039
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1040
  call void @llvm.dbg.value(metadata ptr %0, metadata !1028, metadata !DIExpression()), !dbg !1039
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1040
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1040
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1040
  %2 = load i32, ptr %1, align 4, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %2, metadata !1029, metadata !DIExpression()), !dbg !1039
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1040
  %inc = add nsw i32 %2, 1, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1029, metadata !DIExpression()), !dbg !1039
  %idx.ext = sext i32 %2 to i64, !dbg !1040
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1040
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1030, metadata !DIExpression()), !dbg !1039
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1040
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1040
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1040
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1040
  %conv = trunc i64 %4 to i32, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1031, metadata !DIExpression()), !dbg !1039
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1041
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1043

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.40) #7, !dbg !1044
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1045
  br label %if.end, !dbg !1044

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !1045
  %idxprom = sext i32 %inc to i64, !dbg !1045
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1045
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1045
  call void @llvm.dbg.value(metadata ptr %6, metadata !1032, metadata !DIExpression()), !dbg !1046
  %7 = load i64, ptr @my_cxt.2, align 8, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %7, metadata !1036, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %6, metadata !757, metadata !DIExpression()) #7, !dbg !1049
  %tobool.not.i = icmp eq ptr %6, null, !dbg !1051
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1052

if.then.i:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %6, metadata !988, metadata !DIExpression()) #7, !dbg !1053
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1053
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1053
  %sv_flags.i.i = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1056
  %8 = load i32, ptr %sv_flags.i.i, align 4, !dbg !1056
  %and.i.i = and i32 %8, 65280, !dbg !1056
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0, !dbg !1056
  %and2.i.i = and i32 %8, 255, !dbg !1056
  %cmp.i.i = icmp eq i32 %and2.i.i, 8, !dbg !1056
  %or.cond27.i.i = or i1 %tobool.not.i.i, %cmp.i.i, !dbg !1056
  %and5.i.i = and i32 %8, 16826623, !dbg !1056
  %cmp6.i.i = icmp eq i32 %and5.i.i, 16777226, !dbg !1056
  %or.cond28.i.i = select i1 %or.cond27.i.i, i1 true, i1 %cmp6.i.i, !dbg !1056
  br i1 %or.cond28.i.i, label %if.else.i.i, label %if.then18.i.i, !dbg !1056

if.else.i.i:                                      ; preds = %if.then.i
  %and8.i.i = and i32 %8, 1024, !dbg !1057
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0, !dbg !1057
  br i1 %tobool9.not.i.i, label %if.then18.i.i, label %if.end15.i.i, !dbg !1058

if.end15.i.i:                                     ; preds = %if.else.i.i
  %9 = load ptr, ptr %6, align 8, !dbg !1059
  %xpv_cur.i.i = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2, !dbg !1059
  %10 = load i64, ptr %xpv_cur.i.i, align 8, !dbg !1059
  %cmp12.not.i.i = icmp eq i64 %10, %7, !dbg !1060
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1053
  br i1 %cmp12.not.i.i, label %verify_opset.exit.i, label %if.then18.i.i, !dbg !1061

if.then18.i.i:                                    ; preds = %if.end15.i.i, %if.else.i.i, %if.then.i
  %err.0.i14.i = phi ptr [ @.str.37, %if.end15.i.i ], [ @.str.36, %if.else.i.i ], [ @.str.35, %if.then.i ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i14.i) #7, !dbg !1062
  br label %verify_opset.exit.i, !dbg !1063

verify_opset.exit.i:                              ; preds = %if.then18.i.i, %if.end15.i.i
  %call1.i = tail call ptr @Perl_newSVsv(ptr noundef nonnull %6) #7, !dbg !1064
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !762, metadata !DIExpression()) #7, !dbg !1049
  br label %new_opset.exit, !dbg !1065

if.else.i:                                        ; preds = %if.end
  %call2.i = tail call ptr @Perl_newSV(i64 noundef %7) #7, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1049
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 3, !dbg !1067
  %11 = load ptr, ptr %sv_u.i, align 8, !dbg !1067
  %12 = load i64, ptr @my_cxt.2, align 8, !dbg !1067
  %add.i = add nsw i64 %12, 1, !dbg !1067
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %add.i, i1 false) #7, !dbg !1067
  %13 = load ptr, ptr %call2.i, align 8, !dbg !1068
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2, !dbg !1068
  store i64 %12, ptr %xpv_cur.i, align 8, !dbg !1068
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !1069
  %14 = load i32, ptr %sv_flags.i, align 4, !dbg !1069
  %and.i = and i32 %14, 1610547455, !dbg !1069
  %or.i = or i32 %and.i, 17408, !dbg !1069
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !1069
  br label %new_opset.exit

new_opset.exit:                                   ; preds = %verify_opset.exit.i, %if.else.i
  %opset.0.i = phi ptr [ %call1.i, %verify_opset.exit.i ], [ %call2.i, %if.else.i ], !dbg !1070
  call void @llvm.dbg.value(metadata ptr %opset.0.i, metadata !762, metadata !DIExpression()) #7, !dbg !1049
  %call2 = tail call ptr @Perl_sv_2mortal(ptr noundef %opset.0.i) #7, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1032, metadata !DIExpression()), !dbg !1046
  %sv_u = getelementptr inbounds %struct.sv, ptr %call2, i64 0, i32 3, !dbg !1072
  %15 = load ptr, ptr %sv_u, align 8, !dbg !1072
  call void @llvm.dbg.value(metadata ptr %15, metadata !1034, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %7, metadata !1036, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %7, metadata !1036, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1048
  %cmp3.not36 = icmp eq i64 %7, 0, !dbg !1073
  br i1 %cmp3.not36, label %while.end, label %while.body, !dbg !1074

while.body:                                       ; preds = %new_opset.exit, %while.body
  %len.037 = phi i64 [ %dec, %while.body ], [ %7, %new_opset.exit ]
  call void @llvm.dbg.value(metadata i64 %len.037, metadata !1036, metadata !DIExpression()), !dbg !1048
  %dec = add i64 %len.037, -1, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1036, metadata !DIExpression()), !dbg !1048
  %arrayidx5 = getelementptr inbounds i8, ptr %15, i64 %dec, !dbg !1076
  %16 = load i8, ptr %arrayidx5, align 1, !dbg !1076
  %17 = xor i8 %16, -1, !dbg !1077
  store i8 %17, ptr %arrayidx5, align 1, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1036, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1048
  %cmp3.not = icmp eq i64 %dec, 0, !dbg !1073
  br i1 %cmp3.not, label %while.end, label %while.body, !dbg !1074, !llvm.loop !1079

while.end:                                        ; preds = %while.body, %new_opset.exit
  %18 = load i32, ptr @PL_maxo, align 4, !dbg !1081
  %and = and i32 %18, 7, !dbg !1083
  %tobool.not = icmp eq i32 %and, 0, !dbg !1083
  br i1 %tobool.not, label %if.end16, label %if.then9, !dbg !1084

if.then9:                                         ; preds = %while.end
  %shl = shl nuw nsw i32 255, %and, !dbg !1085
  %19 = load i64, ptr @my_cxt.2, align 8, !dbg !1086
  %sub = add nsw i64 %19, -1, !dbg !1087
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 %sub, !dbg !1088
  %20 = load i8, ptr %arrayidx12, align 1, !dbg !1089
  %21 = trunc i32 %shl to i8, !dbg !1089
  %22 = xor i8 %21, -1, !dbg !1089
  %conv15 = and i8 %20, %22, !dbg !1089
  store i8 %conv15, ptr %arrayidx12, align 1, !dbg !1089
  br label %if.end16, !dbg !1088

if.end16:                                         ; preds = %if.then9, %while.end
  %23 = load ptr, ptr @PL_stack_base, align 8, !dbg !1090
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 %idxprom, !dbg !1090
  store ptr %call2, ptr %arrayidx19, align 8, !dbg !1091
  call void @llvm.dbg.value(metadata i64 1, metadata !1037, metadata !DIExpression()), !dbg !1092
  %24 = load ptr, ptr @PL_stack_base, align 8, !dbg !1093
  %add.ptr21 = getelementptr inbounds ptr, ptr %24, i64 %idxprom, !dbg !1093
  store ptr %add.ptr21, ptr @PL_stack_sp, align 8, !dbg !1093
  ret void, !dbg !1094
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_opset_to_ops(ptr noundef %cv) #0 !dbg !1095 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1097, metadata !DIExpression()), !dbg !1117
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %0, metadata !1098, metadata !DIExpression()), !dbg !1117
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1118
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1118
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1118
  %2 = load i32, ptr %1, align 4, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %2, metadata !1099, metadata !DIExpression()), !dbg !1117
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1118
  %inc = add nsw i32 %2, 1, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1099, metadata !DIExpression()), !dbg !1117
  %idx.ext = sext i32 %2 to i64, !dbg !1118
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1100, metadata !DIExpression()), !dbg !1117
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1118
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1118
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1118
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1118
  %conv = trunc i64 %4 to i32, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1101, metadata !DIExpression()), !dbg !1117
  %5 = add i32 %conv, -3, !dbg !1119
  %6 = icmp ult i32 %5, -2, !dbg !1119
  br i1 %6, label %if.then, label %if.end, !dbg !1119

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.41) #7, !dbg !1121
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1122
  br label %if.end, !dbg !1121

if.end:                                           ; preds = %entry, %if.then
  %7 = phi ptr [ %3, %entry ], [ %.pre, %if.then ], !dbg !1122
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !1123
  %idx.ext4 = ashr i64 %sext, 32, !dbg !1123
  %idx.neg = sub nsw i64 0, %idx.ext4, !dbg !1123
  %add.ptr5 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !1123
  call void @llvm.dbg.value(metadata ptr %add.ptr5, metadata !1098, metadata !DIExpression()), !dbg !1117
  %idxprom = sext i32 %inc to i64, !dbg !1122
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !1122
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %8, metadata !1102, metadata !DIExpression()), !dbg !1124
  %cmp6 = icmp slt i32 %conv, 2, !dbg !1125
  br i1 %cmp6, label %if.end21, label %if.else, !dbg !1127

if.else:                                          ; preds = %if.end
  %add9 = add nsw i32 %2, 2, !dbg !1128
  %idxprom10 = sext i32 %add9 to i64, !dbg !1128
  %arrayidx11 = getelementptr inbounds ptr, ptr %7, i64 %idxprom10, !dbg !1128
  %9 = load ptr, ptr %arrayidx11, align 8, !dbg !1128
  %sv_flags = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2, !dbg !1128
  %10 = load i32, ptr %sv_flags, align 4, !dbg !1128
  %and = and i32 %10, 2097408, !dbg !1128
  %cmp12 = icmp eq i32 %and, 256, !dbg !1128
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !1128

cond.true:                                        ; preds = %if.else
  %11 = load ptr, ptr %9, align 8, !dbg !1128
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %11, i64 0, i32 4, !dbg !1128
  %12 = load i64, ptr %xiv_u, align 8, !dbg !1128
  br label %cond.end, !dbg !1128

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %9, i32 noundef 2) #7, !dbg !1128
  br label %cond.end, !dbg !1128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %call, %cond.false ], !dbg !1128
  %conv20 = trunc i64 %cond to i32, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !1104, metadata !DIExpression()), !dbg !1124
  br label %if.end21

if.end21:                                         ; preds = %if.end, %cond.end
  %desc.0 = phi i32 [ %conv20, %cond.end ], [ 0, %if.end ], !dbg !1131
  call void @llvm.dbg.value(metadata i32 %desc.0, metadata !1104, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1132
  %sv_flags22 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !1133
  %13 = load i32, ptr %sv_flags22, align 4, !dbg !1133
  %and23 = and i32 %13, 2098176, !dbg !1133
  %cmp24 = icmp eq i32 %and23, 1024, !dbg !1133
  br i1 %cmp24, label %cond.true26, label %cond.false28, !dbg !1133

cond.true26:                                      ; preds = %if.end21
  %14 = load ptr, ptr %8, align 8, !dbg !1133
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2, !dbg !1133
  %15 = load i64, ptr %xpv_cur, align 8, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %15, metadata !1105, metadata !DIExpression()), !dbg !1134
  store i64 %15, ptr %len, align 8, !dbg !1133
  %sv_u = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3, !dbg !1133
  %16 = load ptr, ptr %sv_u, align 8, !dbg !1133
  br label %cond.end30, !dbg !1133

cond.false28:                                     ; preds = %if.end21
  call void @llvm.dbg.value(metadata ptr %len, metadata !1105, metadata !DIExpression(DW_OP_deref)), !dbg !1134
  %call29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %8, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1133
  br label %cond.end30, !dbg !1133

cond.end30:                                       ; preds = %cond.false28, %cond.true26
  %cond31 = phi ptr [ %16, %cond.true26 ], [ %call29, %cond.false28 ], !dbg !1133
  call void @llvm.dbg.value(metadata ptr %cond31, metadata !1110, metadata !DIExpression()), !dbg !1134
  %tobool.not = icmp eq i32 %desc.0, 0, !dbg !1135
  br i1 %tobool.not, label %cond.false34, label %cond.true32, !dbg !1135

cond.true32:                                      ; preds = %cond.end30
  %call33 = call ptr @Perl_get_op_descs() #7, !dbg !1136
  br label %cond.end36, !dbg !1135

cond.false34:                                     ; preds = %cond.end30
  %call35 = call ptr @Perl_get_op_names() #7, !dbg !1137
  br label %cond.end36, !dbg !1135

cond.end36:                                       ; preds = %cond.false34, %cond.true32
  %cond37 = phi ptr [ %call33, %cond.true32 ], [ %call35, %cond.false34 ], !dbg !1135
  call void @llvm.dbg.value(metadata ptr %cond37, metadata !1111, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %8, metadata !988, metadata !DIExpression()) #7, !dbg !1138
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1138
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1138
  %17 = load i32, ptr %sv_flags22, align 4, !dbg !1140
  %and.i = and i32 %17, 65280, !dbg !1140
  %tobool.not.i = icmp ne i32 %and.i, 0, !dbg !1140
  %and2.i = and i32 %17, 255, !dbg !1140
  %cmp.i = icmp eq i32 %and2.i, 8, !dbg !1140
  %or.cond27.i = or i1 %tobool.not.i, %cmp.i, !dbg !1140
  %and5.i = and i32 %17, 16826623, !dbg !1140
  %cmp6.i = icmp eq i32 %and5.i, 16777226, !dbg !1140
  %or.cond28.i = select i1 %or.cond27.i, i1 true, i1 %cmp6.i, !dbg !1140
  br i1 %or.cond28.i, label %if.else.i, label %if.then18.i, !dbg !1140

if.else.i:                                        ; preds = %cond.end36
  %and8.i = and i32 %17, 1024, !dbg !1141
  %tobool9.not.i = icmp eq i32 %and8.i, 0, !dbg !1141
  br i1 %tobool9.not.i, label %if.then18.i, label %if.end15.i, !dbg !1142

if.end15.i:                                       ; preds = %if.else.i
  %18 = load ptr, ptr %8, align 8, !dbg !1143
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2, !dbg !1143
  %19 = load i64, ptr %xpv_cur.i, align 8, !dbg !1143
  %20 = load i64, ptr @my_cxt.2, align 8, !dbg !1144
  %cmp12.not.i = icmp eq i64 %19, %20, !dbg !1145
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1138
  br i1 %cmp12.not.i, label %verify_opset.exit, label %if.then18.i, !dbg !1146

if.then18.i:                                      ; preds = %if.else.i, %cond.end36, %if.end15.i
  %err.0.i113 = phi ptr [ @.str.37, %if.end15.i ], [ @.str.36, %if.else.i ], [ @.str.35, %cond.end36 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i113) #7, !dbg !1147
  %.pre131 = load i64, ptr @my_cxt.2, align 8, !dbg !1148
  br label %verify_opset.exit, !dbg !1149

verify_opset.exit:                                ; preds = %if.end15.i, %if.then18.i
  %21 = phi i64 [ %19, %if.end15.i ], [ %.pre131, %if.then18.i ], !dbg !1148
  call void @llvm.dbg.value(metadata i32 0, metadata !1109, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %add.ptr5, metadata !1098, metadata !DIExpression()), !dbg !1117
  %cmp40121 = icmp sgt i64 %21, 0, !dbg !1150
  br i1 %cmp40121, label %for.body.preheader, label %for.end81, !dbg !1151

for.body.preheader:                               ; preds = %verify_opset.exit
  %.pre132 = load i32, ptr @PL_maxo, align 4
  br label %for.body, !dbg !1151

for.body:                                         ; preds = %for.body.preheader, %for.end
  %22 = phi i64 [ %21, %for.body.preheader ], [ %33, %for.end ]
  %23 = phi i32 [ %.pre132, %for.body.preheader ], [ %34, %for.end ]
  %24 = phi i32 [ %.pre132, %for.body.preheader ], [ %35, %for.end ]
  %indvars.iv128 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next129, %for.end ]
  %sp.0124 = phi ptr [ %add.ptr5, %for.body.preheader ], [ %sp.1.lcssa, %for.end ]
  %myopcode.0123 = phi i32 [ 0, %for.body.preheader ], [ %myopcode.1.lcssa, %for.end ]
  call void @llvm.dbg.value(metadata ptr %sp.0124, metadata !1098, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 %myopcode.0123, metadata !1109, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %indvars.iv128, metadata !1107, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 undef, metadata !1112, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_stack_value)), !dbg !1152
  call void @llvm.dbg.value(metadata i32 0, metadata !1108, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %sp.0124, metadata !1098, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 %myopcode.0123, metadata !1109, metadata !DIExpression()), !dbg !1134
  %cmp48114 = icmp slt i32 %myopcode.0123, %24
  br i1 %cmp48114, label %for.body50.lr.ph, label %for.end, !dbg !1153

for.body50.lr.ph:                                 ; preds = %for.body
  %arrayidx43 = getelementptr inbounds i8, ptr %cond31, i64 %indvars.iv128, !dbg !1156
  %25 = load i8, ptr %arrayidx43, align 1, !dbg !1156
  call void @llvm.dbg.value(metadata i8 %25, metadata !1112, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_stack_value)), !dbg !1152
  %conv44 = sext i8 %25 to i32, !dbg !1156
  %conv51 = and i32 %conv44, 65535
  %26 = sext i32 %myopcode.0123 to i64, !dbg !1153
  br label %for.body50, !dbg !1153

for.body50:                                       ; preds = %for.body50.lr.ph, %for.inc
  %27 = phi i32 [ %23, %for.body50.lr.ph ], [ %30, %for.inc ]
  %indvars.iv = phi i64 [ %26, %for.body50.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %sp.1119 = phi ptr [ %sp.0124, %for.body50.lr.ph ], [ %sp.3, %for.inc ]
  %j.0116 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc77, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %sp.1119, metadata !1098, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1109, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 %j.0116, metadata !1108, metadata !DIExpression()), !dbg !1134
  %shl = shl nuw nsw i32 1, %j.0116, !dbg !1157
  %and52 = and i32 %conv51, %shl, !dbg !1160
  %tobool53.not = icmp eq i32 %and52, 0, !dbg !1160
  br i1 %tobool53.not, label %for.inc, label %do.body55, !dbg !1161

do.body55:                                        ; preds = %for.body50
  %28 = load ptr, ptr @PL_stack_max, align 8, !dbg !1162
  %sub.ptr.lhs.cast56 = ptrtoint ptr %28 to i64, !dbg !1162
  %sub.ptr.rhs.cast57 = ptrtoint ptr %sp.1119 to i64, !dbg !1162
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57, !dbg !1162
  %cmp60 = icmp slt i64 %sub.ptr.sub58, 8, !dbg !1162
  br i1 %cmp60, label %if.then64, label %do.end, !dbg !1166

if.then64:                                        ; preds = %do.body55
  %call65 = call ptr @Perl_stack_grow(ptr noundef %sp.1119, ptr noundef %sp.1119, i64 noundef 1) #7, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %call65, metadata !1098, metadata !DIExpression()), !dbg !1117
  br label %do.end, !dbg !1167

do.end:                                           ; preds = %do.body55, %if.then64
  %sp.2 = phi ptr [ %call65, %if.then64 ], [ %sp.1119, %do.body55 ], !dbg !1117
  call void @llvm.dbg.value(metadata ptr %sp.2, metadata !1098, metadata !DIExpression()), !dbg !1117
  %arrayidx68 = getelementptr inbounds ptr, ptr %cond37, i64 %indvars.iv, !dbg !1169
  %29 = load ptr, ptr %arrayidx68, align 8, !dbg !1169
  %call71 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #8, !dbg !1169
  %call72 = call ptr @Perl_newSVpvn_flags(ptr noundef %29, i64 noundef %call71, i32 noundef 524288) #7, !dbg !1169
  %incdec.ptr73 = getelementptr inbounds ptr, ptr %sp.2, i64 1, !dbg !1169
  call void @llvm.dbg.value(metadata ptr %incdec.ptr73, metadata !1098, metadata !DIExpression()), !dbg !1117
  store ptr %call72, ptr %incdec.ptr73, align 8, !dbg !1169
  %.pre133 = load i32, ptr @PL_maxo, align 4
  br label %for.inc, !dbg !1169

for.inc:                                          ; preds = %for.body50, %do.end
  %30 = phi i32 [ %.pre133, %do.end ], [ %27, %for.body50 ]
  %sp.3 = phi ptr [ %incdec.ptr73, %do.end ], [ %sp.1119, %for.body50 ], !dbg !1117
  call void @llvm.dbg.value(metadata ptr %sp.3, metadata !1098, metadata !DIExpression()), !dbg !1117
  %inc77 = add nuw nsw i32 %j.0116, 1, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %inc77, metadata !1108, metadata !DIExpression()), !dbg !1134
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1109, metadata !DIExpression()), !dbg !1134
  %cmp46 = icmp ult i32 %j.0116, 7, !dbg !1172
  %31 = sext i32 %30 to i64
  %cmp48 = icmp slt i64 %indvars.iv.next, %31
  %or.cond = select i1 %cmp46, i1 %cmp48, i1 false, !dbg !1153
  br i1 %or.cond, label %for.body50, label %for.end.loopexit, !dbg !1153, !llvm.loop !1173

for.end.loopexit:                                 ; preds = %for.inc
  %32 = trunc i64 %indvars.iv.next to i32, !dbg !1176
  %.pre134 = load i64, ptr @my_cxt.2, align 8, !dbg !1148
  br label %for.end, !dbg !1176

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %33 = phi i64 [ %22, %for.body ], [ %.pre134, %for.end.loopexit ], !dbg !1148
  %34 = phi i32 [ %23, %for.body ], [ %30, %for.end.loopexit ]
  %35 = phi i32 [ %24, %for.body ], [ %30, %for.end.loopexit ]
  %myopcode.1.lcssa = phi i32 [ %myopcode.0123, %for.body ], [ %32, %for.end.loopexit ], !dbg !1177
  %sp.1.lcssa = phi ptr [ %sp.0124, %for.body ], [ %sp.3, %for.end.loopexit ], !dbg !1117
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %sp.1.lcssa, metadata !1098, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 %myopcode.1.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next129, metadata !1107, metadata !DIExpression()), !dbg !1134
  %cmp40 = icmp sgt i64 %33, %indvars.iv.next129, !dbg !1150
  br i1 %cmp40, label %for.body, label %for.end81, !dbg !1151, !llvm.loop !1178

for.end81:                                        ; preds = %for.end, %verify_opset.exit
  %sp.0.lcssa = phi ptr [ %add.ptr5, %verify_opset.exit ], [ %sp.1.lcssa, %for.end ], !dbg !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1180
  store ptr %sp.0.lcssa, ptr @PL_stack_sp, align 8, !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_opset(ptr nocapture noundef readnone %cv) #0 !dbg !1183 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1185, metadata !DIExpression()), !dbg !1204
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %0, metadata !1186, metadata !DIExpression()), !dbg !1204
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1205
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1205
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1205
  %2 = load i32, ptr %1, align 4, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %2, metadata !1187, metadata !DIExpression()), !dbg !1204
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1205
  %inc = add nsw i32 %2, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1187, metadata !DIExpression()), !dbg !1204
  %idx.ext = sext i32 %2 to i64, !dbg !1205
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1188, metadata !DIExpression()), !dbg !1204
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1205
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1205
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1205
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1205
  %conv = trunc i64 %4 to i32, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1189, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1206
  call void @llvm.dbg.value(metadata ptr null, metadata !757, metadata !DIExpression()) #7, !dbg !1207
  %5 = load i64, ptr @my_cxt.2, align 8, !dbg !1209
  %call2.i = tail call ptr @Perl_newSV(i64 noundef %5) #7, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1207
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 3, !dbg !1210
  %6 = load ptr, ptr %sv_u.i, align 8, !dbg !1210
  %7 = load i64, ptr @my_cxt.2, align 8, !dbg !1210
  %add.i = add nsw i64 %7, 1, !dbg !1210
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %add.i, i1 false) #7, !dbg !1210
  %8 = load ptr, ptr %call2.i, align 8, !dbg !1211
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1211
  store i64 %7, ptr %xpv_cur.i, align 8, !dbg !1211
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !1212
  %9 = load i32, ptr %sv_flags.i, align 4, !dbg !1212
  %and.i = and i32 %9, 1610547455, !dbg !1212
  %or.i = or i32 %and.i, 17408, !dbg !1212
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !1212
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1207
  %call1 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %call2.i) #7, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1195, metadata !DIExpression()), !dbg !1214
  %sv_u = getelementptr inbounds %struct.sv, ptr %call1, i64 0, i32 3, !dbg !1215
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %10, metadata !1196, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32 0, metadata !1190, metadata !DIExpression()), !dbg !1214
  %cmp66 = icmp sgt i32 %conv, 0, !dbg !1216
  %11 = sext i32 %inc to i64, !dbg !1214
  br i1 %cmp66, label %for.body.preheader, label %for.end, !dbg !1217

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %4, 4294967295, !dbg !1216
  br label %for.body, !dbg !1217

for.body:                                         ; preds = %for.body.preheader, %if.end29
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end29 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1190, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 1, metadata !1194, metadata !DIExpression()), !dbg !1214
  %12 = load ptr, ptr @PL_stack_base, align 8, !dbg !1218
  %13 = add nsw i64 %indvars.iv, %11, !dbg !1218
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !1218
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %14, metadata !988, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i32 0, metadata !993, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()), !dbg !1220
  %sv_flags.i60 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2, !dbg !1222
  %15 = load i32, ptr %sv_flags.i60, align 4, !dbg !1222
  %and.i61 = and i32 %15, 65280, !dbg !1222
  %tobool.not.i = icmp eq i32 %and.i61, 0, !dbg !1222
  %and2.i = and i32 %15, 255, !dbg !1222
  %cmp.i = icmp ne i32 %and2.i, 8, !dbg !1222
  %and5.i = and i32 %15, 16826623, !dbg !1222
  %cmp6.i = icmp ne i32 %and5.i, 16777226, !dbg !1222
  %not.or.cond27.i = and i1 %tobool.not.i, %cmp.i, !dbg !1222
  %or.cond28.i = select i1 %not.or.cond27.i, i1 %cmp6.i, i1 false, !dbg !1222
  %and8.i = and i32 %15, 1024
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond = select i1 %or.cond28.i, i1 true, i1 %tobool9.not.i, !dbg !1222
  br i1 %or.cond, label %if.else, label %verify_opset.exit, !dbg !1222

verify_opset.exit:                                ; preds = %for.body
  %16 = load ptr, ptr %14, align 8, !dbg !1223
  %xpv_cur.i62 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2, !dbg !1223
  %17 = load i64, ptr %xpv_cur.i62, align 8, !dbg !1223
  %18 = load i64, ptr @my_cxt.2, align 8, !dbg !1224
  %cmp12.not.i.not = icmp eq i64 %17, %18, !dbg !1225
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()), !dbg !1220
  br i1 %cmp12.not.i.not, label %if.end29, label %if.else, !dbg !1226

if.else:                                          ; preds = %for.body, %verify_opset.exit
  %and = and i32 %15, 2098176, !dbg !1227
  %cmp10 = icmp eq i32 %and, 1024, !dbg !1227
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !1227

cond.true:                                        ; preds = %if.else
  %19 = load ptr, ptr %14, align 8, !dbg !1227
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2, !dbg !1227
  %20 = load i64, ptr %xpv_cur, align 8, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %20, metadata !1193, metadata !DIExpression()), !dbg !1214
  store i64 %20, ptr %len, align 8, !dbg !1227
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !1227
  %sv_u18 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3, !dbg !1227
  %22 = load ptr, ptr %sv_u18, align 8, !dbg !1227
  br label %cond.end, !dbg !1227

cond.false:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %len, metadata !1193, metadata !DIExpression(DW_OP_deref)), !dbg !1214
  %call22 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %14, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1227
  br label %cond.end, !dbg !1227

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %22, %cond.true ], [ %call22, %cond.false ], !dbg !1227
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1198, metadata !DIExpression()), !dbg !1229
  %23 = load i8, ptr %cond, align 1, !dbg !1230
  %cmp24 = icmp eq i8 %23, 33, !dbg !1232
  br i1 %cmp24, label %if.then26, label %cond.end.if.end_crit_edge, !dbg !1233

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  %.pre = load i64, ptr %len, align 8, !dbg !1234
  br label %if.end, !dbg !1233

if.then26:                                        ; preds = %cond.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1194, metadata !DIExpression()), !dbg !1214
  %incdec.ptr27 = getelementptr inbounds i8, ptr %cond, i64 1, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %incdec.ptr27, metadata !1198, metadata !DIExpression()), !dbg !1229
  %24 = load i64, ptr %len, align 8, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %24, metadata !1193, metadata !DIExpression()), !dbg !1214
  %dec = add i64 %24, -1, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1193, metadata !DIExpression()), !dbg !1214
  store i64 %dec, ptr %len, align 8, !dbg !1237
  br label %if.end, !dbg !1238

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.then26
  %25 = phi i64 [ %dec, %if.then26 ], [ %.pre, %cond.end.if.end_crit_edge ], !dbg !1234
  %on.0 = phi i32 [ 0, %if.then26 ], [ 1, %cond.end.if.end_crit_edge ], !dbg !1229
  %opname.0 = phi ptr [ %incdec.ptr27, %if.then26 ], [ %cond, %cond.end.if.end_crit_edge ], !dbg !1239
  call void @llvm.dbg.value(metadata ptr %opname.0, metadata !1198, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 undef, metadata !1194, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %25, metadata !1193, metadata !DIExpression()), !dbg !1214
  %call28 = call fastcc ptr @get_op_bitspec(ptr noundef nonnull %opname.0, i64 noundef %25), !dbg !1240
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1192, metadata !DIExpression()), !dbg !1214
  br label %if.end29

if.end29:                                         ; preds = %verify_opset.exit, %if.end
  %on.1 = phi i32 [ %on.0, %if.end ], [ 1, %verify_opset.exit ], !dbg !1229
  %bitspec.0 = phi ptr [ %call28, %if.end ], [ %14, %verify_opset.exit ], !dbg !1241
  %opname.1 = phi ptr [ %opname.0, %if.end ], [ @.str.42, %verify_opset.exit ], !dbg !1241
  call void @llvm.dbg.value(metadata ptr %opname.1, metadata !1198, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %bitspec.0, metadata !1192, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 undef, metadata !1194, metadata !DIExpression()), !dbg !1214
  call fastcc void @set_opset_bits(ptr noundef %10, ptr noundef %bitspec.0, i32 noundef %on.1, ptr noundef nonnull %opname.1), !dbg !1242
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1190, metadata !DIExpression()), !dbg !1214
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1216
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1217, !llvm.loop !1244

for.end:                                          ; preds = %if.end29, %entry
  %26 = load ptr, ptr @PL_stack_base, align 8, !dbg !1246
  %arrayidx34 = getelementptr inbounds ptr, ptr %26, i64 %11, !dbg !1246
  store ptr %call1, ptr %arrayidx34, align 8, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1248
  call void @llvm.dbg.value(metadata i64 1, metadata !1202, metadata !DIExpression()), !dbg !1249
  %27 = load ptr, ptr @PL_stack_base, align 8, !dbg !1250
  %add.ptr36 = getelementptr inbounds ptr, ptr %27, i64 %11, !dbg !1250
  store ptr %add.ptr36, ptr @PL_stack_sp, align 8, !dbg !1250
  ret void, !dbg !1251
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_permit_only(ptr noundef %cv) #0 !dbg !1252 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1254, metadata !DIExpression()), !dbg !1274
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1275
  call void @llvm.dbg.value(metadata ptr %0, metadata !1255, metadata !DIExpression()), !dbg !1274
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1275
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1275
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1275
  %2 = load i32, ptr %1, align 4, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %2, metadata !1256, metadata !DIExpression()), !dbg !1274
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1275
  %inc = add nsw i32 %2, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1256, metadata !DIExpression()), !dbg !1274
  %idx.ext = sext i32 %2 to i64, !dbg !1275
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1275
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1257, metadata !DIExpression()), !dbg !1274
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1275
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1275
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1275
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1275
  %conv = trunc i64 %4 to i32, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1258, metadata !DIExpression()), !dbg !1274
  %5 = load ptr, ptr %cv, align 8, !dbg !1276
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5, !dbg !1276
  %6 = load i32, ptr %xcv_start_u, align 8, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %6, metadata !1259, metadata !DIExpression()), !dbg !1274
  %cmp = icmp slt i32 %conv, 1, !dbg !1277
  br i1 %cmp, label %if.then, label %if.end, !dbg !1279

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %cv, ptr noundef nonnull @.str.53) #7, !dbg !1280
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1281
  br label %if.end, !dbg !1280

if.end:                                           ; preds = %if.then, %entry
  %7 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !1281
  %idxprom = sext i32 %inc to i64, !dbg !1281
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !1281
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata ptr %8, metadata !1260, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1283
  %sv_flags = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !1284
  %9 = load i32, ptr %sv_flags, align 4, !dbg !1284
  %and = and i32 %9, 2048, !dbg !1284
  %tobool.not = icmp eq i32 %and, 0, !dbg !1284
  br i1 %tobool.not, label %if.then11, label %lor.lhs.false, !dbg !1286

lor.lhs.false:                                    ; preds = %if.end
  %sv_u = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3, !dbg !1287
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1287
  %sv_flags2 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2, !dbg !1287
  %11 = load i32, ptr %sv_flags2, align 4, !dbg !1287
  %12 = and i32 %11, 1048831, !dbg !1288
  %13 = icmp eq i32 %12, 1048588, !dbg !1288
  br i1 %13, label %if.end12, label %if.then11, !dbg !1288

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #7, !dbg !1289
  %sv_u13.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %.pre167 = load ptr, ptr %sv_u13.phi.trans.insert, align 8, !dbg !1290
  br label %if.end12, !dbg !1289

if.end12:                                         ; preds = %lor.lhs.false, %if.then11
  %14 = phi ptr [ %10, %lor.lhs.false ], [ %.pre167, %if.then11 ], !dbg !1290
  %call = tail call ptr @Perl_hv_common_key_len(ptr noundef %14, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 48, ptr noundef null, i32 noundef 0) #7, !dbg !1290
  %15 = load ptr, ptr %call, align 8, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %15, metadata !1264, metadata !DIExpression()), !dbg !1282
  %16 = and i32 %6, -3, !dbg !1292
  %17 = icmp eq i32 %16, 0, !dbg !1292
  br i1 %17, label %if.then19, label %if.else, !dbg !1292

if.then19:                                        ; preds = %if.end12
  %18 = icmp ugt i32 %6, 1, !dbg !1294
  %19 = load ptr, ptr @my_cxt.1, align 8
  call void @llvm.dbg.value(metadata ptr undef, metadata !757, metadata !DIExpression()) #7, !dbg !1295
  %tobool.not.i161 = icmp eq ptr %19, null, !dbg !1297
  %tobool.not.i = select i1 %18, i1 true, i1 %tobool.not.i161, !dbg !1297
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1298

if.then.i:                                        ; preds = %if.then19
  call void @llvm.dbg.value(metadata ptr %19, metadata !988, metadata !DIExpression()) #7, !dbg !1299
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1299
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1299
  %sv_flags.i.i = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2, !dbg !1301
  %20 = load i32, ptr %sv_flags.i.i, align 4, !dbg !1301
  %and.i.i = and i32 %20, 65280, !dbg !1301
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0, !dbg !1301
  %and2.i.i = and i32 %20, 255, !dbg !1301
  %cmp.i.i = icmp eq i32 %and2.i.i, 8, !dbg !1301
  %or.cond27.i.i = or i1 %tobool.not.i.i, %cmp.i.i, !dbg !1301
  %and5.i.i = and i32 %20, 16826623, !dbg !1301
  %cmp6.i.i = icmp eq i32 %and5.i.i, 16777226, !dbg !1301
  %or.cond28.i.i = select i1 %or.cond27.i.i, i1 true, i1 %cmp6.i.i, !dbg !1301
  br i1 %or.cond28.i.i, label %if.else.i.i, label %if.then18.i.i, !dbg !1301

if.else.i.i:                                      ; preds = %if.then.i
  %and8.i.i = and i32 %20, 1024, !dbg !1302
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0, !dbg !1302
  br i1 %tobool9.not.i.i, label %if.then18.i.i, label %if.end15.i.i, !dbg !1303

if.end15.i.i:                                     ; preds = %if.else.i.i
  %21 = load ptr, ptr %19, align 8, !dbg !1304
  %xpv_cur.i.i = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2, !dbg !1304
  %22 = load i64, ptr %xpv_cur.i.i, align 8, !dbg !1304
  %23 = load i64, ptr @my_cxt.2, align 8, !dbg !1305
  %cmp12.not.i.i = icmp eq i64 %22, %23, !dbg !1306
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1299
  br i1 %cmp12.not.i.i, label %verify_opset.exit.i, label %if.then18.i.i, !dbg !1307

if.then18.i.i:                                    ; preds = %if.end15.i.i, %if.else.i.i, %if.then.i
  %err.0.i14.i = phi ptr [ @.str.37, %if.end15.i.i ], [ @.str.36, %if.else.i.i ], [ @.str.35, %if.then.i ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i14.i) #7, !dbg !1308
  br label %verify_opset.exit.i, !dbg !1309

verify_opset.exit.i:                              ; preds = %if.then18.i.i, %if.end15.i.i
  %call1.i = tail call ptr @Perl_newSVsv(ptr noundef nonnull %19) #7, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !762, metadata !DIExpression()) #7, !dbg !1295
  br label %new_opset.exit, !dbg !1311

if.else.i:                                        ; preds = %if.then19
  %24 = load i64, ptr @my_cxt.2, align 8, !dbg !1312
  %call2.i = tail call ptr @Perl_newSV(i64 noundef %24) #7, !dbg !1312
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1295
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 3, !dbg !1313
  %25 = load ptr, ptr %sv_u.i, align 8, !dbg !1313
  %26 = load i64, ptr @my_cxt.2, align 8, !dbg !1313
  %add.i = add nsw i64 %26, 1, !dbg !1313
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %add.i, i1 false) #7, !dbg !1313
  %27 = load ptr, ptr %call2.i, align 8, !dbg !1314
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2, !dbg !1314
  store i64 %26, ptr %xpv_cur.i, align 8, !dbg !1314
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !1315
  %28 = load i32, ptr %sv_flags.i, align 4, !dbg !1315
  %and.i = and i32 %28, 1610547455, !dbg !1315
  %or.i = or i32 %and.i, 17408, !dbg !1315
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !1315
  br label %new_opset.exit

new_opset.exit:                                   ; preds = %verify_opset.exit.i, %if.else.i
  %opset.0.i = phi ptr [ %call1.i, %verify_opset.exit.i ], [ %call2.i, %if.else.i ], !dbg !1316
  call void @llvm.dbg.value(metadata ptr %opset.0.i, metadata !762, metadata !DIExpression()) #7, !dbg !1295
  %call26 = tail call ptr @Perl_sv_2mortal(ptr noundef %opset.0.i) #7, !dbg !1294
  tail call void @Perl_sv_setsv_flags(ptr noundef %15, ptr noundef %call26, i32 noundef 2) #7, !dbg !1294
  br label %if.end28, !dbg !1294

if.else:                                          ; preds = %if.end12
  call void @llvm.dbg.value(metadata ptr %15, metadata !988, metadata !DIExpression()) #7, !dbg !1317
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1317
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1317
  %sv_flags.i124 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2, !dbg !1319
  %29 = load i32, ptr %sv_flags.i124, align 4, !dbg !1319
  %and.i125 = and i32 %29, 65280, !dbg !1319
  %tobool.not.i126 = icmp ne i32 %and.i125, 0, !dbg !1319
  %and2.i = and i32 %29, 255, !dbg !1319
  %cmp.i = icmp eq i32 %and2.i, 8, !dbg !1319
  %or.cond27.i = or i1 %tobool.not.i126, %cmp.i, !dbg !1319
  %and5.i = and i32 %29, 16826623, !dbg !1319
  %cmp6.i = icmp eq i32 %and5.i, 16777226, !dbg !1319
  %or.cond28.i = select i1 %or.cond27.i, i1 true, i1 %cmp6.i, !dbg !1319
  br i1 %or.cond28.i, label %if.else.i127, label %if.then18.i, !dbg !1319

if.else.i127:                                     ; preds = %if.else
  %and8.i = and i32 %29, 1024, !dbg !1320
  %tobool9.not.i = icmp eq i32 %and8.i, 0, !dbg !1320
  br i1 %tobool9.not.i, label %if.then18.i, label %if.end15.i, !dbg !1321

if.end15.i:                                       ; preds = %if.else.i127
  %30 = load ptr, ptr %15, align 8, !dbg !1322
  %xpv_cur.i128 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2, !dbg !1322
  %31 = load i64, ptr %xpv_cur.i128, align 8, !dbg !1322
  %32 = load i64, ptr @my_cxt.2, align 8, !dbg !1323
  %cmp12.not.i = icmp eq i64 %31, %32, !dbg !1324
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1317
  br i1 %cmp12.not.i, label %if.end28, label %if.then18.i, !dbg !1325

if.then18.i:                                      ; preds = %if.else.i127, %if.else, %if.end15.i
  %err.0.i156 = phi ptr [ @.str.37, %if.end15.i ], [ @.str.36, %if.else.i127 ], [ @.str.35, %if.else ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i156) #7, !dbg !1326
  br label %if.end28, !dbg !1327

if.end28:                                         ; preds = %if.then18.i, %if.end15.i, %new_opset.exit
  %sv_u29 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3, !dbg !1328
  %33 = load ptr, ptr %sv_u29, align 8, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %33, metadata !1265, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()), !dbg !1282
  %cmp30163 = icmp sgt i32 %conv, 1, !dbg !1329
  br i1 %cmp30163, label %for.body.lr.ph, label %for.end, !dbg !1330

for.body.lr.ph:                                   ; preds = %if.end28
  %34 = icmp ult i32 %6, 2
  %not. = xor i1 %34, true
  %cond36 = zext i1 %not. to i32
  %lnot.ext = zext i1 %34 to i32
  %wide.trip.count = and i64 %4, 4294967295, !dbg !1329
  br label %for.body, !dbg !1330

for.body:                                         ; preds = %for.body.lr.ph, %if.end78
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %if.end78 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1262, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 %cond36, metadata !1271, metadata !DIExpression()), !dbg !1331
  %35 = load ptr, ptr @PL_stack_base, align 8, !dbg !1332
  %36 = add nsw i64 %indvars.iv, %idxprom, !dbg !1332
  %arrayidx39 = getelementptr inbounds ptr, ptr %35, i64 %36, !dbg !1332
  %37 = load ptr, ptr %arrayidx39, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata ptr %37, metadata !988, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 0, metadata !993, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()), !dbg !1334
  %sv_flags.i129 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2, !dbg !1336
  %38 = load i32, ptr %sv_flags.i129, align 4, !dbg !1336
  %and.i130 = and i32 %38, 65280, !dbg !1336
  %tobool.not.i131 = icmp eq i32 %and.i130, 0, !dbg !1336
  %and2.i132 = and i32 %38, 255, !dbg !1336
  %cmp.i133 = icmp ne i32 %and2.i132, 8, !dbg !1336
  %and5.i135 = and i32 %38, 16826623, !dbg !1336
  %cmp6.i136 = icmp ne i32 %and5.i135, 16777226, !dbg !1336
  %not.or.cond27.i134 = and i1 %tobool.not.i131, %cmp.i133, !dbg !1336
  %or.cond28.i137 = select i1 %not.or.cond27.i134, i1 %cmp6.i136, i1 false, !dbg !1336
  %and8.i138 = and i32 %38, 1024
  %tobool9.not.i139 = icmp eq i32 %and8.i138, 0
  %or.cond160 = select i1 %or.cond28.i137, i1 true, i1 %tobool9.not.i139, !dbg !1336
  br i1 %or.cond160, label %if.else46, label %verify_opset.exit151, !dbg !1336

verify_opset.exit151:                             ; preds = %for.body
  %39 = load ptr, ptr %37, align 8, !dbg !1337
  %xpv_cur.i141 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2, !dbg !1337
  %40 = load i64, ptr %xpv_cur.i141, align 8, !dbg !1337
  %41 = load i64, ptr @my_cxt.2, align 8, !dbg !1338
  %cmp12.not.i142.not = icmp eq i64 %40, %41, !dbg !1339
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()), !dbg !1334
  br i1 %cmp12.not.i142.not, label %if.end78, label %if.else46, !dbg !1340

if.else46:                                        ; preds = %for.body, %verify_opset.exit151
  %and51 = and i32 %38, 2098176, !dbg !1341
  %cmp52 = icmp eq i32 %and51, 1024, !dbg !1341
  br i1 %cmp52, label %cond.true54, label %cond.false63, !dbg !1341

cond.true54:                                      ; preds = %if.else46
  %42 = load ptr, ptr %37, align 8, !dbg !1341
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2, !dbg !1341
  %43 = load i64, ptr %xpv_cur, align 8, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %43, metadata !1266, metadata !DIExpression()), !dbg !1282
  store i64 %43, ptr %len, align 8, !dbg !1341
  %44 = load ptr, ptr %arrayidx39, align 8, !dbg !1341
  %sv_u62 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3, !dbg !1341
  %45 = load ptr, ptr %sv_u62, align 8, !dbg !1341
  br label %cond.end68, !dbg !1341

cond.false63:                                     ; preds = %if.else46
  call void @llvm.dbg.value(metadata ptr %len, metadata !1266, metadata !DIExpression(DW_OP_deref)), !dbg !1282
  %call67 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %37, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1341
  br label %cond.end68, !dbg !1341

cond.end68:                                       ; preds = %cond.false63, %cond.true54
  %cond69 = phi ptr [ %45, %cond.true54 ], [ %call67, %cond.false63 ], !dbg !1341
  call void @llvm.dbg.value(metadata ptr %cond69, metadata !1267, metadata !DIExpression()), !dbg !1331
  %46 = load i8, ptr %cond69, align 1, !dbg !1343
  %cmp71 = icmp eq i8 %46, 33, !dbg !1345
  br i1 %cmp71, label %if.then73, label %cond.end68.if.end76_crit_edge, !dbg !1346

cond.end68.if.end76_crit_edge:                    ; preds = %cond.end68
  %.pre168 = load i64, ptr %len, align 8, !dbg !1347
  br label %if.end76, !dbg !1346

if.then73:                                        ; preds = %cond.end68
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !1271, metadata !DIExpression()), !dbg !1331
  %incdec.ptr75 = getelementptr inbounds i8, ptr %cond69, i64 1, !dbg !1348
  call void @llvm.dbg.value(metadata ptr %incdec.ptr75, metadata !1267, metadata !DIExpression()), !dbg !1331
  %47 = load i64, ptr %len, align 8, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %47, metadata !1266, metadata !DIExpression()), !dbg !1282
  %dec = add i64 %47, -1, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1266, metadata !DIExpression()), !dbg !1282
  store i64 %dec, ptr %len, align 8, !dbg !1350
  br label %if.end76, !dbg !1351

if.end76:                                         ; preds = %cond.end68.if.end76_crit_edge, %if.then73
  %48 = phi i64 [ %dec, %if.then73 ], [ %.pre168, %cond.end68.if.end76_crit_edge ], !dbg !1347
  %opname.0 = phi ptr [ %incdec.ptr75, %if.then73 ], [ %cond69, %cond.end68.if.end76_crit_edge ], !dbg !1352
  %on.0 = phi i32 [ %lnot.ext, %if.then73 ], [ %cond36, %cond.end68.if.end76_crit_edge ], !dbg !1331
  call void @llvm.dbg.value(metadata i32 %on.0, metadata !1271, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata ptr %opname.0, metadata !1267, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %48, metadata !1266, metadata !DIExpression()), !dbg !1282
  %call77 = call fastcc ptr @get_op_bitspec(ptr noundef nonnull %opname.0, i64 noundef %48), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %call77, metadata !1263, metadata !DIExpression()), !dbg !1282
  br label %if.end78

if.end78:                                         ; preds = %verify_opset.exit151, %if.end76
  %bitspec.0 = phi ptr [ %call77, %if.end76 ], [ %37, %verify_opset.exit151 ], !dbg !1354
  %opname.1 = phi ptr [ %opname.0, %if.end76 ], [ @.str.42, %verify_opset.exit151 ], !dbg !1354
  %on.1 = phi i32 [ %on.0, %if.end76 ], [ %cond36, %verify_opset.exit151 ], !dbg !1331
  call void @llvm.dbg.value(metadata i32 %on.1, metadata !1271, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata ptr %opname.1, metadata !1267, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata ptr %bitspec.0, metadata !1263, metadata !DIExpression()), !dbg !1282
  call fastcc void @set_opset_bits(ptr noundef %33, ptr noundef %bitspec.0, i32 noundef %on.1, ptr noundef nonnull %opname.1), !dbg !1355
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1262, metadata !DIExpression()), !dbg !1282
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1329
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1330, !llvm.loop !1357

for.end:                                          ; preds = %if.end78, %if.end28
  %49 = load ptr, ptr @PL_stack_base, align 8, !dbg !1359
  %arrayidx82 = getelementptr inbounds ptr, ptr %49, i64 %idxprom, !dbg !1359
  store ptr @PL_sv_yes, ptr %arrayidx82, align 8, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1361
  call void @llvm.dbg.value(metadata i64 1, metadata !1272, metadata !DIExpression()), !dbg !1362
  %50 = load ptr, ptr @PL_stack_base, align 8, !dbg !1363
  %add.ptr84 = getelementptr inbounds ptr, ptr %50, i64 %idxprom, !dbg !1363
  store ptr %add.ptr84, ptr @PL_stack_sp, align 8, !dbg !1363
  ret void, !dbg !1364
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_opdesc(ptr nocapture noundef readnone %cv) #0 !dbg !1365 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1367, metadata !DIExpression()), !dbg !1396
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1397
  call void @llvm.dbg.value(metadata ptr %0, metadata !1368, metadata !DIExpression()), !dbg !1396
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1397
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1397
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1397
  %2 = load i32, ptr %1, align 4, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %2, metadata !1369, metadata !DIExpression()), !dbg !1396
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1397
  %inc = add nsw i32 %2, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1369, metadata !DIExpression()), !dbg !1396
  %idx.ext = sext i32 %2 to i64, !dbg !1397
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1397
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1370, metadata !DIExpression()), !dbg !1396
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1397
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1397
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1397
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1397
  %conv = trunc i64 %4 to i32, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1371, metadata !DIExpression()), !dbg !1396
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !1398
  %idx.ext1 = ashr i64 %sext, 32, !dbg !1398
  %idx.neg = sub nsw i64 0, %idx.ext1, !dbg !1398
  %add.ptr2 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !1368, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1399
  %call = tail call ptr @Perl_get_op_descs() #7, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %call, metadata !1376, metadata !DIExpression()), !dbg !1401
  %5 = load ptr, ptr @PL_stack_base, align 8, !dbg !1402
  %idxprom = sext i32 %inc to i64, !dbg !1402
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1402
  %mul = shl nsw i64 %idx.ext1, 3, !dbg !1402
  %call4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %arrayidx, i64 noundef %mul, i32 noundef 524288) #7, !dbg !1402
  %sv_u = getelementptr inbounds %struct.sv, ptr %call4, i64 0, i32 3, !dbg !1402
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1402
  call void @llvm.dbg.value(metadata ptr %6, metadata !1375, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 0, metadata !1372, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !1368, metadata !DIExpression()), !dbg !1396
  %cmp198 = icmp sgt i32 %conv, 0, !dbg !1403
  br i1 %cmp198, label %for.body.preheader, label %for.end133, !dbg !1404

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %4, 4294967295, !dbg !1403
  br label %for.body, !dbg !1404

for.body:                                         ; preds = %for.body.preheader, %if.end130
  %indvars.iv207 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next208, %if.end130 ]
  %sp.0200 = phi ptr [ %add.ptr2, %for.body.preheader ], [ %sp.6, %if.end130 ]
  call void @llvm.dbg.value(metadata ptr %sp.0200, metadata !1368, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %indvars.iv207, metadata !1372, metadata !DIExpression()), !dbg !1401
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv207, !dbg !1405
  %7 = load ptr, ptr %arrayidx7, align 8, !dbg !1405
  %sv_flags = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2, !dbg !1405
  %8 = load i32, ptr %sv_flags, align 4, !dbg !1405
  %and = and i32 %8, 2098176, !dbg !1405
  %cmp8 = icmp eq i32 %and, 1024, !dbg !1405
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1405

cond.true:                                        ; preds = %for.body
  %9 = load ptr, ptr %7, align 8, !dbg !1405
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2, !dbg !1405
  %10 = load i64, ptr %xpv_cur, align 8, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %10, metadata !1374, metadata !DIExpression()), !dbg !1401
  store i64 %10, ptr %len, align 8, !dbg !1405
  %11 = load ptr, ptr %arrayidx7, align 8, !dbg !1405
  %sv_u14 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3, !dbg !1405
  %12 = load ptr, ptr %sv_u14, align 8, !dbg !1405
  br label %cond.end, !dbg !1405

cond.false:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %len, metadata !1374, metadata !DIExpression(DW_OP_deref)), !dbg !1401
  %call17 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %7, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1405
  %.pre = load i64, ptr %len, align 8, !dbg !1406
  br label %cond.end, !dbg !1405

cond.end:                                         ; preds = %cond.false, %cond.true
  %13 = phi i64 [ %10, %cond.true ], [ %.pre, %cond.false ], !dbg !1406
  %cond = phi ptr [ %12, %cond.true ], [ %call17, %cond.false ], !dbg !1405
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1377, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %13, metadata !1374, metadata !DIExpression()), !dbg !1401
  %call18 = call fastcc ptr @get_op_bitspec(ptr noundef %cond, i64 noundef %13), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1381, metadata !DIExpression()), !dbg !1407
  %sv_flags19 = getelementptr inbounds %struct.sv, ptr %call18, i64 0, i32 2, !dbg !1409
  %14 = load i32, ptr %sv_flags19, align 4, !dbg !1409
  %and20 = and i32 %14, 256, !dbg !1409
  %tobool.not = icmp eq i32 %and20, 0, !dbg !1409
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1410

if.then:                                          ; preds = %cond.end
  %and22 = and i32 %14, 2097408, !dbg !1411
  %cmp23 = icmp eq i32 %and22, 256, !dbg !1411
  br i1 %cmp23, label %cond.true25, label %cond.false27, !dbg !1411

cond.true25:                                      ; preds = %if.then
  %15 = load ptr, ptr %call18, align 8, !dbg !1411
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4, !dbg !1411
  %16 = load i64, ptr %xiv_u, align 8, !dbg !1411
  br label %cond.end29, !dbg !1411

cond.false27:                                     ; preds = %if.then
  %call28 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %call18, i32 noundef 2) #7, !dbg !1411
  br label %cond.end29, !dbg !1411

cond.end29:                                       ; preds = %cond.false27, %cond.true25
  %cond30 = phi i64 [ %16, %cond.true25 ], [ %call28, %cond.false27 ], !dbg !1411
  %conv31 = trunc i64 %cond30 to i32, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %conv31, metadata !1382, metadata !DIExpression()), !dbg !1412
  %cmp32 = icmp sgt i32 %conv31, -1, !dbg !1413
  %17 = load i32, ptr @PL_maxo, align 4
  %cmp34.not = icmp sgt i32 %17, %conv31
  %or.cond = select i1 %cmp32, i1 %cmp34.not, i1 false, !dbg !1415
  br i1 %or.cond, label %do.body37, label %if.then36, !dbg !1415

if.then36:                                        ; preds = %cond.end29
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, i32 noundef %conv31, ptr noundef %cond) #7, !dbg !1416
  br label %do.body37, !dbg !1416

do.body37:                                        ; preds = %cond.end29, %if.then36
  %18 = load ptr, ptr @PL_stack_max, align 8, !dbg !1417
  %sub.ptr.lhs.cast38 = ptrtoint ptr %18 to i64, !dbg !1417
  %sub.ptr.rhs.cast39 = ptrtoint ptr %sp.0200 to i64, !dbg !1417
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39, !dbg !1417
  %cmp42 = icmp slt i64 %sub.ptr.sub40, 8, !dbg !1417
  br i1 %cmp42, label %if.then46, label %do.end, !dbg !1421

if.then46:                                        ; preds = %do.body37
  %call47 = call ptr @Perl_stack_grow(ptr noundef %sp.0200, ptr noundef %sp.0200, i64 noundef 1) #7, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1368, metadata !DIExpression()), !dbg !1396
  br label %do.end, !dbg !1422

do.end:                                           ; preds = %do.body37, %if.then46
  %sp.1 = phi ptr [ %call47, %if.then46 ], [ %sp.0200, %do.body37 ], !dbg !1396
  call void @llvm.dbg.value(metadata ptr %sp.1, metadata !1368, metadata !DIExpression()), !dbg !1396
  %sext183 = shl i64 %cond30, 32, !dbg !1424
  %idxprom49 = ashr exact i64 %sext183, 32, !dbg !1424
  %arrayidx50 = getelementptr inbounds ptr, ptr %call, i64 %idxprom49, !dbg !1424
  %19 = load ptr, ptr %arrayidx50, align 8, !dbg !1424
  %call53 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #8, !dbg !1424
  %call54 = call ptr @Perl_newSVpvn_flags(ptr noundef %19, i64 noundef %call53, i32 noundef 524288) #7, !dbg !1424
  %incdec.ptr55 = getelementptr inbounds ptr, ptr %sp.1, i64 1, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %incdec.ptr55, metadata !1368, metadata !DIExpression()), !dbg !1396
  store ptr %call54, ptr %incdec.ptr55, align 8, !dbg !1424
  br label %if.end130, !dbg !1425

if.else:                                          ; preds = %cond.end
  %and59 = and i32 %14, 1024, !dbg !1426
  %tobool60.not = icmp eq i32 %and59, 0, !dbg !1426
  br i1 %tobool60.not, label %if.else126, label %land.lhs.true, !dbg !1427

land.lhs.true:                                    ; preds = %if.else
  %20 = load ptr, ptr %call18, align 8, !dbg !1428
  %xpv_cur62 = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2, !dbg !1428
  %21 = load i64, ptr %xpv_cur62, align 8, !dbg !1428
  %22 = load i64, ptr @my_cxt.2, align 8, !dbg !1429
  %cmp63 = icmp eq i64 %21, %22, !dbg !1430
  br i1 %cmp63, label %if.then65, label %if.else126, !dbg !1431

if.then65:                                        ; preds = %land.lhs.true
  %and67 = and i32 %14, 2098176, !dbg !1432
  %cmp68 = icmp eq i32 %and67, 1024, !dbg !1432
  br i1 %cmp68, label %cond.true70, label %cond.false73, !dbg !1432

cond.true70:                                      ; preds = %if.then65
  %sv_u71 = getelementptr inbounds %struct.sv, ptr %call18, i64 0, i32 3, !dbg !1432
  %23 = load ptr, ptr %sv_u71, align 8, !dbg !1432
  br label %cond.end75, !dbg !1432

cond.false73:                                     ; preds = %if.then65
  %call74 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call18, ptr noundef null, i32 noundef 34) #7, !dbg !1432
  %.pre210 = load i64, ptr @my_cxt.2, align 8, !dbg !1433
  br label %cond.end75, !dbg !1432

cond.end75:                                       ; preds = %cond.false73, %cond.true70
  %24 = phi i64 [ %21, %cond.true70 ], [ %.pre210, %cond.false73 ], !dbg !1433
  %cond76 = phi ptr [ %23, %cond.true70 ], [ %call74, %cond.false73 ], !dbg !1432
  call void @llvm.dbg.value(metadata ptr %cond76, metadata !1390, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 0, metadata !1386, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %sp.0200, metadata !1368, metadata !DIExpression()), !dbg !1396
  %cmp80192 = icmp sgt i64 %24, 0, !dbg !1435
  br i1 %cmp80192, label %for.body82.preheader, label %if.end130, !dbg !1436

for.body82.preheader:                             ; preds = %cond.end75
  %.pre211 = load i32, ptr @PL_maxo, align 4
  br label %for.body82, !dbg !1436

for.body82:                                       ; preds = %for.body82.preheader, %for.end
  %25 = phi i64 [ %24, %for.body82.preheader ], [ %36, %for.end ]
  %26 = phi i32 [ %.pre211, %for.body82.preheader ], [ %37, %for.end ]
  %27 = phi i32 [ %.pre211, %for.body82.preheader ], [ %38, %for.end ]
  %indvars.iv204 = phi i64 [ 0, %for.body82.preheader ], [ %indvars.iv.next205, %for.end ]
  %sp.2195 = phi ptr [ %sp.0200, %for.body82.preheader ], [ %sp.3.lcssa, %for.end ]
  %myopcode77.0194 = phi i32 [ 0, %for.body82.preheader ], [ %myopcode77.1.lcssa, %for.end ]
  call void @llvm.dbg.value(metadata ptr %sp.2195, metadata !1368, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i32 %myopcode77.0194, metadata !1391, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %indvars.iv204, metadata !1386, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8 undef, metadata !1392, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_stack_value)), !dbg !1437
  call void @llvm.dbg.value(metadata i32 0, metadata !1389, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %sp.2195, metadata !1368, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i32 %myopcode77.0194, metadata !1391, metadata !DIExpression()), !dbg !1434
  %cmp89185 = icmp slt i32 %myopcode77.0194, %27
  br i1 %cmp89185, label %for.body91.lr.ph, label %for.end, !dbg !1438

for.body91.lr.ph:                                 ; preds = %for.body82
  %arrayidx84 = getelementptr inbounds i8, ptr %cond76, i64 %indvars.iv204, !dbg !1441
  %28 = load i8, ptr %arrayidx84, align 1, !dbg !1441
  call void @llvm.dbg.value(metadata i8 %28, metadata !1392, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_stack_value)), !dbg !1437
  %conv85 = sext i8 %28 to i32, !dbg !1441
  %conv92 = and i32 %conv85, 65535
  %29 = sext i32 %myopcode77.0194 to i64, !dbg !1438
  br label %for.body91, !dbg !1438

for.body91:                                       ; preds = %for.body91.lr.ph, %for.inc
  %30 = phi i32 [ %26, %for.body91.lr.ph ], [ %33, %for.inc ]
  %indvars.iv = phi i64 [ %29, %for.body91.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %sp.3190 = phi ptr [ %sp.2195, %for.body91.lr.ph ], [ %sp.5, %for.inc ]
  %j.0187 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc121, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %sp.3190, metadata !1368, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1391, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %j.0187, metadata !1389, metadata !DIExpression()), !dbg !1434
  %shl = shl nuw nsw i32 1, %j.0187, !dbg !1442
  %and93 = and i32 %conv92, %shl, !dbg !1444
  %tobool94.not = icmp eq i32 %and93, 0, !dbg !1444
  br i1 %tobool94.not, label %for.inc, label %do.body97, !dbg !1445

do.body97:                                        ; preds = %for.body91
  %31 = load ptr, ptr @PL_stack_max, align 8, !dbg !1446
  %sub.ptr.lhs.cast98 = ptrtoint ptr %31 to i64, !dbg !1446
  %sub.ptr.rhs.cast99 = ptrtoint ptr %sp.3190 to i64, !dbg !1446
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99, !dbg !1446
  %cmp102 = icmp slt i64 %sub.ptr.sub100, 8, !dbg !1446
  br i1 %cmp102, label %if.then106, label %do.end110, !dbg !1450

if.then106:                                       ; preds = %do.body97
  %call107 = call ptr @Perl_stack_grow(ptr noundef %sp.3190, ptr noundef %sp.3190, i64 noundef 1) #7, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %call107, metadata !1368, metadata !DIExpression()), !dbg !1396
  br label %do.end110, !dbg !1451

do.end110:                                        ; preds = %do.body97, %if.then106
  %sp.4 = phi ptr [ %call107, %if.then106 ], [ %sp.3190, %do.body97 ], !dbg !1396
  call void @llvm.dbg.value(metadata ptr %sp.4, metadata !1368, metadata !DIExpression()), !dbg !1396
  %arrayidx112 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv, !dbg !1453
  %32 = load ptr, ptr %arrayidx112, align 8, !dbg !1453
  %call115 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #8, !dbg !1453
  %call116 = call ptr @Perl_newSVpvn_flags(ptr noundef %32, i64 noundef %call115, i32 noundef 524288) #7, !dbg !1453
  %incdec.ptr117 = getelementptr inbounds ptr, ptr %sp.4, i64 1, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %incdec.ptr117, metadata !1368, metadata !DIExpression()), !dbg !1396
  store ptr %call116, ptr %incdec.ptr117, align 8, !dbg !1453
  %.pre212 = load i32, ptr @PL_maxo, align 4
  br label %for.inc, !dbg !1453

for.inc:                                          ; preds = %for.body91, %do.end110
  %33 = phi i32 [ %.pre212, %do.end110 ], [ %30, %for.body91 ]
  %sp.5 = phi ptr [ %incdec.ptr117, %do.end110 ], [ %sp.3190, %for.body91 ], !dbg !1396
  call void @llvm.dbg.value(metadata ptr %sp.5, metadata !1368, metadata !DIExpression()), !dbg !1396
  %inc121 = add nuw nsw i32 %j.0187, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %inc121, metadata !1389, metadata !DIExpression()), !dbg !1434
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1391, metadata !DIExpression()), !dbg !1434
  %cmp87 = icmp ult i32 %j.0187, 7, !dbg !1456
  %34 = sext i32 %33 to i64
  %cmp89 = icmp slt i64 %indvars.iv.next, %34
  %or.cond184 = select i1 %cmp87, i1 %cmp89, i1 false, !dbg !1438
  br i1 %or.cond184, label %for.body91, label %for.end.loopexit, !dbg !1438, !llvm.loop !1457

for.end.loopexit:                                 ; preds = %for.inc
  %35 = trunc i64 %indvars.iv.next to i32, !dbg !1460
  %.pre213 = load i64, ptr @my_cxt.2, align 8, !dbg !1433
  br label %for.end, !dbg !1460

for.end:                                          ; preds = %for.end.loopexit, %for.body82
  %36 = phi i64 [ %25, %for.body82 ], [ %.pre213, %for.end.loopexit ], !dbg !1433
  %37 = phi i32 [ %26, %for.body82 ], [ %33, %for.end.loopexit ]
  %38 = phi i32 [ %27, %for.body82 ], [ %33, %for.end.loopexit ]
  %myopcode77.1.lcssa = phi i32 [ %myopcode77.0194, %for.body82 ], [ %35, %for.end.loopexit ], !dbg !1434
  %sp.3.lcssa = phi ptr [ %sp.2195, %for.body82 ], [ %sp.5, %for.end.loopexit ], !dbg !1396
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %sp.3.lcssa, metadata !1368, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i32 %myopcode77.1.lcssa, metadata !1391, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next205, metadata !1386, metadata !DIExpression()), !dbg !1434
  %cmp80 = icmp sgt i64 %36, %indvars.iv.next205, !dbg !1435
  br i1 %cmp80, label %for.body82, label %if.end130, !dbg !1436, !llvm.loop !1461

if.else126:                                       ; preds = %land.lhs.true, %if.else
  %and128 = and i32 %14, 255, !dbg !1463
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %cond, i32 noundef %and128) #7, !dbg !1464
  br label %if.end130

if.end130:                                        ; preds = %for.end, %cond.end75, %if.else126, %do.end
  %sp.6 = phi ptr [ %incdec.ptr55, %do.end ], [ %sp.0200, %if.else126 ], [ %sp.0200, %cond.end75 ], [ %sp.3.lcssa, %for.end ], !dbg !1396
  call void @llvm.dbg.value(metadata ptr %sp.6, metadata !1368, metadata !DIExpression()), !dbg !1396
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next208, metadata !1372, metadata !DIExpression()), !dbg !1401
  %exitcond.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count, !dbg !1403
  br i1 %exitcond.not, label %for.end133, label %for.body, !dbg !1404, !llvm.loop !1466

for.end133:                                       ; preds = %if.end130, %entry
  %sp.0.lcssa = phi ptr [ %add.ptr2, %entry ], [ %sp.6, %if.end130 ], !dbg !1396
  store ptr %sp.0.lcssa, ptr @PL_stack_sp, align 8, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1469
  ret void, !dbg !1470
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_define_optag(ptr noundef %cv) #0 !dbg !1471 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1473, metadata !DIExpression()), !dbg !1485
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %0, metadata !1474, metadata !DIExpression()), !dbg !1485
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1486
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1486
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1486
  %2 = load i32, ptr %1, align 4, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %2, metadata !1475, metadata !DIExpression()), !dbg !1485
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1486
  %inc = add nsw i32 %2, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1475, metadata !DIExpression()), !dbg !1485
  %idx.ext = sext i32 %2 to i64, !dbg !1486
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1476, metadata !DIExpression()), !dbg !1485
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1486
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1486
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1486
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1486
  %conv = trunc i64 %4 to i32, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1477, metadata !DIExpression()), !dbg !1485
  %cmp.not = icmp eq i32 %conv, 2, !dbg !1487
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1489

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.57) #7, !dbg !1490
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1491
  br label %if.end, !dbg !1490

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !1491
  %idxprom = sext i32 %inc to i64, !dbg !1491
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1491
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %6, metadata !1478, metadata !DIExpression()), !dbg !1492
  %add2 = add nsw i32 %2, 2, !dbg !1493
  %idxprom3 = sext i32 %add2 to i64, !dbg !1493
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 %idxprom3, !dbg !1493
  %7 = load ptr, ptr %arrayidx4, align 8, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %7, metadata !1480, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1494
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1495
  %8 = load i32, ptr %sv_flags, align 4, !dbg !1495
  %and = and i32 %8, 2098176, !dbg !1495
  %cmp5 = icmp eq i32 %and, 1024, !dbg !1495
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1495

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %6, align 8, !dbg !1495
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2, !dbg !1495
  %10 = load i64, ptr %xpv_cur, align 8, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %10, metadata !1481, metadata !DIExpression()), !dbg !1492
  store i64 %10, ptr %len, align 8, !dbg !1495
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !1495
  %11 = load ptr, ptr %sv_u, align 8, !dbg !1495
  br label %cond.end, !dbg !1495

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %len, metadata !1481, metadata !DIExpression(DW_OP_deref)), !dbg !1492
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1495
  %.pre23 = load i64, ptr %len, align 8, !dbg !1496
  br label %cond.end, !dbg !1495

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = phi i64 [ %10, %cond.true ], [ %.pre23, %cond.false ], !dbg !1496
  %cond = phi ptr [ %11, %cond.true ], [ %call, %cond.false ], !dbg !1495
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1482, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %12, metadata !1481, metadata !DIExpression()), !dbg !1492
  call fastcc void @put_op_bitspec(ptr noundef %cond, i64 noundef %12, ptr noundef %7), !dbg !1497
  %13 = load ptr, ptr @PL_stack_base, align 8, !dbg !1498
  %arrayidx9 = getelementptr inbounds ptr, ptr %13, i64 %idxprom, !dbg !1498
  store ptr @PL_sv_yes, ptr %arrayidx9, align 8, !dbg !1499
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1500
  call void @llvm.dbg.value(metadata i64 1, metadata !1483, metadata !DIExpression()), !dbg !1501
  %14 = load ptr, ptr @PL_stack_base, align 8, !dbg !1502
  %add.ptr11 = getelementptr inbounds ptr, ptr %14, i64 %idxprom, !dbg !1502
  store ptr %add.ptr11, ptr @PL_stack_sp, align 8, !dbg !1502
  ret void, !dbg !1503
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_empty_opset(ptr noundef %cv) #0 !dbg !1504 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1506, metadata !DIExpression()), !dbg !1513
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %0, metadata !1507, metadata !DIExpression()), !dbg !1513
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1514
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1514
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1514
  %2 = load i32, ptr %1, align 4, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %2, metadata !1508, metadata !DIExpression()), !dbg !1513
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %2, metadata !1508, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1513
  %idx.ext = sext i32 %2 to i64, !dbg !1514
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1509, metadata !DIExpression()), !dbg !1513
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1514
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1514
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1514
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1514
  %conv = trunc i64 %4 to i32, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1510, metadata !DIExpression()), !dbg !1513
  %cmp.not = icmp eq i32 %conv, 0, !dbg !1515
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1517

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.21) #7, !dbg !1518
  br label %if.end, !dbg !1518

if.end:                                           ; preds = %if.then, %entry
  %inc = add nsw i32 %2, 1, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1508, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata ptr null, metadata !757, metadata !DIExpression()) #7, !dbg !1519
  %5 = load i64, ptr @my_cxt.2, align 8, !dbg !1522
  %call2.i = tail call ptr @Perl_newSV(i64 noundef %5) #7, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1519
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 3, !dbg !1523
  %6 = load ptr, ptr %sv_u.i, align 8, !dbg !1523
  %7 = load i64, ptr @my_cxt.2, align 8, !dbg !1523
  %add.i = add nsw i64 %7, 1, !dbg !1523
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %add.i, i1 false) #7, !dbg !1523
  %8 = load ptr, ptr %call2.i, align 8, !dbg !1524
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1524
  store i64 %7, ptr %xpv_cur.i, align 8, !dbg !1524
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !1525
  %9 = load i32, ptr %sv_flags.i, align 4, !dbg !1525
  %and.i = and i32 %9, 1610547455, !dbg !1525
  %or.i = or i32 %and.i, 17408, !dbg !1525
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1519
  %call2 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %call2.i) #7, !dbg !1526
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1527
  %idxprom = sext i32 %inc to i64, !dbg !1527
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !1527
  store ptr %call2, ptr %arrayidx, align 8, !dbg !1528
  call void @llvm.dbg.value(metadata i64 1, metadata !1511, metadata !DIExpression()), !dbg !1529
  %11 = load ptr, ptr @PL_stack_base, align 8, !dbg !1530
  %add.ptr4 = getelementptr inbounds ptr, ptr %11, i64 %idxprom, !dbg !1530
  store ptr %add.ptr4, ptr @PL_stack_sp, align 8, !dbg !1530
  ret void, !dbg !1531
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_full_opset(ptr noundef %cv) #0 !dbg !1532 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1534, metadata !DIExpression()), !dbg !1541
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %0, metadata !1535, metadata !DIExpression()), !dbg !1541
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1542
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1542
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1542
  %2 = load i32, ptr %1, align 4, !dbg !1542
  call void @llvm.dbg.value(metadata i32 %2, metadata !1536, metadata !DIExpression()), !dbg !1541
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1542
  call void @llvm.dbg.value(metadata i32 %2, metadata !1536, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1541
  %idx.ext = sext i32 %2 to i64, !dbg !1542
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1537, metadata !DIExpression()), !dbg !1541
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1542
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1542
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1542
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1542
  %conv = trunc i64 %4 to i32, !dbg !1542
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1538, metadata !DIExpression()), !dbg !1541
  %cmp.not = icmp eq i32 %conv, 0, !dbg !1543
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1545

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.21) #7, !dbg !1546
  br label %if.end, !dbg !1546

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 %2, metadata !1536, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1541
  %5 = load ptr, ptr @my_cxt.1, align 8, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %5, metadata !757, metadata !DIExpression()) #7, !dbg !1549
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1551
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1552

if.then.i:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %5, metadata !988, metadata !DIExpression()) #7, !dbg !1553
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1553
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1553
  %sv_flags.i.i = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1555
  %6 = load i32, ptr %sv_flags.i.i, align 4, !dbg !1555
  %and.i.i = and i32 %6, 65280, !dbg !1555
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0, !dbg !1555
  %and2.i.i = and i32 %6, 255, !dbg !1555
  %cmp.i.i = icmp eq i32 %and2.i.i, 8, !dbg !1555
  %or.cond27.i.i = or i1 %tobool.not.i.i, %cmp.i.i, !dbg !1555
  %and5.i.i = and i32 %6, 16826623, !dbg !1555
  %cmp6.i.i = icmp eq i32 %and5.i.i, 16777226, !dbg !1555
  %or.cond28.i.i = select i1 %or.cond27.i.i, i1 true, i1 %cmp6.i.i, !dbg !1555
  br i1 %or.cond28.i.i, label %if.else.i.i, label %if.then18.i.i, !dbg !1555

if.else.i.i:                                      ; preds = %if.then.i
  %and8.i.i = and i32 %6, 1024, !dbg !1556
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0, !dbg !1556
  br i1 %tobool9.not.i.i, label %if.then18.i.i, label %if.end15.i.i, !dbg !1557

if.end15.i.i:                                     ; preds = %if.else.i.i
  %7 = load ptr, ptr %5, align 8, !dbg !1558
  %xpv_cur.i.i = getelementptr inbounds %struct.xpv, ptr %7, i64 0, i32 2, !dbg !1558
  %8 = load i64, ptr %xpv_cur.i.i, align 8, !dbg !1558
  %9 = load i64, ptr @my_cxt.2, align 8, !dbg !1559
  %cmp12.not.i.i = icmp eq i64 %8, %9, !dbg !1560
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1553
  br i1 %cmp12.not.i.i, label %verify_opset.exit.i, label %if.then18.i.i, !dbg !1561

if.then18.i.i:                                    ; preds = %if.end15.i.i, %if.else.i.i, %if.then.i
  %err.0.i14.i = phi ptr [ @.str.37, %if.end15.i.i ], [ @.str.36, %if.else.i.i ], [ @.str.35, %if.then.i ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i14.i) #7, !dbg !1562
  br label %verify_opset.exit.i, !dbg !1563

verify_opset.exit.i:                              ; preds = %if.then18.i.i, %if.end15.i.i
  %call1.i = tail call ptr @Perl_newSVsv(ptr noundef nonnull %5) #7, !dbg !1564
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !762, metadata !DIExpression()) #7, !dbg !1549
  br label %new_opset.exit, !dbg !1565

if.else.i:                                        ; preds = %if.end
  %10 = load i64, ptr @my_cxt.2, align 8, !dbg !1566
  %call2.i = tail call ptr @Perl_newSV(i64 noundef %10) #7, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1549
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 3, !dbg !1567
  %11 = load ptr, ptr %sv_u.i, align 8, !dbg !1567
  %12 = load i64, ptr @my_cxt.2, align 8, !dbg !1567
  %add.i = add nsw i64 %12, 1, !dbg !1567
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %add.i, i1 false) #7, !dbg !1567
  %13 = load ptr, ptr %call2.i, align 8, !dbg !1568
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2, !dbg !1568
  store i64 %12, ptr %xpv_cur.i, align 8, !dbg !1568
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !1569
  %14 = load i32, ptr %sv_flags.i, align 4, !dbg !1569
  %and.i = and i32 %14, 1610547455, !dbg !1569
  %or.i = or i32 %and.i, 17408, !dbg !1569
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !1569
  br label %new_opset.exit

new_opset.exit:                                   ; preds = %verify_opset.exit.i, %if.else.i
  %opset.0.i = phi ptr [ %call1.i, %verify_opset.exit.i ], [ %call2.i, %if.else.i ], !dbg !1570
  %inc = add nsw i32 %2, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1536, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %opset.0.i, metadata !762, metadata !DIExpression()) #7, !dbg !1549
  %call2 = tail call ptr @Perl_sv_2mortal(ptr noundef %opset.0.i) #7, !dbg !1547
  %15 = load ptr, ptr @PL_stack_base, align 8, !dbg !1571
  %idxprom = sext i32 %inc to i64, !dbg !1571
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom, !dbg !1571
  store ptr %call2, ptr %arrayidx, align 8, !dbg !1572
  call void @llvm.dbg.value(metadata i64 1, metadata !1539, metadata !DIExpression()), !dbg !1573
  %16 = load ptr, ptr @PL_stack_base, align 8, !dbg !1574
  %add.ptr4 = getelementptr inbounds ptr, ptr %16, i64 %idxprom, !dbg !1574
  store ptr %add.ptr4, ptr @PL_stack_sp, align 8, !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_opmask_add(ptr noundef %cv) #0 !dbg !1576 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1578, metadata !DIExpression()), !dbg !1588
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1589
  call void @llvm.dbg.value(metadata ptr %0, metadata !1579, metadata !DIExpression()), !dbg !1588
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1589
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1589
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1589
  %2 = load i32, ptr %1, align 4, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %2, metadata !1580, metadata !DIExpression()), !dbg !1588
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1589
  %inc = add nsw i32 %2, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1580, metadata !DIExpression()), !dbg !1588
  %idx.ext = sext i32 %2 to i64, !dbg !1589
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1589
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1581, metadata !DIExpression()), !dbg !1588
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1589
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1589
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1589
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1589
  %conv = trunc i64 %4 to i32, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1582, metadata !DIExpression()), !dbg !1588
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1590
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1592

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.40) #7, !dbg !1593
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1594
  br label %if.end, !dbg !1593

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !1594
  %idxprom = sext i32 %inc to i64, !dbg !1594
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1594
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1594
  call void @llvm.dbg.value(metadata ptr %6, metadata !1583, metadata !DIExpression()), !dbg !1595
  %7 = load ptr, ptr @PL_op_mask, align 8, !dbg !1596
  %tobool.not = icmp eq ptr %7, null, !dbg !1596
  br i1 %tobool.not, label %if.then2, label %if.end4, !dbg !1598

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr @PL_maxo, align 4, !dbg !1599
  %conv3 = sext i32 %8 to i64, !dbg !1599
  %call = tail call ptr @Perl_safesyscalloc(i64 noundef %conv3, i64 noundef 1) #7, !dbg !1599
  store ptr %call, ptr @PL_op_mask, align 8, !dbg !1599
  br label %if.end4, !dbg !1599

if.end4:                                          ; preds = %if.then2, %if.end
  tail call fastcc void @opmask_add(ptr noundef %6), !dbg !1600
  call void @llvm.dbg.value(metadata i64 0, metadata !1585, metadata !DIExpression()), !dbg !1601
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1602
  %add.ptr7 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1602
  %add.ptr8 = getelementptr inbounds ptr, ptr %add.ptr7, i64 -1, !dbg !1602
  store ptr %add.ptr8, ptr @PL_stack_sp, align 8, !dbg !1602
  ret void, !dbg !1603
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_opcodes(ptr noundef %cv) #0 !dbg !1604 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1606, metadata !DIExpression()), !dbg !1611
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %0, metadata !1607, metadata !DIExpression()), !dbg !1611
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1612
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1612
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1612
  %2 = load i32, ptr %1, align 4, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %2, metadata !1608, metadata !DIExpression()), !dbg !1611
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %2, metadata !1608, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1611
  %idx.ext = sext i32 %2 to i64, !dbg !1612
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1609, metadata !DIExpression()), !dbg !1611
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1612
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1612
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1610, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  %4 = and i64 %sub.ptr.sub, 34359738360, !dbg !1613
  %cmp.not = icmp eq i64 %4, 0, !dbg !1613
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1615

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.21) #7, !dbg !1616
  br label %if.end, !dbg !1616

if.end:                                           ; preds = %if.then, %entry
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !1617
  %idx.ext2 = ashr i64 %sext, 32, !dbg !1617
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !1617
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !1617
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !1607, metadata !DIExpression()), !dbg !1611
  %5 = load ptr, ptr @PL_op, align 8, !dbg !1618
  %op_flags = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 5, !dbg !1618
  %6 = load i8, ptr %op_flags, align 2, !dbg !1618
  %7 = and i8 %6, 3, !dbg !1618
  switch i8 %7, label %do.body14 [
    i8 0, label %cond.end
    i8 3, label %if.then13
  ], !dbg !1618

cond.end:                                         ; preds = %if.end
  %call = tail call i32 @Perl_dowantarray() #7, !dbg !1618
  %cmp11 = icmp eq i32 %call, 3, !dbg !1621
  br i1 %cmp11, label %if.then13, label %do.body14, !dbg !1622

if.then13:                                        ; preds = %if.end, %cond.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59) #7, !dbg !1623
  br label %if.end32, !dbg !1625

do.body14:                                        ; preds = %if.end, %cond.end
  %8 = load ptr, ptr @PL_stack_max, align 8, !dbg !1626
  %sub.ptr.lhs.cast15 = ptrtoint ptr %8 to i64, !dbg !1626
  %sub.ptr.rhs.cast16 = ptrtoint ptr %add.ptr3 to i64, !dbg !1626
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !1626
  %cmp19 = icmp slt i64 %sub.ptr.sub17, 8, !dbg !1626
  br i1 %cmp19, label %if.then23, label %do.end, !dbg !1631

if.then23:                                        ; preds = %do.body14
  %call24 = tail call ptr @Perl_stack_grow(ptr noundef %add.ptr3, ptr noundef %add.ptr3, i64 noundef 1) #7, !dbg !1632
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1607, metadata !DIExpression()), !dbg !1611
  br label %do.end, !dbg !1632

do.end:                                           ; preds = %do.body14, %if.then23
  %sp.0 = phi ptr [ %call24, %if.then23 ], [ %add.ptr3, %do.body14 ], !dbg !1611
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1607, metadata !DIExpression()), !dbg !1611
  %9 = load i32, ptr @PL_maxo, align 4, !dbg !1634
  %conv26 = sext i32 %9 to i64, !dbg !1634
  %call27 = tail call ptr @Perl_newSViv(i64 noundef %conv26) #7, !dbg !1634
  %call28 = tail call ptr @Perl_sv_2mortal(ptr noundef %call27) #7, !dbg !1634
  %incdec.ptr29 = getelementptr inbounds ptr, ptr %sp.0, i64 1, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29, metadata !1607, metadata !DIExpression()), !dbg !1611
  store ptr %call28, ptr %incdec.ptr29, align 8, !dbg !1634
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.then13
  %sp.1 = phi ptr [ %add.ptr3, %if.then13 ], [ %incdec.ptr29, %do.end ], !dbg !1611
  call void @llvm.dbg.value(metadata ptr %sp.1, metadata !1607, metadata !DIExpression()), !dbg !1611
  store ptr %sp.1, ptr @PL_stack_sp, align 8, !dbg !1635
  ret void, !dbg !1636
}

; Function Attrs: nounwind uwtable
define internal void @XS_Opcode_opmask(ptr noundef %cv) #0 !dbg !1637 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1639, metadata !DIExpression()), !dbg !1651
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %0, metadata !1640, metadata !DIExpression()), !dbg !1651
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1652
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1652
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1652
  %2 = load i32, ptr %1, align 4, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %2, metadata !1641, metadata !DIExpression()), !dbg !1651
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1652
  %inc = add nsw i32 %2, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1641, metadata !DIExpression()), !dbg !1651
  %idx.ext = sext i32 %2 to i64, !dbg !1652
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1642, metadata !DIExpression()), !dbg !1651
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1652
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1652
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1652
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1652
  %conv = trunc i64 %4 to i32, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1643, metadata !DIExpression()), !dbg !1651
  %cmp.not = icmp eq i32 %conv, 0, !dbg !1653
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1655

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.21) #7, !dbg !1656
  br label %if.end, !dbg !1656

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !757, metadata !DIExpression()) #7, !dbg !1657
  %5 = load i64, ptr @my_cxt.2, align 8, !dbg !1659
  %call2.i = tail call ptr @Perl_newSV(i64 noundef %5) #7, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1657
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 3, !dbg !1660
  %6 = load ptr, ptr %sv_u.i, align 8, !dbg !1660
  %7 = load i64, ptr @my_cxt.2, align 8, !dbg !1660
  %add.i = add nsw i64 %7, 1, !dbg !1660
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %add.i, i1 false) #7, !dbg !1660
  %8 = load ptr, ptr %call2.i, align 8, !dbg !1661
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1661
  store i64 %7, ptr %xpv_cur.i, align 8, !dbg !1661
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call2.i, i64 0, i32 2, !dbg !1662
  %9 = load i32, ptr %sv_flags.i, align 4, !dbg !1662
  %and.i = and i32 %9, 1610547455, !dbg !1662
  %or.i = or i32 %and.i, 17408, !dbg !1662
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !762, metadata !DIExpression()) #7, !dbg !1657
  %call2 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %call2.i) #7, !dbg !1663
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1664
  %idxprom = sext i32 %inc to i64, !dbg !1664
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !1664
  store ptr %call2, ptr %arrayidx, align 8, !dbg !1665
  %11 = load ptr, ptr @PL_op_mask, align 8, !dbg !1666
  %tobool.not = icmp eq ptr %11, null, !dbg !1666
  br i1 %tobool.not, label %do.body, label %if.then3, !dbg !1667

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr @PL_stack_base, align 8, !dbg !1668
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %idxprom, !dbg !1668
  %13 = load ptr, ptr %arrayidx6, align 8, !dbg !1668
  %sv_u = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3, !dbg !1668
  %14 = load ptr, ptr %sv_u, align 8, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %14, metadata !1644, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 0, metadata !1648, metadata !DIExpression()), !dbg !1669
  %15 = load i32, ptr @PL_maxo, align 4, !dbg !1670
  %cmp734 = icmp sgt i32 %15, 0, !dbg !1673
  br i1 %cmp734, label %for.body, label %do.body, !dbg !1674

for.body:                                         ; preds = %if.then3, %for.inc
  %16 = phi i32 [ %22, %for.inc ], [ %15, %if.then3 ]
  %17 = phi ptr [ %23, %for.inc ], [ %11, %if.then3 ], !dbg !1675
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1648, metadata !DIExpression()), !dbg !1669
  %arrayidx10 = getelementptr inbounds i8, ptr %17, i64 %indvars.iv, !dbg !1675
  %18 = load i8, ptr %arrayidx10, align 1, !dbg !1675
  %tobool11.not = icmp eq i8 %18, 0, !dbg !1675
  br i1 %tobool11.not, label %for.inc, label %if.then12, !dbg !1678

if.then12:                                        ; preds = %for.body
  %19 = trunc i64 %indvars.iv to i8, !dbg !1679
  %and = and i8 %19, 7, !dbg !1679
  %shl = shl nuw i8 1, %and, !dbg !1680
  %20 = lshr i64 %indvars.iv, 3, !dbg !1681
  %idxprom13 = and i64 %20, 536870911, !dbg !1682
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %idxprom13, !dbg !1682
  %21 = load i8, ptr %arrayidx14, align 1, !dbg !1683
  %conv16 = or i8 %21, %shl, !dbg !1683
  store i8 %conv16, ptr %arrayidx14, align 1, !dbg !1683
  %.pre = load ptr, ptr @PL_op_mask, align 8, !dbg !1675
  %.pre39 = load i32, ptr @PL_maxo, align 4, !dbg !1670
  br label %for.inc, !dbg !1682

for.inc:                                          ; preds = %for.body, %if.then12
  %22 = phi i32 [ %16, %for.body ], [ %.pre39, %if.then12 ], !dbg !1670
  %23 = phi ptr [ %17, %for.body ], [ %.pre, %if.then12 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1648, metadata !DIExpression()), !dbg !1669
  %24 = sext i32 %22 to i64, !dbg !1673
  %cmp7 = icmp slt i64 %indvars.iv.next, %24, !dbg !1673
  br i1 %cmp7, label %for.body, label %do.body, !dbg !1674, !llvm.loop !1685

do.body:                                          ; preds = %for.inc, %if.then3, %if.end
  call void @llvm.dbg.value(metadata i64 1, metadata !1649, metadata !DIExpression()), !dbg !1687
  %25 = load ptr, ptr @PL_stack_base, align 8, !dbg !1688
  %add.ptr21 = getelementptr inbounds ptr, ptr %25, i64 %idxprom, !dbg !1688
  store ptr %add.ptr21, ptr @PL_stack_sp, align 8, !dbg !1688
  ret void, !dbg !1689
}

declare !dbg !1690 void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1693 void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1699 void @Perl_push_scope() local_unnamed_addr #3

declare !dbg !1700 ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1703 void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1706 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1709 void @Perl_pop_scope() local_unnamed_addr #3

declare !dbg !1710 void @Perl_save_aptr(ptr noundef) local_unnamed_addr #3

declare !dbg !1714 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

declare !dbg !1717 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #3

declare !dbg !1721 void @Perl_save_hptr(ptr noundef) local_unnamed_addr #3

declare !dbg !1725 void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #3

declare !dbg !1728 ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1731 void @Perl_sv_free(ptr noundef) local_unnamed_addr #3

declare !dbg !1734 ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #3

declare !dbg !1737 ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1740 void @Perl_hv_clear(ptr noundef) local_unnamed_addr #3

declare !dbg !1743 ptr @Perl_markstack_grow() local_unnamed_addr #3

declare !dbg !1746 i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1750 i32 @Perl_dowantarray() local_unnamed_addr #3

declare !dbg !1753 void @Perl_save_vptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @opmask_add(ptr noundef %opset) unnamed_addr #0 !dbg !1754 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %opset, metadata !1758, metadata !DIExpression()), !dbg !1768
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %opset, metadata !988, metadata !DIExpression()) #7, !dbg !1770
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1770
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1770
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %opset, i64 0, i32 2, !dbg !1772
  %0 = load i32, ptr %sv_flags.i, align 4, !dbg !1772
  %and.i = and i32 %0, 65280, !dbg !1772
  %tobool.not.i = icmp ne i32 %and.i, 0, !dbg !1772
  %and2.i = and i32 %0, 255, !dbg !1772
  %cmp.i = icmp eq i32 %and2.i, 8, !dbg !1772
  %or.cond27.i = or i1 %tobool.not.i, %cmp.i, !dbg !1772
  %and5.i = and i32 %0, 16826623, !dbg !1772
  %cmp6.i = icmp eq i32 %and5.i, 16777226, !dbg !1772
  %or.cond28.i = select i1 %or.cond27.i, i1 true, i1 %cmp6.i, !dbg !1772
  br i1 %or.cond28.i, label %if.else.i, label %if.then18.i, !dbg !1772

if.else.i:                                        ; preds = %entry
  %and8.i = and i32 %0, 1024, !dbg !1773
  %tobool9.not.i = icmp eq i32 %and8.i, 0, !dbg !1773
  br i1 %tobool9.not.i, label %if.then18.i, label %if.end15.i, !dbg !1774

if.end15.i:                                       ; preds = %if.else.i
  %1 = load ptr, ptr %opset, align 8, !dbg !1775
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !1775
  %2 = load i64, ptr %xpv_cur.i, align 8, !dbg !1775
  %3 = load i64, ptr @my_cxt.2, align 8, !dbg !1776
  %cmp12.not.i = icmp eq i64 %2, %3, !dbg !1777
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1770
  br i1 %cmp12.not.i, label %verify_opset.exit, label %if.then18.i, !dbg !1778

if.then18.i:                                      ; preds = %if.else.i, %entry, %if.end15.i
  %err.0.i39 = phi ptr [ @.str.37, %if.end15.i ], [ @.str.36, %if.else.i ], [ @.str.35, %entry ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i39) #7, !dbg !1779
  br label %verify_opset.exit, !dbg !1780

verify_opset.exit:                                ; preds = %if.end15.i, %if.then18.i
  %4 = load ptr, ptr @PL_op_mask, align 8, !dbg !1781
  %tobool.not = icmp eq ptr %4, null, !dbg !1781
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1783

if.then:                                          ; preds = %verify_opset.exit
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34) #7, !dbg !1784
  br label %if.end, !dbg !1784

if.end:                                           ; preds = %if.then, %verify_opset.exit
  %5 = load i32, ptr %sv_flags.i, align 4, !dbg !1785
  %and = and i32 %5, 2098176, !dbg !1785
  %cmp = icmp eq i32 %and, 1024, !dbg !1785
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1785

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %opset, align 8, !dbg !1785
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %6, i64 0, i32 2, !dbg !1785
  %7 = load i64, ptr %xpv_cur, align 8, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %7, metadata !1762, metadata !DIExpression()), !dbg !1768
  store i64 %7, ptr %len, align 8, !dbg !1785
  %sv_u = getelementptr inbounds %struct.sv, ptr %opset, i64 0, i32 3, !dbg !1785
  %8 = load ptr, ptr %sv_u, align 8, !dbg !1785
  br label %cond.end, !dbg !1785

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %len, metadata !1762, metadata !DIExpression(DW_OP_deref)), !dbg !1768
  %call1 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %opset, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1785
  br label %cond.end, !dbg !1785

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ %call1, %cond.false ], !dbg !1785
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1761, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1768
  %9 = load i64, ptr @my_cxt.2, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1768
  %cmp244 = icmp sgt i64 %9, 0, !dbg !1786
  br i1 %cmp244, label %for.body, label %for.end22, !dbg !1787

for.body:                                         ; preds = %cond.end, %cleanup
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %cleanup ], [ 0, %cond.end ]
  %myopcode.045 = phi i32 [ %myopcode.2, %cleanup ], [ 0, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv49, metadata !1759, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %myopcode.045, metadata !1763, metadata !DIExpression()), !dbg !1768
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv49, !dbg !1788
  %10 = load i8, ptr %arrayidx, align 1, !dbg !1788
  call void @llvm.dbg.value(metadata i8 %10, metadata !1764, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_stack_value)), !dbg !1789
  %tobool5.not = icmp eq i8 %10, 0, !dbg !1790
  br i1 %tobool5.not, label %if.then6, label %for.cond8.preheader, !dbg !1792

for.cond8.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %myopcode.045, metadata !1763, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1760, metadata !DIExpression()), !dbg !1768
  %11 = load i32, ptr @PL_maxo, align 4
  %cmp1140 = icmp slt i32 %myopcode.045, %11
  br i1 %cmp1140, label %for.body13.preheader, label %cleanup, !dbg !1793

for.body13.preheader:                             ; preds = %for.cond8.preheader
  %12 = sext i32 %myopcode.045 to i64, !dbg !1796
  br label %for.body13, !dbg !1796

if.then6:                                         ; preds = %for.body
  %add = add nsw i32 %myopcode.045, 8, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %add, metadata !1763, metadata !DIExpression()), !dbg !1768
  br label %cleanup, !dbg !1799

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv = phi i64 [ %12, %for.body13.preheader ], [ %indvars.iv.next, %for.body13 ]
  %j.042 = phi i32 [ 0, %for.body13.preheader ], [ %inc, %for.body13 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1763, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %j.042, metadata !1760, metadata !DIExpression()), !dbg !1768
  %inc = add nuw nsw i32 %j.042, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1760, metadata !DIExpression()), !dbg !1768
  %shl = shl nuw nsw i32 1, %j.042, !dbg !1801
  %13 = load ptr, ptr @PL_op_mask, align 8, !dbg !1802
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1763, metadata !DIExpression()), !dbg !1768
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 %indvars.iv, !dbg !1802
  %14 = load i8, ptr %arrayidx18, align 1, !dbg !1804
  %15 = trunc i32 %shl to i8, !dbg !1804
  %16 = and i8 %10, %15, !dbg !1804
  %conv20 = or i8 %14, %16, !dbg !1804
  store i8 %conv20, ptr %arrayidx18, align 1, !dbg !1804
  %cmp9 = icmp ult i32 %j.042, 7, !dbg !1805
  %17 = load i32, ptr @PL_maxo, align 4
  %18 = sext i32 %17 to i64
  %cmp11 = icmp slt i64 %indvars.iv.next, %18
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false, !dbg !1793
  br i1 %or.cond, label %for.body13, label %cleanup.loopexit, !dbg !1793, !llvm.loop !1806

cleanup.loopexit:                                 ; preds = %for.body13
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !1808
  br label %cleanup, !dbg !1808

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond8.preheader, %if.then6
  %myopcode.2 = phi i32 [ %add, %if.then6 ], [ %myopcode.045, %for.cond8.preheader ], [ %19, %cleanup.loopexit ], !dbg !1768
  call void @llvm.dbg.value(metadata i32 %myopcode.2, metadata !1763, metadata !DIExpression()), !dbg !1768
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next50, metadata !1759, metadata !DIExpression()), !dbg !1768
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %9, !dbg !1786
  br i1 %exitcond.not, label %for.end22, label %for.body, !dbg !1787, !llvm.loop !1809

for.end22:                                        ; preds = %cleanup, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1811
  ret void, !dbg !1811
}

declare !dbg !1812 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1815 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1820 ptr @Perl_sv_newmortal() local_unnamed_addr #3

declare !dbg !1823 i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1826 void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1829 i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #3

declare !dbg !1832 ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #3

declare !dbg !1833 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #3

declare !dbg !1837 ptr @Perl_get_op_descs() local_unnamed_addr #3

declare !dbg !1840 ptr @Perl_get_op_names() local_unnamed_addr #3

declare !dbg !1841 ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1844 ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_op_bitspec(ptr noundef %opname, i64 noundef %len) unnamed_addr #0 !dbg !1847 {
entry:
  call void @llvm.dbg.value(metadata ptr %opname, metadata !1851, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %len, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 1, metadata !1853, metadata !DIExpression()), !dbg !1855
  %0 = load ptr, ptr @my_cxt.0, align 8, !dbg !1856
  %conv = trunc i64 %len to i32, !dbg !1856
  %call = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %opname, i32 noundef %conv, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !1856
  call void @llvm.dbg.value(metadata ptr %call, metadata !1854, metadata !DIExpression()), !dbg !1855
  %tobool.not = icmp eq ptr %call, null, !dbg !1857
  br i1 %tobool.not, label %if.end, label %lor.lhs.false, !dbg !1859

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %call, align 8, !dbg !1860
  %sv_flags = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2, !dbg !1860
  %2 = load i32, ptr %sv_flags, align 4, !dbg !1860
  %and = and i32 %2, 65280, !dbg !1860
  %tobool1.not = icmp ne i32 %and, 0, !dbg !1860
  %and4 = and i32 %2, 255, !dbg !1860
  %cmp = icmp eq i32 %and4, 8, !dbg !1860
  %or.cond = or i1 %tobool1.not, %cmp, !dbg !1860
  %and8 = and i32 %2, 16826623, !dbg !1860
  %cmp9 = icmp eq i32 %and8, 16777226, !dbg !1860
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp9, !dbg !1860
  br i1 %or.cond1, label %cleanup, label %if.end, !dbg !1860

if.end:                                           ; preds = %entry, %lor.lhs.false
  %3 = load i8, ptr %opname, align 1, !dbg !1861
  %cmp14 = icmp eq i8 %3, 58, !dbg !1864
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1865

if.then16:                                        ; preds = %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, ptr noundef nonnull %opname) #7, !dbg !1866
  %.pr = load i8, ptr %opname, align 1, !dbg !1867
  br label %if.end17, !dbg !1866

if.end17:                                         ; preds = %if.then16, %if.end
  %4 = phi i8 [ %.pr, %if.then16 ], [ %3, %if.end ], !dbg !1867
  %cmp19 = icmp eq i8 %4, 33, !dbg !1869
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1870

if.then21:                                        ; preds = %if.end17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, ptr noundef nonnull %opname) #7, !dbg !1871
  %.pre = load i8, ptr %opname, align 1, !dbg !1872
  br label %if.end22, !dbg !1871

if.end22:                                         ; preds = %if.then21, %if.end17
  %5 = phi i8 [ %.pre, %if.then21 ], [ %4, %if.end17 ], !dbg !1872
  %idxprom = zext i8 %5 to i64, !dbg !1872
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1872
  %6 = load i32, ptr %arrayidx, align 4, !dbg !1872
  %and23 = and i32 %6, 16388, !dbg !1872
  %cmp24 = icmp eq i32 %and23, 16388, !dbg !1872
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1874

if.then26:                                        ; preds = %if.end22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45, ptr noundef nonnull %opname) #7, !dbg !1875
  br label %if.end27, !dbg !1875

if.end27:                                         ; preds = %if.then26, %if.end22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, ptr noundef nonnull %opname) #7, !dbg !1876
  %.pre2 = load ptr, ptr %call, align 8, !dbg !1877
  br label %cleanup, !dbg !1878

cleanup:                                          ; preds = %lor.lhs.false, %if.end27
  %7 = phi ptr [ %1, %lor.lhs.false ], [ %.pre2, %if.end27 ], !dbg !1877
  ret ptr %7, !dbg !1879
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_opset_bits(ptr nocapture noundef %bitmap, ptr noundef %bitspec, i32 noundef %on, ptr noundef %opname) unnamed_addr #0 !dbg !1880 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %bitmap, metadata !1884, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %bitspec, metadata !1885, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %on, metadata !1886, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %opname, metadata !1887, metadata !DIExpression()), !dbg !1897
  %sv_flags = getelementptr inbounds %struct.sv, ptr %bitspec, i64 0, i32 2, !dbg !1898
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1898
  %and = and i32 %0, 256, !dbg !1898
  %tobool.not = icmp eq i32 %and, 0, !dbg !1898
  br i1 %tobool.not, label %if.else26, label %if.then, !dbg !1899

if.then:                                          ; preds = %entry
  %and2 = and i32 %0, 2097408, !dbg !1900
  %cmp = icmp eq i32 %and2, 256, !dbg !1900
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1900

cond.true:                                        ; preds = %if.then
  %1 = load ptr, ptr %bitspec, align 8, !dbg !1900
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %1, i64 0, i32 4, !dbg !1900
  %2 = load i64, ptr %xiv_u, align 8, !dbg !1900
  br label %cond.end, !dbg !1900

cond.false:                                       ; preds = %if.then
  %call = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %bitspec, i32 noundef 2) #7, !dbg !1900
  br label %cond.end, !dbg !1900

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %call, %cond.false ], !dbg !1900
  %conv = trunc i64 %cond to i32, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1888, metadata !DIExpression()), !dbg !1901
  %shr = ashr i32 %conv, 3, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1891, metadata !DIExpression()), !dbg !1901
  %and3 = and i32 %conv, 7, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %and3, metadata !1892, metadata !DIExpression()), !dbg !1901
  %3 = load i32, ptr @PL_maxo, align 4, !dbg !1904
  %cmp4 = icmp sle i32 %3, %conv, !dbg !1906
  %cmp6 = icmp slt i32 %conv, 0
  %or.cond = or i1 %cmp4, %cmp6, !dbg !1907
  br i1 %or.cond, label %if.then8, label %if.end14, !dbg !1907

if.then8:                                         ; preds = %cond.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %opname, i32 noundef %conv) #7, !dbg !1908
  br label %if.end14, !dbg !1908

if.end14:                                         ; preds = %if.then8, %cond.end
  %tobool15.not = icmp eq i32 %on, 0, !dbg !1909
  %shl19 = shl nuw nsw i32 1, %and3, !dbg !1911
  %idxprom20 = sext i32 %shr to i64, !dbg !1911
  %arrayidx21 = getelementptr inbounds i8, ptr %bitmap, i64 %idxprom20, !dbg !1911
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !1911
  %5 = trunc i32 %shl19 to i8, !dbg !1911
  br i1 %tobool15.not, label %if.else, label %if.then16, !dbg !1912

if.then16:                                        ; preds = %if.end14
  %conv18 = or i8 %4, %5, !dbg !1913
  store i8 %conv18, ptr %arrayidx21, align 1, !dbg !1913
  br label %if.end80, !dbg !1914

if.else:                                          ; preds = %if.end14
  %6 = xor i8 %5, -1, !dbg !1915
  %conv24 = and i8 %4, %6, !dbg !1915
  store i8 %conv24, ptr %arrayidx21, align 1, !dbg !1915
  br label %if.end80

if.else26:                                        ; preds = %entry
  %and28 = and i32 %0, 1024, !dbg !1916
  %tobool29.not = icmp eq i32 %and28, 0, !dbg !1916
  br i1 %tobool29.not, label %if.else76, label %land.lhs.true, !dbg !1917

land.lhs.true:                                    ; preds = %if.else26
  %7 = load ptr, ptr %bitspec, align 8, !dbg !1918
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %7, i64 0, i32 2, !dbg !1918
  %8 = load i64, ptr %xpv_cur, align 8, !dbg !1918
  %9 = load i64, ptr @my_cxt.2, align 8, !dbg !1919
  %cmp31 = icmp eq i64 %8, %9, !dbg !1920
  br i1 %cmp31, label %if.then33, label %if.else76, !dbg !1921

if.then33:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1922
  %and35 = and i32 %0, 2098176, !dbg !1923
  %cmp36 = icmp eq i32 %and35, 1024, !dbg !1923
  br i1 %cmp36, label %cond.true38, label %cond.false41, !dbg !1923

cond.true38:                                      ; preds = %if.then33
  call void @llvm.dbg.value(metadata i64 %8, metadata !1893, metadata !DIExpression()), !dbg !1924
  store i64 %8, ptr %len, align 8, !dbg !1923
  %sv_u = getelementptr inbounds %struct.sv, ptr %bitspec, i64 0, i32 3, !dbg !1923
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1923
  br label %if.end50, !dbg !1923

cond.false41:                                     ; preds = %if.then33
  call void @llvm.dbg.value(metadata ptr %len, metadata !1893, metadata !DIExpression(DW_OP_deref)), !dbg !1924
  %call42 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %bitspec, ptr noundef nonnull %len, i32 noundef 2) #7, !dbg !1923
  br label %if.end50, !dbg !1923

if.end50:                                         ; preds = %cond.true38, %cond.false41
  %cond44 = phi ptr [ %10, %cond.true38 ], [ %call42, %cond.false41 ], !dbg !1923
  call void @llvm.dbg.value(metadata ptr %cond44, metadata !1896, metadata !DIExpression()), !dbg !1924
  %tobool51.not = icmp eq i32 %on, 0, !dbg !1925
  %11 = load i64, ptr %len, align 8, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %11, metadata !1893, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %11, metadata !1893, metadata !DIExpression()), !dbg !1924
  %dec63118 = add i64 %11, -1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %dec63118, metadata !1893, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %dec63118, metadata !1893, metadata !DIExpression()), !dbg !1924
  store i64 %dec63118, ptr %len, align 8, !dbg !1927
  %cmp64.not119 = icmp eq i64 %11, 0, !dbg !1927
  br i1 %tobool51.not, label %while.cond62.preheader, label %while.cond.preheader, !dbg !1928

while.cond.preheader:                             ; preds = %if.end50
  br i1 %cmp64.not119, label %if.end75, label %while.body, !dbg !1929

while.cond62.preheader:                           ; preds = %if.end50
  br i1 %cmp64.not119, label %if.end75, label %while.body66, !dbg !1930

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %12 = phi i64 [ %dec, %while.body ], [ %dec63118, %while.cond.preheader ], !dbg !1931
  %arrayidx55 = getelementptr inbounds i8, ptr %cond44, i64 %12, !dbg !1932
  %13 = load i8, ptr %arrayidx55, align 1, !dbg !1932
  %arrayidx57 = getelementptr inbounds i8, ptr %bitmap, i64 %12, !dbg !1933
  %14 = load i8, ptr %arrayidx57, align 1, !dbg !1934
  %or59111 = or i8 %14, %13, !dbg !1934
  store i8 %or59111, ptr %arrayidx57, align 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %12, metadata !1893, metadata !DIExpression()), !dbg !1924
  %dec = add i64 %12, -1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1893, metadata !DIExpression()), !dbg !1924
  store i64 %dec, ptr %len, align 8, !dbg !1931
  %cmp53.not = icmp eq i64 %12, 0, !dbg !1935
  br i1 %cmp53.not, label %if.end75, label %while.body, !dbg !1929, !llvm.loop !1936

while.body66:                                     ; preds = %while.cond62.preheader, %while.body66
  %15 = phi i64 [ %dec63, %while.body66 ], [ %dec63118, %while.cond62.preheader ], !dbg !1938
  %arrayidx67 = getelementptr inbounds i8, ptr %cond44, i64 %15, !dbg !1939
  %16 = load i8, ptr %arrayidx67, align 1, !dbg !1939
  %17 = xor i8 %16, -1, !dbg !1940
  %arrayidx70 = getelementptr inbounds i8, ptr %bitmap, i64 %15, !dbg !1941
  %18 = load i8, ptr %arrayidx70, align 1, !dbg !1942
  %and72110 = and i8 %18, %17, !dbg !1942
  store i8 %and72110, ptr %arrayidx70, align 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %15, metadata !1893, metadata !DIExpression()), !dbg !1924
  %dec63 = add i64 %15, -1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %dec63, metadata !1893, metadata !DIExpression()), !dbg !1924
  store i64 %dec63, ptr %len, align 8, !dbg !1938
  %cmp64.not = icmp eq i64 %15, 0, !dbg !1943
  br i1 %cmp64.not, label %if.end75, label %while.body66, !dbg !1930, !llvm.loop !1944

if.end75:                                         ; preds = %while.body, %while.body66, %while.cond.preheader, %while.cond62.preheader
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1946
  br label %if.end80, !dbg !1947

if.else76:                                        ; preds = %land.lhs.true, %if.else26
  %and78 = and i32 %0, 255, !dbg !1948
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %opname, i32 noundef %and78) #7, !dbg !1949
  br label %if.end80

if.end80:                                         ; preds = %if.then16, %if.else, %if.end75, %if.else76
  ret void, !dbg !1950
}

declare !dbg !1951 void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @put_op_bitspec(ptr noundef %optag, i64 noundef %len, ptr noundef %mask) unnamed_addr #0 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata ptr %optag, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %len, metadata !1959, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata ptr %mask, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata ptr %mask, metadata !988, metadata !DIExpression()) #7, !dbg !1963
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #7, !dbg !1963
  call void @llvm.dbg.value(metadata ptr null, metadata !994, metadata !DIExpression()) #7, !dbg !1963
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %mask, i64 0, i32 2, !dbg !1965
  %0 = load i32, ptr %sv_flags.i, align 4, !dbg !1965
  %and.i = and i32 %0, 65280, !dbg !1965
  %tobool.not.i = icmp ne i32 %and.i, 0, !dbg !1965
  %and2.i = and i32 %0, 255, !dbg !1965
  %cmp.i = icmp eq i32 %and2.i, 8, !dbg !1965
  %or.cond27.i = or i1 %tobool.not.i, %cmp.i, !dbg !1965
  %and5.i = and i32 %0, 16826623, !dbg !1965
  %cmp6.i = icmp eq i32 %and5.i, 16777226, !dbg !1965
  %or.cond28.i = select i1 %or.cond27.i, i1 true, i1 %cmp6.i, !dbg !1965
  br i1 %or.cond28.i, label %if.else.i, label %if.then18.i, !dbg !1965

if.else.i:                                        ; preds = %entry
  %and8.i = and i32 %0, 1024, !dbg !1966
  %tobool9.not.i = icmp eq i32 %and8.i, 0, !dbg !1966
  br i1 %tobool9.not.i, label %if.then18.i, label %if.end15.i, !dbg !1967

if.end15.i:                                       ; preds = %if.else.i
  %1 = load ptr, ptr %mask, align 8, !dbg !1968
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !1968
  %2 = load i64, ptr %xpv_cur.i, align 8, !dbg !1968
  %3 = load i64, ptr @my_cxt.2, align 8, !dbg !1969
  %cmp12.not.i = icmp eq i64 %2, %3, !dbg !1970
  call void @llvm.dbg.value(metadata ptr undef, metadata !994, metadata !DIExpression()) #7, !dbg !1963
  br i1 %cmp12.not.i, label %verify_opset.exit, label %if.then18.i, !dbg !1971

if.then18.i:                                      ; preds = %if.else.i, %entry, %if.end15.i
  %err.0.i22 = phi ptr [ @.str.37, %if.end15.i ], [ @.str.36, %if.else.i ], [ @.str.35, %entry ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef nonnull %err.0.i22) #7, !dbg !1972
  br label %verify_opset.exit, !dbg !1973

verify_opset.exit:                                ; preds = %if.end15.i, %if.then18.i
  %4 = load ptr, ptr @my_cxt.0, align 8, !dbg !1974
  %conv = trunc i64 %len to i32, !dbg !1974
  %call1 = tail call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef %optag, i32 noundef %conv, i32 noundef 48, ptr noundef null, i32 noundef 0) #7, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1961, metadata !DIExpression()), !dbg !1962
  %5 = load ptr, ptr %call1, align 8, !dbg !1975
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1975
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1975
  %and = and i32 %6, 65280, !dbg !1975
  %tobool.not = icmp ne i32 %and, 0, !dbg !1975
  %and3 = and i32 %6, 255, !dbg !1975
  %cmp = icmp eq i32 %and3, 8, !dbg !1975
  %or.cond = or i1 %tobool.not, %cmp, !dbg !1975
  %and7 = and i32 %6, 16826623, !dbg !1975
  %cmp8 = icmp eq i32 %and7, 16777226, !dbg !1975
  %or.cond17 = select i1 %or.cond, i1 true, i1 %cmp8, !dbg !1975
  br i1 %or.cond17, label %if.then, label %if.end, !dbg !1975

if.then:                                          ; preds = %verify_opset.exit
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58, ptr noundef %optag) #7, !dbg !1977
  %.pre = load ptr, ptr %call1, align 8, !dbg !1978
  br label %if.end, !dbg !1977

if.end:                                           ; preds = %verify_opset.exit, %if.then
  %7 = phi ptr [ %5, %verify_opset.exit ], [ %.pre, %if.then ], !dbg !1978
  tail call void @Perl_sv_setsv_flags(ptr noundef %7, ptr noundef nonnull %mask, i32 noundef 2) #7, !dbg !1978
  %8 = load ptr, ptr %call1, align 8, !dbg !1979
  %sv_flags10 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !1979
  %9 = load i32, ptr %sv_flags10, align 4, !dbg !1979
  %or = or i32 %9, 134217728, !dbg !1979
  store i32 %or, ptr %sv_flags10, align 4, !dbg !1979
  ret void, !dbg !1980
}

declare !dbg !1981 ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1984 ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!674, !675, !676, !677, !678, !679}
!llvm.ident = !{!680}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!1 = distinct !DIGlobalVariable(name: "my_cxt", scope: !2, file: !664, line: 31, type: !665, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !662, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/Opcode.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "2dc8054f94b87aedc4d04bb8c7734501")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 132, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!9 = !DIEnumerator(name: "SVt_NULL", value: 0)
!10 = !DIEnumerator(name: "SVt_IV", value: 1)
!11 = !DIEnumerator(name: "SVt_NV", value: 2)
!12 = !DIEnumerator(name: "SVt_PV", value: 3)
!13 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!14 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!15 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!16 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!17 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!18 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!19 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!20 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!21 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!22 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!23 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!24 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!25 = !DIEnumerator(name: "SVt_LAST", value: 16)
!26 = !{!27, !30, !72, !84, !593, !42, !134, !67, !425, !300, !37, !635, !554, !80, !351, !636, !648, !100, !29, !649, !83, !313, !258, !7}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !28, line: 174, baseType: !29)
!28 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !32, line: 2669, baseType: !33)
!32 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !34, line: 13, size: 832, elements: !35)
!34 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!35 = !{!36, !530, !531, !532, !537, !538, !558, !566, !571, !572, !588, !589, !590, !592}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !33, file: !34, line: 14, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !32, line: 2649, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !6, line: 246, size: 192, elements: !40)
!40 = !{!41, !515, !516, !517}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !39, file: !6, line: 247, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !32, line: 2667, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !45, line: 130, size: 256, elements: !46)
!45 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!46 = !{!47, !48, !513, !514}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !44, file: !45, line: 131, baseType: !37, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !44, file: !45, line: 132, baseType: !49, size: 64, offset: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !6, line: 494, size: 64, elements: !50)
!50 = !{!51, !512}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !49, file: !6, line: 495, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !32, line: 2658, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !55, line: 23, size: 384, elements: !56)
!55 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!56 = !{!57, !58, !504, !507, !508, !509, !510, !511}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !54, file: !55, line: 24, baseType: !52, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !54, file: !55, line: 25, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !32, line: 2673, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !55, line: 11, size: 512, elements: !62)
!62 = !{!63, !474, !475, !479, !480, !481, !485, !503}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !61, file: !55, line: 12, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!29, !67, !52}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !32, line: 2647, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !6, line: 218, size: 192, elements: !70)
!70 = !{!71, !73, !75, !76}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !69, file: !6, line: 219, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !69, file: !6, line: 219, baseType: !74, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !28, line: 175, baseType: !7)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !69, file: !6, line: 219, baseType: !74, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !69, file: !6, line: 220, baseType: !77, size: 64, offset: 128)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !6, line: 220, size: 64, elements: !78)
!78 = !{!79, !82, !85, !88, !91, !92, !470, !471, !472, !473}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !77, file: !6, line: 220, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !77, file: !6, line: 220, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !32, line: 1670, baseType: !84)
!84 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !77, file: !6, line: 220, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !32, line: 1671, baseType: !87)
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !77, file: !6, line: 220, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !32, line: 1877, baseType: !90)
!90 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !77, file: !6, line: 220, baseType: !67, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !77, file: !6, line: 220, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !95, line: 140, size: 1536, elements: !96)
!95 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!96 = !{!97, !98, !99, !103, !108, !426, !427, !428, !429, !430, !431, !432, !448, !449, !450, !451, !452, !453, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !94, file: !95, line: 141, baseType: !37, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !94, file: !95, line: 141, baseType: !49, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !94, file: !95, line: 141, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !32, line: 2615, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !87)
!102 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !94, file: !95, line: 141, baseType: !104, size: 64, offset: 192)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !95, line: 141, size: 64, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !104, file: !95, line: 141, baseType: !100, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !104, file: !95, line: 141, baseType: !80, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !94, file: !95, line: 142, baseType: !109, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !95, line: 157, size: 768, elements: !112)
!112 = !{!113, !341, !346, !362, !366, !370, !375, !382, !386, !390, !394, !395}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !111, file: !95, line: 158, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !340, !74}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !32, line: 2651, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !6, line: 256, size: 192, elements: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !119, file: !6, line: 257, baseType: !93, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !119, file: !6, line: 257, baseType: !74, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !119, file: !6, line: 257, baseType: !74, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !119, file: !6, line: 258, baseType: !125, size: 64, offset: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !6, line: 258, size: 64, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !135, !158, !339}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !125, file: !6, line: 258, baseType: !80, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !125, file: !6, line: 258, baseType: !83, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !125, file: !6, line: 258, baseType: !86, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !125, file: !6, line: 258, baseType: !89, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !125, file: !6, line: 258, baseType: !67, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !125, file: !6, line: 258, baseType: !93, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !125, file: !6, line: 258, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !125, file: !6, line: 258, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !6, line: 186, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !45, line: 32, size: 192, elements: !140)
!140 = !{!141, !142, !153}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !139, file: !45, line: 36, baseType: !137, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !139, file: !45, line: 37, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !6, line: 187, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !45, line: 45, size: 96, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !145, file: !45, line: 46, baseType: !74, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !145, file: !45, line: 47, baseType: !27, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !145, file: !45, line: 48, baseType: !150, size: 8, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 1)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !139, file: !45, line: 41, baseType: !154, size: 64, offset: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !45, line: 38, size: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !154, file: !45, line: 39, baseType: !67, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !154, file: !45, line: 40, baseType: !101, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !125, file: !6, line: 258, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !32, line: 2652, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !162, line: 11, size: 640, elements: !163)
!162 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!163 = !{!164, !165, !275, !296, !297, !298, !299, !334, !335, !336, !337, !338}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !161, file: !162, line: 12, baseType: !67, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !161, file: !162, line: 13, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !6, line: 251, size: 192, elements: !168)
!168 = !{!169, !260, !261, !262}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !167, file: !6, line: 252, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !32, line: 2672, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !6, line: 603, size: 1088, elements: !173)
!173 = !{!174, !175, !176, !177, !182, !188, !195, !204, !205, !206, !207, !208, !252, !253, !254, !255, !256, !257}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !172, file: !6, line: 604, baseType: !37, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !172, file: !6, line: 604, baseType: !49, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !172, file: !6, line: 604, baseType: !100, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !172, file: !6, line: 604, baseType: !178, size: 64, offset: 192)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !6, line: 604, size: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !178, file: !6, line: 604, baseType: !100, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !178, file: !6, line: 604, baseType: !80, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !172, file: !6, line: 605, baseType: !183, size: 64, offset: 256)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !6, line: 488, size: 64, elements: !184)
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !183, file: !6, line: 489, baseType: !83, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !183, file: !6, line: 490, baseType: !86, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !183, file: !6, line: 491, baseType: !143, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !172, file: !6, line: 607, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !191, line: 85, baseType: !192)
!191 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !191, line: 83, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !191, line: 83, flags: DIFlagFwdDecl)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !172, file: !6, line: 620, baseType: !196, size: 64, offset: 384)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !6, line: 617, size: 64, elements: !197)
!197 = !{!198, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !196, file: !6, line: 618, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !201, line: 127, baseType: !202)
!201 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !201, line: 127, flags: DIFlagFwdDecl)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !196, file: !6, line: 619, baseType: !72, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !172, file: !6, line: 622, baseType: !83, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !172, file: !6, line: 623, baseType: !83, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !172, file: !6, line: 624, baseType: !83, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !172, file: !6, line: 625, baseType: !80, size: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !172, file: !6, line: 626, baseType: !209, size: 64, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !32, line: 2653, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !6, line: 231, size: 192, elements: !212)
!212 = !{!213, !237, !238, !239}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !211, file: !6, line: 232, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !32, line: 2668, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !6, line: 561, size: 384, elements: !217)
!217 = !{!218, !219, !220, !221, !226, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !216, file: !6, line: 562, baseType: !37, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !216, file: !6, line: 562, baseType: !49, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !216, file: !6, line: 562, baseType: !100, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !216, file: !6, line: 562, baseType: !222, size: 64, offset: 192)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !6, line: 562, size: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !222, file: !6, line: 562, baseType: !100, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !222, file: !6, line: 562, baseType: !80, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !216, file: !6, line: 563, baseType: !183, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !216, file: !6, line: 564, baseType: !228, size: 64, offset: 320)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !6, line: 479, size: 64, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !228, file: !6, line: 480, baseType: !89, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !228, file: !6, line: 481, baseType: !37, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !228, file: !6, line: 485, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !6, line: 482, size: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !233, file: !6, line: 483, baseType: !74, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !233, file: !6, line: 484, baseType: !74, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !211, file: !6, line: 232, baseType: !74, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !211, file: !6, line: 232, baseType: !74, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !211, file: !6, line: 233, baseType: !240, size: 64, offset: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !6, line: 233, size: 64, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !240, file: !6, line: 233, baseType: !80, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !240, file: !6, line: 233, baseType: !83, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !240, file: !6, line: 233, baseType: !86, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !240, file: !6, line: 233, baseType: !89, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !240, file: !6, line: 233, baseType: !67, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !240, file: !6, line: 233, baseType: !93, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !240, file: !6, line: 233, baseType: !134, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !240, file: !6, line: 233, baseType: !136, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !240, file: !6, line: 233, baseType: !159, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !240, file: !6, line: 233, baseType: !189, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !172, file: !6, line: 627, baseType: !80, size: 64, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !172, file: !6, line: 628, baseType: !209, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !172, file: !6, line: 629, baseType: !80, size: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !172, file: !6, line: 630, baseType: !209, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !172, file: !6, line: 631, baseType: !81, size: 8, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !172, file: !6, line: 632, baseType: !258, size: 8, offset: 1032)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !28, line: 171, baseType: !259)
!259 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !167, file: !6, line: 252, baseType: !74, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !167, file: !6, line: 252, baseType: !74, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !167, file: !6, line: 253, baseType: !263, size: 64, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !6, line: 253, size: 64, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !263, file: !6, line: 253, baseType: !80, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !263, file: !6, line: 253, baseType: !83, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !263, file: !6, line: 253, baseType: !86, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !263, file: !6, line: 253, baseType: !89, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !263, file: !6, line: 253, baseType: !67, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !263, file: !6, line: 253, baseType: !93, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !263, file: !6, line: 253, baseType: !134, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !263, file: !6, line: 253, baseType: !136, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !263, file: !6, line: 253, baseType: !159, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !263, file: !6, line: 253, baseType: !189, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !161, file: !162, line: 14, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !32, line: 2650, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !6, line: 236, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !278, file: !6, line: 237, baseType: !30, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !278, file: !6, line: 237, baseType: !74, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !278, file: !6, line: 237, baseType: !74, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !278, file: !6, line: 238, baseType: !284, size: 64, offset: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !6, line: 238, size: 64, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !284, file: !6, line: 238, baseType: !80, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !284, file: !6, line: 238, baseType: !83, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !284, file: !6, line: 238, baseType: !86, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !284, file: !6, line: 238, baseType: !89, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !284, file: !6, line: 238, baseType: !67, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !284, file: !6, line: 238, baseType: !93, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !284, file: !6, line: 238, baseType: !134, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !284, file: !6, line: 238, baseType: !136, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !284, file: !6, line: 238, baseType: !159, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !284, file: !6, line: 238, baseType: !189, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !161, file: !162, line: 15, baseType: !74, size: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !161, file: !162, line: 16, baseType: !74, size: 32, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !161, file: !162, line: 17, baseType: !37, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !161, file: !162, line: 18, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !32, line: 2648, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !6, line: 241, size: 192, elements: !303)
!303 = !{!304, !319, !320, !321}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !302, file: !6, line: 242, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !32, line: 2666, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !308, line: 11, size: 320, elements: !309)
!308 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!309 = !{!310, !311, !312, !317, !318}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !307, file: !308, line: 12, baseType: !37, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !307, file: !308, line: 13, baseType: !49, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !307, file: !308, line: 14, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !314, line: 108, baseType: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !316, line: 193, baseType: !84)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !307, file: !308, line: 15, baseType: !313, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !307, file: !308, line: 16, baseType: !134, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !302, file: !6, line: 242, baseType: !74, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !302, file: !6, line: 242, baseType: !74, size: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !302, file: !6, line: 243, baseType: !322, size: 64, offset: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !6, line: 243, size: 64, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !322, file: !6, line: 243, baseType: !80, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !322, file: !6, line: 243, baseType: !83, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !322, file: !6, line: 243, baseType: !86, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !322, file: !6, line: 243, baseType: !89, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !322, file: !6, line: 243, baseType: !67, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !322, file: !6, line: 243, baseType: !93, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !322, file: !6, line: 243, baseType: !134, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !322, file: !6, line: 243, baseType: !136, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !322, file: !6, line: 243, baseType: !159, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !322, file: !6, line: 243, baseType: !189, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !161, file: !162, line: 19, baseType: !276, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !161, file: !162, line: 20, baseType: !209, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !161, file: !162, line: 21, baseType: !7, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !161, file: !162, line: 22, baseType: !7, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !161, file: !162, line: 23, baseType: !143, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !125, file: !6, line: 258, baseType: !189, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !111, file: !95, line: 159, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!27, !345, !80, !80, !80, !313, !67, !72, !74}
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !111, file: !95, line: 162, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!80, !345, !67, !350, !80, !80, !353, !354}
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !95, line: 152, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !95, line: 148, size: 128, elements: !357)
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !356, file: !95, line: 150, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !356, file: !95, line: 151, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !111, file: !95, line: 170, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!67, !345}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !111, file: !95, line: 171, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !345}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !111, file: !95, line: 172, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !345, !374, !340}
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !111, file: !95, line: 174, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !345, !374, !379}
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !111, file: !95, line: 176, baseType: !383, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!27, !345, !379, !374}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !111, file: !95, line: 178, baseType: !387, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!67, !345, !340, !340, !353}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !111, file: !95, line: 180, baseType: !391, size: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!67, !345, !379, !353}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !111, file: !95, line: 182, baseType: !363, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !111, file: !95, line: 186, baseType: !396, size: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!117, !399, !29, !400, !109, !117, !424, !74, !74}
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !32, line: 2617, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !403, line: 202, size: 320, elements: !404)
!403 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!404 = !{!405, !406, !407, !411, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !402, file: !403, line: 203, baseType: !400, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !402, file: !403, line: 203, baseType: !400, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !402, file: !403, line: 203, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!400}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !402, file: !403, line: 203, baseType: !412, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !413, line: 25, baseType: !87)
!413 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !402, file: !403, line: 203, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !402, file: !403, line: 203, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !402, file: !403, line: 203, baseType: !258, size: 8, offset: 272)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !402, file: !403, line: 203, baseType: !258, size: 8, offset: 280)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !94, file: !95, line: 142, baseType: !117, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !94, file: !95, line: 142, baseType: !37, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !94, file: !95, line: 142, baseType: !74, size: 32, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !94, file: !95, line: 142, baseType: !313, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !94, file: !95, line: 142, baseType: !313, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !94, file: !95, line: 142, baseType: !100, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !94, file: !95, line: 142, baseType: !433, size: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !95, line: 45, size: 1024, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !434, file: !95, line: 46, baseType: !258, size: 8)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !95, line: 47, baseType: !438, size: 960, offset: 64)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 960, elements: !446)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !95, line: 38, size: 320, elements: !440)
!440 = !{!441, !442, !443, !444, !445}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !439, file: !95, line: 39, baseType: !313, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !439, file: !95, line: 40, baseType: !313, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !439, file: !95, line: 41, baseType: !67, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !439, file: !95, line: 42, baseType: !67, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !439, file: !95, line: 43, baseType: !313, size: 64, offset: 256)
!446 = !{!447}
!447 = !DISubrange(count: 3)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !94, file: !95, line: 142, baseType: !74, size: 32, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !94, file: !95, line: 142, baseType: !74, size: 32, offset: 800)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !94, file: !95, line: 142, baseType: !72, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !94, file: !95, line: 142, baseType: !74, size: 32, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !94, file: !95, line: 142, baseType: !74, size: 32, offset: 928)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !94, file: !95, line: 142, baseType: !454, size: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !95, line: 68, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !95, line: 58, size: 192, elements: !457)
!457 = !{!458, !459, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !456, file: !95, line: 59, baseType: !313, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !456, file: !95, line: 60, baseType: !313, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !456, file: !95, line: 67, baseType: !313, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !94, file: !95, line: 142, baseType: !80, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !94, file: !95, line: 142, baseType: !67, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !94, file: !95, line: 142, baseType: !313, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !94, file: !95, line: 142, baseType: !313, size: 64, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !94, file: !95, line: 142, baseType: !313, size: 64, offset: 1280)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !94, file: !95, line: 142, baseType: !313, size: 64, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !94, file: !95, line: 142, baseType: !7, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !94, file: !95, line: 142, baseType: !7, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !94, file: !95, line: 142, baseType: !276, size: 64, offset: 1472)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !77, file: !6, line: 220, baseType: !134, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !77, file: !6, line: 220, baseType: !136, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !77, file: !6, line: 220, baseType: !159, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !77, file: !6, line: 220, baseType: !189, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !61, file: !55, line: 13, baseType: !64, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !61, file: !55, line: 14, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!74, !67, !52}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !61, file: !55, line: 15, baseType: !64, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !61, file: !55, line: 16, baseType: !64, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !61, file: !55, line: 17, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!29, !67, !52, !67, !351, !27}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !61, file: !55, line: 19, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!29, !52, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !32, line: 2677, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !6, line: 2150, size: 320, elements: !492)
!492 = !{!493, !494, !495, !501, !502}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !491, file: !6, line: 2151, baseType: !300, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !6, line: 2152, baseType: !86, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !491, file: !6, line: 2153, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !32, line: 2639, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !32, line: 5434, size: 8, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !498, file: !32, line: 5435, baseType: !81, size: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !491, file: !6, line: 2154, baseType: !496, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !491, file: !6, line: 2155, baseType: !300, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !61, file: !55, line: 20, baseType: !64, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !54, file: !55, line: 26, baseType: !505, size: 16, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !28, line: 173, baseType: !506)
!506 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !54, file: !55, line: 27, baseType: !81, size: 8, offset: 144)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !54, file: !55, line: 28, baseType: !258, size: 8, offset: 152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !54, file: !55, line: 29, baseType: !313, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !54, file: !55, line: 30, baseType: !67, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !54, file: !55, line: 31, baseType: !80, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !49, file: !6, line: 496, baseType: !100, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !44, file: !45, line: 133, baseType: !100, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !44, file: !45, line: 134, baseType: !100, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !39, file: !6, line: 247, baseType: !74, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !39, file: !6, line: 247, baseType: !74, size: 32, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !39, file: !6, line: 248, baseType: !518, size: 64, offset: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !6, line: 248, size: 64, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !518, file: !6, line: 248, baseType: !80, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !518, file: !6, line: 248, baseType: !83, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !518, file: !6, line: 248, baseType: !86, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !518, file: !6, line: 248, baseType: !89, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !518, file: !6, line: 248, baseType: !67, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !518, file: !6, line: 248, baseType: !93, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !518, file: !6, line: 248, baseType: !134, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !518, file: !6, line: 248, baseType: !136, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !518, file: !6, line: 248, baseType: !159, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !518, file: !6, line: 248, baseType: !189, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !33, file: !34, line: 14, baseType: !49, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !33, file: !34, line: 14, baseType: !100, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !33, file: !34, line: 14, baseType: !533, size: 64, offset: 192)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 14, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !533, file: !34, line: 14, baseType: !100, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !533, file: !34, line: 14, baseType: !80, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !33, file: !34, line: 15, baseType: !37, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !33, file: !34, line: 15, baseType: !539, size: 64, offset: 320)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 15, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !539, file: !34, line: 15, baseType: !400, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !539, file: !34, line: 15, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !32, line: 2674, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !32, line: 3691, size: 64, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !557}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !544, file: !32, line: 3692, baseType: !72, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !544, file: !32, line: 3693, baseType: !27, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !544, file: !32, line: 3694, baseType: !74, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !544, file: !32, line: 3695, baseType: !83, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !544, file: !32, line: 3696, baseType: !86, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !544, file: !32, line: 3697, baseType: !84, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !544, file: !32, line: 3698, baseType: !425, size: 8)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !544, file: !32, line: 3699, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !72}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !544, file: !32, line: 3700, baseType: !554, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !33, file: !34, line: 15, baseType: !559, size: 64, offset: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 15, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !559, file: !34, line: 15, baseType: !400, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !559, file: !34, line: 15, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !276}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !33, file: !34, line: 15, baseType: !567, size: 64, offset: 448)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 15, size: 64, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !567, file: !34, line: 15, baseType: !209, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !567, file: !34, line: 15, baseType: !143, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !33, file: !34, line: 15, baseType: !80, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !33, file: !34, line: 15, baseType: !573, size: 64, offset: 576)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 15, size: 64, elements: !574)
!574 = !{!575, !587}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !573, file: !34, line: 15, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !32, line: 2681, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !413, line: 34, size: 192, elements: !579)
!579 = !{!580, !581, !585, !586}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !578, file: !413, line: 35, baseType: !313, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !578, file: !413, line: 36, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !32, line: 2682, baseType: !301)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !578, file: !413, line: 37, baseType: !74, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !578, file: !413, line: 38, baseType: !74, size: 32, offset: 160)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !573, file: !34, line: 15, baseType: !72, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !33, file: !34, line: 15, baseType: !276, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !33, file: !34, line: 15, baseType: !74, size: 32, offset: 704)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !33, file: !34, line: 15, baseType: !591, size: 32, offset: 736)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !6, line: 567, baseType: !74)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !33, file: !34, line: 15, baseType: !27, size: 32, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv_aux", file: !45, line: 102, size: 448, elements: !595)
!595 = !{!596, !602, !603, !604, !605, !606, !631, !632, !633, !634}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_u", scope: !594, file: !45, line: 103, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xhvnameu", file: !45, line: 97, size: 64, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_name", scope: !597, file: !45, line: 98, baseType: !143, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_names", scope: !597, file: !45, line: 99, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_backreferences", scope: !594, file: !45, line: 104, baseType: !300, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_eiter", scope: !594, file: !45, line: 105, baseType: !137, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_riter", scope: !594, file: !45, line: 106, baseType: !27, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_count", scope: !594, file: !45, line: 114, baseType: !27, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_mro_meta", scope: !594, file: !45, line: 115, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_meta", file: !45, line: 72, size: 512, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !628, !629, !630}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_all", scope: !608, file: !45, line: 74, baseType: !37, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_current", scope: !608, file: !45, line: 78, baseType: !67, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mro_nextmethod", scope: !608, file: !45, line: 79, baseType: !37, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cache_gen", scope: !608, file: !45, line: 80, baseType: !74, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_gen", scope: !608, file: !45, line: 81, baseType: !74, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mro_which", scope: !608, file: !45, line: 82, baseType: !616, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_alg", file: !45, line: 64, size: 192, elements: !619)
!619 = !{!620, !624, !625, !626, !627}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "resolve", scope: !618, file: !45, line: 65, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!300, !37, !74}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !618, file: !45, line: 66, baseType: !351, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !618, file: !45, line: 67, baseType: !505, size: 16, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !618, file: !45, line: 68, baseType: !505, size: 16, offset: 144)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !618, file: !45, line: 69, baseType: !74, size: 32, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !608, file: !45, line: 83, baseType: !37, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !608, file: !45, line: 84, baseType: !37, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_gen", scope: !608, file: !45, line: 85, baseType: !74, size: 32, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_rand", scope: !594, file: !45, line: 117, baseType: !74, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_last_rand", scope: !594, file: !45, line: 118, baseType: !74, size: 32, offset: 352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_fill_lazy", scope: !594, file: !45, line: 121, baseType: !74, size: 32, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_aux_flags", scope: !594, file: !45, line: 122, baseType: !74, size: 32, offset: 416)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "DESTRUCTORFUNC_NOCONTEXT_t", file: !32, line: 5396, baseType: !554)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !32, line: 2659, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !6, line: 499, size: 256, elements: !639)
!639 = !{!640, !641, !642, !643}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !638, file: !6, line: 500, baseType: !37, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !638, file: !6, line: 500, baseType: !49, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !638, file: !6, line: 500, baseType: !100, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !638, file: !6, line: 500, baseType: !644, size: 64, offset: 192)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !6, line: 500, size: 64, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !644, file: !6, line: 500, baseType: !100, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !644, file: !6, line: 500, baseType: !80, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !6, line: 153, baseType: !5)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIV", file: !32, line: 2660, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpviv", file: !6, line: 503, size: 320, elements: !652)
!652 = !{!653, !654, !655, !656, !661}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !651, file: !6, line: 504, baseType: !37, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !651, file: !6, line: 504, baseType: !49, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !651, file: !6, line: 504, baseType: !100, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !651, file: !6, line: 504, baseType: !657, size: 64, offset: 192)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !6, line: 504, size: 64, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !657, file: !6, line: 504, baseType: !100, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !657, file: !6, line: 504, baseType: !80, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !651, file: !6, line: 505, baseType: !183, size: 64, offset: 256)
!662 = !{!663}
!663 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!664 = !DIFile(filename: "apps/500.perlbench_r/src/Opcode.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2dc8054f94b87aedc4d04bb8c7734501")
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cxt_t", file: !664, line: 29, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !664, line: 24, size: 256, elements: !667)
!667 = !{!668, !669, !670, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "x_op_named_bits", scope: !666, file: !664, line: 25, baseType: !37, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "x_opset_all", scope: !666, file: !664, line: 26, baseType: !67, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "x_opset_len", scope: !666, file: !664, line: 27, baseType: !83, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "x_opcode_debug", scope: !666, file: !664, line: 28, baseType: !29, size: 32, offset: 192)
!672 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 64))
!673 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!674 = !{i32 7, !"Dwarf Version", i32 5}
!675 = !{i32 2, !"Debug Info Version", i32 3}
!676 = !{i32 1, !"wchar_size", i32 4}
!677 = !{i32 7, !"PIC Level", i32 2}
!678 = !{i32 7, !"PIE Level", i32 2}
!679 = !{i32 7, !"uwtable", i32 2}
!680 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!681 = distinct !DISubprogram(name: "boot_Opcode", scope: !664, file: !664, line: 852, type: !564, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689}
!683 = !DILocalVariable(name: "cv", arg: 1, scope: !681, file: !664, line: 852, type: !276)
!684 = !DILocalVariable(name: "sp", scope: !681, file: !664, line: 854, type: !134)
!685 = !DILocalVariable(name: "ax", scope: !681, file: !664, line: 854, type: !27)
!686 = !DILocalVariable(name: "mark", scope: !681, file: !664, line: 854, type: !134)
!687 = !DILocalVariable(name: "items", scope: !681, file: !664, line: 854, type: !27)
!688 = !DILocalVariable(name: "file", scope: !681, file: !664, line: 858, type: !351)
!689 = !DILocalVariable(name: "tmpXSoff", scope: !690, file: !664, line: 910, type: !692)
!690 = distinct !DILexicalBlock(scope: !691, file: !664, line: 910, column: 5)
!691 = distinct !DILexicalBlock(scope: !681, file: !664, line: 910, column: 5)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!693 = !DILocation(line: 0, scope: !681)
!694 = !DILocation(line: 854, column: 11, scope: !681)
!695 = !DILocation(line: 864, column: 5, scope: !681)
!696 = !DILocation(line: 868, column: 15, scope: !681)
!697 = !DILocation(line: 869, column: 15, scope: !681)
!698 = !DILocation(line: 870, column: 15, scope: !681)
!699 = !DILocation(line: 871, column: 15, scope: !681)
!700 = !DILocation(line: 872, column: 15, scope: !681)
!701 = !DILocation(line: 873, column: 15, scope: !681)
!702 = !DILocation(line: 874, column: 14, scope: !681)
!703 = !DILocation(line: 875, column: 9, scope: !681)
!704 = !DILocation(line: 875, column: 23, scope: !681)
!705 = !DILocation(line: 876, column: 14, scope: !681)
!706 = !DILocation(line: 877, column: 9, scope: !681)
!707 = !DILocation(line: 877, column: 23, scope: !681)
!708 = !DILocation(line: 878, column: 14, scope: !681)
!709 = !DILocation(line: 879, column: 9, scope: !681)
!710 = !DILocation(line: 879, column: 23, scope: !681)
!711 = !DILocation(line: 880, column: 14, scope: !681)
!712 = !DILocation(line: 881, column: 9, scope: !681)
!713 = !DILocation(line: 881, column: 23, scope: !681)
!714 = !DILocation(line: 882, column: 15, scope: !681)
!715 = !DILocation(line: 883, column: 15, scope: !681)
!716 = !DILocation(line: 884, column: 15, scope: !681)
!717 = !DILocation(line: 885, column: 15, scope: !681)
!718 = !DILocation(line: 886, column: 15, scope: !681)
!719 = !DILocation(line: 887, column: 15, scope: !681)
!720 = !DILocation(line: 888, column: 15, scope: !681)
!721 = !DILocation(line: 896, column: 18, scope: !722)
!722 = distinct !DILexicalBlock(scope: !681, file: !664, line: 893, column: 1)
!723 = !DILocation(line: 896, column: 26, scope: !722)
!724 = !DILocation(line: 896, column: 31, scope: !722)
!725 = !DILocation(line: 896, column: 17, scope: !722)
!726 = !DILocation(line: 896, column: 15, scope: !722)
!727 = !DILocation(line: 57, column: 5, scope: !728, inlinedAt: !740)
!728 = distinct !DISubprogram(name: "op_names_init", scope: !664, file: !664, line: 54, type: !729, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{null}
!731 = !{!732, !733, !734, !735, !736}
!732 = !DILocalVariable(name: "i", scope: !728, file: !664, line: 56, type: !29)
!733 = !DILocalVariable(name: "len", scope: !728, file: !664, line: 57, type: !100)
!734 = !DILocalVariable(name: "op_names", scope: !728, file: !664, line: 58, type: !359)
!735 = !DILocalVariable(name: "bitmap", scope: !728, file: !664, line: 59, type: !80)
!736 = !DILocalVariable(name: "sv", scope: !737, file: !664, line: 65, type: !340)
!737 = distinct !DILexicalBlock(scope: !738, file: !664, line: 64, column: 32)
!738 = distinct !DILexicalBlock(scope: !739, file: !664, line: 64, column: 5)
!739 = distinct !DILexicalBlock(scope: !728, file: !664, line: 64, column: 5)
!740 = distinct !DILocation(line: 899, column: 5, scope: !722)
!741 = !DILocation(line: 62, column: 21, scope: !728, inlinedAt: !740)
!742 = !DILocation(line: 62, column: 19, scope: !728, inlinedAt: !740)
!743 = !DILocation(line: 63, column: 16, scope: !728, inlinedAt: !740)
!744 = !DILocation(line: 0, scope: !728, inlinedAt: !740)
!745 = !DILocation(line: 64, column: 18, scope: !738, inlinedAt: !740)
!746 = !DILocation(line: 64, column: 16, scope: !738, inlinedAt: !740)
!747 = !DILocation(line: 64, column: 5, scope: !739, inlinedAt: !740)
!748 = !DILocation(line: 65, column: 18, scope: !737, inlinedAt: !740)
!749 = !DILocation(line: 0, scope: !737, inlinedAt: !740)
!750 = !DILocation(line: 66, column: 2, scope: !737, inlinedAt: !740)
!751 = !DILocation(line: 67, column: 9, scope: !737, inlinedAt: !740)
!752 = !DILocation(line: 64, column: 27, scope: !738, inlinedAt: !740)
!753 = distinct !{!753, !747, !754, !755, !756}
!754 = !DILocation(line: 68, column: 5, scope: !739, inlinedAt: !740)
!755 = !{!"llvm.loop.mustprogress"}
!756 = !{!"llvm.loop.unroll.disable"}
!757 = !DILocalVariable(name: "old_opset", arg: 1, scope: !758, file: !664, line: 131, type: !67)
!758 = distinct !DISubprogram(name: "new_opset", scope: !664, file: !664, line: 131, type: !759, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!67, !67}
!761 = !{!757, !762}
!762 = !DILocalVariable(name: "opset", scope: !758, file: !664, line: 133, type: !67)
!763 = !DILocation(line: 0, scope: !758, inlinedAt: !764)
!764 = distinct !DILocation(line: 70, column: 49, scope: !728, inlinedAt: !740)
!765 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !764)
!766 = distinct !DILexicalBlock(scope: !767, file: !664, line: 140, column: 10)
!767 = distinct !DILexicalBlock(scope: !758, file: !664, line: 136, column: 9)
!768 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !764)
!769 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !764)
!770 = distinct !DILexicalBlock(scope: !766, file: !664, line: 143, column: 2)
!771 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !764)
!772 = !DILocation(line: 70, column: 49, scope: !728, inlinedAt: !740)
!773 = !DILocation(line: 70, column: 5, scope: !728, inlinedAt: !740)
!774 = !DILocation(line: 0, scope: !758, inlinedAt: !775)
!775 = distinct !DILocation(line: 72, column: 17, scope: !728, inlinedAt: !740)
!776 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !775)
!777 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !775)
!778 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !775)
!779 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !775)
!780 = !DILocation(line: 72, column: 15, scope: !728, inlinedAt: !740)
!781 = !DILocation(line: 73, column: 14, scope: !728, inlinedAt: !740)
!782 = !DILocation(line: 74, column: 26, scope: !728, inlinedAt: !740)
!783 = !DILocation(line: 74, column: 29, scope: !728, inlinedAt: !740)
!784 = !DILocation(line: 74, column: 5, scope: !728, inlinedAt: !740)
!785 = !DILocation(line: 76, column: 22, scope: !728, inlinedAt: !740)
!786 = !DILocation(line: 76, column: 30, scope: !728, inlinedAt: !740)
!787 = !DILocation(line: 76, column: 21, scope: !728, inlinedAt: !740)
!788 = !DILocation(line: 76, column: 47, scope: !728, inlinedAt: !740)
!789 = !DILocation(line: 76, column: 12, scope: !728, inlinedAt: !740)
!790 = !DILocation(line: 76, column: 15, scope: !728, inlinedAt: !740)
!791 = !DILocation(line: 76, column: 5, scope: !728, inlinedAt: !740)
!792 = !DILocation(line: 76, column: 19, scope: !728, inlinedAt: !740)
!793 = !DILocation(line: 77, column: 48, scope: !728, inlinedAt: !740)
!794 = !DILocation(line: 77, column: 5, scope: !728, inlinedAt: !740)
!795 = !DILocation(line: 78, column: 1, scope: !728, inlinedAt: !740)
!796 = !DILocation(line: 907, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !681, file: !664, line: 907, column: 7)
!798 = !DILocation(line: 907, column: 7, scope: !681)
!799 = !DILocation(line: 908, column: 8, scope: !797)
!800 = !DILocation(line: 910, column: 5, scope: !691)
!801 = !DILocation(line: 0, scope: !690)
!802 = !DILocation(line: 910, column: 5, scope: !690)
!803 = !DILocation(line: 911, column: 1, scope: !681)
!804 = !DISubprogram(name: "Perl_xs_handshake", scope: !805, file: !805, line: 5238, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!805 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!806 = !DISubroutineType(types: !807)
!807 = !{!27, !353, !72, !351, null}
!808 = !{}
!809 = !DISubprogram(name: "Perl_newXS_flags", scope: !805, file: !805, line: 3168, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!810 = !DISubroutineType(types: !811)
!811 = !{!276, !351, !812, !350, !350, !74}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSUBADDR_t", file: !32, line: 5402, baseType: !563)
!813 = distinct !DISubprogram(name: "XS_Opcode__safe_pkg_prep", scope: !664, file: !664, line: 398, type: !564, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !822, !823}
!815 = !DILocalVariable(name: "cv", arg: 1, scope: !813, file: !664, line: 398, type: !276)
!816 = !DILocalVariable(name: "sp", scope: !813, file: !664, line: 400, type: !134)
!817 = !DILocalVariable(name: "ax", scope: !813, file: !664, line: 400, type: !27)
!818 = !DILocalVariable(name: "mark", scope: !813, file: !664, line: 400, type: !134)
!819 = !DILocalVariable(name: "items", scope: !813, file: !664, line: 400, type: !27)
!820 = !DILocalVariable(name: "Package", scope: !821, file: !664, line: 406, type: !67)
!821 = distinct !DILexicalBlock(scope: !813, file: !664, line: 405, column: 5)
!822 = !DILocalVariable(name: "hv", scope: !821, file: !664, line: 409, type: !37)
!823 = !DILocalVariable(name: "hvname", scope: !821, file: !664, line: 410, type: !80)
!824 = !DILocation(line: 0, scope: !813)
!825 = !DILocation(line: 400, column: 11, scope: !813)
!826 = !DILocation(line: 401, column: 15, scope: !827)
!827 = distinct !DILexicalBlock(scope: !813, file: !664, line: 401, column: 9)
!828 = !DILocation(line: 401, column: 9, scope: !813)
!829 = !DILocation(line: 402, column: 8, scope: !827)
!830 = !DILocation(line: 406, column: 17, scope: !821)
!831 = !DILocation(line: 0, scope: !821)
!832 = !DILocation(line: 411, column: 5, scope: !821)
!833 = !DILocation(line: 413, column: 10, scope: !821)
!834 = !DILocation(line: 415, column: 14, scope: !821)
!835 = !DILocation(line: 416, column: 20, scope: !836)
!836 = distinct !DILexicalBlock(scope: !821, file: !664, line: 416, column: 9)
!837 = !DILocation(line: 416, column: 9, scope: !821)
!838 = !DILocation(line: 418, column: 2, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !664, line: 416, column: 43)
!840 = !DILocation(line: 419, column: 16, scope: !839)
!841 = !DILocation(line: 420, column: 9, scope: !839)
!842 = !DILocalVariable(name: "sv", arg: 1, scope: !843, file: !844, line: 140, type: !67)
!843 = distinct !DISubprogram(name: "S_SvREFCNT_inc", scope: !844, file: !844, line: 140, type: !759, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!844 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!845 = !{!842}
!846 = !DILocation(line: 0, scope: !843, inlinedAt: !847)
!847 = distinct !DILocation(line: 420, column: 9, scope: !839)
!848 = !DILocation(line: 142, column: 9, scope: !849, inlinedAt: !847)
!849 = distinct !DILexicalBlock(scope: !843, file: !844, line: 142, column: 9)
!850 = !DILocation(line: 142, column: 9, scope: !843, inlinedAt: !847)
!851 = !DILocation(line: 143, column: 2, scope: !849, inlinedAt: !847)
!852 = !DILocation(line: 143, column: 14, scope: !849, inlinedAt: !847)
!853 = !DILocation(line: 404, column: 8, scope: !813)
!854 = !DILocation(line: 422, column: 5, scope: !821)
!855 = !DILocation(line: 424, column: 2, scope: !821)
!856 = !DILocation(line: 427, column: 1, scope: !813)
!857 = distinct !DISubprogram(name: "XS_Opcode__safe_call_sv", scope: !664, file: !664, line: 431, type: !564, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !866, !867, !868, !872, !873, !874}
!859 = !DILocalVariable(name: "cv", arg: 1, scope: !857, file: !664, line: 431, type: !276)
!860 = !DILocalVariable(name: "sp", scope: !857, file: !664, line: 433, type: !134)
!861 = !DILocalVariable(name: "ax", scope: !857, file: !664, line: 433, type: !27)
!862 = !DILocalVariable(name: "mark", scope: !857, file: !664, line: 433, type: !134)
!863 = !DILocalVariable(name: "items", scope: !857, file: !664, line: 433, type: !27)
!864 = !DILocalVariable(name: "Package", scope: !865, file: !664, line: 439, type: !67)
!865 = distinct !DILexicalBlock(scope: !857, file: !664, line: 438, column: 5)
!866 = !DILocalVariable(name: "mask", scope: !865, file: !664, line: 441, type: !67)
!867 = !DILocalVariable(name: "codesv", scope: !865, file: !664, line: 443, type: !67)
!868 = !DILocalVariable(name: "op_mask_buf", scope: !865, file: !664, line: 446, type: !869)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3968, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 496)
!872 = !DILocalVariable(name: "gv", scope: !865, file: !664, line: 447, type: !209)
!873 = !DILocalVariable(name: "dummy_hv", scope: !865, file: !664, line: 448, type: !37)
!874 = !DILocalVariable(name: "mark_stack_entry", scope: !875, file: !664, line: 479, type: !876)
!875 = distinct !DILexicalBlock(scope: !865, file: !664, line: 479, column: 5)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!877 = !DILocation(line: 0, scope: !857)
!878 = !DILocation(line: 433, column: 11, scope: !857)
!879 = !DILocation(line: 434, column: 15, scope: !880)
!880 = distinct !DILexicalBlock(scope: !857, file: !664, line: 434, column: 9)
!881 = !DILocation(line: 434, column: 9, scope: !857)
!882 = !DILocation(line: 435, column: 8, scope: !880)
!883 = !DILocation(line: 439, column: 17, scope: !865)
!884 = !DILocation(line: 437, column: 8, scope: !857)
!885 = !DILocation(line: 0, scope: !865)
!886 = !DILocation(line: 441, column: 14, scope: !865)
!887 = !DILocation(line: 443, column: 16, scope: !865)
!888 = !DILocation(line: 446, column: 5, scope: !865)
!889 = !DILocation(line: 446, column: 10, scope: !865)
!890 = !DILocation(line: 450, column: 5, scope: !865)
!891 = !DILocalVariable(name: "opset", arg: 1, scope: !892, file: !664, line: 232, type: !67)
!892 = distinct !DISubprogram(name: "opmask_addlocal", scope: !664, file: !664, line: 232, type: !893, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !67, !80}
!895 = !{!891, !896, !897}
!896 = !DILocalVariable(name: "op_mask_buf", arg: 2, scope: !892, file: !664, line: 232, type: !80)
!897 = !DILocalVariable(name: "orig_op_mask", scope: !892, file: !664, line: 234, type: !80)
!898 = !DILocation(line: 0, scope: !892, inlinedAt: !899)
!899 = distinct !DILocation(line: 452, column: 5, scope: !865)
!900 = !DILocation(line: 234, column: 26, scope: !892, inlinedAt: !899)
!901 = !DILocation(line: 237, column: 5, scope: !892, inlinedAt: !899)
!902 = !DILocation(line: 243, column: 16, scope: !892, inlinedAt: !899)
!903 = !DILocation(line: 244, column: 9, scope: !904, inlinedAt: !899)
!904 = distinct !DILexicalBlock(scope: !892, file: !664, line: 244, column: 9)
!905 = !DILocation(line: 0, scope: !904, inlinedAt: !899)
!906 = !DILocation(line: 244, column: 9, scope: !892, inlinedAt: !899)
!907 = !DILocation(line: 245, column: 2, scope: !904, inlinedAt: !899)
!908 = !DILocation(line: 247, column: 2, scope: !904, inlinedAt: !899)
!909 = !DILocation(line: 248, column: 5, scope: !892, inlinedAt: !899)
!910 = !DILocation(line: 454, column: 5, scope: !865)
!911 = !DILocation(line: 455, column: 21, scope: !865)
!912 = !DILocation(line: 455, column: 14, scope: !865)
!913 = !DILocation(line: 457, column: 5, scope: !865)
!914 = !DILocation(line: 459, column: 19, scope: !865)
!915 = !DILocation(line: 459, column: 17, scope: !865)
!916 = !DILocation(line: 461, column: 5, scope: !865)
!917 = !DILocation(line: 462, column: 25, scope: !865)
!918 = !DILocation(line: 0, scope: !843, inlinedAt: !919)
!919 = distinct !DILocation(line: 462, column: 25, scope: !865)
!920 = !DILocation(line: 142, column: 9, scope: !849, inlinedAt: !919)
!921 = !DILocation(line: 142, column: 9, scope: !843, inlinedAt: !919)
!922 = !DILocation(line: 143, column: 2, scope: !849, inlinedAt: !919)
!923 = !DILocation(line: 143, column: 14, scope: !849, inlinedAt: !919)
!924 = !DILocation(line: 462, column: 17, scope: !865)
!925 = !DILocation(line: 467, column: 10, scope: !865)
!926 = !DILocation(line: 468, column: 5, scope: !865)
!927 = !DILocation(line: 469, column: 21, scope: !865)
!928 = !DILocation(line: 0, scope: !843, inlinedAt: !929)
!929 = distinct !DILocation(line: 469, column: 21, scope: !865)
!930 = !DILocation(line: 142, column: 9, scope: !849, inlinedAt: !929)
!931 = !DILocation(line: 142, column: 9, scope: !843, inlinedAt: !929)
!932 = !DILocation(line: 143, column: 2, scope: !849, inlinedAt: !929)
!933 = !DILocation(line: 143, column: 14, scope: !849, inlinedAt: !929)
!934 = !DILocation(line: 469, column: 5, scope: !865)
!935 = !DILocation(line: 469, column: 14, scope: !865)
!936 = !DILocation(line: 472, column: 16, scope: !865)
!937 = !DILocation(line: 473, column: 27, scope: !865)
!938 = !DILocation(line: 0, scope: !843, inlinedAt: !939)
!939 = distinct !DILocation(line: 473, column: 27, scope: !865)
!940 = !DILocation(line: 142, column: 9, scope: !849, inlinedAt: !939)
!941 = !DILocation(line: 142, column: 9, scope: !843, inlinedAt: !939)
!942 = !DILocation(line: 143, column: 2, scope: !849, inlinedAt: !939)
!943 = !DILocation(line: 143, column: 14, scope: !849, inlinedAt: !939)
!944 = !DILocation(line: 473, column: 5, scope: !865)
!945 = !DILocation(line: 473, column: 20, scope: !865)
!946 = !DILocation(line: 476, column: 5, scope: !865)
!947 = !DILocation(line: 477, column: 5, scope: !865)
!948 = !DILocation(line: 479, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !875, file: !664, line: 479, column: 5)
!950 = !DILocation(line: 0, scope: !875)
!951 = !DILocation(line: 479, column: 5, scope: !875)
!952 = !DILocation(line: 480, column: 5, scope: !865)
!953 = !DILocation(line: 481, column: 5, scope: !865)
!954 = !DILocation(line: 482, column: 5, scope: !865)
!955 = !DILocation(line: 483, column: 5, scope: !865)
!956 = !DILocation(line: 485, column: 2, scope: !865)
!957 = !DILocation(line: 487, column: 5, scope: !857)
!958 = !DILocation(line: 488, column: 1, scope: !857)
!959 = distinct !DISubprogram(name: "XS_Opcode_verify_opset", scope: !664, file: !664, line: 492, type: !564, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !968, !969, !970, !971}
!961 = !DILocalVariable(name: "cv", arg: 1, scope: !959, file: !664, line: 492, type: !276)
!962 = !DILocalVariable(name: "sp", scope: !959, file: !664, line: 494, type: !134)
!963 = !DILocalVariable(name: "ax", scope: !959, file: !664, line: 494, type: !27)
!964 = !DILocalVariable(name: "mark", scope: !959, file: !664, line: 494, type: !134)
!965 = !DILocalVariable(name: "items", scope: !959, file: !664, line: 494, type: !27)
!966 = !DILocalVariable(name: "opset", scope: !967, file: !664, line: 498, type: !67)
!967 = distinct !DILexicalBlock(scope: !959, file: !664, line: 497, column: 5)
!968 = !DILocalVariable(name: "fatal", scope: !967, file: !664, line: 500, type: !29)
!969 = !DILocalVariable(name: "RETVAL", scope: !967, file: !664, line: 501, type: !29)
!970 = !DILocalVariable(name: "targ", scope: !967, file: !664, line: 502, type: !340)
!971 = !DILocalVariable(name: "tmpXSoff", scope: !972, file: !664, line: 515, type: !692)
!972 = distinct !DILexicalBlock(scope: !959, file: !664, line: 515, column: 5)
!973 = !DILocation(line: 0, scope: !959)
!974 = !DILocation(line: 494, column: 11, scope: !959)
!975 = !DILocation(line: 495, column: 19, scope: !976)
!976 = distinct !DILexicalBlock(scope: !959, file: !664, line: 495, column: 9)
!977 = !DILocation(line: 496, column: 8, scope: !976)
!978 = !DILocation(line: 498, column: 15, scope: !967)
!979 = !DILocation(line: 0, scope: !967)
!980 = !DILocation(line: 502, column: 2, scope: !967)
!981 = !DILocation(line: 504, column: 12, scope: !982)
!982 = distinct !DILexicalBlock(scope: !967, file: !664, line: 504, column: 6)
!983 = !DILocation(line: 504, column: 6, scope: !967)
!984 = !DILocation(line: 507, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !664, line: 506, column: 7)
!986 = !DILocation(line: 507, column: 14, scope: !985)
!987 = !DILocation(line: 0, scope: !982)
!988 = !DILocalVariable(name: "opset", arg: 1, scope: !989, file: !664, line: 152, type: !67)
!989 = distinct !DISubprogram(name: "verify_opset", scope: !664, file: !664, line: 152, type: !990, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{!29, !67, !29}
!992 = !{!988, !993, !994}
!993 = !DILocalVariable(name: "fatal", arg: 2, scope: !989, file: !664, line: 152, type: !29)
!994 = !DILocalVariable(name: "err", scope: !989, file: !664, line: 154, type: !351)
!995 = !DILocation(line: 0, scope: !989, inlinedAt: !996)
!996 = distinct !DILocation(line: 511, column: 14, scope: !967)
!997 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !996)
!998 = distinct !DILexicalBlock(scope: !989, file: !664, line: 157, column: 14)
!999 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !996)
!1000 = distinct !DILexicalBlock(scope: !998, file: !664, line: 158, column: 14)
!1001 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !996)
!1002 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !996)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !664, line: 159, column: 14)
!1004 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !996)
!1005 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !996)
!1006 = !DILocation(line: 159, column: 14, scope: !1000, inlinedAt: !996)
!1007 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !996)
!1008 = distinct !DILexicalBlock(scope: !989, file: !664, line: 160, column: 9)
!1009 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !996)
!1010 = distinct !DILexicalBlock(scope: !1008, file: !664, line: 160, column: 23)
!1011 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !996)
!1012 = !DILocation(line: 163, column: 12, scope: !989, inlinedAt: !996)
!1013 = !DILocation(line: 513, column: 2, scope: !967)
!1014 = !DILocation(line: 513, column: 13, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !967, file: !664, line: 513, column: 13)
!1016 = !DILocation(line: 513, column: 13, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !664, line: 513, column: 13)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !664, line: 513, column: 13)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !664, line: 513, column: 13)
!1020 = !DILocation(line: 513, column: 13, scope: !1018)
!1021 = !DILocation(line: 513, column: 13, scope: !1019)
!1022 = !DILocation(line: 0, scope: !972)
!1023 = !DILocation(line: 515, column: 5, scope: !972)
!1024 = !DILocation(line: 516, column: 1, scope: !959)
!1025 = distinct !DISubprogram(name: "XS_Opcode_invert_opset", scope: !664, file: !664, line: 520, type: !564, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1034, !1036, !1037}
!1027 = !DILocalVariable(name: "cv", arg: 1, scope: !1025, file: !664, line: 520, type: !276)
!1028 = !DILocalVariable(name: "sp", scope: !1025, file: !664, line: 522, type: !134)
!1029 = !DILocalVariable(name: "ax", scope: !1025, file: !664, line: 522, type: !27)
!1030 = !DILocalVariable(name: "mark", scope: !1025, file: !664, line: 522, type: !134)
!1031 = !DILocalVariable(name: "items", scope: !1025, file: !664, line: 522, type: !27)
!1032 = !DILocalVariable(name: "opset", scope: !1033, file: !664, line: 526, type: !67)
!1033 = distinct !DILexicalBlock(scope: !1025, file: !664, line: 525, column: 5)
!1034 = !DILocalVariable(name: "bitmap", scope: !1035, file: !664, line: 530, type: !80)
!1035 = distinct !DILexicalBlock(scope: !1033, file: !664, line: 529, column: 5)
!1036 = !DILocalVariable(name: "len", scope: !1035, file: !664, line: 532, type: !100)
!1037 = !DILocalVariable(name: "tmpXSoff", scope: !1038, file: !664, line: 545, type: !692)
!1038 = distinct !DILexicalBlock(scope: !1025, file: !664, line: 545, column: 5)
!1039 = !DILocation(line: 0, scope: !1025)
!1040 = !DILocation(line: 522, column: 11, scope: !1025)
!1041 = !DILocation(line: 523, column: 15, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1025, file: !664, line: 523, column: 9)
!1043 = !DILocation(line: 523, column: 9, scope: !1025)
!1044 = !DILocation(line: 524, column: 8, scope: !1042)
!1045 = !DILocation(line: 526, column: 15, scope: !1033)
!1046 = !DILocation(line: 0, scope: !1033)
!1047 = !DILocation(line: 532, column: 18, scope: !1035)
!1048 = !DILocation(line: 0, scope: !1035)
!1049 = !DILocation(line: 0, scope: !758, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 534, column: 13, scope: !1035)
!1051 = !DILocation(line: 136, column: 9, scope: !767, inlinedAt: !1050)
!1052 = !DILocation(line: 136, column: 9, scope: !758, inlinedAt: !1050)
!1053 = !DILocation(line: 0, scope: !989, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 137, column: 2, scope: !1055, inlinedAt: !1050)
!1055 = distinct !DILexicalBlock(scope: !767, file: !664, line: 136, column: 20)
!1056 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1054)
!1057 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1054)
!1058 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1054)
!1059 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1054)
!1060 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1054)
!1061 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1054)
!1062 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1054)
!1063 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1054)
!1064 = !DILocation(line: 138, column: 10, scope: !1055, inlinedAt: !1050)
!1065 = !DILocation(line: 139, column: 5, scope: !1055, inlinedAt: !1050)
!1066 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !1050)
!1067 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !1050)
!1068 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !1050)
!1069 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !1050)
!1070 = !DILocation(line: 0, scope: !767, inlinedAt: !1050)
!1071 = !DILocation(line: 534, column: 13, scope: !1035)
!1072 = !DILocation(line: 535, column: 14, scope: !1035)
!1073 = !DILocation(line: 536, column: 17, scope: !1035)
!1074 = !DILocation(line: 536, column: 5, scope: !1035)
!1075 = !DILocation(line: 536, column: 14, scope: !1035)
!1076 = !DILocation(line: 537, column: 17, scope: !1035)
!1077 = !DILocation(line: 537, column: 16, scope: !1035)
!1078 = !DILocation(line: 537, column: 14, scope: !1035)
!1079 = distinct !{!1079, !1074, !1080, !755, !756}
!1080 = !DILocation(line: 537, column: 27, scope: !1035)
!1081 = !DILocation(line: 539, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1035, file: !664, line: 539, column: 9)
!1083 = !DILocation(line: 539, column: 17, scope: !1082)
!1084 = !DILocation(line: 539, column: 9, scope: !1035)
!1085 = !DILocation(line: 540, column: 32, scope: !1082)
!1086 = !DILocation(line: 540, column: 9, scope: !1082)
!1087 = !DILocation(line: 540, column: 18, scope: !1082)
!1088 = !DILocation(line: 540, column: 2, scope: !1082)
!1089 = !DILocation(line: 540, column: 22, scope: !1082)
!1090 = !DILocation(line: 542, column: 5, scope: !1033)
!1091 = !DILocation(line: 542, column: 11, scope: !1033)
!1092 = !DILocation(line: 0, scope: !1038)
!1093 = !DILocation(line: 545, column: 5, scope: !1038)
!1094 = !DILocation(line: 546, column: 1, scope: !1025)
!1095 = distinct !DISubprogram(name: "XS_Opcode_opset_to_ops", scope: !664, file: !664, line: 550, type: !564, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1104, !1105, !1107, !1108, !1109, !1110, !1111, !1112}
!1097 = !DILocalVariable(name: "cv", arg: 1, scope: !1095, file: !664, line: 550, type: !276)
!1098 = !DILocalVariable(name: "sp", scope: !1095, file: !664, line: 552, type: !134)
!1099 = !DILocalVariable(name: "ax", scope: !1095, file: !664, line: 552, type: !27)
!1100 = !DILocalVariable(name: "mark", scope: !1095, file: !664, line: 552, type: !134)
!1101 = !DILocalVariable(name: "items", scope: !1095, file: !664, line: 552, type: !27)
!1102 = !DILocalVariable(name: "opset", scope: !1103, file: !664, line: 558, type: !67)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !664, line: 557, column: 5)
!1104 = !DILocalVariable(name: "desc", scope: !1103, file: !664, line: 560, type: !29)
!1105 = !DILocalVariable(name: "len", scope: !1106, file: !664, line: 570, type: !100)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !664, line: 569, column: 5)
!1107 = !DILocalVariable(name: "i", scope: !1106, file: !664, line: 571, type: !29)
!1108 = !DILocalVariable(name: "j", scope: !1106, file: !664, line: 571, type: !29)
!1109 = !DILocalVariable(name: "myopcode", scope: !1106, file: !664, line: 571, type: !29)
!1110 = !DILocalVariable(name: "bitmap", scope: !1106, file: !664, line: 572, type: !350)
!1111 = !DILocalVariable(name: "names", scope: !1106, file: !664, line: 573, type: !359)
!1112 = !DILocalVariable(name: "bits", scope: !1113, file: !664, line: 578, type: !1116)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !664, line: 577, column: 47)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !664, line: 577, column: 5)
!1115 = distinct !DILexicalBlock(scope: !1106, file: !664, line: 577, column: 5)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!1117 = !DILocation(line: 0, scope: !1095)
!1118 = !DILocation(line: 552, column: 11, scope: !1095)
!1119 = !DILocation(line: 553, column: 19, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1095, file: !664, line: 553, column: 9)
!1121 = !DILocation(line: 554, column: 8, scope: !1120)
!1122 = !DILocation(line: 558, column: 15, scope: !1103)
!1123 = !DILocation(line: 556, column: 8, scope: !1095)
!1124 = !DILocation(line: 0, scope: !1103)
!1125 = !DILocation(line: 562, column: 12, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1103, file: !664, line: 562, column: 6)
!1127 = !DILocation(line: 562, column: 6, scope: !1103)
!1128 = !DILocation(line: 565, column: 18, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !664, line: 564, column: 7)
!1130 = !DILocation(line: 565, column: 13, scope: !1129)
!1131 = !DILocation(line: 0, scope: !1126)
!1132 = !DILocation(line: 570, column: 5, scope: !1106)
!1133 = !DILocation(line: 572, column: 33, scope: !1106)
!1134 = !DILocation(line: 0, scope: !1106)
!1135 = !DILocation(line: 573, column: 20, scope: !1106)
!1136 = !DILocation(line: 573, column: 29, scope: !1106)
!1137 = !DILocation(line: 573, column: 46, scope: !1106)
!1138 = !DILocation(line: 0, scope: !989, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 576, column: 5, scope: !1106)
!1140 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1139)
!1141 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1139)
!1142 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1139)
!1143 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1139)
!1144 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1139)
!1145 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1139)
!1146 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1139)
!1147 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1139)
!1148 = !DILocation(line: 577, column: 31, scope: !1114)
!1149 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1139)
!1150 = !DILocation(line: 577, column: 29, scope: !1114)
!1151 = !DILocation(line: 577, column: 5, scope: !1115)
!1152 = !DILocation(line: 0, scope: !1113)
!1153 = !DILocation(line: 579, column: 18, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !664, line: 579, column: 2)
!1155 = distinct !DILexicalBlock(scope: !1113, file: !664, line: 579, column: 2)
!1156 = !DILocation(line: 578, column: 19, scope: !1113)
!1157 = !DILocation(line: 580, column: 21, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !664, line: 580, column: 11)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !664, line: 579, column: 58)
!1160 = !DILocation(line: 580, column: 16, scope: !1158)
!1161 = !DILocation(line: 580, column: 11, scope: !1159)
!1162 = !DILocation(line: 581, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !664, line: 581, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !664, line: 581, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !664, line: 581, column: 3)
!1166 = !DILocation(line: 581, column: 3, scope: !1164)
!1167 = !DILocation(line: 581, column: 3, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !664, line: 581, column: 3)
!1169 = !DILocation(line: 581, column: 3, scope: !1165)
!1170 = !DILocation(line: 579, column: 42, scope: !1154)
!1171 = !DILocation(line: 579, column: 54, scope: !1154)
!1172 = !DILocation(line: 579, column: 14, scope: !1154)
!1173 = distinct !{!1173, !1174, !1175, !755, !756}
!1174 = !DILocation(line: 579, column: 2, scope: !1155)
!1175 = !DILocation(line: 583, column: 2, scope: !1155)
!1176 = !DILocation(line: 577, column: 43, scope: !1114)
!1177 = !DILocation(line: 0, scope: !1115)
!1178 = distinct !{!1178, !1151, !1179, !755, !756}
!1179 = !DILocation(line: 584, column: 5, scope: !1115)
!1180 = !DILocation(line: 585, column: 5, scope: !1103)
!1181 = !DILocation(line: 587, column: 2, scope: !1103)
!1182 = !DILocation(line: 590, column: 1, scope: !1095)
!1183 = distinct !DISubprogram(name: "XS_Opcode_opset", scope: !664, file: !664, line: 594, type: !564, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1192, !1193, !1194, !1195, !1196, !1198, !1202}
!1185 = !DILocalVariable(name: "cv", arg: 1, scope: !1183, file: !664, line: 594, type: !276)
!1186 = !DILocalVariable(name: "sp", scope: !1183, file: !664, line: 596, type: !134)
!1187 = !DILocalVariable(name: "ax", scope: !1183, file: !664, line: 596, type: !27)
!1188 = !DILocalVariable(name: "mark", scope: !1183, file: !664, line: 596, type: !134)
!1189 = !DILocalVariable(name: "items", scope: !1183, file: !664, line: 596, type: !27)
!1190 = !DILocalVariable(name: "i", scope: !1191, file: !664, line: 600, type: !29)
!1191 = distinct !DILexicalBlock(scope: !1183, file: !664, line: 598, column: 5)
!1192 = !DILocalVariable(name: "bitspec", scope: !1191, file: !664, line: 601, type: !67)
!1193 = !DILocalVariable(name: "len", scope: !1191, file: !664, line: 602, type: !100)
!1194 = !DILocalVariable(name: "on", scope: !1191, file: !664, line: 602, type: !100)
!1195 = !DILocalVariable(name: "opset", scope: !1191, file: !664, line: 604, type: !340)
!1196 = !DILocalVariable(name: "bitmap", scope: !1191, file: !664, line: 605, type: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!1198 = !DILocalVariable(name: "opname", scope: !1199, file: !664, line: 607, type: !351)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !664, line: 606, column: 33)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !664, line: 606, column: 5)
!1201 = distinct !DILexicalBlock(scope: !1191, file: !664, line: 606, column: 5)
!1202 = !DILocalVariable(name: "tmpXSoff", scope: !1203, file: !664, line: 623, type: !692)
!1203 = distinct !DILexicalBlock(scope: !1183, file: !664, line: 623, column: 5)
!1204 = !DILocation(line: 0, scope: !1183)
!1205 = !DILocation(line: 596, column: 11, scope: !1183)
!1206 = !DILocation(line: 602, column: 5, scope: !1191)
!1207 = !DILocation(line: 0, scope: !758, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 604, column: 24, scope: !1191)
!1209 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !1208)
!1210 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !1208)
!1211 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !1208)
!1212 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !1208)
!1213 = !DILocation(line: 604, column: 24, scope: !1191)
!1214 = !DILocation(line: 0, scope: !1191)
!1215 = !DILocation(line: 605, column: 27, scope: !1191)
!1216 = !DILocation(line: 606, column: 19, scope: !1200)
!1217 = !DILocation(line: 606, column: 5, scope: !1201)
!1218 = !DILocation(line: 609, column: 25, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1199, file: !664, line: 609, column: 6)
!1220 = !DILocation(line: 0, scope: !989, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 609, column: 6, scope: !1219)
!1222 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1221)
!1223 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1221)
!1224 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1221)
!1225 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1221)
!1226 = !DILocation(line: 609, column: 6, scope: !1199)
!1227 = !DILocation(line: 614, column: 15, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1219, file: !664, line: 613, column: 7)
!1229 = !DILocation(line: 0, scope: !1199)
!1230 = !DILocation(line: 615, column: 10, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !664, line: 615, column: 10)
!1232 = !DILocation(line: 615, column: 18, scope: !1231)
!1233 = !DILocation(line: 615, column: 10, scope: !1228)
!1234 = !DILocation(line: 616, column: 45, scope: !1228)
!1235 = !DILocation(line: 615, column: 34, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !664, line: 615, column: 26)
!1237 = !DILocation(line: 615, column: 43, scope: !1236)
!1238 = !DILocation(line: 615, column: 50, scope: !1236)
!1239 = !DILocation(line: 0, scope: !1228)
!1240 = !DILocation(line: 616, column: 16, scope: !1228)
!1241 = !DILocation(line: 0, scope: !1219)
!1242 = !DILocation(line: 618, column: 2, scope: !1199)
!1243 = !DILocation(line: 606, column: 29, scope: !1200)
!1244 = distinct !{!1244, !1217, !1245, !755, !756}
!1245 = !DILocation(line: 619, column: 5, scope: !1201)
!1246 = !DILocation(line: 620, column: 5, scope: !1191)
!1247 = !DILocation(line: 620, column: 11, scope: !1191)
!1248 = !DILocation(line: 622, column: 5, scope: !1183)
!1249 = !DILocation(line: 0, scope: !1203)
!1250 = !DILocation(line: 623, column: 5, scope: !1203)
!1251 = !DILocation(line: 624, column: 1, scope: !1183)
!1252 = distinct !DISubprogram(name: "XS_Opcode_permit_only", scope: !664, file: !664, line: 630, type: !564, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1262, !1263, !1264, !1265, !1266, !1267, !1271, !1272}
!1254 = !DILocalVariable(name: "cv", arg: 1, scope: !1252, file: !664, line: 630, type: !276)
!1255 = !DILocalVariable(name: "sp", scope: !1252, file: !664, line: 632, type: !134)
!1256 = !DILocalVariable(name: "ax", scope: !1252, file: !664, line: 632, type: !27)
!1257 = !DILocalVariable(name: "mark", scope: !1252, file: !664, line: 632, type: !134)
!1258 = !DILocalVariable(name: "items", scope: !1252, file: !664, line: 632, type: !27)
!1259 = !DILocalVariable(name: "ix", scope: !1252, file: !664, line: 633, type: !27)
!1260 = !DILocalVariable(name: "safe", scope: !1261, file: !664, line: 637, type: !67)
!1261 = distinct !DILexicalBlock(scope: !1252, file: !664, line: 636, column: 5)
!1262 = !DILocalVariable(name: "i", scope: !1261, file: !664, line: 640, type: !29)
!1263 = !DILocalVariable(name: "bitspec", scope: !1261, file: !664, line: 641, type: !67)
!1264 = !DILocalVariable(name: "mask", scope: !1261, file: !664, line: 641, type: !67)
!1265 = !DILocalVariable(name: "bitmap", scope: !1261, file: !664, line: 642, type: !80)
!1266 = !DILocalVariable(name: "len", scope: !1261, file: !664, line: 643, type: !100)
!1267 = !DILocalVariable(name: "opname", scope: !1268, file: !664, line: 655, type: !351)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !664, line: 654, column: 33)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !664, line: 654, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1261, file: !664, line: 654, column: 5)
!1271 = !DILocalVariable(name: "on", scope: !1268, file: !664, line: 656, type: !29)
!1272 = !DILocalVariable(name: "tmpXSoff", scope: !1273, file: !664, line: 672, type: !692)
!1273 = distinct !DILexicalBlock(scope: !1252, file: !664, line: 672, column: 5)
!1274 = !DILocation(line: 0, scope: !1252)
!1275 = !DILocation(line: 632, column: 11, scope: !1252)
!1276 = !DILocation(line: 633, column: 5, scope: !1252)
!1277 = !DILocation(line: 634, column: 15, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1252, file: !664, line: 634, column: 9)
!1279 = !DILocation(line: 634, column: 9, scope: !1252)
!1280 = !DILocation(line: 635, column: 8, scope: !1278)
!1281 = !DILocation(line: 637, column: 14, scope: !1261)
!1282 = !DILocation(line: 0, scope: !1261)
!1283 = !DILocation(line: 643, column: 5, scope: !1261)
!1284 = !DILocation(line: 646, column: 10, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1261, file: !664, line: 646, column: 9)
!1286 = !DILocation(line: 646, column: 22, scope: !1285)
!1287 = !DILocation(line: 646, column: 26, scope: !1285)
!1288 = !DILocation(line: 646, column: 47, scope: !1285)
!1289 = !DILocation(line: 647, column: 2, scope: !1285)
!1290 = !DILocation(line: 648, column: 13, scope: !1261)
!1291 = !DILocation(line: 648, column: 12, scope: !1261)
!1292 = !DILocation(line: 649, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1261, file: !664, line: 649, column: 9)
!1294 = !DILocation(line: 650, column: 2, scope: !1293)
!1295 = !DILocation(line: 0, scope: !758, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 650, column: 2, scope: !1293)
!1297 = !DILocation(line: 136, column: 9, scope: !767, inlinedAt: !1296)
!1298 = !DILocation(line: 136, column: 9, scope: !758, inlinedAt: !1296)
!1299 = !DILocation(line: 0, scope: !989, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 137, column: 2, scope: !1055, inlinedAt: !1296)
!1301 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1300)
!1302 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1300)
!1303 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1300)
!1304 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1300)
!1305 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1300)
!1306 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1300)
!1307 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1300)
!1308 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1300)
!1309 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1300)
!1310 = !DILocation(line: 138, column: 10, scope: !1055, inlinedAt: !1296)
!1311 = !DILocation(line: 139, column: 5, scope: !1055, inlinedAt: !1296)
!1312 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !1296)
!1313 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !1296)
!1314 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !1296)
!1315 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !1296)
!1316 = !DILocation(line: 0, scope: !767, inlinedAt: !1296)
!1317 = !DILocation(line: 0, scope: !989, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 652, column: 2, scope: !1293)
!1319 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1318)
!1320 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1318)
!1321 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1318)
!1322 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1318)
!1323 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1318)
!1324 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1318)
!1325 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1318)
!1326 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1318)
!1327 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1318)
!1328 = !DILocation(line: 653, column: 14, scope: !1261)
!1329 = !DILocation(line: 654, column: 19, scope: !1269)
!1330 = !DILocation(line: 654, column: 5, scope: !1270)
!1331 = !DILocation(line: 0, scope: !1268)
!1332 = !DILocation(line: 657, column: 25, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1268, file: !664, line: 657, column: 6)
!1334 = !DILocation(line: 0, scope: !989, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 657, column: 6, scope: !1333)
!1336 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1335)
!1337 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1335)
!1338 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1335)
!1339 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1335)
!1340 = !DILocation(line: 657, column: 6, scope: !1268)
!1341 = !DILocation(line: 662, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1333, file: !664, line: 661, column: 7)
!1343 = !DILocation(line: 664, column: 10, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1342, file: !664, line: 664, column: 10)
!1345 = !DILocation(line: 664, column: 18, scope: !1344)
!1346 = !DILocation(line: 664, column: 10, scope: !1342)
!1347 = !DILocation(line: 665, column: 45, scope: !1342)
!1348 = !DILocation(line: 664, column: 38, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !664, line: 664, column: 26)
!1350 = !DILocation(line: 664, column: 48, scope: !1349)
!1351 = !DILocation(line: 664, column: 55, scope: !1349)
!1352 = !DILocation(line: 0, scope: !1342)
!1353 = !DILocation(line: 665, column: 16, scope: !1342)
!1354 = !DILocation(line: 0, scope: !1333)
!1355 = !DILocation(line: 667, column: 2, scope: !1268)
!1356 = !DILocation(line: 654, column: 29, scope: !1269)
!1357 = distinct !{!1357, !1330, !1358, !755, !756}
!1358 = !DILocation(line: 668, column: 5, scope: !1270)
!1359 = !DILocation(line: 669, column: 5, scope: !1261)
!1360 = !DILocation(line: 669, column: 11, scope: !1261)
!1361 = !DILocation(line: 671, column: 5, scope: !1252)
!1362 = !DILocation(line: 0, scope: !1273)
!1363 = !DILocation(line: 672, column: 5, scope: !1273)
!1364 = !DILocation(line: 673, column: 1, scope: !1252)
!1365 = distinct !DISubprogram(name: "XS_Opcode_opdesc", scope: !664, file: !664, line: 677, type: !564, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1374, !1375, !1376, !1377, !1381, !1382, !1386, !1389, !1390, !1391, !1392}
!1367 = !DILocalVariable(name: "cv", arg: 1, scope: !1365, file: !664, line: 677, type: !276)
!1368 = !DILocalVariable(name: "sp", scope: !1365, file: !664, line: 679, type: !134)
!1369 = !DILocalVariable(name: "ax", scope: !1365, file: !664, line: 679, type: !27)
!1370 = !DILocalVariable(name: "mark", scope: !1365, file: !664, line: 679, type: !134)
!1371 = !DILocalVariable(name: "items", scope: !1365, file: !664, line: 679, type: !27)
!1372 = !DILocalVariable(name: "i", scope: !1373, file: !664, line: 685, type: !29)
!1373 = distinct !DILexicalBlock(scope: !1365, file: !664, line: 683, column: 5)
!1374 = !DILocalVariable(name: "len", scope: !1373, file: !664, line: 686, type: !100)
!1375 = !DILocalVariable(name: "args", scope: !1373, file: !664, line: 687, type: !134)
!1376 = !DILocalVariable(name: "op_desc", scope: !1373, file: !664, line: 688, type: !359)
!1377 = !DILocalVariable(name: "opname", scope: !1378, file: !664, line: 695, type: !350)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !664, line: 694, column: 33)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !664, line: 694, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1373, file: !664, line: 694, column: 5)
!1381 = !DILocalVariable(name: "bitspec", scope: !1378, file: !664, line: 696, type: !67)
!1382 = !DILocalVariable(name: "myopcode", scope: !1383, file: !664, line: 698, type: !1385)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !664, line: 697, column: 22)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !664, line: 697, column: 6)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1386 = !DILocalVariable(name: "b", scope: !1387, file: !664, line: 705, type: !29)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !664, line: 704, column: 66)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !664, line: 704, column: 11)
!1389 = !DILocalVariable(name: "j", scope: !1387, file: !664, line: 705, type: !29)
!1390 = !DILocalVariable(name: "bitmap", scope: !1387, file: !664, line: 706, type: !350)
!1391 = !DILocalVariable(name: "myopcode", scope: !1387, file: !664, line: 707, type: !29)
!1392 = !DILocalVariable(name: "bits", scope: !1393, file: !664, line: 709, type: !1116)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !664, line: 708, column: 36)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !664, line: 708, column: 6)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !664, line: 708, column: 6)
!1396 = !DILocation(line: 0, scope: !1365)
!1397 = !DILocation(line: 679, column: 11, scope: !1365)
!1398 = !DILocation(line: 682, column: 8, scope: !1365)
!1399 = !DILocation(line: 686, column: 5, scope: !1373)
!1400 = !DILocation(line: 688, column: 22, scope: !1373)
!1401 = !DILocation(line: 0, scope: !1373)
!1402 = !DILocation(line: 693, column: 18, scope: !1373)
!1403 = !DILocation(line: 694, column: 19, scope: !1379)
!1404 = !DILocation(line: 694, column: 5, scope: !1380)
!1405 = !DILocation(line: 695, column: 30, scope: !1378)
!1406 = !DILocation(line: 696, column: 45, scope: !1378)
!1407 = !DILocation(line: 0, scope: !1378)
!1408 = !DILocation(line: 696, column: 16, scope: !1378)
!1409 = !DILocation(line: 697, column: 6, scope: !1384)
!1410 = !DILocation(line: 697, column: 6, scope: !1378)
!1411 = !DILocation(line: 698, column: 27, scope: !1383)
!1412 = !DILocation(line: 0, scope: !1383)
!1413 = !DILocation(line: 699, column: 19, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1383, file: !664, line: 699, column: 10)
!1415 = !DILocation(line: 699, column: 23, scope: !1414)
!1416 = !DILocation(line: 700, column: 3, scope: !1414)
!1417 = !DILocation(line: 701, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !664, line: 701, column: 6)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !664, line: 701, column: 6)
!1420 = distinct !DILexicalBlock(scope: !1383, file: !664, line: 701, column: 6)
!1421 = !DILocation(line: 701, column: 6, scope: !1419)
!1422 = !DILocation(line: 701, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !664, line: 701, column: 6)
!1424 = !DILocation(line: 701, column: 6, scope: !1420)
!1425 = !DILocation(line: 703, column: 2, scope: !1383)
!1426 = !DILocation(line: 704, column: 11, scope: !1388)
!1427 = !DILocation(line: 704, column: 26, scope: !1388)
!1428 = !DILocation(line: 704, column: 29, scope: !1388)
!1429 = !DILocation(line: 704, column: 55, scope: !1388)
!1430 = !DILocation(line: 704, column: 44, scope: !1388)
!1431 = !DILocation(line: 704, column: 11, scope: !1384)
!1432 = !DILocation(line: 706, column: 34, scope: !1387)
!1433 = !DILocation(line: 708, column: 20, scope: !1394)
!1434 = !DILocation(line: 0, scope: !1387)
!1435 = !DILocation(line: 708, column: 18, scope: !1394)
!1436 = !DILocation(line: 708, column: 6, scope: !1395)
!1437 = !DILocation(line: 0, scope: !1393)
!1438 = !DILocation(line: 710, column: 19, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !664, line: 710, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1393, file: !664, line: 710, column: 3)
!1441 = !DILocation(line: 709, column: 20, scope: !1393)
!1442 = !DILocation(line: 711, column: 21, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !664, line: 711, column: 11)
!1444 = !DILocation(line: 711, column: 16, scope: !1443)
!1445 = !DILocation(line: 711, column: 11, scope: !1439)
!1446 = !DILocation(line: 712, column: 4, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !664, line: 712, column: 4)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !664, line: 712, column: 4)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !664, line: 712, column: 4)
!1450 = !DILocation(line: 712, column: 4, scope: !1448)
!1451 = !DILocation(line: 712, column: 4, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !664, line: 712, column: 4)
!1453 = !DILocation(line: 712, column: 4, scope: !1449)
!1454 = !DILocation(line: 710, column: 43, scope: !1439)
!1455 = !DILocation(line: 710, column: 55, scope: !1439)
!1456 = !DILocation(line: 710, column: 15, scope: !1439)
!1457 = distinct !{!1457, !1458, !1459, !755, !756}
!1458 = !DILocation(line: 710, column: 3, scope: !1440)
!1459 = !DILocation(line: 712, column: 4, scope: !1440)
!1460 = !DILocation(line: 708, column: 32, scope: !1394)
!1461 = distinct !{!1461, !1436, !1462, !755, !756}
!1462 = !DILocation(line: 715, column: 6, scope: !1395)
!1463 = !DILocation(line: 719, column: 21, scope: !1388)
!1464 = !DILocation(line: 718, column: 6, scope: !1388)
!1465 = !DILocation(line: 694, column: 29, scope: !1379)
!1466 = distinct !{!1466, !1404, !1467, !755, !756}
!1467 = !DILocation(line: 720, column: 5, scope: !1380)
!1468 = !DILocation(line: 722, column: 2, scope: !1373)
!1469 = !DILocation(line: 724, column: 5, scope: !1365)
!1470 = !DILocation(line: 725, column: 1, scope: !1365)
!1471 = distinct !DISubprogram(name: "XS_Opcode_define_optag", scope: !664, file: !664, line: 729, type: !564, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1480, !1481, !1482, !1483}
!1473 = !DILocalVariable(name: "cv", arg: 1, scope: !1471, file: !664, line: 729, type: !276)
!1474 = !DILocalVariable(name: "sp", scope: !1471, file: !664, line: 731, type: !134)
!1475 = !DILocalVariable(name: "ax", scope: !1471, file: !664, line: 731, type: !27)
!1476 = !DILocalVariable(name: "mark", scope: !1471, file: !664, line: 731, type: !134)
!1477 = !DILocalVariable(name: "items", scope: !1471, file: !664, line: 731, type: !27)
!1478 = !DILocalVariable(name: "optagsv", scope: !1479, file: !664, line: 735, type: !67)
!1479 = distinct !DILexicalBlock(scope: !1471, file: !664, line: 734, column: 5)
!1480 = !DILocalVariable(name: "mask", scope: !1479, file: !664, line: 737, type: !67)
!1481 = !DILocalVariable(name: "len", scope: !1479, file: !664, line: 740, type: !100)
!1482 = !DILocalVariable(name: "optag", scope: !1479, file: !664, line: 741, type: !351)
!1483 = !DILocalVariable(name: "tmpXSoff", scope: !1484, file: !664, line: 747, type: !692)
!1484 = distinct !DILexicalBlock(scope: !1471, file: !664, line: 747, column: 5)
!1485 = !DILocation(line: 0, scope: !1471)
!1486 = !DILocation(line: 731, column: 11, scope: !1471)
!1487 = !DILocation(line: 732, column: 15, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1471, file: !664, line: 732, column: 9)
!1489 = !DILocation(line: 732, column: 9, scope: !1471)
!1490 = !DILocation(line: 733, column: 8, scope: !1488)
!1491 = !DILocation(line: 735, column: 17, scope: !1479)
!1492 = !DILocation(line: 0, scope: !1479)
!1493 = !DILocation(line: 737, column: 14, scope: !1479)
!1494 = !DILocation(line: 740, column: 5, scope: !1479)
!1495 = !DILocation(line: 741, column: 25, scope: !1479)
!1496 = !DILocation(line: 743, column: 33, scope: !1479)
!1497 = !DILocation(line: 743, column: 5, scope: !1479)
!1498 = !DILocation(line: 744, column: 5, scope: !1479)
!1499 = !DILocation(line: 744, column: 11, scope: !1479)
!1500 = !DILocation(line: 746, column: 5, scope: !1471)
!1501 = !DILocation(line: 0, scope: !1484)
!1502 = !DILocation(line: 747, column: 5, scope: !1484)
!1503 = !DILocation(line: 748, column: 1, scope: !1471)
!1504 = distinct !DISubprogram(name: "XS_Opcode_empty_opset", scope: !664, file: !664, line: 752, type: !564, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511}
!1506 = !DILocalVariable(name: "cv", arg: 1, scope: !1504, file: !664, line: 752, type: !276)
!1507 = !DILocalVariable(name: "sp", scope: !1504, file: !664, line: 754, type: !134)
!1508 = !DILocalVariable(name: "ax", scope: !1504, file: !664, line: 754, type: !27)
!1509 = !DILocalVariable(name: "mark", scope: !1504, file: !664, line: 754, type: !134)
!1510 = !DILocalVariable(name: "items", scope: !1504, file: !664, line: 754, type: !27)
!1511 = !DILocalVariable(name: "tmpXSoff", scope: !1512, file: !664, line: 762, type: !692)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !664, line: 762, column: 5)
!1513 = !DILocation(line: 0, scope: !1504)
!1514 = !DILocation(line: 754, column: 11, scope: !1504)
!1515 = !DILocation(line: 755, column: 15, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1504, file: !664, line: 755, column: 9)
!1517 = !DILocation(line: 755, column: 9, scope: !1504)
!1518 = !DILocation(line: 756, column: 8, scope: !1516)
!1519 = !DILocation(line: 0, scope: !758, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 759, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1504, file: !664, line: 757, column: 5)
!1522 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !1520)
!1523 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !1520)
!1524 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !1520)
!1525 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !1520)
!1526 = !DILocation(line: 759, column: 13, scope: !1521)
!1527 = !DILocation(line: 759, column: 5, scope: !1521)
!1528 = !DILocation(line: 759, column: 11, scope: !1521)
!1529 = !DILocation(line: 0, scope: !1512)
!1530 = !DILocation(line: 762, column: 5, scope: !1512)
!1531 = !DILocation(line: 763, column: 1, scope: !1504)
!1532 = distinct !DISubprogram(name: "XS_Opcode_full_opset", scope: !664, file: !664, line: 767, type: !564, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539}
!1534 = !DILocalVariable(name: "cv", arg: 1, scope: !1532, file: !664, line: 767, type: !276)
!1535 = !DILocalVariable(name: "sp", scope: !1532, file: !664, line: 769, type: !134)
!1536 = !DILocalVariable(name: "ax", scope: !1532, file: !664, line: 769, type: !27)
!1537 = !DILocalVariable(name: "mark", scope: !1532, file: !664, line: 769, type: !134)
!1538 = !DILocalVariable(name: "items", scope: !1532, file: !664, line: 769, type: !27)
!1539 = !DILocalVariable(name: "tmpXSoff", scope: !1540, file: !664, line: 778, type: !692)
!1540 = distinct !DILexicalBlock(scope: !1532, file: !664, line: 778, column: 5)
!1541 = !DILocation(line: 0, scope: !1532)
!1542 = !DILocation(line: 769, column: 11, scope: !1532)
!1543 = !DILocation(line: 770, column: 15, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1532, file: !664, line: 770, column: 9)
!1545 = !DILocation(line: 770, column: 9, scope: !1532)
!1546 = !DILocation(line: 771, column: 8, scope: !1544)
!1547 = !DILocation(line: 775, column: 13, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1532, file: !664, line: 772, column: 5)
!1549 = !DILocation(line: 0, scope: !758, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 775, column: 13, scope: !1548)
!1551 = !DILocation(line: 136, column: 9, scope: !767, inlinedAt: !1550)
!1552 = !DILocation(line: 136, column: 9, scope: !758, inlinedAt: !1550)
!1553 = !DILocation(line: 0, scope: !989, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 137, column: 2, scope: !1055, inlinedAt: !1550)
!1555 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1554)
!1556 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1554)
!1557 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1554)
!1558 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1554)
!1559 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1554)
!1560 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1554)
!1561 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1554)
!1562 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1554)
!1563 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1554)
!1564 = !DILocation(line: 138, column: 10, scope: !1055, inlinedAt: !1550)
!1565 = !DILocation(line: 139, column: 5, scope: !1055, inlinedAt: !1550)
!1566 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !1550)
!1567 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !1550)
!1568 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !1550)
!1569 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !1550)
!1570 = !DILocation(line: 0, scope: !767, inlinedAt: !1550)
!1571 = !DILocation(line: 775, column: 5, scope: !1548)
!1572 = !DILocation(line: 775, column: 11, scope: !1548)
!1573 = !DILocation(line: 0, scope: !1540)
!1574 = !DILocation(line: 778, column: 5, scope: !1540)
!1575 = !DILocation(line: 779, column: 1, scope: !1532)
!1576 = distinct !DISubprogram(name: "XS_Opcode_opmask_add", scope: !664, file: !664, line: 783, type: !564, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1585}
!1578 = !DILocalVariable(name: "cv", arg: 1, scope: !1576, file: !664, line: 783, type: !276)
!1579 = !DILocalVariable(name: "sp", scope: !1576, file: !664, line: 785, type: !134)
!1580 = !DILocalVariable(name: "ax", scope: !1576, file: !664, line: 785, type: !27)
!1581 = !DILocalVariable(name: "mark", scope: !1576, file: !664, line: 785, type: !134)
!1582 = !DILocalVariable(name: "items", scope: !1576, file: !664, line: 785, type: !27)
!1583 = !DILocalVariable(name: "opset", scope: !1584, file: !664, line: 789, type: !67)
!1584 = distinct !DILexicalBlock(scope: !1576, file: !664, line: 788, column: 5)
!1585 = !DILocalVariable(name: "tmpXSoff", scope: !1586, file: !664, line: 799, type: !692)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !664, line: 799, column: 5)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !664, line: 799, column: 5)
!1588 = !DILocation(line: 0, scope: !1576)
!1589 = !DILocation(line: 785, column: 11, scope: !1576)
!1590 = !DILocation(line: 786, column: 15, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1576, file: !664, line: 786, column: 9)
!1592 = !DILocation(line: 786, column: 9, scope: !1576)
!1593 = !DILocation(line: 787, column: 8, scope: !1591)
!1594 = !DILocation(line: 789, column: 15, scope: !1584)
!1595 = !DILocation(line: 0, scope: !1584)
!1596 = !DILocation(line: 792, column: 10, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1584, file: !664, line: 792, column: 9)
!1598 = !DILocation(line: 792, column: 9, scope: !1584)
!1599 = !DILocation(line: 793, column: 2, scope: !1597)
!1600 = !DILocation(line: 796, column: 5, scope: !1584)
!1601 = !DILocation(line: 0, scope: !1586)
!1602 = !DILocation(line: 799, column: 5, scope: !1586)
!1603 = !DILocation(line: 800, column: 1, scope: !1576)
!1604 = distinct !DISubprogram(name: "XS_Opcode_opcodes", scope: !664, file: !664, line: 804, type: !564, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610}
!1606 = !DILocalVariable(name: "cv", arg: 1, scope: !1604, file: !664, line: 804, type: !276)
!1607 = !DILocalVariable(name: "sp", scope: !1604, file: !664, line: 806, type: !134)
!1608 = !DILocalVariable(name: "ax", scope: !1604, file: !664, line: 806, type: !27)
!1609 = !DILocalVariable(name: "mark", scope: !1604, file: !664, line: 806, type: !134)
!1610 = !DILocalVariable(name: "items", scope: !1604, file: !664, line: 806, type: !27)
!1611 = !DILocation(line: 0, scope: !1604)
!1612 = !DILocation(line: 806, column: 11, scope: !1604)
!1613 = !DILocation(line: 807, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !664, line: 807, column: 9)
!1615 = !DILocation(line: 807, column: 9, scope: !1604)
!1616 = !DILocation(line: 808, column: 8, scope: !1614)
!1617 = !DILocation(line: 810, column: 8, scope: !1604)
!1618 = !DILocation(line: 813, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !664, line: 813, column: 9)
!1620 = distinct !DILexicalBlock(scope: !1604, file: !664, line: 811, column: 5)
!1621 = !DILocation(line: 813, column: 15, scope: !1619)
!1622 = !DILocation(line: 813, column: 9, scope: !1620)
!1623 = !DILocation(line: 814, column: 2, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !664, line: 813, column: 27)
!1625 = !DILocation(line: 815, column: 5, scope: !1624)
!1626 = !DILocation(line: 817, column: 2, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !664, line: 817, column: 2)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !664, line: 817, column: 2)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !664, line: 817, column: 2)
!1630 = distinct !DILexicalBlock(scope: !1619, file: !664, line: 816, column: 10)
!1631 = !DILocation(line: 817, column: 2, scope: !1628)
!1632 = !DILocation(line: 817, column: 2, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !664, line: 817, column: 2)
!1634 = !DILocation(line: 817, column: 2, scope: !1629)
!1635 = !DILocation(line: 820, column: 2, scope: !1620)
!1636 = !DILocation(line: 823, column: 1, scope: !1604)
!1637 = distinct !DISubprogram(name: "XS_Opcode_opmask", scope: !664, file: !664, line: 827, type: !564, scopeLine: 828, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1648, !1649}
!1639 = !DILocalVariable(name: "cv", arg: 1, scope: !1637, file: !664, line: 827, type: !276)
!1640 = !DILocalVariable(name: "sp", scope: !1637, file: !664, line: 829, type: !134)
!1641 = !DILocalVariable(name: "ax", scope: !1637, file: !664, line: 829, type: !27)
!1642 = !DILocalVariable(name: "mark", scope: !1637, file: !664, line: 829, type: !134)
!1643 = !DILocalVariable(name: "items", scope: !1637, file: !664, line: 829, type: !27)
!1644 = !DILocalVariable(name: "bitmap", scope: !1645, file: !664, line: 836, type: !1197)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !664, line: 835, column: 21)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !664, line: 835, column: 9)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !664, line: 832, column: 5)
!1648 = !DILocalVariable(name: "myopcode", scope: !1645, file: !664, line: 837, type: !29)
!1649 = !DILocalVariable(name: "tmpXSoff", scope: !1650, file: !664, line: 845, type: !692)
!1650 = distinct !DILexicalBlock(scope: !1637, file: !664, line: 845, column: 5)
!1651 = !DILocation(line: 0, scope: !1637)
!1652 = !DILocation(line: 829, column: 11, scope: !1637)
!1653 = !DILocation(line: 830, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1637, file: !664, line: 830, column: 9)
!1655 = !DILocation(line: 830, column: 9, scope: !1637)
!1656 = !DILocation(line: 831, column: 8, scope: !1654)
!1657 = !DILocation(line: 0, scope: !758, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 834, column: 13, scope: !1647)
!1659 = !DILocation(line: 141, column: 10, scope: !766, inlinedAt: !1658)
!1660 = !DILocation(line: 142, column: 2, scope: !766, inlinedAt: !1658)
!1661 = !DILocation(line: 143, column: 2, scope: !770, inlinedAt: !1658)
!1662 = !DILocation(line: 144, column: 8, scope: !766, inlinedAt: !1658)
!1663 = !DILocation(line: 834, column: 13, scope: !1647)
!1664 = !DILocation(line: 834, column: 5, scope: !1647)
!1665 = !DILocation(line: 834, column: 11, scope: !1647)
!1666 = !DILocation(line: 835, column: 9, scope: !1646)
!1667 = !DILocation(line: 835, column: 9, scope: !1647)
!1668 = !DILocation(line: 836, column: 24, scope: !1645)
!1669 = !DILocation(line: 0, scope: !1645)
!1670 = !DILocation(line: 838, column: 29, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !664, line: 838, column: 2)
!1672 = distinct !DILexicalBlock(scope: !1645, file: !664, line: 838, column: 2)
!1673 = !DILocation(line: 838, column: 27, scope: !1671)
!1674 = !DILocation(line: 838, column: 2, scope: !1672)
!1675 = !DILocation(line: 839, column: 10, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !664, line: 839, column: 10)
!1677 = distinct !DILexicalBlock(scope: !1671, file: !664, line: 838, column: 50)
!1678 = !DILocation(line: 839, column: 10, scope: !1677)
!1679 = !DILocation(line: 840, column: 43, scope: !1676)
!1680 = !DILocation(line: 840, column: 30, scope: !1676)
!1681 = !DILocation(line: 840, column: 19, scope: !1676)
!1682 = !DILocation(line: 840, column: 3, scope: !1676)
!1683 = !DILocation(line: 840, column: 25, scope: !1676)
!1684 = !DILocation(line: 838, column: 38, scope: !1671)
!1685 = distinct !{!1685, !1674, !1686, !755, !756}
!1686 = !DILocation(line: 841, column: 2, scope: !1672)
!1687 = !DILocation(line: 0, scope: !1650)
!1688 = !DILocation(line: 845, column: 5, scope: !1650)
!1689 = !DILocation(line: 846, column: 1, scope: !1637)
!1690 = !DISubprogram(name: "Perl_call_list", scope: !805, file: !805, line: 350, type: !1691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !27, !300}
!1693 = !DISubprogram(name: "Perl_croak_xs_usage", scope: !805, file: !805, line: 763, type: !1694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1696, !350}
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!1699 = !DISubprogram(name: "Perl_push_scope", scope: !805, file: !805, line: 3507, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1700 = !DISubprogram(name: "Perl_gv_stashsv", scope: !805, file: !805, line: 1605, type: !1701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!37, !67, !27}
!1703 = !DISubprogram(name: "Perl_hv_name_set", scope: !805, file: !805, line: 1760, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !37, !351, !74, !74}
!1706 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !805, file: !805, line: 1627, type: !1707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!72, !37, !351, !27, !1385, !67, !353}
!1709 = !DISubprogram(name: "Perl_pop_scope", scope: !805, file: !805, line: 3451, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1710 = !DISubprogram(name: "Perl_save_aptr", scope: !805, file: !805, line: 3795, type: !1711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1714 = !DISubprogram(name: "Perl_sv_2mortal", scope: !805, file: !805, line: 4114, type: !1715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!67, !340}
!1717 = !DISubprogram(name: "Perl_newSV_type", scope: !805, file: !805, line: 3073, type: !1718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!67, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!1721 = !DISubprogram(name: "Perl_save_hptr", scope: !805, file: !805, line: 3869, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1725 = !DISubprogram(name: "Perl_save_generic_svref", scope: !805, file: !805, line: 3835, type: !1726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !134}
!1728 = !DISubprogram(name: "Perl_gv_fetchpvn_flags", scope: !805, file: !805, line: 1525, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!209, !351, !100, !27, !1720}
!1731 = !DISubprogram(name: "Perl_sv_free", scope: !805, file: !805, line: 4370, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !340}
!1734 = !DISubprogram(name: "Perl_save_hash", scope: !805, file: !805, line: 3845, type: !1735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!37, !209}
!1737 = !DISubprogram(name: "Perl_gv_add_by_type", scope: !805, file: !805, line: 1391, type: !1738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!209, !209, !648}
!1740 = !DISubprogram(name: "Perl_hv_clear", scope: !805, file: !805, line: 1620, type: !1741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !37}
!1743 = !DISubprogram(name: "Perl_markstack_grow", scope: !805, file: !805, line: 2624, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!876}
!1746 = !DISubprogram(name: "Perl_call_sv", scope: !805, file: !805, line: 365, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!27, !67, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!1750 = !DISubprogram(name: "Perl_dowantarray", scope: !805, file: !805, line: 1104, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!27}
!1753 = !DISubprogram(name: "Perl_save_vptr", scope: !805, file: !805, line: 3950, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1754 = distinct !DISubprogram(name: "opmask_add", scope: !664, file: !664, line: 204, type: !1755, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !67}
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1758 = !DILocalVariable(name: "opset", arg: 1, scope: !1754, file: !664, line: 204, type: !67)
!1759 = !DILocalVariable(name: "i", scope: !1754, file: !664, line: 206, type: !29)
!1760 = !DILocalVariable(name: "j", scope: !1754, file: !664, line: 206, type: !29)
!1761 = !DILocalVariable(name: "bitmask", scope: !1754, file: !664, line: 207, type: !80)
!1762 = !DILocalVariable(name: "len", scope: !1754, file: !664, line: 208, type: !100)
!1763 = !DILocalVariable(name: "myopcode", scope: !1754, file: !664, line: 209, type: !29)
!1764 = !DILocalVariable(name: "bits", scope: !1765, file: !664, line: 221, type: !1116)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !664, line: 220, column: 35)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !664, line: 220, column: 5)
!1767 = distinct !DILexicalBlock(scope: !1754, file: !664, line: 220, column: 5)
!1768 = !DILocation(line: 0, scope: !1754)
!1769 = !DILocation(line: 208, column: 5, scope: !1754)
!1770 = !DILocation(line: 0, scope: !989, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 212, column: 5, scope: !1754)
!1772 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1771)
!1773 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1771)
!1774 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1771)
!1775 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1771)
!1776 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1771)
!1777 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1771)
!1778 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1771)
!1779 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1771)
!1780 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1771)
!1781 = !DILocation(line: 214, column: 10, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1754, file: !664, line: 214, column: 9)
!1783 = !DILocation(line: 214, column: 9, scope: !1754)
!1784 = !DILocation(line: 215, column: 2, scope: !1782)
!1785 = !DILocation(line: 219, column: 15, scope: !1754)
!1786 = !DILocation(line: 220, column: 17, scope: !1766)
!1787 = !DILocation(line: 220, column: 5, scope: !1767)
!1788 = !DILocation(line: 221, column: 19, scope: !1765)
!1789 = !DILocation(line: 0, scope: !1765)
!1790 = !DILocation(line: 222, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1765, file: !664, line: 222, column: 6)
!1792 = !DILocation(line: 222, column: 6, scope: !1765)
!1793 = !DILocation(line: 226, column: 18, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !664, line: 226, column: 2)
!1795 = distinct !DILexicalBlock(scope: !1765, file: !664, line: 226, column: 2)
!1796 = !DILocation(line: 226, column: 2, scope: !1795)
!1797 = !DILocation(line: 223, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1791, file: !664, line: 222, column: 13)
!1799 = !DILocation(line: 224, column: 6, scope: !1798)
!1800 = !DILocation(line: 227, column: 46, scope: !1794)
!1801 = !DILocation(line: 227, column: 42, scope: !1794)
!1802 = !DILocation(line: 227, column: 6, scope: !1794)
!1803 = !DILocation(line: 227, column: 25, scope: !1794)
!1804 = !DILocation(line: 227, column: 29, scope: !1794)
!1805 = !DILocation(line: 226, column: 14, scope: !1794)
!1806 = distinct !{!1806, !1796, !1807, !755, !756}
!1807 = !DILocation(line: 227, column: 48, scope: !1795)
!1808 = !DILocation(line: 220, column: 31, scope: !1766)
!1809 = distinct !{!1809, !1787, !1810, !755, !756}
!1810 = !DILocation(line: 228, column: 5, scope: !1767)
!1811 = !DILocation(line: 229, column: 1, scope: !1754)
!1812 = !DISubprogram(name: "Perl_croak", scope: !805, file: !805, line: 741, type: !1813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !351, null}
!1815 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !805, file: !805, line: 4130, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!80, !340, !1818, !374}
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1820 = !DISubprogram(name: "Perl_sv_newmortal", scope: !805, file: !805, line: 4449, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!67}
!1823 = !DISubprogram(name: "Perl_sv_2iv_flags", scope: !805, file: !805, line: 4109, type: !1824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!83, !340, !374}
!1826 = !DISubprogram(name: "Perl_sv_setiv", scope: !805, file: !805, line: 4587, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !340, !692}
!1829 = !DISubprogram(name: "Perl_mg_set", scope: !805, file: !805, line: 2692, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!29, !67}
!1832 = !DISubprogram(name: "Perl_newSVsv", scope: !805, file: !805, line: 3129, type: !1715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1833 = !DISubprogram(name: "Perl_newSV", scope: !805, file: !805, line: 3055, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!67, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1837 = !DISubprogram(name: "Perl_get_op_descs", scope: !805, file: !805, line: 1306, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!359}
!1840 = !DISubprogram(name: "Perl_get_op_names", scope: !805, file: !805, line: 1310, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1841 = !DISubprogram(name: "Perl_stack_grow", scope: !805, file: !805, line: 4061, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!134, !134, !134, !313}
!1844 = !DISubprogram(name: "Perl_newSVpvn_flags", scope: !805, file: !805, line: 3116, type: !1845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!67, !350, !1836, !353}
!1847 = distinct !DISubprogram(name: "get_op_bitspec", scope: !664, file: !664, line: 108, type: !1848, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!67, !351, !100, !29}
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DILocalVariable(name: "opname", arg: 1, scope: !1847, file: !664, line: 108, type: !351)
!1852 = !DILocalVariable(name: "len", arg: 2, scope: !1847, file: !664, line: 108, type: !100)
!1853 = !DILocalVariable(name: "fatal", arg: 3, scope: !1847, file: !664, line: 108, type: !29)
!1854 = !DILocalVariable(name: "svp", scope: !1847, file: !664, line: 110, type: !134)
!1855 = !DILocation(line: 0, scope: !1847)
!1856 = !DILocation(line: 113, column: 11, scope: !1847)
!1857 = !DILocation(line: 114, column: 10, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1847, file: !664, line: 114, column: 9)
!1859 = !DILocation(line: 114, column: 14, scope: !1858)
!1860 = !DILocation(line: 114, column: 18, scope: !1858)
!1861 = !DILocation(line: 117, column: 6, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !664, line: 117, column: 6)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !664, line: 114, column: 30)
!1864 = !DILocation(line: 117, column: 14, scope: !1862)
!1865 = !DILocation(line: 117, column: 6, scope: !1863)
!1866 = !DILocation(line: 118, column: 6, scope: !1862)
!1867 = !DILocation(line: 119, column: 6, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !664, line: 119, column: 6)
!1869 = !DILocation(line: 119, column: 14, scope: !1868)
!1870 = !DILocation(line: 119, column: 6, scope: !1863)
!1871 = !DILocation(line: 120, column: 6, scope: !1868)
!1872 = !DILocation(line: 121, column: 6, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1863, file: !664, line: 121, column: 6)
!1874 = !DILocation(line: 121, column: 6, scope: !1863)
!1875 = !DILocation(line: 122, column: 6, scope: !1873)
!1876 = !DILocation(line: 123, column: 2, scope: !1863)
!1877 = !DILocation(line: 125, column: 12, scope: !1847)
!1878 = !DILocation(line: 124, column: 5, scope: !1863)
!1879 = !DILocation(line: 126, column: 1, scope: !1847)
!1880 = distinct !DISubprogram(name: "set_opset_bits", scope: !664, file: !664, line: 168, type: !1881, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !80, !67, !29, !351}
!1883 = !{!1884, !1885, !1886, !1887, !1888, !1891, !1892, !1893, !1896}
!1884 = !DILocalVariable(name: "bitmap", arg: 1, scope: !1880, file: !664, line: 168, type: !80)
!1885 = !DILocalVariable(name: "bitspec", arg: 2, scope: !1880, file: !664, line: 168, type: !67)
!1886 = !DILocalVariable(name: "on", arg: 3, scope: !1880, file: !664, line: 168, type: !29)
!1887 = !DILocalVariable(name: "opname", arg: 4, scope: !1880, file: !664, line: 168, type: !351)
!1888 = !DILocalVariable(name: "myopcode", scope: !1889, file: !664, line: 173, type: !1385)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !664, line: 172, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1880, file: !664, line: 172, column: 9)
!1891 = !DILocalVariable(name: "offset", scope: !1889, file: !664, line: 174, type: !1385)
!1892 = !DILocalVariable(name: "bit", scope: !1889, file: !664, line: 175, type: !1385)
!1893 = !DILocalVariable(name: "len", scope: !1894, file: !664, line: 188, type: !100)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !664, line: 186, column: 69)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !664, line: 186, column: 14)
!1896 = !DILocalVariable(name: "specbits", scope: !1894, file: !664, line: 189, type: !350)
!1897 = !DILocation(line: 0, scope: !1880)
!1898 = !DILocation(line: 172, column: 9, scope: !1890)
!1899 = !DILocation(line: 172, column: 9, scope: !1880)
!1900 = !DILocation(line: 173, column: 23, scope: !1889)
!1901 = !DILocation(line: 0, scope: !1889)
!1902 = !DILocation(line: 174, column: 30, scope: !1889)
!1903 = !DILocation(line: 175, column: 30, scope: !1889)
!1904 = !DILocation(line: 176, column: 18, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1889, file: !664, line: 176, column: 6)
!1906 = !DILocation(line: 176, column: 15, scope: !1905)
!1907 = !DILocation(line: 176, column: 26, scope: !1905)
!1908 = !DILocation(line: 177, column: 6, scope: !1905)
!1909 = !DILocation(line: 181, column: 6, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1889, file: !664, line: 181, column: 6)
!1911 = !DILocation(line: 0, scope: !1910)
!1912 = !DILocation(line: 181, column: 6, scope: !1889)
!1913 = !DILocation(line: 182, column: 21, scope: !1910)
!1914 = !DILocation(line: 182, column: 6, scope: !1910)
!1915 = !DILocation(line: 184, column: 21, scope: !1910)
!1916 = !DILocation(line: 186, column: 14, scope: !1895)
!1917 = !DILocation(line: 186, column: 29, scope: !1895)
!1918 = !DILocation(line: 186, column: 32, scope: !1895)
!1919 = !DILocation(line: 186, column: 58, scope: !1895)
!1920 = !DILocation(line: 186, column: 47, scope: !1895)
!1921 = !DILocation(line: 186, column: 14, scope: !1890)
!1922 = !DILocation(line: 188, column: 2, scope: !1894)
!1923 = !DILocation(line: 189, column: 32, scope: !1894)
!1924 = !DILocation(line: 0, scope: !1894)
!1925 = !DILocation(line: 192, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1894, file: !664, line: 192, column: 6)
!1927 = !DILocation(line: 0, scope: !1926)
!1928 = !DILocation(line: 192, column: 6, scope: !1894)
!1929 = !DILocation(line: 193, column: 6, scope: !1926)
!1930 = !DILocation(line: 195, column: 6, scope: !1926)
!1931 = !DILocation(line: 193, column: 15, scope: !1926)
!1932 = !DILocation(line: 193, column: 39, scope: !1926)
!1933 = !DILocation(line: 193, column: 23, scope: !1926)
!1934 = !DILocation(line: 193, column: 35, scope: !1926)
!1935 = !DILocation(line: 193, column: 18, scope: !1926)
!1936 = distinct !{!1936, !1929, !1937, !755, !756}
!1937 = !DILocation(line: 193, column: 51, scope: !1926)
!1938 = !DILocation(line: 195, column: 15, scope: !1926)
!1939 = !DILocation(line: 195, column: 39, scope: !1926)
!1940 = !DILocation(line: 195, column: 38, scope: !1926)
!1941 = !DILocation(line: 195, column: 23, scope: !1926)
!1942 = !DILocation(line: 195, column: 35, scope: !1926)
!1943 = !DILocation(line: 195, column: 18, scope: !1926)
!1944 = distinct !{!1944, !1930, !1945, !755, !756}
!1945 = !DILocation(line: 195, column: 51, scope: !1926)
!1946 = !DILocation(line: 196, column: 5, scope: !1895)
!1947 = !DILocation(line: 196, column: 5, scope: !1894)
!1948 = !DILocation(line: 199, column: 21, scope: !1895)
!1949 = !DILocation(line: 198, column: 2, scope: !1895)
!1950 = !DILocation(line: 200, column: 1, scope: !1880)
!1951 = !DISubprogram(name: "Perl_sv_setsv_flags", scope: !805, file: !805, line: 4683, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !67, !67, !374}
!1954 = distinct !DISubprogram(name: "put_op_bitspec", scope: !664, file: !664, line: 87, type: !1955, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !351, !100, !67}
!1957 = !{!1958, !1959, !1960, !1961}
!1958 = !DILocalVariable(name: "optag", arg: 1, scope: !1954, file: !664, line: 87, type: !351)
!1959 = !DILocalVariable(name: "len", arg: 2, scope: !1954, file: !664, line: 87, type: !100)
!1960 = !DILocalVariable(name: "mask", arg: 3, scope: !1954, file: !664, line: 87, type: !67)
!1961 = !DILocalVariable(name: "svp", scope: !1954, file: !664, line: 89, type: !134)
!1962 = !DILocation(line: 0, scope: !1954)
!1963 = !DILocation(line: 0, scope: !989, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 92, column: 5, scope: !1954)
!1965 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !1964)
!1966 = !DILocation(line: 158, column: 15, scope: !1000, inlinedAt: !1964)
!1967 = !DILocation(line: 158, column: 14, scope: !998, inlinedAt: !1964)
!1968 = !DILocation(line: 159, column: 14, scope: !1003, inlinedAt: !1964)
!1969 = !DILocation(line: 159, column: 38, scope: !1003, inlinedAt: !1964)
!1970 = !DILocation(line: 159, column: 27, scope: !1003, inlinedAt: !1964)
!1971 = !DILocation(line: 160, column: 13, scope: !1008, inlinedAt: !1964)
!1972 = !DILocation(line: 161, column: 2, scope: !1010, inlinedAt: !1964)
!1973 = !DILocation(line: 162, column: 5, scope: !1010, inlinedAt: !1964)
!1974 = !DILocation(line: 93, column: 11, scope: !1954)
!1975 = !DILocation(line: 94, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1954, file: !664, line: 94, column: 9)
!1977 = !DILocation(line: 95, column: 2, scope: !1976)
!1978 = !DILocation(line: 96, column: 5, scope: !1954)
!1979 = !DILocation(line: 97, column: 5, scope: !1954)
!1980 = !DILocation(line: 98, column: 1, scope: !1954)
!1981 = !DISubprogram(name: "Perl_safesyscalloc", scope: !805, file: !805, line: 3746, type: !1982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!72, !101, !101}
!1984 = !DISubprogram(name: "Perl_newSViv", scope: !805, file: !805, line: 3088, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!67, !692}
