; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/numeric.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.16 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.17 }
%union.anon.17 = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Integer overflow in binary number\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Illegal binary digit '%c' ignored\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Binary number > 0b11111111111111111111111111111111 non-portable\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Integer overflow in hexadecimal number\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Illegal hexadecimal digit '%c' ignored\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Hexadecimal number > 0xffffffff non-portable\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Integer overflow in octal number\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Illegal octal digit '%c' ignored\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Octal number > 037777777777 non-portable\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"inqs#\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @Perl_cast_ulong(double noundef %f) local_unnamed_addr #0 !dbg !633 {
entry:
  call void @llvm.dbg.value(metadata double %f, metadata !637, metadata !DIExpression()), !dbg !638
  %cmp = fcmp olt double %f, 0.000000e+00, !dbg !639
  br i1 %cmp, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC1E0000000000000, !dbg !642
  br i1 %cmp1, label %return, label %cond.false, !dbg !643

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i32, !dbg !644
  br label %return, !dbg !643

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x41F0000000000000, !dbg !645
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !647

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i32, !dbg !648
  br label %return, !dbg !650

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00, !dbg !651
  %cond9 = sext i1 %cmp7 to i32, !dbg !652
  br label %return, !dbg !653

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i32 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -2147483648, %if.then ], !dbg !638
  ret i32 %retval.0, !dbg !654
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @Perl_cast_i32(double noundef %f) local_unnamed_addr #0 !dbg !655 {
entry:
  call void @llvm.dbg.value(metadata double %f, metadata !659, metadata !DIExpression()), !dbg !660
  %cmp = fcmp olt double %f, 0x41E0000000000000, !dbg !661
  br i1 %cmp, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC1E0000000000000, !dbg !664
  br i1 %cmp1, label %return, label %cond.false, !dbg !665

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i32, !dbg !666
  br label %return, !dbg !665

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x41F0000000000000, !dbg !667
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !669

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i32, !dbg !670
  br label %return, !dbg !672

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00, !dbg !673
  %cond9 = sext i1 %cmp7 to i32, !dbg !674
  br label %return, !dbg !675

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i32 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -2147483648, %if.then ], !dbg !660
  ret i32 %retval.0, !dbg !676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @Perl_cast_iv(double noundef %f) local_unnamed_addr #0 !dbg !677 {
entry:
  call void @llvm.dbg.value(metadata double %f, metadata !681, metadata !DIExpression()), !dbg !682
  %cmp = fcmp olt double %f, 0x43E0000000000000, !dbg !683
  br i1 %cmp, label %if.then, label %if.end, !dbg !685

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC3E0000000000000, !dbg !686
  br i1 %cmp1, label %return, label %cond.false, !dbg !687

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i64, !dbg !688
  br label %return, !dbg !687

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x43F0000000000000, !dbg !689
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !691

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i64, !dbg !692
  br label %return, !dbg !694

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00, !dbg !695
  %cond9 = sext i1 %cmp7 to i64, !dbg !696
  br label %return, !dbg !697

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i64 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -9223372036854775808, %if.then ], !dbg !682
  ret i64 %retval.0, !dbg !698
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @Perl_cast_uv(double noundef %f) local_unnamed_addr #0 !dbg !699 {
entry:
  call void @llvm.dbg.value(metadata double %f, metadata !703, metadata !DIExpression()), !dbg !704
  %cmp = fcmp olt double %f, 0.000000e+00, !dbg !705
  br i1 %cmp, label %if.then, label %if.end, !dbg !707

if.then:                                          ; preds = %entry
  %cmp1 = fcmp olt double %f, 0xC3E0000000000000, !dbg !708
  br i1 %cmp1, label %return, label %cond.false, !dbg !709

cond.false:                                       ; preds = %if.then
  %conv = fptosi double %f to i64, !dbg !710
  br label %return, !dbg !709

if.end:                                           ; preds = %entry
  %cmp2 = fcmp olt double %f, 0x43F0000000000000, !dbg !711
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !713

if.then4:                                         ; preds = %if.end
  %conv5 = fptoui double %f to i64, !dbg !714
  br label %return, !dbg !716

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp ogt double %f, 0.000000e+00, !dbg !717
  %cond9 = sext i1 %cmp7 to i64, !dbg !718
  br label %return, !dbg !719

return:                                           ; preds = %cond.false, %if.then, %if.end6, %if.then4
  %retval.0 = phi i64 [ %conv5, %if.then4 ], [ %cond9, %if.end6 ], [ %conv, %cond.false ], [ -9223372036854775808, %if.then ], !dbg !704
  ret i64 %retval.0, !dbg !720
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_grok_bin(ptr noundef %start, ptr nocapture noundef %len_p, ptr nocapture noundef %flags, ptr noundef writeonly %result) local_unnamed_addr #2 !dbg !721 {
entry:
  call void @llvm.dbg.value(metadata ptr %start, metadata !728, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %len_p, metadata !729, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %flags, metadata !730, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %result, metadata !731, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %start, metadata !732, metadata !DIExpression()), !dbg !747
  %0 = load i64, ptr %len_p, align 8, !dbg !748
  call void @llvm.dbg.value(metadata i64 %0, metadata !733, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !736, metadata !DIExpression()), !dbg !747
  %1 = load i32, ptr %flags, align 4, !dbg !749
  %and = and i32 %1, 1, !dbg !749
  %tobool.not = icmp eq i32 %and, 0, !dbg !749
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !737, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !747
  call void @llvm.dbg.value(metadata i8 0, metadata !739, metadata !DIExpression()), !dbg !747
  %and2 = and i32 %1, 2, !dbg !750
  %tobool3 = icmp eq i32 %and2, 0, !dbg !750
  %cmp = icmp ne i64 %0, 0
  %or.cond113 = select i1 %tobool3, i1 %cmp, i1 false, !dbg !752
  br i1 %or.cond113, label %if.then4, label %if.end24, !dbg !752

if.then4:                                         ; preds = %entry
  %2 = load i8, ptr %start, align 1, !dbg !753
  %3 = and i8 %2, -33, !dbg !753
  %cmp6 = icmp eq i8 %3, 66, !dbg !753
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !758

if.then8:                                         ; preds = %if.then4
  %incdec.ptr = getelementptr inbounds i8, ptr %start, i64 1, !dbg !759
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !732, metadata !DIExpression()), !dbg !747
  %dec = add i64 %0, -1, !dbg !761
  call void @llvm.dbg.value(metadata i64 %dec, metadata !733, metadata !DIExpression()), !dbg !747
  br label %if.end24, !dbg !762

if.else:                                          ; preds = %if.then4
  %cmp9 = icmp ugt i64 %0, 1, !dbg !763
  br i1 %cmp9, label %land.lhs.true, label %land.rhs.lr.ph, !dbg !765

land.lhs.true:                                    ; preds = %if.else
  %cmp13 = icmp eq i8 %2, 48, !dbg !766
  br i1 %cmp13, label %land.lhs.true15, label %land.rhs.lr.ph, !dbg !767

land.lhs.true15:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds i8, ptr %start, i64 1, !dbg !768
  %4 = load i8, ptr %arrayidx16, align 1, !dbg !768
  %5 = and i8 %4, -33, !dbg !768
  %cmp19 = icmp eq i8 %5, 66, !dbg !768
  br i1 %cmp19, label %if.then21, label %land.rhs.lr.ph, !dbg !769

if.then21:                                        ; preds = %land.lhs.true15
  %add.ptr = getelementptr inbounds i8, ptr %start, i64 2, !dbg !770
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !732, metadata !DIExpression()), !dbg !747
  %sub = add i64 %0, -2, !dbg !772
  call void @llvm.dbg.value(metadata i64 %sub, metadata !733, metadata !DIExpression()), !dbg !747
  br label %if.end24, !dbg !773

if.end24:                                         ; preds = %if.then21, %if.then8, %entry
  %len.0 = phi i64 [ %dec, %if.then8 ], [ %sub, %if.then21 ], [ %0, %entry ], !dbg !747
  %s.0 = phi ptr [ %incdec.ptr, %if.then8 ], [ %add.ptr, %if.then21 ], [ %start, %entry ], !dbg !747
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i8 0, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !733, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !747
  %tobool26.not166 = icmp eq i64 %len.0, 0, !dbg !774
  br i1 %tobool26.not166, label %if.end95.thread, label %land.rhs.lr.ph, !dbg !775

if.end95.thread:                                  ; preds = %if.end24
  %sub.ptr.lhs.cast258 = ptrtoint ptr %s.0 to i64, !dbg !776
  %sub.ptr.rhs.cast259 = ptrtoint ptr %start to i64, !dbg !776
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259, !dbg !776
  store i64 %sub.ptr.sub260, ptr %len_p, align 8, !dbg !777
  br label %if.then97, !dbg !778

land.rhs.lr.ph:                                   ; preds = %if.else, %land.lhs.true, %land.lhs.true15, %if.end24
  %s.0227 = phi ptr [ %s.0, %if.end24 ], [ %start, %land.lhs.true15 ], [ %start, %land.lhs.true ], [ %start, %if.else ]
  %len.0226 = phi i64 [ %len.0, %if.end24 ], [ %0, %land.lhs.true15 ], [ %0, %land.lhs.true ], [ 1, %if.else ]
  %dec25165 = add i64 %len.0226, -1, !dbg !774
  call void @llvm.dbg.value(metadata i64 %dec25165, metadata !733, metadata !DIExpression()), !dbg !747
  br i1 %tobool.not, label %land.rhs.us.preheader, label %land.rhs

land.rhs.us.preheader:                            ; preds = %land.rhs.lr.ph
  %uglygep = getelementptr i8, ptr %s.0227, i64 %len.0226, !dbg !779
  br label %land.rhs.us, !dbg !779

land.rhs.us:                                      ; preds = %land.rhs.us.preheader, %for.inc.us
  %dec25176.us = phi i64 [ %dec25.us, %for.inc.us ], [ %dec25165, %land.rhs.us.preheader ]
  %overflowed.0174.us = phi i8 [ %overflowed.2.us, %for.inc.us ], [ 0, %land.rhs.us.preheader ]
  %s.1173.us = phi ptr [ %incdec.ptr80.us, %for.inc.us ], [ %s.0227, %land.rhs.us.preheader ]
  %value_nv.0171.us = phi double [ %value_nv.2.us, %for.inc.us ], [ 0.000000e+00, %land.rhs.us.preheader ]
  %value.0168.us = phi i64 [ %value.1.us, %for.inc.us ], [ 0, %land.rhs.us.preheader ]
  call void @llvm.dbg.value(metadata i8 %overflowed.0174.us, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %s.1173.us, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %value_nv.0171.us, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %value.0168.us, metadata !734, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 undef, metadata !733, metadata !DIExpression()), !dbg !747
  %6 = load i8, ptr %s.1173.us, align 1, !dbg !780
  call void @llvm.dbg.value(metadata i8 %6, metadata !740, metadata !DIExpression()), !dbg !747
  %tobool28.not.us = icmp eq i8 %6, 0, !dbg !775
  br i1 %tobool28.not.us, label %for.end, label %for.body.us, !dbg !779

for.body.us:                                      ; preds = %land.rhs.us
  %7 = and i8 %6, -2, !dbg !781
  %8 = icmp eq i8 %7, 48, !dbg !781
  br i1 %8, label %redo.us, label %if.end74, !dbg !781

redo.us:                                          ; preds = %for.body.us
  call void @llvm.dbg.value(metadata i8 undef, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr undef, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 undef, metadata !733, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.label(metadata !741), !dbg !782
  %9 = and i8 %overflowed.0174.us, 1, !dbg !783
  %tobool36.not.us = icmp eq i8 %9, 0, !dbg !783
  br i1 %tobool36.not.us, label %if.then37.us, label %if.end46.us, !dbg !785

if.then37.us:                                     ; preds = %redo.us
  %cmp38.us = icmp sgt i64 %value.0168.us, -1, !dbg !786
  br i1 %cmp38.us, label %if.then40.us, label %if.end44.us, !dbg !789

if.end44.us:                                      ; preds = %if.then37.us
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str) #12, !dbg !790
  call void @llvm.dbg.value(metadata i8 1, metadata !739, metadata !DIExpression()), !dbg !747
  %conv45.us = uitofp i64 %value.0168.us to double, !dbg !791
  call void @llvm.dbg.value(metadata double %conv45.us, metadata !735, metadata !DIExpression()), !dbg !747
  br label %if.end46.us, !dbg !792

if.end46.us:                                      ; preds = %if.end44.us, %redo.us
  %value_nv.1.us = phi double [ %value_nv.0171.us, %redo.us ], [ %conv45.us, %if.end44.us ], !dbg !747
  %overflowed.1.us = phi i8 [ %overflowed.0174.us, %redo.us ], [ 1, %if.end44.us ], !dbg !747
  call void @llvm.dbg.value(metadata i8 %overflowed.1.us, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %value_nv.1.us, metadata !735, metadata !DIExpression()), !dbg !747
  %mul.us = fmul double %value_nv.1.us, 2.000000e+00, !dbg !793
  call void @llvm.dbg.value(metadata double %mul.us, metadata !735, metadata !DIExpression()), !dbg !747
  %conv47156.us = zext i8 %6 to i32, !dbg !794
  %sub48.us = add nsw i32 %conv47156.us, -48, !dbg !795
  %conv49.us = sitofp i32 %sub48.us to double, !dbg !796
  %add.us = fadd double %mul.us, %conv49.us, !dbg !797
  call void @llvm.dbg.value(metadata double %add.us, metadata !735, metadata !DIExpression()), !dbg !747
  br label %for.inc.us, !dbg !798

if.then40.us:                                     ; preds = %if.then37.us
  %shl.us = shl nuw i64 %value.0168.us, 1, !dbg !799
  %conv41155.us = zext i8 %6 to i64, !dbg !801
  %sub42.us = add nsw i64 %conv41155.us, -48, !dbg !802
  %or.us = or i64 %sub42.us, %shl.us, !dbg !803
  call void @llvm.dbg.value(metadata i64 %or.us, metadata !734, metadata !DIExpression()), !dbg !747
  br label %for.inc.us, !dbg !804

for.inc.us:                                       ; preds = %if.then40.us, %if.end46.us
  %value.1.us = phi i64 [ %value.0168.us, %if.end46.us ], [ %or.us, %if.then40.us ], !dbg !747
  %value_nv.2.us = phi double [ %add.us, %if.end46.us ], [ %value_nv.0171.us, %if.then40.us ], !dbg !747
  %overflowed.2.us = phi i8 [ %overflowed.1.us, %if.end46.us ], [ %overflowed.0174.us, %if.then40.us ], !dbg !805
  call void @llvm.dbg.value(metadata i8 %overflowed.2.us, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %value_nv.2.us, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %value.1.us, metadata !734, metadata !DIExpression()), !dbg !747
  %incdec.ptr80.us = getelementptr inbounds i8, ptr %s.1173.us, i64 1, !dbg !806
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80.us, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 undef, metadata !733, metadata !DIExpression()), !dbg !747
  %dec25.us = add i64 %dec25176.us, -1, !dbg !774
  call void @llvm.dbg.value(metadata i64 %dec25.us, metadata !733, metadata !DIExpression()), !dbg !747
  %tobool26.not.us = icmp eq i64 %dec25176.us, 0, !dbg !774
  br i1 %tobool26.not.us, label %for.end, label %land.rhs.us, !dbg !775, !llvm.loop !807

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %dec25176 = phi i64 [ %dec25, %for.inc ], [ %dec25165, %land.rhs.lr.ph ]
  %overflowed.0174 = phi i8 [ %overflowed.2, %for.inc ], [ 0, %land.rhs.lr.ph ]
  %s.1173 = phi ptr [ %incdec.ptr80, %for.inc ], [ %s.0227, %land.rhs.lr.ph ]
  %value_nv.0171 = phi double [ %value_nv.2, %for.inc ], [ 0.000000e+00, %land.rhs.lr.ph ]
  %value.0168 = phi i64 [ %value.1, %for.inc ], [ 0, %land.rhs.lr.ph ]
  %len.1167 = phi i64 [ %len.2, %for.inc ], [ %len.0226, %land.rhs.lr.ph ]
  call void @llvm.dbg.value(metadata i8 %overflowed.0174, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %s.1173, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %value_nv.0171, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %value.0168, metadata !734, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %len.1167, metadata !733, metadata !DIExpression()), !dbg !747
  %10 = load i8, ptr %s.1173, align 1, !dbg !780
  call void @llvm.dbg.value(metadata i8 %10, metadata !740, metadata !DIExpression()), !dbg !747
  %tobool28.not = icmp eq i8 %10, 0, !dbg !775
  br i1 %tobool28.not, label %for.end, label %for.body, !dbg !779

for.body:                                         ; preds = %land.rhs
  %11 = and i8 %10, -2, !dbg !781
  %12 = icmp eq i8 %11, 48, !dbg !781
  br i1 %12, label %redo, label %if.end50, !dbg !781

redo:                                             ; preds = %for.body, %if.then71
  %len.2 = phi i64 [ %dec25176, %for.body ], [ %dec72, %if.then71 ], !dbg !811
  %s.2 = phi ptr [ %s.1173, %for.body ], [ %arrayidx60, %if.then71 ], !dbg !747
  %bit.0 = phi i8 [ %10, %for.body ], [ %14, %if.then71 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %bit.0, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %s.2, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %len.2, metadata !733, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.label(metadata !741), !dbg !782
  %13 = and i8 %overflowed.0174, 1, !dbg !783
  %tobool36.not = icmp eq i8 %13, 0, !dbg !783
  br i1 %tobool36.not, label %if.then37, label %if.end46, !dbg !785

if.then37:                                        ; preds = %redo
  %cmp38 = icmp sgt i64 %value.0168, -1, !dbg !786
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !789

if.then40:                                        ; preds = %if.then37
  %shl = shl nuw i64 %value.0168, 1, !dbg !799
  %conv41155 = zext i8 %bit.0 to i64, !dbg !801
  %sub42 = add nsw i64 %conv41155, -48, !dbg !802
  %or = or i64 %sub42, %shl, !dbg !803
  call void @llvm.dbg.value(metadata i64 %or, metadata !734, metadata !DIExpression()), !dbg !747
  br label %for.inc, !dbg !804

if.end44:                                         ; preds = %if.then37
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str) #12, !dbg !790
  call void @llvm.dbg.value(metadata i8 1, metadata !739, metadata !DIExpression()), !dbg !747
  %conv45 = uitofp i64 %value.0168 to double, !dbg !791
  call void @llvm.dbg.value(metadata double %conv45, metadata !735, metadata !DIExpression()), !dbg !747
  br label %if.end46, !dbg !792

if.end46:                                         ; preds = %if.end44, %redo
  %value_nv.1 = phi double [ %value_nv.0171, %redo ], [ %conv45, %if.end44 ], !dbg !747
  %overflowed.1 = phi i8 [ %overflowed.0174, %redo ], [ 1, %if.end44 ], !dbg !747
  call void @llvm.dbg.value(metadata i8 %overflowed.1, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %value_nv.1, metadata !735, metadata !DIExpression()), !dbg !747
  %mul = fmul double %value_nv.1, 2.000000e+00, !dbg !793
  call void @llvm.dbg.value(metadata double %mul, metadata !735, metadata !DIExpression()), !dbg !747
  %conv47156 = zext i8 %bit.0 to i32, !dbg !794
  %sub48 = add nsw i32 %conv47156, -48, !dbg !795
  %conv49 = sitofp i32 %sub48 to double, !dbg !796
  %add = fadd double %mul, %conv49, !dbg !797
  call void @llvm.dbg.value(metadata double %add, metadata !735, metadata !DIExpression()), !dbg !747
  br label %for.inc, !dbg !798

if.end50:                                         ; preds = %for.body
  %cmp52 = icmp ne i8 %10, 95, !dbg !812
  %tobool55 = icmp eq i64 %dec25176, 0
  %or.cond109 = select i1 %cmp52, i1 true, i1 %tobool55, !dbg !814
  br i1 %or.cond109, label %if.end74, label %land.lhs.true59, !dbg !814

land.lhs.true59:                                  ; preds = %if.end50
  %arrayidx60 = getelementptr inbounds i8, ptr %s.1173, i64 1, !dbg !815
  %14 = load i8, ptr %arrayidx60, align 1, !dbg !815
  call void @llvm.dbg.value(metadata i8 %14, metadata !740, metadata !DIExpression()), !dbg !747
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 48
  br i1 %16, label %if.then71, label %if.end74, !dbg !816

if.then71:                                        ; preds = %land.lhs.true59
  %dec72 = add i64 %len.1167, -2, !dbg !817
  call void @llvm.dbg.value(metadata i64 %dec72, metadata !733, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %arrayidx60, metadata !732, metadata !DIExpression()), !dbg !747
  br label %redo, !dbg !819

if.end74:                                         ; preds = %land.lhs.true59, %if.end50, %for.body.us
  %.us-phi187 = phi i8 [ %6, %for.body.us ], [ 95, %land.lhs.true59 ], [ %10, %if.end50 ]
  %.us-phi188 = phi i64 [ %value.0168.us, %for.body.us ], [ %value.0168, %if.end50 ], [ %value.0168, %land.lhs.true59 ]
  %.us-phi189 = phi double [ %value_nv.0171.us, %for.body.us ], [ %value_nv.0171, %if.end50 ], [ %value_nv.0171, %land.lhs.true59 ]
  %.us-phi190 = phi ptr [ %s.1173.us, %for.body.us ], [ %s.1173, %if.end50 ], [ %s.1173, %land.lhs.true59 ]
  %.us-phi191 = phi i8 [ %overflowed.0174.us, %for.body.us ], [ %overflowed.0174, %if.end50 ], [ %overflowed.0174, %land.lhs.true59 ]
  %17 = load i32, ptr %flags, align 4, !dbg !820
  %and75 = and i32 %17, 4, !dbg !822
  %tobool76.not = icmp eq i32 %and75, 0, !dbg !822
  br i1 %tobool76.not, label %if.then77, label %for.end, !dbg !823

if.then77:                                        ; preds = %if.end74
  %conv78 = sext i8 %.us-phi187 to i32, !dbg !824
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.1, i32 noundef %conv78) #12, !dbg !825
  br label %for.end, !dbg !825

for.inc:                                          ; preds = %if.end46, %if.then40
  %value.1 = phi i64 [ %value.0168, %if.end46 ], [ %or, %if.then40 ], !dbg !747
  %value_nv.2 = phi double [ %add, %if.end46 ], [ %value_nv.0171, %if.then40 ], !dbg !747
  %overflowed.2 = phi i8 [ %overflowed.1, %if.end46 ], [ %overflowed.0174, %if.then40 ], !dbg !805
  call void @llvm.dbg.value(metadata i8 %overflowed.2, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %value_nv.2, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %value.1, metadata !734, metadata !DIExpression()), !dbg !747
  %incdec.ptr80 = getelementptr inbounds i8, ptr %s.2, i64 1, !dbg !806
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !732, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %len.2, metadata !733, metadata !DIExpression()), !dbg !747
  %dec25 = add i64 %len.2, -1, !dbg !774
  call void @llvm.dbg.value(metadata i64 %dec25, metadata !733, metadata !DIExpression()), !dbg !747
  %tobool26.not = icmp eq i64 %len.2, 0, !dbg !774
  br i1 %tobool26.not, label %for.end, label %land.rhs, !dbg !775, !llvm.loop !807

for.end:                                          ; preds = %land.rhs, %for.inc, %land.rhs.us, %for.inc.us, %if.end74, %if.then77
  %value.0164 = phi i64 [ %.us-phi188, %if.end74 ], [ %.us-phi188, %if.then77 ], [ %value.0168.us, %land.rhs.us ], [ %value.1.us, %for.inc.us ], [ %value.0168, %land.rhs ], [ %value.1, %for.inc ]
  %value_nv.0162 = phi double [ %.us-phi189, %if.end74 ], [ %.us-phi189, %if.then77 ], [ %value_nv.0171.us, %land.rhs.us ], [ %value_nv.2.us, %for.inc.us ], [ %value_nv.0171, %land.rhs ], [ %value_nv.2, %for.inc ]
  %s.1160 = phi ptr [ %.us-phi190, %if.end74 ], [ %.us-phi190, %if.then77 ], [ %s.1173.us, %land.rhs.us ], [ %uglygep, %for.inc.us ], [ %s.1173, %land.rhs ], [ %incdec.ptr80, %for.inc ]
  %overflowed.0158 = phi i8 [ %.us-phi191, %if.end74 ], [ %.us-phi191, %if.then77 ], [ %overflowed.0174.us, %land.rhs.us ], [ %overflowed.2.us, %for.inc.us ], [ %overflowed.0174, %land.rhs ], [ %overflowed.2, %for.inc ]
  %18 = and i8 %overflowed.0158, 1, !dbg !826
  %tobool81 = icmp ne i8 %18, 0, !dbg !826
  %cmp84 = fcmp ogt double %value_nv.0162, 0x41EFFFFFFFE00000
  %or.cond111 = select i1 %tobool81, i1 %cmp84, i1 false, !dbg !828
  br i1 %or.cond111, label %if.then94, label %lor.lhs.false86, !dbg !828

lor.lhs.false86:                                  ; preds = %for.end
  %tobool87.not = xor i1 %tobool81, true, !dbg !829
  %cmp89 = icmp ugt i64 %value.0164, 4294967295
  %or.cond112 = select i1 %tobool87.not, i1 %cmp89, i1 false, !dbg !829
  br i1 %or.cond112, label %land.lhs.true91, label %if.end95, !dbg !829

land.lhs.true91:                                  ; preds = %lor.lhs.false86
  %19 = load i32, ptr %flags, align 4, !dbg !830
  %and92 = and i32 %19, 8, !dbg !831
  %tobool93.not = icmp eq i32 %and92, 0, !dbg !831
  br i1 %tobool93.not, label %if.then94, label %if.end95, !dbg !832

if.then94:                                        ; preds = %for.end, %land.lhs.true91
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.2) #12, !dbg !833
  %sub.ptr.lhs.cast262 = ptrtoint ptr %s.1160 to i64, !dbg !776
  %sub.ptr.rhs.cast263 = ptrtoint ptr %start to i64, !dbg !776
  %sub.ptr.sub264 = sub i64 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263, !dbg !776
  store i64 %sub.ptr.sub264, ptr %len_p, align 8, !dbg !777
  br i1 %tobool81, label %if.end98, label %if.then97, !dbg !778

if.end95:                                         ; preds = %land.lhs.true91, %lor.lhs.false86
  %sub.ptr.lhs.cast = ptrtoint ptr %s.1160 to i64, !dbg !776
  %sub.ptr.rhs.cast = ptrtoint ptr %start to i64, !dbg !776
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !776
  store i64 %sub.ptr.sub, ptr %len_p, align 8, !dbg !777
  br i1 %tobool81, label %if.end98, label %if.then97, !dbg !778

if.then97:                                        ; preds = %if.then94, %if.end95.thread, %if.end95
  %value.0164235261 = phi i64 [ 0, %if.end95.thread ], [ %value.0164, %if.end95 ], [ %value.0164, %if.then94 ]
  store i32 0, ptr %flags, align 4, !dbg !835
  br label %cleanup, !dbg !838

if.end98:                                         ; preds = %if.then94, %if.end95
  store i32 2, ptr %flags, align 4, !dbg !839
  %tobool99.not = icmp eq ptr %result, null, !dbg !840
  br i1 %tobool99.not, label %cleanup, label %if.then100, !dbg !842

if.then100:                                       ; preds = %if.end98
  store double %value_nv.0162, ptr %result, align 8, !dbg !843
  br label %cleanup, !dbg !844

cleanup:                                          ; preds = %if.end98, %if.then100, %if.then97
  %retval.0 = phi i64 [ %value.0164235261, %if.then97 ], [ -1, %if.then100 ], [ -1, %if.end98 ], !dbg !747
  ret i64 %retval.0, !dbg !845
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !846 void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !851 void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_grok_hex(ptr noundef %start, ptr nocapture noundef %len_p, ptr nocapture noundef %flags, ptr noundef writeonly %result) local_unnamed_addr #2 !dbg !852 {
entry:
  call void @llvm.dbg.value(metadata ptr %start, metadata !854, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %len_p, metadata !855, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %flags, metadata !856, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %result, metadata !857, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %start, metadata !858, metadata !DIExpression()), !dbg !871
  %0 = load i64, ptr %len_p, align 8, !dbg !872
  call void @llvm.dbg.value(metadata i64 %0, metadata !859, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 0, metadata !860, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !861, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1152921504606846975, metadata !862, metadata !DIExpression()), !dbg !871
  %1 = load i32, ptr %flags, align 4, !dbg !873
  %and = and i32 %1, 1, !dbg !873
  %tobool.not = icmp eq i32 %and, 0, !dbg !873
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !863, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !871
  call void @llvm.dbg.value(metadata i8 0, metadata !864, metadata !DIExpression()), !dbg !871
  %and2 = and i32 %1, 2, !dbg !874
  %tobool3 = icmp eq i32 %and2, 0, !dbg !874
  %cmp = icmp ne i64 %0, 0
  %or.cond129 = select i1 %tobool3, i1 %cmp, i1 false, !dbg !876
  br i1 %or.cond129, label %if.then4, label %if.end24, !dbg !876

if.then4:                                         ; preds = %entry
  %2 = load i8, ptr %start, align 1, !dbg !877
  %3 = and i8 %2, -33, !dbg !877
  %cmp6 = icmp eq i8 %3, 88, !dbg !877
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !882

if.then8:                                         ; preds = %if.then4
  %incdec.ptr = getelementptr inbounds i8, ptr %start, i64 1, !dbg !883
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !858, metadata !DIExpression()), !dbg !871
  %dec = add i64 %0, -1, !dbg !885
  call void @llvm.dbg.value(metadata i64 %dec, metadata !859, metadata !DIExpression()), !dbg !871
  br label %if.end24, !dbg !886

if.else:                                          ; preds = %if.then4
  %cmp9 = icmp ugt i64 %0, 1, !dbg !887
  br i1 %cmp9, label %land.lhs.true, label %land.rhs.preheader, !dbg !889

land.lhs.true:                                    ; preds = %if.else
  %cmp13 = icmp eq i8 %2, 48, !dbg !890
  br i1 %cmp13, label %land.lhs.true15, label %land.rhs.preheader, !dbg !891

land.lhs.true15:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds i8, ptr %start, i64 1, !dbg !892
  %4 = load i8, ptr %arrayidx16, align 1, !dbg !892
  %5 = and i8 %4, -33, !dbg !892
  %cmp19 = icmp eq i8 %5, 88, !dbg !892
  br i1 %cmp19, label %if.then21, label %land.rhs.preheader, !dbg !893

if.then21:                                        ; preds = %land.lhs.true15
  %add.ptr = getelementptr inbounds i8, ptr %start, i64 2, !dbg !894
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !858, metadata !DIExpression()), !dbg !871
  %sub = add i64 %0, -2, !dbg !896
  call void @llvm.dbg.value(metadata i64 %sub, metadata !859, metadata !DIExpression()), !dbg !871
  br label %if.end24, !dbg !897

if.end24:                                         ; preds = %if.then21, %if.then8, %entry
  %len.0 = phi i64 [ %dec, %if.then8 ], [ %sub, %if.then21 ], [ %0, %entry ], !dbg !871
  %s.0 = phi ptr [ %incdec.ptr, %if.then8 ], [ %add.ptr, %if.then21 ], [ %start, %entry ], !dbg !871
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !858, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i8 0, metadata !864, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !861, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 0, metadata !860, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !859, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !871
  %tobool26.not182 = icmp eq i64 %len.0, 0, !dbg !898
  br i1 %tobool26.not182, label %if.end114.thread, label %land.rhs.preheader, !dbg !899

land.rhs.preheader:                               ; preds = %if.else, %land.lhs.true, %land.lhs.true15, %if.end24
  %s.1189.ph = phi ptr [ %s.0, %if.end24 ], [ %start, %land.lhs.true15 ], [ %start, %land.lhs.true ], [ %start, %if.else ]
  %len.1183.ph = phi i64 [ %len.0, %if.end24 ], [ %0, %land.lhs.true15 ], [ %0, %land.lhs.true ], [ 1, %if.else ]
  br label %land.rhs, !dbg !900

if.end114.thread:                                 ; preds = %if.end24
  %sub.ptr.lhs.cast246 = ptrtoint ptr %s.0 to i64, !dbg !901
  %sub.ptr.rhs.cast247 = ptrtoint ptr %start to i64, !dbg !901
  %sub.ptr.sub248 = sub i64 %sub.ptr.lhs.cast246, %sub.ptr.rhs.cast247, !dbg !901
  store i64 %sub.ptr.sub248, ptr %len_p, align 8, !dbg !902
  br label %if.then116, !dbg !903

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %overflowed.0190 = phi i8 [ %overflowed.2, %for.inc ], [ 0, %land.rhs.preheader ]
  %s.1189 = phi ptr [ %incdec.ptr100, %for.inc ], [ %s.1189.ph, %land.rhs.preheader ]
  %value_nv.0187 = phi double [ %value_nv.2, %for.inc ], [ 0.000000e+00, %land.rhs.preheader ]
  %value.0184 = phi i64 [ %value.1, %for.inc ], [ 0, %land.rhs.preheader ]
  %len.1183 = phi i64 [ %len.2, %for.inc ], [ %len.1183.ph, %land.rhs.preheader ]
  %dec25192 = add i64 %len.1183, -1, !dbg !898
  call void @llvm.dbg.value(metadata i8 %overflowed.0190, metadata !864, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %s.1189, metadata !858, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata double %value_nv.0187, metadata !861, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %value.0184, metadata !860, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %len.1183, metadata !859, metadata !DIExpression()), !dbg !871
  %6 = load i8, ptr %s.1189, align 1, !dbg !904
  %tobool28.not = icmp eq i8 %6, 0, !dbg !899
  br i1 %tobool28.not, label %for.end, label %for.body, !dbg !900

for.body:                                         ; preds = %land.rhs
  %idxprom = zext i8 %6 to i64, !dbg !905
  %arrayidx29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !905
  %7 = load i32, ptr %arrayidx29, align 4, !dbg !905
  %and30 = and i32 %7, 4096, !dbg !905
  %tobool31.not = icmp eq i32 %and30, 0, !dbg !905
  br i1 %tobool31.not, label %if.end70, label %redo, !dbg !906

redo:                                             ; preds = %for.body, %if.then91
  %8 = phi i32 [ %7, %for.body ], [ %14, %if.then91 ]
  %9 = phi i8 [ %6, %for.body ], [ %13, %if.then91 ]
  %len.2 = phi i64 [ %dec25192, %for.body ], [ %dec92, %if.then91 ], !dbg !907
  %s.2 = phi ptr [ %s.1189, %for.body ], [ %arrayidx80, %if.then91 ], !dbg !871
  call void @llvm.dbg.value(metadata ptr %s.2, metadata !858, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %len.2, metadata !859, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.label(metadata !865), !dbg !908
  %10 = and i8 %overflowed.0190, 1, !dbg !909
  %tobool33.not = icmp eq i8 %10, 0, !dbg !909
  br i1 %tobool33.not, label %if.then34, label %if.end53, !dbg !911

if.then34:                                        ; preds = %redo
  %cmp35 = icmp ult i64 %value.0184, 1152921504606846976, !dbg !912
  br i1 %cmp35, label %if.then37, label %if.end51, !dbg !915

if.then37:                                        ; preds = %if.then34
  %shl = shl nuw i64 %value.0184, 4, !dbg !916
  %and40 = and i32 %8, 2, !dbg !918
  %tobool41.not = icmp eq i32 %and40, 0, !dbg !918
  %conv47208 = zext i8 %9 to i64, !dbg !918
  %add = add nuw nsw i64 %conv47208, 9
  %spec.select = select i1 %tobool41.not, i64 %add, i64 %conv47208, !dbg !918
  %and49 = and i64 %spec.select, 15, !dbg !918
  %or = or i64 %and49, %shl, !dbg !919
  call void @llvm.dbg.value(metadata i64 %or, metadata !860, metadata !DIExpression()), !dbg !871
  br label %for.inc, !dbg !920

if.end51:                                         ; preds = %if.then34
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.3) #12, !dbg !921
  call void @llvm.dbg.value(metadata i8 1, metadata !864, metadata !DIExpression()), !dbg !871
  %conv52 = uitofp i64 %value.0184 to double, !dbg !922
  call void @llvm.dbg.value(metadata double %conv52, metadata !861, metadata !DIExpression()), !dbg !871
  %.pre = load i8, ptr %s.2, align 1, !dbg !923
  %idxprom54.phi.trans.insert = zext i8 %.pre to i64
  %arrayidx55.phi.trans.insert = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom54.phi.trans.insert
  %.pre205 = load i32, ptr %arrayidx55.phi.trans.insert, align 4, !dbg !923
  br label %if.end53, !dbg !924

if.end53:                                         ; preds = %redo, %if.end51
  %11 = phi i32 [ %.pre205, %if.end51 ], [ %8, %redo ], !dbg !923
  %12 = phi i8 [ %.pre, %if.end51 ], [ %9, %redo ], !dbg !923
  %value_nv.1 = phi double [ %conv52, %if.end51 ], [ %value_nv.0187, %redo ], !dbg !871
  %overflowed.1 = phi i8 [ 1, %if.end51 ], [ %overflowed.0190, %redo ], !dbg !871
  call void @llvm.dbg.value(metadata i8 %overflowed.1, metadata !864, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata double %value_nv.1, metadata !861, metadata !DIExpression()), !dbg !871
  %mul = fmul double %value_nv.1, 1.600000e+01, !dbg !925
  call void @llvm.dbg.value(metadata double %mul, metadata !861, metadata !DIExpression()), !dbg !871
  %and56 = and i32 %11, 2, !dbg !923
  %tobool57.not = icmp eq i32 %and56, 0, !dbg !923
  %conv63210 = zext i8 %12 to i32, !dbg !923
  %add64 = add nuw nsw i32 %conv63210, 9
  %spec.select259 = select i1 %tobool57.not, i32 %add64, i32 %conv63210, !dbg !923
  %and67 = and i32 %spec.select259, 15, !dbg !923
  %conv68 = sitofp i32 %and67 to double, !dbg !926
  %add69 = fadd double %mul, %conv68, !dbg !927
  call void @llvm.dbg.value(metadata double %add69, metadata !861, metadata !DIExpression()), !dbg !871
  br label %for.inc, !dbg !928

if.end70:                                         ; preds = %for.body
  %cmp72 = icmp ne i8 %6, 95, !dbg !929
  %tobool75 = icmp eq i64 %dec25192, 0
  %or.cond = select i1 %cmp72, i1 true, i1 %tobool75, !dbg !931
  %brmerge = select i1 %or.cond, i1 true, i1 %tobool.not, !dbg !931
  br i1 %brmerge, label %if.end94, label %land.lhs.true79, !dbg !931

land.lhs.true79:                                  ; preds = %if.end70
  %arrayidx80 = getelementptr inbounds i8, ptr %s.1189, i64 1, !dbg !932
  %13 = load i8, ptr %arrayidx80, align 1, !dbg !932
  %tobool82.not = icmp eq i8 %13, 0, !dbg !932
  br i1 %tobool82.not, label %if.end94, label %land.lhs.true83, !dbg !933

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %idxprom85 = zext i8 %13 to i64, !dbg !934
  %arrayidx86 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom85, !dbg !934
  %14 = load i32, ptr %arrayidx86, align 4, !dbg !934
  %and87 = and i32 %14, 4096, !dbg !934
  %tobool88.not = icmp eq i32 %and87, 0, !dbg !934
  br i1 %tobool88.not, label %if.end94, label %if.then91, !dbg !935

if.then91:                                        ; preds = %land.lhs.true83
  %dec92 = add i64 %len.1183, -2, !dbg !936
  call void @llvm.dbg.value(metadata i64 %dec92, metadata !859, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %arrayidx80, metadata !858, metadata !DIExpression()), !dbg !871
  br label %redo, !dbg !938

if.end94:                                         ; preds = %if.end70, %land.lhs.true83, %land.lhs.true79
  %15 = load i32, ptr %flags, align 4, !dbg !939
  %and95 = and i32 %15, 4, !dbg !941
  %tobool96.not = icmp eq i32 %and95, 0, !dbg !941
  br i1 %tobool96.not, label %if.then97, label %for.end, !dbg !942

if.then97:                                        ; preds = %if.end94
  %conv98 = sext i8 %6 to i32, !dbg !943
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.4, i32 noundef %conv98) #12, !dbg !944
  br label %for.end, !dbg !944

for.inc:                                          ; preds = %if.end53, %if.then37
  %value.1 = phi i64 [ %value.0184, %if.end53 ], [ %or, %if.then37 ], !dbg !871
  %value_nv.2 = phi double [ %add69, %if.end53 ], [ %value_nv.0187, %if.then37 ], !dbg !871
  %overflowed.2 = phi i8 [ %overflowed.1, %if.end53 ], [ %overflowed.0190, %if.then37 ], !dbg !945
  call void @llvm.dbg.value(metadata i8 %overflowed.2, metadata !864, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata double %value_nv.2, metadata !861, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %value.1, metadata !860, metadata !DIExpression()), !dbg !871
  %incdec.ptr100 = getelementptr inbounds i8, ptr %s.2, i64 1, !dbg !946
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !858, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %len.2, metadata !859, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !871
  %tobool26.not = icmp eq i64 %len.2, 0, !dbg !898
  br i1 %tobool26.not, label %for.end, label %land.rhs, !dbg !899, !llvm.loop !947

for.end:                                          ; preds = %land.rhs, %for.inc, %if.end94, %if.then97
  %value.0180 = phi i64 [ %value.0184, %if.end94 ], [ %value.0184, %if.then97 ], [ %value.0184, %land.rhs ], [ %value.1, %for.inc ]
  %value_nv.0178 = phi double [ %value_nv.0187, %if.end94 ], [ %value_nv.0187, %if.then97 ], [ %value_nv.0187, %land.rhs ], [ %value_nv.2, %for.inc ]
  %s.1176 = phi ptr [ %s.1189, %if.end94 ], [ %s.1189, %if.then97 ], [ %s.1189, %land.rhs ], [ %incdec.ptr100, %for.inc ]
  %overflowed.0174 = phi i8 [ %overflowed.0190, %if.end94 ], [ %overflowed.0190, %if.then97 ], [ %overflowed.0190, %land.rhs ], [ %overflowed.2, %for.inc ]
  %16 = and i8 %overflowed.0174, 1, !dbg !949
  %tobool101 = icmp ne i8 %16, 0, !dbg !949
  %cmp104 = fcmp ogt double %value_nv.0178, 0x41EFFFFFFFE00000
  %or.cond127 = select i1 %tobool101, i1 %cmp104, i1 false, !dbg !951
  br i1 %or.cond127, label %if.then113, label %lor.lhs.false, !dbg !951

lor.lhs.false:                                    ; preds = %for.end
  %tobool106.not = xor i1 %tobool101, true, !dbg !952
  %cmp108 = icmp ugt i64 %value.0180, 4294967295
  %or.cond128 = select i1 %tobool106.not, i1 %cmp108, i1 false, !dbg !952
  br i1 %or.cond128, label %land.lhs.true110, label %if.end114, !dbg !952

land.lhs.true110:                                 ; preds = %lor.lhs.false
  %17 = load i32, ptr %flags, align 4, !dbg !953
  %and111 = and i32 %17, 8, !dbg !954
  %tobool112.not = icmp eq i32 %and111, 0, !dbg !954
  br i1 %tobool112.not, label %if.then113, label %if.end114, !dbg !955

if.then113:                                       ; preds = %for.end, %land.lhs.true110
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.5) #12, !dbg !956
  %sub.ptr.lhs.cast250 = ptrtoint ptr %s.1176 to i64, !dbg !901
  %sub.ptr.rhs.cast251 = ptrtoint ptr %start to i64, !dbg !901
  %sub.ptr.sub252 = sub i64 %sub.ptr.lhs.cast250, %sub.ptr.rhs.cast251, !dbg !901
  store i64 %sub.ptr.sub252, ptr %len_p, align 8, !dbg !902
  br i1 %tobool101, label %if.end117, label %if.then116, !dbg !903

if.end114:                                        ; preds = %land.lhs.true110, %lor.lhs.false
  %sub.ptr.lhs.cast = ptrtoint ptr %s.1176 to i64, !dbg !901
  %sub.ptr.rhs.cast = ptrtoint ptr %start to i64, !dbg !901
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !901
  store i64 %sub.ptr.sub, ptr %len_p, align 8, !dbg !902
  br i1 %tobool101, label %if.end117, label %if.then116, !dbg !903

if.then116:                                       ; preds = %if.then113, %if.end114.thread, %if.end114
  %value.0180223249 = phi i64 [ 0, %if.end114.thread ], [ %value.0180, %if.end114 ], [ %value.0180, %if.then113 ]
  store i32 0, ptr %flags, align 4, !dbg !958
  br label %cleanup, !dbg !961

if.end117:                                        ; preds = %if.then113, %if.end114
  store i32 2, ptr %flags, align 4, !dbg !962
  %tobool118.not = icmp eq ptr %result, null, !dbg !963
  br i1 %tobool118.not, label %cleanup, label %if.then119, !dbg !965

if.then119:                                       ; preds = %if.end117
  store double %value_nv.0178, ptr %result, align 8, !dbg !966
  br label %cleanup, !dbg !967

cleanup:                                          ; preds = %if.end117, %if.then119, %if.then116
  %retval.0 = phi i64 [ %value.0180223249, %if.then116 ], [ -1, %if.then119 ], [ -1, %if.end117 ], !dbg !871
  ret i64 %retval.0, !dbg !968
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_grok_oct(ptr noundef %start, ptr nocapture noundef %len_p, ptr nocapture noundef %flags, ptr noundef writeonly %result) local_unnamed_addr #2 !dbg !969 {
entry:
  call void @llvm.dbg.value(metadata ptr %start, metadata !971, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %len_p, metadata !972, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %flags, metadata !973, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %result, metadata !974, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %start, metadata !975, metadata !DIExpression()), !dbg !988
  %0 = load i64, ptr %len_p, align 8, !dbg !989
  call void @llvm.dbg.value(metadata i64 %0, metadata !976, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !977, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !978, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 2305843009213693951, metadata !979, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i1 undef, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !988
  call void @llvm.dbg.value(metadata i8 0, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %start, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !978, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !977, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %0, metadata !976, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %0, metadata !976, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !988
  %tobool2.not121 = icmp eq i64 %0, 0, !dbg !990
  br i1 %tobool2.not121, label %if.end64.thread, label %land.rhs.lr.ph, !dbg !991

if.end64.thread:                                  ; preds = %entry
  store i64 0, ptr %len_p, align 8, !dbg !992
  br label %if.then66, !dbg !993

land.rhs.lr.ph:                                   ; preds = %entry
  %dec120 = add i64 %0, -1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %dec120, metadata !976, metadata !DIExpression()), !dbg !988
  %1 = load i32, ptr %flags, align 4, !dbg !994
  %and = and i32 %1, 1, !dbg !994
  %tobool.not = icmp eq i32 %and, 0, !dbg !994
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !988
  br i1 %tobool.not, label %land.rhs.us.preheader, label %land.rhs

land.rhs.us.preheader:                            ; preds = %land.rhs.lr.ph
  %uglygep = getelementptr i8, ptr %start, i64 %0, !dbg !995
  br label %land.rhs.us, !dbg !995

land.rhs.us:                                      ; preds = %land.rhs.us.preheader, %for.inc.us
  %dec131.us = phi i64 [ %dec.us, %for.inc.us ], [ %dec120, %land.rhs.us.preheader ]
  %overflowed.0129.us = phi i8 [ %overflowed.2.us, %for.inc.us ], [ 0, %land.rhs.us.preheader ]
  %s.0128.us = phi ptr [ %incdec.ptr50.us, %for.inc.us ], [ %start, %land.rhs.us.preheader ]
  %value_nv.0126.us = phi double [ %value_nv.2.us, %for.inc.us ], [ 0.000000e+00, %land.rhs.us.preheader ]
  %value.0123.us = phi i64 [ %value.1.us, %for.inc.us ], [ 0, %land.rhs.us.preheader ]
  call void @llvm.dbg.value(metadata i8 %overflowed.0129.us, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %s.0128.us, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double %value_nv.0126.us, metadata !978, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %value.0123.us, metadata !977, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 undef, metadata !976, metadata !DIExpression()), !dbg !988
  %2 = load i8, ptr %s.0128.us, align 1, !dbg !996
  %tobool3.not.us = icmp eq i8 %2, 0, !dbg !991
  br i1 %tobool3.not.us, label %for.end, label %for.body.us, !dbg !995

for.body.us:                                      ; preds = %land.rhs.us
  %3 = and i8 %2, -8, !dbg !997
  %cmp.us = icmp eq i8 %3, 48, !dbg !997
  br i1 %cmp.us, label %redo.us, label %if.end37, !dbg !998

redo.us:                                          ; preds = %for.body.us
  call void @llvm.dbg.value(metadata ptr undef, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 undef, metadata !976, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.label(metadata !982), !dbg !999
  %4 = and i8 %overflowed.0129.us, 1, !dbg !1000
  %tobool7.not.us = icmp eq i8 %4, 0, !dbg !1000
  br i1 %tobool7.not.us, label %if.then8.us, label %if.end16.us, !dbg !1002

if.then8.us:                                      ; preds = %redo.us
  %cmp9.us = icmp ult i64 %value.0123.us, 2305843009213693952, !dbg !1003
  br i1 %cmp9.us, label %if.then11.us, label %if.end.us, !dbg !1006

if.end.us:                                        ; preds = %if.then8.us
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.6) #12, !dbg !1007
  call void @llvm.dbg.value(metadata i8 1, metadata !981, metadata !DIExpression()), !dbg !988
  %conv15.us = uitofp i64 %value.0123.us to double, !dbg !1008
  call void @llvm.dbg.value(metadata double %conv15.us, metadata !978, metadata !DIExpression()), !dbg !988
  %.pre178 = load i8, ptr %s.0128.us, align 1, !dbg !1009
  br label %if.end16.us, !dbg !1010

if.end16.us:                                      ; preds = %if.end.us, %redo.us
  %5 = phi i8 [ %2, %redo.us ], [ %.pre178, %if.end.us ], !dbg !1009
  %value_nv.1.us = phi double [ %value_nv.0126.us, %redo.us ], [ %conv15.us, %if.end.us ], !dbg !988
  %overflowed.1.us = phi i8 [ %overflowed.0129.us, %redo.us ], [ 1, %if.end.us ], !dbg !988
  call void @llvm.dbg.value(metadata i8 %overflowed.1.us, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double %value_nv.1.us, metadata !978, metadata !DIExpression()), !dbg !988
  %mul.us = fmul double %value_nv.1.us, 8.000000e+00, !dbg !1011
  call void @llvm.dbg.value(metadata double %mul.us, metadata !978, metadata !DIExpression()), !dbg !988
  %6 = and i8 %5, 7, !dbg !1009
  %conv19.us = uitofp i8 %6 to double, !dbg !1012
  %add.us = fadd double %mul.us, %conv19.us, !dbg !1013
  call void @llvm.dbg.value(metadata double %add.us, metadata !978, metadata !DIExpression()), !dbg !988
  br label %for.inc.us, !dbg !1014

if.then11.us:                                     ; preds = %if.then8.us
  %shl.us = shl nuw i64 %value.0123.us, 3, !dbg !1015
  %7 = and i8 %2, 7, !dbg !1017
  %8 = zext i8 %7 to i64
  %or.us = or i64 %shl.us, %8, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %or.us, metadata !977, metadata !DIExpression()), !dbg !988
  br label %for.inc.us, !dbg !1019

for.inc.us:                                       ; preds = %if.then11.us, %if.end16.us
  %value.1.us = phi i64 [ %value.0123.us, %if.end16.us ], [ %or.us, %if.then11.us ], !dbg !988
  %value_nv.2.us = phi double [ %add.us, %if.end16.us ], [ %value_nv.0126.us, %if.then11.us ], !dbg !988
  %overflowed.2.us = phi i8 [ %overflowed.1.us, %if.end16.us ], [ %overflowed.0129.us, %if.then11.us ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %overflowed.2.us, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double %value_nv.2.us, metadata !978, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %value.1.us, metadata !977, metadata !DIExpression()), !dbg !988
  %incdec.ptr50.us = getelementptr inbounds i8, ptr %s.0128.us, i64 1, !dbg !1021
  call void @llvm.dbg.value(metadata ptr %incdec.ptr50.us, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 undef, metadata !976, metadata !DIExpression()), !dbg !988
  %dec.us = add i64 %dec131.us, -1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %dec.us, metadata !976, metadata !DIExpression()), !dbg !988
  %tobool2.not.us = icmp eq i64 %dec131.us, 0, !dbg !990
  br i1 %tobool2.not.us, label %for.end, label %land.rhs.us, !dbg !991, !llvm.loop !1022

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %dec131 = phi i64 [ %dec, %for.inc ], [ %dec120, %land.rhs.lr.ph ]
  %overflowed.0129 = phi i8 [ %overflowed.2, %for.inc ], [ 0, %land.rhs.lr.ph ]
  %s.0128 = phi ptr [ %incdec.ptr50, %for.inc ], [ %start, %land.rhs.lr.ph ]
  %value_nv.0126 = phi double [ %value_nv.2, %for.inc ], [ 0.000000e+00, %land.rhs.lr.ph ]
  %value.0123 = phi i64 [ %value.1, %for.inc ], [ 0, %land.rhs.lr.ph ]
  %len.0122 = phi i64 [ %len.1, %for.inc ], [ %0, %land.rhs.lr.ph ]
  call void @llvm.dbg.value(metadata i8 %overflowed.0129, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %s.0128, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double %value_nv.0126, metadata !978, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %value.0123, metadata !977, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %len.0122, metadata !976, metadata !DIExpression()), !dbg !988
  %9 = load i8, ptr %s.0128, align 1, !dbg !996
  %tobool3.not = icmp eq i8 %9, 0, !dbg !991
  br i1 %tobool3.not, label %for.end, label %for.body, !dbg !995

for.body:                                         ; preds = %land.rhs
  %10 = and i8 %9, -8, !dbg !997
  %cmp = icmp eq i8 %10, 48, !dbg !997
  br i1 %cmp, label %redo, label %if.end20, !dbg !998

redo:                                             ; preds = %for.body, %if.then35
  %11 = phi i8 [ %9, %for.body ], [ %17, %if.then35 ]
  %len.1 = phi i64 [ %dec131, %for.body ], [ %dec36, %if.then35 ], !dbg !1024
  %s.1 = phi ptr [ %s.0128, %for.body ], [ %arrayidx, %if.then35 ], !dbg !988
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !976, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.label(metadata !982), !dbg !999
  %12 = and i8 %overflowed.0129, 1, !dbg !1000
  %tobool7.not = icmp eq i8 %12, 0, !dbg !1000
  br i1 %tobool7.not, label %if.then8, label %if.end16, !dbg !1002

if.then8:                                         ; preds = %redo
  %cmp9 = icmp ult i64 %value.0123, 2305843009213693952, !dbg !1003
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !1006

if.then11:                                        ; preds = %if.then8
  %shl = shl nuw i64 %value.0123, 3, !dbg !1015
  %13 = and i8 %11, 7, !dbg !1017
  %14 = zext i8 %13 to i64
  %or = or i64 %shl, %14, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %or, metadata !977, metadata !DIExpression()), !dbg !988
  br label %for.inc, !dbg !1019

if.end:                                           ; preds = %if.then8
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.6) #12, !dbg !1007
  call void @llvm.dbg.value(metadata i8 1, metadata !981, metadata !DIExpression()), !dbg !988
  %conv15 = uitofp i64 %value.0123 to double, !dbg !1008
  call void @llvm.dbg.value(metadata double %conv15, metadata !978, metadata !DIExpression()), !dbg !988
  %.pre = load i8, ptr %s.1, align 1, !dbg !1009
  br label %if.end16, !dbg !1010

if.end16:                                         ; preds = %if.end, %redo
  %15 = phi i8 [ %11, %redo ], [ %.pre, %if.end ], !dbg !1009
  %value_nv.1 = phi double [ %value_nv.0126, %redo ], [ %conv15, %if.end ], !dbg !988
  %overflowed.1 = phi i8 [ %overflowed.0129, %redo ], [ 1, %if.end ], !dbg !988
  call void @llvm.dbg.value(metadata i8 %overflowed.1, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double %value_nv.1, metadata !978, metadata !DIExpression()), !dbg !988
  %mul = fmul double %value_nv.1, 8.000000e+00, !dbg !1011
  call void @llvm.dbg.value(metadata double %mul, metadata !978, metadata !DIExpression()), !dbg !988
  %16 = and i8 %15, 7, !dbg !1009
  %conv19 = uitofp i8 %16 to double, !dbg !1012
  %add = fadd double %mul, %conv19, !dbg !1013
  call void @llvm.dbg.value(metadata double %add, metadata !978, metadata !DIExpression()), !dbg !988
  br label %for.inc, !dbg !1014

if.end20:                                         ; preds = %for.body
  %cmp22 = icmp ne i8 %9, 95, !dbg !1025
  %tobool24 = icmp eq i64 %dec131, 0
  %or.cond = select i1 %cmp22, i1 true, i1 %tobool24, !dbg !1027
  br i1 %or.cond, label %if.end37, label %land.lhs.true28, !dbg !1027

land.lhs.true28:                                  ; preds = %if.end20
  %arrayidx = getelementptr inbounds i8, ptr %s.0128, i64 1, !dbg !1028
  %17 = load i8, ptr %arrayidx, align 1, !dbg !1028
  %18 = and i8 %17, -8, !dbg !1028
  %cmp31 = icmp eq i8 %18, 48, !dbg !1028
  br i1 %cmp31, label %if.then35, label %if.end37, !dbg !1029

if.then35:                                        ; preds = %land.lhs.true28
  %dec36 = add i64 %len.0122, -2, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %dec36, metadata !976, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !975, metadata !DIExpression()), !dbg !988
  br label %redo, !dbg !1032

if.end37:                                         ; preds = %land.lhs.true28, %if.end20, %for.body.us
  %.us-phi142 = phi i8 [ %2, %for.body.us ], [ 95, %land.lhs.true28 ], [ %9, %if.end20 ]
  %.us-phi143 = phi i64 [ %value.0123.us, %for.body.us ], [ %value.0123, %if.end20 ], [ %value.0123, %land.lhs.true28 ]
  %.us-phi144 = phi double [ %value_nv.0126.us, %for.body.us ], [ %value_nv.0126, %if.end20 ], [ %value_nv.0126, %land.lhs.true28 ]
  %.us-phi145 = phi ptr [ %s.0128.us, %for.body.us ], [ %s.0128, %if.end20 ], [ %s.0128, %land.lhs.true28 ]
  %.us-phi146 = phi i8 [ %overflowed.0129.us, %for.body.us ], [ %overflowed.0129, %if.end20 ], [ %overflowed.0129, %land.lhs.true28 ]
  %idxprom = zext i8 %.us-phi142 to i64, !dbg !1033
  %arrayidx38 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1033
  %19 = load i32, ptr %arrayidx38, align 4, !dbg !1033
  %and39 = and i32 %19, 2, !dbg !1033
  %tobool40.not = icmp eq i32 %and39, 0, !dbg !1033
  br i1 %tobool40.not, label %for.end, label %if.then43, !dbg !1035

if.then43:                                        ; preds = %if.end37
  %20 = load i32, ptr %flags, align 4, !dbg !1036
  %and44 = and i32 %20, 4, !dbg !1039
  %tobool45.not = icmp eq i32 %and44, 0, !dbg !1039
  br i1 %tobool45.not, label %if.then46, label %for.end, !dbg !1040

if.then46:                                        ; preds = %if.then43
  %conv47 = sext i8 %.us-phi142 to i32, !dbg !1041
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef %conv47) #12, !dbg !1042
  br label %for.end, !dbg !1042

for.inc:                                          ; preds = %if.end16, %if.then11
  %value.1 = phi i64 [ %value.0123, %if.end16 ], [ %or, %if.then11 ], !dbg !988
  %value_nv.2 = phi double [ %add, %if.end16 ], [ %value_nv.0126, %if.then11 ], !dbg !988
  %overflowed.2 = phi i8 [ %overflowed.1, %if.end16 ], [ %overflowed.0129, %if.then11 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %overflowed.2, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata double %value_nv.2, metadata !978, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %value.1, metadata !977, metadata !DIExpression()), !dbg !988
  %incdec.ptr50 = getelementptr inbounds i8, ptr %s.1, i64 1, !dbg !1021
  call void @llvm.dbg.value(metadata ptr %incdec.ptr50, metadata !975, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !976, metadata !DIExpression()), !dbg !988
  %dec = add i64 %len.1, -1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %dec, metadata !976, metadata !DIExpression()), !dbg !988
  %tobool2.not = icmp eq i64 %len.1, 0, !dbg !990
  br i1 %tobool2.not, label %for.end, label %land.rhs, !dbg !991, !llvm.loop !1022

for.end:                                          ; preds = %land.rhs, %for.inc, %land.rhs.us, %for.inc.us, %if.end37, %if.then46, %if.then43
  %value.0119 = phi i64 [ %.us-phi143, %if.end37 ], [ %.us-phi143, %if.then46 ], [ %.us-phi143, %if.then43 ], [ %value.0123.us, %land.rhs.us ], [ %value.1.us, %for.inc.us ], [ %value.0123, %land.rhs ], [ %value.1, %for.inc ]
  %value_nv.0117 = phi double [ %.us-phi144, %if.end37 ], [ %.us-phi144, %if.then46 ], [ %.us-phi144, %if.then43 ], [ %value_nv.0126.us, %land.rhs.us ], [ %value_nv.2.us, %for.inc.us ], [ %value_nv.0126, %land.rhs ], [ %value_nv.2, %for.inc ]
  %s.0115 = phi ptr [ %.us-phi145, %if.end37 ], [ %.us-phi145, %if.then46 ], [ %.us-phi145, %if.then43 ], [ %s.0128.us, %land.rhs.us ], [ %uglygep, %for.inc.us ], [ %s.0128, %land.rhs ], [ %incdec.ptr50, %for.inc ]
  %overflowed.0113 = phi i8 [ %.us-phi146, %if.end37 ], [ %.us-phi146, %if.then46 ], [ %.us-phi146, %if.then43 ], [ %overflowed.0129.us, %land.rhs.us ], [ %overflowed.2.us, %for.inc.us ], [ %overflowed.0129, %land.rhs ], [ %overflowed.2, %for.inc ]
  %21 = and i8 %overflowed.0113, 1, !dbg !1043
  %tobool51 = icmp ne i8 %21, 0, !dbg !1043
  %cmp54 = fcmp ogt double %value_nv.0117, 0x41EFFFFFFFE00000
  %or.cond77 = select i1 %tobool51, i1 %cmp54, i1 false, !dbg !1045
  br i1 %or.cond77, label %if.then63, label %lor.lhs.false, !dbg !1045

lor.lhs.false:                                    ; preds = %for.end
  %tobool56.not = xor i1 %tobool51, true, !dbg !1046
  %cmp58 = icmp ugt i64 %value.0119, 4294967295
  %or.cond78 = select i1 %tobool56.not, i1 %cmp58, i1 false, !dbg !1046
  br i1 %or.cond78, label %land.lhs.true60, label %if.end64, !dbg !1046

land.lhs.true60:                                  ; preds = %lor.lhs.false
  %22 = load i32, ptr %flags, align 4, !dbg !1047
  %and61 = and i32 %22, 8, !dbg !1048
  %tobool62.not = icmp eq i32 %and61, 0, !dbg !1048
  br i1 %tobool62.not, label %if.then63, label %if.end64, !dbg !1049

if.then63:                                        ; preds = %for.end, %land.lhs.true60
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.8) #12, !dbg !1050
  %sub.ptr.lhs.cast213 = ptrtoint ptr %s.0115 to i64, !dbg !1052
  %sub.ptr.rhs.cast214 = ptrtoint ptr %start to i64, !dbg !1052
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214, !dbg !1052
  store i64 %sub.ptr.sub215, ptr %len_p, align 8, !dbg !992
  br i1 %tobool51, label %if.end67, label %if.then66, !dbg !993

if.end64:                                         ; preds = %land.lhs.true60, %lor.lhs.false
  %sub.ptr.lhs.cast = ptrtoint ptr %s.0115 to i64, !dbg !1052
  %sub.ptr.rhs.cast = ptrtoint ptr %start to i64, !dbg !1052
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1052
  store i64 %sub.ptr.sub, ptr %len_p, align 8, !dbg !992
  br i1 %tobool51, label %if.end67, label %if.then66, !dbg !993

if.then66:                                        ; preds = %if.then63, %if.end64.thread, %if.end64
  %value.0119186212 = phi i64 [ 0, %if.end64.thread ], [ %value.0119, %if.end64 ], [ %value.0119, %if.then63 ]
  store i32 0, ptr %flags, align 4, !dbg !1053
  br label %cleanup, !dbg !1056

if.end67:                                         ; preds = %if.then63, %if.end64
  store i32 2, ptr %flags, align 4, !dbg !1057
  %tobool68.not = icmp eq ptr %result, null, !dbg !1058
  br i1 %tobool68.not, label %cleanup, label %if.then69, !dbg !1060

if.then69:                                        ; preds = %if.end67
  store double %value_nv.0117, ptr %result, align 8, !dbg !1061
  br label %cleanup, !dbg !1062

cleanup:                                          ; preds = %if.end67, %if.then69, %if.then66
  %retval.0 = phi i64 [ %value.0119186212, %if.then66 ], [ -1, %if.then69 ], [ -1, %if.end67 ], !dbg !988
  ret i64 %retval.0, !dbg !1063
}

; Function Attrs: nounwind uwtable
define dso_local double @Perl_scan_bin(ptr noundef %start, i64 noundef %len, ptr nocapture noundef %retlen) local_unnamed_addr #2 !dbg !1064 {
entry:
  %len.addr = alloca i64, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %start, metadata !1068, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %len, metadata !1069, metadata !DIExpression()), !dbg !1074
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.value(metadata ptr %retlen, metadata !1070, metadata !DIExpression()), !dbg !1074
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rnv) #12, !dbg !1075
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #12, !dbg !1076
  %0 = load i64, ptr %retlen, align 8, !dbg !1077
  %tobool.not = icmp ne i64 %0, 0, !dbg !1077
  %cond = zext i1 %tobool.not to i32, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1072, metadata !DIExpression()), !dbg !1074
  store i32 %cond, ptr %flags, align 4, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %len.addr, metadata !1069, metadata !DIExpression(DW_OP_deref)), !dbg !1074
  call void @llvm.dbg.value(metadata ptr %rnv, metadata !1071, metadata !DIExpression(DW_OP_deref)), !dbg !1074
  call void @llvm.dbg.value(metadata ptr %flags, metadata !1072, metadata !DIExpression(DW_OP_deref)), !dbg !1074
  %call = call i64 @Perl_grok_bin(ptr noundef %start, ptr noundef nonnull %len.addr, ptr noundef nonnull %flags, ptr noundef nonnull %rnv), !dbg !1079
  call void @llvm.dbg.value(metadata i64 %call, metadata !1073, metadata !DIExpression()), !dbg !1074
  %1 = load i64, ptr %len.addr, align 8, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %1, metadata !1069, metadata !DIExpression()), !dbg !1074
  store i64 %1, ptr %retlen, align 8, !dbg !1081
  %2 = load i32, ptr %flags, align 4, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %2, metadata !1072, metadata !DIExpression()), !dbg !1074
  %and = and i32 %2, 2, !dbg !1083
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1083
  br i1 %tobool1.not, label %cond.false, label %cond.true, !dbg !1084

cond.true:                                        ; preds = %entry
  %3 = load double, ptr %rnv, align 8, !dbg !1085
  call void @llvm.dbg.value(metadata double %3, metadata !1071, metadata !DIExpression()), !dbg !1074
  br label %cond.end, !dbg !1084

cond.false:                                       ; preds = %entry
  %conv = uitofp i64 %call to double, !dbg !1086
  br label %cond.end, !dbg !1084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %3, %cond.true ], [ %conv, %cond.false ], !dbg !1084
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #12, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rnv) #12, !dbg !1087
  ret double %cond2, !dbg !1088
}

; Function Attrs: nounwind uwtable
define dso_local double @Perl_scan_oct(ptr noundef %start, i64 noundef %len, ptr nocapture noundef %retlen) local_unnamed_addr #2 !dbg !1089 {
entry:
  %len.addr = alloca i64, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %start, metadata !1091, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %len, metadata !1092, metadata !DIExpression()), !dbg !1097
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.value(metadata ptr %retlen, metadata !1093, metadata !DIExpression()), !dbg !1097
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rnv) #12, !dbg !1098
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #12, !dbg !1099
  %0 = load i64, ptr %retlen, align 8, !dbg !1100
  %tobool.not = icmp ne i64 %0, 0, !dbg !1100
  %cond = zext i1 %tobool.not to i32, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1095, metadata !DIExpression()), !dbg !1097
  store i32 %cond, ptr %flags, align 4, !dbg !1101
  call void @llvm.dbg.value(metadata ptr %len.addr, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1097
  call void @llvm.dbg.value(metadata ptr %rnv, metadata !1094, metadata !DIExpression(DW_OP_deref)), !dbg !1097
  call void @llvm.dbg.value(metadata ptr %flags, metadata !1095, metadata !DIExpression(DW_OP_deref)), !dbg !1097
  %call = call i64 @Perl_grok_oct(ptr noundef %start, ptr noundef nonnull %len.addr, ptr noundef nonnull %flags, ptr noundef nonnull %rnv), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %call, metadata !1096, metadata !DIExpression()), !dbg !1097
  %1 = load i64, ptr %len.addr, align 8, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %1, metadata !1092, metadata !DIExpression()), !dbg !1097
  store i64 %1, ptr %retlen, align 8, !dbg !1104
  %2 = load i32, ptr %flags, align 4, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %2, metadata !1095, metadata !DIExpression()), !dbg !1097
  %and = and i32 %2, 2, !dbg !1106
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1106
  br i1 %tobool1.not, label %cond.false, label %cond.true, !dbg !1107

cond.true:                                        ; preds = %entry
  %3 = load double, ptr %rnv, align 8, !dbg !1108
  call void @llvm.dbg.value(metadata double %3, metadata !1094, metadata !DIExpression()), !dbg !1097
  br label %cond.end, !dbg !1107

cond.false:                                       ; preds = %entry
  %conv = uitofp i64 %call to double, !dbg !1109
  br label %cond.end, !dbg !1107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %3, %cond.true ], [ %conv, %cond.false ], !dbg !1107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #12, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rnv) #12, !dbg !1110
  ret double %cond2, !dbg !1111
}

; Function Attrs: nounwind uwtable
define dso_local double @Perl_scan_hex(ptr noundef %start, i64 noundef %len, ptr nocapture noundef %retlen) local_unnamed_addr #2 !dbg !1112 {
entry:
  %len.addr = alloca i64, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %start, metadata !1114, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %len, metadata !1115, metadata !DIExpression()), !dbg !1120
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.value(metadata ptr %retlen, metadata !1116, metadata !DIExpression()), !dbg !1120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rnv) #12, !dbg !1121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #12, !dbg !1122
  %0 = load i64, ptr %retlen, align 8, !dbg !1123
  %tobool.not = icmp ne i64 %0, 0, !dbg !1123
  %cond = zext i1 %tobool.not to i32, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1118, metadata !DIExpression()), !dbg !1120
  store i32 %cond, ptr %flags, align 4, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %len.addr, metadata !1115, metadata !DIExpression(DW_OP_deref)), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %rnv, metadata !1117, metadata !DIExpression(DW_OP_deref)), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %flags, metadata !1118, metadata !DIExpression(DW_OP_deref)), !dbg !1120
  %call = call i64 @Perl_grok_hex(ptr noundef %start, ptr noundef nonnull %len.addr, ptr noundef nonnull %flags, ptr noundef nonnull %rnv), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %call, metadata !1119, metadata !DIExpression()), !dbg !1120
  %1 = load i64, ptr %len.addr, align 8, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %1, metadata !1115, metadata !DIExpression()), !dbg !1120
  store i64 %1, ptr %retlen, align 8, !dbg !1127
  %2 = load i32, ptr %flags, align 4, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %2, metadata !1118, metadata !DIExpression()), !dbg !1120
  %and = and i32 %2, 2, !dbg !1129
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1129
  br i1 %tobool1.not, label %cond.false, label %cond.true, !dbg !1130

cond.true:                                        ; preds = %entry
  %3 = load double, ptr %rnv, align 8, !dbg !1131
  call void @llvm.dbg.value(metadata double %3, metadata !1117, metadata !DIExpression()), !dbg !1120
  br label %cond.end, !dbg !1130

cond.false:                                       ; preds = %entry
  %conv = uitofp i64 %call to double, !dbg !1132
  br label %cond.end, !dbg !1130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %3, %cond.true ], [ %conv, %cond.false ], !dbg !1130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #12, !dbg !1133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rnv) #12, !dbg !1133
  ret double %cond2, !dbg !1134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local zeroext i1 @Perl_grok_numeric_radix(ptr nocapture noundef %sp, ptr noundef readnone %send) local_unnamed_addr #5 !dbg !1135 {
entry:
  call void @llvm.dbg.value(metadata ptr %sp, metadata !1140, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr %send, metadata !1141, metadata !DIExpression()), !dbg !1142
  %0 = load ptr, ptr %sp, align 8, !dbg !1143
  %cmp = icmp ult ptr %0, %send, !dbg !1145
  br i1 %cmp, label %land.lhs.true, label %return, !dbg !1146

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %0, align 1, !dbg !1147
  %cmp1 = icmp eq i8 %1, 46, !dbg !1148
  br i1 %cmp1, label %if.then, label %return, !dbg !1149

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1150
  store ptr %incdec.ptr, ptr %sp, align 8, !dbg !1150
  br label %return, !dbg !1152

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true ], [ false, %entry ], !dbg !1142
  ret i1 %retval.0, !dbg !1153
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_grok_infnan(ptr nocapture noundef %sp, ptr noundef %send) local_unnamed_addr #2 !dbg !1154 {
entry:
  %send621 = ptrtoint ptr %send to i64
  %nanval = alloca i64, align 8
  %len = alloca i64, align 8
  %flags283 = alloca i32, align 4
  %len316 = alloca i64, align 8
  %flags320 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %sp, metadata !1158, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %send, metadata !1159, metadata !DIExpression()), !dbg !1190
  %0 = load ptr, ptr %sp, align 8, !dbg !1191
  call void @llvm.dbg.value(metadata ptr %0, metadata !1160, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 0, metadata !1161, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1162, metadata !DIExpression()), !dbg !1190
  %1 = load i8, ptr %0, align 1, !dbg !1192
  switch i8 %1, label %if.end15 [
    i8 43, label %if.then
    i8 45, label %if.then8
  ], !dbg !1194

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp2 = icmp eq ptr %incdec.ptr, %send, !dbg !1197
  br i1 %cmp2, label %cleanup407, label %if.end15thread-pre-split, !dbg !1199

if.then8:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i32 8, metadata !1161, metadata !DIExpression()), !dbg !1190
  %incdec.ptr9 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp10 = icmp eq ptr %incdec.ptr9, %send, !dbg !1203
  br i1 %cmp10, label %cleanup407, label %if.end15thread-pre-split, !dbg !1205

if.end15thread-pre-split:                         ; preds = %if.then, %if.then8
  %s.0.ph = phi ptr [ %incdec.ptr9, %if.then8 ], [ %incdec.ptr, %if.then ]
  %flags.0.ph = phi i32 [ 8, %if.then8 ], [ 0, %if.then ]
  %.pr = load i8, ptr %s.0.ph, align 1, !dbg !1206
  br label %if.end15, !dbg !1206

if.end15:                                         ; preds = %if.end15thread-pre-split, %entry
  %2 = phi i8 [ %.pr, %if.end15thread-pre-split ], [ %1, %entry ], !dbg !1206
  %s.0 = phi ptr [ %s.0.ph, %if.end15thread-pre-split ], [ %0, %entry ], !dbg !1190
  %flags.0 = phi i32 [ %flags.0.ph, %if.end15thread-pre-split ], [ 0, %entry ], !dbg !1190
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !1161, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp17 = icmp eq i8 %2, 49, !dbg !1208
  br i1 %cmp17, label %if.then19, label %if.end46, !dbg !1209

if.then19:                                        ; preds = %if.end15
  %incdec.ptr20 = getelementptr inbounds i8, ptr %s.0, i64 1, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %incdec.ptr20, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp21 = icmp eq ptr %incdec.ptr20, %send, !dbg !1212
  br i1 %cmp21, label %cleanup407, label %if.end24, !dbg !1214

if.end24:                                         ; preds = %if.then19
  %3 = load i8, ptr %incdec.ptr20, align 1, !dbg !1215
  %cmp26 = icmp eq i8 %3, 46, !dbg !1217
  br i1 %cmp26, label %if.then28, label %if.end34, !dbg !1218

if.then28:                                        ; preds = %if.end24
  %incdec.ptr29 = getelementptr inbounds i8, ptr %s.0, i64 2, !dbg !1219
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp30 = icmp eq ptr %incdec.ptr29, %send, !dbg !1221
  br i1 %cmp30, label %cleanup407, label %if.then28.if.end34_crit_edge, !dbg !1223

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  %.pre = load i8, ptr %incdec.ptr29, align 1, !dbg !1224
  br label %if.end34, !dbg !1223

if.end34:                                         ; preds = %if.then28.if.end34_crit_edge, %if.end24
  %4 = phi i8 [ %.pre, %if.then28.if.end34_crit_edge ], [ %3, %if.end24 ], !dbg !1224
  %5 = phi i64 [ 2, %if.then28.if.end34_crit_edge ], [ 1, %if.end24 ], !dbg !1226
  %6 = getelementptr inbounds i8, ptr %s.0, i64 %5, !dbg !1219
  call void @llvm.dbg.value(metadata ptr undef, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp36 = icmp ne i8 %4, 35, !dbg !1227
  %incdec.ptr39 = getelementptr inbounds i8, ptr %6, i64 1
  %cmp40 = icmp eq ptr %incdec.ptr39, %send
  %or.cond573 = select i1 %cmp36, i1 true, i1 %cmp40, !dbg !1228
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39, metadata !1160, metadata !DIExpression()), !dbg !1190
  br i1 %or.cond573, label %cleanup407, label %if.end34.if.end46_crit_edge, !dbg !1228

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  %.pre630 = load i8, ptr %incdec.ptr39, align 1, !dbg !1229
  br label %if.end46, !dbg !1228

if.end46:                                         ; preds = %if.end34.if.end46_crit_edge, %if.end15
  %7 = phi i8 [ %2, %if.end15 ], [ %.pre630, %if.end34.if.end46_crit_edge ], !dbg !1229
  %s.2 = phi ptr [ %s.0, %if.end15 ], [ %incdec.ptr39, %if.end34.if.end46_crit_edge ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 undef, metadata !1162, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %s.2, metadata !1160, metadata !DIExpression()), !dbg !1190
  %8 = and i8 %7, -33, !dbg !1229
  switch i8 %8, label %if.end189 [
    i8 73, label %if.then50
    i8 83, label %if.then183
    i8 81, label %if.then183
  ], !dbg !1230

if.then50:                                        ; preds = %if.end46
  %incdec.ptr51 = getelementptr inbounds i8, ptr %s.2, i64 1, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %incdec.ptr51, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp52 = icmp eq ptr %incdec.ptr51, %send, !dbg !1232
  br i1 %cmp52, label %cleanup407, label %lor.lhs.false, !dbg !1234

lor.lhs.false:                                    ; preds = %if.then50
  %9 = load i8, ptr %incdec.ptr51, align 1, !dbg !1235
  %10 = and i8 %9, -33, !dbg !1235
  %cmp56 = icmp eq i8 %10, 78, !dbg !1235
  br i1 %cmp56, label %if.end59, label %cleanup407, !dbg !1236

if.end59:                                         ; preds = %lor.lhs.false
  %incdec.ptr60 = getelementptr inbounds i8, ptr %s.2, i64 2, !dbg !1237
  call void @llvm.dbg.value(metadata ptr %incdec.ptr60, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp61 = icmp eq ptr %incdec.ptr60, %send, !dbg !1238
  br i1 %cmp61, label %cleanup407, label %if.end64, !dbg !1240

if.end64:                                         ; preds = %if.end59
  %11 = load i8, ptr %incdec.ptr60, align 1, !dbg !1241
  %12 = and i8 %11, -33, !dbg !1241
  switch i8 %12, label %cleanup407 [
    i8 70, label %if.then69
    i8 68, label %land.lhs.true153
  ], !dbg !1242

if.then69:                                        ; preds = %if.end64
  %incdec.ptr70 = getelementptr inbounds i8, ptr %s.2, i64 3, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr70, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp71 = icmp ult ptr %incdec.ptr70, %send, !dbg !1244
  br i1 %cmp71, label %land.lhs.true, label %if.else122, !dbg !1245

land.lhs.true:                                    ; preds = %if.then69
  %13 = load i8, ptr %incdec.ptr70, align 1, !dbg !1246
  %14 = and i8 %13, -33, !dbg !1246
  %cmp75 = icmp eq i8 %14, 73, !dbg !1246
  br i1 %cmp75, label %if.then77, label %if.else122, !dbg !1247

if.then77:                                        ; preds = %land.lhs.true
  %or80 = or i32 %flags.0, 84, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %or80, metadata !1163, metadata !DIExpression()), !dbg !1249
  %incdec.ptr81 = getelementptr inbounds i8, ptr %s.2, i64 4, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %incdec.ptr81, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp82 = icmp eq ptr %incdec.ptr81, %send, !dbg !1251
  br i1 %cmp82, label %cleanup407, label %lor.lhs.false84, !dbg !1253

lor.lhs.false84:                                  ; preds = %if.then77
  %15 = load i8, ptr %incdec.ptr81, align 1, !dbg !1254
  %16 = and i8 %15, -33, !dbg !1254
  %cmp87 = icmp eq i8 %16, 78, !dbg !1254
  br i1 %cmp87, label %if.end90, label %cleanup407, !dbg !1255

if.end90:                                         ; preds = %lor.lhs.false84
  %incdec.ptr91 = getelementptr inbounds i8, ptr %s.2, i64 5, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr91, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp92 = icmp eq ptr %incdec.ptr91, %send, !dbg !1257
  br i1 %cmp92, label %cleanup407, label %lor.lhs.false94, !dbg !1259

lor.lhs.false94:                                  ; preds = %if.end90
  %17 = load i8, ptr %incdec.ptr91, align 1, !dbg !1260
  %18 = and i8 %17, -33, !dbg !1260
  %cmp97 = icmp eq i8 %18, 73, !dbg !1260
  br i1 %cmp97, label %if.end100, label %cleanup407, !dbg !1261

if.end100:                                        ; preds = %lor.lhs.false94
  %incdec.ptr101 = getelementptr inbounds i8, ptr %s.2, i64 6, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %incdec.ptr101, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp102 = icmp eq ptr %incdec.ptr101, %send, !dbg !1263
  br i1 %cmp102, label %cleanup407, label %lor.lhs.false104, !dbg !1265

lor.lhs.false104:                                 ; preds = %if.end100
  %19 = load i8, ptr %incdec.ptr101, align 1, !dbg !1266
  %20 = and i8 %19, -33, !dbg !1266
  %cmp107 = icmp eq i8 %20, 84, !dbg !1266
  br i1 %cmp107, label %if.end110, label %cleanup407, !dbg !1267

if.end110:                                        ; preds = %lor.lhs.false104
  %incdec.ptr111 = getelementptr inbounds i8, ptr %s.2, i64 7, !dbg !1268
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp112 = icmp eq ptr %incdec.ptr111, %send, !dbg !1269
  br i1 %cmp112, label %cleanup407, label %cleanup, !dbg !1271

cleanup:                                          ; preds = %if.end110
  %21 = load i8, ptr %incdec.ptr111, align 1, !dbg !1272
  %22 = and i8 %21, -33, !dbg !1272
  %cmp117 = icmp eq i8 %22, 89, !dbg !1272
  %incdec.ptr121 = getelementptr inbounds i8, ptr %s.2, i64 8
  call void @llvm.dbg.value(metadata ptr undef, metadata !1160, metadata !DIExpression()), !dbg !1190
  br i1 %cmp117, label %if.end129, label %cleanup407

if.else122:                                       ; preds = %land.lhs.true, %if.then69
  br i1 %cmp17, label %while.cond, label %if.end129, !dbg !1273

while.cond:                                       ; preds = %if.else122, %while.cond
  %s.4 = phi ptr [ %incdec.ptr127, %while.cond ], [ %incdec.ptr70, %if.else122 ], !dbg !1274
  call void @llvm.dbg.value(metadata ptr %s.4, metadata !1160, metadata !DIExpression()), !dbg !1190
  %23 = load i8, ptr %s.4, align 1, !dbg !1275
  %cmp125 = icmp eq i8 %23, 48, !dbg !1278
  %incdec.ptr127 = getelementptr inbounds i8, ptr %s.4, i64 1, !dbg !1279
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127, metadata !1160, metadata !DIExpression()), !dbg !1190
  br i1 %cmp125, label %while.cond, label %if.end129, !dbg !1281, !llvm.loop !1282

if.end129:                                        ; preds = %while.cond, %if.else122, %cleanup
  %s.5 = phi ptr [ %incdec.ptr121, %cleanup ], [ %incdec.ptr70, %if.else122 ], [ %s.4, %while.cond ], !dbg !1274
  call void @llvm.dbg.value(metadata ptr %s.5, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp131592 = icmp ult ptr %s.5, %send, !dbg !1284
  br i1 %cmp131592, label %land.rhs.preheader, label %if.end146, !dbg !1285

land.rhs.preheader:                               ; preds = %if.end129
  %s.5622 = ptrtoint ptr %s.5 to i64, !dbg !1190
  %24 = sub i64 %send621, %s.5622, !dbg !1286
  %uglygep = getelementptr i8, ptr %s.5, i64 %24, !dbg !1286
  br label %land.rhs, !dbg !1286

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body136
  %s.6593 = phi ptr [ %incdec.ptr137, %while.body136 ], [ %s.5, %land.rhs.preheader ]
  call void @llvm.dbg.value(metadata ptr %s.6593, metadata !1160, metadata !DIExpression()), !dbg !1190
  %25 = load i8, ptr %s.6593, align 1, !dbg !1287
  %idxprom = zext i8 %25 to i64, !dbg !1287
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1287
  %26 = load i32, ptr %arrayidx, align 4, !dbg !1287
  %and133 = and i32 %26, 17408, !dbg !1287
  %cmp134 = icmp eq i32 %and133, 17408, !dbg !1287
  br i1 %cmp134, label %while.body136, label %land.lhs.true141, !dbg !1286

while.body136:                                    ; preds = %land.rhs
  %incdec.ptr137 = getelementptr inbounds i8, ptr %s.6593, i64 1, !dbg !1288
  call void @llvm.dbg.value(metadata ptr %incdec.ptr137, metadata !1160, metadata !DIExpression()), !dbg !1190
  %exitcond.not = icmp eq ptr %incdec.ptr137, %uglygep, !dbg !1284
  br i1 %exitcond.not, label %if.end146, label %land.rhs, !dbg !1285, !llvm.loop !1289

land.lhs.true141:                                 ; preds = %land.rhs
  %tobool143.not = icmp eq i8 %25, 0, !dbg !1290
  %or145 = or i32 %flags.0, 64
  %spec.select = select i1 %tobool143.not, i32 %flags.0, i32 %or145, !dbg !1292
  br label %if.end146, !dbg !1292

if.end146:                                        ; preds = %while.body136, %if.end129, %land.lhs.true141
  %s.6589 = phi ptr [ %s.6593, %land.lhs.true141 ], [ %s.5, %if.end129 ], [ %uglygep, %while.body136 ]
  %flags.1 = phi i32 [ %spec.select, %land.lhs.true141 ], [ %flags.0, %if.end129 ], [ %flags.0, %while.body136 ], !dbg !1190
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !1161, metadata !DIExpression()), !dbg !1190
  %or147 = or i32 %flags.1, 20, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %or147, metadata !1161, metadata !DIExpression()), !dbg !1190
  br label %if.end393, !dbg !1294

land.lhs.true153:                                 ; preds = %if.end64
  br i1 %cmp17, label %if.then156, label %cleanup407, !dbg !1295

if.then156:                                       ; preds = %land.lhs.true153
  %incdec.ptr157 = getelementptr inbounds i8, ptr %s.2, i64 3, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %incdec.ptr157, metadata !1160, metadata !DIExpression()), !dbg !1190
  %or158 = or i32 %flags.0, 36, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %or158, metadata !1161, metadata !DIExpression()), !dbg !1190
  br label %while.cond159, !dbg !1300

while.cond159:                                    ; preds = %while.body163, %if.then156
  %s.7 = phi ptr [ %incdec.ptr157, %if.then156 ], [ %incdec.ptr164, %while.body163 ], !dbg !1301
  call void @llvm.dbg.value(metadata ptr %s.7, metadata !1160, metadata !DIExpression()), !dbg !1190
  %27 = load i8, ptr %s.7, align 1, !dbg !1302
  switch i8 %27, label %if.then167 [
    i8 48, label %while.body163
    i8 0, label %if.end393
  ], !dbg !1300

while.body163:                                    ; preds = %while.cond159
  %incdec.ptr164 = getelementptr inbounds i8, ptr %s.7, i64 1, !dbg !1303
  call void @llvm.dbg.value(metadata ptr %incdec.ptr164, metadata !1160, metadata !DIExpression()), !dbg !1190
  br label %while.cond159, !dbg !1300, !llvm.loop !1305

if.then167:                                       ; preds = %while.cond159
  %or168 = or i32 %flags.0, 100, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %or168, metadata !1161, metadata !DIExpression()), !dbg !1190
  br label %if.end393, !dbg !1310

if.then183:                                       ; preds = %if.end46, %if.end46
  %incdec.ptr184 = getelementptr inbounds i8, ptr %s.2, i64 1, !dbg !1311
  call void @llvm.dbg.value(metadata ptr %incdec.ptr184, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp185 = icmp eq ptr %incdec.ptr184, %send, !dbg !1314
  br i1 %cmp185, label %cleanup407, label %if.then183.if.end189_crit_edge, !dbg !1316

if.then183.if.end189_crit_edge:                   ; preds = %if.then183
  %.pre631 = load i8, ptr %incdec.ptr184, align 1, !dbg !1317
  br label %if.end189, !dbg !1316

if.end189:                                        ; preds = %if.then183.if.end189_crit_edge, %if.end46
  %28 = phi i8 [ %.pre631, %if.then183.if.end189_crit_edge ], [ %7, %if.end46 ], !dbg !1317
  %s.8 = phi ptr [ %incdec.ptr184, %if.then183.if.end189_crit_edge ], [ %s.2, %if.end46 ], !dbg !1190
  call void @llvm.dbg.value(metadata ptr %s.8, metadata !1160, metadata !DIExpression()), !dbg !1190
  %29 = and i8 %28, -33, !dbg !1317
  %cmp192 = icmp eq i8 %29, 78, !dbg !1317
  br i1 %cmp192, label %if.then194, label %cleanup407, !dbg !1318

if.then194:                                       ; preds = %if.end189
  %incdec.ptr195 = getelementptr inbounds i8, ptr %s.8, i64 1, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %incdec.ptr195, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp196 = icmp eq ptr %incdec.ptr195, %send, !dbg !1320
  br i1 %cmp196, label %cleanup407, label %lor.lhs.false198, !dbg !1322

lor.lhs.false198:                                 ; preds = %if.then194
  %30 = load i8, ptr %incdec.ptr195, align 1, !dbg !1323
  %31 = and i8 %30, -33, !dbg !1323
  %cmp201 = icmp eq i8 %31, 65, !dbg !1323
  br i1 %cmp201, label %if.end204, label %cleanup407, !dbg !1324

if.end204:                                        ; preds = %lor.lhs.false198
  %incdec.ptr205 = getelementptr inbounds i8, ptr %s.8, i64 2, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %incdec.ptr205, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp206 = icmp eq ptr %incdec.ptr205, %send, !dbg !1326
  br i1 %cmp206, label %cleanup407, label %lor.lhs.false208, !dbg !1328

lor.lhs.false208:                                 ; preds = %if.end204
  %32 = load i8, ptr %incdec.ptr205, align 1, !dbg !1329
  %33 = and i8 %32, -33, !dbg !1329
  %cmp211 = icmp eq i8 %33, 78, !dbg !1329
  br i1 %cmp211, label %if.end214, label %cleanup407, !dbg !1330

if.end214:                                        ; preds = %lor.lhs.false208
  %incdec.ptr215 = getelementptr inbounds i8, ptr %s.8, i64 3, !dbg !1331
  call void @llvm.dbg.value(metadata ptr %incdec.ptr215, metadata !1160, metadata !DIExpression()), !dbg !1190
  %or216 = or i32 %flags.0, 36, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %or216, metadata !1161, metadata !DIExpression()), !dbg !1190
  %34 = load i8, ptr %incdec.ptr215, align 1, !dbg !1333
  %35 = and i8 %34, -33, !dbg !1333
  switch i8 %35, label %if.end228 [
    i8 81, label %if.then226
    i8 83, label %if.then226
  ], !dbg !1335

if.then226:                                       ; preds = %if.end214, %if.end214
  %incdec.ptr227 = getelementptr inbounds i8, ptr %s.8, i64 4, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %incdec.ptr227, metadata !1160, metadata !DIExpression()), !dbg !1190
  %.pr578 = load i8, ptr %incdec.ptr227, align 1, !dbg !1338
  br label %if.end228, !dbg !1339

if.end228:                                        ; preds = %if.end214, %if.then226
  %36 = phi i8 [ %34, %if.end214 ], [ %.pr578, %if.then226 ], !dbg !1338
  %s.9 = phi ptr [ %incdec.ptr215, %if.end214 ], [ %incdec.ptr227, %if.then226 ], !dbg !1340
  %s.9623 = ptrtoint ptr %s.9 to i64, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %s.9, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp230 = icmp eq i8 %36, 40, !dbg !1341
  br i1 %cmp230, label %if.then232, label %while.cond369.preheader, !dbg !1342

while.cond369.preheader:                          ; preds = %if.end228
  call void @llvm.dbg.value(metadata ptr %s.9, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp370594 = icmp ult ptr %s.9, %send, !dbg !1343
  br i1 %cmp370594, label %land.rhs372.preheader, label %while.end406, !dbg !1345

land.rhs372.preheader:                            ; preds = %while.cond369.preheader
  %37 = sub i64 %send621, %s.9623, !dbg !1346
  %uglygep624 = getelementptr i8, ptr %s.9, i64 %37, !dbg !1346
  call void @llvm.dbg.value(metadata ptr %s.9, metadata !1160, metadata !DIExpression()), !dbg !1190
  %idxprom373652 = zext i8 %36 to i64, !dbg !1347
  %arrayidx374653 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom373652, !dbg !1347
  %38 = load i32, ptr %arrayidx374653, align 4, !dbg !1347
  %and375654 = and i32 %38, 17408, !dbg !1347
  %cmp376655 = icmp eq i32 %and375654, 17408, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %s.9, metadata !1160, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1190
  br i1 %cmp376655, label %while.cond369, label %land.lhs.true384, !dbg !1346

if.then232:                                       ; preds = %if.end228
  %incdec.ptr233 = getelementptr inbounds i8, ptr %s.9, i64 1, !dbg !1348
  call void @llvm.dbg.value(metadata ptr %incdec.ptr233, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp234 = icmp eq ptr %incdec.ptr233, %send, !dbg !1349
  br i1 %cmp234, label %if.then236, label %if.end238, !dbg !1351

if.then236:                                       ; preds = %if.then232
  %or237 = or i32 %flags.0, 100, !dbg !1352
  br label %cleanup407, !dbg !1354

if.end238:                                        ; preds = %if.then232
  %add.ptr.ptr = getelementptr inbounds i8, ptr %s.9, i64 2, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %add.ptr.ptr, metadata !1170, metadata !DIExpression()), !dbg !1355
  %cmp240597 = icmp ult ptr %add.ptr.ptr, %send, !dbg !1356
  br i1 %cmp240597, label %land.lhs.true242.preheader, label %while.end252, !dbg !1357

land.lhs.true242.preheader:                       ; preds = %if.end238
  %39 = sub i64 %send621, %s.9623, !dbg !1358
  br label %land.lhs.true242, !dbg !1358

land.lhs.true242:                                 ; preds = %land.lhs.true242.preheader, %while.body250
  %t.0.ptr599.idx = phi i64 [ %t.0.add, %while.body250 ], [ 2, %land.lhs.true242.preheader ]
  %t.0.ptr599.ptr = getelementptr inbounds i8, ptr %s.9, i64 %t.0.ptr599.idx, !dbg !1359
  %40 = load i8, ptr %t.0.ptr599.ptr, align 1, !dbg !1359
  switch i8 %40, label %while.body250 [
    i8 0, label %while.end252
    i8 41, label %while.end252
  ], !dbg !1360

while.body250:                                    ; preds = %land.lhs.true242
  %t.0.add = add nuw i64 %t.0.ptr599.idx, 1, !dbg !1361
  call void @llvm.dbg.value(metadata !DIArgList(ptr %s.9, i64 %t.0.add), metadata !1170, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1355
  %exitcond626.not = icmp eq i64 %t.0.add, %39, !dbg !1356
  br i1 %exitcond626.not, label %while.end252, label %land.lhs.true242, !dbg !1357, !llvm.loop !1363

while.end252:                                     ; preds = %while.body250, %land.lhs.true242, %land.lhs.true242, %if.end238
  %t.0.ptr.lcssa.idx = phi i64 [ 2, %if.end238 ], [ %t.0.ptr599.idx, %land.lhs.true242 ], [ %t.0.ptr599.idx, %land.lhs.true242 ], [ %39, %while.body250 ]
  %t.0.ptr.lcssa.ptr = getelementptr inbounds i8, ptr %s.9, i64 %t.0.ptr.lcssa.idx, !dbg !1365
  %cmp253 = icmp eq ptr %t.0.ptr.lcssa.ptr, %send, !dbg !1365
  br i1 %cmp253, label %if.then255, label %if.end257, !dbg !1367

if.then255:                                       ; preds = %while.end252
  %or256 = or i32 %flags.0, 100, !dbg !1368
  br label %cleanup407, !dbg !1370

if.end257:                                        ; preds = %while.end252
  %41 = load i8, ptr %t.0.ptr.lcssa.ptr, align 1, !dbg !1371
  %cmp259 = icmp eq i8 %41, 41, !dbg !1372
  br i1 %cmp259, label %if.then261, label %if.else362, !dbg !1373

if.then261:                                       ; preds = %if.end257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nanval) #12, !dbg !1374
  %42 = load i8, ptr %incdec.ptr233, align 1, !dbg !1375
  %cmp264 = icmp eq i8 %42, 48, !dbg !1376
  br i1 %cmp264, label %land.lhs.true266, label %for.body.preheader, !dbg !1377

land.lhs.true266:                                 ; preds = %if.then261
  %add.ptr267 = getelementptr inbounds i8, ptr %s.9, i64 3, !dbg !1378
  %cmp268 = icmp ugt i64 %t.0.ptr.lcssa.idx, 3, !dbg !1379
  br i1 %cmp268, label %land.lhs.true270, label %for.body.preheader, !dbg !1380

land.lhs.true270:                                 ; preds = %land.lhs.true266
  %43 = load i8, ptr %add.ptr.ptr, align 1, !dbg !1381
  %44 = and i8 %43, -33, !dbg !1381
  switch i8 %44, label %for.body.preheader [
    i8 88, label %land.lhs.true276
    i8 66, label %land.lhs.true305
  ], !dbg !1382

land.lhs.true276:                                 ; preds = %land.lhs.true270
  %45 = load i8, ptr %add.ptr267, align 1, !dbg !1383
  %idxprom278 = zext i8 %45 to i64, !dbg !1383
  %arrayidx279 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom278, !dbg !1383
  %46 = load i32, ptr %arrayidx279, align 4, !dbg !1383
  %and280 = and i32 %46, 4096, !dbg !1383
  %tobool281.not = icmp eq i32 %and280, 0, !dbg !1383
  br i1 %tobool281.not, label %for.body.preheader, label %if.then282, !dbg !1384

if.then282:                                       ; preds = %land.lhs.true276
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #12, !dbg !1385
  %gepdiff568 = add nsw i64 %t.0.ptr.lcssa.idx, -1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %gepdiff568, metadata !1180, metadata !DIExpression()), !dbg !1387
  store i64 %gepdiff568, ptr %len, align 8, !dbg !1388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags283) #12, !dbg !1389
  call void @llvm.dbg.value(metadata i32 1, metadata !1183, metadata !DIExpression()), !dbg !1387
  store i32 1, ptr %flags283, align 4, !dbg !1390
  call void @llvm.dbg.value(metadata ptr %len, metadata !1180, metadata !DIExpression(DW_OP_deref)), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %flags283, metadata !1183, metadata !DIExpression(DW_OP_deref)), !dbg !1387
  %call = call i64 @Perl_grok_hex(ptr noundef nonnull %incdec.ptr233, ptr noundef nonnull %len, ptr noundef nonnull %flags283, ptr noundef null), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %call, metadata !1179, metadata !DIExpression()), !dbg !1392
  %47 = load i32, ptr %flags283, align 4, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %47, metadata !1183, metadata !DIExpression()), !dbg !1387
  %and284 = lshr i32 %47, 1
  %and284.lobit = and i32 %and284, 1
  %48 = xor i32 %and284.lobit, 1
  call void @llvm.dbg.value(metadata i32 %48, metadata !1176, metadata !DIExpression()), !dbg !1392
  %49 = load i64, ptr %len, align 8, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %49, metadata !1180, metadata !DIExpression()), !dbg !1387
  %add.ptr289 = getelementptr inbounds i8, ptr %incdec.ptr233, i64 %49, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %add.ptr289, metadata !1160, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags283) #12, !dbg !1397
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #12, !dbg !1397
  br label %if.end346, !dbg !1398

land.lhs.true305:                                 ; preds = %land.lhs.true270
  %50 = load i8, ptr %add.ptr267, align 1, !dbg !1399
  %51 = and i8 %50, -2, !dbg !1400
  %switch = icmp eq i8 %51, 48, !dbg !1400
  br i1 %switch, label %if.then315, label %for.body.preheader, !dbg !1400

if.then315:                                       ; preds = %land.lhs.true305
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len316) #12, !dbg !1401
  %gepdiff = add nsw i64 %t.0.ptr.lcssa.idx, -1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %gepdiff, metadata !1184, metadata !DIExpression()), !dbg !1403
  store i64 %gepdiff, ptr %len316, align 8, !dbg !1404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags320) #12, !dbg !1405
  call void @llvm.dbg.value(metadata i32 1, metadata !1187, metadata !DIExpression()), !dbg !1403
  store i32 1, ptr %flags320, align 4, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %len316, metadata !1184, metadata !DIExpression(DW_OP_deref)), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %flags320, metadata !1187, metadata !DIExpression(DW_OP_deref)), !dbg !1403
  %call321 = call i64 @Perl_grok_bin(ptr noundef nonnull %incdec.ptr233, ptr noundef nonnull %len316, ptr noundef nonnull %flags320, ptr noundef null), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %call321, metadata !1179, metadata !DIExpression()), !dbg !1392
  %52 = load i32, ptr %flags320, align 4, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %52, metadata !1187, metadata !DIExpression()), !dbg !1403
  %and322 = lshr i32 %52, 1
  %and322.lobit = and i32 %and322, 1
  %53 = xor i32 %and322.lobit, 1
  call void @llvm.dbg.value(metadata i32 %53, metadata !1176, metadata !DIExpression()), !dbg !1392
  %54 = load i64, ptr %len316, align 8, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %54, metadata !1184, metadata !DIExpression()), !dbg !1403
  %add.ptr327 = getelementptr inbounds i8, ptr %incdec.ptr233, i64 %54, !dbg !1411
  call void @llvm.dbg.value(metadata ptr %add.ptr327, metadata !1160, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags320) #12, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len316) #12, !dbg !1412
  br label %if.end346, !dbg !1413

for.body.preheader:                               ; preds = %land.lhs.true270, %land.lhs.true276, %land.lhs.true305, %if.then261, %land.lhs.true266
  %gepdiff569 = add nsw i64 %t.0.ptr.lcssa.idx, -1, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %nanval, metadata !1179, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  %call332 = call i32 @Perl_grok_number_flags(ptr noundef nonnull %incdec.ptr233, i64 noundef %gepdiff569, ptr noundef nonnull %nanval, i32 noundef 17), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %call332, metadata !1176, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %incdec.ptr233, metadata !1188, metadata !DIExpression()), !dbg !1415
  br label %for.body, !dbg !1416

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %u.0608 = phi ptr [ %incdec.ptr344, %for.inc ], [ %incdec.ptr233, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %u.0608, metadata !1188, metadata !DIExpression()), !dbg !1415
  %55 = load i8, ptr %u.0608, align 1, !dbg !1418
  %idxprom335 = zext i8 %55 to i64, !dbg !1418
  %arrayidx336 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom335, !dbg !1418
  %56 = load i32, ptr %arrayidx336, align 4, !dbg !1418
  %and337 = and i32 %56, 2, !dbg !1418
  %tobool338.not = icmp eq i32 %and337, 0, !dbg !1418
  br i1 %tobool338.not, label %if.then341, label %for.inc, !dbg !1422

if.then341:                                       ; preds = %for.body
  %or342 = or i32 %flags.0, 100, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %or342, metadata !1161, metadata !DIExpression()), !dbg !1190
  br label %if.end346, !dbg !1425

for.inc:                                          ; preds = %for.body
  %incdec.ptr344 = getelementptr inbounds i8, ptr %u.0608, i64 1, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %incdec.ptr344, metadata !1188, metadata !DIExpression()), !dbg !1415
  %cmp333 = icmp ult ptr %incdec.ptr344, %t.0.ptr.lcssa.ptr, !dbg !1427
  br i1 %cmp333, label %for.body, label %if.end346, !dbg !1416, !llvm.loop !1428

if.end346:                                        ; preds = %for.inc, %if.then341, %if.then315, %if.then282
  %s.10 = phi ptr [ %add.ptr289, %if.then282 ], [ %add.ptr327, %if.then315 ], [ %u.0608, %if.then341 ], [ %incdec.ptr344, %for.inc ], !dbg !1430
  %flags.3 = phi i32 [ %or216, %if.then282 ], [ %or216, %if.then315 ], [ %or342, %if.then341 ], [ %or216, %for.inc ], !dbg !1340
  %nantype.2 = phi i32 [ %48, %if.then282 ], [ %53, %if.then315 ], [ %call332, %if.then341 ], [ %call332, %for.inc ], !dbg !1430
  call void @llvm.dbg.value(metadata i32 %nantype.2, metadata !1176, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %flags.3, metadata !1161, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %s.10, metadata !1160, metadata !DIExpression()), !dbg !1190
  %and347 = and i32 %nantype.2, 4, !dbg !1431
  %tobool348 = icmp eq i32 %and347, 0, !dbg !1431
  %tobool350 = icmp ne i32 %nantype.2, 0
  %or.cond = and i1 %tobool350, %tobool348, !dbg !1433
  br i1 %or.cond, label %cleanup358.thread, label %cleanup358, !dbg !1433

cleanup358.thread:                                ; preds = %if.end346
  %cmp353 = icmp ult ptr %s.10, %t.0.ptr.lcssa.ptr, !dbg !1434
  %or356 = or i32 %flags.3, 64
  %spec.select571 = select i1 %cmp353, i32 %or356, i32 %flags.3, !dbg !1436
  call void @llvm.dbg.value(metadata i32 undef, metadata !1161, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nanval) #12, !dbg !1437
  br label %while.end406

cleanup358:                                       ; preds = %if.end346
  call void @llvm.dbg.value(metadata i32 undef, metadata !1161, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nanval) #12, !dbg !1437
  br label %cleanup407

if.else362:                                       ; preds = %if.end257
  %or363 = or i32 %flags.0, 100, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %or363, metadata !1161, metadata !DIExpression()), !dbg !1190
  br label %while.end406

while.cond369:                                    ; preds = %land.rhs372.preheader, %while.cond369.land.rhs372_crit_edge
  %s.11595656 = phi ptr [ %incdec.ptr380, %while.cond369.land.rhs372_crit_edge ], [ %s.9, %land.rhs372.preheader ]
  call void @llvm.dbg.value(metadata ptr %s.11595656, metadata !1160, metadata !DIExpression()), !dbg !1190
  %incdec.ptr380 = getelementptr inbounds i8, ptr %s.11595656, i64 1, !dbg !1440
  call void @llvm.dbg.value(metadata ptr %s.11595656, metadata !1160, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1190
  %exitcond625.not = icmp eq ptr %incdec.ptr380, %uglygep624, !dbg !1343
  br i1 %exitcond625.not, label %while.end406, label %while.cond369.land.rhs372_crit_edge, !dbg !1345, !llvm.loop !1441

while.cond369.land.rhs372_crit_edge:              ; preds = %while.cond369
  %.pre632 = load i8, ptr %incdec.ptr380, align 1, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %incdec.ptr380, metadata !1160, metadata !DIExpression()), !dbg !1190
  %idxprom373 = zext i8 %.pre632 to i64, !dbg !1347
  %arrayidx374 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom373, !dbg !1347
  %57 = load i32, ptr %arrayidx374, align 4, !dbg !1347
  %and375 = and i32 %57, 17408, !dbg !1347
  %cmp376 = icmp eq i32 %and375, 17408, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %incdec.ptr380, metadata !1160, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1190
  br i1 %cmp376, label %while.cond369, label %land.lhs.true384, !dbg !1346

land.lhs.true384:                                 ; preds = %while.cond369.land.rhs372_crit_edge, %land.rhs372.preheader
  %.lcssa = phi i8 [ %36, %land.rhs372.preheader ], [ %.pre632, %while.cond369.land.rhs372_crit_edge ], !dbg !1347
  %tobool386.not = icmp eq i8 %.lcssa, 0, !dbg !1442
  %or388 = or i32 %flags.0, 100
  %spec.select572 = select i1 %tobool386.not, i32 %or216, i32 %or388, !dbg !1444
  br label %while.end406, !dbg !1444

if.end393:                                        ; preds = %while.cond159, %if.end146, %if.then167
  %s.12 = phi ptr [ %s.6589, %if.end146 ], [ %s.7, %if.then167 ], [ %s.7, %while.cond159 ], !dbg !1445
  %flags.9 = phi i32 [ %or147, %if.end146 ], [ %or168, %if.then167 ], [ %or158, %while.cond159 ], !dbg !1445
  call void @llvm.dbg.value(metadata i32 %flags.9, metadata !1161, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %s.12, metadata !1160, metadata !DIExpression()), !dbg !1190
  %cmp395610 = icmp ult ptr %s.12, %send, !dbg !1446
  br i1 %cmp395610, label %land.rhs397.preheader, label %while.end406, !dbg !1447

land.rhs397.preheader:                            ; preds = %if.end393
  %s.12627 = ptrtoint ptr %s.12 to i64, !dbg !1190
  %58 = sub i64 %send621, %s.12627, !dbg !1448
  %uglygep628 = getelementptr i8, ptr %s.12, i64 %58, !dbg !1448
  br label %land.rhs397, !dbg !1448

land.rhs397:                                      ; preds = %land.rhs397.preheader, %while.body404
  %s.13611 = phi ptr [ %incdec.ptr405, %while.body404 ], [ %s.12, %land.rhs397.preheader ]
  call void @llvm.dbg.value(metadata ptr %s.13611, metadata !1160, metadata !DIExpression()), !dbg !1190
  %59 = load i8, ptr %s.13611, align 1, !dbg !1449
  %idxprom398 = zext i8 %59 to i64, !dbg !1449
  %arrayidx399 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom398, !dbg !1449
  %60 = load i32, ptr %arrayidx399, align 4, !dbg !1449
  %and400 = and i32 %60, 17408, !dbg !1449
  %cmp401 = icmp eq i32 %and400, 17408, !dbg !1449
  br i1 %cmp401, label %while.body404, label %while.end406, !dbg !1448

while.body404:                                    ; preds = %land.rhs397
  %incdec.ptr405 = getelementptr inbounds i8, ptr %s.13611, i64 1, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %incdec.ptr405, metadata !1160, metadata !DIExpression()), !dbg !1190
  %exitcond629.not = icmp eq ptr %incdec.ptr405, %uglygep628, !dbg !1446
  br i1 %exitcond629.not, label %while.end406, label %land.rhs397, !dbg !1447, !llvm.loop !1451

while.end406:                                     ; preds = %land.rhs397, %while.body404, %while.cond369, %while.cond369.preheader, %cleanup358.thread, %if.else362, %land.lhs.true384, %if.end393
  %flags.9637 = phi i32 [ %flags.9, %if.end393 ], [ %or216, %while.cond369.preheader ], [ %spec.select571, %cleanup358.thread ], [ %or363, %if.else362 ], [ %spec.select572, %land.lhs.true384 ], [ %or216, %while.cond369 ], [ %flags.9, %while.body404 ], [ %flags.9, %land.rhs397 ]
  %s.13.lcssa = phi ptr [ %s.12, %if.end393 ], [ %send, %while.cond369.preheader ], [ %send, %cleanup358.thread ], [ %send, %if.else362 ], [ %send, %land.lhs.true384 ], [ %send, %while.cond369 ], [ %s.13611, %land.rhs397 ], [ %uglygep628, %while.body404 ], !dbg !1190
  store ptr %s.13.lcssa, ptr %sp, align 8, !dbg !1452
  br label %cleanup407, !dbg !1453

cleanup407:                                       ; preds = %cleanup358, %if.then255, %if.then236, %if.end110, %if.end100, %lor.lhs.false104, %if.end90, %lor.lhs.false94, %if.then77, %lor.lhs.false84, %if.end189, %if.end204, %lor.lhs.false208, %if.then194, %lor.lhs.false198, %if.then183, %land.lhs.true153, %if.end64, %if.end59, %if.then50, %lor.lhs.false, %if.end34, %if.then28, %if.then19, %if.then8, %if.then, %cleanup, %while.end406
  %retval.4 = phi i32 [ %flags.9637, %while.end406 ], [ %or80, %cleanup ], [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.then19 ], [ 0, %if.then28 ], [ 0, %if.end34 ], [ 0, %lor.lhs.false ], [ 0, %if.then50 ], [ 0, %if.end59 ], [ 0, %if.end64 ], [ 0, %land.lhs.true153 ], [ 0, %if.then183 ], [ 0, %lor.lhs.false198 ], [ 0, %if.then194 ], [ 0, %lor.lhs.false208 ], [ 0, %if.end204 ], [ 0, %if.end189 ], [ %or80, %lor.lhs.false84 ], [ %or80, %if.then77 ], [ %or80, %lor.lhs.false94 ], [ %or80, %if.end90 ], [ %or80, %lor.lhs.false104 ], [ %or80, %if.end100 ], [ %or80, %if.end110 ], [ 0, %cleanup358 ], [ %or256, %if.then255 ], [ %or237, %if.then236 ], !dbg !1190
  ret i32 %retval.4, !dbg !1454
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_grok_number_flags(ptr noundef %pv, i64 noundef %len, ptr noundef writeonly %valuep, i32 noundef %flags) local_unnamed_addr #2 !dbg !1455 {
entry:
  %d = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1460, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %len, metadata !1461, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %valuep, metadata !1462, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1463, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1464, metadata !DIExpression()), !dbg !1478
  %add.ptr = getelementptr inbounds i8, ptr %pv, i64 %len, !dbg !1479
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1465, metadata !DIExpression()), !dbg !1478
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #12, !dbg !1480
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp572 = icmp sgt i64 %len, 0, !dbg !1481
  br i1 %cmp572, label %land.rhs, label %while.end, !dbg !1482

land.rhs:                                         ; preds = %entry, %while.body
  %s.0573 = phi ptr [ %incdec.ptr, %while.body ], [ %pv, %entry ]
  call void @llvm.dbg.value(metadata ptr %s.0573, metadata !1464, metadata !DIExpression()), !dbg !1478
  %0 = load i8, ptr %s.0573, align 1, !dbg !1483
  %idxprom = zext i8 %0 to i64, !dbg !1483
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1483
  %1 = load i32, ptr %arrayidx, align 4, !dbg !1483
  %and = and i32 %1, 17408, !dbg !1483
  %cmp1 = icmp eq i32 %and, 17408, !dbg !1483
  br i1 %cmp1, label %while.body, label %while.end, !dbg !1484

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, ptr %s.0573, i64 1, !dbg !1485
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr, !dbg !1481
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !1482, !llvm.loop !1486

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %s.0.lcssa = phi ptr [ %pv, %entry ], [ %incdec.ptr, %while.body ], [ %s.0573, %land.rhs ], !dbg !1478
  call void @llvm.dbg.value(metadata ptr %s.0.lcssa, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp2 = icmp eq ptr %s.0.lcssa, %add.ptr, !dbg !1487
  br i1 %cmp2, label %cleanup399, label %if.else, !dbg !1489

if.else:                                          ; preds = %while.end
  %2 = load i8, ptr %s.0.lcssa, align 1, !dbg !1490
  switch i8 %2, label %if.end14 [
    i8 45, label %if.then5
    i8 43, label %if.then11
  ], !dbg !1492

if.then5:                                         ; preds = %if.else
  %incdec.ptr6 = getelementptr inbounds i8, ptr %s.0.lcssa, i64 1, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !1464, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 8, metadata !1467, metadata !DIExpression()), !dbg !1478
  br label %if.end14, !dbg !1495

if.then11:                                        ; preds = %if.else
  %incdec.ptr12 = getelementptr inbounds i8, ptr %s.0.lcssa, i64 1, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12, metadata !1464, metadata !DIExpression()), !dbg !1478
  br label %if.end14, !dbg !1498

if.end14:                                         ; preds = %if.else, %if.then5, %if.then11
  %s.1 = phi ptr [ %s.0.lcssa, %if.else ], [ %incdec.ptr12, %if.then11 ], [ %incdec.ptr6, %if.then5 ], !dbg !1478
  %numtype.0 = phi i32 [ 0, %if.else ], [ 0, %if.then11 ], [ 8, %if.then5 ], !dbg !1478
  call void @llvm.dbg.value(metadata i32 %numtype.0, metadata !1467, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp15 = icmp eq ptr %s.1, %add.ptr, !dbg !1499
  br i1 %cmp15, label %cleanup399, label %if.end18, !dbg !1501

if.end18:                                         ; preds = %if.end14
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !1466, metadata !DIExpression()), !dbg !1478
  store ptr %s.1, ptr %d, align 8, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !1464, metadata !DIExpression()), !dbg !1478
  %3 = load i8, ptr %s.1, align 1, !dbg !1503
  %idxprom19 = zext i8 %3 to i64, !dbg !1503
  %arrayidx20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom19, !dbg !1503
  %4 = load i32, ptr %arrayidx20, align 4, !dbg !1503
  %and21 = and i32 %4, 2, !dbg !1503
  %tobool.not = icmp eq i32 %and21, 0, !dbg !1503
  br i1 %tobool.not, label %if.else235, label %if.then22, !dbg !1504

if.then22:                                        ; preds = %if.end18
  %conv23 = sext i8 %3 to i64, !dbg !1505
  %sub = add nsw i64 %conv23, -48, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr25 = getelementptr inbounds i8, ptr %s.1, i64 1, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %incdec.ptr25, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp26 = icmp ult ptr %incdec.ptr25, %add.ptr, !dbg !1509
  br i1 %cmp26, label %if.then28, label %if.end213, !dbg !1510

if.then28:                                        ; preds = %if.then22
  %5 = load i8, ptr %incdec.ptr25, align 1, !dbg !1511
  call void @llvm.dbg.value(metadata i8 %5, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %6 = add i8 %5, -48, !dbg !1513
  %7 = icmp ult i8 %6, 10, !dbg !1513
  br i1 %7, label %if.then35, label %if.end213, !dbg !1513

if.then35:                                        ; preds = %if.then28
  %conv29559 = zext i8 %5 to i64, !dbg !1511
  call void @llvm.dbg.value(metadata i8 %5, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul = mul nsw i64 %sub, 10, !dbg !1515
  %sub30 = add nsw i64 %mul, -48, !dbg !1517
  %add = add nsw i64 %sub30, %conv29559, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %add, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr37 = getelementptr inbounds i8, ptr %s.1, i64 2, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %incdec.ptr37, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp38 = icmp ult ptr %incdec.ptr37, %add.ptr, !dbg !1521
  br i1 %cmp38, label %if.then40, label %if.end213, !dbg !1522

if.then40:                                        ; preds = %if.then35
  %8 = load i8, ptr %incdec.ptr37, align 1, !dbg !1523
  call void @llvm.dbg.value(metadata i8 %8, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %9 = add i8 %8, -48, !dbg !1525
  %10 = icmp ult i8 %9, 10, !dbg !1525
  br i1 %10, label %if.then48, label %if.end213, !dbg !1525

if.then48:                                        ; preds = %if.then40
  %conv41560 = zext i8 %8 to i64, !dbg !1523
  call void @llvm.dbg.value(metadata i8 %8, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul49 = mul nsw i64 %add, 10, !dbg !1527
  %sub42 = add nsw i64 %mul49, -48, !dbg !1529
  %add51 = add nsw i64 %sub42, %conv41560, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %add51, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr52 = getelementptr inbounds i8, ptr %s.1, i64 3, !dbg !1531
  call void @llvm.dbg.value(metadata ptr %incdec.ptr52, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp53 = icmp ult ptr %incdec.ptr52, %add.ptr, !dbg !1533
  br i1 %cmp53, label %if.then55, label %if.end213, !dbg !1534

if.then55:                                        ; preds = %if.then48
  %11 = load i8, ptr %incdec.ptr52, align 1, !dbg !1535
  call void @llvm.dbg.value(metadata i8 %11, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %12 = add i8 %11, -48, !dbg !1537
  %13 = icmp ult i8 %12, 10, !dbg !1537
  br i1 %13, label %if.then63, label %if.end213, !dbg !1537

if.then63:                                        ; preds = %if.then55
  %conv56561 = zext i8 %11 to i64, !dbg !1535
  call void @llvm.dbg.value(metadata i8 %11, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul64 = mul nsw i64 %add51, 10, !dbg !1539
  %sub57 = add nsw i64 %mul64, -48, !dbg !1541
  %add66 = add nsw i64 %sub57, %conv56561, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %add66, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr67 = getelementptr inbounds i8, ptr %s.1, i64 4, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %incdec.ptr67, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp68 = icmp ult ptr %incdec.ptr67, %add.ptr, !dbg !1545
  br i1 %cmp68, label %if.then70, label %if.end213, !dbg !1546

if.then70:                                        ; preds = %if.then63
  %14 = load i8, ptr %incdec.ptr67, align 1, !dbg !1547
  call void @llvm.dbg.value(metadata i8 %14, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %15 = add i8 %14, -48, !dbg !1549
  %16 = icmp ult i8 %15, 10, !dbg !1549
  br i1 %16, label %if.then78, label %if.end213, !dbg !1549

if.then78:                                        ; preds = %if.then70
  %conv71562 = zext i8 %14 to i64, !dbg !1547
  call void @llvm.dbg.value(metadata i8 %14, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul79 = mul nsw i64 %add66, 10, !dbg !1551
  %sub72 = add nsw i64 %mul79, -48, !dbg !1553
  %add81 = add nsw i64 %sub72, %conv71562, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %add81, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr82 = getelementptr inbounds i8, ptr %s.1, i64 5, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %incdec.ptr82, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp83 = icmp ult ptr %incdec.ptr82, %add.ptr, !dbg !1557
  br i1 %cmp83, label %if.then85, label %if.end213, !dbg !1558

if.then85:                                        ; preds = %if.then78
  %17 = load i8, ptr %incdec.ptr82, align 1, !dbg !1559
  call void @llvm.dbg.value(metadata i8 %17, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %18 = add i8 %17, -48, !dbg !1561
  %19 = icmp ult i8 %18, 10, !dbg !1561
  br i1 %19, label %if.then93, label %if.end213, !dbg !1561

if.then93:                                        ; preds = %if.then85
  %conv86563 = zext i8 %17 to i64, !dbg !1559
  call void @llvm.dbg.value(metadata i8 %17, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul94 = mul nsw i64 %add81, 10, !dbg !1563
  %sub87 = add nsw i64 %mul94, -48, !dbg !1565
  %add96 = add nsw i64 %sub87, %conv86563, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %add96, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr97 = getelementptr inbounds i8, ptr %s.1, i64 6, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %incdec.ptr97, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp98 = icmp ult ptr %incdec.ptr97, %add.ptr, !dbg !1569
  br i1 %cmp98, label %if.then100, label %if.end213, !dbg !1570

if.then100:                                       ; preds = %if.then93
  %20 = load i8, ptr %incdec.ptr97, align 1, !dbg !1571
  call void @llvm.dbg.value(metadata i8 %20, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %21 = add i8 %20, -48, !dbg !1573
  %22 = icmp ult i8 %21, 10, !dbg !1573
  br i1 %22, label %if.then108, label %if.end213, !dbg !1573

if.then108:                                       ; preds = %if.then100
  %conv101564 = zext i8 %20 to i64, !dbg !1571
  call void @llvm.dbg.value(metadata i8 %20, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul109 = mul nsw i64 %add96, 10, !dbg !1575
  %sub102 = add nsw i64 %mul109, -48, !dbg !1577
  %add111 = add nsw i64 %sub102, %conv101564, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %add111, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr112 = getelementptr inbounds i8, ptr %s.1, i64 7, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %incdec.ptr112, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp113 = icmp ult ptr %incdec.ptr112, %add.ptr, !dbg !1581
  br i1 %cmp113, label %if.then115, label %if.end213, !dbg !1582

if.then115:                                       ; preds = %if.then108
  %23 = load i8, ptr %incdec.ptr112, align 1, !dbg !1583
  call void @llvm.dbg.value(metadata i8 %23, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %24 = add i8 %23, -48, !dbg !1585
  %25 = icmp ult i8 %24, 10, !dbg !1585
  br i1 %25, label %if.then123, label %if.end213, !dbg !1585

if.then123:                                       ; preds = %if.then115
  %conv116565 = zext i8 %23 to i64, !dbg !1583
  call void @llvm.dbg.value(metadata i8 %23, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul124 = mul nsw i64 %add111, 10, !dbg !1587
  %sub117 = add nsw i64 %mul124, -48, !dbg !1589
  %add126 = add nsw i64 %sub117, %conv116565, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %add126, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr127 = getelementptr inbounds i8, ptr %s.1, i64 8, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %incdec.ptr127, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp128 = icmp ult ptr %incdec.ptr127, %add.ptr, !dbg !1593
  br i1 %cmp128, label %if.then130, label %if.end213, !dbg !1594

if.then130:                                       ; preds = %if.then123
  %26 = load i8, ptr %incdec.ptr127, align 1, !dbg !1595
  call void @llvm.dbg.value(metadata i8 %26, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %27 = add i8 %26, -48, !dbg !1597
  %28 = icmp ult i8 %27, 10, !dbg !1597
  br i1 %28, label %if.then138, label %if.end213, !dbg !1597

if.then138:                                       ; preds = %if.then130
  %conv131566 = zext i8 %26 to i64, !dbg !1595
  call void @llvm.dbg.value(metadata i8 %26, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !1512
  %mul139 = mul nsw i64 %add126, 10, !dbg !1599
  %sub132 = add nsw i64 %mul139, -48, !dbg !1601
  %add141 = add nsw i64 %sub132, %conv131566, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %add141, metadata !1468, metadata !DIExpression()), !dbg !1507
  %incdec.ptr142 = getelementptr inbounds i8, ptr %s.1, i64 9, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %incdec.ptr142, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp143 = icmp ult ptr %incdec.ptr142, %add.ptr, !dbg !1605
  br i1 %cmp143, label %while.cond148, label %if.end213, !dbg !1606

while.cond148:                                    ; preds = %if.then138, %while.body164
  %s.2 = phi ptr [ %incdec.ptr168, %while.body164 ], [ %incdec.ptr142, %if.then138 ], !dbg !1607
  %value.0 = phi i64 [ %add167, %while.body164 ], [ %add141, %if.then138 ], !dbg !1608
  %digit.0.in.in = load i8, ptr %s.2, align 1, !dbg !1609
  %digit.0.in = sext i8 %digit.0.in.in to i32, !dbg !1609
  %digit.0 = add nsw i32 %digit.0.in, -48, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %digit.0, metadata !1471, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %value.0, metadata !1468, metadata !DIExpression()), !dbg !1507
  %29 = icmp ult i32 %digit.0, 10, !dbg !1611
  br i1 %29, label %land.rhs154, label %if.end213, !dbg !1611

land.rhs154:                                      ; preds = %while.cond148
  %cmp155 = icmp ult i64 %value.0, 1844674407370955161, !dbg !1612
  br i1 %cmp155, label %while.body164, label %lor.rhs, !dbg !1613

lor.rhs:                                          ; preds = %land.rhs154
  %cmp157 = icmp eq i64 %value.0, 1844674407370955161, !dbg !1614
  %cmp160 = icmp slt i8 %digit.0.in.in, 54
  %or.cond414 = select i1 %cmp157, i1 %cmp160, i1 false, !dbg !1615
  br i1 %or.cond414, label %while.body164, label %while.end176, !dbg !1615

while.body164:                                    ; preds = %land.rhs154, %lor.rhs
  %mul165 = mul nuw i64 %value.0, 10, !dbg !1616
  %conv166567 = zext i32 %digit.0 to i64, !dbg !1618
  %add167 = add i64 %mul165, %conv166567, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %add167, metadata !1468, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata ptr %s.2, metadata !1464, metadata !DIExpression()), !dbg !1478
  %incdec.ptr168 = getelementptr inbounds i8, ptr %s.2, i64 1, !dbg !1620
  call void @llvm.dbg.value(metadata ptr %incdec.ptr168, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp169 = icmp ult ptr %incdec.ptr168, %add.ptr, !dbg !1622
  br i1 %cmp169, label %while.cond148, label %while.end176, !dbg !1623, !llvm.loop !1624

while.end176:                                     ; preds = %lor.rhs, %while.body164
  %s.3 = phi ptr [ %incdec.ptr168, %while.body164 ], [ %s.2, %lor.rhs ], !dbg !1607
  %value.1 = phi i64 [ %add167, %while.body164 ], [ %value.0, %lor.rhs ], !dbg !1608
  call void @llvm.dbg.value(metadata i64 %value.1, metadata !1468, metadata !DIExpression()), !dbg !1507
  %cmp183 = icmp ult ptr %s.3, %add.ptr
  call void @llvm.dbg.value(metadata ptr %s.3, metadata !1464, metadata !DIExpression()), !dbg !1478
  br i1 %cmp183, label %do.body, label %if.end213, !dbg !1627

do.body:                                          ; preds = %while.end176, %land.rhs189
  %s.4 = phi ptr [ %incdec.ptr186, %land.rhs189 ], [ %s.3, %while.end176 ], !dbg !1609
  call void @llvm.dbg.value(metadata ptr %s.4, metadata !1464, metadata !DIExpression()), !dbg !1478
  %incdec.ptr186 = getelementptr inbounds i8, ptr %s.4, i64 1, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %incdec.ptr186, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp187 = icmp ult ptr %incdec.ptr186, %add.ptr, !dbg !1632
  br i1 %cmp187, label %land.rhs189, label %cleanup, !dbg !1633

land.rhs189:                                      ; preds = %do.body
  %30 = load i8, ptr %incdec.ptr186, align 1, !dbg !1634
  %idxprom190 = zext i8 %30 to i64, !dbg !1634
  %arrayidx191 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom190, !dbg !1634
  %31 = load i32, ptr %arrayidx191, align 4, !dbg !1634
  %and192 = and i32 %31, 2, !dbg !1634
  %tobool193.not = icmp eq i32 %and192, 0, !dbg !1634
  br i1 %tobool193.not, label %cleanup, label %do.body, !dbg !1635, !llvm.loop !1636

cleanup:                                          ; preds = %land.rhs189, %do.body
  %or = or i32 %numtype.0, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %value.1, metadata !1468, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %or, metadata !1467, metadata !DIExpression()), !dbg !1478
  br label %skip_value

if.end213:                                        ; preds = %while.cond148, %if.then28, %if.then40, %if.then55, %if.then70, %if.then85, %if.then100, %if.then115, %if.then130, %while.end176, %if.then138, %if.then123, %if.then108, %if.then93, %if.then78, %if.then63, %if.then48, %if.then35, %if.then22
  %s.6 = phi ptr [ %incdec.ptr25, %if.then22 ], [ %incdec.ptr25, %if.then28 ], [ %incdec.ptr37, %if.then35 ], [ %incdec.ptr37, %if.then40 ], [ %incdec.ptr52, %if.then48 ], [ %incdec.ptr52, %if.then55 ], [ %incdec.ptr67, %if.then63 ], [ %incdec.ptr67, %if.then70 ], [ %incdec.ptr82, %if.then78 ], [ %incdec.ptr82, %if.then85 ], [ %incdec.ptr97, %if.then93 ], [ %incdec.ptr97, %if.then100 ], [ %incdec.ptr112, %if.then108 ], [ %incdec.ptr112, %if.then115 ], [ %incdec.ptr127, %if.then123 ], [ %incdec.ptr127, %if.then130 ], [ %incdec.ptr142, %if.then138 ], [ %s.3, %while.end176 ], [ %s.2, %while.cond148 ], !dbg !1640
  %value.4 = phi i64 [ %sub, %if.then22 ], [ %sub, %if.then28 ], [ %add, %if.then35 ], [ %add, %if.then40 ], [ %add51, %if.then48 ], [ %add51, %if.then55 ], [ %add66, %if.then63 ], [ %add66, %if.then70 ], [ %add81, %if.then78 ], [ %add81, %if.then85 ], [ %add96, %if.then93 ], [ %add96, %if.then100 ], [ %add111, %if.then108 ], [ %add111, %if.then115 ], [ %add126, %if.then123 ], [ %add126, %if.then130 ], [ %add141, %if.then138 ], [ %value.1, %while.end176 ], [ %value.0, %while.cond148 ], !dbg !1507
  call void @llvm.dbg.value(metadata i64 %value.4, metadata !1468, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %numtype.0, metadata !1467, metadata !DIExpression()), !dbg !1478
  %or214 = or i32 %numtype.0, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %or214, metadata !1467, metadata !DIExpression()), !dbg !1478
  %tobool215.not = icmp eq ptr %valuep, null, !dbg !1642
  br i1 %tobool215.not, label %skip_value, label %if.then216, !dbg !1644

if.then216:                                       ; preds = %if.end213
  store i64 %value.4, ptr %valuep, align 8, !dbg !1645
  br label %skip_value, !dbg !1646

skip_value:                                       ; preds = %cleanup, %if.end213, %if.then216
  %s.7 = phi ptr [ %s.6, %if.end213 ], [ %s.6, %if.then216 ], [ %incdec.ptr186, %cleanup ], !dbg !1629
  %numtype.3 = phi i32 [ %or214, %if.end213 ], [ %or214, %if.then216 ], [ %or, %cleanup ], !dbg !1507
  call void @llvm.dbg.value(metadata i32 %numtype.3, metadata !1467, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.label(metadata !1477), !dbg !1647
  call void @llvm.dbg.value(metadata ptr undef, metadata !1140, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1141, metadata !DIExpression()), !dbg !1648
  %cmp.i = icmp ult ptr %s.7, %add.ptr, !dbg !1651
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end269, !dbg !1652

land.lhs.true.i:                                  ; preds = %skip_value
  %32 = load i8, ptr %s.7, align 1, !dbg !1653
  %cmp1.i = icmp eq i8 %32, 46, !dbg !1654
  br i1 %cmp1.i, label %if.then218, label %if.end269, !dbg !1655

if.then218:                                       ; preds = %land.lhs.true.i
  %or219 = or i32 %numtype.3, 4, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %or219, metadata !1467, metadata !DIExpression()), !dbg !1478
  br label %while.cond220, !dbg !1658

while.cond220:                                    ; preds = %land.rhs223, %if.then218
  %s.7.pn = phi ptr [ %s.7, %if.then218 ], [ %s.9, %land.rhs223 ]
  %s.9 = getelementptr inbounds i8, ptr %s.7.pn, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %s.9, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp221 = icmp ult ptr %s.9, %add.ptr, !dbg !1660
  br i1 %cmp221, label %land.rhs223, label %if.end269, !dbg !1661

land.rhs223:                                      ; preds = %while.cond220
  %33 = load i8, ptr %s.9, align 1, !dbg !1662
  %idxprom224 = zext i8 %33 to i64, !dbg !1662
  %arrayidx225 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom224, !dbg !1662
  %34 = load i32, ptr %arrayidx225, align 4, !dbg !1662
  %and226 = and i32 %34, 2, !dbg !1662
  %tobool227.not = icmp eq i32 %and226, 0, !dbg !1662
  br i1 %tobool227.not, label %if.end269, label %while.cond220, !dbg !1658, !llvm.loop !1663

if.else235:                                       ; preds = %if.end18
  call void @llvm.dbg.value(metadata ptr undef, metadata !1140, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1141, metadata !DIExpression()), !dbg !1665
  %cmp.i513 = icmp ult ptr %s.1, %add.ptr, !dbg !1668
  %cmp1.i514 = icmp eq i8 %3, 46
  %or.cond = select i1 %cmp.i513, i1 %cmp1.i514, i1 false, !dbg !1669
  br i1 %or.cond, label %if.then237, label %if.end328, !dbg !1669

if.then237:                                       ; preds = %if.else235
  %incdec.ptr.i516 = getelementptr inbounds i8, ptr %s.1, i64 1, !dbg !1670
  %or238 = or i32 %numtype.0, 5, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %or238, metadata !1467, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i516, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp239 = icmp ult ptr %incdec.ptr.i516, %add.ptr, !dbg !1673
  br i1 %cmp239, label %land.lhs.true241, label %cleanup399, !dbg !1675

land.lhs.true241:                                 ; preds = %if.then237
  %35 = load i8, ptr %incdec.ptr.i516, align 1, !dbg !1676
  %idxprom242 = zext i8 %35 to i64, !dbg !1676
  %arrayidx243 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom242, !dbg !1676
  %36 = load i32, ptr %arrayidx243, align 4, !dbg !1676
  %and244 = and i32 %36, 2, !dbg !1676
  %tobool245.not = icmp eq i32 %and244, 0, !dbg !1676
  br i1 %tobool245.not, label %cleanup399, label %do.body249, !dbg !1677

do.body249:                                       ; preds = %land.lhs.true241, %land.rhs254
  %s.11 = phi ptr [ %incdec.ptr250, %land.rhs254 ], [ %incdec.ptr.i516, %land.lhs.true241 ], !dbg !1678
  call void @llvm.dbg.value(metadata ptr %s.11, metadata !1464, metadata !DIExpression()), !dbg !1478
  %incdec.ptr250 = getelementptr inbounds i8, ptr %s.11, i64 1, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %incdec.ptr250, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp252 = icmp ult ptr %incdec.ptr250, %add.ptr, !dbg !1682
  br i1 %cmp252, label %land.rhs254, label %do.end262, !dbg !1683

land.rhs254:                                      ; preds = %do.body249
  %37 = load i8, ptr %incdec.ptr250, align 1, !dbg !1684
  %idxprom255 = zext i8 %37 to i64, !dbg !1684
  %arrayidx256 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom255, !dbg !1684
  %38 = load i32, ptr %arrayidx256, align 4, !dbg !1684
  %and257 = and i32 %38, 2, !dbg !1684
  %tobool258.not = icmp eq i32 %and257, 0, !dbg !1684
  br i1 %tobool258.not, label %do.end262, label %do.body249, !dbg !1685, !llvm.loop !1686

do.end262:                                        ; preds = %do.body249, %land.rhs254
  %tobool263.not = icmp eq ptr %valuep, null, !dbg !1689
  br i1 %tobool263.not, label %if.end269, label %if.then264, !dbg !1691

if.then264:                                       ; preds = %do.end262
  store i64 0, ptr %valuep, align 8, !dbg !1692
  br label %if.end269, !dbg !1694

if.end269:                                        ; preds = %while.cond220, %land.rhs223, %skip_value, %land.lhs.true.i, %do.end262, %if.then264
  %s.12 = phi ptr [ %incdec.ptr250, %do.end262 ], [ %incdec.ptr250, %if.then264 ], [ %s.7, %land.lhs.true.i ], [ %s.7, %skip_value ], [ %s.9, %land.rhs223 ], [ %s.9, %while.cond220 ], !dbg !1695
  %numtype.5 = phi i32 [ %or238, %do.end262 ], [ %or238, %if.then264 ], [ %numtype.3, %land.lhs.true.i ], [ %numtype.3, %skip_value ], [ %or219, %land.rhs223 ], [ %or219, %while.cond220 ], !dbg !1478
  call void @llvm.dbg.value(metadata i32 %numtype.5, metadata !1467, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %s.12, metadata !1464, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !1466, metadata !DIExpression()), !dbg !1478
  %cmp270 = icmp ugt ptr %s.12, %s.1, !dbg !1696
  %cmp273 = icmp ult ptr %s.12, %add.ptr
  %or.cond512 = select i1 %cmp270, i1 %cmp273, i1 false, !dbg !1698
  br i1 %or.cond512, label %if.then275, label %if.end328, !dbg !1698

if.then275:                                       ; preds = %if.end269
  %39 = load i8, ptr %s.12, align 1, !dbg !1699
  %40 = and i8 %39, -33, !dbg !1699
  %cmp278 = icmp eq i8 %40, 69, !dbg !1699
  br i1 %cmp278, label %if.then280, label %if.end328, !dbg !1702

if.then280:                                       ; preds = %if.then275
  %incdec.ptr281 = getelementptr inbounds i8, ptr %s.12, i64 1, !dbg !1703
  call void @llvm.dbg.value(metadata ptr %incdec.ptr281, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp282 = icmp ult ptr %incdec.ptr281, %add.ptr, !dbg !1705
  br i1 %cmp282, label %land.lhs.true284, label %if.end293, !dbg !1707

land.lhs.true284:                                 ; preds = %if.then280
  %41 = load i8, ptr %incdec.ptr281, align 1, !dbg !1708
  switch i8 %41, label %if.end293 [
    i8 45, label %if.then291
    i8 43, label %if.then291
  ], !dbg !1709

if.then291:                                       ; preds = %land.lhs.true284, %land.lhs.true284
  call void @llvm.dbg.value(metadata ptr %incdec.ptr281, metadata !1464, metadata !DIExpression()), !dbg !1478
  %incdec.ptr292 = getelementptr inbounds i8, ptr %s.12, i64 2, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %incdec.ptr292, metadata !1464, metadata !DIExpression()), !dbg !1478
  br label %if.end293, !dbg !1711

if.end293:                                        ; preds = %land.lhs.true284, %if.then291, %if.then280
  %s.13 = phi ptr [ %incdec.ptr281, %land.lhs.true284 ], [ %incdec.ptr292, %if.then291 ], [ %incdec.ptr281, %if.then280 ], !dbg !1712
  call void @llvm.dbg.value(metadata ptr %s.13, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp294 = icmp ult ptr %s.13, %add.ptr, !dbg !1713
  br i1 %cmp294, label %land.lhs.true296, label %if.else318, !dbg !1715

land.lhs.true296:                                 ; preds = %if.end293
  %42 = load i8, ptr %s.13, align 1, !dbg !1716
  %idxprom297 = zext i8 %42 to i64, !dbg !1716
  %arrayidx298 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom297, !dbg !1716
  %43 = load i32, ptr %arrayidx298, align 4, !dbg !1716
  %and299 = and i32 %43, 2, !dbg !1716
  %tobool300.not = icmp eq i32 %and299, 0, !dbg !1716
  br i1 %tobool300.not, label %if.else318, label %do.body304, !dbg !1717

do.body304:                                       ; preds = %land.lhs.true296, %land.rhs309
  %s.14 = phi ptr [ %incdec.ptr305, %land.rhs309 ], [ %s.13, %land.lhs.true296 ], !dbg !1712
  call void @llvm.dbg.value(metadata ptr %s.14, metadata !1464, metadata !DIExpression()), !dbg !1478
  %incdec.ptr305 = getelementptr inbounds i8, ptr %s.14, i64 1, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %incdec.ptr305, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp307 = icmp ult ptr %incdec.ptr305, %add.ptr, !dbg !1721
  br i1 %cmp307, label %land.rhs309, label %if.end324, !dbg !1722

land.rhs309:                                      ; preds = %do.body304
  %44 = load i8, ptr %incdec.ptr305, align 1, !dbg !1723
  %idxprom310 = zext i8 %44 to i64, !dbg !1723
  %arrayidx311 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom310, !dbg !1723
  %45 = load i32, ptr %arrayidx311, align 4, !dbg !1723
  %and312 = and i32 %45, 2, !dbg !1723
  %tobool313.not = icmp eq i32 %and312, 0, !dbg !1723
  br i1 %tobool313.not, label %if.end324, label %do.body304, !dbg !1724, !llvm.loop !1725

if.else318:                                       ; preds = %land.lhs.true296, %if.end293
  %and319 = and i32 %flags, 16, !dbg !1728
  %tobool320.not = icmp eq i32 %and319, 0, !dbg !1728
  %or322 = or i32 %numtype.5, 64
  %spec.select = select i1 %tobool320.not, i32 0, i32 %or322, !dbg !1730
  br label %cleanup399, !dbg !1730

if.end324:                                        ; preds = %do.body304, %land.rhs309
  %and325 = and i32 %numtype.5, 8, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %and325, metadata !1467, metadata !DIExpression()), !dbg !1478
  %or326 = or i32 %and325, 4, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %or326, metadata !1467, metadata !DIExpression()), !dbg !1478
  br label %if.end328, !dbg !1733

if.end328:                                        ; preds = %if.else235, %if.then275, %if.end324, %if.end269
  %s.15 = phi ptr [ %incdec.ptr305, %if.end324 ], [ %s.12, %if.then275 ], [ %s.12, %if.end269 ], [ %s.1, %if.else235 ], !dbg !1478
  %numtype.6 = phi i32 [ %or326, %if.end324 ], [ %numtype.5, %if.then275 ], [ %numtype.5, %if.end269 ], [ %numtype.0, %if.else235 ], !dbg !1478
  call void @llvm.dbg.value(metadata i32 %numtype.6, metadata !1467, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %s.15, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp330575 = icmp ult ptr %s.15, %add.ptr, !dbg !1734
  br i1 %cmp330575, label %land.rhs332, label %cleanup399, !dbg !1735

land.rhs332:                                      ; preds = %if.end328, %while.body339
  %s.16576 = phi ptr [ %incdec.ptr340, %while.body339 ], [ %s.15, %if.end328 ]
  call void @llvm.dbg.value(metadata ptr %s.16576, metadata !1464, metadata !DIExpression()), !dbg !1478
  %46 = load i8, ptr %s.16576, align 1, !dbg !1736
  %idxprom333 = zext i8 %46 to i64, !dbg !1736
  %arrayidx334 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom333, !dbg !1736
  %47 = load i32, ptr %arrayidx334, align 4, !dbg !1736
  %and335 = and i32 %47, 17408, !dbg !1736
  %cmp336 = icmp eq i32 %and335, 17408, !dbg !1736
  br i1 %cmp336, label %while.body339, label %if.end345, !dbg !1737

while.body339:                                    ; preds = %land.rhs332
  %incdec.ptr340 = getelementptr inbounds i8, ptr %s.16576, i64 1, !dbg !1738
  call void @llvm.dbg.value(metadata ptr %incdec.ptr340, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp330 = icmp ult ptr %incdec.ptr340, %add.ptr, !dbg !1734
  br i1 %cmp330, label %land.rhs332, label %cleanup399, !dbg !1735, !llvm.loop !1739

if.end345:                                        ; preds = %land.rhs332
  call void @llvm.dbg.value(metadata ptr %s.16576, metadata !1464, metadata !DIExpression()), !dbg !1478
  %cmp346 = icmp eq i64 %len, 10, !dbg !1740
  br i1 %cmp346, label %land.lhs.true348, label %if.end355, !dbg !1742

land.lhs.true348:                                 ; preds = %if.end345
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %pv, ptr noundef nonnull dereferenceable(10) @.str.9, i64 10), !dbg !1743
  %tobool350.not = icmp eq i32 %bcmp, 0, !dbg !1743
  br i1 %tobool350.not, label %if.then351, label %if.end355, !dbg !1744

if.then351:                                       ; preds = %land.lhs.true348
  %tobool352.not = icmp eq ptr %valuep, null, !dbg !1745
  br i1 %tobool352.not, label %cleanup399, label %if.then353, !dbg !1748

if.then353:                                       ; preds = %if.then351
  store i64 0, ptr %valuep, align 8, !dbg !1749
  br label %cleanup399, !dbg !1750

if.end355:                                        ; preds = %land.lhs.true348, %if.end345
  call void @llvm.dbg.value(metadata ptr %s.16576, metadata !1464, metadata !DIExpression()), !dbg !1478
  %add.ptr356 = getelementptr inbounds i8, ptr %s.16576, i64 2, !dbg !1751
  %cmp357 = icmp ult ptr %add.ptr356, %add.ptr, !dbg !1752
  br i1 %cmp357, label %land.lhs.true359, label %if.else392, !dbg !1753

land.lhs.true359:                                 ; preds = %if.end355
  %and362 = and i32 %47, 16400, !dbg !1754
  %cmp363 = icmp eq i32 %and362, 16400, !dbg !1754
  br i1 %cmp363, label %cond.true365, label %cond.false370, !dbg !1754

cond.true365:                                     ; preds = %land.lhs.true359
  %add367 = add i8 %46, 32, !dbg !1754
  %conv369 = zext i8 %add367 to i32, !dbg !1754
  br label %cond.end, !dbg !1754

cond.false370:                                    ; preds = %land.lhs.true359
  %conv371 = sext i8 %46 to i32, !dbg !1754
  br label %cond.end, !dbg !1754

cond.end:                                         ; preds = %cond.false370, %cond.true365
  %cond372 = phi i32 [ %conv369, %cond.true365 ], [ %conv371, %cond.false370 ], !dbg !1754
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.10, i32 %cond372, i64 6), !dbg !1755
  %tobool374.not = icmp eq ptr %memchr, null, !dbg !1755
  br i1 %tobool374.not, label %if.else392, label %if.then375, !dbg !1756

if.then375:                                       ; preds = %cond.end
  call void @llvm.dbg.value(metadata ptr %d, metadata !1466, metadata !DIExpression(DW_OP_deref)), !dbg !1478
  %call376 = call i32 @Perl_grok_infnan(ptr noundef nonnull %d, ptr noundef nonnull %add.ptr), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %call376, metadata !1474, metadata !DIExpression()), !dbg !1758
  %and377 = and i32 %call376, 16, !dbg !1759
  %tobool378.not = icmp eq i32 %and377, 0, !dbg !1759
  br i1 %tobool378.not, label %if.else381, label %if.then379, !dbg !1761

if.then379:                                       ; preds = %if.then375
  %or380 = or i32 %call376, %numtype.6, !dbg !1762
  br label %cleanup399, !dbg !1764

if.else381:                                       ; preds = %if.then375
  %and382 = and i32 %call376, 32, !dbg !1765
  %tobool383.not = icmp eq i32 %and382, 0, !dbg !1765
  br i1 %tobool383.not, label %cleanup399, label %if.then384, !dbg !1767

if.then384:                                       ; preds = %if.else381
  %or385 = or i32 %call376, %numtype.6, !dbg !1768
  %and386 = and i32 %or385, -9, !dbg !1770
  br label %cleanup399, !dbg !1771

if.else392:                                       ; preds = %cond.end, %if.end355
  %and393 = and i32 %flags, 16, !dbg !1772
  %tobool394.not = icmp eq i32 %and393, 0, !dbg !1772
  %or396 = or i32 %numtype.6, 64
  %spec.select568 = select i1 %tobool394.not, i32 0, i32 %or396, !dbg !1774
  br label %cleanup399, !dbg !1774

cleanup399:                                       ; preds = %while.body339, %if.end328, %if.else392, %if.then379, %if.then384, %if.else381, %if.else318, %if.then351, %if.then353, %if.then237, %land.lhs.true241, %if.end14, %while.end
  %retval.1 = phi i32 [ 0, %while.end ], [ 0, %if.end14 ], [ 0, %land.lhs.true241 ], [ 0, %if.then237 ], [ 1, %if.then353 ], [ 1, %if.then351 ], [ %spec.select, %if.else318 ], [ 0, %if.else381 ], [ %or380, %if.then379 ], [ %and386, %if.then384 ], [ %spec.select568, %if.else392 ], [ %numtype.6, %if.end328 ], [ %numtype.6, %while.body339 ], !dbg !1478
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #12, !dbg !1775
  ret i32 %retval.1, !dbg !1775
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_grok_number(ptr noundef %pv, i64 noundef %len, ptr noundef %valuep) local_unnamed_addr #2 !dbg !1776 {
entry:
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1780, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %len, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %valuep, metadata !1782, metadata !DIExpression()), !dbg !1783
  %call = tail call i32 @Perl_grok_number_flags(ptr noundef %pv, i64 noundef %len, ptr noundef %valuep, i32 noundef 0), !dbg !1784
  ret i32 %call, !dbg !1785
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local zeroext i1 @Perl_grok_atoUV(ptr noundef %pv, ptr nocapture noundef writeonly %valptr, ptr noundef writeonly %endptr) local_unnamed_addr #6 !dbg !1786 {
entry:
  %end2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1790, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %valptr, metadata !1791, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %endptr, metadata !1792, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1793, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end2), !dbg !1804
  call void @llvm.dbg.value(metadata i64 0, metadata !1796, metadata !DIExpression()), !dbg !1803
  %tobool.not = icmp eq ptr %endptr, null, !dbg !1805
  %spec.select = select i1 %tobool.not, ptr %end2, ptr %endptr, !dbg !1805
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1794, metadata !DIExpression()), !dbg !1803
  %0 = load i8, ptr %pv, align 1, !dbg !1806
  %idxprom = zext i8 %0 to i64, !dbg !1806
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1806
  %1 = load i32, ptr %arrayidx, align 4, !dbg !1806
  %and = and i32 %1, 2, !dbg !1806
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1806
  br i1 %tobool1.not, label %cleanup47, label %if.then, !dbg !1807

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, ptr %pv, i64 1, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1793, metadata !DIExpression()), !dbg !1803
  %conv = sext i8 %0 to i64, !dbg !1809
  %sub = add nsw i64 %conv, -48, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1796, metadata !DIExpression()), !dbg !1803
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !1811
  %idxprom5 = zext i8 %2 to i64, !dbg !1811
  %arrayidx6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom5, !dbg !1811
  %3 = load i32, ptr %arrayidx6, align 4, !dbg !1811
  %and7 = and i32 %3, 2, !dbg !1811
  %tobool8.not = icmp eq i32 %and7, 0, !dbg !1811
  br i1 %tobool8.not, label %if.end39, label %if.then11, !dbg !1812

if.then11:                                        ; preds = %if.then
  %cmp = icmp eq i64 %sub, 0, !dbg !1813
  br i1 %cmp, label %cleanup47, label %while.body, !dbg !1815

while.body:                                       ; preds = %if.then11, %cleanup
  %4 = phi i8 [ %5, %cleanup ], [ %2, %if.then11 ]
  %val.085 = phi i64 [ %add, %cleanup ], [ %sub, %if.then11 ]
  %s.084 = phi ptr [ %incdec.ptr20, %cleanup ], [ %incdec.ptr, %if.then11 ]
  call void @llvm.dbg.value(metadata i64 %val.085, metadata !1796, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %s.084, metadata !1793, metadata !DIExpression()), !dbg !1803
  %incdec.ptr20 = getelementptr inbounds i8, ptr %s.084, i64 1, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %incdec.ptr20, metadata !1793, metadata !DIExpression()), !dbg !1803
  %sub22 = add i8 %4, -48, !dbg !1817
  call void @llvm.dbg.value(metadata i8 %sub22, metadata !1797, metadata !DIExpression()), !dbg !1818
  %cmp24 = icmp ult i64 %val.085, 1844674407370955161, !dbg !1819
  br i1 %cmp24, label %cleanup, label %lor.lhs.false, !dbg !1821

lor.lhs.false:                                    ; preds = %while.body
  %cmp26 = icmp eq i64 %val.085, 1844674407370955161, !dbg !1822
  %cmp29 = icmp ult i8 %sub22, 6
  %or.cond = select i1 %cmp26, i1 %cmp29, i1 false, !dbg !1823
  br i1 %or.cond, label %cleanup, label %cleanup47, !dbg !1823

cleanup:                                          ; preds = %while.body, %lor.lhs.false
  %mul = mul nuw i64 %val.085, 10, !dbg !1824
  %conv32 = zext i8 %sub22 to i64, !dbg !1826
  %add = add i64 %mul, %conv32, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %add, metadata !1796, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %incdec.ptr20, metadata !1793, metadata !DIExpression()), !dbg !1803
  %5 = load i8, ptr %incdec.ptr20, align 1, !dbg !1828
  %idxprom14 = zext i8 %5 to i64, !dbg !1828
  %arrayidx15 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom14, !dbg !1828
  %6 = load i32, ptr %arrayidx15, align 4, !dbg !1828
  %and16 = and i32 %6, 2, !dbg !1828
  %tobool17.not = icmp eq i32 %and16, 0, !dbg !1828
  br i1 %tobool17.not, label %if.end35, label %while.body, !dbg !1829, !llvm.loop !1830

if.end35:                                         ; preds = %cleanup
  call void @llvm.dbg.value(metadata i64 %add, metadata !1796, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %incdec.ptr20, metadata !1793, metadata !DIExpression()), !dbg !1803
  %cmp36 = icmp eq ptr %incdec.ptr20, %pv, !dbg !1832
  br i1 %cmp36, label %cleanup47, label %if.end39, !dbg !1834

if.end39:                                         ; preds = %if.then, %if.end35
  %val.277 = phi i64 [ %add, %if.end35 ], [ %sub, %if.then ]
  %s.176 = phi ptr [ %incdec.ptr20, %if.end35 ], [ %incdec.ptr, %if.then ]
  br i1 %tobool.not, label %land.lhs.true42, label %if.end46, !dbg !1835

land.lhs.true42:                                  ; preds = %if.end39
  %7 = load i8, ptr %s.176, align 1, !dbg !1837
  %tobool44.not = icmp eq i8 %7, 0, !dbg !1837
  br i1 %tobool44.not, label %if.end46, label %cleanup47, !dbg !1838

if.end46:                                         ; preds = %land.lhs.true42, %if.end39
  store ptr %s.176, ptr %spec.select, align 8, !dbg !1839
  store i64 %val.277, ptr %valptr, align 8, !dbg !1840
  br label %cleanup47, !dbg !1841

cleanup47:                                        ; preds = %lor.lhs.false, %entry, %land.lhs.true42, %if.end35, %if.then11, %if.end46
  %retval.2 = phi i1 [ true, %if.end46 ], [ false, %if.then11 ], [ false, %if.end35 ], [ false, %land.lhs.true42 ], [ false, %entry ], [ false, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end2), !dbg !1842
  ret i1 %retval.2, !dbg !1842
}

; Function Attrs: nounwind uwtable
define dso_local double @Perl_my_atof(ptr noundef %s) local_unnamed_addr #2 !dbg !1843 {
entry:
  %x = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %s, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x) #12, !dbg !1850
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1848, metadata !DIExpression()), !dbg !1849
  store double 0.000000e+00, ptr %x, align 8, !dbg !1851
  call void @llvm.dbg.value(metadata ptr %x, metadata !1848, metadata !DIExpression(DW_OP_deref)), !dbg !1849
  %call = call ptr @Perl_my_atof2(ptr noundef %s, ptr noundef nonnull %x), !dbg !1852
  %0 = load double, ptr %x, align 8, !dbg !1853
  call void @llvm.dbg.value(metadata double %0, metadata !1848, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x) #12, !dbg !1854
  ret double %0, !dbg !1855
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_my_atof2(ptr noundef %orig, ptr nocapture noundef writeonly %value) local_unnamed_addr #2 !dbg !1856 {
entry:
  %p.i = alloca ptr, align 8
  %endp.i = alloca ptr, align 8
  %result = alloca [3 x double], align 16
  %accumulator = alloca [2 x i64], align 16
  %exp_acc = alloca [2 x i32], align 8
  call void @llvm.dbg.value(metadata ptr %orig, metadata !1860, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %value, metadata !1861, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %orig, metadata !1862, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %result) #12, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %result, metadata !1863, metadata !DIExpression()), !dbg !1887
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %result, i8 0, i64 24, i1 false), !dbg !1887
  call void @llvm.dbg.value(metadata ptr %orig, metadata !1862, metadata !DIExpression()), !dbg !1885
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %orig) #13, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1865, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, metadata !1866, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %accumulator) #12, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %accumulator, metadata !1867, metadata !DIExpression()), !dbg !1890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %accumulator, i8 0, i64 16, i1 false), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exp_acc) #12, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %exp_acc, metadata !1874, metadata !DIExpression()), !dbg !1892
  store i64 -1, ptr %exp_acc, align 8, !dbg !1892
  call void @llvm.dbg.value(metadata i32 0, metadata !1875, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1876, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1879, metadata !DIExpression()), !dbg !1885
  br label %while.cond, !dbg !1893

while.cond:                                       ; preds = %while.cond, %entry
  %s.0 = phi ptr [ %orig, %entry ], [ %incdec.ptr, %while.cond ], !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !1862, metadata !DIExpression()), !dbg !1885
  %0 = load i8, ptr %s.0, align 1, !dbg !1894
  %idxprom = zext i8 %0 to i64, !dbg !1894
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1894
  %1 = load i32, ptr %arrayidx, align 4, !dbg !1894
  %and = and i32 %1, 17408, !dbg !1894
  %cmp = icmp eq i32 %and, 17408, !dbg !1894
  %incdec.ptr = getelementptr inbounds i8, ptr %s.0, i64 1, !dbg !1895
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1862, metadata !DIExpression()), !dbg !1885
  br i1 %cmp, label %while.cond, label %while.end, !dbg !1893, !llvm.loop !1896

while.end:                                        ; preds = %while.cond
  %add.ptr = getelementptr inbounds i8, ptr %orig, i64 %call, !dbg !1898
  %conv = sext i8 %0 to i32, !dbg !1899
  switch i32 %conv, label %sw.epilog [
    i32 45, label %sw.bb
    i32 43, label %sw.bb1
  ], !dbg !1900

sw.bb:                                            ; preds = %while.end
  call void @llvm.dbg.value(metadata i8 1, metadata !1866, metadata !DIExpression()), !dbg !1885
  br label %sw.bb1, !dbg !1901

sw.bb1:                                           ; preds = %while.end, %sw.bb
  %negative.0 = phi i1 [ false, %while.end ], [ true, %sw.bb ], !dbg !1885
  call void @llvm.dbg.value(metadata i8 undef, metadata !1866, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !1862, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1862, metadata !DIExpression()), !dbg !1885
  br label %sw.epilog, !dbg !1903

sw.epilog:                                        ; preds = %sw.bb1, %while.end
  %s.1 = phi ptr [ %s.0, %while.end ], [ %incdec.ptr, %sw.bb1 ], !dbg !1885
  %negative.1 = phi i1 [ false, %while.end ], [ %negative.0, %sw.bb1 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 undef, metadata !1866, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !1862, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !1905, metadata !DIExpression()) #12, !dbg !1922
  call void @llvm.dbg.value(metadata i1 %negative.1, metadata !1910, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #12, !dbg !1922
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1911, metadata !DIExpression()) #12, !dbg !1922
  call void @llvm.dbg.value(metadata ptr %value, metadata !1912, metadata !DIExpression()) #12, !dbg !1922
  %spec.select.idx.i = sext i1 %negative.1 to i64, !dbg !1925
  %spec.select.i = getelementptr i8, ptr %s.1, i64 %spec.select.idx.i, !dbg !1925
  call void @llvm.dbg.value(metadata ptr %spec.select.i, metadata !1913, metadata !DIExpression()) #12, !dbg !1922
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #12, !dbg !1926
  call void @llvm.dbg.value(metadata ptr %spec.select.i, metadata !1914, metadata !DIExpression()) #12, !dbg !1922
  store ptr %spec.select.i, ptr %p.i, align 8, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %p.i, metadata !1914, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1922
  %call.i = call i32 @Perl_grok_infnan(ptr noundef nonnull %p.i, ptr noundef %add.ptr) #12, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1915, metadata !DIExpression()) #12, !dbg !1922
  %tobool1.not.i = icmp eq i32 %call.i, 0, !dbg !1929
  %2 = load ptr, ptr %p.i, align 8
  %cmp.not.i = icmp eq ptr %2, %spec.select.i
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %cmp.not.i, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %2, metadata !1914, metadata !DIExpression()) #12, !dbg !1922
  br i1 %or.cond.i, label %S_my_atof_infnan.exit.thread, label %if.then.i, !dbg !1930

if.then.i:                                        ; preds = %sw.epilog
  %and.i = and i32 %call.i, 16, !dbg !1931
  %tobool2.not.i = icmp eq i32 %and.i, 0, !dbg !1931
  br i1 %tobool2.not.i, label %if.end.i, label %if.then3.i, !dbg !1933

if.then3.i:                                       ; preds = %if.then.i
  %and4.i = and i32 %call.i, 8, !dbg !1934
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !1936
  %cond6.i = select i1 %tobool5.not.i, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %2, metadata !1914, metadata !DIExpression()) #12, !dbg !1922
  br label %S_my_atof_infnan.exit, !dbg !1937

if.end.i:                                         ; preds = %if.then.i
  %and7.i = and i32 %call.i, 32, !dbg !1938
  %tobool8.not.i = icmp eq i32 %and7.i, 0, !dbg !1938
  br i1 %tobool8.not.i, label %if.end10.i, label %S_my_atof_infnan.exit, !dbg !1940

if.end10.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr null, metadata !1916, metadata !DIExpression()) #12, !dbg !1941
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endp.i) #12, !dbg !1942
  call void @llvm.dbg.value(metadata ptr null, metadata !1916, metadata !DIExpression()) #12, !dbg !1941
  call void @llvm.dbg.value(metadata ptr %endp.i, metadata !1920, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1941
  %call22.i = call double @strtod(ptr noundef null, ptr noundef nonnull %endp.i) #12, !dbg !1943
  call void @llvm.dbg.value(metadata double %call22.i, metadata !1921, metadata !DIExpression()) #12, !dbg !1941
  call void @llvm.dbg.value(metadata ptr undef, metadata !1920, metadata !DIExpression()) #12, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endp.i) #12, !dbg !1944
  br label %S_my_atof_infnan.exit.thread

S_my_atof_infnan.exit.thread:                     ; preds = %if.end10.i, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #12, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %2, metadata !1880, metadata !DIExpression()), !dbg !1946
  br label %while.cond5.outer.preheader

S_my_atof_infnan.exit:                            ; preds = %if.end.i, %if.then3.i
  %cond6.i.sink = phi double [ %cond6.i, %if.then3.i ], [ 0x7FF8000000000000, %if.end.i ]
  store double %cond6.i.sink, ptr %value, align 8, !dbg !1947
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #12, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %2, metadata !1880, metadata !DIExpression()), !dbg !1946
  %tobool4.not = icmp eq ptr %2, null, !dbg !1948
  br i1 %tobool4.not, label %while.cond5.outer.preheader, label %cleanup192

while.cond5.outer.preheader:                      ; preds = %S_my_atof_infnan.exit.thread, %S_my_atof_infnan.exit
  br label %while.cond5.outer.outer, !dbg !1949

while.cond5.outer.outer:                          ; preds = %while.cond5.outer.outer.backedge, %while.cond5.outer.preheader
  %s.2.ph.ph = phi ptr [ %s.1, %while.cond5.outer.preheader ], [ %s.2.ph.ph.be, %while.cond5.outer.outer.backedge ]
  %seen_digit.0.ph.ph = phi i8 [ 0, %while.cond5.outer.preheader ], [ 1, %while.cond5.outer.outer.backedge ]
  %exp_adjust.sroa.0.0.ph.ph = phi i32 [ 0, %while.cond5.outer.preheader ], [ %exp_adjust.sroa.0.0.ph.ph.be, %while.cond5.outer.outer.backedge ]
  %exp_adjust.sroa.9.0.ph.ph = phi i32 [ 0, %while.cond5.outer.preheader ], [ %exp_adjust.sroa.9.2, %while.cond5.outer.outer.backedge ]
  %seen_dp.0.ph.ph = phi i32 [ 0, %while.cond5.outer.preheader ], [ %seen_dp.0.ph.ph624, %while.cond5.outer.outer.backedge ]
  %digit.0.ph.ph = phi i32 [ 0, %while.cond5.outer.preheader ], [ %sub.lcssa, %while.cond5.outer.outer.backedge ]
  %sig_digits.0.ph.ph = phi i32 [ 0, %while.cond5.outer.preheader ], [ %inc23, %while.cond5.outer.outer.backedge ]
  br label %while.cond5.outer.outer620, !dbg !1949

while.cond5.outer.outer620:                       ; preds = %while.cond5.outer.outer, %if.then101
  %s.2.ph.ph621 = phi ptr [ %s.2.ph.ph, %while.cond5.outer.outer ], [ %incdec.ptr.i, %if.then101 ]
  %seen_digit.0.ph.ph622 = phi i8 [ %seen_digit.0.ph.ph, %while.cond5.outer.outer ], [ %seen_digit.0.lcssa, %if.then101 ]
  %exp_adjust.sroa.9.0.ph.ph623 = phi i32 [ %exp_adjust.sroa.9.0.ph.ph, %while.cond5.outer.outer ], [ %exp_adjust.sroa.9.0.lcssa, %if.then101 ]
  %seen_dp.0.ph.ph624 = phi i32 [ %seen_dp.0.ph.ph, %while.cond5.outer.outer ], [ 1, %if.then101 ]
  %digit.0.ph.ph625 = phi i32 [ %digit.0.ph.ph, %while.cond5.outer.outer ], [ %digit.0.lcssa, %if.then101 ]
  %sig_digits.0.ph.ph626 = phi i32 [ %sig_digits.0.ph.ph, %while.cond5.outer.outer ], [ %sig_digits.0.lcssa, %if.then101 ]
  %tobool14.not = icmp eq i32 %seen_dp.0.ph.ph624, 0
  %not.tobool14.not = xor i1 %tobool14.not, true
  %inc = zext i1 %not.tobool14.not to i32
  %3 = zext i32 %seen_dp.0.ph.ph624 to i64
  %arrayidx67 = getelementptr inbounds [2 x i64], ptr %accumulator, i64 0, i64 %3
  %arrayidx93.phi.trans.insert = getelementptr inbounds [2 x i32], ptr %exp_acc, i64 0, i64 %3
  %arrayidx72 = getelementptr inbounds [3 x double], ptr %result, i64 0, i64 %3
  %arrayidx74 = getelementptr inbounds [2 x i32], ptr %exp_acc, i64 0, i64 %3
  %arrayidx93 = getelementptr inbounds [2 x i32], ptr %exp_acc, i64 0, i64 %3
  br label %while.cond5.outer, !dbg !1951

while.cond5.outer:                                ; preds = %while.cond5.outer.outer620, %if.end85
  %s.2.ph = phi ptr [ %incdec.ptr12.lcssa, %if.end85 ], [ %s.2.ph.ph621, %while.cond5.outer.outer620 ]
  %seen_digit.0.ph = phi i8 [ 1, %if.end85 ], [ %seen_digit.0.ph.ph622, %while.cond5.outer.outer620 ]
  %exp_adjust.sroa.9.0.ph = phi i32 [ %spec.select.lcssa, %if.end85 ], [ %exp_adjust.sroa.9.0.ph.ph623, %while.cond5.outer.outer620 ]
  %digit.0.ph = phi i32 [ %sub.lcssa, %if.end85 ], [ %digit.0.ph.ph625, %while.cond5.outer.outer620 ]
  %sig_digits.0.ph = phi i32 [ %inc23, %if.end85 ], [ %sig_digits.0.ph.ph626, %while.cond5.outer.outer620 ]
  call void @llvm.dbg.value(metadata i32 %sig_digits.0.ph, metadata !1879, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %digit.0.ph, metadata !1877, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %seen_dp.0.ph.ph624, metadata !1876, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.9.0.ph, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.0.0.ph.ph, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata i8 %seen_digit.0.ph, metadata !1871, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.2.ph, metadata !1862, metadata !DIExpression()), !dbg !1885
  %4 = load i8, ptr %s.2.ph, align 1, !dbg !1952
  %idxprom7516 = zext i8 %4 to i64, !dbg !1952
  %arrayidx8517 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom7516, !dbg !1952
  %5 = load i32, ptr %arrayidx8517, align 4, !dbg !1952
  %and9518 = and i32 %5, 2, !dbg !1952
  %tobool10.not519 = icmp eq i32 %and9518, 0, !dbg !1952
  br i1 %tobool10.not519, label %if.else96, label %if.then11.lr.ph, !dbg !1949

if.then11.lr.ph:                                  ; preds = %while.cond5.outer
  call void @llvm.dbg.value(metadata i32 %sig_digits.0.ph, metadata !1879, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %digit.0.ph, metadata !1877, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.9.0.ph, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.2.ph, metadata !1862, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %digit.0.ph, metadata !1878, metadata !DIExpression()), !dbg !1885
  %incdec.ptr12604 = getelementptr inbounds i8, ptr %s.2.ph, i64 1, !dbg !1954
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12604, metadata !1862, metadata !DIExpression()), !dbg !1885
  %conv13605 = sext i8 %4 to i32, !dbg !1956
  %sub606 = add nsw i32 %conv13605, -48, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %sub606, metadata !1877, metadata !DIExpression()), !dbg !1885
  %spec.select607 = add nsw i32 %exp_adjust.sroa.9.0.ph, %inc, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %spec.select607, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  %tobool18608 = icmp eq i32 %sig_digits.0.ph, 0, !dbg !1959
  %cmp19609 = icmp eq i32 %sub606, 0
  %or.cond610 = select i1 %tobool18608, i1 %cmp19609, i1 false, !dbg !1961
  br i1 %or.cond610, label %while.cond5, label %if.end22, !dbg !1961, !llvm.loop !1962

while.cond5:                                      ; preds = %if.then11.lr.ph, %if.then11
  %spec.select612 = phi i32 [ %spec.select, %if.then11 ], [ %spec.select607, %if.then11.lr.ph ]
  %incdec.ptr12611 = phi ptr [ %incdec.ptr12, %if.then11 ], [ %incdec.ptr12604, %if.then11.lr.ph ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1879, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %seen_dp.0.ph.ph624, metadata !1876, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 undef, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.0.0.ph.ph, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr undef, metadata !1862, metadata !DIExpression()), !dbg !1885
  %6 = load i8, ptr %incdec.ptr12611, align 1, !dbg !1952
  %idxprom7 = zext i8 %6 to i64, !dbg !1952
  %arrayidx8 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom7, !dbg !1952
  %7 = load i32, ptr %arrayidx8, align 4, !dbg !1952
  %and9 = and i32 %7, 2, !dbg !1952
  %tobool10.not = icmp eq i32 %and9, 0, !dbg !1952
  br i1 %tobool10.not, label %if.else96, label %if.then11, !dbg !1949, !llvm.loop !1962

if.then11:                                        ; preds = %while.cond5
  call void @llvm.dbg.value(metadata i32 0, metadata !1879, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %spec.select612, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12611, metadata !1862, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1885
  %incdec.ptr12 = getelementptr inbounds i8, ptr %incdec.ptr12611, i64 1, !dbg !1954
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12, metadata !1862, metadata !DIExpression()), !dbg !1885
  %conv13 = sext i8 %6 to i32, !dbg !1956
  %sub = add nsw i32 %conv13, -48, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1877, metadata !DIExpression()), !dbg !1885
  %spec.select = add nsw i32 %spec.select612, %inc, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  %cmp19 = icmp eq i32 %sub, 0
  br i1 %cmp19, label %while.cond5, label %if.end22, !dbg !1961, !llvm.loop !1962

if.end22:                                         ; preds = %if.then11, %if.then11.lr.ph
  %.lcssa593 = phi i8 [ %4, %if.then11.lr.ph ], [ %6, %if.then11 ]
  %sig_digits.0523.lcssa = phi i32 [ %sig_digits.0.ph, %if.then11.lr.ph ], [ 0, %if.then11 ]
  %digit.0522.lcssa = phi i32 [ %digit.0.ph, %if.then11.lr.ph ], [ 0, %if.then11 ]
  %exp_adjust.sroa.9.0521.lcssa = phi i32 [ %exp_adjust.sroa.9.0.ph, %if.then11.lr.ph ], [ %spec.select612, %if.then11 ]
  %incdec.ptr12.lcssa = phi ptr [ %incdec.ptr12604, %if.then11.lr.ph ], [ %incdec.ptr12, %if.then11 ], !dbg !1954
  %sub.lcssa = phi i32 [ %sub606, %if.then11.lr.ph ], [ %sub, %if.then11 ], !dbg !1957
  %spec.select.lcssa = phi i32 [ %spec.select607, %if.then11.lr.ph ], [ %spec.select, %if.then11 ], !dbg !1958
  %inc23 = add nsw i32 %sig_digits.0523.lcssa, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %inc23, metadata !1879, metadata !DIExpression()), !dbg !1885
  %cmp24 = icmp sgt i32 %sig_digits.0523.lcssa, 16, !dbg !1966
  br i1 %cmp24, label %if.then26, label %if.else65, !dbg !1967

if.then26:                                        ; preds = %if.end22
  %cmp27 = icmp sgt i8 %.lcssa593, 53, !dbg !1968
  br i1 %cmp27, label %if.end43.sink.split, label %if.else, !dbg !1971

if.else:                                          ; preds = %if.then26
  %cmp33 = icmp ne i32 %sub.lcssa, 5, !dbg !1972
  %8 = and i32 %digit.0522.lcssa, 1
  %tobool36.not = icmp eq i32 %8, 0
  %or.cond245 = select i1 %cmp33, i1 true, i1 %tobool36.not, !dbg !1974
  br i1 %or.cond245, label %if.end43, label %if.end43.sink.split, !dbg !1974

if.end43.sink.split:                              ; preds = %if.else, %if.then26
  %9 = zext i32 %seen_dp.0.ph.ph624 to i64
  %arrayidx31 = getelementptr inbounds [2 x i64], ptr %accumulator, i64 0, i64 %9, !dbg !1975
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !1975
  %inc40 = add i64 %10, 1, !dbg !1975
  store i64 %inc40, ptr %arrayidx31, align 8, !dbg !1975
  br label %if.end43, !dbg !1976

if.end43:                                         ; preds = %if.end43.sink.split, %if.else
  br i1 %tobool14.not, label %if.else47, label %if.then45, !dbg !1976

if.then45:                                        ; preds = %if.end43
  %dec = add nsw i32 %spec.select.lcssa, -1, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  br label %if.end50, !dbg !1980

if.else47:                                        ; preds = %if.end43
  %inc49 = add nsw i32 %exp_adjust.sroa.0.0.ph.ph, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then45
  %exp_adjust.sroa.0.1 = phi i32 [ %exp_adjust.sroa.0.0.ph.ph, %if.then45 ], [ %inc49, %if.else47 ], !dbg !1885
  %exp_adjust.sroa.9.2 = phi i32 [ %dec, %if.then45 ], [ %exp_adjust.sroa.9.0521.lcssa, %if.else47 ], !dbg !1983
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.9.2, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.0.1, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12.lcssa, metadata !1862, metadata !DIExpression()), !dbg !1885
  %11 = load i8, ptr %incdec.ptr12.lcssa, align 1, !dbg !1984
  %idxprom52529 = zext i8 %11 to i64, !dbg !1984
  %arrayidx53530 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom52529, !dbg !1984
  %12 = load i32, ptr %arrayidx53530, align 4, !dbg !1984
  %and54531 = and i32 %12, 2, !dbg !1984
  %tobool55.not532 = icmp eq i32 %and54531, 0, !dbg !1984
  br i1 %tobool55.not532, label %while.cond5.outer.outer.backedge, label %while.body57.lr.ph, !dbg !1985

while.cond5.outer.outer.backedge:                 ; preds = %while.body57, %if.end50
  %s.2.ph.ph.be = phi ptr [ %incdec.ptr12.lcssa, %if.end50 ], [ %incdec.ptr58, %while.body57 ]
  %exp_adjust.sroa.0.0.ph.ph.be = phi i32 [ %exp_adjust.sroa.0.1, %if.end50 ], [ %spec.select246, %while.body57 ]
  br label %while.cond5.outer.outer, !dbg !1949, !llvm.loop !1962

while.body57.lr.ph:                               ; preds = %if.end50
  %13 = xor i32 %seen_dp.0.ph.ph624, 1
  br label %while.body57, !dbg !1985

while.body57:                                     ; preds = %while.body57.lr.ph, %while.body57
  %exp_adjust.sroa.0.2534 = phi i32 [ %exp_adjust.sroa.0.1, %while.body57.lr.ph ], [ %spec.select246, %while.body57 ]
  %s.3533 = phi ptr [ %incdec.ptr12.lcssa, %while.body57.lr.ph ], [ %incdec.ptr58, %while.body57 ]
  call void @llvm.dbg.value(metadata i32 %exp_adjust.sroa.0.2534, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.3533, metadata !1862, metadata !DIExpression()), !dbg !1885
  %incdec.ptr58 = getelementptr inbounds i8, ptr %s.3533, i64 1, !dbg !1986
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !1862, metadata !DIExpression()), !dbg !1885
  %spec.select246 = add nsw i32 %exp_adjust.sroa.0.2534, %13, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %spec.select246, metadata !1872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1885
  %14 = load i8, ptr %incdec.ptr58, align 1, !dbg !1984
  %idxprom52 = zext i8 %14 to i64, !dbg !1984
  %arrayidx53 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom52, !dbg !1984
  %15 = load i32, ptr %arrayidx53, align 4, !dbg !1984
  %and54 = and i32 %15, 2, !dbg !1984
  %tobool55.not = icmp eq i32 %and54, 0, !dbg !1984
  br i1 %tobool55.not, label %while.cond5.outer.outer.backedge, label %while.body57, !dbg !1985, !llvm.loop !1962

if.else65:                                        ; preds = %if.end22
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !1989
  %cmp68 = icmp ugt i64 %16, 1844674407370955160, !dbg !1992
  br i1 %cmp68, label %if.then70, label %if.else65.if.end85_crit_edge, !dbg !1993

if.else65.if.end85_crit_edge:                     ; preds = %if.else65
  %.pre = load i32, ptr %arrayidx93.phi.trans.insert, align 4, !dbg !1994
  br label %if.end85, !dbg !1993

if.then70:                                        ; preds = %if.else65
  %17 = load double, ptr %arrayidx72, align 8, !dbg !1995
  %18 = load i32, ptr %arrayidx74, align 4, !dbg !1997
  call void @llvm.dbg.value(metadata double %17, metadata !1998, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %18, metadata !2003, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double 1.000000e+01, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2008
  %cmp.i = icmp eq i32 %18, 0, !dbg !2010
  br i1 %cmp.i, label %S_mulexp10.exit, label %if.end.i248, !dbg !2012

if.end.i248:                                      ; preds = %if.then70
  %cmp1.i = fcmp oeq double %17, 0.000000e+00, !dbg !2013
  br i1 %cmp1.i, label %S_mulexp10.exit, label %if.end3.i, !dbg !2015

if.end3.i:                                        ; preds = %if.end.i248
  %cmp4.i = icmp slt i32 %18, 0, !dbg !2016
  br i1 %cmp4.i, label %if.then5.i, label %if.end10.i250, !dbg !2018

if.then5.i:                                       ; preds = %if.end3.i
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2008
  %sub.i = sub nsw i32 0, %18, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %17, metadata !1998, metadata !DIExpression()), !dbg !2008
  %cmp647.i = icmp ult i32 %18, -308
  br i1 %cmp647.i, label %while.body.i, label %while.end.i, !dbg !2021

while.body.i:                                     ; preds = %if.then5.i, %while.body.i
  %exponent.addr.050.i = phi i32 [ %dec.i, %while.body.i ], [ %sub.i, %if.then5.i ]
  %value.addr.049.i = phi double [ %div.i, %while.body.i ], [ %17, %if.then5.i ]
  call void @llvm.dbg.value(metadata i32 %exponent.addr.050.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %value.addr.049.i, metadata !1998, metadata !DIExpression()), !dbg !2008
  %dec.i = add nsw i32 %exponent.addr.050.i, -1, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  %div.i = fdiv double %value.addr.049.i, 1.000000e+01, !dbg !2024
  call void @llvm.dbg.value(metadata double %div.i, metadata !1998, metadata !DIExpression()), !dbg !2008
  %tobool.i = fcmp une double %div.i, 0.000000e+00, !dbg !2025
  %cmp6.i = icmp ugt i32 %exponent.addr.050.i, 309
  %or.cond.i249 = select i1 %tobool.i, i1 %cmp6.i, i1 false, !dbg !2021
  br i1 %or.cond.i249, label %while.body.i, label %while.end.i, !dbg !2021, !llvm.loop !2026

while.end.i:                                      ; preds = %while.body.i, %if.then5.i
  %value.addr.0.lcssa.i = phi double [ %17, %if.then5.i ], [ %div.i, %while.body.i ]
  %exponent.addr.0.lcssa.i = phi i32 [ %sub.i, %if.then5.i ], [ %dec.i, %while.body.i ], !dbg !2029
  %cmp7.i = fcmp oeq double %value.addr.0.lcssa.i, 0.000000e+00, !dbg !2030
  br i1 %cmp7.i, label %S_mulexp10.exit, label %if.end10.i250, !dbg !2032

if.end10.i250:                                    ; preds = %while.end.i, %if.end3.i
  %value.addr.1.i = phi double [ %value.addr.0.lcssa.i, %while.end.i ], [ %17, %if.end3.i ]
  %exponent.addr.1.i = phi i32 [ %exponent.addr.0.lcssa.i, %while.end.i ], [ %18, %if.end3.i ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %exponent.addr.1.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %value.addr.1.i, metadata !1998, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2008
  br label %for.cond.i, !dbg !2033

for.cond.i:                                       ; preds = %if.end17.i, %if.end10.i250
  %exponent.addr.2.i = phi i32 [ %exponent.addr.1.i, %if.end10.i250 ], [ %exponent.addr.3.i, %if.end17.i ], !dbg !2008
  %result.0.i = phi double [ 1.000000e+00, %if.end10.i250 ], [ %result.1.i, %if.end17.i ], !dbg !2008
  %power.0.i = phi double [ 1.000000e+01, %if.end10.i250 ], [ %mul18.i, %if.end17.i ], !dbg !2008
  %bit.0.i = phi i32 [ 1, %if.end10.i250 ], [ %shl.i, %if.end17.i ], !dbg !2035
  call void @llvm.dbg.value(metadata i32 %bit.0.i, metadata !2007, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %power.0.i, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %result.0.i, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %exponent.addr.2.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  %and.i251 = and i32 %bit.0.i, %exponent.addr.2.i, !dbg !2036
  %tobool12.not.i = icmp eq i32 %and.i251, 0, !dbg !2036
  br i1 %tobool12.not.i, label %if.end17.i, label %if.then13.i, !dbg !2040

if.then13.i:                                      ; preds = %for.cond.i
  %xor.i = xor i32 %bit.0.i, %exponent.addr.2.i, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %xor.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  %mul.i = fmul double %result.0.i, %power.0.i, !dbg !2043
  call void @llvm.dbg.value(metadata double %mul.i, metadata !2004, metadata !DIExpression()), !dbg !2008
  %cmp14.i = icmp eq i32 %xor.i, 0, !dbg !2044
  br i1 %cmp14.i, label %for.end.i, label %if.end17.i, !dbg !2046

if.end17.i:                                       ; preds = %if.then13.i, %for.cond.i
  %exponent.addr.3.i = phi i32 [ %xor.i, %if.then13.i ], [ %exponent.addr.2.i, %for.cond.i ], !dbg !2008
  %result.1.i = phi double [ %mul.i, %if.then13.i ], [ %result.0.i, %for.cond.i ], !dbg !2008
  call void @llvm.dbg.value(metadata double %result.1.i, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %exponent.addr.3.i, metadata !2003, metadata !DIExpression()), !dbg !2008
  %mul18.i = fmul double %power.0.i, %power.0.i, !dbg !2047
  call void @llvm.dbg.value(metadata double %mul18.i, metadata !2005, metadata !DIExpression()), !dbg !2008
  %shl.i = shl i32 %bit.0.i, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %shl.i, metadata !2007, metadata !DIExpression()), !dbg !2008
  br label %for.cond.i, !dbg !2049, !llvm.loop !2050

for.end.i:                                        ; preds = %if.then13.i
  call void @llvm.dbg.value(metadata double %mul.i, metadata !2004, metadata !DIExpression()), !dbg !2008
  br i1 %cmp4.i, label %cond.true.i, label %cond.false.i, !dbg !2053

cond.true.i:                                      ; preds = %for.end.i
  %div20.i = fdiv double %value.addr.1.i, %mul.i, !dbg !2054
  br label %S_mulexp10.exit, !dbg !2053

cond.false.i:                                     ; preds = %for.end.i
  %mul21.i = fmul double %value.addr.1.i, %mul.i, !dbg !2055
  br label %S_mulexp10.exit, !dbg !2053

S_mulexp10.exit:                                  ; preds = %if.then70, %if.end.i248, %while.end.i, %cond.true.i, %cond.false.i
  %retval.0.i = phi double [ %17, %if.then70 ], [ 0.000000e+00, %if.end.i248 ], [ %value.addr.0.lcssa.i, %while.end.i ], [ %div20.i, %cond.true.i ], [ %mul21.i, %cond.false.i ], !dbg !2008
  %conv78 = uitofp i64 %16 to double, !dbg !2056
  %add = fadd double %retval.0.i, %conv78, !dbg !2057
  store double %add, ptr %arrayidx72, align 8, !dbg !2058
  br label %if.end85, !dbg !2059

if.end85:                                         ; preds = %if.else65.if.end85_crit_edge, %S_mulexp10.exit
  %19 = phi i32 [ 0, %S_mulexp10.exit ], [ %.pre, %if.else65.if.end85_crit_edge ], !dbg !1994
  %20 = phi i64 [ 0, %S_mulexp10.exit ], [ %16, %if.else65.if.end85_crit_edge ], !dbg !2060
  %mul = mul nuw i64 %20, 10, !dbg !2061
  %conv88 = sext i32 %sub.lcssa to i64, !dbg !2062
  %add89 = add i64 %mul, %conv88, !dbg !2063
  store i64 %add89, ptr %arrayidx67, align 8, !dbg !2064
  %inc94 = add nsw i32 %19, 1, !dbg !1994
  store i32 %inc94, ptr %arrayidx93, align 4, !dbg !1994
  br label %while.cond5.outer, !llvm.loop !1962

if.else96:                                        ; preds = %while.cond5.outer, %while.cond5
  %s.2.lcssa = phi ptr [ %incdec.ptr12611, %while.cond5 ], [ %s.2.ph, %while.cond5.outer ], !dbg !1885
  %seen_digit.0.lcssa = phi i8 [ 1, %while.cond5 ], [ %seen_digit.0.ph, %while.cond5.outer ], !dbg !1885
  %exp_adjust.sroa.9.0.lcssa = phi i32 [ %spec.select612, %while.cond5 ], [ %exp_adjust.sroa.9.0.ph, %while.cond5.outer ], !dbg !1885
  %digit.0.lcssa = phi i32 [ 0, %while.cond5 ], [ %digit.0.ph, %while.cond5.outer ], !dbg !1885
  %sig_digits.0.lcssa = phi i32 [ 0, %while.cond5 ], [ %sig_digits.0.ph, %while.cond5.outer ], !dbg !1885
  %.lcssa = phi i8 [ %6, %while.cond5 ], [ %4, %while.cond5.outer ], !dbg !1952
  %tobool97.not = icmp eq i32 %seen_dp.0.ph.ph624, 0, !dbg !2065
  br i1 %tobool97.not, label %land.lhs.true98, label %while.end116, !dbg !2067

land.lhs.true98:                                  ; preds = %if.else96
  call void @llvm.dbg.value(metadata ptr undef, metadata !1140, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1141, metadata !DIExpression()), !dbg !2068
  %cmp.i252 = icmp ult ptr %s.2.lcssa, %add.ptr, !dbg !2070
  %cmp1.i253 = icmp eq i8 %.lcssa, 46
  %or.cond498 = select i1 %cmp.i252, i1 %cmp1.i253, i1 false, !dbg !2071
  br i1 %or.cond498, label %if.then101, label %while.end116, !dbg !2071

if.then101:                                       ; preds = %land.lhs.true98
  %incdec.ptr.i = getelementptr inbounds i8, ptr %s.2.lcssa, i64 1, !dbg !2072
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !1885
  %cmp102 = icmp sgt i32 %sig_digits.0.lcssa, 17, !dbg !2073
  br i1 %cmp102, label %do.body, label %while.cond5.outer.outer620, !dbg !2076, !llvm.loop !1962

do.body:                                          ; preds = %if.then101, %do.body
  %s.5 = phi ptr [ %incdec.ptr105, %do.body ], [ %incdec.ptr.i, %if.then101 ], !dbg !2077
  call void @llvm.dbg.value(metadata ptr %s.5, metadata !1862, metadata !DIExpression()), !dbg !1885
  %incdec.ptr105 = getelementptr inbounds i8, ptr %s.5, i64 1, !dbg !2078
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !1862, metadata !DIExpression()), !dbg !1885
  %21 = load i8, ptr %incdec.ptr105, align 1, !dbg !2081
  %idxprom106 = zext i8 %21 to i64, !dbg !2081
  %arrayidx107 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom106, !dbg !2081
  %22 = load i32, ptr %arrayidx107, align 4, !dbg !2081
  %and108 = and i32 %22, 2, !dbg !2081
  %tobool109.not = icmp eq i32 %and108, 0, !dbg !2081
  br i1 %tobool109.not, label %while.end116, label %do.body, !dbg !2082, !llvm.loop !2083

while.end116:                                     ; preds = %land.lhs.true98, %if.else96, %do.body
  %s.7 = phi ptr [ %incdec.ptr105, %do.body ], [ %s.2.lcssa, %if.else96 ], [ %s.2.lcssa, %land.lhs.true98 ], !dbg !1885
  %tobool124.not = phi i1 [ false, %do.body ], [ %tobool97.not, %if.else96 ], [ %tobool97.not, %land.lhs.true98 ], !dbg !1885
  call void @llvm.dbg.value(metadata i32 undef, metadata !1876, metadata !DIExpression()), !dbg !1885
  %23 = load double, ptr %result, align 16, !dbg !2086
  %24 = load i32, ptr %exp_acc, align 8, !dbg !2087
  call void @llvm.dbg.value(metadata double %23, metadata !1998, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %24, metadata !2003, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2004, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double 1.000000e+01, metadata !2005, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2088
  %cmp.i256 = icmp eq i32 %24, 0, !dbg !2090
  br i1 %cmp.i256, label %S_mulexp10.exit301, label %if.end.i258, !dbg !2091

if.end.i258:                                      ; preds = %while.end116
  %cmp1.i257 = fcmp oeq double %23, 0.000000e+00, !dbg !2092
  br i1 %cmp1.i257, label %S_mulexp10.exit301, label %if.end3.i260, !dbg !2093

if.end3.i260:                                     ; preds = %if.end.i258
  %cmp4.i259 = icmp slt i32 %24, 0, !dbg !2094
  br i1 %cmp4.i259, label %if.then5.i263, label %if.end10.i278, !dbg !2095

if.then5.i263:                                    ; preds = %if.end3.i260
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2088
  %sub.i261 = sub nsw i32 0, %24, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %sub.i261, metadata !2003, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %23, metadata !1998, metadata !DIExpression()), !dbg !2088
  %cmp647.i262 = icmp ult i32 %24, -308
  br i1 %cmp647.i262, label %while.body.i271, label %while.end.i275, !dbg !2097

while.body.i271:                                  ; preds = %if.then5.i263, %while.body.i271
  %exponent.addr.050.i264 = phi i32 [ %dec.i266, %while.body.i271 ], [ %sub.i261, %if.then5.i263 ]
  %value.addr.049.i265 = phi double [ %div.i267, %while.body.i271 ], [ %23, %if.then5.i263 ]
  call void @llvm.dbg.value(metadata i32 %exponent.addr.050.i264, metadata !2003, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %value.addr.049.i265, metadata !1998, metadata !DIExpression()), !dbg !2088
  %dec.i266 = add nsw i32 %exponent.addr.050.i264, -1, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %dec.i266, metadata !2003, metadata !DIExpression()), !dbg !2088
  %div.i267 = fdiv double %value.addr.049.i265, 1.000000e+01, !dbg !2099
  call void @llvm.dbg.value(metadata double %div.i267, metadata !1998, metadata !DIExpression()), !dbg !2088
  %tobool.i268 = fcmp une double %div.i267, 0.000000e+00, !dbg !2100
  %cmp6.i269 = icmp ugt i32 %exponent.addr.050.i264, 309
  %or.cond.i270 = select i1 %tobool.i268, i1 %cmp6.i269, i1 false, !dbg !2097
  br i1 %or.cond.i270, label %while.body.i271, label %while.end.i275, !dbg !2097, !llvm.loop !2101

while.end.i275:                                   ; preds = %while.body.i271, %if.then5.i263
  %value.addr.0.lcssa.i272 = phi double [ %23, %if.then5.i263 ], [ %div.i267, %while.body.i271 ]
  %exponent.addr.0.lcssa.i273 = phi i32 [ %sub.i261, %if.then5.i263 ], [ %dec.i266, %while.body.i271 ], !dbg !2104
  %cmp7.i274 = fcmp oeq double %value.addr.0.lcssa.i272, 0.000000e+00, !dbg !2105
  br i1 %cmp7.i274, label %S_mulexp10.exit301, label %if.end10.i278, !dbg !2106

if.end10.i278:                                    ; preds = %while.end.i275, %if.end3.i260
  %value.addr.1.i276 = phi double [ %value.addr.0.lcssa.i272, %while.end.i275 ], [ %23, %if.end3.i260 ]
  %exponent.addr.1.i277 = phi i32 [ %exponent.addr.0.lcssa.i273, %while.end.i275 ], [ %24, %if.end3.i260 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2006, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %exponent.addr.1.i277, metadata !2003, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %value.addr.1.i276, metadata !1998, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2088
  br label %for.cond.i285, !dbg !2107

for.cond.i285:                                    ; preds = %if.end17.i294, %if.end10.i278
  %exponent.addr.2.i279 = phi i32 [ %exponent.addr.1.i277, %if.end10.i278 ], [ %exponent.addr.3.i290, %if.end17.i294 ], !dbg !2088
  %result.0.i280 = phi double [ 1.000000e+00, %if.end10.i278 ], [ %result.1.i291, %if.end17.i294 ], !dbg !2088
  %power.0.i281 = phi double [ 1.000000e+01, %if.end10.i278 ], [ %mul18.i292, %if.end17.i294 ], !dbg !2088
  %bit.0.i282 = phi i32 [ 1, %if.end10.i278 ], [ %shl.i293, %if.end17.i294 ], !dbg !2108
  call void @llvm.dbg.value(metadata i32 %bit.0.i282, metadata !2007, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %power.0.i281, metadata !2005, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %result.0.i280, metadata !2004, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %exponent.addr.2.i279, metadata !2003, metadata !DIExpression()), !dbg !2088
  %and.i283 = and i32 %bit.0.i282, %exponent.addr.2.i279, !dbg !2109
  %tobool12.not.i284 = icmp eq i32 %and.i283, 0, !dbg !2109
  br i1 %tobool12.not.i284, label %if.end17.i294, label %if.then13.i289, !dbg !2110

if.then13.i289:                                   ; preds = %for.cond.i285
  %xor.i286 = xor i32 %bit.0.i282, %exponent.addr.2.i279, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %xor.i286, metadata !2003, metadata !DIExpression()), !dbg !2088
  %mul.i287 = fmul double %result.0.i280, %power.0.i281, !dbg !2112
  call void @llvm.dbg.value(metadata double %mul.i287, metadata !2004, metadata !DIExpression()), !dbg !2088
  %cmp14.i288 = icmp eq i32 %xor.i286, 0, !dbg !2113
  br i1 %cmp14.i288, label %for.end.i295, label %if.end17.i294, !dbg !2114

if.end17.i294:                                    ; preds = %if.then13.i289, %for.cond.i285
  %exponent.addr.3.i290 = phi i32 [ %xor.i286, %if.then13.i289 ], [ %exponent.addr.2.i279, %for.cond.i285 ], !dbg !2088
  %result.1.i291 = phi double [ %mul.i287, %if.then13.i289 ], [ %result.0.i280, %for.cond.i285 ], !dbg !2088
  call void @llvm.dbg.value(metadata double %result.1.i291, metadata !2004, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %exponent.addr.3.i290, metadata !2003, metadata !DIExpression()), !dbg !2088
  %mul18.i292 = fmul double %power.0.i281, %power.0.i281, !dbg !2115
  call void @llvm.dbg.value(metadata double %mul18.i292, metadata !2005, metadata !DIExpression()), !dbg !2088
  %shl.i293 = shl i32 %bit.0.i282, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %shl.i293, metadata !2007, metadata !DIExpression()), !dbg !2088
  br label %for.cond.i285, !dbg !2117, !llvm.loop !2118

for.end.i295:                                     ; preds = %if.then13.i289
  call void @llvm.dbg.value(metadata double %mul.i287, metadata !2004, metadata !DIExpression()), !dbg !2088
  br i1 %cmp4.i259, label %cond.true.i297, label %cond.false.i299, !dbg !2121

cond.true.i297:                                   ; preds = %for.end.i295
  %div20.i296 = fdiv double %value.addr.1.i276, %mul.i287, !dbg !2122
  br label %S_mulexp10.exit301, !dbg !2121

cond.false.i299:                                  ; preds = %for.end.i295
  %mul21.i298 = fmul double %value.addr.1.i276, %mul.i287, !dbg !2123
  br label %S_mulexp10.exit301, !dbg !2121

S_mulexp10.exit301:                               ; preds = %while.end116, %if.end.i258, %while.end.i275, %cond.true.i297, %cond.false.i299
  %retval.0.i300 = phi double [ %23, %while.end116 ], [ 0.000000e+00, %if.end.i258 ], [ %value.addr.0.lcssa.i272, %while.end.i275 ], [ %div20.i296, %cond.true.i297 ], [ %mul21.i298, %cond.false.i299 ], !dbg !2088
  %25 = load i64, ptr %accumulator, align 16, !dbg !2124
  %conv121 = uitofp i64 %25 to double, !dbg !2125
  %add122 = fadd double %retval.0.i300, %conv121, !dbg !2126
  store double %add122, ptr %result, align 16, !dbg !2127
  br i1 %tobool124.not, label %if.end133, label %if.then125, !dbg !2128

if.then125:                                       ; preds = %S_mulexp10.exit301
  %arrayidx126 = getelementptr inbounds [3 x double], ptr %result, i64 0, i64 1, !dbg !2129
  %26 = load double, ptr %arrayidx126, align 8, !dbg !2129
  %arrayidx127 = getelementptr inbounds [2 x i32], ptr %exp_acc, i64 0, i64 1, !dbg !2132
  %27 = load i32, ptr %arrayidx127, align 4, !dbg !2132
  call void @llvm.dbg.value(metadata double %26, metadata !1998, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %27, metadata !2003, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2004, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double 1.000000e+01, metadata !2005, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2133
  %cmp.i302 = icmp eq i32 %27, 0, !dbg !2135
  br i1 %cmp.i302, label %S_mulexp10.exit347, label %if.end.i304, !dbg !2136

if.end.i304:                                      ; preds = %if.then125
  %cmp1.i303 = fcmp oeq double %26, 0.000000e+00, !dbg !2137
  br i1 %cmp1.i303, label %S_mulexp10.exit347, label %if.end3.i306, !dbg !2138

if.end3.i306:                                     ; preds = %if.end.i304
  %cmp4.i305 = icmp slt i32 %27, 0, !dbg !2139
  br i1 %cmp4.i305, label %if.then5.i309, label %if.end10.i324, !dbg !2140

if.then5.i309:                                    ; preds = %if.end3.i306
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2133
  %sub.i307 = sub nsw i32 0, %27, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %sub.i307, metadata !2003, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double %26, metadata !1998, metadata !DIExpression()), !dbg !2133
  %cmp647.i308 = icmp ult i32 %27, -308
  br i1 %cmp647.i308, label %while.body.i317, label %while.end.i321, !dbg !2142

while.body.i317:                                  ; preds = %if.then5.i309, %while.body.i317
  %exponent.addr.050.i310 = phi i32 [ %dec.i312, %while.body.i317 ], [ %sub.i307, %if.then5.i309 ]
  %value.addr.049.i311 = phi double [ %div.i313, %while.body.i317 ], [ %26, %if.then5.i309 ]
  call void @llvm.dbg.value(metadata i32 %exponent.addr.050.i310, metadata !2003, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double %value.addr.049.i311, metadata !1998, metadata !DIExpression()), !dbg !2133
  %dec.i312 = add nsw i32 %exponent.addr.050.i310, -1, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %dec.i312, metadata !2003, metadata !DIExpression()), !dbg !2133
  %div.i313 = fdiv double %value.addr.049.i311, 1.000000e+01, !dbg !2144
  call void @llvm.dbg.value(metadata double %div.i313, metadata !1998, metadata !DIExpression()), !dbg !2133
  %tobool.i314 = fcmp une double %div.i313, 0.000000e+00, !dbg !2145
  %cmp6.i315 = icmp ugt i32 %exponent.addr.050.i310, 309
  %or.cond.i316 = select i1 %tobool.i314, i1 %cmp6.i315, i1 false, !dbg !2142
  br i1 %or.cond.i316, label %while.body.i317, label %while.end.i321, !dbg !2142, !llvm.loop !2146

while.end.i321:                                   ; preds = %while.body.i317, %if.then5.i309
  %value.addr.0.lcssa.i318 = phi double [ %26, %if.then5.i309 ], [ %div.i313, %while.body.i317 ]
  %exponent.addr.0.lcssa.i319 = phi i32 [ %sub.i307, %if.then5.i309 ], [ %dec.i312, %while.body.i317 ], !dbg !2149
  %cmp7.i320 = fcmp oeq double %value.addr.0.lcssa.i318, 0.000000e+00, !dbg !2150
  br i1 %cmp7.i320, label %S_mulexp10.exit347, label %if.end10.i324, !dbg !2151

if.end10.i324:                                    ; preds = %while.end.i321, %if.end3.i306
  %value.addr.1.i322 = phi double [ %value.addr.0.lcssa.i318, %while.end.i321 ], [ %26, %if.end3.i306 ]
  %exponent.addr.1.i323 = phi i32 [ %exponent.addr.0.lcssa.i319, %while.end.i321 ], [ %27, %if.end3.i306 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2006, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %exponent.addr.1.i323, metadata !2003, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double %value.addr.1.i322, metadata !1998, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2133
  br label %for.cond.i331, !dbg !2152

for.cond.i331:                                    ; preds = %if.end17.i340, %if.end10.i324
  %exponent.addr.2.i325 = phi i32 [ %exponent.addr.1.i323, %if.end10.i324 ], [ %exponent.addr.3.i336, %if.end17.i340 ], !dbg !2133
  %result.0.i326 = phi double [ 1.000000e+00, %if.end10.i324 ], [ %result.1.i337, %if.end17.i340 ], !dbg !2133
  %power.0.i327 = phi double [ 1.000000e+01, %if.end10.i324 ], [ %mul18.i338, %if.end17.i340 ], !dbg !2133
  %bit.0.i328 = phi i32 [ 1, %if.end10.i324 ], [ %shl.i339, %if.end17.i340 ], !dbg !2153
  call void @llvm.dbg.value(metadata i32 %bit.0.i328, metadata !2007, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double %power.0.i327, metadata !2005, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata double %result.0.i326, metadata !2004, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %exponent.addr.2.i325, metadata !2003, metadata !DIExpression()), !dbg !2133
  %and.i329 = and i32 %bit.0.i328, %exponent.addr.2.i325, !dbg !2154
  %tobool12.not.i330 = icmp eq i32 %and.i329, 0, !dbg !2154
  br i1 %tobool12.not.i330, label %if.end17.i340, label %if.then13.i335, !dbg !2155

if.then13.i335:                                   ; preds = %for.cond.i331
  %xor.i332 = xor i32 %bit.0.i328, %exponent.addr.2.i325, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %xor.i332, metadata !2003, metadata !DIExpression()), !dbg !2133
  %mul.i333 = fmul double %result.0.i326, %power.0.i327, !dbg !2157
  call void @llvm.dbg.value(metadata double %mul.i333, metadata !2004, metadata !DIExpression()), !dbg !2133
  %cmp14.i334 = icmp eq i32 %xor.i332, 0, !dbg !2158
  br i1 %cmp14.i334, label %for.end.i341, label %if.end17.i340, !dbg !2159

if.end17.i340:                                    ; preds = %if.then13.i335, %for.cond.i331
  %exponent.addr.3.i336 = phi i32 [ %xor.i332, %if.then13.i335 ], [ %exponent.addr.2.i325, %for.cond.i331 ], !dbg !2133
  %result.1.i337 = phi double [ %mul.i333, %if.then13.i335 ], [ %result.0.i326, %for.cond.i331 ], !dbg !2133
  call void @llvm.dbg.value(metadata double %result.1.i337, metadata !2004, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %exponent.addr.3.i336, metadata !2003, metadata !DIExpression()), !dbg !2133
  %mul18.i338 = fmul double %power.0.i327, %power.0.i327, !dbg !2160
  call void @llvm.dbg.value(metadata double %mul18.i338, metadata !2005, metadata !DIExpression()), !dbg !2133
  %shl.i339 = shl i32 %bit.0.i328, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %shl.i339, metadata !2007, metadata !DIExpression()), !dbg !2133
  br label %for.cond.i331, !dbg !2162, !llvm.loop !2163

for.end.i341:                                     ; preds = %if.then13.i335
  call void @llvm.dbg.value(metadata double %mul.i333, metadata !2004, metadata !DIExpression()), !dbg !2133
  br i1 %cmp4.i305, label %cond.true.i343, label %cond.false.i345, !dbg !2166

cond.true.i343:                                   ; preds = %for.end.i341
  %div20.i342 = fdiv double %value.addr.1.i322, %mul.i333, !dbg !2167
  br label %S_mulexp10.exit347, !dbg !2166

cond.false.i345:                                  ; preds = %for.end.i341
  %mul21.i344 = fmul double %value.addr.1.i322, %mul.i333, !dbg !2168
  br label %S_mulexp10.exit347, !dbg !2166

S_mulexp10.exit347:                               ; preds = %if.then125, %if.end.i304, %while.end.i321, %cond.true.i343, %cond.false.i345
  %retval.0.i346 = phi double [ %26, %if.then125 ], [ 0.000000e+00, %if.end.i304 ], [ %value.addr.0.lcssa.i318, %while.end.i321 ], [ %div20.i342, %cond.true.i343 ], [ %mul21.i344, %cond.false.i345 ], !dbg !2133
  %arrayidx129 = getelementptr inbounds [2 x i64], ptr %accumulator, i64 0, i64 1, !dbg !2169
  %28 = load i64, ptr %arrayidx129, align 8, !dbg !2169
  %conv130 = uitofp i64 %28 to double, !dbg !2170
  %add131 = fadd double %retval.0.i346, %conv130, !dbg !2171
  store double %add131, ptr %arrayidx126, align 8, !dbg !2172
  br label %if.end133, !dbg !2173

if.end133:                                        ; preds = %S_mulexp10.exit347, %S_mulexp10.exit301
  %29 = and i8 %seen_digit.0.lcssa, 1, !dbg !2174
  %tobool134.not = icmp eq i8 %29, 0, !dbg !2174
  br i1 %tobool134.not, label %if.end166, label %land.lhs.true136, !dbg !2175

land.lhs.true136:                                 ; preds = %if.end133
  call void @llvm.dbg.value(metadata ptr %s.7, metadata !1862, metadata !DIExpression()), !dbg !1885
  %30 = load i8, ptr %s.7, align 1, !dbg !2176
  %31 = and i8 %30, -33, !dbg !2176
  %cmp139 = icmp eq i8 %31, 69, !dbg !2176
  br i1 %cmp139, label %if.then141, label %if.end166, !dbg !2177

if.then141:                                       ; preds = %land.lhs.true136
  call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !2178
  %incdec.ptr142 = getelementptr inbounds i8, ptr %s.7, i64 1, !dbg !2179
  call void @llvm.dbg.value(metadata ptr %incdec.ptr142, metadata !1862, metadata !DIExpression()), !dbg !1885
  %32 = load i8, ptr %incdec.ptr142, align 1, !dbg !2180
  %conv143 = sext i8 %32 to i32, !dbg !2180
  switch i32 %conv143, label %sw.epilog147 [
    i32 45, label %sw.bb144
    i32 43, label %sw.bb145
  ], !dbg !2181

sw.bb144:                                         ; preds = %if.then141
  call void @llvm.dbg.value(metadata i8 1, metadata !1882, metadata !DIExpression()), !dbg !2178
  br label %sw.bb145, !dbg !2182

sw.bb145:                                         ; preds = %if.then141, %sw.bb144
  %expnegative.0 = phi i1 [ false, %if.then141 ], [ true, %sw.bb144 ], !dbg !2178
  call void @llvm.dbg.value(metadata i8 undef, metadata !1882, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata ptr %incdec.ptr142, metadata !1862, metadata !DIExpression()), !dbg !1885
  %incdec.ptr146 = getelementptr inbounds i8, ptr %s.7, i64 2, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %incdec.ptr146, metadata !1862, metadata !DIExpression()), !dbg !1885
  %.pre563 = load i8, ptr %incdec.ptr146, align 1, !dbg !2185
  br label %sw.epilog147, !dbg !2186

sw.epilog147:                                     ; preds = %sw.bb145, %if.then141
  %33 = phi i8 [ %32, %if.then141 ], [ %.pre563, %sw.bb145 ], !dbg !2185
  %s.8 = phi ptr [ %incdec.ptr142, %if.then141 ], [ %incdec.ptr146, %sw.bb145 ], !dbg !2178
  %expnegative.1 = phi i1 [ false, %if.then141 ], [ %expnegative.0, %sw.bb145 ], !dbg !2187
  call void @llvm.dbg.value(metadata i8 undef, metadata !1882, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 0, metadata !1875, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.8, metadata !1862, metadata !DIExpression()), !dbg !1885
  %idxprom149537 = zext i8 %33 to i64, !dbg !2185
  %arrayidx150538 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom149537, !dbg !2185
  %34 = load i32, ptr %arrayidx150538, align 4, !dbg !2185
  %and151539 = and i32 %34, 2, !dbg !2185
  %tobool152.not540 = icmp eq i32 %and151539, 0, !dbg !2185
  br i1 %tobool152.not540, label %while.end161, label %while.body155, !dbg !2188

while.body155:                                    ; preds = %sw.epilog147, %while.body155
  %35 = phi i8 [ %36, %while.body155 ], [ %33, %sw.epilog147 ]
  %exponent.0542 = phi i32 [ %add160, %while.body155 ], [ 0, %sw.epilog147 ]
  %s.9541 = phi ptr [ %incdec.ptr157, %while.body155 ], [ %s.8, %sw.epilog147 ]
  call void @llvm.dbg.value(metadata i32 %exponent.0542, metadata !1875, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %s.9541, metadata !1862, metadata !DIExpression()), !dbg !1885
  %mul156 = mul nsw i32 %exponent.0542, 10, !dbg !2189
  %incdec.ptr157 = getelementptr inbounds i8, ptr %s.9541, i64 1, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %incdec.ptr157, metadata !1862, metadata !DIExpression()), !dbg !1885
  %conv158 = sext i8 %35 to i32, !dbg !2191
  %sub159 = add i32 %mul156, -48, !dbg !2192
  %add160 = add i32 %sub159, %conv158, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %add160, metadata !1875, metadata !DIExpression()), !dbg !1885
  %36 = load i8, ptr %incdec.ptr157, align 1, !dbg !2185
  %idxprom149 = zext i8 %36 to i64, !dbg !2185
  %arrayidx150 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom149, !dbg !2185
  %37 = load i32, ptr %arrayidx150, align 4, !dbg !2185
  %and151 = and i32 %37, 2, !dbg !2185
  %tobool152.not = icmp eq i32 %and151, 0, !dbg !2185
  br i1 %tobool152.not, label %while.end161, label %while.body155, !dbg !2188, !llvm.loop !2194

while.end161:                                     ; preds = %while.body155, %sw.epilog147
  %s.9.lcssa = phi ptr [ %s.8, %sw.epilog147 ], [ %incdec.ptr157, %while.body155 ], !dbg !2178
  %exponent.0.lcssa = phi i32 [ 0, %sw.epilog147 ], [ %add160, %while.body155 ], !dbg !1885
  %sub164 = sub nsw i32 0, %exponent.0.lcssa
  %spec.select247 = select i1 %expnegative.1, i32 %sub164, i32 %exponent.0.lcssa, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %spec.select247, metadata !1875, metadata !DIExpression()), !dbg !1885
  br label %if.end166, !dbg !2197

if.end166:                                        ; preds = %while.end161, %land.lhs.true136, %if.end133
  %s.10 = phi ptr [ %s.7, %if.end133 ], [ %s.9.lcssa, %while.end161 ], [ %s.7, %land.lhs.true136 ], !dbg !1885
  %exponent.2 = phi i32 [ 0, %if.end133 ], [ %spec.select247, %while.end161 ], [ 0, %land.lhs.true136 ], !dbg !1885
  call void @llvm.dbg.value(metadata i32 %exponent.2, metadata !1875, metadata !DIExpression()), !dbg !1885
  %add182 = add nsw i32 %exponent.2, %exp_adjust.sroa.0.0.ph.ph, !dbg !2198
  call void @llvm.dbg.value(metadata double %add122, metadata !1998, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double %add122, metadata !1998, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %add182, metadata !2003, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %add182, metadata !2003, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2004, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2004, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double 1.000000e+01, metadata !2005, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double 1.000000e+01, metadata !2005, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2203
  %cmp.i440 = icmp eq i32 %add182, 0, !dbg !2198
  br i1 %tobool124.not, label %if.else179, label %if.then168, !dbg !2206

if.then168:                                       ; preds = %if.end166
  br i1 %cmp.i440, label %S_mulexp10.exit393, label %if.end.i350, !dbg !2207

if.end.i350:                                      ; preds = %if.then168
  %cmp1.i349 = fcmp oeq double %add122, 0.000000e+00, !dbg !2208
  br i1 %cmp1.i349, label %S_mulexp10.exit393, label %if.end3.i352, !dbg !2209

if.end3.i352:                                     ; preds = %if.end.i350
  %cmp4.i351 = icmp slt i32 %add182, 0, !dbg !2210
  br i1 %cmp4.i351, label %if.then5.i355, label %if.end10.i370, !dbg !2211

if.then5.i355:                                    ; preds = %if.end3.i352
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2203
  %sub.i353 = sub nsw i32 0, %add182, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %sub.i353, metadata !2003, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double %add122, metadata !1998, metadata !DIExpression()), !dbg !2203
  %cmp647.i354 = icmp ult i32 %add182, -308
  br i1 %cmp647.i354, label %while.body.i363, label %while.end.i367, !dbg !2213

while.body.i363:                                  ; preds = %if.then5.i355, %while.body.i363
  %exponent.addr.050.i356 = phi i32 [ %dec.i358, %while.body.i363 ], [ %sub.i353, %if.then5.i355 ]
  %value.addr.049.i357 = phi double [ %div.i359, %while.body.i363 ], [ %add122, %if.then5.i355 ]
  call void @llvm.dbg.value(metadata i32 %exponent.addr.050.i356, metadata !2003, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double %value.addr.049.i357, metadata !1998, metadata !DIExpression()), !dbg !2203
  %dec.i358 = add nsw i32 %exponent.addr.050.i356, -1, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %dec.i358, metadata !2003, metadata !DIExpression()), !dbg !2203
  %div.i359 = fdiv double %value.addr.049.i357, 1.000000e+01, !dbg !2215
  call void @llvm.dbg.value(metadata double %div.i359, metadata !1998, metadata !DIExpression()), !dbg !2203
  %tobool.i360 = fcmp une double %div.i359, 0.000000e+00, !dbg !2216
  %cmp6.i361 = icmp ugt i32 %exponent.addr.050.i356, 309
  %or.cond.i362 = select i1 %tobool.i360, i1 %cmp6.i361, i1 false, !dbg !2213
  br i1 %or.cond.i362, label %while.body.i363, label %while.end.i367, !dbg !2213, !llvm.loop !2217

while.end.i367:                                   ; preds = %while.body.i363, %if.then5.i355
  %value.addr.0.lcssa.i364 = phi double [ %add122, %if.then5.i355 ], [ %div.i359, %while.body.i363 ]
  %exponent.addr.0.lcssa.i365 = phi i32 [ %sub.i353, %if.then5.i355 ], [ %dec.i358, %while.body.i363 ], !dbg !2220
  %cmp7.i366 = fcmp oeq double %value.addr.0.lcssa.i364, 0.000000e+00, !dbg !2221
  br i1 %cmp7.i366, label %S_mulexp10.exit393, label %if.end10.i370, !dbg !2222

if.end10.i370:                                    ; preds = %while.end.i367, %if.end3.i352
  %value.addr.1.i368 = phi double [ %value.addr.0.lcssa.i364, %while.end.i367 ], [ %add122, %if.end3.i352 ]
  %exponent.addr.1.i369 = phi i32 [ %exponent.addr.0.lcssa.i365, %while.end.i367 ], [ %add182, %if.end3.i352 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2006, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %exponent.addr.1.i369, metadata !2003, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double %value.addr.1.i368, metadata !1998, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2203
  br label %for.cond.i377, !dbg !2223

for.cond.i377:                                    ; preds = %if.end17.i386, %if.end10.i370
  %exponent.addr.2.i371 = phi i32 [ %exponent.addr.1.i369, %if.end10.i370 ], [ %exponent.addr.3.i382, %if.end17.i386 ], !dbg !2203
  %result.0.i372 = phi double [ 1.000000e+00, %if.end10.i370 ], [ %result.1.i383, %if.end17.i386 ], !dbg !2203
  %power.0.i373 = phi double [ 1.000000e+01, %if.end10.i370 ], [ %mul18.i384, %if.end17.i386 ], !dbg !2203
  %bit.0.i374 = phi i32 [ 1, %if.end10.i370 ], [ %shl.i385, %if.end17.i386 ], !dbg !2224
  call void @llvm.dbg.value(metadata i32 %bit.0.i374, metadata !2007, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double %power.0.i373, metadata !2005, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata double %result.0.i372, metadata !2004, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %exponent.addr.2.i371, metadata !2003, metadata !DIExpression()), !dbg !2203
  %and.i375 = and i32 %bit.0.i374, %exponent.addr.2.i371, !dbg !2225
  %tobool12.not.i376 = icmp eq i32 %and.i375, 0, !dbg !2225
  br i1 %tobool12.not.i376, label %if.end17.i386, label %if.then13.i381, !dbg !2226

if.then13.i381:                                   ; preds = %for.cond.i377
  %xor.i378 = xor i32 %bit.0.i374, %exponent.addr.2.i371, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %xor.i378, metadata !2003, metadata !DIExpression()), !dbg !2203
  %mul.i379 = fmul double %result.0.i372, %power.0.i373, !dbg !2228
  call void @llvm.dbg.value(metadata double %mul.i379, metadata !2004, metadata !DIExpression()), !dbg !2203
  %cmp14.i380 = icmp eq i32 %xor.i378, 0, !dbg !2229
  br i1 %cmp14.i380, label %for.end.i387, label %if.end17.i386, !dbg !2230

if.end17.i386:                                    ; preds = %if.then13.i381, %for.cond.i377
  %exponent.addr.3.i382 = phi i32 [ %xor.i378, %if.then13.i381 ], [ %exponent.addr.2.i371, %for.cond.i377 ], !dbg !2203
  %result.1.i383 = phi double [ %mul.i379, %if.then13.i381 ], [ %result.0.i372, %for.cond.i377 ], !dbg !2203
  call void @llvm.dbg.value(metadata double %result.1.i383, metadata !2004, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %exponent.addr.3.i382, metadata !2003, metadata !DIExpression()), !dbg !2203
  %mul18.i384 = fmul double %power.0.i373, %power.0.i373, !dbg !2231
  call void @llvm.dbg.value(metadata double %mul18.i384, metadata !2005, metadata !DIExpression()), !dbg !2203
  %shl.i385 = shl i32 %bit.0.i374, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %shl.i385, metadata !2007, metadata !DIExpression()), !dbg !2203
  br label %for.cond.i377, !dbg !2233, !llvm.loop !2234

for.end.i387:                                     ; preds = %if.then13.i381
  call void @llvm.dbg.value(metadata double %mul.i379, metadata !2004, metadata !DIExpression()), !dbg !2203
  br i1 %cmp4.i351, label %cond.true.i389, label %cond.false.i391, !dbg !2237

cond.true.i389:                                   ; preds = %for.end.i387
  %div20.i388 = fdiv double %value.addr.1.i368, %mul.i379, !dbg !2238
  br label %S_mulexp10.exit393, !dbg !2237

cond.false.i391:                                  ; preds = %for.end.i387
  %mul21.i390 = fmul double %value.addr.1.i368, %mul.i379, !dbg !2239
  br label %S_mulexp10.exit393, !dbg !2237

S_mulexp10.exit393:                               ; preds = %if.then168, %if.end.i350, %while.end.i367, %cond.true.i389, %cond.false.i391
  %retval.0.i392 = phi double [ %add122, %if.then168 ], [ 0.000000e+00, %if.end.i350 ], [ %value.addr.0.lcssa.i364, %while.end.i367 ], [ %div20.i388, %cond.true.i389 ], [ %mul21.i390, %cond.false.i391 ], !dbg !2203
  %arrayidx173 = getelementptr inbounds [3 x double], ptr %result, i64 0, i64 1, !dbg !2240
  %38 = load double, ptr %arrayidx173, align 8, !dbg !2240
  %sub175 = sub nsw i32 %exponent.2, %exp_adjust.sroa.9.0.lcssa, !dbg !2241
  call void @llvm.dbg.value(metadata double %38, metadata !1998, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %sub175, metadata !2003, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2004, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double 1.000000e+01, metadata !2005, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2242
  %cmp.i394 = icmp eq i32 %sub175, 0, !dbg !2244
  br i1 %cmp.i394, label %S_mulexp10.exit439, label %if.end.i396, !dbg !2245

if.end.i396:                                      ; preds = %S_mulexp10.exit393
  %cmp1.i395 = fcmp oeq double %38, 0.000000e+00, !dbg !2246
  br i1 %cmp1.i395, label %S_mulexp10.exit439, label %if.end3.i398, !dbg !2247

if.end3.i398:                                     ; preds = %if.end.i396
  %cmp4.i397 = icmp slt i32 %sub175, 0, !dbg !2248
  br i1 %cmp4.i397, label %if.then5.i401, label %if.end10.i416, !dbg !2249

if.then5.i401:                                    ; preds = %if.end3.i398
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2242
  %sub.i399 = sub nsw i32 0, %sub175, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %sub.i399, metadata !2003, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double %38, metadata !1998, metadata !DIExpression()), !dbg !2242
  %cmp647.i400 = icmp ult i32 %sub175, -308
  br i1 %cmp647.i400, label %while.body.i409, label %while.end.i413, !dbg !2251

while.body.i409:                                  ; preds = %if.then5.i401, %while.body.i409
  %exponent.addr.050.i402 = phi i32 [ %dec.i404, %while.body.i409 ], [ %sub.i399, %if.then5.i401 ]
  %value.addr.049.i403 = phi double [ %div.i405, %while.body.i409 ], [ %38, %if.then5.i401 ]
  call void @llvm.dbg.value(metadata i32 %exponent.addr.050.i402, metadata !2003, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double %value.addr.049.i403, metadata !1998, metadata !DIExpression()), !dbg !2242
  %dec.i404 = add nsw i32 %exponent.addr.050.i402, -1, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %dec.i404, metadata !2003, metadata !DIExpression()), !dbg !2242
  %div.i405 = fdiv double %value.addr.049.i403, 1.000000e+01, !dbg !2253
  call void @llvm.dbg.value(metadata double %div.i405, metadata !1998, metadata !DIExpression()), !dbg !2242
  %tobool.i406 = fcmp une double %div.i405, 0.000000e+00, !dbg !2254
  %cmp6.i407 = icmp ugt i32 %exponent.addr.050.i402, 309
  %or.cond.i408 = select i1 %tobool.i406, i1 %cmp6.i407, i1 false, !dbg !2251
  br i1 %or.cond.i408, label %while.body.i409, label %while.end.i413, !dbg !2251, !llvm.loop !2255

while.end.i413:                                   ; preds = %while.body.i409, %if.then5.i401
  %value.addr.0.lcssa.i410 = phi double [ %38, %if.then5.i401 ], [ %div.i405, %while.body.i409 ]
  %exponent.addr.0.lcssa.i411 = phi i32 [ %sub.i399, %if.then5.i401 ], [ %dec.i404, %while.body.i409 ], !dbg !2258
  %cmp7.i412 = fcmp oeq double %value.addr.0.lcssa.i410, 0.000000e+00, !dbg !2259
  br i1 %cmp7.i412, label %S_mulexp10.exit439, label %if.end10.i416, !dbg !2260

if.end10.i416:                                    ; preds = %while.end.i413, %if.end3.i398
  %value.addr.1.i414 = phi double [ %value.addr.0.lcssa.i410, %while.end.i413 ], [ %38, %if.end3.i398 ]
  %exponent.addr.1.i415 = phi i32 [ %exponent.addr.0.lcssa.i411, %while.end.i413 ], [ %sub175, %if.end3.i398 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2006, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %exponent.addr.1.i415, metadata !2003, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double %value.addr.1.i414, metadata !1998, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2242
  br label %for.cond.i423, !dbg !2261

for.cond.i423:                                    ; preds = %if.end17.i432, %if.end10.i416
  %exponent.addr.2.i417 = phi i32 [ %exponent.addr.1.i415, %if.end10.i416 ], [ %exponent.addr.3.i428, %if.end17.i432 ], !dbg !2242
  %result.0.i418 = phi double [ 1.000000e+00, %if.end10.i416 ], [ %result.1.i429, %if.end17.i432 ], !dbg !2242
  %power.0.i419 = phi double [ 1.000000e+01, %if.end10.i416 ], [ %mul18.i430, %if.end17.i432 ], !dbg !2242
  %bit.0.i420 = phi i32 [ 1, %if.end10.i416 ], [ %shl.i431, %if.end17.i432 ], !dbg !2262
  call void @llvm.dbg.value(metadata i32 %bit.0.i420, metadata !2007, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double %power.0.i419, metadata !2005, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata double %result.0.i418, metadata !2004, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %exponent.addr.2.i417, metadata !2003, metadata !DIExpression()), !dbg !2242
  %and.i421 = and i32 %bit.0.i420, %exponent.addr.2.i417, !dbg !2263
  %tobool12.not.i422 = icmp eq i32 %and.i421, 0, !dbg !2263
  br i1 %tobool12.not.i422, label %if.end17.i432, label %if.then13.i427, !dbg !2264

if.then13.i427:                                   ; preds = %for.cond.i423
  %xor.i424 = xor i32 %bit.0.i420, %exponent.addr.2.i417, !dbg !2265
  call void @llvm.dbg.value(metadata i32 %xor.i424, metadata !2003, metadata !DIExpression()), !dbg !2242
  %mul.i425 = fmul double %result.0.i418, %power.0.i419, !dbg !2266
  call void @llvm.dbg.value(metadata double %mul.i425, metadata !2004, metadata !DIExpression()), !dbg !2242
  %cmp14.i426 = icmp eq i32 %xor.i424, 0, !dbg !2267
  br i1 %cmp14.i426, label %for.end.i433, label %if.end17.i432, !dbg !2268

if.end17.i432:                                    ; preds = %if.then13.i427, %for.cond.i423
  %exponent.addr.3.i428 = phi i32 [ %xor.i424, %if.then13.i427 ], [ %exponent.addr.2.i417, %for.cond.i423 ], !dbg !2242
  %result.1.i429 = phi double [ %mul.i425, %if.then13.i427 ], [ %result.0.i418, %for.cond.i423 ], !dbg !2242
  call void @llvm.dbg.value(metadata double %result.1.i429, metadata !2004, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %exponent.addr.3.i428, metadata !2003, metadata !DIExpression()), !dbg !2242
  %mul18.i430 = fmul double %power.0.i419, %power.0.i419, !dbg !2269
  call void @llvm.dbg.value(metadata double %mul18.i430, metadata !2005, metadata !DIExpression()), !dbg !2242
  %shl.i431 = shl i32 %bit.0.i420, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %shl.i431, metadata !2007, metadata !DIExpression()), !dbg !2242
  br label %for.cond.i423, !dbg !2271, !llvm.loop !2272

for.end.i433:                                     ; preds = %if.then13.i427
  call void @llvm.dbg.value(metadata double %mul.i425, metadata !2004, metadata !DIExpression()), !dbg !2242
  br i1 %cmp4.i397, label %cond.true.i435, label %cond.false.i437, !dbg !2275

cond.true.i435:                                   ; preds = %for.end.i433
  %div20.i434 = fdiv double %value.addr.1.i414, %mul.i425, !dbg !2276
  br label %S_mulexp10.exit439, !dbg !2275

cond.false.i437:                                  ; preds = %for.end.i433
  %mul21.i436 = fmul double %value.addr.1.i414, %mul.i425, !dbg !2277
  br label %S_mulexp10.exit439, !dbg !2275

S_mulexp10.exit439:                               ; preds = %S_mulexp10.exit393, %if.end.i396, %while.end.i413, %cond.true.i435, %cond.false.i437
  %retval.0.i438 = phi double [ %38, %S_mulexp10.exit393 ], [ 0.000000e+00, %if.end.i396 ], [ %value.addr.0.lcssa.i410, %while.end.i413 ], [ %div20.i434, %cond.true.i435 ], [ %mul21.i436, %cond.false.i437 ], !dbg !2242
  %add177 = fadd double %retval.0.i392, %retval.0.i438, !dbg !2278
  br label %if.end185, !dbg !2279

if.else179:                                       ; preds = %if.end166
  br i1 %cmp.i440, label %if.end185, label %if.end.i442, !dbg !2280

if.end.i442:                                      ; preds = %if.else179
  %cmp1.i441 = fcmp oeq double %add122, 0.000000e+00, !dbg !2281
  br i1 %cmp1.i441, label %if.end185, label %if.end3.i444, !dbg !2282

if.end3.i444:                                     ; preds = %if.end.i442
  %cmp4.i443 = icmp slt i32 %add182, 0, !dbg !2283
  br i1 %cmp4.i443, label %if.then5.i447, label %if.end10.i462, !dbg !2284

if.then5.i447:                                    ; preds = %if.end3.i444
  call void @llvm.dbg.value(metadata i8 1, metadata !2006, metadata !DIExpression()), !dbg !2200
  %sub.i445 = sub nsw i32 0, %add182, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %sub.i445, metadata !2003, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double %add122, metadata !1998, metadata !DIExpression()), !dbg !2200
  %cmp647.i446 = icmp ult i32 %add182, -308
  br i1 %cmp647.i446, label %while.body.i455, label %while.end.i459, !dbg !2286

while.body.i455:                                  ; preds = %if.then5.i447, %while.body.i455
  %exponent.addr.050.i448 = phi i32 [ %dec.i450, %while.body.i455 ], [ %sub.i445, %if.then5.i447 ]
  %value.addr.049.i449 = phi double [ %div.i451, %while.body.i455 ], [ %add122, %if.then5.i447 ]
  call void @llvm.dbg.value(metadata i32 %exponent.addr.050.i448, metadata !2003, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double %value.addr.049.i449, metadata !1998, metadata !DIExpression()), !dbg !2200
  %dec.i450 = add nsw i32 %exponent.addr.050.i448, -1, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %dec.i450, metadata !2003, metadata !DIExpression()), !dbg !2200
  %div.i451 = fdiv double %value.addr.049.i449, 1.000000e+01, !dbg !2288
  call void @llvm.dbg.value(metadata double %div.i451, metadata !1998, metadata !DIExpression()), !dbg !2200
  %tobool.i452 = fcmp une double %div.i451, 0.000000e+00, !dbg !2289
  %cmp6.i453 = icmp ugt i32 %exponent.addr.050.i448, 309
  %or.cond.i454 = select i1 %tobool.i452, i1 %cmp6.i453, i1 false, !dbg !2286
  br i1 %or.cond.i454, label %while.body.i455, label %while.end.i459, !dbg !2286, !llvm.loop !2290

while.end.i459:                                   ; preds = %while.body.i455, %if.then5.i447
  %value.addr.0.lcssa.i456 = phi double [ %add122, %if.then5.i447 ], [ %div.i451, %while.body.i455 ]
  %exponent.addr.0.lcssa.i457 = phi i32 [ %sub.i445, %if.then5.i447 ], [ %dec.i450, %while.body.i455 ], !dbg !2293
  %cmp7.i458 = fcmp oeq double %value.addr.0.lcssa.i456, 0.000000e+00, !dbg !2294
  br i1 %cmp7.i458, label %if.end185, label %if.end10.i462, !dbg !2295

if.end10.i462:                                    ; preds = %while.end.i459, %if.end3.i444
  %value.addr.1.i460 = phi double [ %value.addr.0.lcssa.i456, %while.end.i459 ], [ %add122, %if.end3.i444 ]
  %exponent.addr.1.i461 = phi i32 [ %exponent.addr.0.lcssa.i457, %while.end.i459 ], [ %add182, %if.end3.i444 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2006, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %exponent.addr.1.i461, metadata !2003, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double %value.addr.1.i460, metadata !1998, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2200
  br label %for.cond.i469, !dbg !2296

for.cond.i469:                                    ; preds = %if.end17.i478, %if.end10.i462
  %exponent.addr.2.i463 = phi i32 [ %exponent.addr.1.i461, %if.end10.i462 ], [ %exponent.addr.3.i474, %if.end17.i478 ], !dbg !2200
  %result.0.i464 = phi double [ 1.000000e+00, %if.end10.i462 ], [ %result.1.i475, %if.end17.i478 ], !dbg !2200
  %power.0.i465 = phi double [ 1.000000e+01, %if.end10.i462 ], [ %mul18.i476, %if.end17.i478 ], !dbg !2200
  %bit.0.i466 = phi i32 [ 1, %if.end10.i462 ], [ %shl.i477, %if.end17.i478 ], !dbg !2297
  call void @llvm.dbg.value(metadata i32 %bit.0.i466, metadata !2007, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double %power.0.i465, metadata !2005, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata double %result.0.i464, metadata !2004, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %exponent.addr.2.i463, metadata !2003, metadata !DIExpression()), !dbg !2200
  %and.i467 = and i32 %bit.0.i466, %exponent.addr.2.i463, !dbg !2298
  %tobool12.not.i468 = icmp eq i32 %and.i467, 0, !dbg !2298
  br i1 %tobool12.not.i468, label %if.end17.i478, label %if.then13.i473, !dbg !2299

if.then13.i473:                                   ; preds = %for.cond.i469
  %xor.i470 = xor i32 %bit.0.i466, %exponent.addr.2.i463, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %xor.i470, metadata !2003, metadata !DIExpression()), !dbg !2200
  %mul.i471 = fmul double %result.0.i464, %power.0.i465, !dbg !2301
  call void @llvm.dbg.value(metadata double %mul.i471, metadata !2004, metadata !DIExpression()), !dbg !2200
  %cmp14.i472 = icmp eq i32 %xor.i470, 0, !dbg !2302
  br i1 %cmp14.i472, label %for.end.i479, label %if.end17.i478, !dbg !2303

if.end17.i478:                                    ; preds = %if.then13.i473, %for.cond.i469
  %exponent.addr.3.i474 = phi i32 [ %xor.i470, %if.then13.i473 ], [ %exponent.addr.2.i463, %for.cond.i469 ], !dbg !2200
  %result.1.i475 = phi double [ %mul.i471, %if.then13.i473 ], [ %result.0.i464, %for.cond.i469 ], !dbg !2200
  call void @llvm.dbg.value(metadata double %result.1.i475, metadata !2004, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %exponent.addr.3.i474, metadata !2003, metadata !DIExpression()), !dbg !2200
  %mul18.i476 = fmul double %power.0.i465, %power.0.i465, !dbg !2304
  call void @llvm.dbg.value(metadata double %mul18.i476, metadata !2005, metadata !DIExpression()), !dbg !2200
  %shl.i477 = shl i32 %bit.0.i466, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %shl.i477, metadata !2007, metadata !DIExpression()), !dbg !2200
  br label %for.cond.i469, !dbg !2306, !llvm.loop !2307

for.end.i479:                                     ; preds = %if.then13.i473
  call void @llvm.dbg.value(metadata double %mul.i471, metadata !2004, metadata !DIExpression()), !dbg !2200
  br i1 %cmp4.i443, label %cond.true.i481, label %cond.false.i483, !dbg !2310

cond.true.i481:                                   ; preds = %for.end.i479
  %div20.i480 = fdiv double %value.addr.1.i460, %mul.i471, !dbg !2311
  br label %if.end185, !dbg !2310

cond.false.i483:                                  ; preds = %for.end.i479
  %mul21.i482 = fmul double %value.addr.1.i460, %mul.i471, !dbg !2312
  br label %if.end185, !dbg !2310

if.end185:                                        ; preds = %cond.false.i483, %cond.true.i481, %while.end.i459, %if.end.i442, %if.else179, %S_mulexp10.exit439
  %retval.0.i484.sink = phi double [ %add177, %S_mulexp10.exit439 ], [ %add122, %if.else179 ], [ 0.000000e+00, %if.end.i442 ], [ %value.addr.0.lcssa.i456, %while.end.i459 ], [ %div20.i480, %cond.true.i481 ], [ %mul21.i482, %cond.false.i483 ]
  %arrayidx184 = getelementptr inbounds [3 x double], ptr %result, i64 0, i64 2, !dbg !2198
  store double %retval.0.i484.sink, ptr %arrayidx184, align 16, !dbg !2198
  %fneg = fneg double %retval.0.i484.sink
  %spec.select585 = select i1 %negative.1, double %fneg, double %retval.0.i484.sink, !dbg !2313
  store double %spec.select585, ptr %value, align 8, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %s.10, metadata !1862, metadata !DIExpression()), !dbg !1885
  br label %cleanup192, !dbg !2315

cleanup192:                                       ; preds = %S_my_atof_infnan.exit, %if.end185
  %retval.1 = phi ptr [ %s.10, %if.end185 ], [ %2, %S_my_atof_infnan.exit ], !dbg !1885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exp_acc) #12, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %accumulator) #12, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %result) #12, !dbg !2316
  ret ptr %retval.1, !dbg !2316
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_isinfnan(double noundef %nv) local_unnamed_addr #9 !dbg !2317 {
entry:
  call void @llvm.dbg.value(metadata double %nv, metadata !2321, metadata !DIExpression()), !dbg !2322
  %0 = tail call double @llvm.fabs.f64(double %nv) #14, !dbg !2323
  %isinf = fcmp oeq double %0, 0x7FF0000000000000, !dbg !2323
  br i1 %isinf, label %return, label %if.end, !dbg !2325

if.end:                                           ; preds = %entry
  %cmp = fcmp uno double %nv, 0.000000e+00, !dbg !2326
  br label %return, !dbg !2322

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %cmp, %if.end ], !dbg !2322
  ret i1 %retval.0, !dbg !2328
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_isinfnansv(ptr noundef %sv) local_unnamed_addr #2 !dbg !2329 {
entry:
  %len = alloca i64, align 8
  %s = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2333, metadata !DIExpression()), !dbg !2337
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2338
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2338
  %and = and i32 %0, 65280, !dbg !2338
  %tobool.not = icmp ne i32 %and, 0, !dbg !2338
  %and2 = and i32 %0, 255, !dbg !2338
  %cmp = icmp eq i32 %and2, 8, !dbg !2338
  %or.cond = or i1 %tobool.not, %cmp, !dbg !2338
  %and5 = and i32 %0, 16826623, !dbg !2338
  %cmp6 = icmp eq i32 %and5, 16777226, !dbg !2338
  %or.cond36 = select i1 %or.cond, i1 true, i1 %cmp6, !dbg !2338
  br i1 %or.cond36, label %if.end, label %return, !dbg !2338

if.end:                                           ; preds = %entry
  %and8 = and i32 %0, 8192, !dbg !2340
  %tobool9.not = icmp eq i32 %and8, 0, !dbg !2340
  br i1 %tobool9.not, label %if.end11, label %if.then10, !dbg !2342

if.then10:                                        ; preds = %if.end
  %1 = load ptr, ptr %sv, align 8, !dbg !2343
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %1, i64 0, i32 5, !dbg !2343
  %2 = load double, ptr %xnv_u, align 8, !dbg !2343
  call void @llvm.dbg.value(metadata double %2, metadata !2321, metadata !DIExpression()) #12, !dbg !2344
  %3 = tail call double @llvm.fabs.f64(double %2) #15, !dbg !2346
  %isinf.i = fcmp oeq double %3, 0x7FF0000000000000, !dbg !2346
  br i1 %isinf.i, label %return, label %if.end.i, !dbg !2347

if.end.i:                                         ; preds = %if.then10
  %cmp.i = fcmp uno double %2, 0.000000e+00, !dbg !2348
  br label %return, !dbg !2344

if.end11:                                         ; preds = %if.end
  %and13 = and i32 %0, 4096, !dbg !2349
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !2349
  br i1 %tobool14.not, label %if.end16, label %return, !dbg !2351

if.end16:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #12, !dbg !2352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s) #12, !dbg !2353
  %and18 = and i32 %0, 2098176, !dbg !2354
  %cmp19 = icmp eq i32 %and18, 1024, !dbg !2354
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !2354

cond.true:                                        ; preds = %if.end16
  %4 = load ptr, ptr %sv, align 8, !dbg !2354
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %4, i64 0, i32 2, !dbg !2354
  %5 = load i64, ptr %xpv_cur, align 8, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %5, metadata !2334, metadata !DIExpression()), !dbg !2355
  store i64 %5, ptr %len, align 8, !dbg !2354
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2354
  %6 = load ptr, ptr %sv_u, align 8, !dbg !2354
  br label %cond.end, !dbg !2354

cond.false:                                       ; preds = %if.end16
  call void @llvm.dbg.value(metadata ptr %len, metadata !2334, metadata !DIExpression(DW_OP_deref)), !dbg !2355
  %call21 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len, i32 noundef 32) #12, !dbg !2354
  %.pre = load i64, ptr %len, align 8, !dbg !2356
  br label %cond.end, !dbg !2354

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = phi i64 [ %5, %cond.true ], [ %.pre, %cond.false ], !dbg !2356
  %cond = phi ptr [ %6, %cond.true ], [ %call21, %cond.false ], !dbg !2354
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2336, metadata !DIExpression()), !dbg !2355
  store ptr %cond, ptr %s, align 8, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %7, metadata !2334, metadata !DIExpression()), !dbg !2355
  %add.ptr22 = getelementptr inbounds i8, ptr %cond, i64 %7, !dbg !2356
  call void @llvm.dbg.value(metadata ptr %s, metadata !2336, metadata !DIExpression(DW_OP_deref)), !dbg !2355
  %call23 = call i32 @Perl_grok_infnan(ptr noundef nonnull %s, ptr noundef %add.ptr22), !dbg !2356
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2356
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s) #12, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #12, !dbg !2358
  br label %return

return:                                           ; preds = %if.end.i, %if.then10, %if.end11, %entry, %cond.end
  %retval.0 = phi i1 [ %tobool24, %cond.end ], [ false, %entry ], [ false, %if.end11 ], [ true, %if.then10 ], [ %cmp.i, %if.end.i ], !dbg !2337
  ret i1 %retval.0, !dbg !2359
}

declare !dbg !2360 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { readnone }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!626, !627, !628, !629, !630, !631}
!llvm.ident = !{!632}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24, globals: !618, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/numeric.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "d9b7586d9a31cc99d85644c27bc830fa")
!2 = !{!3}
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
!24 = !{!25, !27, !29, !32, !34, !35, !37, !39, !40, !42, !43, !606, !443}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !26, line: 175, baseType: !5)
!26 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !26, line: 174, baseType: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !30, line: 1671, baseType: !31)
!30 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !30, line: 1670, baseType: !33)
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !30, line: 1877, baseType: !36)
!36 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !26, line: 171, baseType: !38)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !4, line: 153, baseType: !3)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVNV", file: !30, line: 2662, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvnv", file: !4, line: 517, size: 384, elements: !46)
!46 = !{!47, !597, !598, !599, !604, !605}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !45, file: !4, line: 518, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !30, line: 2649, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !4, line: 246, size: 192, elements: !51)
!51 = !{!52, !582, !583, !584}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !50, file: !4, line: 247, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !30, line: 2667, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !56, line: 130, size: 256, elements: !57)
!56 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!57 = !{!58, !59, !580, !581}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !55, file: !56, line: 131, baseType: !48, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !55, file: !56, line: 132, baseType: !60, size: 64, offset: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !4, line: 494, size: 64, elements: !61)
!61 = !{!62, !579}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !60, file: !4, line: 495, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !30, line: 2658, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !66, line: 23, size: 384, elements: !67)
!66 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!67 = !{!68, !69, !571, !574, !575, !576, !577, !578}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !65, file: !66, line: 24, baseType: !63, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !65, file: !66, line: 25, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !30, line: 2673, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !66, line: 11, size: 512, elements: !73)
!73 = !{!74, !541, !542, !546, !547, !548, !552, !570}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !72, file: !66, line: 12, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!28, !78, !63}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !30, line: 2647, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !4, line: 218, size: 192, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !80, file: !4, line: 219, baseType: !39, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !80, file: !4, line: 219, baseType: !25, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !80, file: !4, line: 219, baseType: !25, size: 32, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !80, file: !4, line: 220, baseType: !86, size: 64, offset: 128)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !4, line: 220, size: 64, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !537, !538, !539, !540}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !86, file: !4, line: 220, baseType: !40, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !86, file: !4, line: 220, baseType: !32, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !86, file: !4, line: 220, baseType: !29, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !86, file: !4, line: 220, baseType: !35, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !86, file: !4, line: 220, baseType: !78, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !86, file: !4, line: 220, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !96, line: 140, size: 1536, elements: !97)
!96 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!97 = !{!98, !99, !100, !104, !109, !493, !494, !495, !496, !497, !498, !499, !515, !516, !517, !518, !519, !520, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !95, file: !96, line: 141, baseType: !48, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !95, file: !96, line: 141, baseType: !60, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !95, file: !96, line: 141, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !30, line: 2615, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !31)
!103 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !95, file: !96, line: 141, baseType: !105, size: 64, offset: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !96, line: 141, size: 64, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !105, file: !96, line: 141, baseType: !101, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !105, file: !96, line: 141, baseType: !40, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !95, file: !96, line: 142, baseType: !110, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !96, line: 157, size: 768, elements: !113)
!113 = !{!114, !433, !438, !454, !458, !462, !467, !474, !478, !482, !486, !487}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !112, file: !96, line: 158, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !432, !25}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !30, line: 2651, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !4, line: 256, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !120, file: !4, line: 257, baseType: !94, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !120, file: !4, line: 257, baseType: !25, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !120, file: !4, line: 257, baseType: !25, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !120, file: !4, line: 258, baseType: !126, size: 64, offset: 128)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !4, line: 258, size: 64, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !136, !159, !431}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !126, file: !4, line: 258, baseType: !40, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !126, file: !4, line: 258, baseType: !32, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !126, file: !4, line: 258, baseType: !29, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !126, file: !4, line: 258, baseType: !35, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !126, file: !4, line: 258, baseType: !78, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !126, file: !4, line: 258, baseType: !94, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !126, file: !4, line: 258, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !126, file: !4, line: 258, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !4, line: 186, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !56, line: 32, size: 192, elements: !141)
!141 = !{!142, !143, !154}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !140, file: !56, line: 36, baseType: !138, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !140, file: !56, line: 37, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !4, line: 187, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !56, line: 45, size: 96, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !146, file: !56, line: 46, baseType: !25, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !146, file: !56, line: 47, baseType: !27, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !146, file: !56, line: 48, baseType: !151, size: 8, offset: 64)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 1)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !140, file: !56, line: 41, baseType: !155, size: 64, offset: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !56, line: 38, size: 64, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !155, file: !56, line: 39, baseType: !78, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !155, file: !56, line: 40, baseType: !102, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !126, file: !4, line: 258, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !30, line: 2652, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !163, line: 11, size: 640, elements: !164)
!163 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!164 = !{!165, !166, !274, !421, !422, !423, !424, !426, !427, !428, !429, !430}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !162, file: !163, line: 12, baseType: !78, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !162, file: !163, line: 13, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !4, line: 251, size: 192, elements: !169)
!169 = !{!170, !259, !260, !261}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !168, file: !4, line: 252, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !30, line: 2672, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !4, line: 603, size: 1088, elements: !174)
!174 = !{!175, !176, !177, !178, !183, !189, !196, !205, !206, !207, !208, !209, !253, !254, !255, !256, !257, !258}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !173, file: !4, line: 604, baseType: !48, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !173, file: !4, line: 604, baseType: !60, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !173, file: !4, line: 604, baseType: !101, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !173, file: !4, line: 604, baseType: !179, size: 64, offset: 192)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !4, line: 604, size: 64, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !179, file: !4, line: 604, baseType: !101, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !179, file: !4, line: 604, baseType: !40, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !173, file: !4, line: 605, baseType: !184, size: 64, offset: 256)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !4, line: 488, size: 64, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !184, file: !4, line: 489, baseType: !32, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !184, file: !4, line: 490, baseType: !29, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !184, file: !4, line: 491, baseType: !144, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !173, file: !4, line: 607, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !192, line: 85, baseType: !193)
!192 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !192, line: 83, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !192, line: 83, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !173, file: !4, line: 620, baseType: !197, size: 64, offset: 384)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !4, line: 617, size: 64, elements: !198)
!198 = !{!199, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !197, file: !4, line: 618, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !202, line: 127, baseType: !203)
!202 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !202, line: 127, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !197, file: !4, line: 619, baseType: !39, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !173, file: !4, line: 622, baseType: !32, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !173, file: !4, line: 623, baseType: !32, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !173, file: !4, line: 624, baseType: !32, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !173, file: !4, line: 625, baseType: !40, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !173, file: !4, line: 626, baseType: !210, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !30, line: 2653, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !4, line: 231, size: 192, elements: !213)
!213 = !{!214, !238, !239, !240}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !212, file: !4, line: 232, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !30, line: 2668, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !4, line: 561, size: 384, elements: !218)
!218 = !{!219, !220, !221, !222, !227, !228}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !217, file: !4, line: 562, baseType: !48, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !217, file: !4, line: 562, baseType: !60, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !217, file: !4, line: 562, baseType: !101, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !217, file: !4, line: 562, baseType: !223, size: 64, offset: 192)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !4, line: 562, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !223, file: !4, line: 562, baseType: !101, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !223, file: !4, line: 562, baseType: !40, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !217, file: !4, line: 563, baseType: !184, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !217, file: !4, line: 564, baseType: !229, size: 64, offset: 320)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !4, line: 479, size: 64, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !229, file: !4, line: 480, baseType: !35, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !229, file: !4, line: 481, baseType: !48, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !229, file: !4, line: 485, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !4, line: 482, size: 64, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !234, file: !4, line: 483, baseType: !25, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !234, file: !4, line: 484, baseType: !25, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !212, file: !4, line: 232, baseType: !25, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !212, file: !4, line: 232, baseType: !25, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !212, file: !4, line: 233, baseType: !241, size: 64, offset: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !4, line: 233, size: 64, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !241, file: !4, line: 233, baseType: !40, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !241, file: !4, line: 233, baseType: !32, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !241, file: !4, line: 233, baseType: !29, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !241, file: !4, line: 233, baseType: !35, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !241, file: !4, line: 233, baseType: !78, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !241, file: !4, line: 233, baseType: !94, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !241, file: !4, line: 233, baseType: !135, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !241, file: !4, line: 233, baseType: !137, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !241, file: !4, line: 233, baseType: !160, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !241, file: !4, line: 233, baseType: !190, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !173, file: !4, line: 627, baseType: !40, size: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !173, file: !4, line: 628, baseType: !210, size: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !173, file: !4, line: 629, baseType: !40, size: 64, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !173, file: !4, line: 630, baseType: !210, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !173, file: !4, line: 631, baseType: !41, size: 8, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !173, file: !4, line: 632, baseType: !37, size: 8, offset: 1032)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !168, file: !4, line: 252, baseType: !25, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !168, file: !4, line: 252, baseType: !25, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !168, file: !4, line: 253, baseType: !262, size: 64, offset: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !4, line: 253, size: 64, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !262, file: !4, line: 253, baseType: !40, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !262, file: !4, line: 253, baseType: !32, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !262, file: !4, line: 253, baseType: !29, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !262, file: !4, line: 253, baseType: !35, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !262, file: !4, line: 253, baseType: !78, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !262, file: !4, line: 253, baseType: !94, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !262, file: !4, line: 253, baseType: !135, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !262, file: !4, line: 253, baseType: !137, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !262, file: !4, line: 253, baseType: !160, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !262, file: !4, line: 253, baseType: !190, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !162, file: !163, line: 14, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !30, line: 2650, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !4, line: 236, size: 192, elements: !278)
!278 = !{!279, !406, !407, !408}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !277, file: !4, line: 237, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !30, line: 2669, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !283, line: 13, size: 832, elements: !284)
!283 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!284 = !{!285, !286, !287, !288, !293, !294, !338, !346, !351, !352, !401, !402, !403, !405}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !282, file: !283, line: 14, baseType: !48, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !282, file: !283, line: 14, baseType: !60, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !282, file: !283, line: 14, baseType: !101, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !282, file: !283, line: 14, baseType: !289, size: 64, offset: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 14, size: 64, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !289, file: !283, line: 14, baseType: !101, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !289, file: !283, line: 14, baseType: !40, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !282, file: !283, line: 15, baseType: !48, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !282, file: !283, line: 15, baseType: !295, size: 64, offset: 320)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 15, size: 64, elements: !296)
!296 = !{!297, !322}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !295, file: !283, line: 15, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !30, line: 2617, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !301, line: 202, size: 320, elements: !302)
!301 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!302 = !{!303, !304, !305, !309, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !300, file: !301, line: 203, baseType: !298, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !300, file: !301, line: 203, baseType: !298, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !300, file: !301, line: 203, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!298}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !300, file: !301, line: 203, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !311, line: 25, baseType: !31)
!311 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!312 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !300, file: !301, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !300, file: !301, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !300, file: !301, line: 203, baseType: !37, size: 8, offset: 272)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !300, file: !301, line: 203, baseType: !37, size: 8, offset: 280)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !295, file: !283, line: 15, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !30, line: 2674, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !30, line: 3691, size: 64, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !337}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !324, file: !30, line: 3692, baseType: !39, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !324, file: !30, line: 3693, baseType: !27, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !324, file: !30, line: 3694, baseType: !25, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !324, file: !30, line: 3695, baseType: !32, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !324, file: !30, line: 3696, baseType: !29, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !324, file: !30, line: 3697, baseType: !33, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !324, file: !30, line: 3698, baseType: !34, size: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !324, file: !30, line: 3699, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !39}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !324, file: !30, line: 3700, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !282, file: !283, line: 15, baseType: !339, size: 64, offset: 384)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 15, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !339, file: !283, line: 15, baseType: !298, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !339, file: !283, line: 15, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !275}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !282, file: !283, line: 15, baseType: !347, size: 64, offset: 448)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 15, size: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !347, file: !283, line: 15, baseType: !210, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !347, file: !283, line: 15, baseType: !144, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !282, file: !283, line: 15, baseType: !40, size: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !282, file: !283, line: 15, baseType: !353, size: 64, offset: 576)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 15, size: 64, elements: !354)
!354 = !{!355, !400}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !353, file: !283, line: 15, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !30, line: 2681, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !311, line: 34, size: 192, elements: !359)
!359 = !{!360, !365, !398, !399}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !358, file: !311, line: 35, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !362, line: 108, baseType: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !364, line: 193, baseType: !33)
!364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !358, file: !311, line: 36, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !30, line: 2682, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !30, line: 2648, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !4, line: 241, size: 192, elements: !371)
!371 = !{!372, !383, !384, !385}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !370, file: !4, line: 242, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !30, line: 2666, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !376, line: 11, size: 320, elements: !377)
!376 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !375, file: !376, line: 12, baseType: !48, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !375, file: !376, line: 13, baseType: !60, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !375, file: !376, line: 14, baseType: !361, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !375, file: !376, line: 15, baseType: !361, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !375, file: !376, line: 16, baseType: !135, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !370, file: !4, line: 242, baseType: !25, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !370, file: !4, line: 242, baseType: !25, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !370, file: !4, line: 243, baseType: !386, size: 64, offset: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !4, line: 243, size: 64, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !386, file: !4, line: 243, baseType: !40, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !386, file: !4, line: 243, baseType: !32, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !386, file: !4, line: 243, baseType: !29, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !386, file: !4, line: 243, baseType: !35, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !386, file: !4, line: 243, baseType: !78, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !386, file: !4, line: 243, baseType: !94, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !386, file: !4, line: 243, baseType: !135, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !386, file: !4, line: 243, baseType: !137, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !386, file: !4, line: 243, baseType: !160, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !386, file: !4, line: 243, baseType: !190, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !358, file: !311, line: 37, baseType: !25, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !358, file: !311, line: 38, baseType: !25, size: 32, offset: 160)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !353, file: !283, line: 15, baseType: !39, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !282, file: !283, line: 15, baseType: !275, size: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !282, file: !283, line: 15, baseType: !25, size: 32, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !282, file: !283, line: 15, baseType: !404, size: 32, offset: 736)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !4, line: 567, baseType: !25)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !282, file: !283, line: 15, baseType: !27, size: 32, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !277, file: !4, line: 237, baseType: !25, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !277, file: !4, line: 237, baseType: !25, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !277, file: !4, line: 238, baseType: !409, size: 64, offset: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !4, line: 238, size: 64, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !409, file: !4, line: 238, baseType: !40, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !409, file: !4, line: 238, baseType: !32, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !409, file: !4, line: 238, baseType: !29, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !409, file: !4, line: 238, baseType: !35, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !409, file: !4, line: 238, baseType: !78, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !409, file: !4, line: 238, baseType: !94, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !409, file: !4, line: 238, baseType: !135, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !409, file: !4, line: 238, baseType: !137, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !409, file: !4, line: 238, baseType: !160, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !409, file: !4, line: 238, baseType: !190, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !162, file: !163, line: 15, baseType: !25, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !162, file: !163, line: 16, baseType: !25, size: 32, offset: 224)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !162, file: !163, line: 17, baseType: !48, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !162, file: !163, line: 18, baseType: !425, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !162, file: !163, line: 19, baseType: !275, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !162, file: !163, line: 20, baseType: !210, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !162, file: !163, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !162, file: !163, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !162, file: !163, line: 23, baseType: !144, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !126, file: !4, line: 258, baseType: !190, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !112, file: !96, line: 159, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!27, !437, !40, !40, !40, !361, !78, !39, !25}
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !112, file: !96, line: 162, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!40, !437, !78, !442, !40, !40, !445, !446}
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !96, line: 152, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !96, line: 148, size: 128, elements: !449)
!449 = !{!450, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !448, file: !96, line: 150, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !448, file: !96, line: 151, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !112, file: !96, line: 170, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!78, !437}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !112, file: !96, line: 171, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !437}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !112, file: !96, line: 172, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !437, !466, !432}
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !112, file: !96, line: 174, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !437, !466, !471}
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !112, file: !96, line: 176, baseType: !475, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!27, !437, !471, !466}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !112, file: !96, line: 178, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!78, !437, !432, !432, !445}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !112, file: !96, line: 180, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!78, !437, !471, !445}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !112, file: !96, line: 182, baseType: !455, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !112, file: !96, line: 186, baseType: !488, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!118, !491, !28, !298, !110, !118, !492, !25, !25}
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !95, file: !96, line: 142, baseType: !118, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !95, file: !96, line: 142, baseType: !48, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !95, file: !96, line: 142, baseType: !25, size: 32, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !95, file: !96, line: 142, baseType: !361, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !95, file: !96, line: 142, baseType: !361, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !95, file: !96, line: 142, baseType: !101, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !95, file: !96, line: 142, baseType: !500, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !96, line: 45, size: 1024, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !501, file: !96, line: 46, baseType: !37, size: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !501, file: !96, line: 47, baseType: !505, size: 960, offset: 64)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 960, elements: !513)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !96, line: 38, size: 320, elements: !507)
!507 = !{!508, !509, !510, !511, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !506, file: !96, line: 39, baseType: !361, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !506, file: !96, line: 40, baseType: !361, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !506, file: !96, line: 41, baseType: !78, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !506, file: !96, line: 42, baseType: !78, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !506, file: !96, line: 43, baseType: !361, size: 64, offset: 256)
!513 = !{!514}
!514 = !DISubrange(count: 3)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !95, file: !96, line: 142, baseType: !25, size: 32, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !95, file: !96, line: 142, baseType: !25, size: 32, offset: 800)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !95, file: !96, line: 142, baseType: !39, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !95, file: !96, line: 142, baseType: !25, size: 32, offset: 896)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !95, file: !96, line: 142, baseType: !25, size: 32, offset: 928)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !95, file: !96, line: 142, baseType: !521, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !96, line: 68, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !96, line: 58, size: 192, elements: !524)
!524 = !{!525, !526, !527}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !523, file: !96, line: 59, baseType: !361, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !523, file: !96, line: 60, baseType: !361, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !523, file: !96, line: 67, baseType: !361, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !95, file: !96, line: 142, baseType: !40, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !95, file: !96, line: 142, baseType: !78, size: 64, offset: 1088)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !95, file: !96, line: 142, baseType: !361, size: 64, offset: 1152)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !95, file: !96, line: 142, baseType: !361, size: 64, offset: 1216)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !95, file: !96, line: 142, baseType: !361, size: 64, offset: 1280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !95, file: !96, line: 142, baseType: !361, size: 64, offset: 1344)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !95, file: !96, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !95, file: !96, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !95, file: !96, line: 142, baseType: !275, size: 64, offset: 1472)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !86, file: !4, line: 220, baseType: !135, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !86, file: !4, line: 220, baseType: !137, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !86, file: !4, line: 220, baseType: !160, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !86, file: !4, line: 220, baseType: !190, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !72, file: !66, line: 13, baseType: !75, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !72, file: !66, line: 14, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!25, !78, !63}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !72, file: !66, line: 15, baseType: !75, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !72, file: !66, line: 16, baseType: !75, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !72, file: !66, line: 17, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!28, !78, !63, !78, !443, !27}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !72, file: !66, line: 19, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!28, !63, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !30, line: 2677, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !4, line: 2150, size: 320, elements: !559)
!559 = !{!560, !561, !562, !568, !569}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !558, file: !4, line: 2151, baseType: !425, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !4, line: 2152, baseType: !29, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !558, file: !4, line: 2153, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !30, line: 2639, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !30, line: 5434, size: 8, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !565, file: !30, line: 5435, baseType: !41, size: 8)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !558, file: !4, line: 2154, baseType: !563, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !558, file: !4, line: 2155, baseType: !425, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !72, file: !66, line: 20, baseType: !75, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !65, file: !66, line: 26, baseType: !572, size: 16, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !26, line: 173, baseType: !573)
!573 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !65, file: !66, line: 27, baseType: !41, size: 8, offset: 144)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !65, file: !66, line: 28, baseType: !37, size: 8, offset: 152)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !65, file: !66, line: 29, baseType: !361, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !65, file: !66, line: 30, baseType: !78, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !65, file: !66, line: 31, baseType: !40, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !60, file: !4, line: 496, baseType: !101, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !55, file: !56, line: 133, baseType: !101, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !55, file: !56, line: 134, baseType: !101, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !50, file: !4, line: 247, baseType: !25, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !50, file: !4, line: 247, baseType: !25, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !50, file: !4, line: 248, baseType: !585, size: 64, offset: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !50, file: !4, line: 248, size: 64, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !585, file: !4, line: 248, baseType: !40, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !585, file: !4, line: 248, baseType: !32, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !585, file: !4, line: 248, baseType: !29, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !585, file: !4, line: 248, baseType: !35, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !585, file: !4, line: 248, baseType: !78, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !585, file: !4, line: 248, baseType: !94, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !585, file: !4, line: 248, baseType: !135, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !585, file: !4, line: 248, baseType: !137, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !585, file: !4, line: 248, baseType: !160, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !585, file: !4, line: 248, baseType: !190, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !45, file: !4, line: 518, baseType: !60, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !45, file: !4, line: 518, baseType: !101, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !45, file: !4, line: 518, baseType: !600, size: 64, offset: 192)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !4, line: 518, size: 64, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !600, file: !4, line: 518, baseType: !101, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !600, file: !4, line: 518, baseType: !40, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !45, file: !4, line: 519, baseType: !184, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !45, file: !4, line: 520, baseType: !229, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !30, line: 2659, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !4, line: 499, size: 256, elements: !609)
!609 = !{!610, !611, !612, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !608, file: !4, line: 500, baseType: !48, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !608, file: !4, line: 500, baseType: !60, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !608, file: !4, line: 500, baseType: !101, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !608, file: !4, line: 500, baseType: !614, size: 64, offset: 192)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !4, line: 500, size: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !614, file: !4, line: 500, baseType: !101, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !614, file: !4, line: 500, baseType: !40, size: 64)
!618 = !{!619, !623}
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression(DW_OP_constu, 1844674407370955161, DW_OP_stack_value))
!620 = distinct !DIGlobalVariable(name: "uv_max_div_10", scope: !0, file: !621, line: 844, type: !622, isLocal: true, isDefinition: true)
!621 = !DIFile(filename: "apps/500.perlbench_r/src/numeric.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d9b7586d9a31cc99d85644c27bc830fa")
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!624 = distinct !DIGlobalVariable(name: "uv_max_mod_10", scope: !0, file: !621, line: 845, type: !625, isLocal: true, isDefinition: true)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!626 = !{i32 7, !"Dwarf Version", i32 5}
!627 = !{i32 2, !"Debug Info Version", i32 3}
!628 = !{i32 1, !"wchar_size", i32 4}
!629 = !{i32 7, !"PIC Level", i32 2}
!630 = !{i32 7, !"PIE Level", i32 2}
!631 = !{i32 7, !"uwtable", i32 2}
!632 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!633 = distinct !DISubprogram(name: "Perl_cast_ulong", scope: !621, file: !621, line: 33, type: !634, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!25, !35}
!636 = !{!637}
!637 = !DILocalVariable(name: "f", arg: 1, scope: !633, file: !621, line: 33, type: !35)
!638 = !DILocation(line: 0, scope: !633)
!639 = !DILocation(line: 35, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !621, line: 35, column: 7)
!641 = !DILocation(line: 35, column: 7, scope: !633)
!642 = !DILocation(line: 36, column: 14, scope: !640)
!643 = !DILocation(line: 36, column: 12, scope: !640)
!644 = !DILocation(line: 36, column: 47, scope: !640)
!645 = !DILocation(line: 37, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !633, file: !621, line: 37, column: 7)
!647 = !DILocation(line: 37, column: 7, scope: !633)
!648 = !DILocation(line: 44, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !621, line: 37, column: 23)
!650 = !DILocation(line: 44, column: 5, scope: !649)
!651 = !DILocation(line: 47, column: 12, scope: !633)
!652 = !DILocation(line: 47, column: 10, scope: !633)
!653 = !DILocation(line: 47, column: 3, scope: !633)
!654 = !DILocation(line: 48, column: 1, scope: !633)
!655 = distinct !DISubprogram(name: "Perl_cast_i32", scope: !621, file: !621, line: 51, type: !656, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!27, !35}
!658 = !{!659}
!659 = !DILocalVariable(name: "f", arg: 1, scope: !655, file: !621, line: 51, type: !35)
!660 = !DILocation(line: 0, scope: !655)
!661 = !DILocation(line: 53, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !655, file: !621, line: 53, column: 7)
!663 = !DILocation(line: 53, column: 7, scope: !655)
!664 = !DILocation(line: 54, column: 14, scope: !662)
!665 = !DILocation(line: 54, column: 12, scope: !662)
!666 = !DILocation(line: 54, column: 36, scope: !662)
!667 = !DILocation(line: 55, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !655, file: !621, line: 55, column: 7)
!669 = !DILocation(line: 55, column: 7, scope: !655)
!670 = !DILocation(line: 62, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !621, line: 55, column: 23)
!672 = !DILocation(line: 62, column: 5, scope: !671)
!673 = !DILocation(line: 65, column: 12, scope: !655)
!674 = !DILocation(line: 65, column: 10, scope: !655)
!675 = !DILocation(line: 65, column: 3, scope: !655)
!676 = !DILocation(line: 66, column: 1, scope: !655)
!677 = distinct !DISubprogram(name: "Perl_cast_iv", scope: !621, file: !621, line: 69, type: !678, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!32, !35}
!680 = !{!681}
!681 = !DILocalVariable(name: "f", arg: 1, scope: !677, file: !621, line: 69, type: !35)
!682 = !DILocation(line: 0, scope: !677)
!683 = !DILocation(line: 71, column: 9, scope: !684)
!684 = distinct !DILexicalBlock(scope: !677, file: !621, line: 71, column: 7)
!685 = !DILocation(line: 71, column: 7, scope: !677)
!686 = !DILocation(line: 72, column: 14, scope: !684)
!687 = !DILocation(line: 72, column: 12, scope: !684)
!688 = !DILocation(line: 72, column: 34, scope: !684)
!689 = !DILocation(line: 73, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !677, file: !621, line: 73, column: 7)
!691 = !DILocation(line: 73, column: 7, scope: !677)
!692 = !DILocation(line: 81, column: 16, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !621, line: 73, column: 22)
!694 = !DILocation(line: 81, column: 5, scope: !693)
!695 = !DILocation(line: 84, column: 12, scope: !677)
!696 = !DILocation(line: 84, column: 10, scope: !677)
!697 = !DILocation(line: 84, column: 3, scope: !677)
!698 = !DILocation(line: 85, column: 1, scope: !677)
!699 = distinct !DISubprogram(name: "Perl_cast_uv", scope: !621, file: !621, line: 88, type: !700, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{!29, !35}
!702 = !{!703}
!703 = !DILocalVariable(name: "f", arg: 1, scope: !699, file: !621, line: 88, type: !35)
!704 = !DILocation(line: 0, scope: !699)
!705 = !DILocation(line: 90, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !699, file: !621, line: 90, column: 7)
!707 = !DILocation(line: 90, column: 7, scope: !699)
!708 = !DILocation(line: 91, column: 14, scope: !706)
!709 = !DILocation(line: 91, column: 12, scope: !706)
!710 = !DILocation(line: 91, column: 43, scope: !706)
!711 = !DILocation(line: 92, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !699, file: !621, line: 92, column: 7)
!713 = !DILocation(line: 92, column: 7, scope: !699)
!714 = !DILocation(line: 99, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !621, line: 92, column: 22)
!716 = !DILocation(line: 99, column: 5, scope: !715)
!717 = !DILocation(line: 102, column: 12, scope: !699)
!718 = !DILocation(line: 102, column: 10, scope: !699)
!719 = !DILocation(line: 102, column: 3, scope: !699)
!720 = !DILocation(line: 103, column: 1, scope: !699)
!721 = distinct !DISubprogram(name: "Perl_grok_bin", scope: !621, file: !621, line: 137, type: !722, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !727)
!722 = !DISubroutineType(types: !723)
!723 = !{!29, !443, !724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !739, !740, !741}
!728 = !DILocalVariable(name: "start", arg: 1, scope: !721, file: !621, line: 137, type: !443)
!729 = !DILocalVariable(name: "len_p", arg: 2, scope: !721, file: !621, line: 137, type: !724)
!730 = !DILocalVariable(name: "flags", arg: 3, scope: !721, file: !621, line: 137, type: !725)
!731 = !DILocalVariable(name: "result", arg: 4, scope: !721, file: !621, line: 137, type: !726)
!732 = !DILocalVariable(name: "s", scope: !721, file: !621, line: 139, type: !443)
!733 = !DILocalVariable(name: "len", scope: !721, file: !621, line: 140, type: !101)
!734 = !DILocalVariable(name: "value", scope: !721, file: !621, line: 141, type: !29)
!735 = !DILocalVariable(name: "value_nv", scope: !721, file: !621, line: 142, type: !35)
!736 = !DILocalVariable(name: "max_div_2", scope: !721, file: !621, line: 144, type: !622)
!737 = !DILocalVariable(name: "allow_underscores", scope: !721, file: !621, line: 145, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!739 = !DILocalVariable(name: "overflowed", scope: !721, file: !621, line: 146, type: !34)
!740 = !DILocalVariable(name: "bit", scope: !721, file: !621, line: 147, type: !41)
!741 = !DILabel(scope: !742, name: "redo", file: !621, line: 172)
!742 = distinct !DILexicalBlock(scope: !743, file: !621, line: 168, column: 39)
!743 = distinct !DILexicalBlock(scope: !744, file: !621, line: 168, column: 13)
!744 = distinct !DILexicalBlock(scope: !745, file: !621, line: 167, column: 38)
!745 = distinct !DILexicalBlock(scope: !746, file: !621, line: 167, column: 5)
!746 = distinct !DILexicalBlock(scope: !721, file: !621, line: 167, column: 5)
!747 = !DILocation(line: 0, scope: !721)
!748 = !DILocation(line: 140, column: 18, scope: !721)
!749 = !DILocation(line: 145, column: 36, scope: !721)
!750 = !DILocation(line: 151, column: 18, scope: !751)
!751 = distinct !DILexicalBlock(scope: !721, file: !621, line: 151, column: 9)
!752 = !DILocation(line: 151, column: 9, scope: !721)
!753 = !DILocation(line: 156, column: 17, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !621, line: 156, column: 17)
!755 = distinct !DILexicalBlock(scope: !756, file: !621, line: 155, column: 23)
!756 = distinct !DILexicalBlock(scope: !757, file: !621, line: 155, column: 13)
!757 = distinct !DILexicalBlock(scope: !751, file: !621, line: 151, column: 48)
!758 = !DILocation(line: 156, column: 17, scope: !755)
!759 = !DILocation(line: 157, column: 18, scope: !760)
!760 = distinct !DILexicalBlock(scope: !754, file: !621, line: 156, column: 45)
!761 = !DILocation(line: 158, column: 20, scope: !760)
!762 = !DILocation(line: 159, column: 13, scope: !760)
!763 = !DILocation(line: 160, column: 26, scope: !764)
!764 = distinct !DILexicalBlock(scope: !754, file: !621, line: 160, column: 22)
!765 = !DILocation(line: 160, column: 31, scope: !764)
!766 = !DILocation(line: 160, column: 39, scope: !764)
!767 = !DILocation(line: 160, column: 46, scope: !764)
!768 = !DILocation(line: 160, column: 50, scope: !764)
!769 = !DILocation(line: 160, column: 22, scope: !754)
!770 = !DILocation(line: 161, column: 18, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !621, line: 160, column: 79)
!772 = !DILocation(line: 162, column: 20, scope: !771)
!773 = !DILocation(line: 163, column: 13, scope: !771)
!774 = !DILocation(line: 167, column: 15, scope: !745)
!775 = !DILocation(line: 167, column: 18, scope: !745)
!776 = !DILocation(line: 217, column: 16, scope: !721)
!777 = !DILocation(line: 217, column: 12, scope: !721)
!778 = !DILocation(line: 218, column: 9, scope: !721)
!779 = !DILocation(line: 167, column: 5, scope: !746)
!780 = !DILocation(line: 167, column: 28, scope: !745)
!781 = !DILocation(line: 168, column: 24, scope: !743)
!782 = !DILocation(line: 172, column: 11, scope: !742)
!783 = !DILocation(line: 173, column: 18, scope: !784)
!784 = distinct !DILexicalBlock(scope: !742, file: !621, line: 173, column: 17)
!785 = !DILocation(line: 173, column: 17, scope: !742)
!786 = !DILocation(line: 174, column: 27, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !621, line: 174, column: 21)
!788 = distinct !DILexicalBlock(scope: !784, file: !621, line: 173, column: 30)
!789 = !DILocation(line: 174, column: 21, scope: !788)
!790 = !DILocation(line: 180, column: 3, scope: !788)
!791 = !DILocation(line: 183, column: 28, scope: !788)
!792 = !DILocation(line: 184, column: 13, scope: !788)
!793 = !DILocation(line: 185, column: 22, scope: !742)
!794 = !DILocation(line: 192, column: 30, scope: !742)
!795 = !DILocation(line: 192, column: 34, scope: !742)
!796 = !DILocation(line: 192, column: 25, scope: !742)
!797 = !DILocation(line: 192, column: 22, scope: !742)
!798 = !DILocation(line: 193, column: 13, scope: !742)
!799 = !DILocation(line: 175, column: 36, scope: !800)
!800 = distinct !DILexicalBlock(scope: !787, file: !621, line: 174, column: 41)
!801 = !DILocation(line: 175, column: 45, scope: !800)
!802 = !DILocation(line: 175, column: 49, scope: !800)
!803 = !DILocation(line: 175, column: 42, scope: !800)
!804 = !DILocation(line: 176, column: 21, scope: !800)
!805 = !DILocation(line: 146, column: 10, scope: !721)
!806 = !DILocation(line: 167, column: 34, scope: !745)
!807 = distinct !{!807, !779, !808, !809, !810}
!808 = !DILocation(line: 206, column: 5, scope: !746)
!809 = !{!"llvm.loop.mustprogress"}
!810 = !{!"llvm.loop.unroll.disable"}
!811 = !DILocation(line: 0, scope: !745)
!812 = !DILocation(line: 195, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !744, file: !621, line: 195, column: 13)
!814 = !DILocation(line: 195, column: 24, scope: !813)
!815 = !DILocation(line: 195, column: 62, scope: !813)
!816 = !DILocation(line: 196, column: 13, scope: !813)
!817 = !DILocation(line: 198, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !813, file: !621, line: 197, column: 6)
!819 = !DILocation(line: 200, column: 17, scope: !818)
!820 = !DILocation(line: 202, column: 15, scope: !821)
!821 = distinct !DILexicalBlock(scope: !744, file: !621, line: 202, column: 13)
!822 = !DILocation(line: 202, column: 22, scope: !821)
!823 = !DILocation(line: 202, column: 13, scope: !744)
!824 = !DILocation(line: 204, column: 44, scope: !821)
!825 = !DILocation(line: 203, column: 13, scope: !821)
!826 = !DILocation(line: 208, column: 14, scope: !827)
!827 = distinct !DILexicalBlock(scope: !721, file: !621, line: 208, column: 12)
!828 = !DILocation(line: 208, column: 25, scope: !827)
!829 = !DILocation(line: 210, column: 18, scope: !827)
!830 = !DILocation(line: 211, column: 12, scope: !827)
!831 = !DILocation(line: 211, column: 19, scope: !827)
!832 = !DILocation(line: 208, column: 12, scope: !721)
!833 = !DILocation(line: 214, column: 2, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !621, line: 213, column: 4)
!835 = !DILocation(line: 219, column: 16, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !621, line: 218, column: 22)
!837 = distinct !DILexicalBlock(scope: !721, file: !621, line: 218, column: 9)
!838 = !DILocation(line: 220, column: 9, scope: !836)
!839 = !DILocation(line: 222, column: 12, scope: !721)
!840 = !DILocation(line: 223, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !721, file: !621, line: 223, column: 9)
!842 = !DILocation(line: 223, column: 9, scope: !721)
!843 = !DILocation(line: 224, column: 17, scope: !841)
!844 = !DILocation(line: 224, column: 9, scope: !841)
!845 = !DILocation(line: 226, column: 1, scope: !721)
!846 = !DISubprogram(name: "Perl_ck_warner_d", scope: !847, file: !847, line: 706, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !850)
!847 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!848 = !DISubroutineType(types: !849)
!849 = !{null, !25, !443, null}
!850 = !{}
!851 = !DISubprogram(name: "Perl_ck_warner", scope: !847, file: !847, line: 700, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !850)
!852 = distinct !DISubprogram(name: "Perl_grok_hex", scope: !621, file: !621, line: 260, type: !722, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !853)
!853 = !{!854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865}
!854 = !DILocalVariable(name: "start", arg: 1, scope: !852, file: !621, line: 260, type: !443)
!855 = !DILocalVariable(name: "len_p", arg: 2, scope: !852, file: !621, line: 260, type: !724)
!856 = !DILocalVariable(name: "flags", arg: 3, scope: !852, file: !621, line: 260, type: !725)
!857 = !DILocalVariable(name: "result", arg: 4, scope: !852, file: !621, line: 260, type: !726)
!858 = !DILocalVariable(name: "s", scope: !852, file: !621, line: 262, type: !443)
!859 = !DILocalVariable(name: "len", scope: !852, file: !621, line: 263, type: !101)
!860 = !DILocalVariable(name: "value", scope: !852, file: !621, line: 264, type: !29)
!861 = !DILocalVariable(name: "value_nv", scope: !852, file: !621, line: 265, type: !35)
!862 = !DILocalVariable(name: "max_div_16", scope: !852, file: !621, line: 266, type: !622)
!863 = !DILocalVariable(name: "allow_underscores", scope: !852, file: !621, line: 267, type: !738)
!864 = !DILocalVariable(name: "overflowed", scope: !852, file: !621, line: 268, type: !34)
!865 = !DILabel(scope: !866, name: "redo", file: !621, line: 293)
!866 = distinct !DILexicalBlock(scope: !867, file: !621, line: 289, column: 27)
!867 = distinct !DILexicalBlock(scope: !868, file: !621, line: 289, column: 13)
!868 = distinct !DILexicalBlock(scope: !869, file: !621, line: 288, column: 30)
!869 = distinct !DILexicalBlock(scope: !870, file: !621, line: 288, column: 5)
!870 = distinct !DILexicalBlock(scope: !852, file: !621, line: 288, column: 5)
!871 = !DILocation(line: 0, scope: !852)
!872 = !DILocation(line: 263, column: 18, scope: !852)
!873 = !DILocation(line: 267, column: 36, scope: !852)
!874 = !DILocation(line: 272, column: 18, scope: !875)
!875 = distinct !DILexicalBlock(scope: !852, file: !621, line: 272, column: 9)
!876 = !DILocation(line: 272, column: 9, scope: !852)
!877 = !DILocation(line: 277, column: 17, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !621, line: 277, column: 17)
!879 = distinct !DILexicalBlock(scope: !880, file: !621, line: 276, column: 23)
!880 = distinct !DILexicalBlock(scope: !881, file: !621, line: 276, column: 13)
!881 = distinct !DILexicalBlock(scope: !875, file: !621, line: 272, column: 48)
!882 = !DILocation(line: 277, column: 17, scope: !879)
!883 = !DILocation(line: 278, column: 18, scope: !884)
!884 = distinct !DILexicalBlock(scope: !878, file: !621, line: 277, column: 45)
!885 = !DILocation(line: 279, column: 20, scope: !884)
!886 = !DILocation(line: 280, column: 13, scope: !884)
!887 = !DILocation(line: 281, column: 26, scope: !888)
!888 = distinct !DILexicalBlock(scope: !878, file: !621, line: 281, column: 22)
!889 = !DILocation(line: 281, column: 31, scope: !888)
!890 = !DILocation(line: 281, column: 39, scope: !888)
!891 = !DILocation(line: 281, column: 46, scope: !888)
!892 = !DILocation(line: 281, column: 50, scope: !888)
!893 = !DILocation(line: 281, column: 22, scope: !878)
!894 = !DILocation(line: 282, column: 18, scope: !895)
!895 = distinct !DILexicalBlock(scope: !888, file: !621, line: 281, column: 79)
!896 = !DILocation(line: 283, column: 20, scope: !895)
!897 = !DILocation(line: 284, column: 13, scope: !895)
!898 = !DILocation(line: 288, column: 15, scope: !869)
!899 = !DILocation(line: 288, column: 18, scope: !869)
!900 = !DILocation(line: 288, column: 5, scope: !870)
!901 = !DILocation(line: 338, column: 16, scope: !852)
!902 = !DILocation(line: 338, column: 12, scope: !852)
!903 = !DILocation(line: 339, column: 9, scope: !852)
!904 = !DILocation(line: 288, column: 21, scope: !869)
!905 = !DILocation(line: 289, column: 13, scope: !867)
!906 = !DILocation(line: 289, column: 13, scope: !868)
!907 = !DILocation(line: 0, scope: !869)
!908 = !DILocation(line: 293, column: 11, scope: !866)
!909 = !DILocation(line: 294, column: 18, scope: !910)
!910 = distinct !DILexicalBlock(scope: !866, file: !621, line: 294, column: 17)
!911 = !DILocation(line: 294, column: 17, scope: !866)
!912 = !DILocation(line: 295, column: 27, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !621, line: 295, column: 21)
!914 = distinct !DILexicalBlock(scope: !910, file: !621, line: 294, column: 30)
!915 = !DILocation(line: 295, column: 21, scope: !914)
!916 = !DILocation(line: 296, column: 36, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !621, line: 295, column: 42)
!918 = !DILocation(line: 296, column: 44, scope: !917)
!919 = !DILocation(line: 296, column: 42, scope: !917)
!920 = !DILocation(line: 297, column: 21, scope: !917)
!921 = !DILocation(line: 301, column: 3, scope: !914)
!922 = !DILocation(line: 304, column: 28, scope: !914)
!923 = !DILocation(line: 313, column: 30, scope: !866)
!924 = !DILocation(line: 305, column: 13, scope: !914)
!925 = !DILocation(line: 306, column: 22, scope: !866)
!926 = !DILocation(line: 313, column: 25, scope: !866)
!927 = !DILocation(line: 313, column: 22, scope: !866)
!928 = !DILocation(line: 314, column: 13, scope: !866)
!929 = !DILocation(line: 316, column: 16, scope: !930)
!930 = distinct !DILexicalBlock(scope: !868, file: !621, line: 316, column: 13)
!931 = !DILocation(line: 316, column: 23, scope: !930)
!932 = !DILocation(line: 316, column: 54, scope: !930)
!933 = !DILocation(line: 317, column: 3, scope: !930)
!934 = !DILocation(line: 317, column: 6, scope: !930)
!935 = !DILocation(line: 316, column: 13, scope: !868)
!936 = !DILocation(line: 319, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !930, file: !621, line: 318, column: 6)
!938 = !DILocation(line: 321, column: 17, scope: !937)
!939 = !DILocation(line: 323, column: 15, scope: !940)
!940 = distinct !DILexicalBlock(scope: !868, file: !621, line: 323, column: 13)
!941 = !DILocation(line: 323, column: 22, scope: !940)
!942 = !DILocation(line: 323, column: 13, scope: !868)
!943 = !DILocation(line: 325, column: 67, scope: !940)
!944 = !DILocation(line: 324, column: 13, scope: !940)
!945 = !DILocation(line: 268, column: 10, scope: !852)
!946 = !DILocation(line: 288, column: 26, scope: !869)
!947 = distinct !{!947, !900, !948, !809, !810}
!948 = !DILocation(line: 327, column: 5, scope: !870)
!949 = !DILocation(line: 329, column: 14, scope: !950)
!950 = distinct !DILexicalBlock(scope: !852, file: !621, line: 329, column: 12)
!951 = !DILocation(line: 329, column: 25, scope: !950)
!952 = !DILocation(line: 331, column: 18, scope: !950)
!953 = !DILocation(line: 332, column: 12, scope: !950)
!954 = !DILocation(line: 332, column: 19, scope: !950)
!955 = !DILocation(line: 329, column: 12, scope: !852)
!956 = !DILocation(line: 335, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !621, line: 334, column: 4)
!958 = !DILocation(line: 340, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !621, line: 339, column: 22)
!960 = distinct !DILexicalBlock(scope: !852, file: !621, line: 339, column: 9)
!961 = !DILocation(line: 341, column: 9, scope: !959)
!962 = !DILocation(line: 343, column: 12, scope: !852)
!963 = !DILocation(line: 344, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !852, file: !621, line: 344, column: 9)
!965 = !DILocation(line: 344, column: 9, scope: !852)
!966 = !DILocation(line: 345, column: 17, scope: !964)
!967 = !DILocation(line: 345, column: 9, scope: !964)
!968 = !DILocation(line: 347, column: 1, scope: !852)
!969 = distinct !DISubprogram(name: "Perl_grok_oct", scope: !621, file: !621, line: 379, type: !722, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982}
!971 = !DILocalVariable(name: "start", arg: 1, scope: !969, file: !621, line: 379, type: !443)
!972 = !DILocalVariable(name: "len_p", arg: 2, scope: !969, file: !621, line: 379, type: !724)
!973 = !DILocalVariable(name: "flags", arg: 3, scope: !969, file: !621, line: 379, type: !725)
!974 = !DILocalVariable(name: "result", arg: 4, scope: !969, file: !621, line: 379, type: !726)
!975 = !DILocalVariable(name: "s", scope: !969, file: !621, line: 381, type: !443)
!976 = !DILocalVariable(name: "len", scope: !969, file: !621, line: 382, type: !101)
!977 = !DILocalVariable(name: "value", scope: !969, file: !621, line: 383, type: !29)
!978 = !DILocalVariable(name: "value_nv", scope: !969, file: !621, line: 384, type: !35)
!979 = !DILocalVariable(name: "max_div_8", scope: !969, file: !621, line: 385, type: !622)
!980 = !DILocalVariable(name: "allow_underscores", scope: !969, file: !621, line: 386, type: !738)
!981 = !DILocalVariable(name: "overflowed", scope: !969, file: !621, line: 387, type: !34)
!982 = !DILabel(scope: !983, name: "redo", file: !621, line: 396)
!983 = distinct !DILexicalBlock(scope: !984, file: !621, line: 392, column: 26)
!984 = distinct !DILexicalBlock(scope: !985, file: !621, line: 392, column: 13)
!985 = distinct !DILexicalBlock(scope: !986, file: !621, line: 391, column: 30)
!986 = distinct !DILexicalBlock(scope: !987, file: !621, line: 391, column: 5)
!987 = distinct !DILexicalBlock(scope: !969, file: !621, line: 391, column: 5)
!988 = !DILocation(line: 0, scope: !969)
!989 = !DILocation(line: 382, column: 18, scope: !969)
!990 = !DILocation(line: 391, column: 15, scope: !986)
!991 = !DILocation(line: 391, column: 18, scope: !986)
!992 = !DILocation(line: 445, column: 12, scope: !969)
!993 = !DILocation(line: 446, column: 9, scope: !969)
!994 = !DILocation(line: 386, column: 36, scope: !969)
!995 = !DILocation(line: 391, column: 5, scope: !987)
!996 = !DILocation(line: 391, column: 21, scope: !986)
!997 = !DILocation(line: 392, column: 13, scope: !984)
!998 = !DILocation(line: 392, column: 13, scope: !985)
!999 = !DILocation(line: 396, column: 11, scope: !983)
!1000 = !DILocation(line: 397, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !983, file: !621, line: 397, column: 17)
!1002 = !DILocation(line: 397, column: 17, scope: !983)
!1003 = !DILocation(line: 398, column: 27, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !621, line: 398, column: 21)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !621, line: 397, column: 30)
!1006 = !DILocation(line: 398, column: 21, scope: !1005)
!1007 = !DILocation(line: 404, column: 3, scope: !1005)
!1008 = !DILocation(line: 407, column: 28, scope: !1005)
!1009 = !DILocation(line: 416, column: 30, scope: !983)
!1010 = !DILocation(line: 408, column: 13, scope: !1005)
!1011 = !DILocation(line: 409, column: 22, scope: !983)
!1012 = !DILocation(line: 416, column: 25, scope: !983)
!1013 = !DILocation(line: 416, column: 22, scope: !983)
!1014 = !DILocation(line: 417, column: 13, scope: !983)
!1015 = !DILocation(line: 399, column: 36, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1004, file: !621, line: 398, column: 41)
!1017 = !DILocation(line: 399, column: 44, scope: !1016)
!1018 = !DILocation(line: 399, column: 42, scope: !1016)
!1019 = !DILocation(line: 400, column: 21, scope: !1016)
!1020 = !DILocation(line: 387, column: 10, scope: !969)
!1021 = !DILocation(line: 391, column: 26, scope: !986)
!1022 = distinct !{!1022, !995, !1023, !809, !810}
!1023 = !DILocation(line: 434, column: 5, scope: !987)
!1024 = !DILocation(line: 0, scope: !986)
!1025 = !DILocation(line: 419, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !985, file: !621, line: 419, column: 13)
!1027 = !DILocation(line: 419, column: 23, scope: !1026)
!1028 = !DILocation(line: 419, column: 54, scope: !1026)
!1029 = !DILocation(line: 419, column: 13, scope: !985)
!1030 = !DILocation(line: 420, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !621, line: 419, column: 69)
!1032 = !DILocation(line: 422, column: 13, scope: !1031)
!1033 = !DILocation(line: 428, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !985, file: !621, line: 428, column: 13)
!1035 = !DILocation(line: 428, column: 13, scope: !985)
!1036 = !DILocation(line: 429, column: 19, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !621, line: 429, column: 17)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !621, line: 428, column: 26)
!1039 = !DILocation(line: 429, column: 26, scope: !1037)
!1040 = !DILocation(line: 429, column: 17, scope: !1038)
!1041 = !DILocation(line: 431, column: 47, scope: !1037)
!1042 = !DILocation(line: 430, column: 17, scope: !1037)
!1043 = !DILocation(line: 436, column: 14, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !969, file: !621, line: 436, column: 12)
!1045 = !DILocation(line: 436, column: 25, scope: !1044)
!1046 = !DILocation(line: 438, column: 18, scope: !1044)
!1047 = !DILocation(line: 439, column: 12, scope: !1044)
!1048 = !DILocation(line: 439, column: 19, scope: !1044)
!1049 = !DILocation(line: 436, column: 12, scope: !969)
!1050 = !DILocation(line: 442, column: 2, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !621, line: 441, column: 4)
!1052 = !DILocation(line: 445, column: 16, scope: !969)
!1053 = !DILocation(line: 447, column: 16, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !621, line: 446, column: 22)
!1055 = distinct !DILexicalBlock(scope: !969, file: !621, line: 446, column: 9)
!1056 = !DILocation(line: 448, column: 9, scope: !1054)
!1057 = !DILocation(line: 450, column: 12, scope: !969)
!1058 = !DILocation(line: 451, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !969, file: !621, line: 451, column: 9)
!1060 = !DILocation(line: 451, column: 9, scope: !969)
!1061 = !DILocation(line: 452, column: 17, scope: !1059)
!1062 = !DILocation(line: 452, column: 9, scope: !1059)
!1063 = !DILocation(line: 454, column: 1, scope: !969)
!1064 = distinct !DISubprogram(name: "Perl_scan_bin", scope: !621, file: !621, line: 473, type: !1065, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!35, !443, !101, !724}
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073}
!1068 = !DILocalVariable(name: "start", arg: 1, scope: !1064, file: !621, line: 473, type: !443)
!1069 = !DILocalVariable(name: "len", arg: 2, scope: !1064, file: !621, line: 473, type: !101)
!1070 = !DILocalVariable(name: "retlen", arg: 3, scope: !1064, file: !621, line: 473, type: !724)
!1071 = !DILocalVariable(name: "rnv", scope: !1064, file: !621, line: 475, type: !35)
!1072 = !DILocalVariable(name: "flags", scope: !1064, file: !621, line: 476, type: !27)
!1073 = !DILocalVariable(name: "ruv", scope: !1064, file: !621, line: 477, type: !622)
!1074 = !DILocation(line: 0, scope: !1064)
!1075 = !DILocation(line: 475, column: 5, scope: !1064)
!1076 = !DILocation(line: 476, column: 5, scope: !1064)
!1077 = !DILocation(line: 476, column: 17, scope: !1064)
!1078 = !DILocation(line: 476, column: 9, scope: !1064)
!1079 = !DILocation(line: 477, column: 20, scope: !1064)
!1080 = !DILocation(line: 481, column: 15, scope: !1064)
!1081 = !DILocation(line: 481, column: 13, scope: !1064)
!1082 = !DILocation(line: 482, column: 13, scope: !1064)
!1083 = !DILocation(line: 482, column: 19, scope: !1064)
!1084 = !DILocation(line: 482, column: 12, scope: !1064)
!1085 = !DILocation(line: 482, column: 54, scope: !1064)
!1086 = !DILocation(line: 482, column: 60, scope: !1064)
!1087 = !DILocation(line: 483, column: 1, scope: !1064)
!1088 = !DILocation(line: 482, column: 5, scope: !1064)
!1089 = distinct !DISubprogram(name: "Perl_scan_oct", scope: !621, file: !621, line: 486, type: !1065, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096}
!1091 = !DILocalVariable(name: "start", arg: 1, scope: !1089, file: !621, line: 486, type: !443)
!1092 = !DILocalVariable(name: "len", arg: 2, scope: !1089, file: !621, line: 486, type: !101)
!1093 = !DILocalVariable(name: "retlen", arg: 3, scope: !1089, file: !621, line: 486, type: !724)
!1094 = !DILocalVariable(name: "rnv", scope: !1089, file: !621, line: 488, type: !35)
!1095 = !DILocalVariable(name: "flags", scope: !1089, file: !621, line: 489, type: !27)
!1096 = !DILocalVariable(name: "ruv", scope: !1089, file: !621, line: 490, type: !622)
!1097 = !DILocation(line: 0, scope: !1089)
!1098 = !DILocation(line: 488, column: 5, scope: !1089)
!1099 = !DILocation(line: 489, column: 5, scope: !1089)
!1100 = !DILocation(line: 489, column: 17, scope: !1089)
!1101 = !DILocation(line: 489, column: 9, scope: !1089)
!1102 = !DILocation(line: 490, column: 20, scope: !1089)
!1103 = !DILocation(line: 494, column: 15, scope: !1089)
!1104 = !DILocation(line: 494, column: 13, scope: !1089)
!1105 = !DILocation(line: 495, column: 13, scope: !1089)
!1106 = !DILocation(line: 495, column: 19, scope: !1089)
!1107 = !DILocation(line: 495, column: 12, scope: !1089)
!1108 = !DILocation(line: 495, column: 54, scope: !1089)
!1109 = !DILocation(line: 495, column: 60, scope: !1089)
!1110 = !DILocation(line: 496, column: 1, scope: !1089)
!1111 = !DILocation(line: 495, column: 5, scope: !1089)
!1112 = distinct !DISubprogram(name: "Perl_scan_hex", scope: !621, file: !621, line: 499, type: !1065, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119}
!1114 = !DILocalVariable(name: "start", arg: 1, scope: !1112, file: !621, line: 499, type: !443)
!1115 = !DILocalVariable(name: "len", arg: 2, scope: !1112, file: !621, line: 499, type: !101)
!1116 = !DILocalVariable(name: "retlen", arg: 3, scope: !1112, file: !621, line: 499, type: !724)
!1117 = !DILocalVariable(name: "rnv", scope: !1112, file: !621, line: 501, type: !35)
!1118 = !DILocalVariable(name: "flags", scope: !1112, file: !621, line: 502, type: !27)
!1119 = !DILocalVariable(name: "ruv", scope: !1112, file: !621, line: 503, type: !622)
!1120 = !DILocation(line: 0, scope: !1112)
!1121 = !DILocation(line: 501, column: 5, scope: !1112)
!1122 = !DILocation(line: 502, column: 5, scope: !1112)
!1123 = !DILocation(line: 502, column: 17, scope: !1112)
!1124 = !DILocation(line: 502, column: 9, scope: !1112)
!1125 = !DILocation(line: 503, column: 20, scope: !1112)
!1126 = !DILocation(line: 507, column: 15, scope: !1112)
!1127 = !DILocation(line: 507, column: 13, scope: !1112)
!1128 = !DILocation(line: 508, column: 13, scope: !1112)
!1129 = !DILocation(line: 508, column: 19, scope: !1112)
!1130 = !DILocation(line: 508, column: 12, scope: !1112)
!1131 = !DILocation(line: 508, column: 54, scope: !1112)
!1132 = !DILocation(line: 508, column: 60, scope: !1112)
!1133 = !DILocation(line: 509, column: 1, scope: !1112)
!1134 = !DILocation(line: 508, column: 5, scope: !1112)
!1135 = distinct !DISubprogram(name: "Perl_grok_numeric_radix", scope: !621, file: !621, line: 519, type: !1136, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1139)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!34, !1138, !443}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1139 = !{!1140, !1141}
!1140 = !DILocalVariable(name: "sp", arg: 1, scope: !1135, file: !621, line: 519, type: !1138)
!1141 = !DILocalVariable(name: "send", arg: 2, scope: !1135, file: !621, line: 519, type: !443)
!1142 = !DILocation(line: 0, scope: !1135)
!1143 = !DILocation(line: 544, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !621, line: 544, column: 9)
!1145 = !DILocation(line: 544, column: 13, scope: !1144)
!1146 = !DILocation(line: 544, column: 20, scope: !1144)
!1147 = !DILocation(line: 544, column: 23, scope: !1144)
!1148 = !DILocation(line: 544, column: 28, scope: !1144)
!1149 = !DILocation(line: 544, column: 9, scope: !1135)
!1150 = !DILocation(line: 545, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1144, file: !621, line: 544, column: 36)
!1152 = !DILocation(line: 546, column: 9, scope: !1151)
!1153 = !DILocation(line: 549, column: 1, scope: !1135)
!1154 = distinct !DISubprogram(name: "Perl_grok_infnan", scope: !621, file: !621, line: 573, type: !1155, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!28, !1138, !443}
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1170, !1176, !1179, !1180, !1183, !1184, !1187, !1188}
!1158 = !DILocalVariable(name: "sp", arg: 1, scope: !1154, file: !621, line: 573, type: !1138)
!1159 = !DILocalVariable(name: "send", arg: 2, scope: !1154, file: !621, line: 573, type: !443)
!1160 = !DILocalVariable(name: "s", scope: !1154, file: !621, line: 575, type: !443)
!1161 = !DILocalVariable(name: "flags", scope: !1154, file: !621, line: 576, type: !28)
!1162 = !DILocalVariable(name: "odh", scope: !1154, file: !621, line: 577, type: !34)
!1163 = !DILocalVariable(name: "fail", scope: !1164, file: !621, line: 611, type: !28)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !621, line: 610, column: 57)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !621, line: 610, column: 17)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !621, line: 608, column: 39)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !621, line: 608, column: 13)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !621, line: 603, column: 35)
!1169 = distinct !DILexicalBlock(scope: !1154, file: !621, line: 603, column: 9)
!1170 = !DILocalVariable(name: "t", scope: !1171, file: !621, line: 671, type: !443)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !621, line: 669, column: 28)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !621, line: 669, column: 17)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !621, line: 651, column: 39)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !621, line: 651, column: 13)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !621, line: 642, column: 10)
!1176 = !DILocalVariable(name: "nantype", scope: !1177, file: !621, line: 684, type: !28)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !621, line: 683, column: 32)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !621, line: 683, column: 21)
!1179 = !DILocalVariable(name: "nanval", scope: !1177, file: !621, line: 685, type: !29)
!1180 = !DILocalVariable(name: "len", scope: !1181, file: !621, line: 689, type: !101)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !621, line: 688, column: 41)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !621, line: 686, column: 25)
!1183 = !DILocalVariable(name: "flags", scope: !1181, file: !621, line: 690, type: !27)
!1184 = !DILocalVariable(name: "len", scope: !1185, file: !621, line: 701, type: !101)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !621, line: 700, column: 62)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !621, line: 698, column: 32)
!1187 = !DILocalVariable(name: "flags", scope: !1185, file: !621, line: 702, type: !27)
!1188 = !DILocalVariable(name: "u", scope: !1189, file: !621, line: 711, type: !443)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !621, line: 710, column: 28)
!1190 = !DILocation(line: 0, scope: !1154)
!1191 = !DILocation(line: 575, column: 21, scope: !1154)
!1192 = !DILocation(line: 581, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1154, file: !621, line: 581, column: 9)
!1194 = !DILocation(line: 581, column: 9, scope: !1154)
!1195 = !DILocation(line: 582, column: 10, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !621, line: 581, column: 20)
!1197 = !DILocation(line: 582, column: 20, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1196, file: !621, line: 582, column: 18)
!1199 = !DILocation(line: 582, column: 18, scope: !1196)
!1200 = !DILocation(line: 586, column: 10, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !621, line: 584, column: 25)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !621, line: 584, column: 14)
!1203 = !DILocation(line: 586, column: 20, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !621, line: 586, column: 18)
!1205 = !DILocation(line: 586, column: 18, scope: !1201)
!1206 = !DILocation(line: 589, column: 9, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1154, file: !621, line: 589, column: 9)
!1208 = !DILocation(line: 589, column: 12, scope: !1207)
!1209 = !DILocation(line: 589, column: 9, scope: !1154)
!1210 = !DILocation(line: 592, column: 10, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !621, line: 589, column: 20)
!1212 = !DILocation(line: 592, column: 20, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !621, line: 592, column: 18)
!1214 = !DILocation(line: 592, column: 18, scope: !1211)
!1215 = !DILocation(line: 593, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !621, line: 593, column: 13)
!1217 = !DILocation(line: 593, column: 16, scope: !1216)
!1218 = !DILocation(line: 593, column: 13, scope: !1211)
!1219 = !DILocation(line: 594, column: 14, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !621, line: 593, column: 24)
!1221 = !DILocation(line: 594, column: 24, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1220, file: !621, line: 594, column: 22)
!1223 = !DILocation(line: 594, column: 22, scope: !1220)
!1224 = !DILocation(line: 596, column: 13, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1211, file: !621, line: 596, column: 13)
!1226 = !DILocation(line: 0, scope: !1211)
!1227 = !DILocation(line: 596, column: 16, scope: !1225)
!1228 = !DILocation(line: 596, column: 13, scope: !1211)
!1229 = !DILocation(line: 603, column: 9, scope: !1169)
!1230 = !DILocation(line: 603, column: 9, scope: !1154)
!1231 = !DILocation(line: 606, column: 10, scope: !1168)
!1232 = !DILocation(line: 606, column: 20, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1168, file: !621, line: 606, column: 18)
!1234 = !DILocation(line: 606, column: 28, scope: !1233)
!1235 = !DILocation(line: 606, column: 31, scope: !1233)
!1236 = !DILocation(line: 606, column: 18, scope: !1168)
!1237 = !DILocation(line: 607, column: 10, scope: !1168)
!1238 = !DILocation(line: 607, column: 20, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1168, file: !621, line: 607, column: 18)
!1240 = !DILocation(line: 607, column: 18, scope: !1168)
!1241 = !DILocation(line: 608, column: 13, scope: !1167)
!1242 = !DILocation(line: 608, column: 13, scope: !1168)
!1243 = !DILocation(line: 609, column: 14, scope: !1166)
!1244 = !DILocation(line: 610, column: 19, scope: !1165)
!1245 = !DILocation(line: 610, column: 26, scope: !1165)
!1246 = !DILocation(line: 610, column: 30, scope: !1165)
!1247 = !DILocation(line: 610, column: 17, scope: !1166)
!1248 = !DILocation(line: 612, column: 68, scope: !1164)
!1249 = !DILocation(line: 0, scope: !1164)
!1250 = !DILocation(line: 613, column: 18, scope: !1164)
!1251 = !DILocation(line: 613, column: 28, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1164, file: !621, line: 613, column: 26)
!1253 = !DILocation(line: 613, column: 36, scope: !1252)
!1254 = !DILocation(line: 613, column: 39, scope: !1252)
!1255 = !DILocation(line: 613, column: 26, scope: !1164)
!1256 = !DILocation(line: 614, column: 18, scope: !1164)
!1257 = !DILocation(line: 614, column: 28, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1164, file: !621, line: 614, column: 26)
!1259 = !DILocation(line: 614, column: 36, scope: !1258)
!1260 = !DILocation(line: 614, column: 39, scope: !1258)
!1261 = !DILocation(line: 614, column: 26, scope: !1164)
!1262 = !DILocation(line: 615, column: 18, scope: !1164)
!1263 = !DILocation(line: 615, column: 28, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1164, file: !621, line: 615, column: 26)
!1265 = !DILocation(line: 615, column: 36, scope: !1264)
!1266 = !DILocation(line: 615, column: 39, scope: !1264)
!1267 = !DILocation(line: 615, column: 26, scope: !1164)
!1268 = !DILocation(line: 616, column: 18, scope: !1164)
!1269 = !DILocation(line: 616, column: 28, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1164, file: !621, line: 616, column: 26)
!1271 = !DILocation(line: 616, column: 36, scope: !1270)
!1272 = !DILocation(line: 616, column: 39, scope: !1270)
!1273 = !DILocation(line: 618, column: 24, scope: !1165)
!1274 = !DILocation(line: 0, scope: !1166)
!1275 = !DILocation(line: 619, column: 24, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !621, line: 618, column: 29)
!1277 = distinct !DILexicalBlock(scope: !1165, file: !621, line: 618, column: 24)
!1278 = !DILocation(line: 619, column: 27, scope: !1276)
!1279 = !DILocation(line: 620, column: 22, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !621, line: 619, column: 35)
!1281 = !DILocation(line: 619, column: 17, scope: !1276)
!1282 = distinct !{!1282, !1281, !1283, !809, !810}
!1283 = !DILocation(line: 621, column: 17, scope: !1276)
!1284 = !DILocation(line: 623, column: 22, scope: !1166)
!1285 = !DILocation(line: 623, column: 29, scope: !1166)
!1286 = !DILocation(line: 623, column: 13, scope: !1166)
!1287 = !DILocation(line: 623, column: 32, scope: !1166)
!1288 = !DILocation(line: 624, column: 18, scope: !1166)
!1289 = distinct !{!1289, !1286, !1288, !809, !810}
!1290 = !DILocation(line: 625, column: 29, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1166, file: !621, line: 625, column: 17)
!1292 = !DILocation(line: 625, column: 17, scope: !1166)
!1293 = !DILocation(line: 628, column: 19, scope: !1166)
!1294 = !DILocation(line: 629, column: 9, scope: !1166)
!1295 = !DILocation(line: 630, column: 18, scope: !1167)
!1296 = !DILocation(line: 631, column: 14, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !621, line: 630, column: 51)
!1298 = distinct !DILexicalBlock(scope: !1167, file: !621, line: 630, column: 18)
!1299 = !DILocation(line: 632, column: 19, scope: !1297)
!1300 = !DILocation(line: 633, column: 13, scope: !1297)
!1301 = !DILocation(line: 0, scope: !1297)
!1302 = !DILocation(line: 633, column: 20, scope: !1297)
!1303 = !DILocation(line: 634, column: 18, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !621, line: 633, column: 31)
!1305 = distinct !{!1305, !1300, !1306, !809, !810}
!1306 = !DILocation(line: 635, column: 13, scope: !1297)
!1307 = !DILocation(line: 637, column: 23, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !621, line: 636, column: 21)
!1309 = distinct !DILexicalBlock(scope: !1297, file: !621, line: 636, column: 17)
!1310 = !DILocation(line: 638, column: 13, scope: !1308)
!1311 = !DILocation(line: 648, column: 14, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !621, line: 645, column: 67)
!1313 = distinct !DILexicalBlock(scope: !1175, file: !621, line: 645, column: 13)
!1314 = !DILocation(line: 648, column: 24, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !621, line: 648, column: 22)
!1316 = !DILocation(line: 648, column: 22, scope: !1312)
!1317 = !DILocation(line: 651, column: 13, scope: !1174)
!1318 = !DILocation(line: 651, column: 13, scope: !1175)
!1319 = !DILocation(line: 652, column: 14, scope: !1173)
!1320 = !DILocation(line: 652, column: 24, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1173, file: !621, line: 652, column: 22)
!1322 = !DILocation(line: 652, column: 32, scope: !1321)
!1323 = !DILocation(line: 652, column: 35, scope: !1321)
!1324 = !DILocation(line: 652, column: 22, scope: !1173)
!1325 = !DILocation(line: 653, column: 14, scope: !1173)
!1326 = !DILocation(line: 653, column: 24, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1173, file: !621, line: 653, column: 22)
!1328 = !DILocation(line: 653, column: 32, scope: !1327)
!1329 = !DILocation(line: 653, column: 35, scope: !1327)
!1330 = !DILocation(line: 653, column: 22, scope: !1173)
!1331 = !DILocation(line: 654, column: 14, scope: !1173)
!1332 = !DILocation(line: 656, column: 19, scope: !1173)
!1333 = !DILocation(line: 663, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1173, file: !621, line: 663, column: 17)
!1335 = !DILocation(line: 663, column: 42, scope: !1334)
!1336 = !DILocation(line: 667, column: 18, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !621, line: 664, column: 43)
!1338 = !DILocation(line: 669, column: 17, scope: !1172)
!1339 = !DILocation(line: 668, column: 13, scope: !1337)
!1340 = !DILocation(line: 0, scope: !1173)
!1341 = !DILocation(line: 669, column: 20, scope: !1172)
!1342 = !DILocation(line: 669, column: 17, scope: !1173)
!1343 = !DILocation(line: 778, column: 26, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1172, file: !621, line: 777, column: 20)
!1345 = !DILocation(line: 778, column: 33, scope: !1344)
!1346 = !DILocation(line: 778, column: 17, scope: !1344)
!1347 = !DILocation(line: 778, column: 36, scope: !1344)
!1348 = !DILocation(line: 672, column: 18, scope: !1171)
!1349 = !DILocation(line: 673, column: 23, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1171, file: !621, line: 673, column: 21)
!1351 = !DILocation(line: 673, column: 21, scope: !1171)
!1352 = !DILocation(line: 674, column: 34, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !621, line: 673, column: 32)
!1354 = !DILocation(line: 674, column: 21, scope: !1353)
!1355 = !DILocation(line: 0, scope: !1171)
!1356 = !DILocation(line: 677, column: 26, scope: !1171)
!1357 = !DILocation(line: 677, column: 33, scope: !1171)
!1358 = !DILocation(line: 677, column: 17, scope: !1171)
!1359 = !DILocation(line: 677, column: 36, scope: !1171)
!1360 = !DILocation(line: 677, column: 39, scope: !1171)
!1361 = !DILocation(line: 678, column: 22, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1171, file: !621, line: 677, column: 53)
!1363 = distinct !{!1363, !1358, !1364, !809, !810}
!1364 = !DILocation(line: 679, column: 17, scope: !1171)
!1365 = !DILocation(line: 680, column: 23, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1171, file: !621, line: 680, column: 21)
!1367 = !DILocation(line: 680, column: 21, scope: !1171)
!1368 = !DILocation(line: 681, column: 34, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !621, line: 680, column: 32)
!1370 = !DILocation(line: 681, column: 21, scope: !1369)
!1371 = !DILocation(line: 683, column: 21, scope: !1178)
!1372 = !DILocation(line: 683, column: 24, scope: !1178)
!1373 = !DILocation(line: 683, column: 21, scope: !1171)
!1374 = !DILocation(line: 685, column: 21, scope: !1177)
!1375 = !DILocation(line: 686, column: 25, scope: !1182)
!1376 = !DILocation(line: 686, column: 30, scope: !1182)
!1377 = !DILocation(line: 686, column: 37, scope: !1182)
!1378 = !DILocation(line: 686, column: 42, scope: !1182)
!1379 = !DILocation(line: 686, column: 46, scope: !1182)
!1380 = !DILocation(line: 686, column: 50, scope: !1182)
!1381 = !DILocation(line: 687, column: 25, scope: !1182)
!1382 = !DILocation(line: 687, column: 52, scope: !1182)
!1383 = !DILocation(line: 688, column: 25, scope: !1182)
!1384 = !DILocation(line: 686, column: 25, scope: !1177)
!1385 = !DILocation(line: 689, column: 25, scope: !1181)
!1386 = !DILocation(line: 689, column: 40, scope: !1181)
!1387 = !DILocation(line: 0, scope: !1181)
!1388 = !DILocation(line: 689, column: 32, scope: !1181)
!1389 = !DILocation(line: 690, column: 25, scope: !1181)
!1390 = !DILocation(line: 690, column: 29, scope: !1181)
!1391 = !DILocation(line: 691, column: 34, scope: !1181)
!1392 = !DILocation(line: 0, scope: !1177)
!1393 = !DILocation(line: 692, column: 30, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1181, file: !621, line: 692, column: 29)
!1395 = !DILocation(line: 697, column: 30, scope: !1181)
!1396 = !DILocation(line: 697, column: 27, scope: !1181)
!1397 = !DILocation(line: 698, column: 21, scope: !1182)
!1398 = !DILocation(line: 698, column: 21, scope: !1181)
!1399 = !DILocation(line: 700, column: 33, scope: !1186)
!1400 = !DILocation(line: 700, column: 45, scope: !1186)
!1401 = !DILocation(line: 701, column: 25, scope: !1185)
!1402 = !DILocation(line: 701, column: 40, scope: !1185)
!1403 = !DILocation(line: 0, scope: !1185)
!1404 = !DILocation(line: 701, column: 32, scope: !1185)
!1405 = !DILocation(line: 702, column: 25, scope: !1185)
!1406 = !DILocation(line: 702, column: 29, scope: !1185)
!1407 = !DILocation(line: 703, column: 34, scope: !1185)
!1408 = !DILocation(line: 704, column: 30, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1185, file: !621, line: 704, column: 29)
!1410 = !DILocation(line: 709, column: 30, scope: !1185)
!1411 = !DILocation(line: 709, column: 27, scope: !1185)
!1412 = !DILocation(line: 710, column: 21, scope: !1186)
!1413 = !DILocation(line: 710, column: 21, scope: !1185)
!1414 = !DILocation(line: 713, column: 29, scope: !1189)
!1415 = !DILocation(line: 0, scope: !1189)
!1416 = !DILocation(line: 720, column: 25, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1189, file: !621, line: 720, column: 25)
!1418 = !DILocation(line: 721, column: 34, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !621, line: 721, column: 33)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !621, line: 720, column: 49)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !621, line: 720, column: 25)
!1422 = !DILocation(line: 721, column: 33, scope: !1420)
!1423 = !DILocation(line: 722, column: 39, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !621, line: 721, column: 47)
!1425 = !DILocation(line: 723, column: 33, scope: !1424)
!1426 = !DILocation(line: 720, column: 45, scope: !1421)
!1427 = !DILocation(line: 720, column: 39, scope: !1421)
!1428 = distinct !{!1428, !1416, !1429, !809, !810}
!1429 = !DILocation(line: 725, column: 25, scope: !1417)
!1430 = !DILocation(line: 0, scope: !1182)
!1431 = !DILocation(line: 732, column: 34, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1177, file: !621, line: 732, column: 25)
!1433 = !DILocation(line: 732, column: 55, scope: !1432)
!1434 = !DILocation(line: 770, column: 27, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1177, file: !621, line: 770, column: 25)
!1436 = !DILocation(line: 770, column: 25, scope: !1177)
!1437 = !DILocation(line: 773, column: 17, scope: !1178)
!1438 = !DILocation(line: 775, column: 27, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1178, file: !621, line: 773, column: 24)
!1440 = !DILocation(line: 779, column: 22, scope: !1344)
!1441 = distinct !{!1441, !1346, !1440, !809, !810}
!1442 = !DILocation(line: 780, column: 33, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1344, file: !621, line: 780, column: 21)
!1444 = !DILocation(line: 780, column: 21, scope: !1344)
!1445 = !DILocation(line: 0, scope: !1169)
!1446 = !DILocation(line: 798, column: 14, scope: !1154)
!1447 = !DILocation(line: 798, column: 21, scope: !1154)
!1448 = !DILocation(line: 798, column: 5, scope: !1154)
!1449 = !DILocation(line: 798, column: 24, scope: !1154)
!1450 = !DILocation(line: 799, column: 10, scope: !1154)
!1451 = distinct !{!1451, !1448, !1450, !809, !810}
!1452 = !DILocation(line: 801, column: 9, scope: !1154)
!1453 = !DILocation(line: 802, column: 5, scope: !1154)
!1454 = !DILocation(line: 803, column: 1, scope: !1154)
!1455 = distinct !DISubprogram(name: "Perl_grok_number_flags", scope: !621, file: !621, line: 848, type: !1456, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1459)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!28, !443, !101, !1458, !25}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1471, !1474, !1477}
!1460 = !DILocalVariable(name: "pv", arg: 1, scope: !1455, file: !621, line: 848, type: !443)
!1461 = !DILocalVariable(name: "len", arg: 2, scope: !1455, file: !621, line: 848, type: !101)
!1462 = !DILocalVariable(name: "valuep", arg: 3, scope: !1455, file: !621, line: 848, type: !1458)
!1463 = !DILocalVariable(name: "flags", arg: 4, scope: !1455, file: !621, line: 848, type: !25)
!1464 = !DILocalVariable(name: "s", scope: !1455, file: !621, line: 850, type: !443)
!1465 = !DILocalVariable(name: "send", scope: !1455, file: !621, line: 851, type: !442)
!1466 = !DILocalVariable(name: "d", scope: !1455, file: !621, line: 852, type: !443)
!1467 = !DILocalVariable(name: "numtype", scope: !1455, file: !621, line: 853, type: !28)
!1468 = !DILocalVariable(name: "value", scope: !1469, file: !621, line: 879, type: !29)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !621, line: 876, column: 20)
!1470 = distinct !DILexicalBlock(scope: !1455, file: !621, line: 876, column: 7)
!1471 = !DILocalVariable(name: "digit", scope: !1472, file: !621, line: 886, type: !28)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !621, line: 885, column: 21)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !621, line: 885, column: 9)
!1474 = !DILocalVariable(name: "infnan", scope: !1475, file: !621, line: 1021, type: !28)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !621, line: 1018, column: 54)
!1476 = distinct !DILexicalBlock(scope: !1455, file: !621, line: 1018, column: 7)
!1477 = !DILabel(scope: !1469, name: "skip_value", file: !621, line: 964)
!1478 = !DILocation(line: 0, scope: !1455)
!1479 = !DILocation(line: 851, column: 32, scope: !1455)
!1480 = !DILocation(line: 852, column: 3, scope: !1455)
!1481 = !DILocation(line: 857, column: 12, scope: !1455)
!1482 = !DILocation(line: 857, column: 19, scope: !1455)
!1483 = !DILocation(line: 857, column: 22, scope: !1455)
!1484 = !DILocation(line: 857, column: 3, scope: !1455)
!1485 = !DILocation(line: 858, column: 6, scope: !1455)
!1486 = distinct !{!1486, !1484, !1485, !809, !810}
!1487 = !DILocation(line: 859, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1455, file: !621, line: 859, column: 7)
!1489 = !DILocation(line: 859, column: 7, scope: !1455)
!1490 = !DILocation(line: 861, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !621, line: 861, column: 14)
!1492 = !DILocation(line: 861, column: 14, scope: !1488)
!1493 = !DILocation(line: 862, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !621, line: 861, column: 25)
!1495 = !DILocation(line: 864, column: 3, scope: !1494)
!1496 = !DILocation(line: 866, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !621, line: 865, column: 12)
!1498 = !DILocation(line: 866, column: 5, scope: !1497)
!1499 = !DILocation(line: 868, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1455, file: !621, line: 868, column: 7)
!1501 = !DILocation(line: 868, column: 7, scope: !1455)
!1502 = !DILocation(line: 873, column: 5, scope: !1455)
!1503 = !DILocation(line: 876, column: 7, scope: !1470)
!1504 = !DILocation(line: 876, column: 7, scope: !1455)
!1505 = !DILocation(line: 879, column: 16, scope: !1469)
!1506 = !DILocation(line: 879, column: 19, scope: !1469)
!1507 = !DILocation(line: 0, scope: !1469)
!1508 = !DILocation(line: 885, column: 9, scope: !1473)
!1509 = !DILocation(line: 885, column: 13, scope: !1473)
!1510 = !DILocation(line: 885, column: 9, scope: !1469)
!1511 = !DILocation(line: 886, column: 19, scope: !1472)
!1512 = !DILocation(line: 0, scope: !1472)
!1513 = !DILocation(line: 887, column: 22, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1472, file: !621, line: 887, column: 11)
!1515 = !DILocation(line: 888, column: 23, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !621, line: 887, column: 37)
!1517 = !DILocation(line: 886, column: 22, scope: !1472)
!1518 = !DILocation(line: 888, column: 28, scope: !1516)
!1519 = !DILocation(line: 889, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !621, line: 889, column: 13)
!1521 = !DILocation(line: 889, column: 17, scope: !1520)
!1522 = !DILocation(line: 889, column: 13, scope: !1516)
!1523 = !DILocation(line: 890, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !621, line: 889, column: 25)
!1525 = !DILocation(line: 891, column: 26, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1524, file: !621, line: 891, column: 15)
!1527 = !DILocation(line: 892, column: 27, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1526, file: !621, line: 891, column: 41)
!1529 = !DILocation(line: 890, column: 22, scope: !1524)
!1530 = !DILocation(line: 892, column: 32, scope: !1528)
!1531 = !DILocation(line: 893, column: 17, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !621, line: 893, column: 17)
!1533 = !DILocation(line: 893, column: 21, scope: !1532)
!1534 = !DILocation(line: 893, column: 17, scope: !1528)
!1535 = !DILocation(line: 894, column: 23, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !621, line: 893, column: 29)
!1537 = !DILocation(line: 895, column: 30, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1536, file: !621, line: 895, column: 19)
!1539 = !DILocation(line: 896, column: 31, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1538, file: !621, line: 895, column: 45)
!1541 = !DILocation(line: 894, column: 26, scope: !1536)
!1542 = !DILocation(line: 896, column: 36, scope: !1540)
!1543 = !DILocation(line: 897, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !621, line: 897, column: 7)
!1545 = !DILocation(line: 897, column: 11, scope: !1544)
!1546 = !DILocation(line: 897, column: 7, scope: !1540)
!1547 = !DILocation(line: 898, column: 27, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !621, line: 897, column: 19)
!1549 = !DILocation(line: 899, column: 34, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1548, file: !621, line: 899, column: 23)
!1551 = !DILocation(line: 900, column: 35, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !621, line: 899, column: 49)
!1553 = !DILocation(line: 898, column: 30, scope: !1548)
!1554 = !DILocation(line: 900, column: 40, scope: !1552)
!1555 = !DILocation(line: 901, column: 25, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !621, line: 901, column: 25)
!1557 = !DILocation(line: 901, column: 29, scope: !1556)
!1558 = !DILocation(line: 901, column: 25, scope: !1552)
!1559 = !DILocation(line: 902, column: 31, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !621, line: 901, column: 37)
!1561 = !DILocation(line: 903, column: 38, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1560, file: !621, line: 903, column: 27)
!1563 = !DILocation(line: 904, column: 39, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1562, file: !621, line: 903, column: 53)
!1565 = !DILocation(line: 902, column: 34, scope: !1560)
!1566 = !DILocation(line: 904, column: 44, scope: !1564)
!1567 = !DILocation(line: 905, column: 29, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !621, line: 905, column: 29)
!1569 = !DILocation(line: 905, column: 33, scope: !1568)
!1570 = !DILocation(line: 905, column: 29, scope: !1564)
!1571 = !DILocation(line: 906, column: 35, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !621, line: 905, column: 41)
!1573 = !DILocation(line: 907, column: 42, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1572, file: !621, line: 907, column: 31)
!1575 = !DILocation(line: 908, column: 43, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !621, line: 907, column: 57)
!1577 = !DILocation(line: 906, column: 38, scope: !1572)
!1578 = !DILocation(line: 908, column: 48, scope: !1576)
!1579 = !DILocation(line: 909, column: 33, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !621, line: 909, column: 33)
!1581 = !DILocation(line: 909, column: 37, scope: !1580)
!1582 = !DILocation(line: 909, column: 33, scope: !1576)
!1583 = !DILocation(line: 910, column: 39, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !621, line: 909, column: 45)
!1585 = !DILocation(line: 911, column: 46, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !621, line: 911, column: 35)
!1587 = !DILocation(line: 912, column: 47, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1586, file: !621, line: 911, column: 61)
!1589 = !DILocation(line: 910, column: 42, scope: !1584)
!1590 = !DILocation(line: 912, column: 52, scope: !1588)
!1591 = !DILocation(line: 913, column: 37, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !621, line: 913, column: 37)
!1593 = !DILocation(line: 913, column: 41, scope: !1592)
!1594 = !DILocation(line: 913, column: 37, scope: !1588)
!1595 = !DILocation(line: 914, column: 43, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !621, line: 913, column: 49)
!1597 = !DILocation(line: 915, column: 50, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1596, file: !621, line: 915, column: 39)
!1599 = !DILocation(line: 916, column: 51, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !621, line: 915, column: 65)
!1601 = !DILocation(line: 914, column: 46, scope: !1596)
!1602 = !DILocation(line: 916, column: 56, scope: !1600)
!1603 = !DILocation(line: 917, column: 41, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !621, line: 917, column: 41)
!1605 = !DILocation(line: 917, column: 45, scope: !1604)
!1606 = !DILocation(line: 917, column: 41, scope: !1600)
!1607 = !DILocation(line: 0, scope: !1604)
!1608 = !DILocation(line: 0, scope: !1600)
!1609 = !DILocation(line: 0, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !621, line: 917, column: 53)
!1611 = !DILocation(line: 921, column: 57, scope: !1610)
!1612 = !DILocation(line: 922, column: 56, scope: !1610)
!1613 = !DILocation(line: 923, column: 50, scope: !1610)
!1614 = !DILocation(line: 923, column: 60, scope: !1610)
!1615 = !DILocation(line: 924, column: 54, scope: !1610)
!1616 = !DILocation(line: 925, column: 55, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !621, line: 924, column: 83)
!1618 = !DILocation(line: 925, column: 62, scope: !1617)
!1619 = !DILocation(line: 925, column: 60, scope: !1617)
!1620 = !DILocation(line: 926, column: 45, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !621, line: 926, column: 45)
!1622 = !DILocation(line: 926, column: 49, scope: !1621)
!1623 = !DILocation(line: 926, column: 45, scope: !1617)
!1624 = distinct !{!1624, !1625, !1626, !809, !810}
!1625 = !DILocation(line: 921, column: 39, scope: !1610)
!1626 = !DILocation(line: 930, column: 39, scope: !1610)
!1627 = !DILocation(line: 931, column: 54, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1610, file: !621, line: 931, column: 43)
!1629 = !DILocation(line: 937, column: 44, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !621, line: 936, column: 44)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !621, line: 932, column: 58)
!1632 = !DILocation(line: 938, column: 52, scope: !1631)
!1633 = !DILocation(line: 938, column: 59, scope: !1631)
!1634 = !DILocation(line: 938, column: 62, scope: !1631)
!1635 = !DILocation(line: 938, column: 41, scope: !1630)
!1636 = distinct !{!1636, !1637, !1638, !809, !810}
!1637 = !DILocation(line: 936, column: 41, scope: !1631)
!1638 = !DILocation(line: 938, column: 73, scope: !1631)
!1639 = !DILocation(line: 939, column: 49, scope: !1631)
!1640 = !DILocation(line: 0, scope: !1473)
!1641 = !DILocation(line: 960, column: 13, scope: !1469)
!1642 = !DILocation(line: 961, column: 9, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1469, file: !621, line: 961, column: 9)
!1644 = !DILocation(line: 961, column: 9, scope: !1469)
!1645 = !DILocation(line: 962, column: 15, scope: !1643)
!1646 = !DILocation(line: 962, column: 7, scope: !1643)
!1647 = !DILocation(line: 964, column: 3, scope: !1469)
!1648 = !DILocation(line: 0, scope: !1135, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 965, column: 9, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1469, file: !621, line: 965, column: 9)
!1651 = !DILocation(line: 544, column: 13, scope: !1144, inlinedAt: !1649)
!1652 = !DILocation(line: 544, column: 20, scope: !1144, inlinedAt: !1649)
!1653 = !DILocation(line: 544, column: 23, scope: !1144, inlinedAt: !1649)
!1654 = !DILocation(line: 544, column: 28, scope: !1144, inlinedAt: !1649)
!1655 = !DILocation(line: 544, column: 9, scope: !1135, inlinedAt: !1649)
!1656 = !DILocation(line: 966, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !621, line: 965, column: 39)
!1658 = !DILocation(line: 967, column: 7, scope: !1657)
!1659 = !DILocation(line: 0, scope: !1650)
!1660 = !DILocation(line: 967, column: 16, scope: !1657)
!1661 = !DILocation(line: 967, column: 23, scope: !1657)
!1662 = !DILocation(line: 967, column: 26, scope: !1657)
!1663 = distinct !{!1663, !1658, !1664, !809, !810}
!1664 = !DILocation(line: 968, column: 10, scope: !1657)
!1665 = !DILocation(line: 0, scope: !1135, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 971, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1470, file: !621, line: 971, column: 12)
!1668 = !DILocation(line: 544, column: 13, scope: !1144, inlinedAt: !1666)
!1669 = !DILocation(line: 544, column: 20, scope: !1144, inlinedAt: !1666)
!1670 = !DILocation(line: 545, column: 9, scope: !1151, inlinedAt: !1666)
!1671 = !DILocation(line: 972, column: 13, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !621, line: 971, column: 42)
!1673 = !DILocation(line: 974, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !621, line: 974, column: 9)
!1675 = !DILocation(line: 974, column: 18, scope: !1674)
!1676 = !DILocation(line: 974, column: 21, scope: !1674)
!1677 = !DILocation(line: 974, column: 9, scope: !1672)
!1678 = !DILocation(line: 0, scope: !1667)
!1679 = !DILocation(line: 976, column: 10, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !621, line: 975, column: 10)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !621, line: 974, column: 34)
!1682 = !DILocation(line: 977, column: 18, scope: !1681)
!1683 = !DILocation(line: 977, column: 25, scope: !1681)
!1684 = !DILocation(line: 977, column: 28, scope: !1681)
!1685 = !DILocation(line: 977, column: 7, scope: !1680)
!1686 = distinct !{!1686, !1687, !1688, !809, !810}
!1687 = !DILocation(line: 975, column: 7, scope: !1681)
!1688 = !DILocation(line: 977, column: 39, scope: !1681)
!1689 = !DILocation(line: 978, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !621, line: 978, column: 11)
!1691 = !DILocation(line: 978, column: 11, scope: !1681)
!1692 = !DILocation(line: 980, column: 17, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !621, line: 978, column: 19)
!1694 = !DILocation(line: 981, column: 7, scope: !1693)
!1695 = !DILocation(line: 0, scope: !1470)
!1696 = !DILocation(line: 987, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1455, file: !621, line: 987, column: 7)
!1698 = !DILocation(line: 987, column: 13, scope: !1697)
!1699 = !DILocation(line: 989, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !621, line: 989, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !621, line: 987, column: 26)
!1702 = !DILocation(line: 989, column: 9, scope: !1701)
!1703 = !DILocation(line: 990, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !621, line: 989, column: 35)
!1705 = !DILocation(line: 991, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1704, file: !621, line: 991, column: 11)
!1707 = !DILocation(line: 991, column: 20, scope: !1706)
!1708 = !DILocation(line: 991, column: 24, scope: !1706)
!1709 = !DILocation(line: 991, column: 34, scope: !1706)
!1710 = !DILocation(line: 992, column: 10, scope: !1706)
!1711 = !DILocation(line: 992, column: 9, scope: !1706)
!1712 = !DILocation(line: 0, scope: !1704)
!1713 = !DILocation(line: 993, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1704, file: !621, line: 993, column: 11)
!1715 = !DILocation(line: 993, column: 20, scope: !1714)
!1716 = !DILocation(line: 993, column: 23, scope: !1714)
!1717 = !DILocation(line: 993, column: 11, scope: !1704)
!1718 = !DILocation(line: 995, column: 12, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !621, line: 994, column: 12)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !621, line: 993, column: 36)
!1721 = !DILocation(line: 996, column: 20, scope: !1720)
!1722 = !DILocation(line: 996, column: 27, scope: !1720)
!1723 = !DILocation(line: 996, column: 30, scope: !1720)
!1724 = !DILocation(line: 996, column: 9, scope: !1719)
!1725 = distinct !{!1725, !1726, !1727, !809, !810}
!1726 = !DILocation(line: 994, column: 9, scope: !1720)
!1727 = !DILocation(line: 996, column: 41, scope: !1720)
!1728 = !DILocation(line: 998, column: 22, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1714, file: !621, line: 998, column: 16)
!1730 = !DILocation(line: 998, column: 16, scope: !1714)
!1731 = !DILocation(line: 1004, column: 15, scope: !1704)
!1732 = !DILocation(line: 1005, column: 15, scope: !1704)
!1733 = !DILocation(line: 1006, column: 5, scope: !1704)
!1734 = !DILocation(line: 1008, column: 12, scope: !1455)
!1735 = !DILocation(line: 1008, column: 19, scope: !1455)
!1736 = !DILocation(line: 1008, column: 22, scope: !1455)
!1737 = !DILocation(line: 1008, column: 3, scope: !1455)
!1738 = !DILocation(line: 1009, column: 6, scope: !1455)
!1739 = distinct !{!1739, !1737, !1738, !809, !810}
!1740 = !DILocation(line: 1012, column: 11, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1455, file: !621, line: 1012, column: 7)
!1742 = !DILocation(line: 1012, column: 17, scope: !1741)
!1743 = !DILocation(line: 1012, column: 20, scope: !1741)
!1744 = !DILocation(line: 1012, column: 7, scope: !1455)
!1745 = !DILocation(line: 1013, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !621, line: 1013, column: 9)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !621, line: 1012, column: 49)
!1748 = !DILocation(line: 1013, column: 9, scope: !1747)
!1749 = !DILocation(line: 1014, column: 15, scope: !1746)
!1750 = !DILocation(line: 1014, column: 7, scope: !1746)
!1751 = !DILocation(line: 1018, column: 10, scope: !1476)
!1752 = !DILocation(line: 1018, column: 14, scope: !1476)
!1753 = !DILocation(line: 1018, column: 22, scope: !1476)
!1754 = !DILocation(line: 1018, column: 41, scope: !1476)
!1755 = !DILocation(line: 1018, column: 25, scope: !1476)
!1756 = !DILocation(line: 1018, column: 7, scope: !1455)
!1757 = !DILocation(line: 1021, column: 20, scope: !1475)
!1758 = !DILocation(line: 0, scope: !1475)
!1759 = !DILocation(line: 1022, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1475, file: !621, line: 1022, column: 11)
!1761 = !DILocation(line: 1022, column: 11, scope: !1475)
!1762 = !DILocation(line: 1023, column: 27, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !621, line: 1022, column: 42)
!1764 = !DILocation(line: 1023, column: 11, scope: !1763)
!1765 = !DILocation(line: 1025, column: 24, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1760, file: !621, line: 1025, column: 16)
!1767 = !DILocation(line: 1025, column: 16, scope: !1760)
!1768 = !DILocation(line: 1026, column: 27, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !621, line: 1025, column: 42)
!1770 = !DILocation(line: 1026, column: 37, scope: !1769)
!1771 = !DILocation(line: 1026, column: 11, scope: !1769)
!1772 = !DILocation(line: 1029, column: 18, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1476, file: !621, line: 1029, column: 12)
!1774 = !DILocation(line: 1029, column: 12, scope: !1476)
!1775 = !DILocation(line: 1034, column: 1, scope: !1455)
!1776 = distinct !DISubprogram(name: "Perl_grok_number", scope: !621, file: !621, line: 837, type: !1777, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!28, !443, !101, !1458}
!1779 = !{!1780, !1781, !1782}
!1780 = !DILocalVariable(name: "pv", arg: 1, scope: !1776, file: !621, line: 837, type: !443)
!1781 = !DILocalVariable(name: "len", arg: 2, scope: !1776, file: !621, line: 837, type: !101)
!1782 = !DILocalVariable(name: "valuep", arg: 3, scope: !1776, file: !621, line: 837, type: !1458)
!1783 = !DILocation(line: 0, scope: !1776)
!1784 = !DILocation(line: 841, column: 12, scope: !1776)
!1785 = !DILocation(line: 841, column: 5, scope: !1776)
!1786 = distinct !DISubprogram(name: "Perl_grok_atoUV", scope: !621, file: !621, line: 1067, type: !1787, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!34, !443, !1458, !1138}
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1790 = !DILocalVariable(name: "pv", arg: 1, scope: !1786, file: !621, line: 1067, type: !443)
!1791 = !DILocalVariable(name: "valptr", arg: 2, scope: !1786, file: !621, line: 1067, type: !1458)
!1792 = !DILocalVariable(name: "endptr", arg: 3, scope: !1786, file: !621, line: 1067, type: !1138)
!1793 = !DILocalVariable(name: "s", scope: !1786, file: !621, line: 1069, type: !443)
!1794 = !DILocalVariable(name: "eptr", scope: !1786, file: !621, line: 1070, type: !1138)
!1795 = !DILocalVariable(name: "end2", scope: !1786, file: !621, line: 1071, type: !443)
!1796 = !DILocalVariable(name: "val", scope: !1786, file: !621, line: 1072, type: !29)
!1797 = !DILocalVariable(name: "digit", scope: !1798, file: !621, line: 1088, type: !37)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !621, line: 1084, column: 33)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !621, line: 1080, column: 26)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !621, line: 1080, column: 13)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !621, line: 1077, column: 22)
!1802 = distinct !DILexicalBlock(scope: !1786, file: !621, line: 1077, column: 9)
!1803 = !DILocation(line: 0, scope: !1786)
!1804 = !DILocation(line: 1071, column: 5, scope: !1786)
!1805 = !DILocation(line: 1076, column: 12, scope: !1786)
!1806 = !DILocation(line: 1077, column: 9, scope: !1802)
!1807 = !DILocation(line: 1077, column: 9, scope: !1786)
!1808 = !DILocation(line: 1079, column: 17, scope: !1801)
!1809 = !DILocation(line: 1079, column: 15, scope: !1801)
!1810 = !DILocation(line: 1079, column: 20, scope: !1801)
!1811 = !DILocation(line: 1080, column: 13, scope: !1800)
!1812 = !DILocation(line: 1080, column: 13, scope: !1801)
!1813 = !DILocation(line: 1082, column: 21, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1799, file: !621, line: 1082, column: 17)
!1815 = !DILocation(line: 1082, column: 17, scope: !1799)
!1816 = !DILocation(line: 1088, column: 30, scope: !1798)
!1817 = !DILocation(line: 1088, column: 33, scope: !1798)
!1818 = !DILocation(line: 0, scope: !1798)
!1819 = !DILocation(line: 1089, column: 25, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1798, file: !621, line: 1089, column: 21)
!1821 = !DILocation(line: 1089, column: 41, scope: !1820)
!1822 = !DILocation(line: 1090, column: 26, scope: !1820)
!1823 = !DILocation(line: 1090, column: 43, scope: !1820)
!1824 = !DILocation(line: 1091, column: 31, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !621, line: 1090, column: 71)
!1826 = !DILocation(line: 1091, column: 38, scope: !1825)
!1827 = !DILocation(line: 1091, column: 36, scope: !1825)
!1828 = !DILocation(line: 1084, column: 20, scope: !1799)
!1829 = !DILocation(line: 1084, column: 13, scope: !1799)
!1830 = distinct !{!1830, !1829, !1831, !809, !810}
!1831 = !DILocation(line: 1095, column: 13, scope: !1799)
!1832 = !DILocation(line: 1098, column: 11, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1786, file: !621, line: 1098, column: 9)
!1834 = !DILocation(line: 1098, column: 9, scope: !1786)
!1835 = !DILocation(line: 1100, column: 24, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1786, file: !621, line: 1100, column: 9)
!1837 = !DILocation(line: 1100, column: 27, scope: !1836)
!1838 = !DILocation(line: 1100, column: 9, scope: !1786)
!1839 = !DILocation(line: 1102, column: 11, scope: !1786)
!1840 = !DILocation(line: 1103, column: 13, scope: !1786)
!1841 = !DILocation(line: 1104, column: 5, scope: !1786)
!1842 = !DILocation(line: 1105, column: 1, scope: !1786)
!1843 = distinct !DISubprogram(name: "Perl_my_atof", scope: !621, file: !621, line: 1202, type: !1844, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!35, !443}
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "s", arg: 1, scope: !1843, file: !621, line: 1202, type: !443)
!1848 = !DILocalVariable(name: "x", scope: !1843, file: !621, line: 1204, type: !35)
!1849 = !DILocation(line: 0, scope: !1843)
!1850 = !DILocation(line: 1204, column: 5, scope: !1843)
!1851 = !DILocation(line: 1204, column: 8, scope: !1843)
!1852 = !DILocation(line: 1244, column: 5, scope: !1843)
!1853 = !DILocation(line: 1247, column: 12, scope: !1843)
!1854 = !DILocation(line: 1248, column: 1, scope: !1843)
!1855 = !DILocation(line: 1247, column: 5, scope: !1843)
!1856 = distinct !DISubprogram(name: "Perl_my_atof2", scope: !621, file: !621, line: 1331, type: !1857, scopeLine: 1332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!40, !443, !726}
!1859 = !{!1860, !1861, !1862, !1863, !1865, !1866, !1867, !1871, !1872, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1882}
!1860 = !DILocalVariable(name: "orig", arg: 1, scope: !1856, file: !621, line: 1331, type: !443)
!1861 = !DILocalVariable(name: "value", arg: 2, scope: !1856, file: !621, line: 1331, type: !726)
!1862 = !DILocalVariable(name: "s", scope: !1856, file: !621, line: 1333, type: !443)
!1863 = !DILocalVariable(name: "result", scope: !1856, file: !621, line: 1334, type: !1864)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !513)
!1865 = !DILocalVariable(name: "send", scope: !1856, file: !621, line: 1336, type: !443)
!1866 = !DILocalVariable(name: "negative", scope: !1856, file: !621, line: 1337, type: !34)
!1867 = !DILocalVariable(name: "accumulator", scope: !1856, file: !621, line: 1340, type: !1868)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !1869)
!1869 = !{!1870}
!1870 = !DISubrange(count: 2)
!1871 = !DILocalVariable(name: "seen_digit", scope: !1856, file: !621, line: 1341, type: !34)
!1872 = !DILocalVariable(name: "exp_adjust", scope: !1856, file: !621, line: 1342, type: !1873)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !1869)
!1874 = !DILocalVariable(name: "exp_acc", scope: !1856, file: !621, line: 1343, type: !1873)
!1875 = !DILocalVariable(name: "exponent", scope: !1856, file: !621, line: 1345, type: !27)
!1876 = !DILocalVariable(name: "seen_dp", scope: !1856, file: !621, line: 1346, type: !27)
!1877 = !DILocalVariable(name: "digit", scope: !1856, file: !621, line: 1347, type: !27)
!1878 = !DILocalVariable(name: "old_digit", scope: !1856, file: !621, line: 1348, type: !27)
!1879 = !DILocalVariable(name: "sig_digits", scope: !1856, file: !621, line: 1349, type: !27)
!1880 = !DILocalVariable(name: "endp", scope: !1881, file: !621, line: 1413, type: !443)
!1881 = distinct !DILexicalBlock(scope: !1856, file: !621, line: 1412, column: 5)
!1882 = !DILocalVariable(name: "expnegative", scope: !1883, file: !621, line: 1490, type: !34)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !621, line: 1489, column: 51)
!1884 = distinct !DILexicalBlock(scope: !1856, file: !621, line: 1489, column: 9)
!1885 = !DILocation(line: 0, scope: !1856)
!1886 = !DILocation(line: 1334, column: 5, scope: !1856)
!1887 = !DILocation(line: 1334, column: 8, scope: !1856)
!1888 = !DILocation(line: 1336, column: 28, scope: !1856)
!1889 = !DILocation(line: 1340, column: 5, scope: !1856)
!1890 = !DILocation(line: 1340, column: 8, scope: !1856)
!1891 = !DILocation(line: 1343, column: 5, scope: !1856)
!1892 = !DILocation(line: 1343, column: 9, scope: !1856)
!1893 = !DILocation(line: 1356, column: 5, scope: !1856)
!1894 = !DILocation(line: 1356, column: 12, scope: !1856)
!1895 = !DILocation(line: 1357, column: 2, scope: !1856)
!1896 = distinct !{!1896, !1893, !1897, !809, !810}
!1897 = !DILocation(line: 1357, column: 4, scope: !1856)
!1898 = !DILocation(line: 1336, column: 26, scope: !1856)
!1899 = !DILocation(line: 1360, column: 13, scope: !1856)
!1900 = !DILocation(line: 1360, column: 5, scope: !1856)
!1901 = !DILocation(line: 1362, column: 6, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1856, file: !621, line: 1360, column: 17)
!1903 = !DILocation(line: 1366, column: 5, scope: !1902)
!1904 = !DILocation(line: 1337, column: 10, scope: !1856)
!1905 = !DILocalVariable(name: "s", arg: 1, scope: !1906, file: !621, line: 1256, type: !443)
!1906 = distinct !DISubprogram(name: "S_my_atof_infnan", scope: !621, file: !621, line: 1256, type: !1907, scopeLine: 1257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!40, !443, !34, !443, !726}
!1909 = !{!1905, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1920, !1921}
!1910 = !DILocalVariable(name: "negative", arg: 2, scope: !1906, file: !621, line: 1256, type: !34)
!1911 = !DILocalVariable(name: "send", arg: 3, scope: !1906, file: !621, line: 1256, type: !443)
!1912 = !DILocalVariable(name: "value", arg: 4, scope: !1906, file: !621, line: 1256, type: !726)
!1913 = !DILocalVariable(name: "p0", scope: !1906, file: !621, line: 1258, type: !443)
!1914 = !DILocalVariable(name: "p", scope: !1906, file: !621, line: 1259, type: !443)
!1915 = !DILocalVariable(name: "infnan", scope: !1906, file: !621, line: 1260, type: !28)
!1916 = !DILocalVariable(name: "fake", scope: !1917, file: !621, line: 1286, type: !443)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !621, line: 1285, column: 9)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !621, line: 1261, column: 28)
!1919 = distinct !DILexicalBlock(scope: !1906, file: !621, line: 1261, column: 9)
!1920 = !DILocalVariable(name: "endp", scope: !1917, file: !621, line: 1287, type: !40)
!1921 = !DILocalVariable(name: "nv", scope: !1917, file: !621, line: 1288, type: !35)
!1922 = !DILocation(line: 0, scope: !1906, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 1414, column: 21, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1881, file: !621, line: 1414, column: 13)
!1925 = !DILocation(line: 1258, column: 22, scope: !1906, inlinedAt: !1923)
!1926 = !DILocation(line: 1259, column: 5, scope: !1906, inlinedAt: !1923)
!1927 = !DILocation(line: 1259, column: 17, scope: !1906, inlinedAt: !1923)
!1928 = !DILocation(line: 1260, column: 18, scope: !1906, inlinedAt: !1923)
!1929 = !DILocation(line: 1261, column: 9, scope: !1919, inlinedAt: !1923)
!1930 = !DILocation(line: 1261, column: 16, scope: !1919, inlinedAt: !1923)
!1931 = !DILocation(line: 1264, column: 21, scope: !1932, inlinedAt: !1923)
!1932 = distinct !DILexicalBlock(scope: !1918, file: !621, line: 1264, column: 13)
!1933 = !DILocation(line: 1264, column: 13, scope: !1918, inlinedAt: !1923)
!1934 = !DILocation(line: 1265, column: 30, scope: !1935, inlinedAt: !1923)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !621, line: 1264, column: 44)
!1936 = !DILocation(line: 1265, column: 22, scope: !1935, inlinedAt: !1923)
!1937 = !DILocation(line: 1266, column: 13, scope: !1935, inlinedAt: !1923)
!1938 = !DILocation(line: 1270, column: 21, scope: !1939, inlinedAt: !1923)
!1939 = distinct !DILexicalBlock(scope: !1918, file: !621, line: 1270, column: 13)
!1940 = !DILocation(line: 1270, column: 13, scope: !1918, inlinedAt: !1923)
!1941 = !DILocation(line: 0, scope: !1917, inlinedAt: !1923)
!1942 = !DILocation(line: 1287, column: 13, scope: !1917, inlinedAt: !1923)
!1943 = !DILocation(line: 1296, column: 18, scope: !1917, inlinedAt: !1923)
!1944 = !DILocation(line: 1321, column: 9, scope: !1918, inlinedAt: !1923)
!1945 = !DILocation(line: 1325, column: 1, scope: !1906, inlinedAt: !1923)
!1946 = !DILocation(line: 0, scope: !1881)
!1947 = !DILocation(line: 0, scope: !1918, inlinedAt: !1923)
!1948 = !DILocation(line: 1414, column: 19, scope: !1924)
!1949 = !DILocation(line: 1422, column: 6, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1856, file: !621, line: 1421, column: 15)
!1951 = !DILocation(line: 1421, column: 5, scope: !1856)
!1952 = !DILocation(line: 1422, column: 6, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !621, line: 1422, column: 6)
!1954 = !DILocation(line: 1425, column: 16, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1953, file: !621, line: 1422, column: 19)
!1956 = !DILocation(line: 1425, column: 14, scope: !1955)
!1957 = !DILocation(line: 1425, column: 19, scope: !1955)
!1958 = !DILocation(line: 1426, column: 10, scope: !1955)
!1959 = !DILocation(line: 1431, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !621, line: 1431, column: 10)
!1961 = !DILocation(line: 1431, column: 22, scope: !1960)
!1962 = distinct !{!1962, !1951, !1963, !810}
!1963 = !DILocation(line: 1482, column: 5, scope: !1856)
!1964 = !DILocation(line: 1434, column: 10, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !621, line: 1434, column: 10)
!1966 = !DILocation(line: 1434, column: 23, scope: !1965)
!1967 = !DILocation(line: 1434, column: 10, scope: !1955)
!1968 = !DILocation(line: 1436, column: 20, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !621, line: 1436, column: 14)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !621, line: 1434, column: 41)
!1971 = !DILocation(line: 1436, column: 14, scope: !1970)
!1972 = !DILocation(line: 1438, column: 20, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !621, line: 1438, column: 14)
!1974 = !DILocation(line: 1438, column: 14, scope: !1969)
!1975 = !DILocation(line: 0, scope: !1969)
!1976 = !DILocation(line: 1443, column: 7, scope: !1970)
!1977 = !DILocation(line: 1444, column: 20, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !621, line: 1443, column: 16)
!1979 = distinct !DILexicalBlock(scope: !1970, file: !621, line: 1443, column: 7)
!1980 = !DILocation(line: 1445, column: 3, scope: !1978)
!1981 = !DILocation(line: 1446, column: 20, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !621, line: 1445, column: 10)
!1983 = !DILocation(line: 0, scope: !1955)
!1984 = !DILocation(line: 1449, column: 10, scope: !1970)
!1985 = !DILocation(line: 1449, column: 3, scope: !1970)
!1986 = !DILocation(line: 1450, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1970, file: !621, line: 1449, column: 23)
!1988 = !DILocation(line: 1451, column: 11, scope: !1987)
!1989 = !DILocation(line: 1458, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !621, line: 1458, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1965, file: !621, line: 1457, column: 11)
!1992 = !DILocation(line: 1458, column: 28, scope: !1990)
!1993 = !DILocation(line: 1458, column: 7, scope: !1991)
!1994 = !DILocation(line: 1467, column: 3, scope: !1991)
!1995 = !DILocation(line: 1460, column: 36, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !621, line: 1458, column: 46)
!1997 = !DILocation(line: 1461, column: 8, scope: !1996)
!1998 = !DILocalVariable(name: "value", arg: 1, scope: !1999, file: !621, line: 1109, type: !35)
!1999 = distinct !DISubprogram(name: "S_mulexp10", scope: !621, file: !621, line: 1109, type: !2000, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!35, !35, !27}
!2002 = !{!1998, !2003, !2004, !2005, !2006, !2007}
!2003 = !DILocalVariable(name: "exponent", arg: 2, scope: !1999, file: !621, line: 1109, type: !27)
!2004 = !DILocalVariable(name: "result", scope: !1999, file: !621, line: 1111, type: !35)
!2005 = !DILocalVariable(name: "power", scope: !1999, file: !621, line: 1112, type: !35)
!2006 = !DILocalVariable(name: "negative", scope: !1999, file: !621, line: 1113, type: !34)
!2007 = !DILocalVariable(name: "bit", scope: !1999, file: !621, line: 1114, type: !27)
!2008 = !DILocation(line: 0, scope: !1999, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 1460, column: 25, scope: !1996)
!2010 = !DILocation(line: 1116, column: 18, scope: !2011, inlinedAt: !2009)
!2011 = distinct !DILexicalBlock(scope: !1999, file: !621, line: 1116, column: 9)
!2012 = !DILocation(line: 1116, column: 9, scope: !1999, inlinedAt: !2009)
!2013 = !DILocation(line: 1118, column: 15, scope: !2014, inlinedAt: !2009)
!2014 = distinct !DILexicalBlock(scope: !1999, file: !621, line: 1118, column: 9)
!2015 = !DILocation(line: 1118, column: 9, scope: !1999, inlinedAt: !2009)
!2016 = !DILocation(line: 1158, column: 18, scope: !2017, inlinedAt: !2009)
!2017 = distinct !DILexicalBlock(scope: !1999, file: !621, line: 1158, column: 9)
!2018 = !DILocation(line: 1158, column: 9, scope: !1999, inlinedAt: !2009)
!2019 = !DILocation(line: 1160, column: 13, scope: !2020, inlinedAt: !2009)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !621, line: 1158, column: 23)
!2021 = !DILocation(line: 1167, column: 22, scope: !2020, inlinedAt: !2009)
!2022 = !DILocation(line: 1168, column: 21, scope: !2023, inlinedAt: !2009)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !621, line: 1167, column: 51)
!2024 = !DILocation(line: 1169, column: 19, scope: !2023, inlinedAt: !2009)
!2025 = !DILocation(line: 1167, column: 16, scope: !2020, inlinedAt: !2009)
!2026 = distinct !{!2026, !2027, !2028, !809, !810}
!2027 = !DILocation(line: 1167, column: 9, scope: !2020, inlinedAt: !2009)
!2028 = !DILocation(line: 1170, column: 9, scope: !2020, inlinedAt: !2009)
!2029 = !DILocation(line: 0, scope: !2020, inlinedAt: !2009)
!2030 = !DILocation(line: 1171, column: 19, scope: !2031, inlinedAt: !2009)
!2031 = distinct !DILexicalBlock(scope: !2020, file: !621, line: 1171, column: 13)
!2032 = !DILocation(line: 1171, column: 13, scope: !2020, inlinedAt: !2009)
!2033 = !DILocation(line: 1182, column: 10, scope: !2034, inlinedAt: !2009)
!2034 = distinct !DILexicalBlock(scope: !1999, file: !621, line: 1182, column: 5)
!2035 = !DILocation(line: 0, scope: !2034, inlinedAt: !2009)
!2036 = !DILocation(line: 1183, column: 15, scope: !2037, inlinedAt: !2009)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !621, line: 1183, column: 6)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !621, line: 1182, column: 40)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !621, line: 1182, column: 5)
!2040 = !DILocation(line: 1183, column: 6, scope: !2038, inlinedAt: !2009)
!2041 = !DILocation(line: 1184, column: 15, scope: !2042, inlinedAt: !2009)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !621, line: 1183, column: 22)
!2043 = !DILocation(line: 1185, column: 13, scope: !2042, inlinedAt: !2009)
!2044 = !DILocation(line: 1193, column: 20, scope: !2045, inlinedAt: !2009)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !621, line: 1193, column: 11)
!2046 = !DILocation(line: 1193, column: 11, scope: !2042, inlinedAt: !2009)
!2047 = !DILocation(line: 1195, column: 8, scope: !2038, inlinedAt: !2009)
!2048 = !DILocation(line: 1182, column: 33, scope: !2039, inlinedAt: !2009)
!2049 = !DILocation(line: 1182, column: 5, scope: !2039, inlinedAt: !2009)
!2050 = distinct !{!2050, !2051, !2052, !809, !810}
!2051 = !DILocation(line: 1182, column: 5, scope: !2034, inlinedAt: !2009)
!2052 = !DILocation(line: 1196, column: 5, scope: !2034, inlinedAt: !2009)
!2053 = !DILocation(line: 1197, column: 12, scope: !1999, inlinedAt: !2009)
!2054 = !DILocation(line: 1197, column: 29, scope: !1999, inlinedAt: !2009)
!2055 = !DILocation(line: 1197, column: 46, scope: !1999, inlinedAt: !2009)
!2056 = !DILocation(line: 1462, column: 6, scope: !1996)
!2057 = !DILocation(line: 1462, column: 4, scope: !1996)
!2058 = !DILocation(line: 1460, column: 23, scope: !1996)
!2059 = !DILocation(line: 1465, column: 3, scope: !1996)
!2060 = !DILocation(line: 1466, column: 26, scope: !1991)
!2061 = !DILocation(line: 1466, column: 47, scope: !1991)
!2062 = !DILocation(line: 1466, column: 54, scope: !1991)
!2063 = !DILocation(line: 1466, column: 52, scope: !1991)
!2064 = !DILocation(line: 1466, column: 24, scope: !1991)
!2065 = !DILocation(line: 1470, column: 12, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1953, file: !621, line: 1470, column: 11)
!2067 = !DILocation(line: 1470, column: 20, scope: !2066)
!2068 = !DILocation(line: 0, scope: !1135, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 1470, column: 23, scope: !2066)
!2070 = !DILocation(line: 544, column: 13, scope: !1144, inlinedAt: !2069)
!2071 = !DILocation(line: 544, column: 20, scope: !1144, inlinedAt: !2069)
!2072 = !DILocation(line: 545, column: 9, scope: !1151, inlinedAt: !2069)
!2073 = !DILocation(line: 1472, column: 21, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !621, line: 1472, column: 10)
!2075 = distinct !DILexicalBlock(scope: !2066, file: !621, line: 1470, column: 53)
!2076 = !DILocation(line: 1472, column: 10, scope: !2075)
!2077 = !DILocation(line: 0, scope: !2066)
!2078 = !DILocation(line: 1474, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !621, line: 1473, column: 6)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !621, line: 1472, column: 39)
!2081 = !DILocation(line: 1475, column: 12, scope: !2080)
!2082 = !DILocation(line: 1475, column: 3, scope: !2079)
!2083 = distinct !{!2083, !2084, !2085, !809, !810}
!2084 = !DILocation(line: 1473, column: 3, scope: !2080)
!2085 = !DILocation(line: 1475, column: 23, scope: !2080)
!2086 = !DILocation(line: 1484, column: 28, scope: !1856)
!2087 = !DILocation(line: 1484, column: 39, scope: !1856)
!2088 = !DILocation(line: 0, scope: !1999, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 1484, column: 17, scope: !1856)
!2090 = !DILocation(line: 1116, column: 18, scope: !2011, inlinedAt: !2089)
!2091 = !DILocation(line: 1116, column: 9, scope: !1999, inlinedAt: !2089)
!2092 = !DILocation(line: 1118, column: 15, scope: !2014, inlinedAt: !2089)
!2093 = !DILocation(line: 1118, column: 9, scope: !1999, inlinedAt: !2089)
!2094 = !DILocation(line: 1158, column: 18, scope: !2017, inlinedAt: !2089)
!2095 = !DILocation(line: 1158, column: 9, scope: !1999, inlinedAt: !2089)
!2096 = !DILocation(line: 1160, column: 13, scope: !2020, inlinedAt: !2089)
!2097 = !DILocation(line: 1167, column: 22, scope: !2020, inlinedAt: !2089)
!2098 = !DILocation(line: 1168, column: 21, scope: !2023, inlinedAt: !2089)
!2099 = !DILocation(line: 1169, column: 19, scope: !2023, inlinedAt: !2089)
!2100 = !DILocation(line: 1167, column: 16, scope: !2020, inlinedAt: !2089)
!2101 = distinct !{!2101, !2102, !2103, !809, !810}
!2102 = !DILocation(line: 1167, column: 9, scope: !2020, inlinedAt: !2089)
!2103 = !DILocation(line: 1170, column: 9, scope: !2020, inlinedAt: !2089)
!2104 = !DILocation(line: 0, scope: !2020, inlinedAt: !2089)
!2105 = !DILocation(line: 1171, column: 19, scope: !2031, inlinedAt: !2089)
!2106 = !DILocation(line: 1171, column: 13, scope: !2020, inlinedAt: !2089)
!2107 = !DILocation(line: 1182, column: 10, scope: !2034, inlinedAt: !2089)
!2108 = !DILocation(line: 0, scope: !2034, inlinedAt: !2089)
!2109 = !DILocation(line: 1183, column: 15, scope: !2037, inlinedAt: !2089)
!2110 = !DILocation(line: 1183, column: 6, scope: !2038, inlinedAt: !2089)
!2111 = !DILocation(line: 1184, column: 15, scope: !2042, inlinedAt: !2089)
!2112 = !DILocation(line: 1185, column: 13, scope: !2042, inlinedAt: !2089)
!2113 = !DILocation(line: 1193, column: 20, scope: !2045, inlinedAt: !2089)
!2114 = !DILocation(line: 1193, column: 11, scope: !2042, inlinedAt: !2089)
!2115 = !DILocation(line: 1195, column: 8, scope: !2038, inlinedAt: !2089)
!2116 = !DILocation(line: 1182, column: 33, scope: !2039, inlinedAt: !2089)
!2117 = !DILocation(line: 1182, column: 5, scope: !2039, inlinedAt: !2089)
!2118 = distinct !{!2118, !2119, !2120, !809, !810}
!2119 = !DILocation(line: 1182, column: 5, scope: !2034, inlinedAt: !2089)
!2120 = !DILocation(line: 1196, column: 5, scope: !2034, inlinedAt: !2089)
!2121 = !DILocation(line: 1197, column: 12, scope: !1999, inlinedAt: !2089)
!2122 = !DILocation(line: 1197, column: 29, scope: !1999, inlinedAt: !2089)
!2123 = !DILocation(line: 1197, column: 46, scope: !1999, inlinedAt: !2089)
!2124 = !DILocation(line: 1484, column: 57, scope: !1856)
!2125 = !DILocation(line: 1484, column: 53, scope: !1856)
!2126 = !DILocation(line: 1484, column: 51, scope: !1856)
!2127 = !DILocation(line: 1484, column: 15, scope: !1856)
!2128 = !DILocation(line: 1485, column: 9, scope: !1856)
!2129 = !DILocation(line: 1486, column: 25, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !621, line: 1485, column: 18)
!2131 = distinct !DILexicalBlock(scope: !1856, file: !621, line: 1485, column: 9)
!2132 = !DILocation(line: 1486, column: 36, scope: !2130)
!2133 = !DILocation(line: 0, scope: !1999, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 1486, column: 14, scope: !2130)
!2135 = !DILocation(line: 1116, column: 18, scope: !2011, inlinedAt: !2134)
!2136 = !DILocation(line: 1116, column: 9, scope: !1999, inlinedAt: !2134)
!2137 = !DILocation(line: 1118, column: 15, scope: !2014, inlinedAt: !2134)
!2138 = !DILocation(line: 1118, column: 9, scope: !1999, inlinedAt: !2134)
!2139 = !DILocation(line: 1158, column: 18, scope: !2017, inlinedAt: !2134)
!2140 = !DILocation(line: 1158, column: 9, scope: !1999, inlinedAt: !2134)
!2141 = !DILocation(line: 1160, column: 13, scope: !2020, inlinedAt: !2134)
!2142 = !DILocation(line: 1167, column: 22, scope: !2020, inlinedAt: !2134)
!2143 = !DILocation(line: 1168, column: 21, scope: !2023, inlinedAt: !2134)
!2144 = !DILocation(line: 1169, column: 19, scope: !2023, inlinedAt: !2134)
!2145 = !DILocation(line: 1167, column: 16, scope: !2020, inlinedAt: !2134)
!2146 = distinct !{!2146, !2147, !2148, !809, !810}
!2147 = !DILocation(line: 1167, column: 9, scope: !2020, inlinedAt: !2134)
!2148 = !DILocation(line: 1170, column: 9, scope: !2020, inlinedAt: !2134)
!2149 = !DILocation(line: 0, scope: !2020, inlinedAt: !2134)
!2150 = !DILocation(line: 1171, column: 19, scope: !2031, inlinedAt: !2134)
!2151 = !DILocation(line: 1171, column: 13, scope: !2020, inlinedAt: !2134)
!2152 = !DILocation(line: 1182, column: 10, scope: !2034, inlinedAt: !2134)
!2153 = !DILocation(line: 0, scope: !2034, inlinedAt: !2134)
!2154 = !DILocation(line: 1183, column: 15, scope: !2037, inlinedAt: !2134)
!2155 = !DILocation(line: 1183, column: 6, scope: !2038, inlinedAt: !2134)
!2156 = !DILocation(line: 1184, column: 15, scope: !2042, inlinedAt: !2134)
!2157 = !DILocation(line: 1185, column: 13, scope: !2042, inlinedAt: !2134)
!2158 = !DILocation(line: 1193, column: 20, scope: !2045, inlinedAt: !2134)
!2159 = !DILocation(line: 1193, column: 11, scope: !2042, inlinedAt: !2134)
!2160 = !DILocation(line: 1195, column: 8, scope: !2038, inlinedAt: !2134)
!2161 = !DILocation(line: 1182, column: 33, scope: !2039, inlinedAt: !2134)
!2162 = !DILocation(line: 1182, column: 5, scope: !2039, inlinedAt: !2134)
!2163 = distinct !{!2163, !2164, !2165, !809, !810}
!2164 = !DILocation(line: 1182, column: 5, scope: !2034, inlinedAt: !2134)
!2165 = !DILocation(line: 1196, column: 5, scope: !2034, inlinedAt: !2134)
!2166 = !DILocation(line: 1197, column: 12, scope: !1999, inlinedAt: !2134)
!2167 = !DILocation(line: 1197, column: 29, scope: !1999, inlinedAt: !2134)
!2168 = !DILocation(line: 1197, column: 46, scope: !1999, inlinedAt: !2134)
!2169 = !DILocation(line: 1486, column: 54, scope: !2130)
!2170 = !DILocation(line: 1486, column: 50, scope: !2130)
!2171 = !DILocation(line: 1486, column: 48, scope: !2130)
!2172 = !DILocation(line: 1486, column: 12, scope: !2130)
!2173 = !DILocation(line: 1487, column: 5, scope: !2130)
!2174 = !DILocation(line: 1489, column: 9, scope: !1884)
!2175 = !DILocation(line: 1489, column: 20, scope: !1884)
!2176 = !DILocation(line: 1489, column: 24, scope: !1884)
!2177 = !DILocation(line: 1489, column: 9, scope: !1856)
!2178 = !DILocation(line: 0, scope: !1883)
!2179 = !DILocation(line: 1492, column: 2, scope: !1883)
!2180 = !DILocation(line: 1493, column: 10, scope: !1883)
!2181 = !DILocation(line: 1493, column: 2, scope: !1883)
!2182 = !DILocation(line: 1495, column: 3, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1883, file: !621, line: 1493, column: 14)
!2184 = !DILocation(line: 1498, column: 3, scope: !2183)
!2185 = !DILocation(line: 1500, column: 9, scope: !1883)
!2186 = !DILocation(line: 1499, column: 2, scope: !2183)
!2187 = !DILocation(line: 1490, column: 7, scope: !1883)
!2188 = !DILocation(line: 1500, column: 2, scope: !1883)
!2189 = !DILocation(line: 1501, column: 26, scope: !1883)
!2190 = !DILocation(line: 1501, column: 36, scope: !1883)
!2191 = !DILocation(line: 1501, column: 34, scope: !1883)
!2192 = !DILocation(line: 1501, column: 39, scope: !1883)
!2193 = !DILocation(line: 1501, column: 31, scope: !1883)
!2194 = distinct !{!2194, !2188, !2195, !809, !810}
!2195 = !DILocation(line: 1501, column: 44, scope: !1883)
!2196 = !DILocation(line: 1502, column: 6, scope: !1883)
!2197 = !DILocation(line: 1504, column: 5, scope: !1883)
!2198 = !DILocation(line: 0, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1856, file: !621, line: 1510, column: 9)
!2200 = !DILocation(line: 0, scope: !1999, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 1514, column: 14, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !621, line: 1513, column: 12)
!2203 = !DILocation(line: 0, scope: !1999, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 1511, column: 14, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !621, line: 1510, column: 18)
!2206 = !DILocation(line: 1510, column: 9, scope: !1856)
!2207 = !DILocation(line: 1116, column: 9, scope: !1999, inlinedAt: !2204)
!2208 = !DILocation(line: 1118, column: 15, scope: !2014, inlinedAt: !2204)
!2209 = !DILocation(line: 1118, column: 9, scope: !1999, inlinedAt: !2204)
!2210 = !DILocation(line: 1158, column: 18, scope: !2017, inlinedAt: !2204)
!2211 = !DILocation(line: 1158, column: 9, scope: !1999, inlinedAt: !2204)
!2212 = !DILocation(line: 1160, column: 13, scope: !2020, inlinedAt: !2204)
!2213 = !DILocation(line: 1167, column: 22, scope: !2020, inlinedAt: !2204)
!2214 = !DILocation(line: 1168, column: 21, scope: !2023, inlinedAt: !2204)
!2215 = !DILocation(line: 1169, column: 19, scope: !2023, inlinedAt: !2204)
!2216 = !DILocation(line: 1167, column: 16, scope: !2020, inlinedAt: !2204)
!2217 = distinct !{!2217, !2218, !2219, !809, !810}
!2218 = !DILocation(line: 1167, column: 9, scope: !2020, inlinedAt: !2204)
!2219 = !DILocation(line: 1170, column: 9, scope: !2020, inlinedAt: !2204)
!2220 = !DILocation(line: 0, scope: !2020, inlinedAt: !2204)
!2221 = !DILocation(line: 1171, column: 19, scope: !2031, inlinedAt: !2204)
!2222 = !DILocation(line: 1171, column: 13, scope: !2020, inlinedAt: !2204)
!2223 = !DILocation(line: 1182, column: 10, scope: !2034, inlinedAt: !2204)
!2224 = !DILocation(line: 0, scope: !2034, inlinedAt: !2204)
!2225 = !DILocation(line: 1183, column: 15, scope: !2037, inlinedAt: !2204)
!2226 = !DILocation(line: 1183, column: 6, scope: !2038, inlinedAt: !2204)
!2227 = !DILocation(line: 1184, column: 15, scope: !2042, inlinedAt: !2204)
!2228 = !DILocation(line: 1185, column: 13, scope: !2042, inlinedAt: !2204)
!2229 = !DILocation(line: 1193, column: 20, scope: !2045, inlinedAt: !2204)
!2230 = !DILocation(line: 1193, column: 11, scope: !2042, inlinedAt: !2204)
!2231 = !DILocation(line: 1195, column: 8, scope: !2038, inlinedAt: !2204)
!2232 = !DILocation(line: 1182, column: 33, scope: !2039, inlinedAt: !2204)
!2233 = !DILocation(line: 1182, column: 5, scope: !2039, inlinedAt: !2204)
!2234 = distinct !{!2234, !2235, !2236, !809, !810}
!2235 = !DILocation(line: 1182, column: 5, scope: !2034, inlinedAt: !2204)
!2236 = !DILocation(line: 1196, column: 5, scope: !2034, inlinedAt: !2204)
!2237 = !DILocation(line: 1197, column: 12, scope: !1999, inlinedAt: !2204)
!2238 = !DILocation(line: 1197, column: 29, scope: !1999, inlinedAt: !2204)
!2239 = !DILocation(line: 1197, column: 46, scope: !1999, inlinedAt: !2204)
!2240 = !DILocation(line: 1512, column: 16, scope: !2205)
!2241 = !DILocation(line: 1512, column: 34, scope: !2205)
!2242 = !DILocation(line: 0, scope: !1999, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 1512, column: 5, scope: !2205)
!2244 = !DILocation(line: 1116, column: 18, scope: !2011, inlinedAt: !2243)
!2245 = !DILocation(line: 1116, column: 9, scope: !1999, inlinedAt: !2243)
!2246 = !DILocation(line: 1118, column: 15, scope: !2014, inlinedAt: !2243)
!2247 = !DILocation(line: 1118, column: 9, scope: !1999, inlinedAt: !2243)
!2248 = !DILocation(line: 1158, column: 18, scope: !2017, inlinedAt: !2243)
!2249 = !DILocation(line: 1158, column: 9, scope: !1999, inlinedAt: !2243)
!2250 = !DILocation(line: 1160, column: 13, scope: !2020, inlinedAt: !2243)
!2251 = !DILocation(line: 1167, column: 22, scope: !2020, inlinedAt: !2243)
!2252 = !DILocation(line: 1168, column: 21, scope: !2023, inlinedAt: !2243)
!2253 = !DILocation(line: 1169, column: 19, scope: !2023, inlinedAt: !2243)
!2254 = !DILocation(line: 1167, column: 16, scope: !2020, inlinedAt: !2243)
!2255 = distinct !{!2255, !2256, !2257, !809, !810}
!2256 = !DILocation(line: 1167, column: 9, scope: !2020, inlinedAt: !2243)
!2257 = !DILocation(line: 1170, column: 9, scope: !2020, inlinedAt: !2243)
!2258 = !DILocation(line: 0, scope: !2020, inlinedAt: !2243)
!2259 = !DILocation(line: 1171, column: 19, scope: !2031, inlinedAt: !2243)
!2260 = !DILocation(line: 1171, column: 13, scope: !2020, inlinedAt: !2243)
!2261 = !DILocation(line: 1182, column: 10, scope: !2034, inlinedAt: !2243)
!2262 = !DILocation(line: 0, scope: !2034, inlinedAt: !2243)
!2263 = !DILocation(line: 1183, column: 15, scope: !2037, inlinedAt: !2243)
!2264 = !DILocation(line: 1183, column: 6, scope: !2038, inlinedAt: !2243)
!2265 = !DILocation(line: 1184, column: 15, scope: !2042, inlinedAt: !2243)
!2266 = !DILocation(line: 1185, column: 13, scope: !2042, inlinedAt: !2243)
!2267 = !DILocation(line: 1193, column: 20, scope: !2045, inlinedAt: !2243)
!2268 = !DILocation(line: 1193, column: 11, scope: !2042, inlinedAt: !2243)
!2269 = !DILocation(line: 1195, column: 8, scope: !2038, inlinedAt: !2243)
!2270 = !DILocation(line: 1182, column: 33, scope: !2039, inlinedAt: !2243)
!2271 = !DILocation(line: 1182, column: 5, scope: !2039, inlinedAt: !2243)
!2272 = distinct !{!2272, !2273, !2274, !809, !810}
!2273 = !DILocation(line: 1182, column: 5, scope: !2034, inlinedAt: !2243)
!2274 = !DILocation(line: 1196, column: 5, scope: !2034, inlinedAt: !2243)
!2275 = !DILocation(line: 1197, column: 12, scope: !1999, inlinedAt: !2243)
!2276 = !DILocation(line: 1197, column: 29, scope: !1999, inlinedAt: !2243)
!2277 = !DILocation(line: 1197, column: 46, scope: !1999, inlinedAt: !2243)
!2278 = !DILocation(line: 1512, column: 3, scope: !2205)
!2279 = !DILocation(line: 1513, column: 5, scope: !2205)
!2280 = !DILocation(line: 1116, column: 9, scope: !1999, inlinedAt: !2201)
!2281 = !DILocation(line: 1118, column: 15, scope: !2014, inlinedAt: !2201)
!2282 = !DILocation(line: 1118, column: 9, scope: !1999, inlinedAt: !2201)
!2283 = !DILocation(line: 1158, column: 18, scope: !2017, inlinedAt: !2201)
!2284 = !DILocation(line: 1158, column: 9, scope: !1999, inlinedAt: !2201)
!2285 = !DILocation(line: 1160, column: 13, scope: !2020, inlinedAt: !2201)
!2286 = !DILocation(line: 1167, column: 22, scope: !2020, inlinedAt: !2201)
!2287 = !DILocation(line: 1168, column: 21, scope: !2023, inlinedAt: !2201)
!2288 = !DILocation(line: 1169, column: 19, scope: !2023, inlinedAt: !2201)
!2289 = !DILocation(line: 1167, column: 16, scope: !2020, inlinedAt: !2201)
!2290 = distinct !{!2290, !2291, !2292, !809, !810}
!2291 = !DILocation(line: 1167, column: 9, scope: !2020, inlinedAt: !2201)
!2292 = !DILocation(line: 1170, column: 9, scope: !2020, inlinedAt: !2201)
!2293 = !DILocation(line: 0, scope: !2020, inlinedAt: !2201)
!2294 = !DILocation(line: 1171, column: 19, scope: !2031, inlinedAt: !2201)
!2295 = !DILocation(line: 1171, column: 13, scope: !2020, inlinedAt: !2201)
!2296 = !DILocation(line: 1182, column: 10, scope: !2034, inlinedAt: !2201)
!2297 = !DILocation(line: 0, scope: !2034, inlinedAt: !2201)
!2298 = !DILocation(line: 1183, column: 15, scope: !2037, inlinedAt: !2201)
!2299 = !DILocation(line: 1183, column: 6, scope: !2038, inlinedAt: !2201)
!2300 = !DILocation(line: 1184, column: 15, scope: !2042, inlinedAt: !2201)
!2301 = !DILocation(line: 1185, column: 13, scope: !2042, inlinedAt: !2201)
!2302 = !DILocation(line: 1193, column: 20, scope: !2045, inlinedAt: !2201)
!2303 = !DILocation(line: 1193, column: 11, scope: !2042, inlinedAt: !2201)
!2304 = !DILocation(line: 1195, column: 8, scope: !2038, inlinedAt: !2201)
!2305 = !DILocation(line: 1182, column: 33, scope: !2039, inlinedAt: !2201)
!2306 = !DILocation(line: 1182, column: 5, scope: !2039, inlinedAt: !2201)
!2307 = distinct !{!2307, !2308, !2309, !809, !810}
!2308 = !DILocation(line: 1182, column: 5, scope: !2034, inlinedAt: !2201)
!2309 = !DILocation(line: 1196, column: 5, scope: !2034, inlinedAt: !2201)
!2310 = !DILocation(line: 1197, column: 12, scope: !1999, inlinedAt: !2201)
!2311 = !DILocation(line: 1197, column: 29, scope: !1999, inlinedAt: !2201)
!2312 = !DILocation(line: 1197, column: 46, scope: !1999, inlinedAt: !2201)
!2313 = !DILocation(line: 1518, column: 9, scope: !1856)
!2314 = !DILocation(line: 1521, column: 12, scope: !1856)
!2315 = !DILocation(line: 1522, column: 5, scope: !1856)
!2316 = !DILocation(line: 1523, column: 1, scope: !1856)
!2317 = distinct !DISubprogram(name: "Perl_isinfnan", scope: !621, file: !621, line: 1537, type: !2318, scopeLine: 1538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!34, !35}
!2320 = !{!2321}
!2321 = !DILocalVariable(name: "nv", arg: 1, scope: !2317, file: !621, line: 1537, type: !35)
!2322 = !DILocation(line: 0, scope: !2317)
!2323 = !DILocation(line: 1540, column: 9, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !621, line: 1540, column: 9)
!2325 = !DILocation(line: 1540, column: 9, scope: !2317)
!2326 = !DILocation(line: 1544, column: 9, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2317, file: !621, line: 1544, column: 9)
!2328 = !DILocation(line: 1548, column: 1, scope: !2317)
!2329 = distinct !DISubprogram(name: "Perl_isinfnansv", scope: !621, file: !621, line: 1561, type: !2330, scopeLine: 1562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!34, !78}
!2332 = !{!2333, !2334, !2336}
!2333 = !DILocalVariable(name: "sv", arg: 1, scope: !2329, file: !621, line: 1561, type: !78)
!2334 = !DILocalVariable(name: "len", scope: !2335, file: !621, line: 1571, type: !101)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !621, line: 1570, column: 5)
!2336 = !DILocalVariable(name: "s", scope: !2335, file: !621, line: 1572, type: !443)
!2337 = !DILocation(line: 0, scope: !2329)
!2338 = !DILocation(line: 1564, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2329, file: !621, line: 1564, column: 9)
!2340 = !DILocation(line: 1566, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2329, file: !621, line: 1566, column: 9)
!2342 = !DILocation(line: 1566, column: 9, scope: !2329)
!2343 = !DILocation(line: 1567, column: 30, scope: !2341)
!2344 = !DILocation(line: 0, scope: !2317, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 1567, column: 16, scope: !2341)
!2346 = !DILocation(line: 1540, column: 9, scope: !2324, inlinedAt: !2345)
!2347 = !DILocation(line: 1540, column: 9, scope: !2317, inlinedAt: !2345)
!2348 = !DILocation(line: 1544, column: 9, scope: !2327, inlinedAt: !2345)
!2349 = !DILocation(line: 1568, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2329, file: !621, line: 1568, column: 9)
!2351 = !DILocation(line: 1568, column: 9, scope: !2329)
!2352 = !DILocation(line: 1571, column: 9, scope: !2335)
!2353 = !DILocation(line: 1572, column: 9, scope: !2335)
!2354 = !DILocation(line: 1572, column: 25, scope: !2335)
!2355 = !DILocation(line: 0, scope: !2335)
!2356 = !DILocation(line: 1573, column: 16, scope: !2335)
!2357 = !DILocation(line: 1572, column: 21, scope: !2335)
!2358 = !DILocation(line: 1574, column: 5, scope: !2329)
!2359 = !DILocation(line: 1575, column: 1, scope: !2329)
!2360 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !847, file: !847, line: 4130, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !850)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!40, !432, !2363, !466}
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
