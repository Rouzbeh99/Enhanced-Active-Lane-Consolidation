; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/mro_core.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/mro_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mro_alg = type { ptr, ptr, i16, i16, i32 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%union._xmgu = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu }
%union.anon.16 = type { i64 }
%union._xivu = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.he = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu, %union._xnvu }
%union.anon.17 = type { i64 }
%union._xnvu = type { double }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }

@.str = private unnamed_addr constant [65 x i8] c"panic: hv_store() failed in set_mro_private_data() for '%.*s' %d\00", align 1
@PL_registered_mros = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"panic: hv_store() failed in mro_register() for '%.*s' %d\00", align 1
@dfs_alg = internal constant %struct.mro_alg { ptr @S_mro_get_linear_isa_dfs, ptr @.str.16, i16 3, i16 0, i32 0 }, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't linearize anonymous symbol table\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"panic: invalid MRO!\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Can't call mro_isa_changed_in() on anonymous symbol table\00", align 1
@PL_isarev = external local_unnamed_addr global ptr, align 8
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Can't call mro_method_changed_in() on anonymous symbol table\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Invalid mro name: '%-p'\00", align 1
@Perl_boot_core_mro.file = internal constant [82 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/mro_core.c\00", align 16, !dbg !682
@.str.12 = private unnamed_addr constant [23 x i8] c"mro::method_changed_in\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"No such class: '%-p'!\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dfs\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Recursive inheritance detected in package '%2p'\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_stashcache = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mro_get_private_data(ptr nocapture noundef %smeta, ptr noundef readonly %which) local_unnamed_addr #0 !dbg !699 {
entry:
  call void @llvm.dbg.value(metadata ptr %smeta, metadata !705, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %which, metadata !706, metadata !DIExpression()), !dbg !708
  %0 = load ptr, ptr %smeta, align 8, !dbg !709
  %name = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 1, !dbg !710
  %1 = load ptr, ptr %name, align 8, !dbg !710
  %length = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 2, !dbg !711
  %2 = load i16, ptr %length, align 8, !dbg !711
  %conv = zext i16 %2 to i64, !dbg !712
  %kflags = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 3, !dbg !713
  %3 = load i16, ptr %kflags, align 2, !dbg !713
  %conv1 = zext i16 %3 to i32, !dbg !714
  %hash = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 4, !dbg !715
  %4 = load i32, ptr %hash, align 4, !dbg !715
  %call = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %conv, i32 noundef %conv1, i32 noundef 32, ptr noundef null, i32 noundef %4) #7, !dbg !716
  call void @llvm.dbg.value(metadata ptr %call, metadata !707, metadata !DIExpression()), !dbg !708
  %tobool.not = icmp eq ptr %call, null, !dbg !717
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !719

if.end:                                           ; preds = %entry
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 5, !dbg !720
  %5 = load ptr, ptr %mro_which, align 8, !dbg !720
  %cmp = icmp eq ptr %5, %which, !dbg !722
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !723

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %call, align 8, !dbg !724
  %mro_linear_current = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 1, !dbg !725
  store ptr %6, ptr %mro_linear_current, align 8, !dbg !726
  br label %if.end4, !dbg !727

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %call, align 8, !dbg !728
  br label %cleanup, !dbg !729

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi ptr [ %7, %if.end4 ], [ null, %entry ], !dbg !708
  ret ptr %retval.0, !dbg !730
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !731 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mro_set_private_data(ptr nocapture noundef %smeta, ptr noundef readonly %which, ptr noundef returned %data) local_unnamed_addr #0 !dbg !735 {
entry:
  call void @llvm.dbg.value(metadata ptr %smeta, metadata !739, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %which, metadata !740, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %data, metadata !741, metadata !DIExpression()), !dbg !748
  %0 = load ptr, ptr %smeta, align 8, !dbg !749
  %tobool.not = icmp eq ptr %0, null, !dbg !750
  br i1 %tobool.not, label %if.then, label %if.end10, !dbg !751

if.then:                                          ; preds = %entry
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 5, !dbg !752
  %1 = load ptr, ptr %mro_which, align 8, !dbg !752
  %cmp = icmp eq ptr %1, %which, !dbg !753
  br i1 %cmp, label %if.then1, label %if.else, !dbg !754

if.then1:                                         ; preds = %if.then
  %mro_linear_current = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 1, !dbg !755
  store ptr %data, ptr %mro_linear_current, align 8, !dbg !757
  br label %return, !dbg !758

if.else:                                          ; preds = %if.then
  %call = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !759
  call void @llvm.dbg.value(metadata ptr %call, metadata !742, metadata !DIExpression()), !dbg !760
  %2 = load ptr, ptr %call, align 8, !dbg !761
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %2, i64 0, i32 3, !dbg !761
  store i64 1, ptr %xhv_max, align 8, !dbg !762
  store ptr %call, ptr %smeta, align 8, !dbg !763
  %mro_linear_current3 = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 1, !dbg !764
  %3 = load ptr, ptr %mro_linear_current3, align 8, !dbg !764
  %tobool4.not = icmp eq ptr %3, null, !dbg !766
  br i1 %tobool4.not, label %if.end10, label %if.then5, !dbg !767

if.then5:                                         ; preds = %if.else
  %4 = load ptr, ptr %mro_which, align 8, !dbg !768
  %call8 = tail call ptr @Perl_mro_set_private_data(ptr noundef nonnull %smeta, ptr noundef %4, ptr noundef nonnull %3), !dbg !770
  br label %if.end10, !dbg !771

if.end10:                                         ; preds = %if.else, %if.then5, %entry
  %mro_which11 = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 5, !dbg !772
  %5 = load ptr, ptr %mro_which11, align 8, !dbg !772
  %cmp12 = icmp eq ptr %5, %which, !dbg !774
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !775

if.then13:                                        ; preds = %if.end10
  %mro_linear_current14 = getelementptr inbounds %struct.mro_meta, ptr %smeta, i64 0, i32 1, !dbg !776
  store ptr %data, ptr %mro_linear_current14, align 8, !dbg !778
  br label %if.end15, !dbg !779

if.end15:                                         ; preds = %if.then13, %if.end10
  %6 = load ptr, ptr %smeta, align 8, !dbg !780
  %name = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 1, !dbg !782
  %7 = load ptr, ptr %name, align 8, !dbg !782
  %length = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 2, !dbg !783
  %8 = load i16, ptr %length, align 8, !dbg !783
  %conv = zext i16 %8 to i64, !dbg !784
  %kflags = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 3, !dbg !785
  %9 = load i16, ptr %kflags, align 2, !dbg !785
  %conv17 = zext i16 %9 to i32, !dbg !786
  %hash = getelementptr inbounds %struct.mro_alg, ptr %which, i64 0, i32 4, !dbg !787
  %10 = load i32, ptr %hash, align 4, !dbg !787
  %call18 = tail call ptr @Perl_hv_common(ptr noundef %6, ptr noundef null, ptr noundef %7, i64 noundef %conv, i32 noundef %conv17, i32 noundef 4, ptr noundef %data, i32 noundef %10) #7, !dbg !788
  %tobool19.not = icmp eq ptr %call18, null, !dbg !788
  br i1 %tobool19.not, label %if.then20, label %return, !dbg !789

if.then20:                                        ; preds = %if.end15
  %11 = load i16, ptr %length, align 8, !dbg !790
  %conv22 = zext i16 %11 to i32, !dbg !792
  %12 = load ptr, ptr %name, align 8, !dbg !793
  %13 = load i16, ptr %kflags, align 2, !dbg !794
  %conv25 = zext i16 %13 to i32, !dbg !795
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str, i32 noundef %conv22, ptr noundef %12, i32 noundef %conv25) #7, !dbg !796
  br label %return, !dbg !797

return:                                           ; preds = %if.end15, %if.then20, %if.then1
  ret ptr %data, !dbg !798
}

declare !dbg !799 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare !dbg !803 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mro_get_from_name(ptr noundef %name) local_unnamed_addr #0 !dbg !806 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !810, metadata !DIExpression()), !dbg !812
  %0 = load ptr, ptr @PL_registered_mros, align 8, !dbg !813
  %call = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef %name, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !814
  call void @llvm.dbg.value(metadata ptr %call, metadata !811, metadata !DIExpression()), !dbg !812
  %tobool.not = icmp eq ptr %call, null, !dbg !815
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !817

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %call, align 8, !dbg !818
  %2 = load ptr, ptr %1, align 8, !dbg !818
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %2, i64 0, i32 4, !dbg !818
  %3 = load i64, ptr %xuv_u, align 8, !dbg !818
  %4 = inttoptr i64 %3 to ptr, !dbg !818
  br label %cleanup, !dbg !819

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi ptr [ %4, %if.end ], [ null, %entry ], !dbg !812
  ret ptr %retval.0, !dbg !820
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_register(ptr noundef %mro) local_unnamed_addr #0 !dbg !821 {
entry:
  call void @llvm.dbg.value(metadata ptr %mro, metadata !825, metadata !DIExpression()), !dbg !827
  %0 = ptrtoint ptr %mro to i64, !dbg !828
  %call = tail call ptr @Perl_newSVuv(i64 noundef %0) #7, !dbg !828
  call void @llvm.dbg.value(metadata ptr %call, metadata !826, metadata !DIExpression()), !dbg !827
  %1 = load ptr, ptr @PL_registered_mros, align 8, !dbg !829
  %name = getelementptr inbounds %struct.mro_alg, ptr %mro, i64 0, i32 1, !dbg !831
  %2 = load ptr, ptr %name, align 8, !dbg !831
  %length = getelementptr inbounds %struct.mro_alg, ptr %mro, i64 0, i32 2, !dbg !832
  %3 = load i16, ptr %length, align 8, !dbg !832
  %conv = zext i16 %3 to i64, !dbg !833
  %kflags = getelementptr inbounds %struct.mro_alg, ptr %mro, i64 0, i32 3, !dbg !834
  %4 = load i16, ptr %kflags, align 2, !dbg !834
  %conv1 = zext i16 %4 to i32, !dbg !835
  %hash = getelementptr inbounds %struct.mro_alg, ptr %mro, i64 0, i32 4, !dbg !836
  %5 = load i32, ptr %hash, align 4, !dbg !836
  %call2 = tail call ptr @Perl_hv_common(ptr noundef %1, ptr noundef null, ptr noundef %2, i64 noundef %conv, i32 noundef %conv1, i32 noundef 4, ptr noundef %call, i32 noundef %5) #7, !dbg !837
  %tobool.not = icmp eq ptr %call2, null, !dbg !837
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !838

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call, metadata !839, metadata !DIExpression()) #7, !dbg !846
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !849
  %6 = load i32, ptr %sv_refcnt.i, align 8, !dbg !849
  call void @llvm.dbg.value(metadata i32 %6, metadata !845, metadata !DIExpression()) #7, !dbg !846
  %cmp.i = icmp ugt i32 %6, 1, !dbg !850
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !852

if.then.i:                                        ; preds = %if.then
  %sub.i = add i32 %6, -1, !dbg !853
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !854
  br label %S_SvREFCNT_dec_NN.exit, !dbg !855

if.else.i:                                        ; preds = %if.then
  tail call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %6) #7, !dbg !856
  br label %S_SvREFCNT_dec_NN.exit

S_SvREFCNT_dec_NN.exit:                           ; preds = %if.then.i, %if.else.i
  %7 = load i16, ptr %length, align 8, !dbg !857
  %conv4 = zext i16 %7 to i32, !dbg !858
  %8 = load ptr, ptr %name, align 8, !dbg !859
  %9 = load i16, ptr %kflags, align 2, !dbg !860
  %conv7 = zext i16 %9 to i32, !dbg !861
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %conv4, ptr noundef %8, i32 noundef %conv7) #7, !dbg !862
  br label %if.end, !dbg !863

if.end:                                           ; preds = %S_SvREFCNT_dec_NN.exit, %entry
  ret void, !dbg !864
}

declare !dbg !865 ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mro_meta_init(ptr nocapture noundef readonly %stash) local_unnamed_addr #0 !dbg !869 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !873, metadata !DIExpression()), !dbg !875
  %call = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !876
  call void @llvm.dbg.value(metadata ptr %call, metadata !874, metadata !DIExpression()), !dbg !875
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !877
  %0 = load ptr, ptr %sv_u, align 8, !dbg !877
  %1 = load ptr, ptr %stash, align 8, !dbg !877
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %1, i64 0, i32 3, !dbg !877
  %2 = load i64, ptr %xhv_max, align 8, !dbg !877
  %add = add i64 %2, 1, !dbg !877
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %add, !dbg !877
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 5, !dbg !878
  store ptr %call, ptr %xhv_mro_meta, align 8, !dbg !879
  %cache_gen = getelementptr inbounds %struct.mro_meta, ptr %call, i64 0, i32 3, !dbg !880
  store i32 1, ptr %cache_gen, align 8, !dbg !881
  %pkg_gen = getelementptr inbounds %struct.mro_meta, ptr %call, i64 0, i32 4, !dbg !882
  store i32 1, ptr %pkg_gen, align 4, !dbg !883
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %call, i64 0, i32 5, !dbg !884
  store ptr @dfs_alg, ptr %mro_which, align 8, !dbg !885
  ret ptr %call, !dbg !886
}

declare !dbg !887 ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mro_get_linear_isa(ptr noundef %stash) local_unnamed_addr #0 !dbg !890 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !894, metadata !DIExpression()), !dbg !917
  %sv_flags = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 2, !dbg !918
  %0 = load i32, ptr %sv_flags, align 4, !dbg !918
  %and = and i32 %0, 33554432, !dbg !918
  %tobool.not = icmp eq i32 %and, 0, !dbg !918
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !920

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #7, !dbg !921
  br label %if.end, !dbg !921

if.end:                                           ; preds = %if.then, %entry
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !922
  %1 = load ptr, ptr %sv_u, align 8, !dbg !922
  %2 = load ptr, ptr %stash, align 8, !dbg !922
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %2, i64 0, i32 3, !dbg !922
  %3 = load i64, ptr %xhv_max, align 8, !dbg !922
  %add = add i64 %3, 1, !dbg !922
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %add, !dbg !922
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 5, !dbg !922
  %4 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !922
  %tobool1.not = icmp eq ptr %4, null, !dbg !922
  br i1 %tobool1.not, label %cond.end.thread, label %cond.end, !dbg !922

cond.end.thread:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %stash, metadata !873, metadata !DIExpression()) #7, !dbg !923
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !925
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !874, metadata !DIExpression()) #7, !dbg !923
  %5 = load ptr, ptr %sv_u, align 8, !dbg !926
  %6 = load ptr, ptr %stash, align 8, !dbg !926
  %xhv_max.i = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3, !dbg !926
  %7 = load i64, ptr %xhv_max.i, align 8, !dbg !926
  %add.i = add i64 %7, 1, !dbg !926
  %arrayidx.i = getelementptr inbounds ptr, ptr %5, i64 %add.i, !dbg !926
  %xhv_mro_meta.i = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i, i64 0, i32 5, !dbg !927
  store ptr %call.i, ptr %xhv_mro_meta.i, align 8, !dbg !928
  %cache_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 3, !dbg !929
  store i32 1, ptr %cache_gen.i, align 8, !dbg !930
  %pkg_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 4, !dbg !931
  store i32 1, ptr %pkg_gen.i, align 4, !dbg !932
  %mro_which.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !933
  store ptr @dfs_alg, ptr %mro_which.i, align 8, !dbg !934
  call void @llvm.dbg.value(metadata ptr %4, metadata !895, metadata !DIExpression()), !dbg !917
  %mro_which660 = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !935
  br label %if.end10, !dbg !937

cond.end:                                         ; preds = %if.end
  %mro_which.phi.trans.insert = getelementptr inbounds %struct.mro_meta, ptr %4, i64 0, i32 5
  %.pre = load ptr, ptr %mro_which.phi.trans.insert, align 8, !dbg !935
  call void @llvm.dbg.value(metadata ptr %4, metadata !895, metadata !DIExpression()), !dbg !917
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %4, i64 0, i32 5, !dbg !935
  %tobool8.not = icmp eq ptr %.pre, null, !dbg !938
  br i1 %tobool8.not, label %if.then9, label %if.end10, !dbg !937

if.then9:                                         ; preds = %cond.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #7, !dbg !939
  %.pre656 = load ptr, ptr %mro_which, align 8, !dbg !940
  br label %if.end10, !dbg !939

if.end10:                                         ; preds = %cond.end.thread, %if.then9, %cond.end
  %mro_which663 = phi ptr [ %mro_which, %if.then9 ], [ %mro_which, %cond.end ], [ %mro_which660, %cond.end.thread ]
  %cond662 = phi ptr [ %4, %if.then9 ], [ %4, %cond.end ], [ %call.i, %cond.end.thread ]
  %8 = phi ptr [ %.pre656, %if.then9 ], [ %.pre, %cond.end ], [ @dfs_alg, %cond.end.thread ], !dbg !940
  %9 = load ptr, ptr %8, align 8, !dbg !941
  %call12 = tail call ptr %9(ptr noundef nonnull %stash, i32 noundef 0) #7, !dbg !942
  call void @llvm.dbg.value(metadata ptr %call12, metadata !896, metadata !DIExpression()), !dbg !917
  %10 = load ptr, ptr %mro_which663, align 8, !dbg !943
  %cmp.not = icmp eq ptr %10, @dfs_alg, !dbg !944
  br i1 %cmp.not, label %if.end355, label %if.then14, !dbg !945

if.then14:                                        ; preds = %if.end10
  %11 = load i32, ptr %sv_flags, align 4, !dbg !946
  %and16 = and i32 %11, 33554432, !dbg !946
  %tobool17.not = icmp eq i32 %and16, 0, !dbg !946
  br i1 %tobool17.not, label %if.end355, label %land.lhs.true, !dbg !946

land.lhs.true:                                    ; preds = %if.then14
  %12 = load ptr, ptr %sv_u, align 8, !dbg !946
  %13 = load ptr, ptr %stash, align 8, !dbg !946
  %xhv_max20 = getelementptr inbounds %struct.xpvhv, ptr %13, i64 0, i32 3, !dbg !946
  %14 = load i64, ptr %xhv_max20, align 8, !dbg !946
  %add21 = add i64 %14, 1, !dbg !946
  %arrayidx22 = getelementptr inbounds ptr, ptr %12, i64 %add21, !dbg !946
  %15 = load ptr, ptr %arrayidx22, align 8, !dbg !946
  %tobool23.not = icmp eq ptr %15, null, !dbg !946
  br i1 %tobool23.not, label %if.end355, label %land.lhs.true24, !dbg !946

land.lhs.true24:                                  ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx22, i64 0, i32 4, !dbg !946
  %16 = load i32, ptr %xhv_name_count, align 4, !dbg !946
  %cmp30.not = icmp eq i32 %16, -1, !dbg !946
  br i1 %cmp30.not, label %land.lhs.true98, label %cond.true162, !dbg !947

land.lhs.true98:                                  ; preds = %land.lhs.true24
  %xhv_name_count104 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx22, i64 0, i32 4, !dbg !948
  %17 = load i32, ptr %xhv_name_count104, align 4, !dbg !948
  %tobool105.not = icmp eq i32 %17, 0, !dbg !948
  br i1 %tobool105.not, label %cond.end326, label %cond.true106, !dbg !949

cond.true106:                                     ; preds = %land.lhs.true98
  %18 = load ptr, ptr %15, align 8, !dbg !948
  %tobool113.not = icmp eq ptr %18, null, !dbg !948
  br i1 %tobool113.not, label %if.end355, label %cond.true162, !dbg !948

cond.true162:                                     ; preds = %land.lhs.true24, %cond.true106
  %19 = phi i32 [ %17, %cond.true106 ], [ %16, %land.lhs.true24 ]
  %cmp169 = icmp sgt i32 %19, 0, !dbg !950
  br i1 %cmp169, label %cond.true170, label %cond.false179, !dbg !950

cond.true170:                                     ; preds = %cond.true162
  %20 = load ptr, ptr %15, align 8, !dbg !950
  %tobool178.not = icmp eq ptr %20, null, !dbg !950
  br i1 %tobool178.not, label %cond.true303, label %cond.end326, !dbg !950

cond.false179:                                    ; preds = %cond.true162
  %cmp186 = icmp slt i32 %19, -1, !dbg !950
  br i1 %cmp186, label %cond.true187, label %cond.false196, !dbg !950

cond.true187:                                     ; preds = %cond.false179
  %arrayidx194 = getelementptr inbounds ptr, ptr %15, i64 1, !dbg !950
  %21 = load ptr, ptr %arrayidx194, align 8, !dbg !950
  %tobool195.not = icmp eq ptr %21, null, !dbg !950
  br i1 %tobool195.not, label %cond.true303, label %cond.end326, !dbg !950

cond.false196:                                    ; preds = %cond.false179
  %cmp203 = icmp eq i32 %19, -1, !dbg !950
  br i1 %cmp203, label %cond.true303, label %cond.end326, !dbg !950

cond.true303:                                     ; preds = %cond.true170, %cond.true187, %cond.false196
  %22 = load ptr, ptr %15, align 8, !dbg !950
  br label %cond.end326, !dbg !950

cond.end326:                                      ; preds = %land.lhs.true98, %cond.true187, %cond.true170, %cond.false196, %cond.true303
  %cond323 = phi ptr [ %22, %cond.true303 ], [ %15, %cond.false196 ], [ %20, %cond.true170 ], [ %21, %cond.true187 ], [ %15, %land.lhs.true98 ], !dbg !950
  %call324 = tail call ptr @Perl_newSVhek(ptr noundef %cond323) #7, !dbg !950
  call void @llvm.dbg.value(metadata ptr %call324, metadata !897, metadata !DIExpression()), !dbg !951
  %tobool328.not = icmp eq ptr %call324, null, !dbg !952
  br i1 %tobool328.not, label %if.end355, label %land.lhs.true329, !dbg !953

land.lhs.true329:                                 ; preds = %cond.end326
  %23 = load ptr, ptr %call12, align 8, !dbg !954
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %23, i64 0, i32 2, !dbg !954
  %24 = load i64, ptr %xav_fill, align 8, !dbg !954
  %cmp331 = icmp eq i64 %24, -1, !dbg !955
  br i1 %cmp331, label %if.then336, label %lor.lhs.false332, !dbg !956

lor.lhs.false332:                                 ; preds = %land.lhs.true329
  %sv_u333 = getelementptr inbounds %struct.av, ptr %call12, i64 0, i32 3, !dbg !957
  %25 = load ptr, ptr %sv_u333, align 8, !dbg !957
  %26 = load ptr, ptr %25, align 8, !dbg !957
  %call334 = tail call i32 @Perl_sv_eq_flags(ptr noundef %26, ptr noundef nonnull %call324, i32 noundef 2) #7, !dbg !957
  %tobool335.not = icmp eq i32 %call334, 0, !dbg !957
  br i1 %tobool335.not, label %lor.lhs.false332.if.then336_crit_edge, label %if.then.i, !dbg !958

lor.lhs.false332.if.then336_crit_edge:            ; preds = %lor.lhs.false332
  %.pre657 = load ptr, ptr %call12, align 8, !dbg !959
  %xav_fill339.phi.trans.insert = getelementptr inbounds %struct.xpvav, ptr %.pre657, i64 0, i32 2
  %.pre658 = load i64, ptr %xav_fill339.phi.trans.insert, align 8, !dbg !959
  br label %if.then336, !dbg !958

if.then.i:                                        ; preds = %lor.lhs.false332
  call void @llvm.dbg.value(metadata ptr %call324, metadata !960, metadata !DIExpression()) #7, !dbg !966
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call324, i64 0, i32 1, !dbg !968
  %27 = load i32, ptr %sv_refcnt.i, align 8, !dbg !968
  call void @llvm.dbg.value(metadata i32 %27, metadata !963, metadata !DIExpression()) #7, !dbg !969
  %cmp1.i = icmp ugt i32 %27, 1, !dbg !970
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !972

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %27, -1, !dbg !973
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !974
  br label %if.end355, !dbg !975

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %call324, i32 noundef %27) #7, !dbg !976
  br label %if.end355

if.then336:                                       ; preds = %lor.lhs.false332.if.then336_crit_edge, %land.lhs.true329
  %28 = phi i64 [ %.pre658, %lor.lhs.false332.if.then336_crit_edge ], [ -1, %land.lhs.true329 ], !dbg !959
  call void @llvm.dbg.value(metadata ptr %call12, metadata !900, metadata !DIExpression()), !dbg !977
  %sv_u337 = getelementptr inbounds %struct.av, ptr %call12, i64 0, i32 3, !dbg !978
  %29 = load ptr, ptr %sv_u337, align 8, !dbg !978
  call void @llvm.dbg.value(metadata ptr %29, metadata !905, metadata !DIExpression()), !dbg !977
  %add.ptr = getelementptr inbounds ptr, ptr %29, i64 %28, !dbg !979
  %add.ptr340 = getelementptr inbounds ptr, ptr %add.ptr, i64 1, !dbg !980
  call void @llvm.dbg.value(metadata ptr %add.ptr340, metadata !906, metadata !DIExpression()), !dbg !977
  %call341 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7, !dbg !981
  %call342 = tail call ptr @Perl_sv_2mortal(ptr noundef %call341) #7, !dbg !981
  call void @llvm.dbg.value(metadata ptr %call342, metadata !896, metadata !DIExpression()), !dbg !917
  %30 = load ptr, ptr %call12, align 8, !dbg !982
  %xav_fill344 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2, !dbg !982
  %31 = load i64, ptr %xav_fill344, align 8, !dbg !982
  %add345 = add nsw i64 %31, 1, !dbg !982
  %32 = load ptr, ptr %call342, align 8, !dbg !982
  %xav_fill347 = getelementptr inbounds %struct.xpvav, ptr %32, i64 0, i32 2, !dbg !982
  store i64 %add345, ptr %xav_fill347, align 8, !dbg !982
  tail call void @Perl_av_extend(ptr noundef nonnull %call342, i64 noundef %add345) #7, !dbg !982
  %sv_u348 = getelementptr inbounds %struct.av, ptr %call342, i64 0, i32 3, !dbg !983
  %33 = load ptr, ptr %sv_u348, align 8, !dbg !983
  store ptr %call324, ptr %33, align 8, !dbg !984
  call void @llvm.dbg.value(metadata ptr undef, metadata !904, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !977
  %cmp351651 = icmp ult ptr %29, %add.ptr340, !dbg !985
  br i1 %cmp351651, label %while.body.preheader, label %if.end355, !dbg !986

while.body.preheader:                             ; preds = %if.then336
  %34 = load ptr, ptr %sv_u348, align 8, !dbg !987
  call void @llvm.dbg.value(metadata ptr %34, metadata !904, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !977
  br label %while.body, !dbg !986

while.body:                                       ; preds = %while.body.preheader, %S_SvREFCNT_inc.exit
  %.pn653 = phi ptr [ %svp.0, %S_SvREFCNT_inc.exit ], [ %34, %while.body.preheader ]
  %ovp.0652 = phi ptr [ %incdec.ptr, %S_SvREFCNT_inc.exit ], [ %29, %while.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %.pn653, metadata !904, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !977
  call void @llvm.dbg.value(metadata ptr %ovp.0652, metadata !905, metadata !DIExpression()), !dbg !977
  %svp.0 = getelementptr inbounds ptr, ptr %.pn653, i64 1, !dbg !977
  call void @llvm.dbg.value(metadata ptr %svp.0, metadata !904, metadata !DIExpression()), !dbg !977
  %incdec.ptr = getelementptr inbounds ptr, ptr %ovp.0652, i64 1, !dbg !988
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !905, metadata !DIExpression()), !dbg !977
  %35 = load ptr, ptr %ovp.0652, align 8, !dbg !988
  call void @llvm.dbg.value(metadata ptr %35, metadata !989, metadata !DIExpression()), !dbg !994
  %cmp.not.i638 = icmp eq ptr %35, null, !dbg !996
  br i1 %cmp.not.i638, label %S_SvREFCNT_inc.exit, label %if.then.i640, !dbg !998

if.then.i640:                                     ; preds = %while.body
  %sv_refcnt.i639 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 1, !dbg !999
  %36 = load i32, ptr %sv_refcnt.i639, align 8, !dbg !1000
  %inc.i = add i32 %36, 1, !dbg !1000
  store i32 %inc.i, ptr %sv_refcnt.i639, align 8, !dbg !1000
  br label %S_SvREFCNT_inc.exit, !dbg !999

S_SvREFCNT_inc.exit:                              ; preds = %while.body, %if.then.i640
  call void @llvm.dbg.value(metadata ptr undef, metadata !904, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !977
  store ptr %35, ptr %svp.0, align 8, !dbg !1001
  call void @llvm.dbg.value(metadata ptr %svp.0, metadata !904, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !977
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !905, metadata !DIExpression()), !dbg !977
  %cmp351 = icmp ult ptr %ovp.0652, %add.ptr, !dbg !985
  br i1 %cmp351, label %while.body, label %if.end355, !dbg !986, !llvm.loop !1002

if.end355:                                        ; preds = %S_SvREFCNT_inc.exit, %land.lhs.true, %if.then336, %if.then14, %cond.true106, %if.else.i, %if.then4.i, %cond.end326, %if.end10
  %isa.1 = phi ptr [ %call12, %if.end10 ], [ %call12, %cond.end326 ], [ %call12, %if.then4.i ], [ %call12, %if.else.i ], [ %call12, %cond.true106 ], [ %call12, %if.then14 ], [ %call342, %if.then336 ], [ %call12, %land.lhs.true ], [ %call342, %S_SvREFCNT_inc.exit ], !dbg !917
  call void @llvm.dbg.value(metadata ptr %isa.1, metadata !896, metadata !DIExpression()), !dbg !917
  %isa356 = getelementptr inbounds %struct.mro_meta, ptr %cond662, i64 0, i32 6, !dbg !1005
  %37 = load ptr, ptr %isa356, align 8, !dbg !1005
  %tobool357.not = icmp eq ptr %37, null, !dbg !1006
  br i1 %tobool357.not, label %if.then358, label %if.end493, !dbg !1007

if.then358:                                       ; preds = %if.end355
  %call359 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !1008
  call void @llvm.dbg.value(metadata ptr %call359, metadata !909, metadata !DIExpression()), !dbg !1009
  %sv_u361 = getelementptr inbounds %struct.av, ptr %isa.1, i64 0, i32 3, !dbg !1010
  %38 = load ptr, ptr %sv_u361, align 8, !dbg !1010
  call void @llvm.dbg.value(metadata ptr %38, metadata !912, metadata !DIExpression()), !dbg !1009
  %39 = load ptr, ptr %isa.1, align 8, !dbg !1011
  %xav_fill363 = getelementptr inbounds %struct.xpvav, ptr %39, i64 0, i32 2, !dbg !1011
  %40 = load i64, ptr %xav_fill363, align 8, !dbg !1011
  %add.ptr364 = getelementptr inbounds ptr, ptr %38, i64 %40, !dbg !1012
  %add.ptr365 = getelementptr inbounds ptr, ptr %add.ptr364, i64 1, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %add.ptr365, metadata !913, metadata !DIExpression()), !dbg !1009
  %41 = load i32, ptr %sv_flags, align 4, !dbg !1014
  %and367 = and i32 %41, 33554432, !dbg !1014
  %tobool368.not = icmp eq i32 %and367, 0, !dbg !1014
  br i1 %tobool368.not, label %if.end474, label %land.lhs.true369, !dbg !1014

land.lhs.true369:                                 ; preds = %if.then358
  %42 = load ptr, ptr %sv_u, align 8, !dbg !1014
  %43 = load ptr, ptr %stash, align 8, !dbg !1014
  %xhv_max372 = getelementptr inbounds %struct.xpvhv, ptr %43, i64 0, i32 3, !dbg !1014
  %44 = load i64, ptr %xhv_max372, align 8, !dbg !1014
  %add373 = add i64 %44, 1, !dbg !1014
  %arrayidx374 = getelementptr inbounds ptr, ptr %42, i64 %add373, !dbg !1014
  %45 = load ptr, ptr %arrayidx374, align 8, !dbg !1014
  %tobool376.not = icmp eq ptr %45, null, !dbg !1014
  br i1 %tobool376.not, label %if.end474, label %cond.true377, !dbg !1014

cond.true377:                                     ; preds = %land.lhs.true369
  %xhv_name_count383 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx374, i64 0, i32 4, !dbg !1014
  %46 = load i32, ptr %xhv_name_count383, align 4, !dbg !1014
  %cmp384 = icmp sgt i32 %46, 0, !dbg !1014
  br i1 %cmp384, label %cond.end432, label %cond.false393, !dbg !1014

cond.false393:                                    ; preds = %cond.true377
  %cmp400 = icmp slt i32 %46, -1, !dbg !1014
  br i1 %cmp400, label %cond.true401, label %cond.false409, !dbg !1014

cond.true401:                                     ; preds = %cond.false393
  %arrayidx408 = getelementptr inbounds ptr, ptr %45, i64 1, !dbg !1014
  br label %cond.end432, !dbg !1014

cond.false409:                                    ; preds = %cond.false393
  %cmp416 = icmp eq i32 %46, -1, !dbg !1014
  br i1 %cmp416, label %cond.true447, label %if.end474, !dbg !1014

cond.end432:                                      ; preds = %cond.true377, %cond.true401
  %cond433.in = phi ptr [ %arrayidx408, %cond.true401 ], [ %45, %cond.true377 ]
  %cond433 = load ptr, ptr %cond433.in, align 8, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %cond433, metadata !914, metadata !DIExpression()), !dbg !1009
  %tobool434.not = icmp eq ptr %cond433, null, !dbg !1015
  br i1 %tobool434.not, label %cond.true447, label %if.end474, !dbg !1017

cond.true447:                                     ; preds = %cond.false409, %cond.end432
  %xhv_name_count453 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx374, i64 0, i32 4, !dbg !1018
  %47 = load i32, ptr %xhv_name_count453, align 4, !dbg !1018
  %tobool454.not = icmp eq i32 %47, 0, !dbg !1018
  br i1 %tobool454.not, label %if.end474, label %cond.true455, !dbg !1018

cond.true455:                                     ; preds = %cond.true447
  %48 = load ptr, ptr %45, align 8, !dbg !1018
  br label %if.end474, !dbg !1018

if.end474:                                        ; preds = %land.lhs.true369, %cond.false409, %if.then358, %cond.true455, %cond.true447, %cond.end432
  %canon_name.0 = phi ptr [ %cond433, %cond.end432 ], [ %48, %cond.true455 ], [ %45, %cond.true447 ], [ null, %if.then358 ], [ %45, %cond.false409 ], [ null, %land.lhs.true369 ], !dbg !1009
  call void @llvm.dbg.value(metadata ptr %canon_name.0, metadata !914, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr %38, metadata !912, metadata !DIExpression()), !dbg !1009
  %cmp476654 = icmp ult ptr %38, %add.ptr365, !dbg !1019
  br i1 %cmp476654, label %while.body477, label %while.end480, !dbg !1020

while.body477:                                    ; preds = %if.end474, %while.body477
  %svp360.0655 = phi ptr [ %incdec.ptr478, %while.body477 ], [ %38, %if.end474 ]
  call void @llvm.dbg.value(metadata ptr %svp360.0655, metadata !912, metadata !DIExpression()), !dbg !1009
  %incdec.ptr478 = getelementptr inbounds ptr, ptr %svp360.0655, i64 1, !dbg !1021
  call void @llvm.dbg.value(metadata ptr %incdec.ptr478, metadata !912, metadata !DIExpression()), !dbg !1009
  %49 = load ptr, ptr %svp360.0655, align 8, !dbg !1021
  %call479 = tail call ptr @Perl_hv_common(ptr noundef %call359, ptr noundef %49, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7, !dbg !1021
  %cmp476 = icmp ult ptr %svp360.0655, %add.ptr364, !dbg !1019
  br i1 %cmp476, label %while.body477, label %while.end480, !dbg !1020, !llvm.loop !1023

while.end480:                                     ; preds = %while.body477, %if.end474
  %hek_key481 = getelementptr inbounds %struct.hek, ptr %canon_name.0, i64 0, i32 2, !dbg !1025
  %hek_len = getelementptr inbounds %struct.hek, ptr %canon_name.0, i64 0, i32 1, !dbg !1025
  %50 = load i32, ptr %hek_len, align 4, !dbg !1025
  %conv = sext i32 %50 to i64, !dbg !1025
  %add.ptr486 = getelementptr inbounds i8, ptr %hek_key481, i64 %conv, !dbg !1025
  %add.ptr487 = getelementptr inbounds i8, ptr %add.ptr486, i64 1, !dbg !1025
  %51 = load i8, ptr %add.ptr487, align 1, !dbg !1025
  %conv488 = zext i8 %51 to i32, !dbg !1025
  %52 = load i32, ptr %canon_name.0, align 4, !dbg !1025
  %call489 = tail call ptr @Perl_hv_common(ptr noundef %call359, ptr noundef null, ptr noundef nonnull %hek_key481, i64 noundef %conv, i32 noundef %conv488, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef %52) #7, !dbg !1025
  %call490 = tail call ptr @Perl_hv_common_key_len(ptr noundef %call359, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7, !dbg !1026
  %sv_flags491 = getelementptr inbounds %struct.hv, ptr %call359, i64 0, i32 2, !dbg !1027
  %53 = load i32, ptr %sv_flags491, align 4, !dbg !1027
  %or = or i32 %53, 134283264, !dbg !1027
  store i32 %or, ptr %sv_flags491, align 4, !dbg !1027
  store ptr %call359, ptr %isa356, align 8, !dbg !1028
  br label %if.end493, !dbg !1029

if.end493:                                        ; preds = %while.end480, %if.end355
  ret ptr %isa.1, !dbg !1030
}

declare !dbg !1031 ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

declare !dbg !1035 i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1038 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare !dbg !1041 void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1044 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_isa_changed_in(ptr noundef %stash) local_unnamed_addr #0 !dbg !1048 {
entry:
  %revstash = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %stash, metadata !1052, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata ptr null, metadata !1060, metadata !DIExpression()), !dbg !1085
  %sv_flags = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 2, !dbg !1086
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1086
  %and = and i32 %0, 33554432, !dbg !1086
  %tobool.not = icmp eq i32 %and, 0, !dbg !1086
  br i1 %tobool.not, label %if.then, label %land.lhs.true, !dbg !1086

land.lhs.true:                                    ; preds = %entry
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !1086
  %1 = load ptr, ptr %sv_u, align 8, !dbg !1086
  %2 = load ptr, ptr %stash, align 8, !dbg !1086
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %2, i64 0, i32 3, !dbg !1086
  %3 = load i64, ptr %xhv_max, align 8, !dbg !1086
  %add = add i64 %3, 1, !dbg !1086
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %add, !dbg !1086
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1086
  %tobool1.not = icmp eq ptr %4, null, !dbg !1086
  br i1 %tobool1.not, label %if.then, label %cond.true, !dbg !1086

cond.true:                                        ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !1086
  %5 = load i32, ptr %xhv_name_count, align 4, !dbg !1086
  %cmp = icmp sgt i32 %5, 0, !dbg !1086
  br i1 %cmp, label %cond.true7, label %cond.false, !dbg !1086

cond.true7:                                       ; preds = %cond.true
  %6 = load ptr, ptr %4, align 8, !dbg !1086
  br label %land.lhs.true64, !dbg !1086

cond.false:                                       ; preds = %cond.true
  %cmp21 = icmp slt i32 %5, -1, !dbg !1086
  br i1 %cmp21, label %cond.true22, label %cond.false30, !dbg !1086

cond.true22:                                      ; preds = %cond.false
  %arrayidx29 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !1086
  %7 = load ptr, ptr %arrayidx29, align 8, !dbg !1086
  br label %land.lhs.true64, !dbg !1086

cond.false30:                                     ; preds = %cond.false
  %cmp37 = icmp eq i32 %5, -1, !dbg !1086
  %spec.select = select i1 %cmp37, ptr null, ptr %4, !dbg !1086
  br label %land.lhs.true64, !dbg !1086

land.lhs.true64:                                  ; preds = %cond.false30, %cond.true7, %cond.true22
  %cond52.ph.ph = phi ptr [ %6, %cond.true7 ], [ %7, %cond.true22 ], [ %spec.select, %cond.false30 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1061, metadata !DIExpression()), !dbg !1085
  %xhv_name_count70 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !1087
  %8 = load i32, ptr %xhv_name_count70, align 4, !dbg !1087
  %cmp71.not = icmp eq i32 %8, -1, !dbg !1087
  br i1 %cmp71.not, label %land.lhs.true140, label %cond.true72, !dbg !1087

cond.true72:                                      ; preds = %land.lhs.true64
  %cmp79 = icmp sgt i32 %8, 0, !dbg !1087
  br i1 %cmp79, label %cond.end124.sink.split, label %cond.false88, !dbg !1087

cond.false88:                                     ; preds = %cond.true72
  %cmp95 = icmp slt i32 %8, -1, !dbg !1087
  br i1 %cmp95, label %cond.true96, label %cond.end124, !dbg !1087

cond.true96:                                      ; preds = %cond.false88
  %arrayidx103 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !1087
  br label %cond.end124.sink.split, !dbg !1087

cond.end124.sink.split:                           ; preds = %cond.true72, %cond.true96
  %arrayidx103.sink = phi ptr [ %arrayidx103, %cond.true96 ], [ %4, %cond.true72 ]
  %9 = load ptr, ptr %arrayidx103.sink, align 8, !dbg !1087
  br label %cond.end124, !dbg !1087

cond.end124:                                      ; preds = %cond.end124.sink.split, %cond.false88
  %cond125 = phi ptr [ %4, %cond.false88 ], [ %9, %cond.end124.sink.split ], !dbg !1087
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond125, i64 0, i32 2, !dbg !1087
  br label %land.lhs.true140, !dbg !1087

land.lhs.true140:                                 ; preds = %land.lhs.true64, %cond.end124
  %cond128.ph.ph = phi ptr [ %hek_key, %cond.end124 ], [ null, %land.lhs.true64 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1062, metadata !DIExpression()), !dbg !1085
  %xhv_name_count146 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !1088
  %10 = load i32, ptr %xhv_name_count146, align 4, !dbg !1088
  %cmp147.not = icmp eq i32 %10, -1, !dbg !1088
  br i1 %cmp147.not, label %cond.end203, label %cond.true148, !dbg !1088

cond.true148:                                     ; preds = %land.lhs.true140
  %cmp155 = icmp sgt i32 %10, 0, !dbg !1088
  br i1 %cmp155, label %cond.end200.sink.split, label %cond.false164, !dbg !1088

cond.false164:                                    ; preds = %cond.true148
  %cmp171 = icmp slt i32 %10, -1, !dbg !1088
  br i1 %cmp171, label %cond.true172, label %cond.end200, !dbg !1088

cond.true172:                                     ; preds = %cond.false164
  %arrayidx179 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !1088
  br label %cond.end200.sink.split, !dbg !1088

cond.end200.sink.split:                           ; preds = %cond.true148, %cond.true172
  %arrayidx179.sink = phi ptr [ %arrayidx179, %cond.true172 ], [ %4, %cond.true148 ]
  %11 = load ptr, ptr %arrayidx179.sink, align 8, !dbg !1088
  br label %cond.end200, !dbg !1088

cond.end200:                                      ; preds = %cond.end200.sink.split, %cond.false164
  %cond201 = phi ptr [ %4, %cond.false164 ], [ %11, %cond.end200.sink.split ], !dbg !1088
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond201, i64 0, i32 1, !dbg !1088
  %12 = load i32, ptr %hek_len, align 4, !dbg !1088
  br label %cond.end203, !dbg !1088

cond.end203:                                      ; preds = %land.lhs.true140, %cond.end200
  %cond204 = phi i32 [ %12, %cond.end200 ], [ 0, %land.lhs.true140 ], !dbg !1088
  %conv = sext i32 %cond204 to i64, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1063, metadata !DIExpression()), !dbg !1085
  %tobool205.not = icmp eq ptr %cond128.ph.ph, null, !dbg !1089
  br i1 %tobool205.not, label %if.then, label %if.end, !dbg !1091

if.then:                                          ; preds = %land.lhs.true, %entry, %cond.end203
  %conv859 = phi i64 [ %conv, %cond.end203 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  %cond204857 = phi i32 [ %cond204, %cond.end203 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  %cond52840844855 = phi ptr [ %cond52.ph.ph, %cond.end203 ], [ null, %entry ], [ null, %land.lhs.true ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #7, !dbg !1092
  %sv_u206.phi.trans.insert = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3
  %.pre = load ptr, ptr %sv_u206.phi.trans.insert, align 8, !dbg !1093
  %.pre882 = load ptr, ptr %stash, align 8, !dbg !1093
  %xhv_max208.phi.trans.insert = getelementptr inbounds %struct.xpvhv, ptr %.pre882, i64 0, i32 3
  %.pre883 = load i64, ptr %xhv_max208.phi.trans.insert, align 8, !dbg !1093
  %.pre885 = add i64 %.pre883, 1, !dbg !1093
  br label %if.end, !dbg !1092

if.end:                                           ; preds = %if.then, %cond.end203
  %add209.pre-phi = phi i64 [ %.pre885, %if.then ], [ %add, %cond.end203 ], !dbg !1093
  %13 = phi ptr [ %.pre, %if.then ], [ %1, %cond.end203 ], !dbg !1093
  %conv858 = phi i64 [ %conv859, %if.then ], [ %conv, %cond.end203 ]
  %cond204856 = phi i32 [ %cond204857, %if.then ], [ %cond204, %cond.end203 ]
  %cond52840844854 = phi ptr [ %cond52840844855, %if.then ], [ %cond52.ph.ph, %cond.end203 ]
  %cond128846852 = phi ptr [ null, %if.then ], [ %cond128.ph.ph, %cond.end203 ]
  %sv_u206 = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !1093
  %arrayidx210 = getelementptr inbounds ptr, ptr %13, i64 %add209.pre-phi, !dbg !1093
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx210, i64 0, i32 5, !dbg !1093
  %14 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !1093
  %tobool211.not = icmp eq ptr %14, null, !dbg !1093
  br i1 %tobool211.not, label %cond.false219, label %cond.end220, !dbg !1093

cond.false219:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %stash, metadata !873, metadata !DIExpression()) #7, !dbg !1094
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !874, metadata !DIExpression()) #7, !dbg !1094
  %15 = load ptr, ptr %sv_u206, align 8, !dbg !1097
  %16 = load ptr, ptr %stash, align 8, !dbg !1097
  %xhv_max.i = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3, !dbg !1097
  %17 = load i64, ptr %xhv_max.i, align 8, !dbg !1097
  %add.i = add i64 %17, 1, !dbg !1097
  %arrayidx.i = getelementptr inbounds ptr, ptr %15, i64 %add.i, !dbg !1097
  %xhv_mro_meta.i = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i, i64 0, i32 5, !dbg !1098
  store ptr %call.i, ptr %xhv_mro_meta.i, align 8, !dbg !1099
  %cache_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 3, !dbg !1100
  store i32 1, ptr %cache_gen.i, align 8, !dbg !1101
  %pkg_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 4, !dbg !1102
  store i32 1, ptr %pkg_gen.i, align 4, !dbg !1103
  %mro_which.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !1104
  store ptr @dfs_alg, ptr %mro_which.i, align 8, !dbg !1105
  br label %cond.end220, !dbg !1093

cond.end220:                                      ; preds = %if.end, %cond.false219
  %cond221 = phi ptr [ %call.i, %cond.false219 ], [ %14, %if.end ], !dbg !1093
  call void @llvm.dbg.value(metadata ptr %cond221, metadata !1059, metadata !DIExpression()), !dbg !1085
  %18 = load ptr, ptr %cond221, align 8, !dbg !1106
  %tobool222.not = icmp eq ptr %18, null, !dbg !1106
  br i1 %tobool222.not, label %if.else, label %if.then.i, !dbg !1108

if.then.i:                                        ; preds = %cond.end220
  call void @llvm.dbg.value(metadata ptr %18, metadata !960, metadata !DIExpression()) #7, !dbg !1109
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 1, !dbg !1112
  %19 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %19, metadata !963, metadata !DIExpression()) #7, !dbg !1113
  %cmp1.i = icmp ugt i32 %19, 1, !dbg !1114
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1115

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %19, -1, !dbg !1116
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1117
  br label %S_SvREFCNT_dec.exit, !dbg !1118

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %18, i32 noundef %19) #7, !dbg !1119
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.then4.i, %if.else.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cond221, i8 0, i64 16, i1 false), !dbg !1120
  br label %if.end232, !dbg !1120

if.else:                                          ; preds = %cond.end220
  %mro_linear_current226 = getelementptr inbounds %struct.mro_meta, ptr %cond221, i64 0, i32 1, !dbg !1121
  %20 = load ptr, ptr %mro_linear_current226, align 8, !dbg !1121
  %tobool227.not = icmp eq ptr %20, null, !dbg !1121
  br i1 %tobool227.not, label %if.end232, label %if.then.i799, !dbg !1106

if.then.i799:                                     ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %20, metadata !960, metadata !DIExpression()) #7, !dbg !1123
  %sv_refcnt.i797 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 1, !dbg !1126
  %21 = load i32, ptr %sv_refcnt.i797, align 8, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %21, metadata !963, metadata !DIExpression()) #7, !dbg !1127
  %cmp1.i798 = icmp ugt i32 %21, 1, !dbg !1128
  br i1 %cmp1.i798, label %if.then4.i801, label %if.else.i802, !dbg !1129

if.then4.i801:                                    ; preds = %if.then.i799
  %sub.i800 = add i32 %21, -1, !dbg !1130
  store i32 %sub.i800, ptr %sv_refcnt.i797, align 8, !dbg !1131
  br label %S_SvREFCNT_dec.exit803, !dbg !1132

if.else.i802:                                     ; preds = %if.then.i799
  tail call void @Perl_sv_free2(ptr noundef nonnull %20, i32 noundef %21) #7, !dbg !1133
  br label %S_SvREFCNT_dec.exit803

S_SvREFCNT_dec.exit803:                           ; preds = %if.then4.i801, %if.else.i802
  store ptr null, ptr %mro_linear_current226, align 8, !dbg !1134
  br label %if.end232, !dbg !1134

if.end232:                                        ; preds = %if.else, %S_SvREFCNT_dec.exit803, %S_SvREFCNT_dec.exit
  %isa233 = getelementptr inbounds %struct.mro_meta, ptr %cond221, i64 0, i32 6, !dbg !1135
  %22 = load ptr, ptr %isa233, align 8, !dbg !1135
  %tobool234.not = icmp eq ptr %22, null, !dbg !1137
  br i1 %tobool234.not, label %if.end239, label %if.then235, !dbg !1138

if.then235:                                       ; preds = %if.end232
  %call237 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %22) #7, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %call237, metadata !1060, metadata !DIExpression()), !dbg !1085
  store ptr null, ptr %isa233, align 8, !dbg !1141
  br label %if.end239, !dbg !1142

if.end239:                                        ; preds = %if.then235, %if.end232
  %isa.0 = phi ptr [ %call237, %if.then235 ], [ null, %if.end232 ], !dbg !1085
  call void @llvm.dbg.value(metadata ptr %isa.0, metadata !1060, metadata !DIExpression()), !dbg !1085
  %pkg_gen = getelementptr inbounds %struct.mro_meta, ptr %cond221, i64 0, i32 4, !dbg !1143
  %23 = load i32, ptr %pkg_gen, align 4, !dbg !1144
  %inc = add i32 %23, 1, !dbg !1144
  store i32 %inc, ptr %pkg_gen, align 4, !dbg !1144
  %24 = load ptr, ptr @PL_isarev, align 8, !dbg !1145
  %hek_key240 = getelementptr inbounds %struct.hek, ptr %cond52840844854, i64 0, i32 2, !dbg !1145
  %hek_len242 = getelementptr inbounds %struct.hek, ptr %cond52840844854, i64 0, i32 1, !dbg !1145
  %25 = load i32, ptr %hek_len242, align 4, !dbg !1145
  %conv243 = sext i32 %25 to i64, !dbg !1145
  %add.ptr = getelementptr inbounds i8, ptr %hek_key240, i64 %conv243, !dbg !1145
  %add.ptr247 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !1145
  %26 = load i8, ptr %add.ptr247, align 1, !dbg !1145
  %27 = and i8 %26, 1, !dbg !1145
  %and249 = zext i8 %27 to i32, !dbg !1145
  %28 = load i32, ptr %cond52840844854, align 4, !dbg !1145
  %call250 = tail call ptr @Perl_hv_common(ptr noundef %24, ptr noundef null, ptr noundef nonnull %hek_key240, i64 noundef %conv243, i32 noundef %and249, i32 noundef 32, ptr noundef null, i32 noundef %28) #7, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %call250, metadata !1056, metadata !DIExpression()), !dbg !1085
  %tobool251.not = icmp eq ptr %call250, null, !dbg !1146
  br i1 %tobool251.not, label %cond.end254, label %cond.true252, !dbg !1146

cond.true252:                                     ; preds = %if.end239
  %29 = load ptr, ptr %call250, align 8, !dbg !1147
  br label %cond.end254, !dbg !1146

cond.end254:                                      ; preds = %if.end239, %cond.true252
  %cond255 = phi ptr [ %29, %cond.true252 ], [ null, %if.end239 ], !dbg !1146
  call void @llvm.dbg.value(metadata ptr %cond255, metadata !1053, metadata !DIExpression()), !dbg !1085
  %cmp256 = icmp eq i32 %cond204856, 9, !dbg !1148
  br i1 %cmp256, label %land.lhs.true258, label %lor.lhs.false, !dbg !1150

land.lhs.true258:                                 ; preds = %cond.end254
  %call259 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond128846852, ptr noundef nonnull dereferenceable(10) @.str.4) #8, !dbg !1151
  %tobool260.not = icmp eq i32 %call259, 0, !dbg !1151
  br i1 %tobool260.not, label %if.then267, label %lor.lhs.false, !dbg !1152

lor.lhs.false:                                    ; preds = %land.lhs.true258, %cond.end254
  %tobool261.not = icmp eq ptr %cond255, null, !dbg !1153
  br i1 %tobool261.not, label %if.else269, label %land.lhs.true262, !dbg !1154

land.lhs.true262:                                 ; preds = %lor.lhs.false
  %call263 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %cond255, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #7, !dbg !1155
  %tobool264.not = icmp eq ptr %call263, null, !dbg !1155
  br i1 %tobool264.not, label %if.else269, label %if.then267, !dbg !1156

if.then267:                                       ; preds = %land.lhs.true262, %land.lhs.true258
  %30 = load i32, ptr @PL_sub_generation, align 4, !dbg !1157
  %inc268 = add i32 %30, 1, !dbg !1157
  store i32 %inc268, ptr @PL_sub_generation, align 4, !dbg !1157
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1085
  br label %if.end271, !dbg !1159

if.else269:                                       ; preds = %land.lhs.true262, %lor.lhs.false
  %cache_gen = getelementptr inbounds %struct.mro_meta, ptr %cond221, i64 0, i32 3, !dbg !1160
  %31 = load i32, ptr %cache_gen, align 8, !dbg !1162
  %inc270 = add i32 %31, 1, !dbg !1162
  store i32 %inc270, ptr %cache_gen, align 8, !dbg !1162
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1085
  br label %if.end271

if.end271:                                        ; preds = %if.else269, %if.then267
  %is_universal.0 = phi i1 [ true, %if.then267 ], [ false, %if.else269 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1058, metadata !DIExpression()), !dbg !1085
  %mro_nextmethod = getelementptr inbounds %struct.mro_meta, ptr %cond221, i64 0, i32 2, !dbg !1163
  %32 = load ptr, ptr %mro_nextmethod, align 8, !dbg !1163
  %tobool272.not = icmp eq ptr %32, null, !dbg !1165
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1166

if.then273:                                       ; preds = %if.end271
  tail call void @Perl_hv_clear(ptr noundef nonnull %32) #7, !dbg !1167
  br label %if.end275, !dbg !1167

if.end275:                                        ; preds = %if.then273, %if.end271
  %33 = load i32, ptr %sv_flags, align 4, !dbg !1168
  %or = or i32 %33, 268435456, !dbg !1168
  store i32 %or, ptr %sv_flags, align 4, !dbg !1168
  %34 = load ptr, ptr %sv_u206, align 8, !dbg !1169
  %35 = load ptr, ptr %stash, align 8, !dbg !1169
  %xhv_max279 = getelementptr inbounds %struct.xpvhv, ptr %35, i64 0, i32 3, !dbg !1169
  %36 = load i64, ptr %xhv_max279, align 8, !dbg !1169
  %add280 = add i64 %36, 1, !dbg !1169
  %arrayidx281 = getelementptr inbounds ptr, ptr %34, i64 %add280, !dbg !1169
  %xhv_aux_flags = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx281, i64 0, i32 9, !dbg !1170
  %37 = load i32, ptr %xhv_aux_flags, align 4, !dbg !1171
  %and282 = and i32 %37, -3, !dbg !1171
  store i32 %and282, ptr %xhv_aux_flags, align 4, !dbg !1171
  %38 = load i32, ptr %sv_flags, align 4, !dbg !1172
  %and284 = and i32 %38, 1048576, !dbg !1172
  %tobool285.not = icmp eq i32 %and284, 0, !dbg !1172
  br i1 %tobool285.not, label %if.then286, label %if.end288, !dbg !1174

if.then286:                                       ; preds = %if.end275
  %39 = load ptr, ptr %stash, align 8, !dbg !1175
  store ptr null, ptr %39, align 8, !dbg !1176
  br label %if.end288, !dbg !1175

if.end288:                                        ; preds = %if.then286, %if.end275
  %tobool289.not = icmp eq ptr %cond255, null, !dbg !1177
  br i1 %tobool289.not, label %if.end555, label %if.then290, !dbg !1178

if.then290:                                       ; preds = %if.end288
  call void @llvm.dbg.value(metadata ptr null, metadata !1065, metadata !DIExpression()), !dbg !1179
  %call291 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %cond255) #7, !dbg !1180
  %tobool292.not = icmp eq i32 %call291, 0, !dbg !1180
  br i1 %tobool292.not, label %if.end296, label %if.then293, !dbg !1182

if.then293:                                       ; preds = %if.then290
  %call294 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !1183
  %call295 = tail call ptr @Perl_sv_2mortal(ptr noundef %call294) #7, !dbg !1183
  call void @llvm.dbg.value(metadata ptr %call295, metadata !1065, metadata !DIExpression()), !dbg !1179
  br label %if.end296, !dbg !1185

if.end296:                                        ; preds = %if.then293, %if.then290
  %isa_hashes.0 = phi ptr [ %call295, %if.then293 ], [ null, %if.then290 ], !dbg !1179
  call void @llvm.dbg.value(metadata ptr %isa_hashes.0, metadata !1065, metadata !DIExpression()), !dbg !1179
  %call297866 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %cond255, i32 noundef 0) #7, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %call297866, metadata !1055, metadata !DIExpression()), !dbg !1085
  %tobool298.not867 = icmp eq ptr %call297866, null, !dbg !1187
  br i1 %tobool298.not867, label %while.end, label %while.body, !dbg !1187

while.body:                                       ; preds = %if.end296, %cleanup
  %call297868 = phi ptr [ %call297, %cleanup ], [ %call297866, %if.end296 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %revstash) #7, !dbg !1188
  %call299 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %call297868) #7, !dbg !1189
  %call300 = call ptr @Perl_gv_stashsv(ptr noundef %call299, i32 noundef 0) #7, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call300, metadata !1068, metadata !DIExpression()), !dbg !1190
  store ptr %call300, ptr %revstash, align 8, !dbg !1191
  %tobool301.not = icmp eq ptr %call300, null, !dbg !1192
  br i1 %tobool301.not, label %cleanup, label %if.end303, !dbg !1194, !llvm.loop !1195

if.end303:                                        ; preds = %while.body
  %sv_u304 = getelementptr inbounds %struct.hv, ptr %call300, i64 0, i32 3, !dbg !1197
  %40 = load ptr, ptr %sv_u304, align 8, !dbg !1197
  %41 = load ptr, ptr %call300, align 8, !dbg !1197
  %xhv_max306 = getelementptr inbounds %struct.xpvhv, ptr %41, i64 0, i32 3, !dbg !1197
  %42 = load i64, ptr %xhv_max306, align 8, !dbg !1197
  %add307 = add i64 %42, 1, !dbg !1197
  %arrayidx308 = getelementptr inbounds ptr, ptr %40, i64 %add307, !dbg !1197
  %xhv_mro_meta309 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx308, i64 0, i32 5, !dbg !1197
  %43 = load ptr, ptr %xhv_mro_meta309, align 8, !dbg !1197
  %tobool310.not = icmp eq ptr %43, null, !dbg !1197
  br i1 %tobool310.not, label %cond.false318, label %cond.end320, !dbg !1197

cond.false318:                                    ; preds = %if.end303
  call void @llvm.dbg.value(metadata ptr %call300, metadata !873, metadata !DIExpression()) #7, !dbg !1198
  %call.i804 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %call.i804, metadata !874, metadata !DIExpression()) #7, !dbg !1198
  %44 = load ptr, ptr %sv_u304, align 8, !dbg !1201
  %45 = load ptr, ptr %call300, align 8, !dbg !1201
  %xhv_max.i806 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3, !dbg !1201
  %46 = load i64, ptr %xhv_max.i806, align 8, !dbg !1201
  %add.i807 = add i64 %46, 1, !dbg !1201
  %arrayidx.i808 = getelementptr inbounds ptr, ptr %44, i64 %add.i807, !dbg !1201
  %xhv_mro_meta.i809 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i808, i64 0, i32 5, !dbg !1202
  store ptr %call.i804, ptr %xhv_mro_meta.i809, align 8, !dbg !1203
  %cache_gen.i810 = getelementptr inbounds %struct.mro_meta, ptr %call.i804, i64 0, i32 3, !dbg !1204
  store i32 1, ptr %cache_gen.i810, align 8, !dbg !1205
  %pkg_gen.i811 = getelementptr inbounds %struct.mro_meta, ptr %call.i804, i64 0, i32 4, !dbg !1206
  store i32 1, ptr %pkg_gen.i811, align 4, !dbg !1207
  %mro_which.i812 = getelementptr inbounds %struct.mro_meta, ptr %call.i804, i64 0, i32 5, !dbg !1208
  store ptr @dfs_alg, ptr %mro_which.i812, align 8, !dbg !1209
  br label %cond.end320, !dbg !1197

cond.end320:                                      ; preds = %if.end303, %cond.false318
  %cond321 = phi ptr [ %call.i804, %cond.false318 ], [ %43, %if.end303 ], !dbg !1197
  call void @llvm.dbg.value(metadata ptr %cond321, metadata !1070, metadata !DIExpression()), !dbg !1190
  %47 = load ptr, ptr %cond321, align 8, !dbg !1210
  %tobool323.not = icmp eq ptr %47, null, !dbg !1210
  br i1 %tobool323.not, label %if.else328, label %if.then.i816, !dbg !1212

if.then.i816:                                     ; preds = %cond.end320
  call void @llvm.dbg.value(metadata ptr %47, metadata !960, metadata !DIExpression()) #7, !dbg !1213
  %sv_refcnt.i814 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 1, !dbg !1216
  %48 = load i32, ptr %sv_refcnt.i814, align 8, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %48, metadata !963, metadata !DIExpression()) #7, !dbg !1217
  %cmp1.i815 = icmp ugt i32 %48, 1, !dbg !1218
  br i1 %cmp1.i815, label %if.then4.i818, label %if.else.i819, !dbg !1219

if.then4.i818:                                    ; preds = %if.then.i816
  %sub.i817 = add i32 %48, -1, !dbg !1220
  store i32 %sub.i817, ptr %sv_refcnt.i814, align 8, !dbg !1221
  br label %S_SvREFCNT_dec.exit820, !dbg !1222

if.else.i819:                                     ; preds = %if.then.i816
  call void @Perl_sv_free2(ptr noundef nonnull %47, i32 noundef %48) #7, !dbg !1223
  br label %S_SvREFCNT_dec.exit820

S_SvREFCNT_dec.exit820:                           ; preds = %if.then4.i818, %if.else.i819
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cond321, i8 0, i64 16, i1 false), !dbg !1224
  br label %if.end335, !dbg !1224

if.else328:                                       ; preds = %cond.end320
  %mro_linear_current329 = getelementptr inbounds %struct.mro_meta, ptr %cond321, i64 0, i32 1, !dbg !1225
  %49 = load ptr, ptr %mro_linear_current329, align 8, !dbg !1225
  %tobool330.not = icmp eq ptr %49, null, !dbg !1225
  br i1 %tobool330.not, label %if.end335, label %if.then.i824, !dbg !1210

if.then.i824:                                     ; preds = %if.else328
  call void @llvm.dbg.value(metadata ptr %49, metadata !960, metadata !DIExpression()) #7, !dbg !1227
  %sv_refcnt.i822 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1, !dbg !1230
  %50 = load i32, ptr %sv_refcnt.i822, align 8, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %50, metadata !963, metadata !DIExpression()) #7, !dbg !1231
  %cmp1.i823 = icmp ugt i32 %50, 1, !dbg !1232
  br i1 %cmp1.i823, label %if.then4.i826, label %if.else.i827, !dbg !1233

if.then4.i826:                                    ; preds = %if.then.i824
  %sub.i825 = add i32 %50, -1, !dbg !1234
  store i32 %sub.i825, ptr %sv_refcnt.i822, align 8, !dbg !1235
  br label %S_SvREFCNT_dec.exit828, !dbg !1236

if.else.i827:                                     ; preds = %if.then.i824
  call void @Perl_sv_free2(ptr noundef nonnull %49, i32 noundef %50) #7, !dbg !1237
  br label %S_SvREFCNT_dec.exit828

S_SvREFCNT_dec.exit828:                           ; preds = %if.then4.i826, %if.else.i827
  store ptr null, ptr %mro_linear_current329, align 8, !dbg !1238
  br label %if.end335, !dbg !1238

if.end335:                                        ; preds = %if.else328, %S_SvREFCNT_dec.exit828, %S_SvREFCNT_dec.exit820
  br i1 %is_universal.0, label %if.end340, label %if.then337, !dbg !1239

if.then337:                                       ; preds = %if.end335
  %cache_gen338 = getelementptr inbounds %struct.mro_meta, ptr %cond321, i64 0, i32 3, !dbg !1240
  %51 = load i32, ptr %cache_gen338, align 8, !dbg !1242
  %inc339 = add i32 %51, 1, !dbg !1242
  store i32 %inc339, ptr %cache_gen338, align 8, !dbg !1242
  br label %if.end340, !dbg !1243

if.end340:                                        ; preds = %if.then337, %if.end335
  %mro_nextmethod341 = getelementptr inbounds %struct.mro_meta, ptr %cond321, i64 0, i32 2, !dbg !1244
  %52 = load ptr, ptr %mro_nextmethod341, align 8, !dbg !1244
  %tobool342.not = icmp eq ptr %52, null, !dbg !1246
  br i1 %tobool342.not, label %if.end345, label %if.then343, !dbg !1247

if.then343:                                       ; preds = %if.end340
  call void @Perl_hv_clear(ptr noundef nonnull %52) #7, !dbg !1248
  br label %if.end345, !dbg !1248

if.end345:                                        ; preds = %if.then343, %if.end340
  %53 = load ptr, ptr %revstash, align 8, !dbg !1249
  call void @llvm.dbg.value(metadata ptr %53, metadata !1068, metadata !DIExpression()), !dbg !1190
  %sv_flags346 = getelementptr inbounds %struct.hv, ptr %53, i64 0, i32 2, !dbg !1249
  %54 = load i32, ptr %sv_flags346, align 4, !dbg !1249
  %and347 = and i32 %54, 1048576, !dbg !1249
  %tobool348.not = icmp eq i32 %and347, 0, !dbg !1249
  br i1 %tobool348.not, label %if.then349, label %if.end352, !dbg !1251

if.then349:                                       ; preds = %if.end345
  %55 = load ptr, ptr %53, align 8, !dbg !1252
  store ptr null, ptr %55, align 8, !dbg !1253
  br label %if.end352, !dbg !1252

if.end352:                                        ; preds = %if.then349, %if.end345
  %isa353 = getelementptr inbounds %struct.mro_meta, ptr %cond321, i64 0, i32 6, !dbg !1254
  %56 = load ptr, ptr %isa353, align 8, !dbg !1254
  %tobool354.not = icmp eq ptr %56, null, !dbg !1254
  %spec.select794 = select i1 %tobool354.not, ptr @PL_sv_undef, ptr %56, !dbg !1254
  call void @llvm.dbg.value(metadata ptr %revstash, metadata !1068, metadata !DIExpression(DW_OP_deref)), !dbg !1190
  %call360 = call ptr @Perl_hv_common_key_len(ptr noundef %isa_hashes.0, ptr noundef nonnull %revstash, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %spec.select794, i32 noundef 0) #7, !dbg !1254
  store ptr null, ptr %isa353, align 8, !dbg !1255
  br label %cleanup, !dbg !1196

cleanup:                                          ; preds = %while.body, %if.end352
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %revstash) #7, !dbg !1196
  %call297 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %cond255, i32 noundef 0) #7, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %call297, metadata !1055, metadata !DIExpression()), !dbg !1085
  %tobool298.not = icmp eq ptr %call297, null, !dbg !1187
  br i1 %tobool298.not, label %while.end, label %while.body, !dbg !1187

while.end:                                        ; preds = %cleanup, %if.end296
  %call363 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %cond255) #7, !dbg !1256
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %call363, i64 0, i32 1, !dbg !1256
  %57 = load i32, ptr %sv_refcnt, align 8, !dbg !1256
  %inc364 = add i32 %57, 1, !dbg !1256
  store i32 %inc364, ptr %sv_refcnt, align 8, !dbg !1256
  %tobool365.not = icmp eq ptr %isa_hashes.0, null, !dbg !1257
  br i1 %tobool365.not, label %if.end555, label %if.then366, !dbg !1258

if.then366:                                       ; preds = %while.end
  %call367 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %isa_hashes.0) #7, !dbg !1259
  %call369874 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %isa_hashes.0, i32 noundef 0) #7, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %call369874, metadata !1055, metadata !DIExpression()), !dbg !1085
  %tobool370.not875 = icmp eq ptr %call369874, null, !dbg !1261
  br i1 %tobool370.not875, label %if.end555, label %while.body371, !dbg !1261

while.body371:                                    ; preds = %if.then366, %if.end552
  %call369876 = phi ptr [ %call369, %if.end552 ], [ %call369874, %if.then366 ]
  %hent_hek = getelementptr inbounds %struct.he, ptr %call369876, i64 0, i32 1, !dbg !1262
  %58 = load ptr, ptr %hent_hek, align 8, !dbg !1262
  %hek_key373 = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 2, !dbg !1262
  %59 = load ptr, ptr %hek_key373, align 4, !dbg !1263
  call void @llvm.dbg.value(metadata ptr %59, metadata !1071, metadata !DIExpression()), !dbg !1264
  %he_valu = getelementptr inbounds %struct.he, ptr %call369876, i64 0, i32 2, !dbg !1265
  %60 = load ptr, ptr %he_valu, align 8, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %60, metadata !1075, metadata !DIExpression()), !dbg !1264
  %call376 = call ptr @Perl_mro_get_linear_isa(ptr noundef %59), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %call376, metadata !1054, metadata !DIExpression()), !dbg !1085
  %sv_u377 = getelementptr inbounds %struct.av, ptr %call376, i64 0, i32 3, !dbg !1267
  %61 = load ptr, ptr %sv_u377, align 8, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %61, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  %62 = load ptr, ptr %call376, align 8, !dbg !1268
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %62, i64 0, i32 2, !dbg !1268
  %63 = load i64, ptr %xav_fill, align 8, !dbg !1268
  %conv380 = trunc i64 %63 to i32, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %conv380, metadata !1057, metadata !DIExpression()), !dbg !1085
  %sv_flags381 = getelementptr inbounds %struct.hv, ptr %59, i64 0, i32 2, !dbg !1269
  %64 = load i32, ptr %sv_flags381, align 4, !dbg !1269
  %and382 = and i32 %64, 33554432, !dbg !1269
  %tobool383.not = icmp eq i32 %and382, 0, !dbg !1269
  br i1 %tobool383.not, label %if.end492, label %land.lhs.true384, !dbg !1269

land.lhs.true384:                                 ; preds = %while.body371
  %sv_u385 = getelementptr inbounds %struct.hv, ptr %59, i64 0, i32 3, !dbg !1269
  %65 = load ptr, ptr %sv_u385, align 8, !dbg !1269
  %66 = load ptr, ptr %59, align 8, !dbg !1269
  %xhv_max387 = getelementptr inbounds %struct.xpvhv, ptr %66, i64 0, i32 3, !dbg !1269
  %67 = load i64, ptr %xhv_max387, align 8, !dbg !1269
  %add388 = add i64 %67, 1, !dbg !1269
  %arrayidx389 = getelementptr inbounds ptr, ptr %65, i64 %add388, !dbg !1269
  %68 = load ptr, ptr %arrayidx389, align 8, !dbg !1269
  %tobool391.not = icmp eq ptr %68, null, !dbg !1269
  br i1 %tobool391.not, label %if.end492, label %cond.true392, !dbg !1269

cond.true392:                                     ; preds = %land.lhs.true384
  %xhv_name_count398 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx389, i64 0, i32 4, !dbg !1269
  %69 = load i32, ptr %xhv_name_count398, align 4, !dbg !1269
  %cmp399 = icmp sgt i32 %69, 0, !dbg !1269
  br i1 %cmp399, label %cond.end450, label %cond.false409, !dbg !1269

cond.false409:                                    ; preds = %cond.true392
  %cmp416 = icmp slt i32 %69, -1, !dbg !1269
  br i1 %cmp416, label %cond.true418, label %cond.false426, !dbg !1269

cond.true418:                                     ; preds = %cond.false409
  %arrayidx425 = getelementptr inbounds ptr, ptr %68, i64 1, !dbg !1269
  br label %cond.end450, !dbg !1269

cond.false426:                                    ; preds = %cond.false409
  %cmp433 = icmp eq i32 %69, -1, !dbg !1269
  br i1 %cmp433, label %cond.true465, label %if.end492, !dbg !1269

cond.end450:                                      ; preds = %cond.true392, %cond.true418
  %cond451.in = phi ptr [ %arrayidx425, %cond.true418 ], [ %68, %cond.true392 ]
  %cond451 = load ptr, ptr %cond451.in, align 8, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %cond451, metadata !1076, metadata !DIExpression()), !dbg !1264
  %tobool452.not = icmp eq ptr %cond451, null, !dbg !1270
  br i1 %tobool452.not, label %cond.true465, label %if.end492, !dbg !1272

cond.true465:                                     ; preds = %cond.false426, %cond.end450
  %xhv_name_count471 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx389, i64 0, i32 4, !dbg !1273
  %70 = load i32, ptr %xhv_name_count471, align 4, !dbg !1273
  %tobool472.not = icmp eq i32 %70, 0, !dbg !1273
  br i1 %tobool472.not, label %if.end492, label %cond.true473, !dbg !1273

cond.true473:                                     ; preds = %cond.true465
  %71 = load ptr, ptr %68, align 8, !dbg !1273
  br label %if.end492, !dbg !1273

if.end492:                                        ; preds = %land.lhs.true384, %cond.false426, %while.body371, %cond.true473, %cond.true465, %cond.end450
  %namehek.0 = phi ptr [ %cond451, %cond.end450 ], [ %71, %cond.true473 ], [ %68, %cond.true465 ], [ null, %while.body371 ], [ %68, %cond.false426 ], [ null, %land.lhs.true384 ], !dbg !1264
  call void @llvm.dbg.value(metadata ptr %namehek.0, metadata !1076, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr %61, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %conv380, metadata !1057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1085
  %tobool494.not871 = icmp eq i32 %conv380, 0, !dbg !1274
  br i1 %tobool494.not871, label %while.end516, label %while.body495.lr.ph, !dbg !1274

while.body495.lr.ph:                              ; preds = %if.end492
  call void @llvm.dbg.value(metadata i32 %conv380, metadata !1057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1085
  call void @llvm.dbg.value(metadata ptr %61, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  %hek_key502 = getelementptr inbounds %struct.hek, ptr %namehek.0, i64 0, i32 2
  %hek_len504 = getelementptr inbounds %struct.hek, ptr %namehek.0, i64 0, i32 1
  %add.ptr510 = getelementptr inbounds i8, ptr %hek_key502, i64 1
  br label %while.body495, !dbg !1274

while.body495:                                    ; preds = %while.body495.lr.ph, %lor.end
  %dec873.in = phi i32 [ %conv380, %while.body495.lr.ph ], [ %dec873, %lor.end ]
  %.pn = phi ptr [ %61, %while.body495.lr.ph ], [ %svp.0872, %lor.end ]
  %svp.0872 = getelementptr inbounds ptr, ptr %.pn, i64 1, !dbg !1264
  %dec873 = add nsw i32 %dec873.in, -1, !dbg !1275
  call void @llvm.dbg.value(metadata ptr %svp.0872, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  %72 = load ptr, ptr %svp.0872, align 8, !dbg !1276
  call void @llvm.dbg.value(metadata ptr %72, metadata !1077, metadata !DIExpression()), !dbg !1277
  %73 = load ptr, ptr @PL_isarev, align 8, !dbg !1278
  %call496 = call ptr @Perl_hv_common(ptr noundef %73, ptr noundef %72, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7, !dbg !1278
  call void @llvm.dbg.value(metadata ptr %call496, metadata !1080, metadata !DIExpression()), !dbg !1277
  %he_valu497 = getelementptr inbounds %struct.he, ptr %call496, i64 0, i32 2, !dbg !1279
  %74 = load ptr, ptr %he_valu497, align 8, !dbg !1279
  call void @llvm.dbg.value(metadata ptr %74, metadata !1079, metadata !DIExpression()), !dbg !1277
  %sv_flags498 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 2, !dbg !1280
  %75 = load i32, ptr %sv_flags498, align 4, !dbg !1280
  %and499 = and i32 %75, 252, !dbg !1280
  %cmp500 = icmp ugt i32 %and499, 11, !dbg !1280
  br i1 %cmp500, label %lor.end, label %lor.rhs, !dbg !1280

lor.rhs:                                          ; preds = %while.body495
  call void @Perl_sv_upgrade(ptr noundef nonnull %74, i32 noundef 12) #7, !dbg !1280
  br label %lor.end, !dbg !1280

lor.end:                                          ; preds = %lor.rhs, %while.body495
  %76 = load i32, ptr %hek_len504, align 4, !dbg !1281
  %conv505 = sext i32 %76 to i64, !dbg !1281
  %add.ptr511 = getelementptr inbounds i8, ptr %add.ptr510, i64 %conv505, !dbg !1281
  %77 = load i8, ptr %add.ptr511, align 1, !dbg !1281
  %78 = and i8 %77, 1, !dbg !1281
  %and513 = zext i8 %78 to i32, !dbg !1281
  %79 = load i32, ptr %namehek.0, align 4, !dbg !1281
  %call515 = call ptr @Perl_hv_common(ptr noundef nonnull %74, ptr noundef null, ptr noundef nonnull %hek_key502, i64 noundef %conv505, i32 noundef %and513, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef %79) #7, !dbg !1281
  call void @llvm.dbg.value(metadata ptr %svp.0872, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %dec873, metadata !1057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1085
  %tobool494.not = icmp eq i32 %dec873, 0, !dbg !1274
  br i1 %tobool494.not, label %while.end516, label %while.body495, !dbg !1274, !llvm.loop !1282

while.end516:                                     ; preds = %lor.end, %if.end492
  %cmp517.not = icmp eq ptr %60, @PL_sv_undef, !dbg !1284
  br i1 %cmp517.not, label %if.end552, label %if.then519, !dbg !1286

if.then519:                                       ; preds = %while.end516
  %hek_key520 = getelementptr inbounds %struct.hek, ptr %namehek.0, i64 0, i32 2, !dbg !1287
  %hek_len522 = getelementptr inbounds %struct.hek, ptr %namehek.0, i64 0, i32 1, !dbg !1287
  %80 = load i32, ptr %hek_len522, align 4, !dbg !1287
  %conv523 = sext i32 %80 to i64, !dbg !1287
  %sv_u524 = getelementptr inbounds %struct.hv, ptr %59, i64 0, i32 3, !dbg !1287
  %81 = load ptr, ptr %sv_u524, align 8, !dbg !1287
  %82 = load ptr, ptr %59, align 8, !dbg !1287
  %xhv_max526 = getelementptr inbounds %struct.xpvhv, ptr %82, i64 0, i32 3, !dbg !1287
  %83 = load i64, ptr %xhv_max526, align 8, !dbg !1287
  %add527 = add i64 %83, 1, !dbg !1287
  %arrayidx528 = getelementptr inbounds ptr, ptr %81, i64 %add527, !dbg !1287
  %xhv_mro_meta529 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx528, i64 0, i32 5, !dbg !1287
  %84 = load ptr, ptr %xhv_mro_meta529, align 8, !dbg !1287
  %tobool530.not = icmp eq ptr %84, null, !dbg !1287
  br i1 %tobool530.not, label %cond.false538, label %cond.end540, !dbg !1287

cond.false538:                                    ; preds = %if.then519
  call void @llvm.dbg.value(metadata ptr %59, metadata !873, metadata !DIExpression()) #7, !dbg !1289
  %call.i829 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %call.i829, metadata !874, metadata !DIExpression()) #7, !dbg !1289
  %85 = load ptr, ptr %sv_u524, align 8, !dbg !1292
  %86 = load ptr, ptr %59, align 8, !dbg !1292
  %xhv_max.i831 = getelementptr inbounds %struct.xpvhv, ptr %86, i64 0, i32 3, !dbg !1292
  %87 = load i64, ptr %xhv_max.i831, align 8, !dbg !1292
  %add.i832 = add i64 %87, 1, !dbg !1292
  %arrayidx.i833 = getelementptr inbounds ptr, ptr %85, i64 %add.i832, !dbg !1292
  %xhv_mro_meta.i834 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i833, i64 0, i32 5, !dbg !1293
  store ptr %call.i829, ptr %xhv_mro_meta.i834, align 8, !dbg !1294
  %cache_gen.i835 = getelementptr inbounds %struct.mro_meta, ptr %call.i829, i64 0, i32 3, !dbg !1295
  store i32 1, ptr %cache_gen.i835, align 8, !dbg !1296
  %pkg_gen.i836 = getelementptr inbounds %struct.mro_meta, ptr %call.i829, i64 0, i32 4, !dbg !1297
  store i32 1, ptr %pkg_gen.i836, align 4, !dbg !1298
  %mro_which.i837 = getelementptr inbounds %struct.mro_meta, ptr %call.i829, i64 0, i32 5, !dbg !1299
  store ptr @dfs_alg, ptr %mro_which.i837, align 8, !dbg !1300
  %.pre884 = load i32, ptr %hek_len522, align 4, !dbg !1287
  %.pre886 = sext i32 %.pre884 to i64, !dbg !1287
  br label %cond.end540, !dbg !1287

cond.end540:                                      ; preds = %if.then519, %cond.false538
  %idx.ext547.pre-phi = phi i64 [ %conv523, %if.then519 ], [ %.pre886, %cond.false538 ], !dbg !1287
  %cond541 = phi ptr [ %84, %if.then519 ], [ %call.i829, %cond.false538 ], !dbg !1287
  %isa542 = getelementptr inbounds %struct.mro_meta, ptr %cond541, i64 0, i32 6, !dbg !1287
  %88 = load ptr, ptr %isa542, align 8, !dbg !1287
  %89 = load i32, ptr %namehek.0, align 4, !dbg !1287
  %add.ptr548 = getelementptr inbounds i8, ptr %hek_key520, i64 1, !dbg !1287
  %add.ptr549 = getelementptr inbounds i8, ptr %add.ptr548, i64 %idx.ext547.pre-phi, !dbg !1287
  %90 = load i8, ptr %add.ptr549, align 1, !dbg !1287
  %91 = and i8 %90, 1, !dbg !1287
  %and551 = zext i8 %91 to i32, !dbg !1287
  call fastcc void @S_mro_clean_isarev(ptr noundef %60, ptr noundef nonnull %hek_key520, i64 noundef %conv523, ptr noundef %88, i32 noundef %89, i32 noundef %and551), !dbg !1287
  br label %if.end552, !dbg !1301

if.end552:                                        ; preds = %cond.end540, %while.end516
  %call369 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %isa_hashes.0, i32 noundef 0) #7, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %call369, metadata !1055, metadata !DIExpression()), !dbg !1085
  %tobool370.not = icmp eq ptr %call369, null, !dbg !1261
  br i1 %tobool370.not, label %if.end555, label %while.body371, !dbg !1261, !llvm.loop !1302

if.end555:                                        ; preds = %if.end552, %if.then366, %while.end, %if.end288
  %call556 = call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %stash), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %call556, metadata !1054, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata ptr undef, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  %92 = load ptr, ptr %call556, align 8, !dbg !1305
  %xav_fill560 = getelementptr inbounds %struct.xpvav, ptr %92, i64 0, i32 2, !dbg !1305
  %93 = load i64, ptr %xav_fill560, align 8, !dbg !1305
  %conv561 = trunc i64 %93 to i32, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %conv561, metadata !1057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1085
  %tobool564.not879 = icmp eq i32 %conv561, 0, !dbg !1306
  br i1 %tobool564.not879, label %while.end593, label %while.body565.preheader, !dbg !1306

while.body565.preheader:                          ; preds = %if.end555
  %sv_u557 = getelementptr inbounds %struct.av, ptr %call556, i64 0, i32 3, !dbg !1307
  %94 = load ptr, ptr %sv_u557, align 8, !dbg !1307
  call void @llvm.dbg.value(metadata ptr %94, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  %add.ptr587 = getelementptr inbounds i8, ptr %hek_key240, i64 1
  br label %while.body565, !dbg !1306

while.body565:                                    ; preds = %while.body565.preheader, %lor.end577
  %dec563881.in = phi i32 [ %dec563881, %lor.end577 ], [ %conv561, %while.body565.preheader ]
  %svp.1880.pn = phi ptr [ %svp.1880, %lor.end577 ], [ %94, %while.body565.preheader ]
  %svp.1880 = getelementptr inbounds ptr, ptr %svp.1880.pn, i64 1, !dbg !1085
  %dec563881 = add nsw i32 %dec563881.in, -1, !dbg !1308
  call void @llvm.dbg.value(metadata ptr %svp.1880, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  %95 = load ptr, ptr %svp.1880, align 8, !dbg !1309
  call void @llvm.dbg.value(metadata ptr %95, metadata !1081, metadata !DIExpression()), !dbg !1310
  %96 = load ptr, ptr @PL_isarev, align 8, !dbg !1311
  %call570 = call ptr @Perl_hv_common(ptr noundef %96, ptr noundef %95, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7, !dbg !1311
  call void @llvm.dbg.value(metadata ptr %call570, metadata !1084, metadata !DIExpression()), !dbg !1310
  %he_valu571 = getelementptr inbounds %struct.he, ptr %call570, i64 0, i32 2, !dbg !1312
  %97 = load ptr, ptr %he_valu571, align 8, !dbg !1312
  call void @llvm.dbg.value(metadata ptr %97, metadata !1083, metadata !DIExpression()), !dbg !1310
  %sv_flags572 = getelementptr inbounds %struct.sv, ptr %97, i64 0, i32 2, !dbg !1313
  %98 = load i32, ptr %sv_flags572, align 4, !dbg !1313
  %and573 = and i32 %98, 252, !dbg !1313
  %cmp574 = icmp ugt i32 %and573, 11, !dbg !1313
  br i1 %cmp574, label %lor.end577, label %lor.rhs576, !dbg !1313

lor.rhs576:                                       ; preds = %while.body565
  call void @Perl_sv_upgrade(ptr noundef nonnull %97, i32 noundef 12) #7, !dbg !1313
  br label %lor.end577, !dbg !1313

lor.end577:                                       ; preds = %lor.rhs576, %while.body565
  %99 = load i32, ptr %hek_len242, align 4, !dbg !1314
  %conv582 = sext i32 %99 to i64, !dbg !1314
  %add.ptr588 = getelementptr inbounds i8, ptr %add.ptr587, i64 %conv582, !dbg !1314
  %100 = load i8, ptr %add.ptr588, align 1, !dbg !1314
  %101 = and i8 %100, 1, !dbg !1314
  %and590 = zext i8 %101 to i32, !dbg !1314
  %102 = load i32, ptr %cond52840844854, align 4, !dbg !1314
  %call592 = call ptr @Perl_hv_common(ptr noundef nonnull %97, ptr noundef null, ptr noundef nonnull %hek_key240, i64 noundef %conv582, i32 noundef %and590, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef %102) #7, !dbg !1314
  call void @llvm.dbg.value(metadata ptr %svp.1880, metadata !1056, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %dec563881, metadata !1057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1085
  %tobool564.not = icmp eq i32 %dec563881, 0, !dbg !1306
  br i1 %tobool564.not, label %while.end593, label %while.body565, !dbg !1306, !llvm.loop !1315

while.end593:                                     ; preds = %lor.end577, %if.end555
  %tobool594.not = icmp eq ptr %isa.0, null, !dbg !1317
  br i1 %tobool594.not, label %if.end609, label %land.lhs.true595, !dbg !1319

land.lhs.true595:                                 ; preds = %while.end593
  %sv_u596 = getelementptr inbounds %struct.hv, ptr %isa.0, i64 0, i32 3, !dbg !1320
  %103 = load ptr, ptr %sv_u596, align 8, !dbg !1320
  %tobool597.not = icmp eq ptr %103, null, !dbg !1320
  br i1 %tobool597.not, label %if.end609, label %if.then598, !dbg !1321

if.then598:                                       ; preds = %land.lhs.true595
  %104 = load ptr, ptr %isa233, align 8, !dbg !1322
  %105 = load i32, ptr %cond52840844854, align 4, !dbg !1322
  %106 = load i32, ptr %hek_len242, align 4, !dbg !1322
  %idx.ext604 = sext i32 %106 to i64, !dbg !1322
  %add.ptr605 = getelementptr inbounds i8, ptr %hek_key240, i64 %idx.ext604, !dbg !1322
  %add.ptr606 = getelementptr inbounds i8, ptr %add.ptr605, i64 1, !dbg !1322
  %107 = load i8, ptr %add.ptr606, align 1, !dbg !1322
  %108 = and i8 %107, 1, !dbg !1322
  %and608 = zext i8 %108 to i32, !dbg !1322
  call fastcc void @S_mro_clean_isarev(ptr noundef nonnull %isa.0, ptr noundef %cond128846852, i64 noundef %conv858, ptr noundef %104, i32 noundef %105, i32 noundef %and608), !dbg !1322
  br label %if.end609, !dbg !1322

if.end609:                                        ; preds = %if.then598, %land.lhs.true595, %while.end593
  ret void, !dbg !1323
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !1324 void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

declare !dbg !1325 i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare !dbg !1328 ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1331 ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1334 ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare !dbg !1337 void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @S_mro_clean_isarev(ptr noundef %isa, ptr noundef %name, i64 noundef %len, ptr noundef %exceptions, i32 noundef %hash, i32 noundef %flags) unnamed_addr #0 !dbg !1340 {
entry:
  %klen = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %isa, metadata !1344, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %name, metadata !1345, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %len, metadata !1346, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %exceptions, metadata !1347, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1348, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1349, metadata !DIExpression()), !dbg !1360
  %sv_u = getelementptr inbounds %struct.hv, ptr %isa, i64 0, i32 3, !dbg !1361
  %0 = load ptr, ptr %sv_u, align 8, !dbg !1361
  %tobool.not = icmp eq ptr %0, null, !dbg !1361
  br i1 %tobool.not, label %if.end68, label %land.lhs.true, !dbg !1362

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %isa) #7, !dbg !1363
  %tobool1.not = icmp eq i32 %call, 0, !dbg !1363
  br i1 %tobool1.not, label %if.end68, label %while.cond.preheader, !dbg !1364

while.cond.preheader:                             ; preds = %land.lhs.true
  %call285 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %isa, i32 noundef 0) #7, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %call285, metadata !1350, metadata !DIExpression()), !dbg !1360
  %tobool3.not86 = icmp eq ptr %call285, null, !dbg !1366
  br i1 %tobool3.not86, label %if.end68, label %while.body.lr.ph, !dbg !1366

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool5.not = icmp eq ptr %exceptions, null
  br label %while.body, !dbg !1366

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call287 = phi ptr [ %call285, %while.body.lr.ph ], [ %call2, %cleanup ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %klen) #7, !dbg !1367
  call void @llvm.dbg.value(metadata ptr %klen, metadata !1354, metadata !DIExpression(DW_OP_deref)), !dbg !1368
  %call4 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %call287, ptr noundef nonnull %klen) #7, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1356, metadata !DIExpression()), !dbg !1368
  br i1 %tobool5.not, label %if.end, label %land.lhs.true6, !dbg !1370

land.lhs.true6:                                   ; preds = %while.body
  %hent_hek = getelementptr inbounds %struct.he, ptr %call287, i64 0, i32 1, !dbg !1372
  %1 = load ptr, ptr %hent_hek, align 8, !dbg !1372
  %hek_key = getelementptr inbounds %struct.hek, ptr %1, i64 0, i32 2, !dbg !1372
  %hek_len = getelementptr inbounds %struct.hek, ptr %1, i64 0, i32 1, !dbg !1372
  %2 = load i32, ptr %hek_len, align 4, !dbg !1372
  %idx.ext = sext i32 %2 to i64, !dbg !1372
  %add.ptr = getelementptr inbounds i8, ptr %hek_key, i64 1, !dbg !1372
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext, !dbg !1372
  %3 = load i8, ptr %add.ptr8, align 1, !dbg !1372
  %4 = and i8 %3, 1, !dbg !1372
  %tobool9.not = icmp eq i8 %4, 0, !dbg !1372
  %5 = load i32, ptr %klen, align 4, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %5, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %5, metadata !1354, metadata !DIExpression()), !dbg !1368
  %sub = sub nsw i32 0, %5
  %spec.select = select i1 %tobool9.not, i32 %5, i32 %sub, !dbg !1372
  %call10 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %exceptions, ptr noundef %call4, i32 noundef %spec.select, i32 noundef 8, ptr noundef null, i32 noundef 0) #7, !dbg !1372
  %tobool11.not = icmp eq ptr %call10, null, !dbg !1372
  br i1 %tobool11.not, label %if.end, label %cleanup, !dbg !1373, !llvm.loop !1374

if.end:                                           ; preds = %land.lhs.true6, %while.body
  %6 = load ptr, ptr @PL_isarev, align 8, !dbg !1376
  %hent_hek15 = getelementptr inbounds %struct.he, ptr %call287, i64 0, i32 1, !dbg !1376
  %7 = load ptr, ptr %hent_hek15, align 8, !dbg !1376
  %hek_key16 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2, !dbg !1376
  %hek_len19 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1, !dbg !1376
  %8 = load i32, ptr %hek_len19, align 4, !dbg !1376
  %idx.ext20 = sext i32 %8 to i64, !dbg !1376
  %add.ptr21 = getelementptr inbounds i8, ptr %hek_key16, i64 1, !dbg !1376
  %add.ptr22 = getelementptr inbounds i8, ptr %add.ptr21, i64 %idx.ext20, !dbg !1376
  %9 = load i8, ptr %add.ptr22, align 1, !dbg !1376
  %10 = and i8 %9, 1, !dbg !1376
  %tobool25.not = icmp eq i8 %10, 0, !dbg !1376
  %11 = load i32, ptr %klen, align 4, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %11, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %11, metadata !1354, metadata !DIExpression()), !dbg !1368
  %sub27 = sub nsw i32 0, %11
  %spec.select89 = select i1 %tobool25.not, i32 %11, i32 %sub27, !dbg !1376
  %call31 = call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef %call4, i32 noundef %spec.select89, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1351, metadata !DIExpression()), !dbg !1377
  %tobool32.not = icmp eq ptr %call31, null, !dbg !1378
  br i1 %tobool32.not, label %cleanup, label %if.then33, !dbg !1379

if.then33:                                        ; preds = %if.end
  %12 = load ptr, ptr %call31, align 8, !dbg !1380
  call void @llvm.dbg.value(metadata ptr %12, metadata !1357, metadata !DIExpression()), !dbg !1381
  %call34 = call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef %name, i64 noundef %len, i32 noundef %flags, i32 noundef 68, ptr noundef null, i32 noundef %hash) #7, !dbg !1382
  %sv_u35 = getelementptr inbounds %struct.hv, ptr %12, i64 0, i32 3, !dbg !1383
  %13 = load ptr, ptr %sv_u35, align 8, !dbg !1383
  %tobool36.not = icmp eq ptr %13, null, !dbg !1383
  br i1 %tobool36.not, label %if.then47, label %lor.lhs.false, !dbg !1385

lor.lhs.false:                                    ; preds = %if.then33
  %14 = load ptr, ptr %12, align 8, !dbg !1386
  %xhv_keys = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 2, !dbg !1386
  %15 = load i64, ptr %xhv_keys, align 8, !dbg !1386
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %14, i64 0, i32 1, !dbg !1386
  %16 = load ptr, ptr %xmg_u, align 8, !dbg !1386
  %tobool38.not = icmp eq ptr %16, null, !dbg !1386
  br i1 %tobool38.not, label %cond.end42, label %cond.true39, !dbg !1386

cond.true39:                                      ; preds = %lor.lhs.false
  %call40 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %12) #7, !dbg !1386
  br label %cond.end42, !dbg !1386

cond.end42:                                       ; preds = %lor.lhs.false, %cond.true39
  %cond43 = phi i32 [ %call40, %cond.true39 ], [ 0, %lor.lhs.false ], !dbg !1386
  %conv44 = sext i32 %cond43 to i64, !dbg !1386
  %tobool46.not = icmp eq i64 %15, %conv44, !dbg !1386
  br i1 %tobool46.not, label %if.then47, label %cleanup, !dbg !1387

if.then47:                                        ; preds = %cond.end42, %if.then33
  %17 = load ptr, ptr @PL_isarev, align 8, !dbg !1388
  %18 = load ptr, ptr %hent_hek15, align 8, !dbg !1388
  %hek_key49 = getelementptr inbounds %struct.hek, ptr %18, i64 0, i32 2, !dbg !1388
  %hek_len52 = getelementptr inbounds %struct.hek, ptr %18, i64 0, i32 1, !dbg !1388
  %19 = load i32, ptr %hek_len52, align 4, !dbg !1388
  %idx.ext53 = sext i32 %19 to i64, !dbg !1388
  %add.ptr54 = getelementptr inbounds i8, ptr %hek_key49, i64 1, !dbg !1388
  %add.ptr55 = getelementptr inbounds i8, ptr %add.ptr54, i64 %idx.ext53, !dbg !1388
  %20 = load i8, ptr %add.ptr55, align 1, !dbg !1388
  %21 = and i8 %20, 1, !dbg !1388
  %tobool58.not = icmp eq i8 %21, 0, !dbg !1388
  %22 = load i32, ptr %klen, align 4, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %22, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %22, metadata !1354, metadata !DIExpression()), !dbg !1368
  %sub60 = sub nsw i32 0, %22
  %spec.select90 = select i1 %tobool58.not, i32 %22, i32 %sub60, !dbg !1388
  %call64 = call ptr @Perl_hv_common_key_len(ptr noundef %17, ptr noundef %call4, i32 noundef %spec.select90, i32 noundef 68, ptr noundef null, i32 noundef 0) #7, !dbg !1388
  br label %cleanup, !dbg !1389

cleanup:                                          ; preds = %if.end, %if.then47, %cond.end42, %land.lhs.true6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %klen) #7, !dbg !1375
  %call2 = call ptr @Perl_hv_iternext_flags(ptr noundef %isa, i32 noundef 0) #7, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1350, metadata !DIExpression()), !dbg !1360
  %tobool3.not = icmp eq ptr %call2, null, !dbg !1366
  br i1 %tobool3.not, label %if.end68, label %while.body, !dbg !1366

if.end68:                                         ; preds = %cleanup, %while.cond.preheader, %land.lhs.true, %entry
  ret void, !dbg !1390
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_package_moved(ptr noundef %stash, ptr noundef %oldstash, ptr noundef readonly %gv, i32 noundef %flags) local_unnamed_addr #0 !dbg !1391 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !1398, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %oldstash, metadata !1399, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1400, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1401, metadata !DIExpression()), !dbg !1418
  %and = and i32 %flags, 1, !dbg !1419
  %tobool.not = icmp eq i32 %and, 0, !dbg !1419
  br i1 %tobool.not, label %if.then, label %if.end123, !dbg !1420

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %gv, align 8, !dbg !1421
  %xnv_u = getelementptr inbounds %struct.xpvgv, ptr %0, i64 0, i32 5, !dbg !1421
  %1 = load ptr, ptr %xnv_u, align 8, !dbg !1421
  %tobool1.not = icmp eq ptr %1, null, !dbg !1421
  br i1 %tobool1.not, label %cleanup423, label %lor.lhs.false, !dbg !1423

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2, !dbg !1424
  %2 = load i32, ptr %sv_flags, align 4, !dbg !1424
  %and4 = and i32 %2, 33554432, !dbg !1424
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !1424
  br i1 %tobool5.not, label %cleanup423, label %land.lhs.true, !dbg !1424

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sv_u = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3, !dbg !1424
  %3 = load ptr, ptr %sv_u, align 8, !dbg !1424
  %4 = load ptr, ptr %1, align 8, !dbg !1424
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %4, i64 0, i32 3, !dbg !1424
  %5 = load i64, ptr %xhv_max, align 8, !dbg !1424
  %add = add i64 %5, 1, !dbg !1424
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %add, !dbg !1424
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1424
  %tobool11.not = icmp eq ptr %6, null, !dbg !1424
  br i1 %tobool11.not, label %cleanup423, label %land.lhs.true12, !dbg !1424

land.lhs.true12:                                  ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !1424
  %7 = load i32, ptr %xhv_name_count, align 4, !dbg !1424
  %cmp.not = icmp eq i32 %7, -1, !dbg !1424
  br i1 %cmp.not, label %cleanup423, label %cond.true, !dbg !1425

cond.true:                                        ; preds = %land.lhs.true12
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %0, i64 0, i32 4, !dbg !1426
  %8 = load ptr, ptr %xiv_u, align 8, !dbg !1426
  %hek_key102 = getelementptr inbounds %struct.hek, ptr %8, i64 0, i32 2, !dbg !1426
  %hek_len = getelementptr inbounds %struct.hek, ptr %8, i64 0, i32 1, !dbg !1426
  %9 = load i32, ptr %hek_len, align 4, !dbg !1426
  %conv = sext i32 %9 to i64, !dbg !1426
  %add.ptr = getelementptr inbounds i8, ptr %hek_key102, i64 %conv, !dbg !1426
  %add.ptr113 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !1426
  %10 = load i8, ptr %add.ptr113, align 1, !dbg !1426
  %11 = and i8 %10, 1, !dbg !1426
  %and115 = zext i8 %11 to i32, !dbg !1426
  %12 = load i32, ptr %8, align 4, !dbg !1426
  %call = tail call ptr @Perl_hv_common(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %hek_key102, i64 noundef %conv, i32 noundef %and115, i32 noundef 32, ptr noundef null, i32 noundef %12) #7, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %call, metadata !1407, metadata !DIExpression()), !dbg !1427
  %tobool118.not = icmp eq ptr %call, null, !dbg !1428
  br i1 %tobool118.not, label %cleanup423, label %lor.lhs.false119, !dbg !1429

lor.lhs.false119:                                 ; preds = %cond.true
  %13 = load ptr, ptr %call, align 8, !dbg !1430
  %cmp120.not = icmp eq ptr %13, %gv, !dbg !1431
  br i1 %cmp120.not, label %if.end123, label %cleanup423, !dbg !1432

if.end123:                                        ; preds = %lor.lhs.false119, %entry
  %14 = load ptr, ptr %gv, align 8, !dbg !1433
  %xnv_u125 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 5, !dbg !1433
  %15 = load ptr, ptr %xnv_u125, align 8, !dbg !1433
  %sv_u126 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 3, !dbg !1433
  %16 = load ptr, ptr %sv_u126, align 8, !dbg !1433
  %17 = load ptr, ptr %15, align 8, !dbg !1433
  %xhv_max130 = getelementptr inbounds %struct.xpvhv, ptr %17, i64 0, i32 3, !dbg !1433
  %18 = load i64, ptr %xhv_max130, align 8, !dbg !1433
  %add131 = add i64 %18, 1, !dbg !1433
  %arrayidx132 = getelementptr inbounds ptr, ptr %16, i64 %add131, !dbg !1433
  %xhv_name_count133 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx132, i64 0, i32 4, !dbg !1434
  %19 = load i32, ptr %xhv_name_count133, align 4, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %19, metadata !1404, metadata !DIExpression()), !dbg !1418
  %tobool134.not = icmp eq i32 %19, 0, !dbg !1435
  br i1 %tobool134.not, label %if.then164, label %if.else, !dbg !1437

if.else:                                          ; preds = %if.end123
  %20 = load ptr, ptr %arrayidx132, align 8, !dbg !1438
  call void @llvm.dbg.value(metadata ptr %20, metadata !1403, metadata !DIExpression()), !dbg !1418
  %cmp156 = icmp slt i32 %19, 0, !dbg !1440
  br i1 %cmp156, label %if.then158, label %if.end161, !dbg !1442

if.then158:                                       ; preds = %if.else
  %incdec.ptr = getelementptr inbounds ptr, ptr %20, i64 1, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1403, metadata !DIExpression()), !dbg !1418
  %sub159 = xor i32 %19, -1, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %sub159, metadata !1404, metadata !DIExpression()), !dbg !1418
  br label %if.end161, !dbg !1443

if.end161:                                        ; preds = %if.else, %if.then158
  %name_count.0 = phi i32 [ %sub159, %if.then158 ], [ %19, %if.else ], !dbg !1418
  %namep.0 = phi ptr [ %incdec.ptr, %if.then158 ], [ %20, %if.else ], !dbg !1445
  call void @llvm.dbg.value(metadata ptr %namep.0, metadata !1403, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %name_count.0, metadata !1404, metadata !DIExpression()), !dbg !1418
  %cmp162 = icmp eq i32 %name_count.0, 1, !dbg !1446
  br i1 %cmp162, label %if.then164, label %if.else227, !dbg !1447

if.then164:                                       ; preds = %if.end123, %if.end161
  %namep.0536 = phi ptr [ %namep.0, %if.end161 ], [ %arrayidx132, %if.end123 ]
  %21 = load ptr, ptr %namep.0536, align 8, !dbg !1448
  %hek_len165 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 1, !dbg !1448
  %22 = load i32, ptr %hek_len165, align 4, !dbg !1448
  %cmp166 = icmp eq i32 %22, 4, !dbg !1451
  br i1 %cmp166, label %land.lhs.true168, label %if.else185, !dbg !1452

land.lhs.true168:                                 ; preds = %if.then164
  %hek_key169 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 2, !dbg !1453
  %call171 = tail call i32 @strncmp(ptr noundef nonnull %hek_key169, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #8, !dbg !1453
  %tobool172.not = icmp eq i32 %call171, 0, !dbg !1453
  br i1 %tobool172.not, label %if.then173, label %if.else185, !dbg !1454

if.then173:                                       ; preds = %land.lhs.true168
  %xiv_u175 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 4, !dbg !1455
  %23 = load ptr, ptr %xiv_u175, align 8, !dbg !1455
  %hek_len176 = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 1, !dbg !1455
  %24 = load i32, ptr %hek_len176, align 4, !dbg !1455
  %cmp177 = icmp eq i32 %24, 1, !dbg !1457
  br i1 %cmp177, label %cond.true179, label %cond.false181, !dbg !1455

cond.true179:                                     ; preds = %if.then173
  %call180 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 524288) #7, !dbg !1458
  br label %if.end196, !dbg !1455

cond.false181:                                    ; preds = %if.then173
  %call182 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 0, i32 noundef 524288) #7, !dbg !1459
  br label %if.end196, !dbg !1455

if.else185:                                       ; preds = %land.lhs.true168, %if.then164
  %call186 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %21) #7, !dbg !1460
  %call187 = tail call ptr @Perl_sv_2mortal(ptr noundef %call186) #7, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %call187, metadata !1402, metadata !DIExpression()), !dbg !1418
  %25 = load ptr, ptr %gv, align 8, !dbg !1462
  %xiv_u189 = getelementptr inbounds %struct.xpvgv, ptr %25, i64 0, i32 4, !dbg !1462
  %26 = load ptr, ptr %xiv_u189, align 8, !dbg !1462
  %hek_len190 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 1, !dbg !1462
  %27 = load i32, ptr %hek_len190, align 4, !dbg !1462
  %cmp191 = icmp eq i32 %27, 1, !dbg !1464
  br i1 %cmp191, label %if.then193, label %if.else194, !dbg !1465

if.then193:                                       ; preds = %if.else185
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call187, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7, !dbg !1466
  br label %if.end196, !dbg !1466

if.else194:                                       ; preds = %if.else185
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call187, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7, !dbg !1467
  br label %if.end196

if.end196:                                        ; preds = %cond.true179, %cond.false181, %if.then193, %if.else194
  %namesv.0 = phi ptr [ %call187, %if.then193 ], [ %call187, %if.else194 ], [ %call180, %cond.true179 ], [ %call182, %cond.false181 ], !dbg !1468
  call void @llvm.dbg.value(metadata ptr %namesv.0, metadata !1402, metadata !DIExpression()), !dbg !1418
  %28 = load ptr, ptr %gv, align 8, !dbg !1469
  %xiv_u198 = getelementptr inbounds %struct.xpvgv, ptr %28, i64 0, i32 4, !dbg !1469
  %29 = load ptr, ptr %xiv_u198, align 8, !dbg !1469
  %hek_len199 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 1, !dbg !1469
  %30 = load i32, ptr %hek_len199, align 4, !dbg !1469
  %cmp200.not = icmp eq i32 %30, 1, !dbg !1471
  br i1 %cmp200.not, label %if.end294, label %if.then202, !dbg !1472

if.then202:                                       ; preds = %if.end196
  %hek_key205 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 2, !dbg !1473
  %sub210 = add nsw i32 %30, -2, !dbg !1473
  %conv211 = sext i32 %sub210 to i64, !dbg !1473
  %idx.ext219 = sext i32 %30 to i64, !dbg !1473
  %add.ptr220 = getelementptr inbounds i8, ptr %hek_key205, i64 %idx.ext219, !dbg !1473
  %add.ptr221 = getelementptr inbounds i8, ptr %add.ptr220, i64 1, !dbg !1473
  %31 = load i8, ptr %add.ptr221, align 1, !dbg !1473
  %32 = and i8 %31, 1, !dbg !1473
  %tobool224.not = icmp eq i8 %32, 0, !dbg !1473
  %cond225 = select i1 %tobool224.not, i32 16384, i32 32768, !dbg !1473
  tail call void @Perl_sv_catpvn_flags(ptr noundef %namesv.0, ptr noundef nonnull %hek_key205, i64 noundef %conv211, i32 noundef %cond225) #7, !dbg !1473
  br label %if.end294, !dbg !1475

if.else227:                                       ; preds = %if.end161
  %call228 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7, !dbg !1476
  %call229 = tail call ptr @Perl_sv_2mortal(ptr noundef %call228) #7, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %call229, metadata !1402, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %namep.0, metadata !1403, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %name_count.0, metadata !1404, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %name_count.0, metadata !1404, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1418
  %tobool230.not538 = icmp eq i32 %name_count.0, 0, !dbg !1477
  br i1 %tobool230.not538, label %if.end294, label %while.body, !dbg !1477

while.body:                                       ; preds = %if.else227, %if.end293
  %dec540.in = phi i32 [ %dec540, %if.end293 ], [ %name_count.0, %if.else227 ]
  %namep.1539 = phi ptr [ %namep.2, %if.end293 ], [ %namep.0, %if.else227 ]
  %dec540 = add nsw i32 %dec540.in, -1, !dbg !1478
  call void @llvm.dbg.value(metadata ptr %namep.1539, metadata !1403, metadata !DIExpression()), !dbg !1418
  %33 = load ptr, ptr %namep.1539, align 8, !dbg !1479
  %hek_len231 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 1, !dbg !1479
  %34 = load i32, ptr %hek_len231, align 4, !dbg !1479
  %cmp232 = icmp eq i32 %34, 4, !dbg !1482
  br i1 %cmp232, label %land.lhs.true234, label %if.else252, !dbg !1483

land.lhs.true234:                                 ; preds = %while.body
  %hek_key235 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 2, !dbg !1484
  %call237 = tail call i32 @strncmp(ptr noundef nonnull %hek_key235, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #8, !dbg !1484
  %tobool238.not = icmp eq i32 %call237, 0, !dbg !1484
  br i1 %tobool238.not, label %if.then239, label %if.else252, !dbg !1485

if.then239:                                       ; preds = %land.lhs.true234
  %35 = load ptr, ptr %gv, align 8, !dbg !1486
  %xiv_u241 = getelementptr inbounds %struct.xpvgv, ptr %35, i64 0, i32 4, !dbg !1486
  %36 = load ptr, ptr %xiv_u241, align 8, !dbg !1486
  %hek_len242 = getelementptr inbounds %struct.hek, ptr %36, i64 0, i32 1, !dbg !1486
  %37 = load i32, ptr %hek_len242, align 4, !dbg !1486
  %cmp243 = icmp eq i32 %37, 1, !dbg !1488
  br i1 %cmp243, label %cond.true245, label %cond.false247, !dbg !1486

cond.true245:                                     ; preds = %if.then239
  %call246 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.7, i64 noundef 1) #7, !dbg !1489
  br label %if.end263, !dbg !1486

cond.false247:                                    ; preds = %if.then239
  %call248 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #7, !dbg !1490
  br label %if.end263, !dbg !1486

if.else252:                                       ; preds = %land.lhs.true234, %while.body
  call void @llvm.dbg.value(metadata ptr %namep.1539, metadata !1403, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1418
  %call254 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %33) #7, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %call254, metadata !1410, metadata !DIExpression()), !dbg !1493
  %38 = load ptr, ptr %gv, align 8, !dbg !1494
  %xiv_u256 = getelementptr inbounds %struct.xpvgv, ptr %38, i64 0, i32 4, !dbg !1494
  %39 = load ptr, ptr %xiv_u256, align 8, !dbg !1494
  %hek_len257 = getelementptr inbounds %struct.hek, ptr %39, i64 0, i32 1, !dbg !1494
  %40 = load i32, ptr %hek_len257, align 4, !dbg !1494
  %cmp258 = icmp eq i32 %40, 1, !dbg !1496
  br i1 %cmp258, label %if.then260, label %if.else261, !dbg !1497

if.then260:                                       ; preds = %if.else252
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call254, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7, !dbg !1498
  br label %if.end263, !dbg !1498

if.else261:                                       ; preds = %if.else252
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call254, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7, !dbg !1499
  br label %if.end263

if.end263:                                        ; preds = %cond.true245, %cond.false247, %if.then260, %if.else261
  %aname.0 = phi ptr [ %call254, %if.then260 ], [ %call254, %if.else261 ], [ %call246, %cond.true245 ], [ %call248, %cond.false247 ], !dbg !1500
  %namep.2 = getelementptr inbounds ptr, ptr %namep.1539, i64 1, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %namep.2, metadata !1403, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %aname.0, metadata !1410, metadata !DIExpression()), !dbg !1493
  %41 = load ptr, ptr %gv, align 8, !dbg !1501
  %xiv_u265 = getelementptr inbounds %struct.xpvgv, ptr %41, i64 0, i32 4, !dbg !1501
  %42 = load ptr, ptr %xiv_u265, align 8, !dbg !1501
  %hek_len266 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 1, !dbg !1501
  %43 = load i32, ptr %hek_len266, align 4, !dbg !1501
  %cmp267.not = icmp eq i32 %43, 1, !dbg !1503
  br i1 %cmp267.not, label %if.end293, label %if.then269, !dbg !1504

if.then269:                                       ; preds = %if.end263
  %hek_key272 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 2, !dbg !1505
  %sub277 = add nsw i32 %43, -2, !dbg !1505
  %conv278 = sext i32 %sub277 to i64, !dbg !1505
  %idx.ext286 = sext i32 %43 to i64, !dbg !1505
  %add.ptr287 = getelementptr inbounds i8, ptr %hek_key272, i64 1, !dbg !1505
  %add.ptr288 = getelementptr inbounds i8, ptr %add.ptr287, i64 %idx.ext286, !dbg !1505
  %44 = load i8, ptr %add.ptr288, align 1, !dbg !1505
  %45 = and i8 %44, 1, !dbg !1505
  %tobool291.not = icmp eq i8 %45, 0, !dbg !1505
  %cond292 = select i1 %tobool291.not, i32 16384, i32 32768, !dbg !1505
  tail call void @Perl_sv_catpvn_flags(ptr noundef %aname.0, ptr noundef nonnull %hek_key272, i64 noundef %conv278, i32 noundef %cond292) #7, !dbg !1505
  br label %if.end293, !dbg !1507

if.end293:                                        ; preds = %if.then269, %if.end263
  tail call void @Perl_av_push(ptr noundef %call229, ptr noundef %aname.0) #7, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %namep.2, metadata !1403, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %dec540, metadata !1404, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %dec540, metadata !1404, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1418
  %tobool230.not = icmp eq i32 %dec540, 0, !dbg !1477
  br i1 %tobool230.not, label %if.end294, label %while.body, !dbg !1477, !llvm.loop !1509

if.end294:                                        ; preds = %if.end293, %if.else227, %if.end196, %if.then202
  %namesv.1 = phi ptr [ %namesv.0, %if.then202 ], [ %namesv.0, %if.end196 ], [ %call229, %if.else227 ], [ %call229, %if.end293 ], !dbg !1511
  call void @llvm.dbg.value(metadata ptr %namesv.1, metadata !1402, metadata !DIExpression()), !dbg !1418
  %call295 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !1512
  %call296 = tail call ptr @Perl_sv_2mortal(ptr noundef %call295) #7, !dbg !1512
  call void @llvm.dbg.value(metadata ptr %call296, metadata !1405, metadata !DIExpression()), !dbg !1418
  %call297 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !1513
  %call298 = tail call ptr @Perl_sv_2mortal(ptr noundef %call297) #7, !dbg !1513
  tail call fastcc void @S_mro_gather_and_rename(ptr noundef %call296, ptr noundef %call298, ptr noundef %stash, ptr noundef %oldstash, ptr noundef %namesv.1), !dbg !1513
  %call299 = tail call i32 @Perl_hv_iterinit(ptr noundef %call296) #7, !dbg !1514
  %call301541 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %call296, i32 noundef 0) #7, !dbg !1515
  call void @llvm.dbg.value(metadata ptr %call301541, metadata !1406, metadata !DIExpression()), !dbg !1418
  %tobool302.not542 = icmp eq ptr %call301541, null, !dbg !1516
  br i1 %tobool302.not542, label %cleanup423, label %while.body303, !dbg !1516

while.body303:                                    ; preds = %if.end294, %if.end421
  %call301543 = phi ptr [ %call301, %if.end421 ], [ %call301541, %if.end294 ]
  %hent_hek = getelementptr inbounds %struct.he, ptr %call301543, i64 0, i32 1, !dbg !1517
  %46 = load ptr, ptr %hent_hek, align 8, !dbg !1517
  %hek_key305 = getelementptr inbounds %struct.hek, ptr %46, i64 0, i32 2, !dbg !1517
  %47 = load ptr, ptr %hek_key305, align 4, !dbg !1518
  call void @llvm.dbg.value(metadata ptr %47, metadata !1413, metadata !DIExpression()), !dbg !1519
  %sv_flags307 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 2, !dbg !1520
  %48 = load i32, ptr %sv_flags307, align 4, !dbg !1520
  %and308 = and i32 %48, 33554432, !dbg !1520
  %tobool309.not = icmp eq i32 %and308, 0, !dbg !1520
  br i1 %tobool309.not, label %if.end421, label %land.lhs.true310, !dbg !1520

land.lhs.true310:                                 ; preds = %while.body303
  %sv_u311 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 3, !dbg !1520
  %49 = load ptr, ptr %sv_u311, align 8, !dbg !1520
  %50 = load ptr, ptr %47, align 8, !dbg !1520
  %xhv_max313 = getelementptr inbounds %struct.xpvhv, ptr %50, i64 0, i32 3, !dbg !1520
  %51 = load i64, ptr %xhv_max313, align 8, !dbg !1520
  %add314 = add i64 %51, 1, !dbg !1520
  %arrayidx315 = getelementptr inbounds ptr, ptr %49, i64 %add314, !dbg !1520
  %52 = load ptr, ptr %arrayidx315, align 8, !dbg !1520
  %tobool317.not = icmp eq ptr %52, null, !dbg !1520
  br i1 %tobool317.not, label %if.end421, label %land.lhs.true318, !dbg !1520

land.lhs.true318:                                 ; preds = %land.lhs.true310
  %xhv_name_count324 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx315, i64 0, i32 4, !dbg !1520
  %53 = load i32, ptr %xhv_name_count324, align 4, !dbg !1520
  %cmp325.not = icmp eq i32 %53, -1, !dbg !1520
  br i1 %cmp325.not, label %if.end421, label %cond.true327, !dbg !1521

cond.true327:                                     ; preds = %land.lhs.true318
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx315, i64 0, i32 5, !dbg !1522
  %54 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !1522
  %tobool394.not = icmp eq ptr %54, null, !dbg !1522
  br i1 %tobool394.not, label %cond.false402, label %cond.end404, !dbg !1522

cond.false402:                                    ; preds = %cond.true327
  call void @llvm.dbg.value(metadata ptr %47, metadata !873, metadata !DIExpression()) #7, !dbg !1523
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !874, metadata !DIExpression()) #7, !dbg !1523
  %55 = load ptr, ptr %sv_u311, align 8, !dbg !1526
  %56 = load ptr, ptr %47, align 8, !dbg !1526
  %xhv_max.i = getelementptr inbounds %struct.xpvhv, ptr %56, i64 0, i32 3, !dbg !1526
  %57 = load i64, ptr %xhv_max.i, align 8, !dbg !1526
  %add.i = add i64 %57, 1, !dbg !1526
  %arrayidx.i = getelementptr inbounds ptr, ptr %55, i64 %add.i, !dbg !1526
  %xhv_mro_meta.i = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i, i64 0, i32 5, !dbg !1527
  store ptr %call.i, ptr %xhv_mro_meta.i, align 8, !dbg !1528
  %cache_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 3, !dbg !1529
  store i32 1, ptr %cache_gen.i, align 8, !dbg !1530
  %pkg_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 4, !dbg !1531
  store i32 1, ptr %pkg_gen.i, align 4, !dbg !1532
  %mro_which.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !1533
  store ptr @dfs_alg, ptr %mro_which.i, align 8, !dbg !1534
  br label %cond.end404, !dbg !1522

cond.end404:                                      ; preds = %cond.true327, %cond.false402
  %cond405 = phi ptr [ %call.i, %cond.false402 ], [ %54, %cond.true327 ], !dbg !1522
  call void @llvm.dbg.value(metadata ptr %cond405, metadata !1415, metadata !DIExpression()), !dbg !1535
  %isa = getelementptr inbounds %struct.mro_meta, ptr %cond405, i64 0, i32 6, !dbg !1536
  %58 = load ptr, ptr %isa, align 8, !dbg !1536
  %he_valu = getelementptr inbounds %struct.he, ptr %call301543, i64 0, i32 2, !dbg !1538
  %59 = load ptr, ptr %he_valu, align 8, !dbg !1538
  %cmp406.not = icmp eq ptr %58, %59, !dbg !1539
  br i1 %cmp406.not, label %if.end420, label %if.then408, !dbg !1540

if.then408:                                       ; preds = %cond.end404
  call void @llvm.dbg.value(metadata ptr %58, metadata !960, metadata !DIExpression()) #7, !dbg !1541
  %cmp.not.i = icmp eq ptr %58, null, !dbg !1544
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !1545

if.then.i:                                        ; preds = %if.then408
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1, !dbg !1546
  %60 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %60, metadata !963, metadata !DIExpression()) #7, !dbg !1547
  %cmp1.i = icmp ugt i32 %60, 1, !dbg !1548
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1549

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %60, -1, !dbg !1550
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1551
  br label %S_SvREFCNT_dec.exit, !dbg !1552

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %60) #7, !dbg !1553
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.then408, %if.then4.i, %if.else.i
  %61 = load ptr, ptr %he_valu, align 8, !dbg !1554
  %cmp411 = icmp eq ptr %61, @PL_sv_yes, !dbg !1555
  %spec.select = select i1 %cmp411, ptr null, ptr %61, !dbg !1554
  store ptr %spec.select, ptr %isa, align 8, !dbg !1556
  store ptr null, ptr %he_valu, align 8, !dbg !1557
  br label %if.end420, !dbg !1558

if.end420:                                        ; preds = %S_SvREFCNT_dec.exit, %cond.end404
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %47), !dbg !1559
  br label %if.end421, !dbg !1560

if.end421:                                        ; preds = %while.body303, %land.lhs.true310, %land.lhs.true318, %if.end420
  %call301 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %call296, i32 noundef 0) #7, !dbg !1515
  call void @llvm.dbg.value(metadata ptr %call301, metadata !1406, metadata !DIExpression()), !dbg !1418
  %tobool302.not = icmp eq ptr %call301, null, !dbg !1516
  br i1 %tobool302.not, label %cleanup423, label %while.body303, !dbg !1516, !llvm.loop !1561

cleanup423:                                       ; preds = %if.end421, %if.end294, %lor.lhs.false, %land.lhs.true, %land.lhs.true12, %lor.lhs.false119, %cond.true, %if.then
  ret void, !dbg !1563
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1564 ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1567 void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1570 ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1573 void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @S_mro_gather_and_rename(ptr noundef %stashes, ptr noundef %seen_stashes, ptr noundef %stash, ptr noundef %oldstash, ptr noundef %namesv) unnamed_addr #0 !dbg !1576 {
entry:
  %stash.addr = alloca ptr, align 8
  %oldstash.addr = alloca ptr, align 8
  %namesv.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %len413 = alloca i64, align 8
  %revstash = alloca ptr, align 8
  %len722 = alloca i32, align 4
  %len1054 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %stashes, metadata !1580, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %seen_stashes, metadata !1581, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %stash, metadata !1582, metadata !DIExpression()), !dbg !1670
  store ptr %stash, ptr %stash.addr, align 8
  call void @llvm.dbg.value(metadata ptr %oldstash, metadata !1583, metadata !DIExpression()), !dbg !1670
  store ptr %oldstash, ptr %oldstash.addr, align 8
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1584, metadata !DIExpression()), !dbg !1670
  store ptr %namesv, ptr %namesv.addr, align 8
  call void @llvm.dbg.value(metadata i32 -1, metadata !1587, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 0, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %stash, metadata !1582, metadata !DIExpression()), !dbg !1670
  %tobool.not = icmp eq ptr %stash, null, !dbg !1671
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1672

land.rhs:                                         ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 2, !dbg !1673
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1673
  %and = and i32 %0, 33554432, !dbg !1673
  %tobool2.not = icmp eq i32 %and, 0, !dbg !1673
  br i1 %tobool2.not, label %cond.end61, label %land.lhs.true, !dbg !1673

land.lhs.true:                                    ; preds = %land.rhs
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !1673
  %1 = load ptr, ptr %sv_u, align 8, !dbg !1673
  %2 = load ptr, ptr %stash, align 8, !dbg !1673
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %2, i64 0, i32 3, !dbg !1673
  %3 = load i64, ptr %xhv_max, align 8, !dbg !1673
  %add = add i64 %3, 1, !dbg !1673
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %add, !dbg !1673
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1673
  %tobool3.not = icmp eq ptr %4, null, !dbg !1673
  br i1 %tobool3.not, label %cond.end61, label %land.lhs.true4, !dbg !1673

land.lhs.true4:                                   ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !1673
  %5 = load i32, ptr %xhv_name_count, align 4, !dbg !1673
  %cmp.not = icmp eq i32 %5, -1, !dbg !1673
  br i1 %cmp.not, label %cond.end61, label %cond.true, !dbg !1673

cond.true:                                        ; preds = %land.lhs.true4
  %cmp16 = icmp sgt i32 %5, 0, !dbg !1673
  br i1 %cmp16, label %cond.end58.sink.split, label %cond.false, !dbg !1673

cond.false:                                       ; preds = %cond.true
  %cmp31 = icmp slt i32 %5, -1, !dbg !1673
  br i1 %cmp31, label %cond.true32, label %cond.end58, !dbg !1673

cond.true32:                                      ; preds = %cond.false
  %arrayidx39 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !1673
  br label %cond.end58.sink.split, !dbg !1673

cond.end58.sink.split:                            ; preds = %cond.true, %cond.true32
  %arrayidx39.sink = phi ptr [ %arrayidx39, %cond.true32 ], [ %4, %cond.true ]
  %6 = load ptr, ptr %arrayidx39.sink, align 8, !dbg !1673
  br label %cond.end58, !dbg !1673

cond.end58:                                       ; preds = %cond.end58.sink.split, %cond.false
  %cond59 = phi ptr [ %4, %cond.false ], [ %6, %cond.end58.sink.split ], !dbg !1673
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond59, i64 0, i32 2, !dbg !1673
  br label %cond.end61, !dbg !1673

cond.end61:                                       ; preds = %land.rhs, %land.lhs.true, %land.lhs.true4, %cond.end58
  %cond62 = phi ptr [ %hek_key, %cond.end58 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %land.rhs ], !dbg !1673
  %tobool63 = icmp ne ptr %cond62, null, !dbg !1672
  br label %land.end

land.end:                                         ; preds = %cond.end61, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool63, %cond.end61 ], !dbg !1670
  call void @llvm.dbg.value(metadata i1 %7, metadata !1589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr null, metadata !1592, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr null, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr null, metadata !1594, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %oldstash, metadata !1583, metadata !DIExpression()), !dbg !1670
  %tobool64.not = icmp eq ptr %oldstash, null, !dbg !1674
  br i1 %tobool64.not, label %check_stash, label %if.then, !dbg !1675

if.then:                                          ; preds = %land.end
  call void @llvm.dbg.value(metadata ptr %oldstash.addr, metadata !1583, metadata !DIExpression(DW_OP_deref)), !dbg !1670
  %call = call ptr @Perl_hv_common(ptr noundef %seen_stashes, ptr noundef null, ptr noundef nonnull %oldstash.addr, i64 noundef 8, i32 noundef 0, i32 noundef 144, ptr noundef null, i32 noundef 0) #7, !dbg !1676
  call void @llvm.dbg.value(metadata ptr %call, metadata !1598, metadata !DIExpression()), !dbg !1677
  %he_valu = getelementptr inbounds %struct.he, ptr %call, i64 0, i32 2, !dbg !1678
  %8 = load ptr, ptr %he_valu, align 8, !dbg !1678
  %cmp66 = icmp eq ptr %8, @PL_sv_undef, !dbg !1680
  %cmp68 = icmp eq ptr %8, @PL_sv_yes
  %or.cond1475 = or i1 %cmp66, %cmp68, !dbg !1681
  br i1 %or.cond1475, label %if.then69, label %if.end, !dbg !1681

if.then69:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata ptr null, metadata !1583, metadata !DIExpression()), !dbg !1670
  store ptr null, ptr %oldstash.addr, align 8, !dbg !1682
  br label %check_stash, !dbg !1684

if.end:                                           ; preds = %if.then
  %cmp71 = icmp eq ptr %8, @PL_sv_no, !dbg !1685
  %cond72 = select i1 %cmp71, ptr @PL_sv_yes, ptr @PL_sv_undef, !dbg !1686
  store ptr %cond72, ptr %he_valu, align 8, !dbg !1687
  %9 = load ptr, ptr %oldstash.addr, align 8, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %9, metadata !1583, metadata !DIExpression()), !dbg !1670
  %sv_u74 = getelementptr inbounds %struct.hv, ptr %9, i64 0, i32 3, !dbg !1688
  %10 = load ptr, ptr %sv_u74, align 8, !dbg !1688
  %11 = load ptr, ptr %9, align 8, !dbg !1688
  %xhv_max76 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3, !dbg !1688
  %12 = load i64, ptr %xhv_max76, align 8, !dbg !1688
  %add77 = add i64 %12, 1, !dbg !1688
  %arrayidx78 = getelementptr inbounds ptr, ptr %10, i64 %add77, !dbg !1688
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx78, i64 0, i32 5, !dbg !1688
  %13 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !1688
  %tobool79.not = icmp eq ptr %13, null, !dbg !1688
  br i1 %tobool79.not, label %cond.false87, label %cond.end89, !dbg !1688

cond.false87:                                     ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %9, metadata !873, metadata !DIExpression()) #7, !dbg !1689
  %call.i = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1691
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !874, metadata !DIExpression()) #7, !dbg !1689
  %14 = load ptr, ptr %sv_u74, align 8, !dbg !1692
  %15 = load ptr, ptr %9, align 8, !dbg !1692
  %xhv_max.i = getelementptr inbounds %struct.xpvhv, ptr %15, i64 0, i32 3, !dbg !1692
  %16 = load i64, ptr %xhv_max.i, align 8, !dbg !1692
  %add.i = add i64 %16, 1, !dbg !1692
  %arrayidx.i = getelementptr inbounds ptr, ptr %14, i64 %add.i, !dbg !1692
  %xhv_mro_meta.i = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i, i64 0, i32 5, !dbg !1693
  store ptr %call.i, ptr %xhv_mro_meta.i, align 8, !dbg !1694
  %cache_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 3, !dbg !1695
  store i32 1, ptr %cache_gen.i, align 8, !dbg !1696
  %pkg_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 4, !dbg !1697
  store i32 1, ptr %pkg_gen.i, align 4, !dbg !1698
  %mro_which.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !1699
  store ptr @dfs_alg, ptr %mro_which.i, align 8, !dbg !1700
  br label %cond.end89, !dbg !1688

cond.end89:                                       ; preds = %if.end, %cond.false87
  %cond90 = phi ptr [ %call.i, %cond.false87 ], [ %13, %if.end ], !dbg !1688
  call void @llvm.dbg.value(metadata ptr %cond90, metadata !1595, metadata !DIExpression()), !dbg !1677
  %isa = getelementptr inbounds %struct.mro_meta, ptr %cond90, i64 0, i32 6, !dbg !1701
  %17 = load ptr, ptr %isa, align 8, !dbg !1701
  %tobool91.not = icmp eq ptr %17, null, !dbg !1701
  br i1 %tobool91.not, label %cond.end96, label %cond.true92, !dbg !1701

cond.true92:                                      ; preds = %cond.end89
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 1, !dbg !1701
  %18 = load i32, ptr %sv_refcnt, align 8, !dbg !1701
  %inc = add i32 %18, 1, !dbg !1701
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !1701
  %19 = load ptr, ptr %isa, align 8, !dbg !1701
  br label %cond.end96, !dbg !1701

cond.end96:                                       ; preds = %cond.end89, %cond.true92
  %cond97 = phi ptr [ %19, %cond.true92 ], [ @PL_sv_yes, %cond.end89 ], !dbg !1701
  call void @llvm.dbg.value(metadata ptr %oldstash.addr, metadata !1583, metadata !DIExpression(DW_OP_deref)), !dbg !1670
  %call98 = call ptr @Perl_hv_common_key_len(ptr noundef %stashes, ptr noundef nonnull %oldstash.addr, i32 noundef 8, i32 noundef 36, ptr noundef %cond97, i32 noundef 0) #7, !dbg !1701
  %20 = load ptr, ptr %cond90, align 8, !dbg !1702
  %tobool99.not = icmp eq ptr %20, null, !dbg !1702
  br i1 %tobool99.not, label %if.else, label %if.then.i, !dbg !1704

if.then.i:                                        ; preds = %cond.end96
  call void @llvm.dbg.value(metadata ptr %20, metadata !960, metadata !DIExpression()) #7, !dbg !1705
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 1, !dbg !1708
  %21 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %21, metadata !963, metadata !DIExpression()) #7, !dbg !1709
  %cmp1.i = icmp ugt i32 %21, 1, !dbg !1710
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1711

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %21, -1, !dbg !1712
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1713
  br label %S_SvREFCNT_dec.exit, !dbg !1714

if.else.i:                                        ; preds = %if.then.i
  call void @Perl_sv_free2(ptr noundef nonnull %20, i32 noundef %21) #7, !dbg !1715
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.then4.i, %if.else.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cond90, i8 0, i64 16, i1 false), !dbg !1716
  br label %if.end109, !dbg !1716

if.else:                                          ; preds = %cond.end96
  %mro_linear_current103 = getelementptr inbounds %struct.mro_meta, ptr %cond90, i64 0, i32 1, !dbg !1717
  %22 = load ptr, ptr %mro_linear_current103, align 8, !dbg !1717
  %tobool104.not = icmp eq ptr %22, null, !dbg !1717
  br i1 %tobool104.not, label %if.end109, label %if.then.i1483, !dbg !1702

if.then.i1483:                                    ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %22, metadata !960, metadata !DIExpression()) #7, !dbg !1719
  %sv_refcnt.i1481 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 1, !dbg !1722
  %23 = load i32, ptr %sv_refcnt.i1481, align 8, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %23, metadata !963, metadata !DIExpression()) #7, !dbg !1723
  %cmp1.i1482 = icmp ugt i32 %23, 1, !dbg !1724
  br i1 %cmp1.i1482, label %if.then4.i1485, label %if.else.i1486, !dbg !1725

if.then4.i1485:                                   ; preds = %if.then.i1483
  %sub.i1484 = add i32 %23, -1, !dbg !1726
  store i32 %sub.i1484, ptr %sv_refcnt.i1481, align 8, !dbg !1727
  br label %S_SvREFCNT_dec.exit1487, !dbg !1728

if.else.i1486:                                    ; preds = %if.then.i1483
  call void @Perl_sv_free2(ptr noundef nonnull %22, i32 noundef %23) #7, !dbg !1729
  br label %S_SvREFCNT_dec.exit1487

S_SvREFCNT_dec.exit1487:                          ; preds = %if.then4.i1485, %if.else.i1486
  store ptr null, ptr %mro_linear_current103, align 8, !dbg !1730
  br label %if.end109, !dbg !1730

if.end109:                                        ; preds = %if.else, %S_SvREFCNT_dec.exit1487, %S_SvREFCNT_dec.exit
  %24 = load ptr, ptr %oldstash.addr, align 8, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %24, metadata !1583, metadata !DIExpression()), !dbg !1670
  %sv_flags110 = getelementptr inbounds %struct.hv, ptr %24, i64 0, i32 2, !dbg !1731
  %25 = load i32, ptr %sv_flags110, align 4, !dbg !1731
  %and111 = and i32 %25, 33554432, !dbg !1731
  %tobool112.not = icmp eq i32 %and111, 0, !dbg !1731
  br i1 %tobool112.not, label %check_stash, label %land.lhs.true113, !dbg !1731

land.lhs.true113:                                 ; preds = %if.end109
  %sv_u114 = getelementptr inbounds %struct.hv, ptr %24, i64 0, i32 3, !dbg !1731
  %26 = load ptr, ptr %sv_u114, align 8, !dbg !1731
  %27 = load ptr, ptr %24, align 8, !dbg !1731
  %xhv_max116 = getelementptr inbounds %struct.xpvhv, ptr %27, i64 0, i32 3, !dbg !1731
  %28 = load i64, ptr %xhv_max116, align 8, !dbg !1731
  %add117 = add i64 %28, 1, !dbg !1731
  %arrayidx118 = getelementptr inbounds ptr, ptr %26, i64 %add117, !dbg !1731
  %29 = load ptr, ptr %arrayidx118, align 8, !dbg !1731
  %tobool120.not = icmp eq ptr %29, null, !dbg !1731
  br i1 %tobool120.not, label %check_stash, label %land.lhs.true121, !dbg !1731

land.lhs.true121:                                 ; preds = %land.lhs.true113
  %xhv_name_count127 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx118, i64 0, i32 4, !dbg !1731
  %30 = load i32, ptr %xhv_name_count127, align 4, !dbg !1731
  %cmp128.not = icmp eq i32 %30, -1, !dbg !1731
  br i1 %cmp128.not, label %check_stash, label %cond.true199, !dbg !1732

cond.true199:                                     ; preds = %land.lhs.true121
  call void @llvm.dbg.value(metadata ptr %24, metadata !1583, metadata !DIExpression()), !dbg !1670
  %cmp206 = icmp sgt i32 %30, 0, !dbg !1733
  br i1 %cmp206, label %cond.end254.sink.split, label %cond.false215, !dbg !1733

cond.false215:                                    ; preds = %cond.true199
  %cmp222 = icmp slt i32 %30, -1, !dbg !1733
  br i1 %cmp222, label %cond.true223, label %cond.end254, !dbg !1733

cond.true223:                                     ; preds = %cond.false215
  %arrayidx230 = getelementptr inbounds ptr, ptr %29, i64 1, !dbg !1733
  br label %cond.end254.sink.split, !dbg !1733

cond.end254.sink.split:                           ; preds = %cond.true199, %cond.true223
  %.sink = phi ptr [ %arrayidx230, %cond.true223 ], [ %29, %cond.true199 ]
  %31 = load ptr, ptr %.sink, align 8, !dbg !1733
  br label %cond.end254, !dbg !1734

cond.end254:                                      ; preds = %cond.end254.sink.split, %cond.false215
  %cond255 = phi ptr [ %29, %cond.false215 ], [ %31, %cond.end254.sink.split ], !dbg !1733
  call void @llvm.dbg.value(metadata ptr %cond255, metadata !1600, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1584, metadata !DIExpression()), !dbg !1670
  %sv_flags256 = getelementptr inbounds %struct.sv, ptr %namesv, i64 0, i32 2, !dbg !1734
  %32 = load i32, ptr %sv_flags256, align 4, !dbg !1734
  %and257 = and i32 %32, 255, !dbg !1734
  %cmp258 = icmp eq i32 %and257, 11, !dbg !1737
  br i1 %cmp258, label %if.end264, label %while.body.preheader, !dbg !1738

if.end264:                                        ; preds = %cond.end254
  %33 = load ptr, ptr %namesv, align 8, !dbg !1739
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %33, i64 0, i32 2, !dbg !1739
  %34 = load i64, ptr %xav_fill, align 8, !dbg !1739
  %35 = trunc i64 %34 to i32, !dbg !1739
  %conv = add i32 %35, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1588, metadata !DIExpression()), !dbg !1670
  %sv_u262 = getelementptr inbounds %struct.av, ptr %namesv, i64 0, i32 3, !dbg !1741
  %36 = load ptr, ptr %sv_u262, align 8, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %36, metadata !1594, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr null, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1588, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1670
  %tobool265.not1553 = icmp eq i32 %conv, 0, !dbg !1742
  br i1 %tobool265.not1553, label %check_stash, label %while.body.preheader, !dbg !1742

while.body.preheader:                             ; preds = %cond.end254, %if.end264
  %dec1557.in.ph = phi i32 [ 1, %cond.end254 ], [ %conv, %if.end264 ]
  %svp.11554.ph = phi ptr [ %namesv.addr, %cond.end254 ], [ %36, %if.end264 ]
  br label %while.body, !dbg !1742

while.body:                                       ; preds = %while.body.preheader, %if.end388
  %dec1557.in = phi i32 [ %dec1557, %if.end388 ], [ %dec1557.in.ph, %while.body.preheader ]
  %fetched_isarev.01556 = phi i8 [ %fetched_isarev.1, %if.end388 ], [ 0, %while.body.preheader ]
  %isarev.01555 = phi ptr [ %isarev.1, %if.end388 ], [ null, %while.body.preheader ]
  %svp.11554 = phi ptr [ %incdec.ptr, %if.end388 ], [ %svp.11554.ph, %while.body.preheader ]
  %dec1557 = add nsw i32 %dec1557.in, -1, !dbg !1743
  call void @llvm.dbg.value(metadata i8 %fetched_isarev.01556, metadata !1591, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.01555, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.11554, metadata !1594, metadata !DIExpression()), !dbg !1670
  %37 = load ptr, ptr %svp.11554, align 8, !dbg !1744
  %sv_flags266 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2, !dbg !1744
  %38 = load i32, ptr %sv_flags266, align 4, !dbg !1744
  %and267 = and i32 %38, 536870912, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %and267, metadata !1603, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #7, !dbg !1746
  store ptr %37, ptr @PL_Sv, align 8, !dbg !1747
  %and269 = and i32 %38, 2098176, !dbg !1747
  %cmp270 = icmp eq i32 %and269, 1024, !dbg !1747
  br i1 %cmp270, label %cond.true272, label %cond.false275, !dbg !1747

cond.true272:                                     ; preds = %while.body
  %39 = load ptr, ptr %37, align 8, !dbg !1747
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2, !dbg !1747
  %40 = load i64, ptr %xpv_cur, align 8, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %40, metadata !1605, metadata !DIExpression()), !dbg !1745
  store i64 %40, ptr %len, align 8, !dbg !1747
  %sv_u274 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 3, !dbg !1747
  %41 = load ptr, ptr %sv_u274, align 8, !dbg !1747
  br label %cond.end277, !dbg !1747

cond.false275:                                    ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %len, metadata !1605, metadata !DIExpression(DW_OP_deref)), !dbg !1745
  %call276 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %37, ptr noundef nonnull %len, i32 noundef 34) #7, !dbg !1747
  br label %cond.end277, !dbg !1747

cond.end277:                                      ; preds = %cond.false275, %cond.true272
  %cond278 = phi ptr [ %41, %cond.true272 ], [ %call276, %cond.false275 ], !dbg !1747
  call void @llvm.dbg.value(metadata ptr %cond278, metadata !1606, metadata !DIExpression()), !dbg !1745
  %42 = load ptr, ptr @PL_stashcache, align 8, !dbg !1748
  %tobool279.not = icmp eq ptr %42, null, !dbg !1748
  br i1 %tobool279.not, label %if.end289, label %if.then280, !dbg !1750

if.then280:                                       ; preds = %cond.end277
  %tobool281.not = icmp eq i32 %and267, 0, !dbg !1751
  %43 = load i64, ptr %len, align 8, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %43, metadata !1605, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %43, metadata !1605, metadata !DIExpression()), !dbg !1745
  %conv285 = trunc i64 %43 to i32, !dbg !1751
  %sub = sub nsw i32 0, %conv285
  %spec.select = select i1 %tobool281.not, i32 %conv285, i32 %sub, !dbg !1751
  %call288 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %42, ptr noundef %cond278, i32 noundef %spec.select, i32 noundef 68, ptr noundef null, i32 noundef 0) #7, !dbg !1751
  br label %if.end289, !dbg !1753

if.end289:                                        ; preds = %if.then280, %cond.end277
  %incdec.ptr = getelementptr inbounds ptr, ptr %svp.11554, i64 1, !dbg !1754
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1594, metadata !DIExpression()), !dbg !1670
  %44 = load ptr, ptr %oldstash.addr, align 8, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %44, metadata !1583, metadata !DIExpression()), !dbg !1670
  %45 = load i64, ptr %len, align 8, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %45, metadata !1605, metadata !DIExpression()), !dbg !1745
  %conv290 = trunc i64 %45 to i32, !dbg !1755
  call void @Perl_hv_ename_delete(ptr noundef %44, ptr noundef %cond278, i32 noundef %conv290, i32 noundef %and267) #7, !dbg !1755
  %46 = and i8 %fetched_isarev.01556, 1, !dbg !1756
  %tobool291.not = icmp eq i8 %46, 0, !dbg !1756
  br i1 %tobool291.not, label %if.then292, label %if.end388, !dbg !1758

if.then292:                                       ; preds = %if.end289
  %47 = load ptr, ptr %oldstash.addr, align 8, !dbg !1759
  call void @llvm.dbg.value(metadata ptr %47, metadata !1583, metadata !DIExpression()), !dbg !1670
  %sv_flags293 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 2, !dbg !1759
  %48 = load i32, ptr %sv_flags293, align 4, !dbg !1759
  %and294 = and i32 %48, 33554432, !dbg !1759
  %tobool295.not = icmp eq i32 %and294, 0, !dbg !1759
  br i1 %tobool295.not, label %cond.end362, label %land.lhs.true296, !dbg !1759

land.lhs.true296:                                 ; preds = %if.then292
  %sv_u297 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 3, !dbg !1759
  %49 = load ptr, ptr %sv_u297, align 8, !dbg !1759
  %50 = load ptr, ptr %47, align 8, !dbg !1759
  %xhv_max299 = getelementptr inbounds %struct.xpvhv, ptr %50, i64 0, i32 3, !dbg !1759
  %51 = load i64, ptr %xhv_max299, align 8, !dbg !1759
  %add300 = add i64 %51, 1, !dbg !1759
  %arrayidx301 = getelementptr inbounds ptr, ptr %49, i64 %add300, !dbg !1759
  %52 = load ptr, ptr %arrayidx301, align 8, !dbg !1759
  %tobool303.not = icmp eq ptr %52, null, !dbg !1759
  br i1 %tobool303.not, label %cond.end362, label %cond.true304, !dbg !1759

cond.true304:                                     ; preds = %land.lhs.true296
  %xhv_name_count310 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx301, i64 0, i32 4, !dbg !1759
  %53 = load i32, ptr %xhv_name_count310, align 4, !dbg !1759
  %cmp311 = icmp sgt i32 %53, 0, !dbg !1759
  br i1 %cmp311, label %cond.true313, label %cond.false321, !dbg !1759

cond.true313:                                     ; preds = %cond.true304
  %54 = load ptr, ptr %52, align 8, !dbg !1759
  br label %cond.end362, !dbg !1759

cond.false321:                                    ; preds = %cond.true304
  %cmp328 = icmp slt i32 %53, -1, !dbg !1759
  br i1 %cmp328, label %cond.true330, label %cond.false338, !dbg !1759

cond.true330:                                     ; preds = %cond.false321
  %arrayidx337 = getelementptr inbounds ptr, ptr %52, i64 1, !dbg !1759
  %55 = load ptr, ptr %arrayidx337, align 8, !dbg !1759
  br label %cond.end362, !dbg !1759

cond.false338:                                    ; preds = %cond.false321
  %cmp345 = icmp eq i32 %53, -1, !dbg !1759
  %spec.select1476 = select i1 %cmp345, ptr null, ptr %52, !dbg !1759
  br label %cond.end362, !dbg !1759

cond.end362:                                      ; preds = %cond.false338, %if.then292, %land.lhs.true296, %cond.true313, %cond.true330
  %cond363 = phi ptr [ %54, %cond.true313 ], [ %55, %cond.true330 ], [ null, %land.lhs.true296 ], [ null, %if.then292 ], [ %spec.select1476, %cond.false338 ], !dbg !1759
  %cmp364.not = icmp eq ptr %cond363, %cond255, !dbg !1762
  br i1 %cmp364.not, label %if.end388, label %if.then366, !dbg !1763

if.then366:                                       ; preds = %cond.end362
  %56 = load ptr, ptr %isa, align 8, !dbg !1764
  %tobool368.not = icmp eq ptr %56, null, !dbg !1767
  br i1 %tobool368.not, label %if.end377, label %land.lhs.true369, !dbg !1768

land.lhs.true369:                                 ; preds = %if.then366
  %sv_u371 = getelementptr inbounds %struct.hv, ptr %56, i64 0, i32 3, !dbg !1769
  %57 = load ptr, ptr %sv_u371, align 8, !dbg !1769
  %tobool372.not = icmp eq ptr %57, null, !dbg !1769
  br i1 %tobool372.not, label %if.end377, label %if.then373, !dbg !1770

if.then373:                                       ; preds = %land.lhs.true369
  %58 = load i64, ptr %len, align 8, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %58, metadata !1605, metadata !DIExpression()), !dbg !1745
  %and267.lobit = lshr exact i32 %and267, 29, !dbg !1771
  call fastcc void @S_mro_clean_isarev(ptr noundef nonnull %56, ptr noundef %cond278, i64 noundef %58, ptr noundef null, i32 noundef 0, i32 noundef %and267.lobit), !dbg !1771
  br label %if.end377, !dbg !1771

if.end377:                                        ; preds = %if.then373, %land.lhs.true369, %if.then366
  %59 = load ptr, ptr @PL_isarev, align 8, !dbg !1772
  %tobool378.not = icmp eq i32 %and267, 0, !dbg !1772
  %60 = load i64, ptr %len, align 8, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %60, metadata !1605, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %60, metadata !1605, metadata !DIExpression()), !dbg !1745
  %conv383 = trunc i64 %60 to i32, !dbg !1772
  %sub381 = sub nsw i32 0, %conv383
  %spec.select1607 = select i1 %tobool378.not, i32 %conv383, i32 %sub381, !dbg !1772
  %call386 = call ptr @Perl_hv_common_key_len(ptr noundef %59, ptr noundef %cond278, i32 noundef %spec.select1607, i32 noundef 64, ptr noundef null, i32 noundef 0) #7, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %call386, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1670
  br label %if.end388, !dbg !1773

if.end388:                                        ; preds = %cond.end362, %if.end377, %if.end289
  %isarev.1 = phi ptr [ %isarev.01555, %if.end289 ], [ %call386, %if.end377 ], [ %isarev.01555, %cond.end362 ], !dbg !1670
  %fetched_isarev.1 = phi i8 [ %fetched_isarev.01556, %if.end289 ], [ 1, %if.end377 ], [ %fetched_isarev.01556, %cond.end362 ], !dbg !1670
  call void @llvm.dbg.value(metadata i8 %fetched_isarev.1, metadata !1591, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.1, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #7, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1594, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %dec1557, metadata !1588, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1670
  %tobool265.not = icmp eq i32 %dec1557, 0, !dbg !1742
  br i1 %tobool265.not, label %check_stash, label %while.body, !dbg !1742, !llvm.loop !1775

check_stash:                                      ; preds = %if.end388, %if.end264, %if.then69, %if.end109, %land.lhs.true113, %land.lhs.true121, %land.end
  %svp.4 = phi ptr [ null, %land.end ], [ null, %if.then69 ], [ null, %land.lhs.true121 ], [ null, %land.lhs.true113 ], [ null, %if.end109 ], [ %36, %if.end264 ], [ %incdec.ptr, %if.end388 ], !dbg !1776
  %isarev.4 = phi ptr [ null, %land.end ], [ null, %if.then69 ], [ null, %land.lhs.true121 ], [ null, %land.lhs.true113 ], [ null, %if.end109 ], [ null, %if.end264 ], [ %isarev.1, %if.end388 ], !dbg !1777
  %fetched_isarev.4 = phi i8 [ 0, %land.end ], [ 0, %if.then69 ], [ 0, %land.lhs.true121 ], [ 0, %land.lhs.true113 ], [ 0, %if.end109 ], [ 0, %if.end264 ], [ %fetched_isarev.1, %if.end388 ], !dbg !1778
  %items.4 = phi i32 [ 0, %land.end ], [ 0, %if.then69 ], [ 0, %land.lhs.true121 ], [ 0, %land.lhs.true113 ], [ 0, %if.end109 ], [ -1, %if.end264 ], [ -1, %if.end388 ], !dbg !1779
  call void @llvm.dbg.value(metadata i32 %items.4, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %fetched_isarev.4, metadata !1591, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.4, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.4, metadata !1594, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.label(metadata !1669), !dbg !1780
  %61 = load ptr, ptr %stash.addr, align 8, !dbg !1781
  call void @llvm.dbg.value(metadata ptr %61, metadata !1582, metadata !DIExpression()), !dbg !1670
  %tobool392.not = icmp eq ptr %61, null, !dbg !1781
  br i1 %tobool392.not, label %if.end494, label %if.then393, !dbg !1782

if.then393:                                       ; preds = %check_stash
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1584, metadata !DIExpression()), !dbg !1670
  %sv_flags394 = getelementptr inbounds %struct.sv, ptr %namesv, i64 0, i32 2, !dbg !1783
  %62 = load i32, ptr %sv_flags394, align 4, !dbg !1783
  %and395 = and i32 %62, 255, !dbg !1783
  %cmp396 = icmp eq i32 %and395, 11, !dbg !1785
  br i1 %cmp396, label %if.end405, label %while.body409.preheader, !dbg !1786

if.end405:                                        ; preds = %if.then393
  %63 = load ptr, ptr %namesv, align 8, !dbg !1787
  %xav_fill400 = getelementptr inbounds %struct.xpvav, ptr %63, i64 0, i32 2, !dbg !1787
  %64 = load i64, ptr %xav_fill400, align 8, !dbg !1787
  %65 = trunc i64 %64 to i32, !dbg !1787
  %conv402 = add i32 %65, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %conv402, metadata !1588, metadata !DIExpression()), !dbg !1670
  %sv_u403 = getelementptr inbounds %struct.av, ptr %namesv, i64 0, i32 3, !dbg !1789
  %66 = load ptr, ptr %sv_u403, align 8, !dbg !1789
  call void @llvm.dbg.value(metadata ptr %66, metadata !1594, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %conv402, metadata !1588, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1670
  %tobool408.not1561 = icmp eq i32 %conv402, 0, !dbg !1790
  br i1 %tobool408.not1561, label %while.end430, label %while.body409.preheader, !dbg !1790

while.body409.preheader:                          ; preds = %if.then393, %if.end405
  %dec4071563.in.ph = phi i32 [ 1, %if.then393 ], [ %conv402, %if.end405 ]
  %svp.61562.ph = phi ptr [ %namesv.addr, %if.then393 ], [ %66, %if.end405 ]
  br label %while.body409, !dbg !1790

while.body409:                                    ; preds = %while.body409.preheader, %cond.end427
  %dec4071563.in = phi i32 [ %dec4071563, %cond.end427 ], [ %dec4071563.in.ph, %while.body409.preheader ]
  %svp.61562 = phi ptr [ %incdec.ptr415, %cond.end427 ], [ %svp.61562.ph, %while.body409.preheader ]
  %dec4071563 = add nsw i32 %dec4071563.in, -1, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %svp.61562, metadata !1594, metadata !DIExpression()), !dbg !1670
  %67 = load ptr, ptr %svp.61562, align 8, !dbg !1792
  %sv_flags411 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2, !dbg !1792
  %68 = load i32, ptr %sv_flags411, align 4, !dbg !1792
  %and412 = and i32 %68, 536870912, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %and412, metadata !1607, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len413) #7, !dbg !1794
  %incdec.ptr415 = getelementptr inbounds ptr, ptr %svp.61562, i64 1, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %incdec.ptr415, metadata !1594, metadata !DIExpression()), !dbg !1670
  store ptr %67, ptr @PL_Sv, align 8, !dbg !1795
  %and417 = and i32 %68, 2098176, !dbg !1795
  %cmp418 = icmp eq i32 %and417, 1024, !dbg !1795
  br i1 %cmp418, label %cond.true420, label %cond.false425, !dbg !1795

cond.true420:                                     ; preds = %while.body409
  %69 = load ptr, ptr %67, align 8, !dbg !1795
  %xpv_cur422 = getelementptr inbounds %struct.xpv, ptr %69, i64 0, i32 2, !dbg !1795
  %70 = load i64, ptr %xpv_cur422, align 8, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %70, metadata !1611, metadata !DIExpression()), !dbg !1793
  store i64 %70, ptr %len413, align 8, !dbg !1795
  %sv_u423 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 3, !dbg !1795
  %71 = load ptr, ptr %sv_u423, align 8, !dbg !1795
  br label %cond.end427, !dbg !1795

cond.false425:                                    ; preds = %while.body409
  call void @llvm.dbg.value(metadata ptr %len413, metadata !1611, metadata !DIExpression(DW_OP_deref)), !dbg !1793
  %call426 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %67, ptr noundef nonnull %len413, i32 noundef 34) #7, !dbg !1795
  %.pre = load i64, ptr %len413, align 8, !dbg !1796
  br label %cond.end427, !dbg !1795

cond.end427:                                      ; preds = %cond.false425, %cond.true420
  %72 = phi i64 [ %70, %cond.true420 ], [ %.pre, %cond.false425 ], !dbg !1796
  %cond428 = phi ptr [ %71, %cond.true420 ], [ %call426, %cond.false425 ], !dbg !1795
  call void @llvm.dbg.value(metadata ptr %cond428, metadata !1612, metadata !DIExpression()), !dbg !1793
  %73 = load ptr, ptr %stash.addr, align 8, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %73, metadata !1582, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 %72, metadata !1611, metadata !DIExpression()), !dbg !1793
  %conv429 = trunc i64 %72 to i32, !dbg !1796
  call void @Perl_hv_ename_add(ptr noundef %73, ptr noundef %cond428, i32 noundef %conv429, i32 noundef %and412) #7, !dbg !1796
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len413) #7, !dbg !1797
  call void @llvm.dbg.value(metadata ptr %incdec.ptr415, metadata !1594, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %dec4071563, metadata !1588, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1670
  %tobool408.not = icmp eq i32 %dec4071563, 0, !dbg !1790
  br i1 %tobool408.not, label %while.end430, label %while.body409, !dbg !1790, !llvm.loop !1798

while.end430:                                     ; preds = %cond.end427, %if.end405
  %svp.6.lcssa = phi ptr [ %66, %if.end405 ], [ %incdec.ptr415, %cond.end427 ], !dbg !1799
  call void @llvm.dbg.value(metadata ptr %stash.addr, metadata !1582, metadata !DIExpression(DW_OP_deref)), !dbg !1670
  %call431 = call ptr @Perl_hv_common(ptr noundef %seen_stashes, ptr noundef null, ptr noundef nonnull %stash.addr, i64 noundef 8, i32 noundef 0, i32 noundef 144, ptr noundef null, i32 noundef 0) #7, !dbg !1800
  call void @llvm.dbg.value(metadata ptr %call431, metadata !1586, metadata !DIExpression()), !dbg !1670
  %he_valu432 = getelementptr inbounds %struct.he, ptr %call431, i64 0, i32 2, !dbg !1801
  %74 = load ptr, ptr %he_valu432, align 8, !dbg !1801
  %cmp433 = icmp eq ptr %74, @PL_sv_yes, !dbg !1802
  %cmp437 = icmp eq ptr %74, @PL_sv_no
  %or.cond1477 = or i1 %cmp433, %cmp437, !dbg !1803
  br i1 %or.cond1477, label %if.then439, label %if.else440, !dbg !1803

if.then439:                                       ; preds = %while.end430
  call void @llvm.dbg.value(metadata ptr null, metadata !1582, metadata !DIExpression()), !dbg !1670
  store ptr null, ptr %stash.addr, align 8, !dbg !1804
  br label %if.end494, !dbg !1805

if.else440:                                       ; preds = %while.end430
  %cmp442 = icmp eq ptr %74, @PL_sv_undef, !dbg !1806
  %cond444 = select i1 %cmp442, ptr @PL_sv_yes, ptr @PL_sv_no, !dbg !1807
  store ptr %cond444, ptr %he_valu432, align 8, !dbg !1808
  br i1 %7, label %if.end494, label %if.then447, !dbg !1809

if.then447:                                       ; preds = %if.else440
  %75 = load ptr, ptr %stash.addr, align 8, !dbg !1810
  call void @llvm.dbg.value(metadata ptr %75, metadata !1582, metadata !DIExpression()), !dbg !1670
  %sv_u449 = getelementptr inbounds %struct.hv, ptr %75, i64 0, i32 3, !dbg !1810
  %76 = load ptr, ptr %sv_u449, align 8, !dbg !1810
  %77 = load ptr, ptr %75, align 8, !dbg !1810
  %xhv_max451 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 3, !dbg !1810
  %78 = load i64, ptr %xhv_max451, align 8, !dbg !1810
  %add452 = add i64 %78, 1, !dbg !1810
  %arrayidx453 = getelementptr inbounds ptr, ptr %76, i64 %add452, !dbg !1810
  %xhv_mro_meta454 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx453, i64 0, i32 5, !dbg !1810
  %79 = load ptr, ptr %xhv_mro_meta454, align 8, !dbg !1810
  %tobool455.not = icmp eq ptr %79, null, !dbg !1810
  br i1 %tobool455.not, label %cond.false463, label %cond.end465, !dbg !1810

cond.false463:                                    ; preds = %if.then447
  call void @llvm.dbg.value(metadata ptr %75, metadata !873, metadata !DIExpression()) #7, !dbg !1811
  %call.i1488 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1813
  call void @llvm.dbg.value(metadata ptr %call.i1488, metadata !874, metadata !DIExpression()) #7, !dbg !1811
  %80 = load ptr, ptr %sv_u449, align 8, !dbg !1814
  %81 = load ptr, ptr %75, align 8, !dbg !1814
  %xhv_max.i1490 = getelementptr inbounds %struct.xpvhv, ptr %81, i64 0, i32 3, !dbg !1814
  %82 = load i64, ptr %xhv_max.i1490, align 8, !dbg !1814
  %add.i1491 = add i64 %82, 1, !dbg !1814
  %arrayidx.i1492 = getelementptr inbounds ptr, ptr %80, i64 %add.i1491, !dbg !1814
  %xhv_mro_meta.i1493 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i1492, i64 0, i32 5, !dbg !1815
  store ptr %call.i1488, ptr %xhv_mro_meta.i1493, align 8, !dbg !1816
  %cache_gen.i1494 = getelementptr inbounds %struct.mro_meta, ptr %call.i1488, i64 0, i32 3, !dbg !1817
  store i32 1, ptr %cache_gen.i1494, align 8, !dbg !1818
  %pkg_gen.i1495 = getelementptr inbounds %struct.mro_meta, ptr %call.i1488, i64 0, i32 4, !dbg !1819
  store i32 1, ptr %pkg_gen.i1495, align 4, !dbg !1820
  %mro_which.i1496 = getelementptr inbounds %struct.mro_meta, ptr %call.i1488, i64 0, i32 5, !dbg !1821
  store ptr @dfs_alg, ptr %mro_which.i1496, align 8, !dbg !1822
  br label %cond.end465, !dbg !1810

cond.end465:                                      ; preds = %if.then447, %cond.false463
  %cond466 = phi ptr [ %call.i1488, %cond.false463 ], [ %79, %if.then447 ], !dbg !1810
  call void @llvm.dbg.value(metadata ptr %cond466, metadata !1613, metadata !DIExpression()), !dbg !1823
  %isa467 = getelementptr inbounds %struct.mro_meta, ptr %cond466, i64 0, i32 6, !dbg !1824
  %83 = load ptr, ptr %isa467, align 8, !dbg !1824
  %tobool468.not = icmp eq ptr %83, null, !dbg !1824
  br i1 %tobool468.not, label %cond.end475, label %cond.true469, !dbg !1824

cond.true469:                                     ; preds = %cond.end465
  %sv_refcnt471 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 1, !dbg !1824
  %84 = load i32, ptr %sv_refcnt471, align 8, !dbg !1824
  %inc472 = add i32 %84, 1, !dbg !1824
  store i32 %inc472, ptr %sv_refcnt471, align 8, !dbg !1824
  %85 = load ptr, ptr %isa467, align 8, !dbg !1824
  br label %cond.end475, !dbg !1824

cond.end475:                                      ; preds = %cond.end465, %cond.true469
  %cond476 = phi ptr [ %85, %cond.true469 ], [ @PL_sv_yes, %cond.end465 ], !dbg !1824
  call void @llvm.dbg.value(metadata ptr %stash.addr, metadata !1582, metadata !DIExpression(DW_OP_deref)), !dbg !1670
  %call477 = call ptr @Perl_hv_common_key_len(ptr noundef %stashes, ptr noundef nonnull %stash.addr, i32 noundef 8, i32 noundef 36, ptr noundef %cond476, i32 noundef 0) #7, !dbg !1824
  %86 = load ptr, ptr %cond466, align 8, !dbg !1825
  %tobool479.not = icmp eq ptr %86, null, !dbg !1825
  br i1 %tobool479.not, label %if.else484, label %if.then.i1500, !dbg !1827

if.then.i1500:                                    ; preds = %cond.end475
  call void @llvm.dbg.value(metadata ptr %86, metadata !960, metadata !DIExpression()) #7, !dbg !1828
  %sv_refcnt.i1498 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 1, !dbg !1831
  %87 = load i32, ptr %sv_refcnt.i1498, align 8, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %87, metadata !963, metadata !DIExpression()) #7, !dbg !1832
  %cmp1.i1499 = icmp ugt i32 %87, 1, !dbg !1833
  br i1 %cmp1.i1499, label %if.then4.i1502, label %if.else.i1503, !dbg !1834

if.then4.i1502:                                   ; preds = %if.then.i1500
  %sub.i1501 = add i32 %87, -1, !dbg !1835
  store i32 %sub.i1501, ptr %sv_refcnt.i1498, align 8, !dbg !1836
  br label %S_SvREFCNT_dec.exit1504, !dbg !1837

if.else.i1503:                                    ; preds = %if.then.i1500
  call void @Perl_sv_free2(ptr noundef nonnull %86, i32 noundef %87) #7, !dbg !1838
  br label %S_SvREFCNT_dec.exit1504

S_SvREFCNT_dec.exit1504:                          ; preds = %if.then4.i1502, %if.else.i1503
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cond466, i8 0, i64 16, i1 false), !dbg !1839
  br label %if.end494, !dbg !1839

if.else484:                                       ; preds = %cond.end475
  %mro_linear_current485 = getelementptr inbounds %struct.mro_meta, ptr %cond466, i64 0, i32 1, !dbg !1840
  %88 = load ptr, ptr %mro_linear_current485, align 8, !dbg !1840
  %tobool486.not = icmp eq ptr %88, null, !dbg !1840
  br i1 %tobool486.not, label %if.end494, label %if.then.i1508, !dbg !1825

if.then.i1508:                                    ; preds = %if.else484
  call void @llvm.dbg.value(metadata ptr %88, metadata !960, metadata !DIExpression()) #7, !dbg !1842
  %sv_refcnt.i1506 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 1, !dbg !1845
  %89 = load i32, ptr %sv_refcnt.i1506, align 8, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %89, metadata !963, metadata !DIExpression()) #7, !dbg !1846
  %cmp1.i1507 = icmp ugt i32 %89, 1, !dbg !1847
  br i1 %cmp1.i1507, label %if.then4.i1510, label %if.else.i1511, !dbg !1848

if.then4.i1510:                                   ; preds = %if.then.i1508
  %sub.i1509 = add i32 %89, -1, !dbg !1849
  store i32 %sub.i1509, ptr %sv_refcnt.i1506, align 8, !dbg !1850
  br label %S_SvREFCNT_dec.exit1512, !dbg !1851

if.else.i1511:                                    ; preds = %if.then.i1508
  call void @Perl_sv_free2(ptr noundef nonnull %88, i32 noundef %89) #7, !dbg !1852
  br label %S_SvREFCNT_dec.exit1512

S_SvREFCNT_dec.exit1512:                          ; preds = %if.then4.i1510, %if.else.i1511
  store ptr null, ptr %mro_linear_current485, align 8, !dbg !1853
  br label %if.end494, !dbg !1853

if.end494:                                        ; preds = %S_SvREFCNT_dec.exit1504, %S_SvREFCNT_dec.exit1512, %if.else484, %if.then439, %if.else440, %check_stash
  %svp.7 = phi ptr [ %svp.6.lcssa, %if.then439 ], [ %svp.6.lcssa, %if.else440 ], [ %svp.4, %check_stash ], [ %svp.6.lcssa, %if.else484 ], [ %svp.6.lcssa, %S_SvREFCNT_dec.exit1512 ], [ %svp.6.lcssa, %S_SvREFCNT_dec.exit1504 ], !dbg !1670
  %items.7 = phi i32 [ -1, %if.then439 ], [ -1, %if.else440 ], [ %items.4, %check_stash ], [ -1, %if.else484 ], [ -1, %S_SvREFCNT_dec.exit1512 ], [ -1, %S_SvREFCNT_dec.exit1504 ], !dbg !1670
  call void @llvm.dbg.value(metadata i32 %items.7, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.7, metadata !1594, metadata !DIExpression()), !dbg !1670
  %90 = load ptr, ptr %stash.addr, align 8, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %90, metadata !1582, metadata !DIExpression()), !dbg !1670
  %tobool495 = icmp ne ptr %90, null, !dbg !1854
  %91 = load ptr, ptr %oldstash.addr, align 8
  call void @llvm.dbg.value(metadata ptr %91, metadata !1583, metadata !DIExpression()), !dbg !1670
  %tobool497 = icmp ne ptr %91, null
  %or.cond = select i1 %tobool495, i1 true, i1 %tobool497, !dbg !1856
  br i1 %or.cond, label %if.end499, label %cleanup1241, !dbg !1856

if.end499:                                        ; preds = %if.end494
  %92 = and i8 %fetched_isarev.4, 1, !dbg !1857
  %tobool500.not = icmp eq i8 %92, 0, !dbg !1857
  br i1 %tobool500.not, label %if.then501, label %if.end603, !dbg !1858

if.then501:                                       ; preds = %if.end499
  br i1 %tobool497, label %if.then503, label %if.else589, !dbg !1859

if.then503:                                       ; preds = %if.then501
  %sv_flags504 = getelementptr inbounds %struct.hv, ptr %91, i64 0, i32 2, !dbg !1860
  %93 = load i32, ptr %sv_flags504, align 4, !dbg !1860
  %and505 = and i32 %93, 33554432, !dbg !1860
  %tobool506.not = icmp ne i32 %and505, 0, !dbg !1860
  call void @llvm.assume(i1 %tobool506.not), !dbg !1860
  %sv_u508 = getelementptr inbounds %struct.hv, ptr %91, i64 0, i32 3, !dbg !1860
  %94 = load ptr, ptr %sv_u508, align 8, !dbg !1860
  %95 = load ptr, ptr %91, align 8, !dbg !1860
  %xhv_max510 = getelementptr inbounds %struct.xpvhv, ptr %95, i64 0, i32 3, !dbg !1860
  %96 = load i64, ptr %xhv_max510, align 8, !dbg !1860
  %add511 = add i64 %96, 1, !dbg !1860
  %arrayidx512 = getelementptr inbounds ptr, ptr %94, i64 %add511, !dbg !1860
  %97 = load ptr, ptr %arrayidx512, align 8, !dbg !1860, !nonnull !688
  %xhv_name_count521 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx512, i64 0, i32 4, !dbg !1860
  %98 = load i32, ptr %xhv_name_count521, align 4, !dbg !1860
  %cmp522 = icmp sgt i32 %98, 0, !dbg !1860
  br i1 %cmp522, label %cond.true524, label %cond.false532, !dbg !1860

cond.true524:                                     ; preds = %if.then503
  %99 = load ptr, ptr %97, align 8, !dbg !1860
  br label %cond.end573, !dbg !1860

cond.false532:                                    ; preds = %if.then503
  %cmp539 = icmp slt i32 %98, -1, !dbg !1860
  br i1 %cmp539, label %cond.true541, label %cond.false549, !dbg !1860

cond.true541:                                     ; preds = %cond.false532
  %arrayidx548 = getelementptr inbounds ptr, ptr %97, i64 1, !dbg !1860
  %100 = load ptr, ptr %arrayidx548, align 8, !dbg !1860
  br label %cond.end573, !dbg !1860

cond.false549:                                    ; preds = %cond.false532
  %cmp556 = icmp ne i32 %98, -1, !dbg !1860
  call void @llvm.assume(i1 %cmp556), !dbg !1860
  br label %cond.end573, !dbg !1860

cond.end573:                                      ; preds = %cond.true524, %cond.false549, %cond.true541
  %cond574 = phi ptr [ %99, %cond.true524 ], [ %100, %cond.true541 ], [ %97, %cond.false549 ], !dbg !1860
  call void @llvm.dbg.value(metadata ptr %cond574, metadata !1618, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1670
  %101 = load ptr, ptr @PL_isarev, align 8, !dbg !1862
  %hek_key575 = getelementptr inbounds %struct.hek, ptr %cond574, i64 0, i32 2, !dbg !1862
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond574, i64 0, i32 1, !dbg !1862
  %102 = load i32, ptr %hek_len, align 4, !dbg !1862
  %conv577 = sext i32 %102 to i64, !dbg !1862
  %add.ptr581 = getelementptr inbounds i8, ptr %hek_key575, i64 %conv577, !dbg !1862
  %add.ptr582 = getelementptr inbounds i8, ptr %add.ptr581, i64 1, !dbg !1862
  %103 = load i8, ptr %add.ptr582, align 1, !dbg !1862
  %104 = and i8 %103, 1, !dbg !1862
  %and584 = zext i8 %104 to i32, !dbg !1862
  %105 = load i32, ptr %cond574, align 4, !dbg !1862
  %call585 = call ptr @Perl_hv_common(ptr noundef %101, ptr noundef null, ptr noundef nonnull %hek_key575, i64 noundef %conv577, i32 noundef %and584, i32 noundef 32, ptr noundef null, i32 noundef %105) #7, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %call585, metadata !1594, metadata !DIExpression()), !dbg !1670
  %tobool586.not = icmp eq ptr %call585, null, !dbg !1863
  br i1 %tobool586.not, label %if.end603, label %if.then587, !dbg !1865

if.then587:                                       ; preds = %cond.end573
  %106 = load ptr, ptr %call585, align 8, !dbg !1866
  call void @llvm.dbg.value(metadata ptr %106, metadata !1593, metadata !DIExpression()), !dbg !1670
  br label %if.end603, !dbg !1867

if.else589:                                       ; preds = %if.then501
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1584, metadata !DIExpression()), !dbg !1670
  %sv_flags590 = getelementptr inbounds %struct.sv, ptr %namesv, i64 0, i32 2, !dbg !1868
  %107 = load i32, ptr %sv_flags590, align 4, !dbg !1868
  %and591 = and i32 %107, 255, !dbg !1868
  %cmp592 = icmp eq i32 %and591, 11, !dbg !1870
  br i1 %cmp592, label %if.then594, label %if.end603, !dbg !1871

if.then594:                                       ; preds = %if.else589
  %108 = load ptr, ptr %namesv, align 8, !dbg !1872
  %xav_fill596 = getelementptr inbounds %struct.xpvav, ptr %108, i64 0, i32 2, !dbg !1872
  %109 = load i64, ptr %xav_fill596, align 8, !dbg !1872
  %110 = trunc i64 %109 to i32, !dbg !1872
  %conv598 = add i32 %110, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %conv598, metadata !1588, metadata !DIExpression()), !dbg !1670
  %sv_u599 = getelementptr inbounds %struct.av, ptr %namesv, i64 0, i32 3, !dbg !1874
  %111 = load ptr, ptr %sv_u599, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %111, metadata !1594, metadata !DIExpression()), !dbg !1670
  br label %if.end603, !dbg !1875

if.end603:                                        ; preds = %if.else589, %cond.end573, %if.then587, %if.then594, %if.end499
  %svp.8 = phi ptr [ %svp.7, %if.end499 ], [ %111, %if.then594 ], [ %call585, %if.then587 ], [ null, %cond.end573 ], [ %namesv.addr, %if.else589 ], !dbg !1670
  %isarev.6 = phi ptr [ %isarev.4, %if.end499 ], [ %isarev.4, %if.then594 ], [ %106, %if.then587 ], [ %isarev.4, %cond.end573 ], [ %isarev.4, %if.else589 ], !dbg !1670
  %fetched_isarev.5 = phi i8 [ %fetched_isarev.4, %if.end499 ], [ %fetched_isarev.4, %if.then594 ], [ 1, %if.then587 ], [ 1, %cond.end573 ], [ %fetched_isarev.4, %if.else589 ], !dbg !1670
  %items.8 = phi i32 [ %items.7, %if.end499 ], [ %conv598, %if.then594 ], [ %items.7, %if.then587 ], [ %items.7, %cond.end573 ], [ 1, %if.else589 ], !dbg !1670
  call void @llvm.dbg.value(metadata i32 %items.8, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %fetched_isarev.5, metadata !1591, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.6, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.8, metadata !1594, metadata !DIExpression()), !dbg !1670
  %tobool604.not = icmp ne ptr %isarev.6, null, !dbg !1876
  %112 = and i8 %fetched_isarev.5, 1
  %tobool606.not = icmp eq i8 %112, 0
  %or.cond1478 = select i1 %tobool604.not, i1 true, i1 %tobool606.not, !dbg !1877
  br i1 %or.cond1478, label %while.cond608.preheader, label %if.end694, !dbg !1877

while.cond608.preheader:                          ; preds = %if.end603
  %113 = shl nuw nsw i8 %112, 3
  br label %while.cond608, !dbg !1878

while.cond608:                                    ; preds = %while.cond608.preheader, %cleanup690
  %svp.9 = phi ptr [ %svp.11, %cleanup690 ], [ %svp.8, %while.cond608.preheader ], !dbg !1879
  %isarev.7 = phi ptr [ %isarev.11, %cleanup690 ], [ %isarev.6, %while.cond608.preheader ], !dbg !1777
  %items.9 = phi i32 [ %items.101539, %cleanup690 ], [ %items.8, %while.cond608.preheader ], !dbg !1791
  call void @llvm.dbg.value(metadata i32 %items.9, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.7, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.9, metadata !1594, metadata !DIExpression()), !dbg !1670
  br i1 %tobool606.not, label %lor.rhs, label %if.end627, !dbg !1878

lor.rhs:                                          ; preds = %while.cond608
  %dec611 = add nsw i32 %items.9, -1, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %dec611, metadata !1588, metadata !DIExpression()), !dbg !1670
  %tobool612.not = icmp eq i32 %items.9, 0, !dbg !1878
  br i1 %tobool612.not, label %if.end694, label %if.then615, !dbg !1881

if.then615:                                       ; preds = %lor.rhs
  call void @llvm.dbg.value(metadata i32 undef, metadata !1588, metadata !DIExpression()), !dbg !1670
  %114 = load ptr, ptr @PL_isarev, align 8, !dbg !1882
  %incdec.ptr616 = getelementptr inbounds ptr, ptr %svp.9, i64 1, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %incdec.ptr616, metadata !1594, metadata !DIExpression()), !dbg !1670
  %115 = load ptr, ptr %svp.9, align 8, !dbg !1882
  %call617 = call ptr @Perl_hv_common(ptr noundef %114, ptr noundef %115, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #7, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %call617, metadata !1627, metadata !DIExpression()), !dbg !1883
  %tobool618.not = icmp eq ptr %call617, null, !dbg !1884
  br i1 %tobool618.not, label %cleanup690, label %lor.lhs.false619, !dbg !1886, !llvm.loop !1887

lor.lhs.false619:                                 ; preds = %if.then615
  %he_valu620 = getelementptr inbounds %struct.he, ptr %call617, i64 0, i32 2, !dbg !1889
  %116 = load ptr, ptr %he_valu620, align 8, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %116, metadata !1593, metadata !DIExpression()), !dbg !1670
  %tobool621.not = icmp eq ptr %116, null, !dbg !1890
  br i1 %tobool621.not, label %cleanup690, label %if.end627, !dbg !1891, !llvm.loop !1887

if.end627:                                        ; preds = %lor.lhs.false619, %while.cond608
  %items.101540 = phi i32 [ %items.9, %while.cond608 ], [ %dec611, %lor.lhs.false619 ]
  %svp.10 = phi ptr [ %svp.9, %while.cond608 ], [ %incdec.ptr616, %lor.lhs.false619 ], !dbg !1670
  %isarev.10 = phi ptr [ %isarev.7, %while.cond608 ], [ %116, %lor.lhs.false619 ], !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.10, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.10, metadata !1594, metadata !DIExpression()), !dbg !1670
  %call628 = call i32 @Perl_hv_iterinit(ptr noundef %isarev.10) #7, !dbg !1892
  %call6301565 = call ptr @Perl_hv_iternext_flags(ptr noundef %isarev.10, i32 noundef 0) #7, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %call6301565, metadata !1623, metadata !DIExpression()), !dbg !1894
  %tobool631.not1566 = icmp eq ptr %call6301565, null, !dbg !1895
  br i1 %tobool631.not1566, label %cleanup690, label %while.body632, !dbg !1895

while.body632:                                    ; preds = %if.end627, %cleanup682
  %call6301567 = phi ptr [ %call630, %cleanup682 ], [ %call6301565, %if.end627 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %revstash) #7, !dbg !1896
  %call633 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %call6301567) #7, !dbg !1897
  %call634 = call ptr @Perl_gv_stashsv(ptr noundef %call633, i32 noundef 0) #7, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %call634, metadata !1630, metadata !DIExpression()), !dbg !1898
  store ptr %call634, ptr %revstash, align 8, !dbg !1899
  %tobool636.not = icmp eq ptr %call634, null, !dbg !1900
  br i1 %tobool636.not, label %cleanup682, label %if.end638, !dbg !1902, !llvm.loop !1903

if.end638:                                        ; preds = %while.body632
  %sv_u639 = getelementptr inbounds %struct.hv, ptr %call634, i64 0, i32 3, !dbg !1905
  %117 = load ptr, ptr %sv_u639, align 8, !dbg !1905
  %118 = load ptr, ptr %call634, align 8, !dbg !1905
  %xhv_max641 = getelementptr inbounds %struct.xpvhv, ptr %118, i64 0, i32 3, !dbg !1905
  %119 = load i64, ptr %xhv_max641, align 8, !dbg !1905
  %add642 = add i64 %119, 1, !dbg !1905
  %arrayidx643 = getelementptr inbounds ptr, ptr %117, i64 %add642, !dbg !1905
  %xhv_mro_meta644 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx643, i64 0, i32 5, !dbg !1905
  %120 = load ptr, ptr %xhv_mro_meta644, align 8, !dbg !1905
  %tobool645.not = icmp eq ptr %120, null, !dbg !1905
  br i1 %tobool645.not, label %cond.false653, label %cond.end655, !dbg !1905

cond.false653:                                    ; preds = %if.end638
  call void @llvm.dbg.value(metadata ptr %call634, metadata !873, metadata !DIExpression()) #7, !dbg !1906
  %call.i1513 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !1908
  call void @llvm.dbg.value(metadata ptr %call.i1513, metadata !874, metadata !DIExpression()) #7, !dbg !1906
  %121 = load ptr, ptr %sv_u639, align 8, !dbg !1909
  %122 = load ptr, ptr %call634, align 8, !dbg !1909
  %xhv_max.i1515 = getelementptr inbounds %struct.xpvhv, ptr %122, i64 0, i32 3, !dbg !1909
  %123 = load i64, ptr %xhv_max.i1515, align 8, !dbg !1909
  %add.i1516 = add i64 %123, 1, !dbg !1909
  %arrayidx.i1517 = getelementptr inbounds ptr, ptr %121, i64 %add.i1516, !dbg !1909
  %xhv_mro_meta.i1518 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i1517, i64 0, i32 5, !dbg !1910
  store ptr %call.i1513, ptr %xhv_mro_meta.i1518, align 8, !dbg !1911
  %cache_gen.i1519 = getelementptr inbounds %struct.mro_meta, ptr %call.i1513, i64 0, i32 3, !dbg !1912
  store i32 1, ptr %cache_gen.i1519, align 8, !dbg !1913
  %pkg_gen.i1520 = getelementptr inbounds %struct.mro_meta, ptr %call.i1513, i64 0, i32 4, !dbg !1914
  store i32 1, ptr %pkg_gen.i1520, align 4, !dbg !1915
  %mro_which.i1521 = getelementptr inbounds %struct.mro_meta, ptr %call.i1513, i64 0, i32 5, !dbg !1916
  store ptr @dfs_alg, ptr %mro_which.i1521, align 8, !dbg !1917
  br label %cond.end655, !dbg !1905

cond.end655:                                      ; preds = %if.end638, %cond.false653
  %cond656 = phi ptr [ %call.i1513, %cond.false653 ], [ %120, %if.end638 ], !dbg !1905
  call void @llvm.dbg.value(metadata ptr %cond656, metadata !1632, metadata !DIExpression()), !dbg !1898
  %isa657 = getelementptr inbounds %struct.mro_meta, ptr %cond656, i64 0, i32 6, !dbg !1918
  %124 = load ptr, ptr %isa657, align 8, !dbg !1918
  %tobool658.not = icmp eq ptr %124, null, !dbg !1918
  br i1 %tobool658.not, label %cond.end665, label %cond.true659, !dbg !1918

cond.true659:                                     ; preds = %cond.end655
  %sv_refcnt661 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 1, !dbg !1918
  %125 = load i32, ptr %sv_refcnt661, align 8, !dbg !1918
  %inc662 = add i32 %125, 1, !dbg !1918
  store i32 %inc662, ptr %sv_refcnt661, align 8, !dbg !1918
  %126 = load ptr, ptr %isa657, align 8, !dbg !1918
  br label %cond.end665, !dbg !1918

cond.end665:                                      ; preds = %cond.end655, %cond.true659
  %cond666 = phi ptr [ %126, %cond.true659 ], [ @PL_sv_yes, %cond.end655 ], !dbg !1918
  call void @llvm.dbg.value(metadata ptr %revstash, metadata !1630, metadata !DIExpression(DW_OP_deref)), !dbg !1898
  %call667 = call ptr @Perl_hv_common_key_len(ptr noundef %stashes, ptr noundef nonnull %revstash, i32 noundef 8, i32 noundef 36, ptr noundef %cond666, i32 noundef 0) #7, !dbg !1918
  %127 = load ptr, ptr %cond656, align 8, !dbg !1919
  %tobool669.not = icmp eq ptr %127, null, !dbg !1919
  br i1 %tobool669.not, label %if.else674, label %if.then.i1525, !dbg !1921

if.then.i1525:                                    ; preds = %cond.end665
  call void @llvm.dbg.value(metadata ptr %127, metadata !960, metadata !DIExpression()) #7, !dbg !1922
  %sv_refcnt.i1523 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 1, !dbg !1925
  %128 = load i32, ptr %sv_refcnt.i1523, align 8, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %128, metadata !963, metadata !DIExpression()) #7, !dbg !1926
  %cmp1.i1524 = icmp ugt i32 %128, 1, !dbg !1927
  br i1 %cmp1.i1524, label %if.then4.i1527, label %if.else.i1528, !dbg !1928

if.then4.i1527:                                   ; preds = %if.then.i1525
  %sub.i1526 = add i32 %128, -1, !dbg !1929
  store i32 %sub.i1526, ptr %sv_refcnt.i1523, align 8, !dbg !1930
  br label %S_SvREFCNT_dec.exit1529, !dbg !1931

if.else.i1528:                                    ; preds = %if.then.i1525
  call void @Perl_sv_free2(ptr noundef nonnull %127, i32 noundef %128) #7, !dbg !1932
  br label %S_SvREFCNT_dec.exit1529

S_SvREFCNT_dec.exit1529:                          ; preds = %if.then4.i1527, %if.else.i1528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cond656, i8 0, i64 16, i1 false), !dbg !1933
  br label %cleanup682, !dbg !1933

if.else674:                                       ; preds = %cond.end665
  %mro_linear_current675 = getelementptr inbounds %struct.mro_meta, ptr %cond656, i64 0, i32 1, !dbg !1934
  %129 = load ptr, ptr %mro_linear_current675, align 8, !dbg !1934
  %tobool676.not = icmp eq ptr %129, null, !dbg !1934
  br i1 %tobool676.not, label %cleanup682, label %if.then.i1533, !dbg !1919

if.then.i1533:                                    ; preds = %if.else674
  call void @llvm.dbg.value(metadata ptr %129, metadata !960, metadata !DIExpression()) #7, !dbg !1936
  %sv_refcnt.i1531 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 1, !dbg !1939
  %130 = load i32, ptr %sv_refcnt.i1531, align 8, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %130, metadata !963, metadata !DIExpression()) #7, !dbg !1940
  %cmp1.i1532 = icmp ugt i32 %130, 1, !dbg !1941
  br i1 %cmp1.i1532, label %if.then4.i1535, label %if.else.i1536, !dbg !1942

if.then4.i1535:                                   ; preds = %if.then.i1533
  %sub.i1534 = add i32 %130, -1, !dbg !1943
  store i32 %sub.i1534, ptr %sv_refcnt.i1531, align 8, !dbg !1944
  br label %S_SvREFCNT_dec.exit1537, !dbg !1945

if.else.i1536:                                    ; preds = %if.then.i1533
  call void @Perl_sv_free2(ptr noundef nonnull %129, i32 noundef %130) #7, !dbg !1946
  br label %S_SvREFCNT_dec.exit1537

S_SvREFCNT_dec.exit1537:                          ; preds = %if.then4.i1535, %if.else.i1536
  store ptr null, ptr %mro_linear_current675, align 8, !dbg !1947
  br label %cleanup682, !dbg !1947

cleanup682:                                       ; preds = %S_SvREFCNT_dec.exit1529, %S_SvREFCNT_dec.exit1537, %if.else674, %while.body632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %revstash) #7, !dbg !1904
  %call630 = call ptr @Perl_hv_iternext_flags(ptr noundef %isarev.10, i32 noundef 0) #7, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %call630, metadata !1623, metadata !DIExpression()), !dbg !1894
  %tobool631.not = icmp eq ptr %call630, null, !dbg !1895
  br i1 %tobool631.not, label %cleanup690, label %while.body632, !dbg !1895

cleanup690:                                       ; preds = %cleanup682, %if.end627, %if.then615, %lor.lhs.false619
  %items.101539 = phi i32 [ %dec611, %lor.lhs.false619 ], [ %dec611, %if.then615 ], [ %items.101540, %if.end627 ], [ %items.101540, %cleanup682 ]
  %cleanup.dest.slot.2.shrunk = phi i8 [ 7, %lor.lhs.false619 ], [ 7, %if.then615 ], [ %113, %if.end627 ], [ %113, %cleanup682 ]
  %svp.11 = phi ptr [ %incdec.ptr616, %lor.lhs.false619 ], [ %incdec.ptr616, %if.then615 ], [ %svp.10, %if.end627 ], [ %svp.10, %cleanup682 ], !dbg !1670
  %isarev.11 = phi ptr [ null, %lor.lhs.false619 ], [ %isarev.7, %if.then615 ], [ %isarev.10, %if.end627 ], [ %isarev.10, %cleanup682 ], !dbg !1670
  call void @llvm.dbg.value(metadata ptr %isarev.11, metadata !1593, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %svp.11, metadata !1594, metadata !DIExpression()), !dbg !1670
  %switch = icmp eq i8 %cleanup.dest.slot.2.shrunk, 8
  br i1 %switch, label %if.end694, label %while.cond608

if.end694:                                        ; preds = %cleanup690, %lor.rhs, %if.end603
  %131 = load ptr, ptr %oldstash.addr, align 8, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %131, metadata !1583, metadata !DIExpression()), !dbg !1670
  %tobool695.not = icmp eq ptr %131, null, !dbg !1948
  br i1 %tobool695.not, label %if.end1022, label %land.lhs.true696, !dbg !1949

land.lhs.true696:                                 ; preds = %if.end694
  %132 = load ptr, ptr %131, align 8, !dbg !1950
  %xhv_keys = getelementptr inbounds %struct.xpvhv, ptr %132, i64 0, i32 2, !dbg !1950
  %133 = load i64, ptr %xhv_keys, align 8, !dbg !1950
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %132, i64 0, i32 1, !dbg !1950
  %134 = load ptr, ptr %xmg_u, align 8, !dbg !1950
  %tobool699.not = icmp eq ptr %134, null, !dbg !1950
  br i1 %tobool699.not, label %cond.end703, label %cond.true700, !dbg !1950

cond.true700:                                     ; preds = %land.lhs.true696
  %call701 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %131) #7, !dbg !1950
  %phi.cast = sext i32 %call701 to i64, !dbg !1950
  br label %cond.end703, !dbg !1950

cond.end703:                                      ; preds = %land.lhs.true696, %cond.true700
  %cond704 = phi i64 [ %phi.cast, %cond.true700 ], [ 0, %land.lhs.true696 ]
  %tobool707.not = icmp eq i64 %133, %cond704, !dbg !1950
  br i1 %tobool707.not, label %if.end1022, label %if.then708, !dbg !1951

if.then708:                                       ; preds = %cond.end703
  %135 = load ptr, ptr %oldstash.addr, align 8, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %135, metadata !1583, metadata !DIExpression()), !dbg !1670
  %136 = load ptr, ptr %135, align 8, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %136, metadata !1585, metadata !DIExpression()), !dbg !1670
  %call710 = call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !1953
  %call711 = call ptr @Perl_sv_2mortal(ptr noundef %call710) #7, !dbg !1953
  call void @llvm.dbg.value(metadata ptr %call711, metadata !1592, metadata !DIExpression()), !dbg !1670
  %xhv_max714 = getelementptr inbounds %struct.xpvhv, ptr %136, i64 0, i32 3
  call void @llvm.dbg.value(metadata i32 0, metadata !1587, metadata !DIExpression()), !dbg !1670
  %137 = load i64, ptr %xhv_max714, align 8, !dbg !1954
  %138 = and i64 %137, 2147483648, !dbg !1955
  %cmp716.not.not1576 = icmp eq i64 %138, 0, !dbg !1955
  br i1 %cmp716.not.not1576, label %while.body718.lr.ph, label %if.end1022, !dbg !1956

while.body718.lr.ph:                              ; preds = %if.then708
  %139 = load ptr, ptr %namesv.addr, align 8
  %sv_flags894 = getelementptr inbounds %struct.sv, ptr %139, i64 0, i32 2
  %sv_u903 = getelementptr inbounds %struct.av, ptr %139, i64 0, i32 3
  br label %while.body718, !dbg !1956

while.cond712.loopexit.loopexit:                  ; preds = %cleanup1017
  %.pre1592 = load i64, ptr %xhv_max714, align 8, !dbg !1954
  br label %while.cond712.loopexit, !dbg !1957

while.cond712.loopexit:                           ; preds = %while.cond712.loopexit.loopexit, %while.body718
  %140 = phi i64 [ %.pre1592, %while.cond712.loopexit.loopexit ], [ %142, %while.body718 ], !dbg !1954
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1587, metadata !DIExpression()), !dbg !1670
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1587, metadata !DIExpression()), !dbg !1670
  %sext1596 = shl i64 %140, 32, !dbg !1955
  %141 = ashr exact i64 %sext1596, 32, !dbg !1955
  %cmp716.not.not = icmp slt i64 %indvars.iv, %141, !dbg !1955
  br i1 %cmp716.not.not, label %while.body718, label %if.end1022, !dbg !1956, !llvm.loop !1958

while.body718:                                    ; preds = %while.body718.lr.ph, %while.cond712.loopexit
  %142 = phi i64 [ %137, %while.body718.lr.ph ], [ %140, %while.cond712.loopexit ]
  %indvars.iv = phi i64 [ 0, %while.body718.lr.ph ], [ %indvars.iv.next, %while.cond712.loopexit ]
  %143 = load ptr, ptr %oldstash.addr, align 8, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %143, metadata !1583, metadata !DIExpression()), !dbg !1670
  %sv_u719 = getelementptr inbounds %struct.hv, ptr %143, i64 0, i32 3, !dbg !1960
  %144 = load ptr, ptr %sv_u719, align 8, !dbg !1960
  %arrayidx720 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv, !dbg !1961
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1670
  %entry1.01572 = load ptr, ptr %arrayidx720, align 8, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %entry1.01572, metadata !1586, metadata !DIExpression()), !dbg !1670
  %tobool721.not1573 = icmp eq ptr %entry1.01572, null, !dbg !1963
  br i1 %tobool721.not1573, label %while.cond712.loopexit, label %for.body, !dbg !1963

for.body:                                         ; preds = %while.body718, %cleanup1017
  %entry1.01574 = phi ptr [ %entry1.0, %cleanup1017 ], [ %entry1.01572, %while.body718 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len722) #7, !dbg !1964
  %he_valu723 = getelementptr inbounds %struct.he, ptr %entry1.01574, i64 0, i32 2, !dbg !1965
  %145 = load ptr, ptr %he_valu723, align 8, !dbg !1965
  %sv_flags724 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 2, !dbg !1965
  %146 = load i32, ptr %sv_flags724, align 4, !dbg !1965
  %and725 = and i32 %146, 255, !dbg !1965
  %cmp726 = icmp eq i32 %and725, 9, !dbg !1965
  br i1 %cmp726, label %if.end729, label %cleanup1017, !dbg !1967

if.end729:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %len722, metadata !1640, metadata !DIExpression(DW_OP_deref)), !dbg !1968
  %call730 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %entry1.01574, ptr noundef nonnull %len722) #7, !dbg !1969
  call void @llvm.dbg.value(metadata ptr %call730, metadata !1633, metadata !DIExpression()), !dbg !1968
  %147 = load i32, ptr %len722, align 4, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %147, metadata !1640, metadata !DIExpression()), !dbg !1968
  %cmp731 = icmp sgt i32 %147, 1, !dbg !1971
  br i1 %cmp731, label %land.lhs.true733, label %lor.lhs.false747, !dbg !1972

land.lhs.true733:                                 ; preds = %if.end729
  %sub734 = add nsw i32 %147, -2, !dbg !1973
  %148 = zext i32 %sub734 to i64
  %arrayidx736 = getelementptr inbounds i8, ptr %call730, i64 %148, !dbg !1974
  %149 = load i8, ptr %arrayidx736, align 1, !dbg !1974
  %cmp738 = icmp eq i8 %149, 58, !dbg !1975
  br i1 %cmp738, label %land.lhs.true740, label %cleanup1017, !dbg !1976

land.lhs.true740:                                 ; preds = %land.lhs.true733
  %sub741 = add nsw i32 %147, -1, !dbg !1977
  %150 = zext i32 %sub741 to i64
  %arrayidx743 = getelementptr inbounds i8, ptr %call730, i64 %150, !dbg !1978
  %151 = load i8, ptr %arrayidx743, align 1, !dbg !1978
  %cmp745 = icmp eq i8 %151, 58, !dbg !1979
  br i1 %cmp745, label %if.then755, label %cleanup1017, !dbg !1980

lor.lhs.false747:                                 ; preds = %if.end729
  call void @llvm.dbg.value(metadata i32 %147, metadata !1640, metadata !DIExpression()), !dbg !1968
  %cmp748 = icmp eq i32 %147, 1, !dbg !1981
  br i1 %cmp748, label %land.lhs.true750, label %cleanup1017, !dbg !1982

land.lhs.true750:                                 ; preds = %lor.lhs.false747
  %152 = load i8, ptr %call730, align 1, !dbg !1983
  %cmp753 = icmp eq i8 %152, 58, !dbg !1984
  br i1 %cmp753, label %if.then755, label %cleanup1017, !dbg !1985

if.then755:                                       ; preds = %land.lhs.true750, %land.lhs.true740
  %153 = load ptr, ptr %he_valu723, align 8, !dbg !1986
  %sv_u757 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 3, !dbg !1986
  %154 = load ptr, ptr %sv_u757, align 8, !dbg !1986
  %gp_hv = getelementptr inbounds %struct.gp, ptr %154, i64 0, i32 5, !dbg !1986
  %155 = load ptr, ptr %gp_hv, align 8, !dbg !1986
  call void @llvm.dbg.value(metadata ptr %155, metadata !1641, metadata !DIExpression()), !dbg !1987
  %156 = load ptr, ptr %stash.addr, align 8, !dbg !1988
  call void @llvm.dbg.value(metadata ptr %156, metadata !1582, metadata !DIExpression()), !dbg !1670
  %tobool759.not = icmp eq ptr %156, null, !dbg !1988
  br i1 %tobool759.not, label %cond.end790.thread, label %cond.true760, !dbg !1988

cond.true760:                                     ; preds = %if.then755
  %hent_hek = getelementptr inbounds %struct.he, ptr %entry1.01574, i64 0, i32 1, !dbg !1989
  %157 = load ptr, ptr %hent_hek, align 8, !dbg !1989
  %hek_len761 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 1, !dbg !1989
  %158 = load i32, ptr %hek_len761, align 4, !dbg !1989
  %cmp762 = icmp eq i32 %158, -2, !dbg !1989
  %hek_key766 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 2, !dbg !1989
  br i1 %cmp762, label %cond.true764, label %cond.false771, !dbg !1989

cond.true764:                                     ; preds = %cond.true760
  %159 = load ptr, ptr %hek_key766, align 4, !dbg !1989
  %sv_flags768 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 2, !dbg !1989
  %160 = load i32, ptr %sv_flags768, align 4, !dbg !1989
  %and769 = and i32 %160, 536870912, !dbg !1989
  %tobool770.not = icmp eq i32 %and769, 0, !dbg !1989
  br i1 %tobool770.not, label %cond.end790, label %cond.true783, !dbg !1989

cond.false771:                                    ; preds = %cond.true760
  %idx.ext777 = sext i32 %158 to i64, !dbg !1989
  %add.ptr778 = getelementptr inbounds i8, ptr %hek_key766, i64 1, !dbg !1989
  %add.ptr779 = getelementptr inbounds i8, ptr %add.ptr778, i64 %idx.ext777, !dbg !1989
  %161 = load i8, ptr %add.ptr779, align 1, !dbg !1989
  %162 = and i8 %161, 1, !dbg !1989
  %tobool782.not = icmp eq i8 %162, 0, !dbg !1989
  br i1 %tobool782.not, label %cond.end790, label %cond.true783, !dbg !1989

cond.true783:                                     ; preds = %cond.false771, %cond.true764
  call void @llvm.dbg.value(metadata i32 %147, metadata !1640, metadata !DIExpression()), !dbg !1968
  %sub784 = sub nsw i32 0, %147, !dbg !1989
  br label %cond.end790, !dbg !1989

cond.end790:                                      ; preds = %cond.true783, %cond.false771, %cond.true764
  %cond787 = phi i32 [ %sub784, %cond.true783 ], [ %147, %cond.false771 ], [ %147, %cond.true764 ], !dbg !1989
  %call788 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %156, ptr noundef nonnull %call730, i32 noundef %cond787, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !1989
  call void @llvm.dbg.value(metadata ptr %call788, metadata !1644, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata ptr null, metadata !1645, metadata !DIExpression()), !dbg !1987
  %163 = load ptr, ptr %oldstash.addr, align 8, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %163, metadata !1583, metadata !DIExpression()), !dbg !1670
  %cmp792 = icmp eq ptr %155, %163, !dbg !1992
  br i1 %cmp792, label %cleanup1017, label %if.end795, !dbg !1993

cond.end790.thread:                               ; preds = %if.then755
  call void @llvm.dbg.value(metadata ptr %call788, metadata !1644, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata ptr null, metadata !1645, metadata !DIExpression()), !dbg !1987
  %164 = load ptr, ptr %oldstash.addr, align 8, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %163, metadata !1583, metadata !DIExpression()), !dbg !1670
  %cmp7921547 = icmp eq ptr %155, %164, !dbg !1992
  br i1 %cmp7921547, label %cleanup1017, label %lor.lhs.false809, !dbg !1993

if.end795:                                        ; preds = %cond.end790
  %tobool796.not = icmp eq ptr %call788, null, !dbg !1994
  br i1 %tobool796.not, label %lor.lhs.false809, label %land.lhs.true797, !dbg !1995

land.lhs.true797:                                 ; preds = %if.end795
  %165 = load ptr, ptr %call788, align 8, !dbg !1996
  %tobool798.not = icmp eq ptr %165, null, !dbg !1996
  br i1 %tobool798.not, label %lor.lhs.false809, label %land.lhs.true799, !dbg !1997

land.lhs.true799:                                 ; preds = %land.lhs.true797
  %sv_flags800 = getelementptr inbounds %struct.sv, ptr %165, i64 0, i32 2, !dbg !1998
  %166 = load i32, ptr %sv_flags800, align 4, !dbg !1998
  %and801 = and i32 %166, 255, !dbg !1998
  %cmp802 = icmp eq i32 %and801, 9, !dbg !1998
  br i1 %cmp802, label %land.lhs.true804, label %lor.lhs.false809, !dbg !1999

land.lhs.true804:                                 ; preds = %land.lhs.true799
  %sv_u805 = getelementptr inbounds %struct.sv, ptr %165, i64 0, i32 3, !dbg !2000
  %167 = load ptr, ptr %sv_u805, align 8, !dbg !2000
  %gp_hv807 = getelementptr inbounds %struct.gp, ptr %167, i64 0, i32 5, !dbg !2000
  %168 = load ptr, ptr %gp_hv807, align 8, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %168, metadata !1645, metadata !DIExpression()), !dbg !1987
  %tobool808.not = icmp eq ptr %168, null, !dbg !2001
  br i1 %tobool808.not, label %lor.lhs.false809, label %if.then893, !dbg !2002

lor.lhs.false809:                                 ; preds = %cond.end790.thread, %land.lhs.true804, %land.lhs.true799, %land.lhs.true797, %if.end795
  call void @llvm.dbg.value(metadata ptr null, metadata !1645, metadata !DIExpression()), !dbg !1987
  %tobool810.not = icmp eq ptr %155, null, !dbg !2003
  br i1 %tobool810.not, label %if.end981, label %land.lhs.true811, !dbg !2004

land.lhs.true811:                                 ; preds = %lor.lhs.false809
  %sv_flags812 = getelementptr inbounds %struct.hv, ptr %155, i64 0, i32 2, !dbg !2005
  %169 = load i32, ptr %sv_flags812, align 4, !dbg !2005
  %and813 = and i32 %169, 33554432, !dbg !2005
  %tobool814.not = icmp eq i32 %and813, 0, !dbg !2005
  br i1 %tobool814.not, label %if.end981, label %land.lhs.true815, !dbg !2005

land.lhs.true815:                                 ; preds = %land.lhs.true811
  %sv_u816 = getelementptr inbounds %struct.hv, ptr %155, i64 0, i32 3, !dbg !2005
  %170 = load ptr, ptr %sv_u816, align 8, !dbg !2005
  %171 = load ptr, ptr %155, align 8, !dbg !2005
  %xhv_max818 = getelementptr inbounds %struct.xpvhv, ptr %171, i64 0, i32 3, !dbg !2005
  %172 = load i64, ptr %xhv_max818, align 8, !dbg !2005
  %add819 = add i64 %172, 1, !dbg !2005
  %arrayidx820 = getelementptr inbounds ptr, ptr %170, i64 %add819, !dbg !2005
  %173 = load ptr, ptr %arrayidx820, align 8, !dbg !2005
  %tobool822.not = icmp eq ptr %173, null, !dbg !2005
  br i1 %tobool822.not, label %if.end981, label %land.lhs.true823, !dbg !2005

land.lhs.true823:                                 ; preds = %land.lhs.true815
  %xhv_name_count829 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx820, i64 0, i32 4, !dbg !2005
  %174 = load i32, ptr %xhv_name_count829, align 4, !dbg !2005
  %cmp830.not = icmp eq i32 %174, -1, !dbg !2005
  br i1 %cmp830.not, label %if.end981, label %if.then893, !dbg !2006

if.then893:                                       ; preds = %land.lhs.true823, %land.lhs.true804
  %substash.1 = phi ptr [ %168, %land.lhs.true804 ], [ null, %land.lhs.true823 ], !dbg !2001
  call void @llvm.dbg.value(metadata ptr %substash.1, metadata !1645, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata ptr %139, metadata !1584, metadata !DIExpression()), !dbg !1670
  %175 = load i32, ptr %sv_flags894, align 4, !dbg !2007
  %and895 = and i32 %175, 255, !dbg !2007
  %cmp896 = icmp eq i32 %and895, 11, !dbg !2008
  br i1 %cmp896, label %if.then898, label %if.else945, !dbg !2009

if.then898:                                       ; preds = %if.then893
  %176 = load ptr, ptr %139, align 8, !dbg !2010
  %xav_fill900 = getelementptr inbounds %struct.xpvav, ptr %176, i64 0, i32 2, !dbg !2010
  %177 = load i64, ptr %xav_fill900, align 8, !dbg !2010
  %178 = trunc i64 %177 to i32, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %178, metadata !1588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1670
  %179 = load ptr, ptr %sv_u903, align 8, !dbg !2011
  call void @llvm.dbg.value(metadata ptr %179, metadata !1594, metadata !DIExpression()), !dbg !1670
  %call904 = call ptr @Perl_newSV_type(i32 noundef 11) #7, !dbg !2012
  %call905 = call ptr @Perl_sv_2mortal(ptr noundef %call904) #7, !dbg !2012
  call void @llvm.dbg.value(metadata ptr %call905, metadata !1646, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %178, metadata !1588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1670
  %tobool908.not1569 = icmp eq i32 %178, -1, !dbg !2014
  br i1 %tobool908.not1569, label %if.end980, label %while.body909.lr.ph, !dbg !2014

while.body909.lr.ph:                              ; preds = %if.then898
  %hent_hek918 = getelementptr inbounds %struct.he, ptr %entry1.01574, i64 0, i32 1
  br label %while.body909, !dbg !2014

while.body909:                                    ; preds = %while.body909.lr.ph, %if.end943
  %dec9071571 = phi i32 [ %178, %while.body909.lr.ph ], [ %dec907, %if.end943 ]
  %svp.121570 = phi ptr [ %179, %while.body909.lr.ph ], [ %incdec.ptr910, %if.end943 ]
  call void @llvm.dbg.value(metadata ptr %svp.121570, metadata !1594, metadata !DIExpression()), !dbg !1670
  %incdec.ptr910 = getelementptr inbounds ptr, ptr %svp.121570, i64 1, !dbg !2015
  call void @llvm.dbg.value(metadata ptr %incdec.ptr910, metadata !1594, metadata !DIExpression()), !dbg !1670
  %180 = load ptr, ptr %svp.121570, align 8, !dbg !2015
  %call911 = call ptr @Perl_newSVsv(ptr noundef %180) #7, !dbg !2015
  call void @llvm.dbg.value(metadata ptr %call911, metadata !1649, metadata !DIExpression()), !dbg !2017
  %181 = load i32, ptr %len722, align 4, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %181, metadata !1640, metadata !DIExpression()), !dbg !1968
  %cmp912 = icmp eq i32 %181, 1, !dbg !2020
  br i1 %cmp912, label %if.then914, label %if.else915, !dbg !2021

if.then914:                                       ; preds = %while.body909
  call void @Perl_sv_catpvn_flags(ptr noundef %call911, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7, !dbg !2022
  br label %if.end943, !dbg !2022

if.else915:                                       ; preds = %while.body909
  call void @Perl_sv_catpvn_flags(ptr noundef %call911, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7, !dbg !2023
  %182 = load i32, ptr %len722, align 4, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %182, metadata !1640, metadata !DIExpression()), !dbg !1968
  %sub916 = add nsw i32 %182, -2, !dbg !2025
  %conv917 = sext i32 %sub916 to i64, !dbg !2025
  %183 = load ptr, ptr %hent_hek918, align 8, !dbg !2025
  %hek_len919 = getelementptr inbounds %struct.hek, ptr %183, i64 0, i32 1, !dbg !2025
  %184 = load i32, ptr %hek_len919, align 4, !dbg !2025
  %cmp920 = icmp eq i32 %184, -2, !dbg !2025
  %hek_key924 = getelementptr inbounds %struct.hek, ptr %183, i64 0, i32 2, !dbg !2025
  br i1 %cmp920, label %cond.true922, label %cond.false928, !dbg !2025

cond.true922:                                     ; preds = %if.else915
  %185 = load ptr, ptr %hek_key924, align 4, !dbg !2025
  %sv_flags926 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 2, !dbg !2025
  %186 = load i32, ptr %sv_flags926, align 4, !dbg !2025
  %and927 = and i32 %186, 536870912, !dbg !2025
  br label %cond.end939, !dbg !2025

cond.false928:                                    ; preds = %if.else915
  %idx.ext934 = sext i32 %184 to i64, !dbg !2025
  %add.ptr935 = getelementptr inbounds i8, ptr %hek_key924, i64 1, !dbg !2025
  %add.ptr936 = getelementptr inbounds i8, ptr %add.ptr935, i64 %idx.ext934, !dbg !2025
  %187 = load i8, ptr %add.ptr936, align 1, !dbg !2025
  %188 = and i8 %187, 1, !dbg !2025
  %and938 = zext i8 %188 to i32, !dbg !2025
  br label %cond.end939, !dbg !2025

cond.end939:                                      ; preds = %cond.false928, %cond.true922
  %cond940 = phi i32 [ %and927, %cond.true922 ], [ %and938, %cond.false928 ], !dbg !2025
  %tobool941.not = icmp eq i32 %cond940, 0, !dbg !2025
  %cond942 = select i1 %tobool941.not, i32 16384, i32 32768, !dbg !2025
  call void @Perl_sv_catpvn_flags(ptr noundef %call911, ptr noundef %call730, i64 noundef %conv917, i32 noundef %cond942) #7, !dbg !2025
  br label %if.end943

if.end943:                                        ; preds = %cond.end939, %if.then914
  call void @Perl_av_push(ptr noundef %call905, ptr noundef %call911) #7, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %dec9071571, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %incdec.ptr910, metadata !1594, metadata !DIExpression()), !dbg !1670
  %dec907 = add nsw i32 %dec9071571, -1, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %dec907, metadata !1588, metadata !DIExpression()), !dbg !1670
  %tobool908.not = icmp eq i32 %dec9071571, 0, !dbg !2014
  br i1 %tobool908.not, label %if.end980, label %while.body909, !dbg !2014, !llvm.loop !2028

if.else945:                                       ; preds = %if.then893
  %call946 = call ptr @Perl_newSVsv(ptr noundef nonnull %139) #7, !dbg !2030
  %call947 = call ptr @Perl_sv_2mortal(ptr noundef %call946) #7, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %call947, metadata !1646, metadata !DIExpression()), !dbg !2013
  %189 = load i32, ptr %len722, align 4, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %189, metadata !1640, metadata !DIExpression()), !dbg !1968
  %cmp948 = icmp eq i32 %189, 1, !dbg !2034
  br i1 %cmp948, label %if.then950, label %if.else951, !dbg !2035

if.then950:                                       ; preds = %if.else945
  call void @Perl_sv_catpvn_flags(ptr noundef %call947, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7, !dbg !2036
  br label %if.end980, !dbg !2036

if.else951:                                       ; preds = %if.else945
  call void @Perl_sv_catpvn_flags(ptr noundef %call947, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7, !dbg !2037
  %190 = load i32, ptr %len722, align 4, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %190, metadata !1640, metadata !DIExpression()), !dbg !1968
  %sub952 = add nsw i32 %190, -2, !dbg !2039
  %conv953 = sext i32 %sub952 to i64, !dbg !2039
  %hent_hek954 = getelementptr inbounds %struct.he, ptr %entry1.01574, i64 0, i32 1, !dbg !2039
  %191 = load ptr, ptr %hent_hek954, align 8, !dbg !2039
  %hek_len955 = getelementptr inbounds %struct.hek, ptr %191, i64 0, i32 1, !dbg !2039
  %192 = load i32, ptr %hek_len955, align 4, !dbg !2039
  %cmp956 = icmp eq i32 %192, -2, !dbg !2039
  %hek_key960 = getelementptr inbounds %struct.hek, ptr %191, i64 0, i32 2, !dbg !2039
  br i1 %cmp956, label %cond.true958, label %cond.false964, !dbg !2039

cond.true958:                                     ; preds = %if.else951
  %193 = load ptr, ptr %hek_key960, align 4, !dbg !2039
  %sv_flags962 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 2, !dbg !2039
  %194 = load i32, ptr %sv_flags962, align 4, !dbg !2039
  %and963 = and i32 %194, 536870912, !dbg !2039
  br label %cond.end975, !dbg !2039

cond.false964:                                    ; preds = %if.else951
  %idx.ext970 = sext i32 %192 to i64, !dbg !2039
  %add.ptr971 = getelementptr inbounds i8, ptr %hek_key960, i64 1, !dbg !2039
  %add.ptr972 = getelementptr inbounds i8, ptr %add.ptr971, i64 %idx.ext970, !dbg !2039
  %195 = load i8, ptr %add.ptr972, align 1, !dbg !2039
  %196 = and i8 %195, 1, !dbg !2039
  %and974 = zext i8 %196 to i32, !dbg !2039
  br label %cond.end975, !dbg !2039

cond.end975:                                      ; preds = %cond.false964, %cond.true958
  %cond976 = phi i32 [ %and963, %cond.true958 ], [ %and974, %cond.false964 ], !dbg !2039
  %tobool977.not = icmp eq i32 %cond976, 0, !dbg !2039
  %cond978 = select i1 %tobool977.not, i32 16384, i32 32768, !dbg !2039
  call void @Perl_sv_catpvn_flags(ptr noundef %call947, ptr noundef nonnull %call730, i64 noundef %conv953, i32 noundef %cond978) #7, !dbg !2039
  br label %if.end980

if.end980:                                        ; preds = %if.end943, %if.then898, %if.then950, %cond.end975
  %subname.0 = phi ptr [ %call947, %if.then950 ], [ %call947, %cond.end975 ], [ %call905, %if.then898 ], [ %call905, %if.end943 ], !dbg !2040
  call void @llvm.dbg.value(metadata ptr %subname.0, metadata !1646, metadata !DIExpression()), !dbg !2013
  call fastcc void @S_mro_gather_and_rename(ptr noundef %stashes, ptr noundef %seen_stashes, ptr noundef %substash.1, ptr noundef %155, ptr noundef %subname.0), !dbg !2041
  br label %if.end981, !dbg !2042

if.end981:                                        ; preds = %land.lhs.true811, %land.lhs.true815, %land.lhs.true823, %if.end980, %lor.lhs.false809
  %hent_hek982 = getelementptr inbounds %struct.he, ptr %entry1.01574, i64 0, i32 1, !dbg !2043
  %197 = load ptr, ptr %hent_hek982, align 8, !dbg !2043
  %hek_len983 = getelementptr inbounds %struct.hek, ptr %197, i64 0, i32 1, !dbg !2043
  %198 = load i32, ptr %hek_len983, align 4, !dbg !2043
  %cmp984 = icmp eq i32 %198, -2, !dbg !2043
  %hek_key988 = getelementptr inbounds %struct.hek, ptr %197, i64 0, i32 2, !dbg !2043
  br i1 %cmp984, label %cond.true986, label %cond.false993, !dbg !2043

cond.true986:                                     ; preds = %if.end981
  %199 = load ptr, ptr %hek_key988, align 4, !dbg !2043
  %sv_flags990 = getelementptr inbounds %struct.sv, ptr %199, i64 0, i32 2, !dbg !2043
  %200 = load i32, ptr %sv_flags990, align 4, !dbg !2043
  %and991 = and i32 %200, 536870912, !dbg !2043
  %tobool992.not = icmp eq i32 %and991, 0, !dbg !2043
  br i1 %tobool992.not, label %cond.false1007, label %cond.true1005, !dbg !2043

cond.false993:                                    ; preds = %if.end981
  %idx.ext999 = sext i32 %198 to i64, !dbg !2043
  %add.ptr1000 = getelementptr inbounds i8, ptr %hek_key988, i64 1, !dbg !2043
  %add.ptr1001 = getelementptr inbounds i8, ptr %add.ptr1000, i64 %idx.ext999, !dbg !2043
  %201 = load i8, ptr %add.ptr1001, align 1, !dbg !2043
  %202 = and i8 %201, 1, !dbg !2043
  %tobool1004.not = icmp eq i8 %202, 0, !dbg !2043
  br i1 %tobool1004.not, label %cond.false1007, label %cond.true1005, !dbg !2043

cond.true1005:                                    ; preds = %cond.false993, %cond.true986
  %203 = load i32, ptr %len722, align 4, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %203, metadata !1640, metadata !DIExpression()), !dbg !1968
  %sub1006 = sub nsw i32 0, %203, !dbg !2043
  br label %cond.end1008, !dbg !2043

cond.false1007:                                   ; preds = %cond.false993, %cond.true986
  %204 = load i32, ptr %len722, align 4, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %204, metadata !1640, metadata !DIExpression()), !dbg !1968
  br label %cond.end1008, !dbg !2043

cond.end1008:                                     ; preds = %cond.false1007, %cond.true1005
  %cond1009 = phi i32 [ %sub1006, %cond.true1005 ], [ %204, %cond.false1007 ], !dbg !2043
  %call1010 = call ptr @Perl_hv_common_key_len(ptr noundef %call711, ptr noundef %call730, i32 noundef %cond1009, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef 0) #7, !dbg !2043
  br label %cleanup1017

cleanup1017:                                      ; preds = %land.lhs.true733, %land.lhs.true740, %cond.end790.thread, %cond.end1008, %cond.end790, %lor.lhs.false747, %land.lhs.true750, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len722) #7, !dbg !2044
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1670
  %entry1.0 = load ptr, ptr %entry1.01574, align 8, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %entry1.0, metadata !1586, metadata !DIExpression()), !dbg !1670
  %tobool721.not = icmp eq ptr %entry1.0, null, !dbg !1963
  br i1 %tobool721.not, label %while.cond712.loopexit.loopexit, label %for.body, !dbg !1963, !llvm.loop !2045

if.end1022:                                       ; preds = %while.cond712.loopexit, %if.then708, %cond.end703, %if.end694
  %seen.0 = phi ptr [ null, %cond.end703 ], [ null, %if.end694 ], [ %call711, %if.then708 ], [ %call711, %while.cond712.loopexit ], !dbg !1670
  call void @llvm.dbg.value(metadata ptr %seen.0, metadata !1592, metadata !DIExpression()), !dbg !1670
  %205 = load ptr, ptr %stash.addr, align 8, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %205, metadata !1582, metadata !DIExpression()), !dbg !1670
  %tobool1023.not = icmp eq ptr %205, null, !dbg !2047
  br i1 %tobool1023.not, label %cleanup1241, label %land.lhs.true1024, !dbg !2048

land.lhs.true1024:                                ; preds = %if.end1022
  %206 = load ptr, ptr %205, align 8, !dbg !2049
  %xhv_keys1026 = getelementptr inbounds %struct.xpvhv, ptr %206, i64 0, i32 2, !dbg !2049
  %207 = load i64, ptr %xhv_keys1026, align 8, !dbg !2049
  %xmg_u1028 = getelementptr inbounds %struct.xpvmg, ptr %206, i64 0, i32 1, !dbg !2049
  %208 = load ptr, ptr %xmg_u1028, align 8, !dbg !2049
  %tobool1029.not = icmp eq ptr %208, null, !dbg !2049
  br i1 %tobool1029.not, label %cond.end1033, label %cond.true1030, !dbg !2049

cond.true1030:                                    ; preds = %land.lhs.true1024
  %call1031 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %205) #7, !dbg !2049
  %phi.cast1595 = sext i32 %call1031 to i64, !dbg !2049
  br label %cond.end1033, !dbg !2049

cond.end1033:                                     ; preds = %land.lhs.true1024, %cond.true1030
  %cond1034 = phi i64 [ %phi.cast1595, %cond.true1030 ], [ 0, %land.lhs.true1024 ]
  %tobool1037.not = icmp eq i64 %207, %cond1034, !dbg !2049
  br i1 %tobool1037.not, label %cleanup1241, label %if.then1038, !dbg !2050

if.then1038:                                      ; preds = %cond.end1033
  %209 = load ptr, ptr %stash.addr, align 8, !dbg !2051
  call void @llvm.dbg.value(metadata ptr %209, metadata !1582, metadata !DIExpression()), !dbg !1670
  %210 = load ptr, ptr %209, align 8, !dbg !2051
  call void @llvm.dbg.value(metadata ptr %210, metadata !1585, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 -1, metadata !1587, metadata !DIExpression()), !dbg !1670
  %xhv_max1042 = getelementptr inbounds %struct.xpvhv, ptr %210, i64 0, i32 3
  call void @llvm.dbg.value(metadata i32 0, metadata !1587, metadata !DIExpression()), !dbg !1670
  %211 = load i64, ptr %xhv_max1042, align 8, !dbg !2052
  %212 = and i64 %211, 2147483648, !dbg !2053
  %cmp1044.not.not1586 = icmp eq i64 %212, 0, !dbg !2053
  br i1 %cmp1044.not.not1586, label %while.body1046.lr.ph, label %cleanup1241, !dbg !2054

while.body1046.lr.ph:                             ; preds = %if.then1038
  %tobool1089.not = icmp eq ptr %seen.0, null
  %213 = load ptr, ptr %namesv.addr, align 8
  %sv_flags1136 = getelementptr inbounds %struct.sv, ptr %213, i64 0, i32 2
  %sv_u1146 = getelementptr inbounds %struct.av, ptr %213, i64 0, i32 3
  br label %while.body1046, !dbg !2054

while.cond1040.loopexit.loopexit:                 ; preds = %cleanup1232
  %.pre1594 = load i64, ptr %xhv_max1042, align 8, !dbg !2052
  br label %while.cond1040.loopexit, !dbg !2055

while.cond1040.loopexit:                          ; preds = %while.cond1040.loopexit.loopexit, %while.body1046
  %214 = phi i64 [ %.pre1594, %while.cond1040.loopexit.loopexit ], [ %216, %while.body1046 ], !dbg !2052
  call void @llvm.dbg.value(metadata i64 %indvars.iv1589, metadata !1587, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1670
  %sext = shl i64 %214, 32, !dbg !2053
  %215 = ashr exact i64 %sext, 32, !dbg !2053
  %cmp1044.not.not = icmp slt i64 %indvars.iv1589, %215, !dbg !2053
  br i1 %cmp1044.not.not, label %while.cond1040.loopexit.while.body1046_crit_edge, label %cleanup1241, !dbg !2054, !llvm.loop !2056

while.cond1040.loopexit.while.body1046_crit_edge: ; preds = %while.cond1040.loopexit
  %indvars.iv.next1590 = add nuw nsw i64 %indvars.iv1589, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1590, metadata !1587, metadata !DIExpression()), !dbg !1670
  %.pre1593 = load ptr, ptr %stash.addr, align 8, !dbg !2058
  br label %while.body1046, !dbg !2054

while.body1046:                                   ; preds = %while.cond1040.loopexit.while.body1046_crit_edge, %while.body1046.lr.ph
  %216 = phi i64 [ %211, %while.body1046.lr.ph ], [ %214, %while.cond1040.loopexit.while.body1046_crit_edge ]
  %217 = phi ptr [ %209, %while.body1046.lr.ph ], [ %.pre1593, %while.cond1040.loopexit.while.body1046_crit_edge ], !dbg !2058
  %indvars.iv1589 = phi i64 [ 0, %while.body1046.lr.ph ], [ %indvars.iv.next1590, %while.cond1040.loopexit.while.body1046_crit_edge ]
  call void @llvm.dbg.value(metadata ptr %217, metadata !1582, metadata !DIExpression()), !dbg !1670
  %sv_u1047 = getelementptr inbounds %struct.hv, ptr %217, i64 0, i32 3, !dbg !2058
  %218 = load ptr, ptr %sv_u1047, align 8, !dbg !2058
  %arrayidx1049 = getelementptr inbounds ptr, ptr %218, i64 %indvars.iv1589, !dbg !2059
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1670
  %entry1.11582 = load ptr, ptr %arrayidx1049, align 8, !dbg !2060
  call void @llvm.dbg.value(metadata ptr %entry1.11582, metadata !1586, metadata !DIExpression()), !dbg !1670
  %tobool1051.not1583 = icmp eq ptr %entry1.11582, null, !dbg !2061
  br i1 %tobool1051.not1583, label %while.cond1040.loopexit, label %for.body1052, !dbg !2061

for.body1052:                                     ; preds = %while.body1046, %cleanup1232
  %entry1.11584 = phi ptr [ %entry1.1, %cleanup1232 ], [ %entry1.11582, %while.body1046 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len1054) #7, !dbg !2062
  %he_valu1055 = getelementptr inbounds %struct.he, ptr %entry1.11584, i64 0, i32 2, !dbg !2063
  %219 = load ptr, ptr %he_valu1055, align 8, !dbg !2063
  %sv_flags1056 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 2, !dbg !2063
  %220 = load i32, ptr %sv_flags1056, align 4, !dbg !2063
  %and1057 = and i32 %220, 255, !dbg !2063
  %cmp1058 = icmp eq i32 %and1057, 9, !dbg !2063
  br i1 %cmp1058, label %if.end1061, label %cleanup1232, !dbg !2065

if.end1061:                                       ; preds = %for.body1052
  call void @llvm.dbg.value(metadata ptr %len1054, metadata !1659, metadata !DIExpression(DW_OP_deref)), !dbg !2066
  %call1062 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %entry1.11584, ptr noundef nonnull %len1054) #7, !dbg !2067
  call void @llvm.dbg.value(metadata ptr %call1062, metadata !1652, metadata !DIExpression()), !dbg !2066
  %221 = load i32, ptr %len1054, align 4, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %221, metadata !1659, metadata !DIExpression()), !dbg !2066
  %cmp1063 = icmp sgt i32 %221, 1, !dbg !2069
  br i1 %cmp1063, label %land.lhs.true1065, label %lor.lhs.false1079, !dbg !2070

land.lhs.true1065:                                ; preds = %if.end1061
  %sub1066 = add nsw i32 %221, -2, !dbg !2071
  %222 = zext i32 %sub1066 to i64
  %arrayidx1068 = getelementptr inbounds i8, ptr %call1062, i64 %222, !dbg !2072
  %223 = load i8, ptr %arrayidx1068, align 1, !dbg !2072
  %cmp1070 = icmp eq i8 %223, 58, !dbg !2073
  br i1 %cmp1070, label %land.lhs.true1072, label %cleanup1232, !dbg !2074

land.lhs.true1072:                                ; preds = %land.lhs.true1065
  %sub1073 = add nsw i32 %221, -1, !dbg !2075
  %224 = zext i32 %sub1073 to i64
  %arrayidx1075 = getelementptr inbounds i8, ptr %call1062, i64 %224, !dbg !2076
  %225 = load i8, ptr %arrayidx1075, align 1, !dbg !2076
  %cmp1077 = icmp eq i8 %225, 58, !dbg !2077
  br i1 %cmp1077, label %if.then1087, label %cleanup1232, !dbg !2078

lor.lhs.false1079:                                ; preds = %if.end1061
  call void @llvm.dbg.value(metadata i32 %221, metadata !1659, metadata !DIExpression()), !dbg !2066
  %cmp1080 = icmp eq i32 %221, 1, !dbg !2079
  br i1 %cmp1080, label %land.lhs.true1082, label %cleanup1232, !dbg !2080

land.lhs.true1082:                                ; preds = %lor.lhs.false1079
  %226 = load i8, ptr %call1062, align 1, !dbg !2081
  %cmp1085 = icmp eq i8 %226, 58, !dbg !2082
  br i1 %cmp1085, label %if.then1087, label %cleanup1232, !dbg !2083

if.then1087:                                      ; preds = %land.lhs.true1082, %land.lhs.true1072
  br i1 %tobool1089.not, label %if.end1124, label %land.lhs.true1090, !dbg !2084

land.lhs.true1090:                                ; preds = %if.then1087
  %hent_hek1091 = getelementptr inbounds %struct.he, ptr %entry1.11584, i64 0, i32 1, !dbg !2086
  %227 = load ptr, ptr %hent_hek1091, align 8, !dbg !2086
  %hek_len1092 = getelementptr inbounds %struct.hek, ptr %227, i64 0, i32 1, !dbg !2086
  %228 = load i32, ptr %hek_len1092, align 4, !dbg !2086
  %cmp1093 = icmp eq i32 %228, -2, !dbg !2086
  %hek_key1097 = getelementptr inbounds %struct.hek, ptr %227, i64 0, i32 2, !dbg !2086
  br i1 %cmp1093, label %cond.true1095, label %cond.false1102, !dbg !2086

cond.true1095:                                    ; preds = %land.lhs.true1090
  %229 = load ptr, ptr %hek_key1097, align 4, !dbg !2086
  %sv_flags1099 = getelementptr inbounds %struct.sv, ptr %229, i64 0, i32 2, !dbg !2086
  %230 = load i32, ptr %sv_flags1099, align 4, !dbg !2086
  %and1100 = and i32 %230, 536870912, !dbg !2086
  %tobool1101.not = icmp eq i32 %and1100, 0, !dbg !2086
  br i1 %tobool1101.not, label %cond.end1117, label %cond.true1114, !dbg !2086

cond.false1102:                                   ; preds = %land.lhs.true1090
  %idx.ext1108 = sext i32 %228 to i64, !dbg !2086
  %add.ptr1109 = getelementptr inbounds i8, ptr %hek_key1097, i64 1, !dbg !2086
  %add.ptr1110 = getelementptr inbounds i8, ptr %add.ptr1109, i64 %idx.ext1108, !dbg !2086
  %231 = load i8, ptr %add.ptr1110, align 1, !dbg !2086
  %232 = and i8 %231, 1, !dbg !2086
  %tobool1113.not = icmp eq i8 %232, 0, !dbg !2086
  br i1 %tobool1113.not, label %cond.end1117, label %cond.true1114, !dbg !2086

cond.true1114:                                    ; preds = %cond.false1102, %cond.true1095
  call void @llvm.dbg.value(metadata i32 %221, metadata !1659, metadata !DIExpression()), !dbg !2066
  %sub1115 = sub nsw i32 0, %221, !dbg !2086
  br label %cond.end1117, !dbg !2086

cond.end1117:                                     ; preds = %cond.true1095, %cond.false1102, %cond.true1114
  %cond1118 = phi i32 [ %sub1115, %cond.true1114 ], [ %221, %cond.false1102 ], [ %221, %cond.true1095 ], !dbg !2086
  %call1119 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %seen.0, ptr noundef nonnull %call1062, i32 noundef %cond1118, i32 noundef 8, ptr noundef null, i32 noundef 0) #7, !dbg !2086
  %tobool1120.not = icmp eq ptr %call1119, null, !dbg !2086
  br i1 %tobool1120.not, label %if.end1124, label %cleanup1232, !dbg !2087

if.end1124:                                       ; preds = %cond.end1117, %if.then1087
  %233 = load ptr, ptr %he_valu1055, align 8, !dbg !2088
  %sv_u1126 = getelementptr inbounds %struct.sv, ptr %233, i64 0, i32 3, !dbg !2088
  %234 = load ptr, ptr %sv_u1126, align 8, !dbg !2088
  %gp_hv1128 = getelementptr inbounds %struct.gp, ptr %234, i64 0, i32 5, !dbg !2088
  %235 = load ptr, ptr %gp_hv1128, align 8, !dbg !2088
  call void @llvm.dbg.value(metadata ptr %235, metadata !1660, metadata !DIExpression()), !dbg !2089
  %tobool1129.not = icmp eq ptr %235, null, !dbg !2090
  %236 = load ptr, ptr %stash.addr, align 8
  %cmp1132 = icmp eq ptr %235, %236
  %or.cond1479 = select i1 %tobool1129.not, i1 true, i1 %cmp1132, !dbg !2091
  call void @llvm.dbg.value(metadata ptr %236, metadata !1582, metadata !DIExpression()), !dbg !1670
  br i1 %or.cond1479, label %cleanup1232, label %if.end1135, !dbg !2091

if.end1135:                                       ; preds = %if.end1124
  call void @llvm.dbg.value(metadata ptr %213, metadata !1584, metadata !DIExpression()), !dbg !1670
  %237 = load i32, ptr %sv_flags1136, align 4, !dbg !2092
  %and1137 = and i32 %237, 255, !dbg !2092
  %cmp1138 = icmp eq i32 %and1137, 11, !dbg !2093
  br i1 %cmp1138, label %if.then1140, label %if.else1188, !dbg !2094

if.then1140:                                      ; preds = %if.end1135
  %238 = load ptr, ptr %213, align 8, !dbg !2095
  %xav_fill1143 = getelementptr inbounds %struct.xpvav, ptr %238, i64 0, i32 2, !dbg !2095
  %239 = load i64, ptr %xav_fill1143, align 8, !dbg !2095
  %240 = trunc i64 %239 to i32, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %240, metadata !1588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1670
  %241 = load ptr, ptr %sv_u1146, align 8, !dbg !2096
  call void @llvm.dbg.value(metadata ptr %241, metadata !1594, metadata !DIExpression()), !dbg !1670
  %call1147 = call ptr @Perl_newSV_type(i32 noundef 11) #7, !dbg !2097
  %call1148 = call ptr @Perl_sv_2mortal(ptr noundef %call1147) #7, !dbg !2097
  call void @llvm.dbg.value(metadata ptr %call1148, metadata !1663, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %240, metadata !1588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1670
  %tobool1151.not1579 = icmp eq i32 %240, -1, !dbg !2099
  br i1 %tobool1151.not1579, label %if.end1223, label %while.body1152.lr.ph, !dbg !2099

while.body1152.lr.ph:                             ; preds = %if.then1140
  %hent_hek1161 = getelementptr inbounds %struct.he, ptr %entry1.11584, i64 0, i32 1
  br label %while.body1152, !dbg !2099

while.body1152:                                   ; preds = %while.body1152.lr.ph, %if.end1186
  %dec11501581 = phi i32 [ %240, %while.body1152.lr.ph ], [ %dec1150, %if.end1186 ]
  %svp.131580 = phi ptr [ %241, %while.body1152.lr.ph ], [ %incdec.ptr1153, %if.end1186 ]
  call void @llvm.dbg.value(metadata ptr %svp.131580, metadata !1594, metadata !DIExpression()), !dbg !1670
  %incdec.ptr1153 = getelementptr inbounds ptr, ptr %svp.131580, i64 1, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1153, metadata !1594, metadata !DIExpression()), !dbg !1670
  %242 = load ptr, ptr %svp.131580, align 8, !dbg !2100
  %call1154 = call ptr @Perl_newSVsv(ptr noundef %242) #7, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %call1154, metadata !1666, metadata !DIExpression()), !dbg !2102
  %243 = load i32, ptr %len1054, align 4, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %243, metadata !1659, metadata !DIExpression()), !dbg !2066
  %cmp1155 = icmp eq i32 %243, 1, !dbg !2105
  br i1 %cmp1155, label %if.then1157, label %if.else1158, !dbg !2106

if.then1157:                                      ; preds = %while.body1152
  call void @Perl_sv_catpvn_flags(ptr noundef %call1154, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7, !dbg !2107
  br label %if.end1186, !dbg !2107

if.else1158:                                      ; preds = %while.body1152
  call void @Perl_sv_catpvn_flags(ptr noundef %call1154, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7, !dbg !2108
  %244 = load i32, ptr %len1054, align 4, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %244, metadata !1659, metadata !DIExpression()), !dbg !2066
  %sub1159 = add nsw i32 %244, -2, !dbg !2110
  %conv1160 = sext i32 %sub1159 to i64, !dbg !2110
  %245 = load ptr, ptr %hent_hek1161, align 8, !dbg !2110
  %hek_len1162 = getelementptr inbounds %struct.hek, ptr %245, i64 0, i32 1, !dbg !2110
  %246 = load i32, ptr %hek_len1162, align 4, !dbg !2110
  %cmp1163 = icmp eq i32 %246, -2, !dbg !2110
  %hek_key1167 = getelementptr inbounds %struct.hek, ptr %245, i64 0, i32 2, !dbg !2110
  br i1 %cmp1163, label %cond.true1165, label %cond.false1171, !dbg !2110

cond.true1165:                                    ; preds = %if.else1158
  %247 = load ptr, ptr %hek_key1167, align 4, !dbg !2110
  %sv_flags1169 = getelementptr inbounds %struct.sv, ptr %247, i64 0, i32 2, !dbg !2110
  %248 = load i32, ptr %sv_flags1169, align 4, !dbg !2110
  %and1170 = and i32 %248, 536870912, !dbg !2110
  br label %cond.end1182, !dbg !2110

cond.false1171:                                   ; preds = %if.else1158
  %idx.ext1177 = sext i32 %246 to i64, !dbg !2110
  %add.ptr1178 = getelementptr inbounds i8, ptr %hek_key1167, i64 1, !dbg !2110
  %add.ptr1179 = getelementptr inbounds i8, ptr %add.ptr1178, i64 %idx.ext1177, !dbg !2110
  %249 = load i8, ptr %add.ptr1179, align 1, !dbg !2110
  %250 = and i8 %249, 1, !dbg !2110
  %and1181 = zext i8 %250 to i32, !dbg !2110
  br label %cond.end1182, !dbg !2110

cond.end1182:                                     ; preds = %cond.false1171, %cond.true1165
  %cond1183 = phi i32 [ %and1170, %cond.true1165 ], [ %and1181, %cond.false1171 ], !dbg !2110
  %tobool1184.not = icmp eq i32 %cond1183, 0, !dbg !2110
  %cond1185 = select i1 %tobool1184.not, i32 16384, i32 32768, !dbg !2110
  call void @Perl_sv_catpvn_flags(ptr noundef %call1154, ptr noundef %call1062, i64 noundef %conv1160, i32 noundef %cond1185) #7, !dbg !2110
  br label %if.end1186

if.end1186:                                       ; preds = %cond.end1182, %if.then1157
  call void @Perl_av_push(ptr noundef %call1148, ptr noundef %call1154) #7, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %dec11501581, metadata !1588, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1153, metadata !1594, metadata !DIExpression()), !dbg !1670
  %dec1150 = add nsw i32 %dec11501581, -1, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %dec1150, metadata !1588, metadata !DIExpression()), !dbg !1670
  %tobool1151.not = icmp eq i32 %dec11501581, 0, !dbg !2099
  br i1 %tobool1151.not, label %if.end1223, label %while.body1152, !dbg !2099, !llvm.loop !2113

if.else1188:                                      ; preds = %if.end1135
  %call1189 = call ptr @Perl_newSVsv(ptr noundef nonnull %213) #7, !dbg !2115
  %call1190 = call ptr @Perl_sv_2mortal(ptr noundef %call1189) #7, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %call1190, metadata !1663, metadata !DIExpression()), !dbg !2098
  %251 = load i32, ptr %len1054, align 4, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %251, metadata !1659, metadata !DIExpression()), !dbg !2066
  %cmp1191 = icmp eq i32 %251, 1, !dbg !2119
  br i1 %cmp1191, label %if.then1193, label %if.else1194, !dbg !2120

if.then1193:                                      ; preds = %if.else1188
  call void @Perl_sv_catpvn_flags(ptr noundef %call1190, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7, !dbg !2121
  br label %if.end1223, !dbg !2121

if.else1194:                                      ; preds = %if.else1188
  call void @Perl_sv_catpvn_flags(ptr noundef %call1190, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7, !dbg !2122
  %252 = load i32, ptr %len1054, align 4, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %252, metadata !1659, metadata !DIExpression()), !dbg !2066
  %sub1195 = add nsw i32 %252, -2, !dbg !2124
  %conv1196 = sext i32 %sub1195 to i64, !dbg !2124
  %hent_hek1197 = getelementptr inbounds %struct.he, ptr %entry1.11584, i64 0, i32 1, !dbg !2124
  %253 = load ptr, ptr %hent_hek1197, align 8, !dbg !2124
  %hek_len1198 = getelementptr inbounds %struct.hek, ptr %253, i64 0, i32 1, !dbg !2124
  %254 = load i32, ptr %hek_len1198, align 4, !dbg !2124
  %cmp1199 = icmp eq i32 %254, -2, !dbg !2124
  %hek_key1203 = getelementptr inbounds %struct.hek, ptr %253, i64 0, i32 2, !dbg !2124
  br i1 %cmp1199, label %cond.true1201, label %cond.false1207, !dbg !2124

cond.true1201:                                    ; preds = %if.else1194
  %255 = load ptr, ptr %hek_key1203, align 4, !dbg !2124
  %sv_flags1205 = getelementptr inbounds %struct.sv, ptr %255, i64 0, i32 2, !dbg !2124
  %256 = load i32, ptr %sv_flags1205, align 4, !dbg !2124
  %and1206 = and i32 %256, 536870912, !dbg !2124
  br label %cond.end1218, !dbg !2124

cond.false1207:                                   ; preds = %if.else1194
  %idx.ext1213 = sext i32 %254 to i64, !dbg !2124
  %add.ptr1214 = getelementptr inbounds i8, ptr %hek_key1203, i64 1, !dbg !2124
  %add.ptr1215 = getelementptr inbounds i8, ptr %add.ptr1214, i64 %idx.ext1213, !dbg !2124
  %257 = load i8, ptr %add.ptr1215, align 1, !dbg !2124
  %258 = and i8 %257, 1, !dbg !2124
  %and1217 = zext i8 %258 to i32, !dbg !2124
  br label %cond.end1218, !dbg !2124

cond.end1218:                                     ; preds = %cond.false1207, %cond.true1201
  %cond1219 = phi i32 [ %and1206, %cond.true1201 ], [ %and1217, %cond.false1207 ], !dbg !2124
  %tobool1220.not = icmp eq i32 %cond1219, 0, !dbg !2124
  %cond1221 = select i1 %tobool1220.not, i32 16384, i32 32768, !dbg !2124
  call void @Perl_sv_catpvn_flags(ptr noundef %call1190, ptr noundef nonnull %call1062, i64 noundef %conv1196, i32 noundef %cond1221) #7, !dbg !2124
  br label %if.end1223

if.end1223:                                       ; preds = %if.end1186, %if.then1140, %if.then1193, %cond.end1218
  %subname1131.0 = phi ptr [ %call1190, %if.then1193 ], [ %call1190, %cond.end1218 ], [ %call1148, %if.then1140 ], [ %call1148, %if.end1186 ], !dbg !2125
  call void @llvm.dbg.value(metadata ptr %subname1131.0, metadata !1663, metadata !DIExpression()), !dbg !2098
  call fastcc void @S_mro_gather_and_rename(ptr noundef %stashes, ptr noundef %seen_stashes, ptr noundef nonnull %235, ptr noundef null, ptr noundef %subname1131.0), !dbg !2126
  br label %cleanup1232

cleanup1232:                                      ; preds = %land.lhs.true1065, %land.lhs.true1072, %if.end1223, %if.end1124, %cond.end1117, %lor.lhs.false1079, %land.lhs.true1082, %for.body1052
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len1054) #7, !dbg !2127
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1670
  %entry1.1 = load ptr, ptr %entry1.11584, align 8, !dbg !2060
  call void @llvm.dbg.value(metadata ptr %entry1.1, metadata !1586, metadata !DIExpression()), !dbg !1670
  %tobool1051.not = icmp eq ptr %entry1.1, null, !dbg !2061
  br i1 %tobool1051.not, label %while.cond1040.loopexit.loopexit, label %for.body1052, !dbg !2061, !llvm.loop !2128

cleanup1241:                                      ; preds = %while.cond1040.loopexit, %if.then1038, %if.end1022, %cond.end1033, %if.end494
  ret void, !dbg !2130
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_method_changed_in(ptr nocapture noundef %stash) local_unnamed_addr #0 !dbg !2131 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !2133, metadata !DIExpression()), !dbg !2144
  %sv_flags = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 2, !dbg !2145
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2145
  %and = and i32 %0, 33554432, !dbg !2145
  %tobool.not = icmp eq i32 %and, 0, !dbg !2145
  br i1 %tobool.not, label %cond.end135, label %land.lhs.true, !dbg !2145

land.lhs.true:                                    ; preds = %entry
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !2145
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2145
  %2 = load ptr, ptr %stash, align 8, !dbg !2145
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %2, i64 0, i32 3, !dbg !2145
  %3 = load i64, ptr %xhv_max, align 8, !dbg !2145
  %add = add i64 %3, 1, !dbg !2145
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %add, !dbg !2145
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2145
  %tobool1.not = icmp eq ptr %4, null, !dbg !2145
  br i1 %tobool1.not, label %land.lhs.true140, label %land.lhs.true2, !dbg !2145

land.lhs.true2:                                   ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !2145
  %5 = load i32, ptr %xhv_name_count, align 4, !dbg !2145
  %cmp.not = icmp eq i32 %5, -1, !dbg !2145
  br i1 %cmp.not, label %land.lhs.true72, label %cond.true, !dbg !2145

cond.true:                                        ; preds = %land.lhs.true2
  %cmp14 = icmp sgt i32 %5, 0, !dbg !2145
  br i1 %cmp14, label %cond.end56.sink.split, label %cond.false, !dbg !2145

cond.false:                                       ; preds = %cond.true
  %cmp29 = icmp slt i32 %5, -1, !dbg !2145
  br i1 %cmp29, label %cond.true30, label %cond.end56, !dbg !2145

cond.true30:                                      ; preds = %cond.false
  %arrayidx37 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2145
  br label %cond.end56.sink.split, !dbg !2145

cond.end56.sink.split:                            ; preds = %cond.true, %cond.true30
  %arrayidx37.sink = phi ptr [ %arrayidx37, %cond.true30 ], [ %4, %cond.true ]
  %6 = load ptr, ptr %arrayidx37.sink, align 8, !dbg !2145
  br label %cond.end56, !dbg !2145

cond.end56:                                       ; preds = %cond.end56.sink.split, %cond.false
  %cond57 = phi ptr [ %4, %cond.false ], [ %6, %cond.end56.sink.split ], !dbg !2145
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond57, i64 0, i32 2, !dbg !2145
  br label %land.lhs.true72, !dbg !2145

land.lhs.true72:                                  ; preds = %land.lhs.true2, %cond.end56
  %cond60.ph.ph = phi ptr [ %hek_key, %cond.end56 ], [ null, %land.lhs.true2 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2134, metadata !DIExpression()), !dbg !2144
  %xhv_name_count78 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !2146
  %7 = load i32, ptr %xhv_name_count78, align 4, !dbg !2146
  %cmp79.not = icmp eq i32 %7, -1, !dbg !2146
  br i1 %cmp79.not, label %cond.true148, label %cond.true80, !dbg !2146

cond.true80:                                      ; preds = %land.lhs.true72
  %cmp87 = icmp sgt i32 %7, 0, !dbg !2146
  br i1 %cmp87, label %cond.end132.sink.split, label %cond.false96, !dbg !2146

cond.false96:                                     ; preds = %cond.true80
  %cmp103 = icmp slt i32 %7, -1, !dbg !2146
  br i1 %cmp103, label %cond.true104, label %cond.end132, !dbg !2146

cond.true104:                                     ; preds = %cond.false96
  %arrayidx111 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2146
  br label %cond.end132.sink.split, !dbg !2146

cond.end132.sink.split:                           ; preds = %cond.true80, %cond.true104
  %arrayidx111.sink = phi ptr [ %arrayidx111, %cond.true104 ], [ %4, %cond.true80 ]
  %8 = load ptr, ptr %arrayidx111.sink, align 8, !dbg !2146
  br label %cond.end132, !dbg !2146

cond.end132:                                      ; preds = %cond.end132.sink.split, %cond.false96
  %cond133 = phi ptr [ %4, %cond.false96 ], [ %8, %cond.end132.sink.split ], !dbg !2146
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond133, i64 0, i32 1, !dbg !2146
  %9 = load i32, ptr %hek_len, align 4, !dbg !2146
  br label %cond.true148, !dbg !2146

cond.end135:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2135, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2144
  %10 = load ptr, ptr @PL_isarev, align 8, !dbg !2147
  %sv_u214.phi.trans.insert = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3
  %.pre = load ptr, ptr %sv_u214.phi.trans.insert, align 8, !dbg !2147
  %.pre814 = load ptr, ptr %stash, align 8, !dbg !2147
  %xhv_max216.phi.trans.insert = getelementptr inbounds %struct.xpvhv, ptr %.pre814, i64 0, i32 3
  %.pre815 = load i64, ptr %xhv_max216.phi.trans.insert, align 8, !dbg !2147
  %.pre818 = add i64 %.pre815, 1, !dbg !2147
  %arrayidx218.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre, i64 %.pre818
  %.pre819 = load ptr, ptr %arrayidx218.phi.trans.insert, align 8, !dbg !2147
  br label %cond.end206, !dbg !2147

land.lhs.true140:                                 ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 0, metadata !2135, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2144
  %11 = load ptr, ptr @PL_isarev, align 8, !dbg !2147
  br label %cond.end206, !dbg !2147

cond.true148:                                     ; preds = %land.lhs.true72, %cond.end132
  %cond136.ph.ph = phi i32 [ %9, %cond.end132 ], [ 0, %land.lhs.true72 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !2135, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2144
  %12 = load ptr, ptr @PL_isarev, align 8, !dbg !2147
  %xhv_name_count154 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !2147
  %13 = load i32, ptr %xhv_name_count154, align 4, !dbg !2147
  %cmp155 = icmp sgt i32 %13, 0, !dbg !2147
  br i1 %cmp155, label %cond.true157, label %cond.false165, !dbg !2147

cond.true157:                                     ; preds = %cond.true148
  %14 = load ptr, ptr %4, align 8, !dbg !2147
  br label %cond.end206, !dbg !2147

cond.false165:                                    ; preds = %cond.true148
  %cmp172 = icmp slt i32 %13, -1, !dbg !2147
  br i1 %cmp172, label %cond.true174, label %cond.false182, !dbg !2147

cond.true174:                                     ; preds = %cond.false165
  %arrayidx181 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2147
  %15 = load ptr, ptr %arrayidx181, align 8, !dbg !2147
  br label %cond.end206, !dbg !2147

cond.false182:                                    ; preds = %cond.false165
  %cmp189 = icmp eq i32 %13, -1, !dbg !2147
  %spec.select = select i1 %cmp189, ptr null, ptr %4, !dbg !2147
  br label %cond.end206, !dbg !2147

cond.end206:                                      ; preds = %land.lhs.true140, %cond.end135, %cond.false182, %cond.true157, %cond.true174
  %16 = phi ptr [ %.pre819, %cond.end135 ], [ %4, %cond.false182 ], [ null, %land.lhs.true140 ], [ %4, %cond.true157 ], [ %4, %cond.true174 ], !dbg !2147
  %add217.pre-phi = phi i64 [ %.pre818, %cond.end135 ], [ %add, %cond.false182 ], [ %add, %land.lhs.true140 ], [ %add, %cond.true157 ], [ %add, %cond.true174 ], !dbg !2147
  %17 = phi ptr [ %.pre, %cond.end135 ], [ %1, %cond.false182 ], [ %1, %land.lhs.true140 ], [ %1, %cond.true157 ], [ %1, %cond.true174 ], !dbg !2147
  %18 = phi ptr [ %10, %cond.end135 ], [ %12, %cond.false182 ], [ %11, %land.lhs.true140 ], [ %12, %cond.true157 ], [ %12, %cond.true174 ]
  %cond136764 = phi i32 [ 0, %cond.end135 ], [ %cond136.ph.ph, %cond.false182 ], [ 0, %land.lhs.true140 ], [ %cond136.ph.ph, %cond.true157 ], [ %cond136.ph.ph, %cond.true174 ]
  %cond60758762 = phi ptr [ null, %cond.end135 ], [ %cond60.ph.ph, %cond.false182 ], [ null, %land.lhs.true140 ], [ %cond60.ph.ph, %cond.true157 ], [ %cond60.ph.ph, %cond.true174 ]
  %cond207 = phi ptr [ null, %cond.end135 ], [ %spec.select, %cond.false182 ], [ null, %land.lhs.true140 ], [ %14, %cond.true157 ], [ %15, %cond.true174 ], !dbg !2147
  %hek_key208 = getelementptr inbounds %struct.hek, ptr %cond207, i64 0, i32 2, !dbg !2147
  %tobool212 = icmp ne i32 %and, 0, !dbg !2147
  tail call void @llvm.assume(i1 %tobool212), !dbg !2147
  %sv_u214 = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !2147
  %arrayidx218 = getelementptr inbounds ptr, ptr %17, i64 %add217.pre-phi, !dbg !2147
  %xhv_name_count227 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx218, i64 0, i32 4, !dbg !2147
  %19 = load i32, ptr %xhv_name_count227, align 4, !dbg !2147
  %cmp228 = icmp sgt i32 %19, 0, !dbg !2147
  br i1 %cmp228, label %cond.true451, label %cond.false238, !dbg !2147

cond.false238:                                    ; preds = %cond.end206
  %cmp245 = icmp slt i32 %19, -1, !dbg !2147
  br i1 %cmp245, label %cond.true468, label %cond.false476, !dbg !2147

cond.true451:                                     ; preds = %cond.end206
  %20 = load ptr, ptr %16, align 8, !dbg !2147
  %hek_len281 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 1, !dbg !2147
  %21 = load i32, ptr %hek_len281, align 4, !dbg !2147
  %hek_key354 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 2, !dbg !2147
  %idx.ext = sext i32 %21 to i64, !dbg !2147
  %add.ptr = getelementptr inbounds i8, ptr %hek_key354, i64 %idx.ext, !dbg !2147
  %add.ptr428 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !2147
  br label %cond.end500, !dbg !2147

cond.true468:                                     ; preds = %cond.false238
  %arrayidx254 = getelementptr inbounds ptr, ptr %16, i64 1, !dbg !2147
  %22 = load ptr, ptr %arrayidx254, align 8, !dbg !2147
  %hek_len281766771 = getelementptr inbounds %struct.hek, ptr %22, i64 0, i32 1, !dbg !2147
  %23 = load i32, ptr %hek_len281766771, align 4, !dbg !2147
  %hek_key354777784 = getelementptr inbounds %struct.hek, ptr %22, i64 0, i32 2, !dbg !2147
  %idx.ext792804 = sext i32 %23 to i64, !dbg !2147
  %add.ptr793805 = getelementptr inbounds i8, ptr %hek_key354777784, i64 %idx.ext792804, !dbg !2147
  %add.ptr428794806 = getelementptr inbounds i8, ptr %add.ptr793805, i64 1, !dbg !2147
  br label %cond.end500, !dbg !2147

cond.false476:                                    ; preds = %cond.false238
  %hek_len281766 = getelementptr inbounds %struct.hek, ptr %16, i64 0, i32 1, !dbg !2147
  %24 = load i32, ptr %hek_len281766, align 4, !dbg !2147
  %hek_key354777 = getelementptr inbounds %struct.hek, ptr %16, i64 0, i32 2, !dbg !2147
  %idx.ext792 = sext i32 %24 to i64, !dbg !2147
  %add.ptr793 = getelementptr inbounds i8, ptr %hek_key354777, i64 %idx.ext792, !dbg !2147
  %add.ptr428794 = getelementptr inbounds i8, ptr %add.ptr793, i64 1, !dbg !2147
  %cmp483 = icmp ne i32 %19, -1, !dbg !2147
  tail call void @llvm.assume(i1 %cmp483), !dbg !2147
  br label %cond.end500, !dbg !2147

cond.end500:                                      ; preds = %cond.true451, %cond.false476, %cond.true468
  %conv282768778796.pre-phi = phi i64 [ %idx.ext, %cond.true451 ], [ %idx.ext792, %cond.false476 ], [ %idx.ext792804, %cond.true468 ], !dbg !2147
  %and430798.in.in.in = phi ptr [ %add.ptr428, %cond.true451 ], [ %add.ptr428794, %cond.false476 ], [ %add.ptr428794806, %cond.true468 ]
  %cond501 = phi ptr [ %20, %cond.true451 ], [ %16, %cond.false476 ], [ %22, %cond.true468 ], !dbg !2147
  %and430798.in.in = load i8, ptr %and430798.in.in.in, align 1, !dbg !2147
  %and430798.in = and i8 %and430798.in.in, 1, !dbg !2147
  %and430798 = zext i8 %and430798.in to i32, !dbg !2147
  %25 = load i32, ptr %cond501, align 4, !dbg !2147
  %call = tail call ptr @Perl_hv_common(ptr noundef %18, ptr noundef null, ptr noundef nonnull %hek_key208, i64 noundef %conv282768778796.pre-phi, i32 noundef %and430798, i32 noundef 32, ptr noundef null, i32 noundef %25) #7, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %call, metadata !2136, metadata !DIExpression()), !dbg !2144
  %tobool502.not = icmp eq ptr %call, null, !dbg !2148
  br i1 %tobool502.not, label %cond.end505, label %cond.true503, !dbg !2148

cond.true503:                                     ; preds = %cond.end500
  %26 = load ptr, ptr %call, align 8, !dbg !2149
  br label %cond.end505, !dbg !2148

cond.end505:                                      ; preds = %cond.end500, %cond.true503
  %cond506 = phi ptr [ %26, %cond.true503 ], [ null, %cond.end500 ], !dbg !2148
  call void @llvm.dbg.value(metadata ptr %cond506, metadata !2137, metadata !DIExpression()), !dbg !2144
  %tobool507.not = icmp eq ptr %cond60758762, null, !dbg !2150
  br i1 %tobool507.not, label %if.then, label %if.end, !dbg !2152

if.then:                                          ; preds = %cond.end505
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #7, !dbg !2153
  br label %if.end, !dbg !2153

if.end:                                           ; preds = %if.then, %cond.end505
  %27 = load ptr, ptr %sv_u214, align 8, !dbg !2154
  %28 = load ptr, ptr %stash, align 8, !dbg !2154
  %xhv_max510 = getelementptr inbounds %struct.xpvhv, ptr %28, i64 0, i32 3, !dbg !2154
  %29 = load i64, ptr %xhv_max510, align 8, !dbg !2154
  %add511 = add i64 %29, 1, !dbg !2154
  %arrayidx512 = getelementptr inbounds ptr, ptr %27, i64 %add511, !dbg !2154
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx512, i64 0, i32 5, !dbg !2154
  %30 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !2154
  %tobool513.not = icmp eq ptr %30, null, !dbg !2154
  br i1 %tobool513.not, label %cond.false521, label %if.end.cond.end523_crit_edge, !dbg !2154

if.end.cond.end523_crit_edge:                     ; preds = %if.end
  %pkg_gen.phi.trans.insert = getelementptr inbounds %struct.mro_meta, ptr %30, i64 0, i32 4
  %.pre816 = load i32, ptr %pkg_gen.phi.trans.insert, align 4, !dbg !2155
  %phi.bo = add i32 %.pre816, 1, !dbg !2154
  br label %cond.end523, !dbg !2154

cond.false521:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %stash, metadata !873, metadata !DIExpression()) #7, !dbg !2156
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !874, metadata !DIExpression()) #7, !dbg !2156
  %31 = load ptr, ptr %sv_u214, align 8, !dbg !2159
  %32 = load ptr, ptr %stash, align 8, !dbg !2159
  %xhv_max.i = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3, !dbg !2159
  %33 = load i64, ptr %xhv_max.i, align 8, !dbg !2159
  %add.i = add i64 %33, 1, !dbg !2159
  %arrayidx.i = getelementptr inbounds ptr, ptr %31, i64 %add.i, !dbg !2159
  %xhv_mro_meta.i = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i, i64 0, i32 5, !dbg !2160
  store ptr %call.i, ptr %xhv_mro_meta.i, align 8, !dbg !2161
  %cache_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 3, !dbg !2162
  store i32 1, ptr %cache_gen.i, align 8, !dbg !2163
  %pkg_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 4, !dbg !2164
  store i32 1, ptr %pkg_gen.i, align 4, !dbg !2165
  %mro_which.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !2166
  store ptr @dfs_alg, ptr %mro_which.i, align 8, !dbg !2167
  br label %cond.end523, !dbg !2154

cond.end523:                                      ; preds = %if.end.cond.end523_crit_edge, %cond.false521
  %34 = phi i32 [ 2, %cond.false521 ], [ %phi.bo, %if.end.cond.end523_crit_edge ]
  %cond524 = phi ptr [ %call.i, %cond.false521 ], [ %30, %if.end.cond.end523_crit_edge ], !dbg !2154
  %pkg_gen = getelementptr inbounds %struct.mro_meta, ptr %cond524, i64 0, i32 4, !dbg !2168
  store i32 %34, ptr %pkg_gen, align 4, !dbg !2155
  %35 = load i32, ptr %sv_flags, align 4, !dbg !2169
  %and526 = and i32 %35, 1048576, !dbg !2169
  %tobool527.not = icmp eq i32 %and526, 0, !dbg !2169
  br i1 %tobool527.not, label %if.then528, label %if.end530, !dbg !2171

if.then528:                                       ; preds = %cond.end523
  %36 = load ptr, ptr %stash, align 8, !dbg !2172
  store ptr null, ptr %36, align 8, !dbg !2173
  br label %if.end530, !dbg !2172

if.end530:                                        ; preds = %if.then528, %cond.end523
  %cmp531 = icmp eq i32 %cond136764, 9, !dbg !2174
  br i1 %cmp531, label %land.lhs.true533, label %lor.lhs.false, !dbg !2176

land.lhs.true533:                                 ; preds = %if.end530
  %call534 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond60758762, ptr noundef nonnull dereferenceable(10) @.str.4) #8, !dbg !2177
  %tobool535.not = icmp eq i32 %call534, 0, !dbg !2177
  br i1 %tobool535.not, label %if.then542, label %lor.lhs.false, !dbg !2178

lor.lhs.false:                                    ; preds = %land.lhs.true533, %if.end530
  %tobool536.not = icmp eq ptr %cond506, null, !dbg !2179
  br i1 %tobool536.not, label %if.end586, label %land.lhs.true537, !dbg !2180

land.lhs.true537:                                 ; preds = %lor.lhs.false
  %call538 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %cond506, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #7, !dbg !2181
  %tobool539.not = icmp eq ptr %call538, null, !dbg !2181
  br i1 %tobool539.not, label %if.then546, label %if.then542, !dbg !2182

if.then542:                                       ; preds = %land.lhs.true537, %land.lhs.true533
  %37 = load i32, ptr @PL_sub_generation, align 4, !dbg !2183
  %inc543 = add i32 %37, 1, !dbg !2183
  store i32 %inc543, ptr @PL_sub_generation, align 4, !dbg !2183
  br label %cleanup594, !dbg !2185

if.then546:                                       ; preds = %land.lhs.true537
  %call547 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %cond506) #7, !dbg !2186
  %call548811 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %cond506, i32 noundef 0) #7, !dbg !2187
  call void @llvm.dbg.value(metadata ptr %call548811, metadata !2138, metadata !DIExpression()), !dbg !2188
  %tobool549.not812 = icmp eq ptr %call548811, null, !dbg !2189
  br i1 %tobool549.not812, label %if.end586, label %while.body, !dbg !2189

while.body:                                       ; preds = %if.then546, %cleanup
  %call548813 = phi ptr [ %call548, %cleanup ], [ %call548811, %if.then546 ]
  %call550 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %call548813) #7, !dbg !2190
  %call551 = tail call ptr @Perl_gv_stashsv(ptr noundef %call550, i32 noundef 0) #7, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %call551, metadata !2141, metadata !DIExpression()), !dbg !2191
  %tobool552.not = icmp eq ptr %call551, null, !dbg !2192
  br i1 %tobool552.not, label %cleanup, label %if.end554, !dbg !2194, !llvm.loop !2195

if.end554:                                        ; preds = %while.body
  %sv_u555 = getelementptr inbounds %struct.hv, ptr %call551, i64 0, i32 3, !dbg !2197
  %38 = load ptr, ptr %sv_u555, align 8, !dbg !2197
  %39 = load ptr, ptr %call551, align 8, !dbg !2197
  %xhv_max557 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 3, !dbg !2197
  %40 = load i64, ptr %xhv_max557, align 8, !dbg !2197
  %add558 = add i64 %40, 1, !dbg !2197
  %arrayidx559 = getelementptr inbounds ptr, ptr %38, i64 %add558, !dbg !2197
  %xhv_mro_meta560 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx559, i64 0, i32 5, !dbg !2197
  %41 = load ptr, ptr %xhv_mro_meta560, align 8, !dbg !2197
  %tobool561.not = icmp eq ptr %41, null, !dbg !2197
  br i1 %tobool561.not, label %cond.false569, label %if.end554.cond.end571_crit_edge, !dbg !2197

if.end554.cond.end571_crit_edge:                  ; preds = %if.end554
  %cache_gen.phi.trans.insert = getelementptr inbounds %struct.mro_meta, ptr %41, i64 0, i32 3
  %.pre817 = load i32, ptr %cache_gen.phi.trans.insert, align 8, !dbg !2198
  br label %cond.end571, !dbg !2197

cond.false569:                                    ; preds = %if.end554
  call void @llvm.dbg.value(metadata ptr %call551, metadata !873, metadata !DIExpression()) #7, !dbg !2199
  %call.i747 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %call.i747, metadata !874, metadata !DIExpression()) #7, !dbg !2199
  %42 = load ptr, ptr %sv_u555, align 8, !dbg !2202
  %43 = load ptr, ptr %call551, align 8, !dbg !2202
  %xhv_max.i749 = getelementptr inbounds %struct.xpvhv, ptr %43, i64 0, i32 3, !dbg !2202
  %44 = load i64, ptr %xhv_max.i749, align 8, !dbg !2202
  %add.i750 = add i64 %44, 1, !dbg !2202
  %arrayidx.i751 = getelementptr inbounds ptr, ptr %42, i64 %add.i750, !dbg !2202
  %xhv_mro_meta.i752 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i751, i64 0, i32 5, !dbg !2203
  store ptr %call.i747, ptr %xhv_mro_meta.i752, align 8, !dbg !2204
  %cache_gen.i753 = getelementptr inbounds %struct.mro_meta, ptr %call.i747, i64 0, i32 3, !dbg !2205
  store i32 1, ptr %cache_gen.i753, align 8, !dbg !2206
  %pkg_gen.i754 = getelementptr inbounds %struct.mro_meta, ptr %call.i747, i64 0, i32 4, !dbg !2207
  store i32 1, ptr %pkg_gen.i754, align 4, !dbg !2208
  %mro_which.i755 = getelementptr inbounds %struct.mro_meta, ptr %call.i747, i64 0, i32 5, !dbg !2209
  store ptr @dfs_alg, ptr %mro_which.i755, align 8, !dbg !2210
  br label %cond.end571, !dbg !2197

cond.end571:                                      ; preds = %if.end554.cond.end571_crit_edge, %cond.false569
  %45 = phi i32 [ 1, %cond.false569 ], [ %.pre817, %if.end554.cond.end571_crit_edge ], !dbg !2198
  %cond572 = phi ptr [ %call.i747, %cond.false569 ], [ %41, %if.end554.cond.end571_crit_edge ], !dbg !2197
  call void @llvm.dbg.value(metadata ptr %cond572, metadata !2143, metadata !DIExpression()), !dbg !2191
  %cache_gen = getelementptr inbounds %struct.mro_meta, ptr %cond572, i64 0, i32 3, !dbg !2211
  %inc573 = add i32 %45, 1, !dbg !2198
  store i32 %inc573, ptr %cache_gen, align 8, !dbg !2198
  %mro_nextmethod = getelementptr inbounds %struct.mro_meta, ptr %cond572, i64 0, i32 2, !dbg !2212
  %46 = load ptr, ptr %mro_nextmethod, align 8, !dbg !2212
  %tobool574.not = icmp eq ptr %46, null, !dbg !2214
  br i1 %tobool574.not, label %if.end577, label %if.then575, !dbg !2215

if.then575:                                       ; preds = %cond.end571
  tail call void @Perl_hv_clear(ptr noundef nonnull %46) #7, !dbg !2216
  br label %if.end577, !dbg !2216

if.end577:                                        ; preds = %if.then575, %cond.end571
  %sv_flags578 = getelementptr inbounds %struct.hv, ptr %call551, i64 0, i32 2, !dbg !2217
  %47 = load i32, ptr %sv_flags578, align 4, !dbg !2217
  %and579 = and i32 %47, 1048576, !dbg !2217
  %tobool580.not = icmp eq i32 %and579, 0, !dbg !2217
  br i1 %tobool580.not, label %if.then581, label %cleanup, !dbg !2219

if.then581:                                       ; preds = %if.end577
  %48 = load ptr, ptr %call551, align 8, !dbg !2220
  store ptr null, ptr %48, align 8, !dbg !2221
  br label %cleanup, !dbg !2220

cleanup:                                          ; preds = %if.end577, %if.then581, %while.body
  %call548 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %cond506, i32 noundef 0) #7, !dbg !2187
  call void @llvm.dbg.value(metadata ptr %call548, metadata !2138, metadata !DIExpression()), !dbg !2188
  %tobool549.not = icmp eq ptr %call548, null, !dbg !2189
  br i1 %tobool549.not, label %if.end586, label %while.body, !dbg !2189

if.end586:                                        ; preds = %cleanup, %if.then546, %lor.lhs.false
  %49 = load i32, ptr %sv_flags, align 4, !dbg !2222
  %or = or i32 %49, 268435456, !dbg !2222
  store i32 %or, ptr %sv_flags, align 4, !dbg !2222
  %50 = load ptr, ptr %sv_u214, align 8, !dbg !2223
  %51 = load ptr, ptr %stash, align 8, !dbg !2223
  %xhv_max590 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3, !dbg !2223
  %52 = load i64, ptr %xhv_max590, align 8, !dbg !2223
  %add591 = add i64 %52, 1, !dbg !2223
  %arrayidx592 = getelementptr inbounds ptr, ptr %50, i64 %add591, !dbg !2223
  %xhv_aux_flags = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx592, i64 0, i32 9, !dbg !2224
  %53 = load i32, ptr %xhv_aux_flags, align 4, !dbg !2225
  %and593 = and i32 %53, -3, !dbg !2225
  store i32 %and593, ptr %xhv_aux_flags, align 4, !dbg !2225
  br label %cleanup594, !dbg !2226

cleanup594:                                       ; preds = %if.end586, %if.then542
  ret void, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_set_mro(ptr nocapture noundef %meta, ptr noundef %name) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata ptr %meta, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata ptr %name, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata ptr %name, metadata !810, metadata !DIExpression()) #7, !dbg !2235
  %0 = load ptr, ptr @PL_registered_mros, align 8, !dbg !2237
  %call.i = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef %name, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !2238
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !811, metadata !DIExpression()) #7, !dbg !2235
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !2239
  br i1 %tobool.not.i, label %if.then, label %Perl_mro_get_from_name.exit, !dbg !2240

Perl_mro_get_from_name.exit:                      ; preds = %entry
  %1 = load ptr, ptr %call.i, align 8, !dbg !2241
  %2 = load ptr, ptr %1, align 8, !dbg !2241
  %xuv_u.i = getelementptr inbounds %struct.xpvuv, ptr %2, i64 0, i32 4, !dbg !2241
  %3 = load i64, ptr %xuv_u.i, align 8, !dbg !2241
  %4 = inttoptr i64 %3 to ptr, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %4, metadata !2233, metadata !DIExpression()), !dbg !2234
  %tobool.not = icmp eq i64 %3, 0, !dbg !2242
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2244

if.then:                                          ; preds = %entry, %Perl_mro_get_from_name.exit
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, ptr noundef %name) #7, !dbg !2245
  br label %if.end, !dbg !2245

if.end:                                           ; preds = %if.then, %Perl_mro_get_from_name.exit
  %retval.0.i33 = phi ptr [ null, %if.then ], [ %4, %Perl_mro_get_from_name.exit ]
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %meta, i64 0, i32 5, !dbg !2246
  %5 = load ptr, ptr %mro_which, align 8, !dbg !2246
  %cmp.not = icmp eq ptr %5, %retval.0.i33, !dbg !2248
  br i1 %cmp.not, label %if.end15, label %if.then1, !dbg !2249

if.then1:                                         ; preds = %if.end
  %mro_linear_current = getelementptr inbounds %struct.mro_meta, ptr %meta, i64 0, i32 1, !dbg !2250
  %6 = load ptr, ptr %mro_linear_current, align 8, !dbg !2250
  %tobool2.not = icmp eq ptr %6, null, !dbg !2253
  br i1 %tobool2.not, label %if.end8, label %land.lhs.true, !dbg !2254

land.lhs.true:                                    ; preds = %if.then1
  %7 = load ptr, ptr %meta, align 8, !dbg !2255
  %tobool3.not = icmp eq ptr %7, null, !dbg !2256
  br i1 %tobool3.not, label %if.then4, label %if.end8, !dbg !2257

if.then4:                                         ; preds = %land.lhs.true
  %call7 = tail call ptr @Perl_mro_set_private_data(ptr noundef nonnull %meta, ptr noundef %5, ptr noundef nonnull %6), !dbg !2258
  br label %if.end8, !dbg !2260

if.end8:                                          ; preds = %if.then4, %land.lhs.true, %if.then1
  store ptr %retval.0.i33, ptr %mro_which, align 8, !dbg !2261
  store ptr null, ptr %mro_linear_current, align 8, !dbg !2262
  %cache_gen = getelementptr inbounds %struct.mro_meta, ptr %meta, i64 0, i32 3, !dbg !2263
  %8 = load i32, ptr %cache_gen, align 8, !dbg !2264
  %inc = add i32 %8, 1, !dbg !2264
  store i32 %inc, ptr %cache_gen, align 8, !dbg !2264
  %mro_nextmethod = getelementptr inbounds %struct.mro_meta, ptr %meta, i64 0, i32 2, !dbg !2265
  %9 = load ptr, ptr %mro_nextmethod, align 8, !dbg !2265
  %tobool11.not = icmp eq ptr %9, null, !dbg !2267
  br i1 %tobool11.not, label %if.end15, label %if.then12, !dbg !2268

if.then12:                                        ; preds = %if.end8
  tail call void @Perl_hv_clear(ptr noundef nonnull %9) #7, !dbg !2269
  br label %if.end15, !dbg !2269

if.end15:                                         ; preds = %if.end8, %if.then12, %if.end
  ret void, !dbg !2270
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_boot_core_mro() local_unnamed_addr #0 !dbg !684 {
entry:
  call void @llvm.dbg.value(metadata ptr @dfs_alg, metadata !825, metadata !DIExpression()) #7, !dbg !2271
  %call.i = tail call ptr @Perl_newSVuv(i64 noundef ptrtoint (ptr @dfs_alg to i64)) #7, !dbg !2273
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !826, metadata !DIExpression()) #7, !dbg !2271
  %0 = load ptr, ptr @PL_registered_mros, align 8, !dbg !2274
  %call2.i = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.16, i64 noundef 3, i32 noundef 0, i32 noundef 4, ptr noundef %call.i, i32 noundef 0) #7, !dbg !2275
  %tobool.not.i = icmp eq ptr %call2.i, null, !dbg !2275
  br i1 %tobool.not.i, label %if.then.i, label %Perl_mro_register.exit, !dbg !2276

if.then.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !839, metadata !DIExpression()) #7, !dbg !2277
  %sv_refcnt.i.i = getelementptr inbounds %struct.sv, ptr %call.i, i64 0, i32 1, !dbg !2279
  %1 = load i32, ptr %sv_refcnt.i.i, align 8, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %1, metadata !845, metadata !DIExpression()) #7, !dbg !2277
  %cmp.i.i = icmp ugt i32 %1, 1, !dbg !2280
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !2281

if.then.i.i:                                      ; preds = %if.then.i
  %sub.i.i = add i32 %1, -1, !dbg !2282
  store i32 %sub.i.i, ptr %sv_refcnt.i.i, align 8, !dbg !2283
  br label %S_SvREFCNT_dec_NN.exit.i, !dbg !2284

if.else.i.i:                                      ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %call.i, i32 noundef %1) #7, !dbg !2285
  br label %S_SvREFCNT_dec_NN.exit.i

S_SvREFCNT_dec_NN.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef 0) #7, !dbg !2286
  br label %Perl_mro_register.exit, !dbg !2287

Perl_mro_register.exit:                           ; preds = %entry, %S_SvREFCNT_dec_NN.exit.i
  %call = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_mro_method_changed_in, ptr noundef nonnull @Perl_boot_core_mro.file, ptr noundef nonnull @.str.13, i32 noundef 0) #7, !dbg !2288
  ret void, !dbg !2289
}

declare !dbg !2290 ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @XS_mro_method_changed_in(ptr noundef %cv) #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2296, metadata !DIExpression()), !dbg !2307
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %0, metadata !2297, metadata !DIExpression()), !dbg !2307
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2308
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2308
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2308
  %2 = load i32, ptr %1, align 4, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %2, metadata !2298, metadata !DIExpression()), !dbg !2307
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2308
  %inc = add nsw i32 %2, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2298, metadata !DIExpression()), !dbg !2307
  %idx.ext = sext i32 %2 to i64, !dbg !2308
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2299, metadata !DIExpression()), !dbg !2307
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2308
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2308
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2308
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2308
  %conv = trunc i64 %4 to i32, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2300, metadata !DIExpression()), !dbg !2307
  %cmp.not = icmp eq i32 %conv, 1, !dbg !2309
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2311

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.14) #7, !dbg !2312
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2313
  br label %if.end, !dbg !2312

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2313
  %idxprom = sext i32 %inc to i64, !dbg !2313
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2313
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %6, metadata !2301, metadata !DIExpression()), !dbg !2307
  %call = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #7, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %call, metadata !2302, metadata !DIExpression()), !dbg !2307
  %tobool.not = icmp eq ptr %call, null, !dbg !2315
  br i1 %tobool.not, label %if.then2, label %if.end.split, !dbg !2317

if.end.split:                                     ; preds = %if.end
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %call), !dbg !2318
  br label %if.end3, !dbg !2317

if.then2:                                         ; preds = %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %6) #7, !dbg !2319
  tail call void @Perl_mro_method_changed_in(ptr noundef null), !dbg !2318
  br label %if.end3, !dbg !2319

if.end3:                                          ; preds = %if.end.split, %if.then2
  call void @llvm.dbg.value(metadata i64 0, metadata !2303, metadata !DIExpression()), !dbg !2320
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !2321
  %add.ptr6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !2321
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr6, i64 -1, !dbg !2321
  store ptr %add.ptr7, ptr @PL_stack_sp, align 8, !dbg !2321
  ret void, !dbg !2322
}

declare !dbg !2323 void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2329 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @S_mro_get_linear_isa_dfs(ptr noundef %stash, i32 noundef %level) #0 !dbg !2332 {
entry:
  %sv = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %stash, metadata !2334, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %level, metadata !2335, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr null, metadata !2343, metadata !DIExpression()), !dbg !2375
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !2376
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2376
  %1 = load ptr, ptr %stash, align 8, !dbg !2376
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %1, i64 0, i32 3, !dbg !2376
  %2 = load i64, ptr %xhv_max, align 8, !dbg !2376
  %add = add i64 %2, 1, !dbg !2376
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %add, !dbg !2376
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2377
  %tobool.not = icmp eq ptr %3, null, !dbg !2376
  br i1 %tobool.not, label %if.then, label %land.lhs.true, !dbg !2378

land.lhs.true:                                    ; preds = %entry
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !2379
  %4 = load i32, ptr %xhv_name_count, align 4, !dbg !2379
  %cmp = icmp sgt i32 %4, 0, !dbg !2379
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2376

cond.true:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %3, align 8, !dbg !2379
  %tobool14.not = icmp eq ptr %5, null, !dbg !2379
  br i1 %tobool14.not, label %cond.false100, label %if.end, !dbg !2379

cond.false:                                       ; preds = %land.lhs.true
  %cmp21 = icmp slt i32 %4, -1, !dbg !2379
  br i1 %cmp21, label %cond.true22, label %cond.false31, !dbg !2376

cond.true22:                                      ; preds = %cond.false
  %arrayidx29 = getelementptr inbounds ptr, ptr %3, i64 1, !dbg !2379
  %6 = load ptr, ptr %arrayidx29, align 8, !dbg !2379
  %tobool30.not = icmp eq ptr %6, null, !dbg !2379
  br i1 %tobool30.not, label %cond.false100, label %if.end, !dbg !2379

cond.false31:                                     ; preds = %cond.false
  %cmp38 = icmp eq i32 %4, -1, !dbg !2379
  br i1 %cmp38, label %cond.false100, label %if.end, !dbg !2376

cond.false100:                                    ; preds = %cond.false31, %cond.true22, %cond.true
  %sv_flags = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 2, !dbg !2380
  %7 = load i32, ptr %sv_flags, align 4, !dbg !2380
  %and = and i32 %7, 33554432, !dbg !2380
  %tobool101.not = icmp eq i32 %and, 0, !dbg !2380
  br i1 %tobool101.not, label %if.then, label %cond.end137, !dbg !2380

cond.end137:                                      ; preds = %cond.false100
  %cond138.pr = load ptr, ptr %3, align 8, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %cond138.pr, metadata !2340, metadata !DIExpression()), !dbg !2375
  %tobool139.not = icmp eq ptr %cond138.pr, null, !dbg !2381
  br i1 %tobool139.not, label %if.then, label %if.end, !dbg !2383

if.then:                                          ; preds = %cond.false100, %entry, %cond.end137
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #7, !dbg !2384
  br label %if.end, !dbg !2384

if.end:                                           ; preds = %cond.true, %cond.true22, %cond.false31, %if.then, %cond.end137
  %cond138443 = phi ptr [ null, %if.then ], [ %cond138.pr, %cond.end137 ], [ %3, %cond.false31 ], [ %5, %cond.true ], [ %6, %cond.true22 ]
  %cmp140 = icmp ugt i32 %level, 100, !dbg !2385
  br i1 %cmp140, label %if.then141, label %if.end142, !dbg !2387

if.then141:                                       ; preds = %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, ptr noundef %cond138443) #7, !dbg !2388
  br label %if.end142, !dbg !2388

if.end142:                                        ; preds = %if.then141, %if.end
  %8 = load ptr, ptr %sv_u, align 8, !dbg !2389
  %9 = load ptr, ptr %stash, align 8, !dbg !2389
  %xhv_max145 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3, !dbg !2389
  %10 = load i64, ptr %xhv_max145, align 8, !dbg !2389
  %add146 = add i64 %10, 1, !dbg !2389
  %arrayidx147 = getelementptr inbounds ptr, ptr %8, i64 %add146, !dbg !2389
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx147, i64 0, i32 5, !dbg !2389
  %11 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !2389
  %tobool148.not = icmp eq ptr %11, null, !dbg !2389
  br i1 %tobool148.not, label %cond.end157.thread, label %cond.end157, !dbg !2389

cond.end157.thread:                               ; preds = %if.end142
  call void @llvm.dbg.value(metadata ptr %stash, metadata !873, metadata !DIExpression()) #7, !dbg !2390
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !874, metadata !DIExpression()) #7, !dbg !2390
  %12 = load ptr, ptr %sv_u, align 8, !dbg !2393
  %13 = load ptr, ptr %stash, align 8, !dbg !2393
  %xhv_max.i = getelementptr inbounds %struct.xpvhv, ptr %13, i64 0, i32 3, !dbg !2393
  %14 = load i64, ptr %xhv_max.i, align 8, !dbg !2393
  %add.i = add i64 %14, 1, !dbg !2393
  %arrayidx.i = getelementptr inbounds ptr, ptr %12, i64 %add.i, !dbg !2393
  %xhv_mro_meta.i = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i, i64 0, i32 5, !dbg !2394
  store ptr %call.i, ptr %xhv_mro_meta.i, align 8, !dbg !2395
  %cache_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 3, !dbg !2396
  store i32 1, ptr %cache_gen.i, align 8, !dbg !2397
  %pkg_gen.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 4, !dbg !2398
  store i32 1, ptr %pkg_gen.i, align 4, !dbg !2399
  %mro_which.i = getelementptr inbounds %struct.mro_meta, ptr %call.i, i64 0, i32 5, !dbg !2400
  store ptr @dfs_alg, ptr %mro_which.i, align 8, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %11, metadata !2341, metadata !DIExpression()), !dbg !2375
  br label %cond.true163, !dbg !2402

cond.end157:                                      ; preds = %if.end142
  %mro_which.phi.trans.insert = getelementptr inbounds %struct.mro_meta, ptr %11, i64 0, i32 5
  %.pre = load ptr, ptr %mro_which.phi.trans.insert, align 8, !dbg !2402
  %phi.cmp = icmp eq ptr %.pre, @dfs_alg, !dbg !2389
  call void @llvm.dbg.value(metadata ptr %11, metadata !2341, metadata !DIExpression()), !dbg !2375
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %11, i64 0, i32 5, !dbg !2402
  br i1 %phi.cmp, label %cond.true163, label %cond.false164, !dbg !2402

cond.true163:                                     ; preds = %cond.end157.thread, %cond.end157
  %cond158484 = phi ptr [ %call.i, %cond.end157.thread ], [ %11, %cond.end157 ]
  %mro_linear_current = getelementptr inbounds %struct.mro_meta, ptr %cond158484, i64 0, i32 1, !dbg !2402
  br label %cond.end166, !dbg !2402

cond.false164:                                    ; preds = %cond.end157
  call void @llvm.dbg.value(metadata ptr %11, metadata !705, metadata !DIExpression()) #7, !dbg !2404
  call void @llvm.dbg.value(metadata ptr @dfs_alg, metadata !706, metadata !DIExpression()) #7, !dbg !2404
  %15 = load ptr, ptr %11, align 8, !dbg !2406
  %call.i426 = tail call ptr @Perl_hv_common(ptr noundef %15, ptr noundef null, ptr noundef nonnull @.str.16, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !2407
  call void @llvm.dbg.value(metadata ptr %call.i426, metadata !707, metadata !DIExpression()) #7, !dbg !2404
  %tobool.not.i = icmp eq ptr %call.i426, null, !dbg !2408
  br i1 %tobool.not.i, label %if.end170, label %if.end.i, !dbg !2409

if.end.i:                                         ; preds = %cond.false164
  %16 = load ptr, ptr %mro_which, align 8, !dbg !2410
  %cmp.i = icmp eq ptr %16, @dfs_alg, !dbg !2411
  br i1 %cmp.i, label %if.then3.i, label %cond.end166, !dbg !2412

if.then3.i:                                       ; preds = %if.end.i
  %17 = load ptr, ptr %call.i426, align 8, !dbg !2413
  %mro_linear_current.i = getelementptr inbounds %struct.mro_meta, ptr %11, i64 0, i32 1, !dbg !2414
  store ptr %17, ptr %mro_linear_current.i, align 8, !dbg !2415
  br label %cond.end166, !dbg !2416

cond.end166:                                      ; preds = %if.end.i, %if.then3.i, %cond.true163
  %cond158483 = phi ptr [ %cond158484, %cond.true163 ], [ %11, %if.then3.i ], [ %11, %if.end.i ]
  %cond167.in = phi ptr [ %mro_linear_current, %cond.true163 ], [ %call.i426, %if.then3.i ], [ %call.i426, %if.end.i ]
  %cond167 = load ptr, ptr %cond167.in, align 8, !dbg !2402
  call void @llvm.dbg.value(metadata ptr %cond167, metadata !2336, metadata !DIExpression()), !dbg !2375
  %tobool168.not = icmp eq ptr %cond167, null, !dbg !2417
  br i1 %tobool168.not, label %if.end170, label %cleanup, !dbg !2418

if.end170:                                        ; preds = %cond.false164, %cond.end166
  %cond158482 = phi ptr [ %11, %cond.false164 ], [ %cond158483, %cond.end166 ]
  %call171 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7, !dbg !2419
  %call172 = tail call ptr @Perl_sv_2mortal(ptr noundef %call171) #7, !dbg !2419
  call void @llvm.dbg.value(metadata ptr %call172, metadata !2336, metadata !DIExpression()), !dbg !2375
  %call173 = tail call ptr @Perl_newSVhek(ptr noundef %cond138443) #7, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %call173, metadata !2342, metadata !DIExpression()), !dbg !2375
  tail call void @Perl_av_push(ptr noundef %call172, ptr noundef %call173) #7, !dbg !2421
  %call174 = tail call ptr @Perl_hv_common(ptr noundef nonnull %stash, ptr noundef null, ptr noundef nonnull @.str.18, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7, !dbg !2422
  call void @llvm.dbg.value(metadata ptr %call174, metadata !2337, metadata !DIExpression()), !dbg !2375
  %tobool175.not = icmp eq ptr %call174, null, !dbg !2423
  br i1 %tobool175.not, label %if.else296, label %land.lhs.true176, !dbg !2424

land.lhs.true176:                                 ; preds = %if.end170
  %18 = load ptr, ptr %call174, align 8, !dbg !2425
  call void @llvm.dbg.value(metadata ptr %18, metadata !2338, metadata !DIExpression()), !dbg !2375
  %tobool177.not = icmp eq ptr %18, null, !dbg !2426
  br i1 %tobool177.not, label %if.else296, label %land.lhs.true178, !dbg !2427

land.lhs.true178:                                 ; preds = %land.lhs.true176
  %sv_flags179 = getelementptr inbounds %struct.gv, ptr %18, i64 0, i32 2, !dbg !2428
  %19 = load i32, ptr %sv_flags179, align 4, !dbg !2428
  %and180 = and i32 %19, 49152, !dbg !2428
  %cmp181 = icmp eq i32 %and180, 32768, !dbg !2428
  br i1 %cmp181, label %land.lhs.true182, label %if.else296, !dbg !2428

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %and184 = and i32 %19, 255, !dbg !2428
  %and184.off = add nsw i32 %and184, -9, !dbg !2428
  %switch = icmp ult i32 %and184.off, 2, !dbg !2428
  br i1 %switch, label %cond.end192, label %if.else296, !dbg !2428

cond.end192:                                      ; preds = %land.lhs.true182
  %sv_u190 = getelementptr inbounds %struct.gv, ptr %18, i64 0, i32 3, !dbg !2429
  %20 = load ptr, ptr %sv_u190, align 8, !dbg !2429
  %gp_av = getelementptr inbounds %struct.gp, ptr %20, i64 0, i32 6, !dbg !2429
  %21 = load ptr, ptr %gp_av, align 8, !dbg !2429
  call void @llvm.dbg.value(metadata ptr %21, metadata !2339, metadata !DIExpression()), !dbg !2375
  %tobool194.not = icmp eq ptr %21, null, !dbg !2430
  br i1 %tobool194.not, label %if.else296, label %land.lhs.true195, !dbg !2431

land.lhs.true195:                                 ; preds = %cond.end192
  %22 = load ptr, ptr %21, align 8, !dbg !2432
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 2, !dbg !2432
  %23 = load i64, ptr %xav_fill, align 8, !dbg !2432
  %cmp197 = icmp sgt i64 %23, -1, !dbg !2433
  br i1 %cmp197, label %if.then198, label %if.else296, !dbg !2434

if.then198:                                       ; preds = %land.lhs.true195
  call void @llvm.dbg.value(metadata ptr undef, metadata !2344, metadata !DIExpression()), !dbg !2435
  %24 = trunc i64 %23 to i32, !dbg !2436
  call void @llvm.dbg.value(metadata ptr null, metadata !2343, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %24, metadata !2347, metadata !DIExpression()), !dbg !2435
  %tobool203.not472 = icmp eq i32 %24, -1, !dbg !2437
  br i1 %tobool203.not472, label %if.end300, label %while.body.lr.ph, !dbg !2437

while.body.lr.ph:                                 ; preds = %if.then198
  %sv_u199 = getelementptr inbounds %struct.av, ptr %21, i64 0, i32 3, !dbg !2438
  %25 = load ptr, ptr %sv_u199, align 8, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %25, metadata !2344, metadata !DIExpression()), !dbg !2435
  %add212 = add i32 %level, 1
  %sv_u262 = getelementptr inbounds %struct.av, ptr %call172, i64 0, i32 3
  br label %while.body, !dbg !2437

while.body:                                       ; preds = %while.body.lr.ph, %if.end294
  %dec475 = phi i32 [ %24, %while.body.lr.ph ], [ %dec, %if.end294 ]
  %stored.0474 = phi ptr [ null, %while.body.lr.ph ], [ %stored.1, %if.end294 ]
  %svp.0473 = phi ptr [ %25, %while.body.lr.ph ], [ %incdec.ptr, %if.end294 ]
  call void @llvm.dbg.value(metadata ptr %stored.0474, metadata !2343, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %svp.0473, metadata !2344, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sv) #7, !dbg !2439
  %26 = load ptr, ptr %svp.0473, align 8, !dbg !2440
  %tobool204.not = icmp eq ptr %26, null, !dbg !2440
  %spec.select = select i1 %tobool204.not, ptr @PL_sv_undef, ptr %26, !dbg !2440
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2348, metadata !DIExpression()), !dbg !2441
  store ptr %spec.select, ptr %sv, align 8, !dbg !2442
  %call209 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %spec.select, i32 noundef 0) #7, !dbg !2443
  call void @llvm.dbg.value(metadata ptr %call209, metadata !2350, metadata !DIExpression()), !dbg !2441
  %incdec.ptr = getelementptr inbounds ptr, ptr %svp.0473, i64 1, !dbg !2444
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2344, metadata !DIExpression()), !dbg !2435
  %tobool210.not = icmp eq ptr %call209, null, !dbg !2445
  br i1 %tobool210.not, label %if.end219, label %if.end219.thread, !dbg !2446

if.end219:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 1, metadata !2352, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2351, metadata !DIExpression()), !dbg !2441
  %tobool220.not = icmp eq ptr %stored.0474, null, !dbg !2447
  br i1 %tobool220.not, label %if.else286, label %while.body225.preheader, !dbg !2448

if.end219.thread:                                 ; preds = %while.body
  %call213 = tail call ptr @S_mro_get_linear_isa_dfs(ptr noundef nonnull %call209, i32 noundef %add212), !dbg !2449
  call void @llvm.dbg.value(metadata ptr %call213, metadata !2353, metadata !DIExpression()), !dbg !2450
  %sv_u214 = getelementptr inbounds %struct.av, ptr %call213, i64 0, i32 3, !dbg !2451
  %27 = load ptr, ptr %sv_u214, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %27, metadata !2351, metadata !DIExpression()), !dbg !2441
  %28 = load ptr, ptr %call213, align 8, !dbg !2452
  %xav_fill216 = getelementptr inbounds %struct.xpvav, ptr %28, i64 0, i32 2, !dbg !2452
  %29 = load i64, ptr %xav_fill216, align 8, !dbg !2452
  %30 = trunc i64 %29 to i32, !dbg !2452
  %conv218 = add i32 %30, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i32 1, metadata !2352, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2351, metadata !DIExpression()), !dbg !2441
  %tobool220.not455 = icmp eq ptr %stored.0474, null, !dbg !2447
  br i1 %tobool220.not455, label %if.then236, label %while.cond222.preheader, !dbg !2448

while.cond222.preheader:                          ; preds = %if.end219.thread
  call void @llvm.dbg.value(metadata ptr %27, metadata !2351, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %conv218, metadata !2352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2441
  %tobool224.not469 = icmp eq i32 %conv218, 0, !dbg !2453
  br i1 %tobool224.not469, label %if.end294, label %while.body225.preheader, !dbg !2453

while.body225.preheader:                          ; preds = %if.end219, %while.cond222.preheader
  %dec223471.in.ph = phi i32 [ 1, %if.end219 ], [ %conv218, %while.cond222.preheader ]
  %subrv_p.1470.ph = phi ptr [ %sv, %if.end219 ], [ %27, %while.cond222.preheader ]
  br label %while.body225, !dbg !2453

while.body225:                                    ; preds = %while.body225.preheader, %if.end233
  %dec223471.in = phi i32 [ %dec223471, %if.end233 ], [ %dec223471.in.ph, %while.body225.preheader ]
  %subrv_p.1470 = phi ptr [ %incdec.ptr226, %if.end233 ], [ %subrv_p.1470.ph, %while.body225.preheader ]
  %dec223471 = add nsw i32 %dec223471.in, -1, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %subrv_p.1470, metadata !2351, metadata !DIExpression()), !dbg !2441
  %incdec.ptr226 = getelementptr inbounds ptr, ptr %subrv_p.1470, i64 1, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %incdec.ptr226, metadata !2351, metadata !DIExpression()), !dbg !2441
  %31 = load ptr, ptr %subrv_p.1470, align 8, !dbg !2456
  call void @llvm.dbg.value(metadata ptr %31, metadata !2359, metadata !DIExpression()), !dbg !2457
  %call227 = tail call ptr @Perl_hv_common(ptr noundef nonnull %stored.0474, ptr noundef %31, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7, !dbg !2458
  call void @llvm.dbg.value(metadata ptr %call227, metadata !2363, metadata !DIExpression()), !dbg !2457
  %he_valu = getelementptr inbounds %struct.he, ptr %call227, i64 0, i32 2, !dbg !2459
  %32 = load ptr, ptr %he_valu, align 8, !dbg !2459
  %cmp228.not = icmp eq ptr %32, @PL_sv_undef, !dbg !2460
  br i1 %cmp228.not, label %if.end233, label %if.then230, !dbg !2461

if.then230:                                       ; preds = %while.body225
  call void @llvm.dbg.value(metadata ptr %32, metadata !2364, metadata !DIExpression()), !dbg !2462
  %hent_hek = getelementptr inbounds %struct.he, ptr %call227, i64 0, i32 1, !dbg !2463
  %33 = load ptr, ptr %hent_hek, align 8, !dbg !2463
  call void @llvm.dbg.value(metadata ptr %33, metadata !2367, metadata !DIExpression()), !dbg !2462
  store ptr @PL_sv_undef, ptr %he_valu, align 8, !dbg !2464
  tail call void @Perl_sv_sethek(ptr noundef %32, ptr noundef %33) #7, !dbg !2465
  tail call void @Perl_av_push(ptr noundef %call172, ptr noundef %32) #7, !dbg !2466
  br label %if.end233, !dbg !2467

if.end233:                                        ; preds = %if.then230, %while.body225
  call void @llvm.dbg.value(metadata ptr %incdec.ptr226, metadata !2351, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %dec223471, metadata !2352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2441
  %tobool224.not = icmp eq i32 %dec223471, 0, !dbg !2453
  br i1 %tobool224.not, label %if.end294, label %while.body225, !dbg !2453, !llvm.loop !2468

if.then236:                                       ; preds = %if.end219.thread
  %sv_u238 = getelementptr inbounds %struct.hv, ptr %call209, i64 0, i32 3, !dbg !2470
  %34 = load ptr, ptr %sv_u238, align 8, !dbg !2470
  %35 = load ptr, ptr %call209, align 8, !dbg !2470
  %xhv_max240 = getelementptr inbounds %struct.xpvhv, ptr %35, i64 0, i32 3, !dbg !2470
  %36 = load i64, ptr %xhv_max240, align 8, !dbg !2470
  %add241 = add i64 %36, 1, !dbg !2470
  %arrayidx242 = getelementptr inbounds ptr, ptr %34, i64 %add241, !dbg !2470
  %xhv_mro_meta243 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx242, i64 0, i32 5, !dbg !2470
  %37 = load ptr, ptr %xhv_mro_meta243, align 8, !dbg !2470
  %tobool244.not = icmp eq ptr %37, null, !dbg !2470
  br i1 %tobool244.not, label %cond.false252, label %cond.end254, !dbg !2470

cond.false252:                                    ; preds = %if.then236
  call void @llvm.dbg.value(metadata ptr %call209, metadata !873, metadata !DIExpression()) #7, !dbg !2471
  %call.i428 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %call.i428, metadata !874, metadata !DIExpression()) #7, !dbg !2471
  %38 = load ptr, ptr %sv_u238, align 8, !dbg !2474
  %39 = load ptr, ptr %call209, align 8, !dbg !2474
  %xhv_max.i430 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 3, !dbg !2474
  %40 = load i64, ptr %xhv_max.i430, align 8, !dbg !2474
  %add.i431 = add i64 %40, 1, !dbg !2474
  %arrayidx.i432 = getelementptr inbounds ptr, ptr %38, i64 %add.i431, !dbg !2474
  %xhv_mro_meta.i433 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx.i432, i64 0, i32 5, !dbg !2475
  store ptr %call.i428, ptr %xhv_mro_meta.i433, align 8, !dbg !2476
  %cache_gen.i434 = getelementptr inbounds %struct.mro_meta, ptr %call.i428, i64 0, i32 3, !dbg !2477
  store i32 1, ptr %cache_gen.i434, align 8, !dbg !2478
  %pkg_gen.i435 = getelementptr inbounds %struct.mro_meta, ptr %call.i428, i64 0, i32 4, !dbg !2479
  store i32 1, ptr %pkg_gen.i435, align 4, !dbg !2480
  %mro_which.i436 = getelementptr inbounds %struct.mro_meta, ptr %call.i428, i64 0, i32 5, !dbg !2481
  store ptr @dfs_alg, ptr %mro_which.i436, align 8, !dbg !2482
  br label %cond.end254, !dbg !2470

cond.end254:                                      ; preds = %if.then236, %cond.false252
  %cond255 = phi ptr [ %call.i428, %cond.false252 ], [ %37, %if.then236 ], !dbg !2470
  %isa = getelementptr inbounds %struct.mro_meta, ptr %cond255, i64 0, i32 6, !dbg !2470
  %41 = load ptr, ptr %isa, align 8, !dbg !2470
  %call256 = tail call ptr @Perl_newHVhv(ptr noundef %41) #7, !dbg !2470
  %call257 = tail call ptr @Perl_sv_2mortal(ptr noundef %call256) #7, !dbg !2470
  call void @llvm.dbg.value(metadata ptr %call257, metadata !2343, metadata !DIExpression()), !dbg !2375
  %conv258 = sext i32 %conv218 to i64, !dbg !2483
  tail call void @Perl_av_extend(ptr noundef %call172, i64 noundef %conv258) #7, !dbg !2483
  %42 = load ptr, ptr %call172, align 8, !dbg !2484
  %xav_fill261 = getelementptr inbounds %struct.xpvav, ptr %42, i64 0, i32 2, !dbg !2484
  store i64 %conv258, ptr %xav_fill261, align 8, !dbg !2485
  call void @llvm.dbg.value(metadata ptr undef, metadata !2369, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %27, metadata !2351, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %conv218, metadata !2352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2441
  %tobool265.not464 = icmp eq i32 %conv218, 0, !dbg !2487
  br i1 %tobool265.not464, label %if.end294, label %while.body266.preheader, !dbg !2487

while.body266.preheader:                          ; preds = %cond.end254
  %43 = load ptr, ptr %sv_u262, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata ptr %43, metadata !2369, metadata !DIExpression()), !dbg !2486
  br label %while.body266, !dbg !2487

while.body266:                                    ; preds = %while.body266.preheader, %cond.end282
  %dec264467 = phi i32 [ %dec264, %cond.end282 ], [ %30, %while.body266.preheader ]
  %svp237.0466 = phi ptr [ %incdec.ptr284, %cond.end282 ], [ %43, %while.body266.preheader ]
  %subrv_p.2465 = phi ptr [ %incdec.ptr268, %cond.end282 ], [ %27, %while.body266.preheader ]
  call void @llvm.dbg.value(metadata ptr %svp237.0466, metadata !2369, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %subrv_p.2465, metadata !2351, metadata !DIExpression()), !dbg !2441
  %incdec.ptr268 = getelementptr inbounds ptr, ptr %subrv_p.2465, i64 1, !dbg !2489
  call void @llvm.dbg.value(metadata ptr %incdec.ptr268, metadata !2351, metadata !DIExpression()), !dbg !2441
  %44 = load ptr, ptr %subrv_p.2465, align 8, !dbg !2490
  call void @llvm.dbg.value(metadata ptr %44, metadata !2373, metadata !DIExpression()), !dbg !2491
  %sv_flags269 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2, !dbg !2492
  %45 = load i32, ptr %sv_flags269, align 4, !dbg !2492
  %and270 = and i32 %45, 268435456, !dbg !2492
  %tobool271.not = icmp eq i32 %and270, 0, !dbg !2492
  br i1 %tobool271.not, label %cond.false280, label %land.lhs.true272, !dbg !2492

land.lhs.true272:                                 ; preds = %while.body266
  %46 = load ptr, ptr %44, align 8, !dbg !2492
  %xpv_len_u = getelementptr inbounds %struct.xpv, ptr %46, i64 0, i32 3, !dbg !2492
  %47 = load i64, ptr %xpv_len_u, align 8, !dbg !2492
  %cmp274 = icmp eq i64 %47, 0, !dbg !2492
  br i1 %cmp274, label %cond.true276, label %cond.false280, !dbg !2492

cond.true276:                                     ; preds = %land.lhs.true272
  %sv_u277 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3, !dbg !2493
  %48 = load ptr, ptr %sv_u277, align 8, !dbg !2493
  %add.ptr278 = getelementptr inbounds i8, ptr %48, i64 -8, !dbg !2493
  %call279 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %add.ptr278) #7, !dbg !2493
  br label %cond.end282, !dbg !2492

cond.false280:                                    ; preds = %land.lhs.true272, %while.body266
  %call281 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %44) #7, !dbg !2494
  br label %cond.end282, !dbg !2492

cond.end282:                                      ; preds = %cond.false280, %cond.true276
  %cond283 = phi ptr [ %call279, %cond.true276 ], [ %call281, %cond.false280 ], !dbg !2492
  %incdec.ptr284 = getelementptr inbounds ptr, ptr %svp237.0466, i64 1, !dbg !2495
  call void @llvm.dbg.value(metadata ptr %incdec.ptr284, metadata !2369, metadata !DIExpression()), !dbg !2486
  store ptr %cond283, ptr %incdec.ptr284, align 8, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %dec264467, metadata !2352, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %incdec.ptr268, metadata !2351, metadata !DIExpression()), !dbg !2441
  %dec264 = add nsw i32 %dec264467, -1, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %dec264, metadata !2352, metadata !DIExpression()), !dbg !2441
  %tobool265.not = icmp eq i32 %dec264467, 0, !dbg !2487
  br i1 %tobool265.not, label %if.end294, label %while.body266, !dbg !2487, !llvm.loop !2498

if.else286:                                       ; preds = %if.end219
  %call287 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !2500
  %call288 = tail call ptr @Perl_sv_2mortal(ptr noundef %call287) #7, !dbg !2500
  call void @llvm.dbg.value(metadata ptr %call288, metadata !2343, metadata !DIExpression()), !dbg !2375
  %call289 = tail call ptr @Perl_hv_common_key_len(ptr noundef %call288, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7, !dbg !2502
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2348, metadata !DIExpression()), !dbg !2441
  %call290 = tail call ptr @Perl_hv_common(ptr noundef %call288, ptr noundef %spec.select, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7, !dbg !2503
  %hent_hek291 = getelementptr inbounds %struct.he, ptr %call290, i64 0, i32 1, !dbg !2503
  %49 = load ptr, ptr %hent_hek291, align 8, !dbg !2503
  %call292 = tail call ptr @Perl_newSVhek(ptr noundef %49) #7, !dbg !2503
  tail call void @Perl_av_push(ptr noundef %call172, ptr noundef %call292) #7, !dbg !2503
  br label %if.end294

if.end294:                                        ; preds = %cond.end282, %if.end233, %cond.end254, %while.cond222.preheader, %if.else286
  %stored.1 = phi ptr [ %call288, %if.else286 ], [ %stored.0474, %while.cond222.preheader ], [ %call257, %cond.end254 ], [ %stored.0474, %if.end233 ], [ %call257, %cond.end282 ], !dbg !2375
  call void @llvm.dbg.value(metadata ptr %stored.1, metadata !2343, metadata !DIExpression()), !dbg !2375
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sv) #7, !dbg !2504
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2344, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %dec475, metadata !2347, metadata !DIExpression()), !dbg !2435
  %dec = add nsw i32 %dec475, -1, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2347, metadata !DIExpression()), !dbg !2435
  %tobool203.not = icmp eq i32 %dec475, 0, !dbg !2437
  br i1 %tobool203.not, label %if.end300, label %while.body, !dbg !2437, !llvm.loop !2506

if.else296:                                       ; preds = %land.lhs.true182, %if.end170, %land.lhs.true176, %land.lhs.true178, %land.lhs.true195, %cond.end192
  %call297 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7, !dbg !2507
  %call298 = tail call ptr @Perl_sv_2mortal(ptr noundef %call297) #7, !dbg !2507
  call void @llvm.dbg.value(metadata ptr %call298, metadata !2343, metadata !DIExpression()), !dbg !2375
  %call299 = tail call ptr @Perl_hv_common_key_len(ptr noundef %call298, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7, !dbg !2509
  br label %if.end300

if.end300:                                        ; preds = %if.end294, %if.then198, %if.else296
  %stored.2 = phi ptr [ %call298, %if.else296 ], [ null, %if.then198 ], [ %stored.1, %if.end294 ], !dbg !2375
  call void @llvm.dbg.value(metadata ptr %stored.2, metadata !2343, metadata !DIExpression()), !dbg !2375
  %call301 = tail call ptr @Perl_hv_common(ptr noundef %stored.2, ptr noundef %call173, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7, !dbg !2510
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %stored.2, i64 0, i32 1, !dbg !2511
  %50 = load i32, ptr %sv_refcnt, align 8, !dbg !2511
  %inc = add i32 %50, 1, !dbg !2511
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2511
  %sv_flags302 = getelementptr inbounds %struct.hv, ptr %stored.2, i64 0, i32 2, !dbg !2512
  %51 = load i32, ptr %sv_flags302, align 4, !dbg !2512
  %and303 = and i32 %51, -134807553, !dbg !2512
  %or = or i32 %and303, 134283264, !dbg !2513
  store i32 %or, ptr %sv_flags302, align 4, !dbg !2513
  %isa305 = getelementptr inbounds %struct.mro_meta, ptr %cond158482, i64 0, i32 6, !dbg !2514
  store ptr %stored.2, ptr %isa305, align 8, !dbg !2515
  %sv_refcnt306 = getelementptr inbounds %struct.sv, ptr %call172, i64 0, i32 1, !dbg !2516
  %52 = load i32, ptr %sv_refcnt306, align 8, !dbg !2516
  %inc307 = add i32 %52, 1, !dbg !2516
  store i32 %inc307, ptr %sv_refcnt306, align 8, !dbg !2516
  %sv_flags308 = getelementptr inbounds %struct.av, ptr %call172, i64 0, i32 2, !dbg !2517
  %53 = load i32, ptr %sv_flags308, align 4, !dbg !2517
  %and309 = and i32 %53, -134807553, !dbg !2517
  %or311 = or i32 %and309, 134283264, !dbg !2518
  store i32 %or311, ptr %sv_flags308, align 4, !dbg !2518
  %call312 = tail call ptr @Perl_mro_set_private_data(ptr noundef %cond158482, ptr noundef nonnull @dfs_alg, ptr noundef %call172), !dbg !2519
  br label %cleanup, !dbg !2520

cleanup:                                          ; preds = %cond.end166, %if.end300
  %retval.0 = phi ptr [ %call172, %if.end300 ], [ %cond167, %cond.end166 ], !dbg !2375
  ret ptr %retval.0, !dbg !2521
}

declare !dbg !2522 void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2525 ptr @Perl_newHVhv(ptr noundef) local_unnamed_addr #2

declare !dbg !2528 ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare !dbg !2529 ptr @Perl_hv_iterkey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2533 i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare !dbg !2536 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2541 void @Perl_hv_ename_delete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

declare !dbg !2544 void @Perl_hv_ename_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!692, !693, !694, !695, !696, !697}
!llvm.ident = !{!698}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dfs_alg", scope: !2, file: !685, line: 32, type: !594, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !681, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/mro_core.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "fc11ec6b335e43cef9bc93c896019be9")
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
!26 = !{!27, !61, !34, !66, !91, !593, !605, !49, !28, !618, !630, !120, !115, !148, !648, !649, !103, !663, !664, !228, !105, !348, !665, !666, !678, !169, !679, !36}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !30, line: 2647, baseType: !31)
!30 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !6, line: 218, size: 192, elements: !32)
!32 = !{!33, !35, !38, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !31, file: !6, line: 219, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !31, file: !6, line: 219, baseType: !36, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !37, line: 175, baseType: !7)
!37 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !31, file: !6, line: 219, baseType: !36, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !31, file: !6, line: 220, baseType: !40, size: 64, offset: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !6, line: 220, size: 64, elements: !41)
!41 = !{!42, !45, !48, !51, !54, !55, !589, !590, !591, !592}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !40, file: !6, line: 220, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !40, file: !6, line: 220, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !30, line: 1670, baseType: !47)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !40, file: !6, line: 220, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !30, line: 1671, baseType: !50)
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !40, file: !6, line: 220, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !30, line: 1877, baseType: !53)
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !40, file: !6, line: 220, baseType: !28, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !40, file: !6, line: 220, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !58, line: 140, size: 1536, elements: !59)
!58 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!59 = !{!60, !450, !451, !452, !457, !545, !546, !547, !548, !549, !550, !551, !567, !568, !569, !570, !571, !572, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !57, file: !58, line: 141, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !30, line: 2649, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !6, line: 246, size: 192, elements: !64)
!64 = !{!65, !435, !436, !437}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !63, file: !6, line: 247, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !30, line: 2667, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !69, line: 130, size: 256, elements: !70)
!69 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!70 = !{!71, !72, !433, !434}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !68, file: !69, line: 131, baseType: !61, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !68, file: !69, line: 132, baseType: !73, size: 64, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !6, line: 494, size: 64, elements: !74)
!74 = !{!75, !432}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !73, file: !6, line: 495, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !30, line: 2658, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !79, line: 23, size: 384, elements: !80)
!79 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!80 = !{!81, !82, !424, !427, !428, !429, !430, !431}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !78, file: !79, line: 24, baseType: !76, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !78, file: !79, line: 25, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !30, line: 2673, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !79, line: 11, size: 512, elements: !86)
!86 = !{!87, !92, !93, !97, !98, !99, !106, !423}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !85, file: !79, line: 12, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !28, !76}
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !85, file: !79, line: 13, baseType: !88, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !85, file: !79, line: 14, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!36, !28, !76}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !85, file: !79, line: 15, baseType: !88, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !85, file: !79, line: 16, baseType: !88, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !85, file: !79, line: 17, baseType: !100, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!91, !28, !76, !28, !103, !105}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !37, line: 174, baseType: !91)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !85, file: !79, line: 19, baseType: !107, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!91, !76, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !30, line: 2677, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !6, line: 2150, size: 320, elements: !113)
!113 = !{!114, !414, !415, !421, !422}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !112, file: !6, line: 2151, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !30, line: 2648, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !6, line: 241, size: 192, elements: !118)
!118 = !{!119, !134, !135, !136}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !117, file: !6, line: 242, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !30, line: 2666, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !123, line: 11, size: 320, elements: !124)
!123 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!124 = !{!125, !126, !127, !132, !133}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !122, file: !123, line: 12, baseType: !61, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !122, file: !123, line: 13, baseType: !73, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !122, file: !123, line: 14, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !129, line: 108, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !131, line: 193, baseType: !47)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !122, file: !123, line: 15, baseType: !128, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !122, file: !123, line: 16, baseType: !27, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !117, file: !6, line: 242, baseType: !36, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !117, file: !6, line: 242, baseType: !36, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !117, file: !6, line: 243, baseType: !137, size: 64, offset: 128)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !6, line: 243, size: 64, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !171, !413}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !137, file: !6, line: 243, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !137, file: !6, line: 243, baseType: !46, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !137, file: !6, line: 243, baseType: !49, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !137, file: !6, line: 243, baseType: !52, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !137, file: !6, line: 243, baseType: !28, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !137, file: !6, line: 243, baseType: !56, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !137, file: !6, line: 243, baseType: !27, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !137, file: !6, line: 243, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !6, line: 186, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !69, line: 32, size: 192, elements: !151)
!151 = !{!152, !153, !164}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !150, file: !69, line: 36, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !150, file: !69, line: 37, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !6, line: 187, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !69, line: 45, size: 96, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !156, file: !69, line: 46, baseType: !36, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !156, file: !69, line: 47, baseType: !105, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !156, file: !69, line: 48, baseType: !161, size: 8, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 1)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !150, file: !69, line: 41, baseType: !165, size: 64, offset: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !69, line: 38, size: 64, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !165, file: !69, line: 39, baseType: !28, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !165, file: !69, line: 40, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 46, baseType: !50)
!170 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !137, file: !6, line: 243, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !30, line: 2652, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !175, line: 11, size: 640, elements: !176)
!175 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!176 = !{!177, !178, !289, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !174, file: !175, line: 12, baseType: !28, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !174, file: !175, line: 13, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !6, line: 251, size: 192, elements: !181)
!181 = !{!182, !274, !275, !276}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !180, file: !6, line: 252, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !30, line: 2672, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !6, line: 603, size: 1088, elements: !186)
!186 = !{!187, !188, !189, !191, !196, !202, !209, !218, !219, !220, !221, !222, !266, !267, !268, !269, !270, !271}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !185, file: !6, line: 604, baseType: !61, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !185, file: !6, line: 604, baseType: !73, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !185, file: !6, line: 604, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !30, line: 2615, baseType: !169)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !185, file: !6, line: 604, baseType: !192, size: 64, offset: 192)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !6, line: 604, size: 64, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !192, file: !6, line: 604, baseType: !190, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !192, file: !6, line: 604, baseType: !43, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !185, file: !6, line: 605, baseType: !197, size: 64, offset: 256)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !6, line: 488, size: 64, elements: !198)
!198 = !{!199, !200, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !197, file: !6, line: 489, baseType: !46, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !197, file: !6, line: 490, baseType: !49, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !197, file: !6, line: 491, baseType: !154, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !185, file: !6, line: 607, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !205, line: 85, baseType: !206)
!205 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !205, line: 83, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !205, line: 83, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !185, file: !6, line: 620, baseType: !210, size: 64, offset: 384)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !6, line: 617, size: 64, elements: !211)
!211 = !{!212, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !210, file: !6, line: 618, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !215, line: 127, baseType: !216)
!215 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !215, line: 127, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !210, file: !6, line: 619, baseType: !34, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !185, file: !6, line: 622, baseType: !46, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !185, file: !6, line: 623, baseType: !46, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !185, file: !6, line: 624, baseType: !46, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !185, file: !6, line: 625, baseType: !43, size: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !185, file: !6, line: 626, baseType: !223, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !30, line: 2653, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !6, line: 231, size: 192, elements: !226)
!226 = !{!227, !251, !252, !253}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !225, file: !6, line: 232, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !30, line: 2668, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !6, line: 561, size: 384, elements: !231)
!231 = !{!232, !233, !234, !235, !240, !241}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !230, file: !6, line: 562, baseType: !61, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !230, file: !6, line: 562, baseType: !73, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !230, file: !6, line: 562, baseType: !190, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !230, file: !6, line: 562, baseType: !236, size: 64, offset: 192)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !6, line: 562, size: 64, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !236, file: !6, line: 562, baseType: !190, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !236, file: !6, line: 562, baseType: !43, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !230, file: !6, line: 563, baseType: !197, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !230, file: !6, line: 564, baseType: !242, size: 64, offset: 320)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !6, line: 479, size: 64, elements: !243)
!243 = !{!244, !245, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !242, file: !6, line: 480, baseType: !52, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !242, file: !6, line: 481, baseType: !61, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !242, file: !6, line: 485, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !6, line: 482, size: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !247, file: !6, line: 483, baseType: !36, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !247, file: !6, line: 484, baseType: !36, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !225, file: !6, line: 232, baseType: !36, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !225, file: !6, line: 232, baseType: !36, size: 32, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !225, file: !6, line: 233, baseType: !254, size: 64, offset: 128)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !6, line: 233, size: 64, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !254, file: !6, line: 233, baseType: !43, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !254, file: !6, line: 233, baseType: !46, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !254, file: !6, line: 233, baseType: !49, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !254, file: !6, line: 233, baseType: !52, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !254, file: !6, line: 233, baseType: !28, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !254, file: !6, line: 233, baseType: !56, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !254, file: !6, line: 233, baseType: !27, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !254, file: !6, line: 233, baseType: !147, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !254, file: !6, line: 233, baseType: !172, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !254, file: !6, line: 233, baseType: !203, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !185, file: !6, line: 627, baseType: !43, size: 64, offset: 768)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !185, file: !6, line: 628, baseType: !223, size: 64, offset: 832)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !185, file: !6, line: 629, baseType: !43, size: 64, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !185, file: !6, line: 630, baseType: !223, size: 64, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !185, file: !6, line: 631, baseType: !44, size: 8, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !185, file: !6, line: 632, baseType: !272, size: 8, offset: 1032)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !37, line: 171, baseType: !273)
!273 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !180, file: !6, line: 252, baseType: !36, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !180, file: !6, line: 252, baseType: !36, size: 32, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !180, file: !6, line: 253, baseType: !277, size: 64, offset: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !6, line: 253, size: 64, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !277, file: !6, line: 253, baseType: !43, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !277, file: !6, line: 253, baseType: !46, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !277, file: !6, line: 253, baseType: !49, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !277, file: !6, line: 253, baseType: !52, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !277, file: !6, line: 253, baseType: !28, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !277, file: !6, line: 253, baseType: !56, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !277, file: !6, line: 253, baseType: !27, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !277, file: !6, line: 253, baseType: !147, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !277, file: !6, line: 253, baseType: !172, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !277, file: !6, line: 253, baseType: !203, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !174, file: !175, line: 14, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !30, line: 2650, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !6, line: 236, size: 192, elements: !293)
!293 = !{!294, !389, !390, !391}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !292, file: !6, line: 237, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !30, line: 2669, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !298, line: 13, size: 832, elements: !299)
!298 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!299 = !{!300, !301, !302, !303, !308, !309, !354, !362, !367, !368, !384, !385, !386, !388}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !297, file: !298, line: 14, baseType: !61, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !297, file: !298, line: 14, baseType: !73, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !297, file: !298, line: 14, baseType: !190, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !297, file: !298, line: 14, baseType: !304, size: 64, offset: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 14, size: 64, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !304, file: !298, line: 14, baseType: !190, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !304, file: !298, line: 14, baseType: !43, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !297, file: !298, line: 15, baseType: !61, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !297, file: !298, line: 15, baseType: !310, size: 64, offset: 320)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 15, size: 64, elements: !311)
!311 = !{!312, !337}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !310, file: !298, line: 15, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !30, line: 2617, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !316, line: 202, size: 320, elements: !317)
!316 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!317 = !{!318, !319, !320, !324, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !315, file: !316, line: 203, baseType: !313, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !315, file: !316, line: 203, baseType: !313, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !315, file: !316, line: 203, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!313}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !315, file: !316, line: 203, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !326, line: 25, baseType: !50)
!326 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !315, file: !316, line: 203, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !315, file: !316, line: 203, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !315, file: !316, line: 203, baseType: !272, size: 8, offset: 272)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !315, file: !316, line: 203, baseType: !272, size: 8, offset: 280)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !310, file: !298, line: 15, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !30, line: 2674, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !30, line: 3691, size: 64, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !349, !353}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !339, file: !30, line: 3692, baseType: !34, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !339, file: !30, line: 3693, baseType: !105, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !339, file: !30, line: 3694, baseType: !36, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !339, file: !30, line: 3695, baseType: !46, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !339, file: !30, line: 3696, baseType: !49, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !339, file: !30, line: 3697, baseType: !47, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !339, file: !30, line: 3698, baseType: !348, size: 8)
!348 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !339, file: !30, line: 3699, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !34}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !339, file: !30, line: 3700, baseType: !350, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !297, file: !298, line: 15, baseType: !355, size: 64, offset: 384)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 15, size: 64, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !355, file: !298, line: 15, baseType: !313, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !355, file: !298, line: 15, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !290}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !297, file: !298, line: 15, baseType: !363, size: 64, offset: 448)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 15, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !363, file: !298, line: 15, baseType: !223, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !363, file: !298, line: 15, baseType: !154, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !297, file: !298, line: 15, baseType: !43, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !297, file: !298, line: 15, baseType: !369, size: 64, offset: 576)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 15, size: 64, elements: !370)
!370 = !{!371, !383}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !369, file: !298, line: 15, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !30, line: 2681, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !326, line: 34, size: 192, elements: !375)
!375 = !{!376, !377, !381, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !374, file: !326, line: 35, baseType: !128, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !374, file: !326, line: 36, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !30, line: 2682, baseType: !116)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !374, file: !326, line: 37, baseType: !36, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !374, file: !326, line: 38, baseType: !36, size: 32, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !369, file: !298, line: 15, baseType: !34, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !297, file: !298, line: 15, baseType: !290, size: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !297, file: !298, line: 15, baseType: !36, size: 32, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !297, file: !298, line: 15, baseType: !387, size: 32, offset: 736)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !6, line: 567, baseType: !36)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !297, file: !298, line: 15, baseType: !105, size: 32, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !292, file: !6, line: 237, baseType: !36, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !292, file: !6, line: 237, baseType: !36, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !292, file: !6, line: 238, baseType: !392, size: 64, offset: 128)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !6, line: 238, size: 64, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !392, file: !6, line: 238, baseType: !43, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !392, file: !6, line: 238, baseType: !46, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !392, file: !6, line: 238, baseType: !49, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !392, file: !6, line: 238, baseType: !52, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !392, file: !6, line: 238, baseType: !28, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !392, file: !6, line: 238, baseType: !56, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !392, file: !6, line: 238, baseType: !27, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !392, file: !6, line: 238, baseType: !147, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !392, file: !6, line: 238, baseType: !172, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !392, file: !6, line: 238, baseType: !203, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !174, file: !175, line: 15, baseType: !36, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !174, file: !175, line: 16, baseType: !36, size: 32, offset: 224)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !174, file: !175, line: 17, baseType: !61, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !174, file: !175, line: 18, baseType: !115, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !174, file: !175, line: 19, baseType: !290, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !174, file: !175, line: 20, baseType: !223, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !174, file: !175, line: 21, baseType: !7, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !174, file: !175, line: 22, baseType: !7, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !174, file: !175, line: 23, baseType: !154, size: 64, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !137, file: !6, line: 243, baseType: !203, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !6, line: 2152, baseType: !49, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !112, file: !6, line: 2153, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !30, line: 2639, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !30, line: 5434, size: 8, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !418, file: !30, line: 5435, baseType: !44, size: 8)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !112, file: !6, line: 2154, baseType: !416, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !112, file: !6, line: 2155, baseType: !115, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !85, file: !79, line: 20, baseType: !88, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !78, file: !79, line: 26, baseType: !425, size: 16, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !37, line: 173, baseType: !426)
!426 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !78, file: !79, line: 27, baseType: !44, size: 8, offset: 144)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !78, file: !79, line: 28, baseType: !272, size: 8, offset: 152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !78, file: !79, line: 29, baseType: !128, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !78, file: !79, line: 30, baseType: !28, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !78, file: !79, line: 31, baseType: !43, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !73, file: !6, line: 496, baseType: !190, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !68, file: !69, line: 133, baseType: !190, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !68, file: !69, line: 134, baseType: !190, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !63, file: !6, line: 247, baseType: !36, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !63, file: !6, line: 247, baseType: !36, size: 32, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !63, file: !6, line: 248, baseType: !438, size: 64, offset: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !6, line: 248, size: 64, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !438, file: !6, line: 248, baseType: !43, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !438, file: !6, line: 248, baseType: !46, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !438, file: !6, line: 248, baseType: !49, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !438, file: !6, line: 248, baseType: !52, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !438, file: !6, line: 248, baseType: !28, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !438, file: !6, line: 248, baseType: !56, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !438, file: !6, line: 248, baseType: !27, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !438, file: !6, line: 248, baseType: !147, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !438, file: !6, line: 248, baseType: !172, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !438, file: !6, line: 248, baseType: !203, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !57, file: !58, line: 141, baseType: !73, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !57, file: !58, line: 141, baseType: !190, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !57, file: !58, line: 141, baseType: !453, size: 64, offset: 192)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !58, line: 141, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !453, file: !58, line: 141, baseType: !190, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !453, file: !58, line: 141, baseType: !43, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !57, file: !58, line: 142, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !58, line: 157, size: 768, elements: !461)
!461 = !{!462, !487, !492, !506, !510, !514, !519, !526, !530, !534, !538, !539}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !460, file: !58, line: 158, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!466, !486, !36}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !30, line: 2651, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !6, line: 256, size: 192, elements: !469)
!469 = !{!470, !471, !472, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !468, file: !6, line: 257, baseType: !56, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !468, file: !6, line: 257, baseType: !36, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !468, file: !6, line: 257, baseType: !36, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !468, file: !6, line: 258, baseType: !474, size: 64, offset: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !6, line: 258, size: 64, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !474, file: !6, line: 258, baseType: !43, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !474, file: !6, line: 258, baseType: !46, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !474, file: !6, line: 258, baseType: !49, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !474, file: !6, line: 258, baseType: !52, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !474, file: !6, line: 258, baseType: !28, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !474, file: !6, line: 258, baseType: !56, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !474, file: !6, line: 258, baseType: !27, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !474, file: !6, line: 258, baseType: !147, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !474, file: !6, line: 258, baseType: !172, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !474, file: !6, line: 258, baseType: !203, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !460, file: !58, line: 159, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!105, !491, !43, !43, !43, !128, !28, !34, !36}
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !460, file: !58, line: 162, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!43, !491, !28, !496, !43, !43, !497, !498}
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !58, line: 152, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !58, line: 148, size: 128, elements: !501)
!501 = !{!502, !504}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !500, file: !58, line: 150, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !500, file: !58, line: 151, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !460, file: !58, line: 170, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!28, !491}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !460, file: !58, line: 171, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !491}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !460, file: !58, line: 172, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !491, !518, !486}
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !460, file: !58, line: 174, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !491, !518, !523}
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !460, file: !58, line: 176, baseType: !527, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!105, !491, !523, !518}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !460, file: !58, line: 178, baseType: !531, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!28, !491, !486, !486, !497}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !460, file: !58, line: 180, baseType: !535, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!28, !491, !523, !497}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !460, file: !58, line: 182, baseType: !507, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !460, file: !58, line: 186, baseType: !540, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!466, !543, !91, !313, !458, !466, !544, !36, !36}
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !57, file: !58, line: 142, baseType: !466, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !57, file: !58, line: 142, baseType: !61, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !57, file: !58, line: 142, baseType: !36, size: 32, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !57, file: !58, line: 142, baseType: !128, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !57, file: !58, line: 142, baseType: !128, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !57, file: !58, line: 142, baseType: !190, size: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !57, file: !58, line: 142, baseType: !552, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !58, line: 45, size: 1024, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !553, file: !58, line: 46, baseType: !272, size: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !553, file: !58, line: 47, baseType: !557, size: 960, offset: 64)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 960, elements: !565)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !58, line: 38, size: 320, elements: !559)
!559 = !{!560, !561, !562, !563, !564}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !558, file: !58, line: 39, baseType: !128, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !558, file: !58, line: 40, baseType: !128, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !558, file: !58, line: 41, baseType: !28, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !558, file: !58, line: 42, baseType: !28, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !558, file: !58, line: 43, baseType: !128, size: 64, offset: 256)
!565 = !{!566}
!566 = !DISubrange(count: 3)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !57, file: !58, line: 142, baseType: !36, size: 32, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !57, file: !58, line: 142, baseType: !36, size: 32, offset: 800)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !57, file: !58, line: 142, baseType: !34, size: 64, offset: 832)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !57, file: !58, line: 142, baseType: !36, size: 32, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !57, file: !58, line: 142, baseType: !36, size: 32, offset: 928)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !57, file: !58, line: 142, baseType: !573, size: 64, offset: 960)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !58, line: 68, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !58, line: 58, size: 192, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !575, file: !58, line: 59, baseType: !128, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !575, file: !58, line: 60, baseType: !128, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !575, file: !58, line: 67, baseType: !128, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !57, file: !58, line: 142, baseType: !43, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !57, file: !58, line: 142, baseType: !28, size: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !57, file: !58, line: 142, baseType: !128, size: 64, offset: 1152)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !57, file: !58, line: 142, baseType: !128, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !57, file: !58, line: 142, baseType: !128, size: 64, offset: 1280)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !57, file: !58, line: 142, baseType: !128, size: 64, offset: 1344)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !57, file: !58, line: 142, baseType: !7, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !57, file: !58, line: 142, baseType: !7, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !57, file: !58, line: 142, baseType: !290, size: 64, offset: 1472)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !40, file: !6, line: 220, baseType: !27, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !40, file: !6, line: 220, baseType: !147, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !40, file: !6, line: 220, baseType: !172, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !40, file: !6, line: 220, baseType: !203, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_alg", file: !69, line: 64, size: 192, elements: !596)
!596 = !{!597, !601, !602, !603, !604}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "resolve", scope: !595, file: !69, line: 65, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!115, !61, !36}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !69, line: 66, baseType: !103, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !595, file: !69, line: 67, baseType: !425, size: 16, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !595, file: !69, line: 68, baseType: !425, size: 16, offset: 144)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !595, file: !69, line: 69, baseType: !36, size: 32, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !30, line: 2661, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !6, line: 510, size: 320, elements: !608)
!608 = !{!609, !610, !611, !612, !617}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !607, file: !6, line: 511, baseType: !61, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !607, file: !6, line: 511, baseType: !73, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !607, file: !6, line: 511, baseType: !190, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !607, file: !6, line: 511, baseType: !613, size: 64, offset: 192)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !6, line: 511, size: 64, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !613, file: !6, line: 511, baseType: !190, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !613, file: !6, line: 511, baseType: !43, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !607, file: !6, line: 512, baseType: !197, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_meta", file: !69, line: 72, size: 512, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_all", scope: !619, file: !69, line: 74, baseType: !61, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_current", scope: !619, file: !69, line: 78, baseType: !28, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mro_nextmethod", scope: !619, file: !69, line: 79, baseType: !61, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cache_gen", scope: !619, file: !69, line: 80, baseType: !36, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_gen", scope: !619, file: !69, line: 81, baseType: !36, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mro_which", scope: !619, file: !69, line: 82, baseType: !593, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !619, file: !69, line: 83, baseType: !61, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !619, file: !69, line: 84, baseType: !61, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_gen", scope: !619, file: !69, line: 85, baseType: !36, size: 32, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv_aux", file: !69, line: 102, size: 448, elements: !632)
!632 = !{!633, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_u", scope: !631, file: !69, line: 103, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xhvnameu", file: !69, line: 97, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_name", scope: !634, file: !69, line: 98, baseType: !154, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_names", scope: !634, file: !69, line: 99, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_backreferences", scope: !631, file: !69, line: 104, baseType: !115, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_eiter", scope: !631, file: !69, line: 105, baseType: !148, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_riter", scope: !631, file: !69, line: 106, baseType: !105, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_count", scope: !631, file: !69, line: 114, baseType: !105, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_mro_meta", scope: !631, file: !69, line: 115, baseType: !618, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_rand", scope: !631, file: !69, line: 117, baseType: !36, size: 32, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_last_rand", scope: !631, file: !69, line: 118, baseType: !36, size: 32, offset: 352)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_fill_lazy", scope: !631, file: !69, line: 121, baseType: !36, size: 32, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_aux_flags", scope: !631, file: !69, line: 122, baseType: !36, size: 32, offset: 416)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !30, line: 2663, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !6, line: 524, size: 384, elements: !652)
!652 = !{!653, !654, !655, !656, !661, !662}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !651, file: !6, line: 525, baseType: !61, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !651, file: !6, line: 525, baseType: !73, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !651, file: !6, line: 525, baseType: !190, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !651, file: !6, line: 525, baseType: !657, size: 64, offset: 192)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !6, line: 525, size: 64, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !657, file: !6, line: 525, baseType: !190, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !657, file: !6, line: 525, baseType: !43, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !651, file: !6, line: 526, baseType: !197, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !651, file: !6, line: 527, baseType: !242, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !6, line: 153, baseType: !5)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !30, line: 2659, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !6, line: 499, size: 256, elements: !669)
!669 = !{!670, !671, !672, !673}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !668, file: !6, line: 500, baseType: !61, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !668, file: !6, line: 500, baseType: !73, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !668, file: !6, line: 500, baseType: !190, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !668, file: !6, line: 500, baseType: !674, size: 64, offset: 192)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !6, line: 500, size: 64, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !674, file: !6, line: 500, baseType: !190, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !674, file: !6, line: 500, baseType: !43, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!681 = !{!682, !0}
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "file", scope: !684, file: !685, line: 1395, type: !689, isLocal: true, isDefinition: true)
!684 = distinct !DISubprogram(name: "Perl_boot_core_mro", scope: !685, file: !685, line: 1393, type: !686, scopeLine: 1394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !688)
!685 = !DIFile(filename: "apps/500.perlbench_r/src/mro_core.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fc11ec6b335e43cef9bc93c896019be9")
!686 = !DISubroutineType(types: !687)
!687 = !{null}
!688 = !{}
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 656, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 82)
!692 = !{i32 7, !"Dwarf Version", i32 5}
!693 = !{i32 2, !"Debug Info Version", i32 3}
!694 = !{i32 1, !"wchar_size", i32 4}
!695 = !{i32 7, !"PIC Level", i32 2}
!696 = !{i32 7, !"PIE Level", i32 2}
!697 = !{i32 7, !"uwtable", i32 2}
!698 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!699 = distinct !DISubprogram(name: "Perl_mro_get_private_data", scope: !685, file: !685, line: 36, type: !700, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !704)
!700 = !DISubroutineType(types: !701)
!701 = !{!28, !702, !703}
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(name: "smeta", arg: 1, scope: !699, file: !685, line: 36, type: !702)
!706 = !DILocalVariable(name: "which", arg: 2, scope: !699, file: !685, line: 37, type: !703)
!707 = !DILocalVariable(name: "data", scope: !699, file: !685, line: 39, type: !27)
!708 = !DILocation(line: 0, scope: !699)
!709 = !DILocation(line: 42, column: 47, scope: !699)
!710 = !DILocation(line: 43, column: 13, scope: !699)
!711 = !DILocation(line: 43, column: 26, scope: !699)
!712 = !DILocation(line: 43, column: 19, scope: !699)
!713 = !DILocation(line: 43, column: 41, scope: !699)
!714 = !DILocation(line: 43, column: 34, scope: !699)
!715 = !DILocation(line: 44, column: 37, scope: !699)
!716 = !DILocation(line: 42, column: 19, scope: !699)
!717 = !DILocation(line: 45, column: 10, scope: !718)
!718 = distinct !DILexicalBlock(scope: !699, file: !685, line: 45, column: 9)
!719 = !DILocation(line: 45, column: 9, scope: !699)
!720 = !DILocation(line: 50, column: 16, scope: !721)
!721 = distinct !DILexicalBlock(scope: !699, file: !685, line: 50, column: 9)
!722 = !DILocation(line: 50, column: 26, scope: !721)
!723 = !DILocation(line: 50, column: 9, scope: !699)
!724 = !DILocation(line: 51, column: 30, scope: !721)
!725 = !DILocation(line: 51, column: 9, scope: !721)
!726 = !DILocation(line: 51, column: 28, scope: !721)
!727 = !DILocation(line: 51, column: 2, scope: !721)
!728 = !DILocation(line: 53, column: 12, scope: !699)
!729 = !DILocation(line: 53, column: 5, scope: !699)
!730 = !DILocation(line: 54, column: 1, scope: !699)
!731 = !DISubprogram(name: "Perl_hv_common", scope: !732, file: !732, line: 1626, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!732 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!733 = !DISubroutineType(types: !734)
!734 = !{!34, !61, !28, !103, !190, !91, !91, !28, !36}
!735 = distinct !DISubprogram(name: "Perl_mro_set_private_data", scope: !685, file: !685, line: 57, type: !736, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!28, !702, !703, !486}
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "smeta", arg: 1, scope: !735, file: !685, line: 57, type: !702)
!740 = !DILocalVariable(name: "which", arg: 2, scope: !735, file: !685, line: 58, type: !703)
!741 = !DILocalVariable(name: "data", arg: 3, scope: !735, file: !685, line: 58, type: !486)
!742 = !DILocalVariable(name: "hv", scope: !743, file: !685, line: 70, type: !747)
!743 = distinct !DILexicalBlock(scope: !744, file: !685, line: 69, column: 9)
!744 = distinct !DILexicalBlock(scope: !745, file: !685, line: 63, column: 6)
!745 = distinct !DILexicalBlock(scope: !746, file: !685, line: 62, column: 33)
!746 = distinct !DILexicalBlock(scope: !735, file: !685, line: 62, column: 9)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!748 = !DILocation(line: 0, scope: !735)
!749 = !DILocation(line: 62, column: 17, scope: !746)
!750 = !DILocation(line: 62, column: 10, scope: !746)
!751 = !DILocation(line: 62, column: 9, scope: !735)
!752 = !DILocation(line: 63, column: 13, scope: !744)
!753 = !DILocation(line: 63, column: 23, scope: !744)
!754 = !DILocation(line: 63, column: 6, scope: !745)
!755 = !DILocation(line: 67, column: 13, scope: !756)
!756 = distinct !DILexicalBlock(scope: !744, file: !685, line: 63, column: 33)
!757 = !DILocation(line: 67, column: 32, scope: !756)
!758 = !DILocation(line: 68, column: 6, scope: !756)
!759 = !DILocation(line: 70, column: 21, scope: !743)
!760 = !DILocation(line: 0, scope: !743)
!761 = !DILocation(line: 72, column: 6, scope: !743)
!762 = !DILocation(line: 72, column: 16, scope: !743)
!763 = !DILocation(line: 73, column: 28, scope: !743)
!764 = !DILocation(line: 75, column: 17, scope: !765)
!765 = distinct !DILexicalBlock(scope: !743, file: !685, line: 75, column: 10)
!766 = !DILocation(line: 75, column: 10, scope: !765)
!767 = !DILocation(line: 75, column: 10, scope: !743)
!768 = !DILocation(line: 78, column: 49, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !685, line: 75, column: 37)
!770 = !DILocation(line: 78, column: 3, scope: !769)
!771 = !DILocation(line: 80, column: 6, scope: !769)
!772 = !DILocation(line: 87, column: 16, scope: !773)
!773 = distinct !DILexicalBlock(scope: !735, file: !685, line: 87, column: 9)
!774 = !DILocation(line: 87, column: 26, scope: !773)
!775 = !DILocation(line: 87, column: 9, scope: !735)
!776 = !DILocation(line: 90, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !685, line: 87, column: 36)
!778 = !DILocation(line: 90, column: 28, scope: !777)
!779 = !DILocation(line: 91, column: 5, scope: !777)
!780 = !DILocation(line: 93, column: 38, scope: !781)
!781 = distinct !DILexicalBlock(scope: !735, file: !685, line: 93, column: 9)
!782 = !DILocation(line: 94, column: 11, scope: !781)
!783 = !DILocation(line: 94, column: 24, scope: !781)
!784 = !DILocation(line: 94, column: 17, scope: !781)
!785 = !DILocation(line: 94, column: 39, scope: !781)
!786 = !DILocation(line: 94, column: 32, scope: !781)
!787 = !DILocation(line: 95, column: 35, scope: !781)
!788 = !DILocation(line: 93, column: 10, scope: !781)
!789 = !DILocation(line: 93, column: 9, scope: !735)
!790 = !DILocation(line: 97, column: 36, scope: !791)
!791 = distinct !DILexicalBlock(scope: !781, file: !685, line: 95, column: 42)
!792 = !DILocation(line: 97, column: 23, scope: !791)
!793 = !DILocation(line: 97, column: 51, scope: !791)
!794 = !DILocation(line: 98, column: 13, scope: !791)
!795 = !DILocation(line: 98, column: 6, scope: !791)
!796 = !DILocation(line: 96, column: 2, scope: !791)
!797 = !DILocation(line: 99, column: 5, scope: !791)
!798 = !DILocation(line: 102, column: 1, scope: !735)
!799 = !DISubprogram(name: "Perl_newSV_type", scope: !732, file: !732, line: 3073, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!800 = !DISubroutineType(types: !801)
!801 = !{!28, !802}
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!803 = !DISubprogram(name: "Perl_croak", scope: !732, file: !732, line: 741, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !103, null}
!806 = distinct !DISubprogram(name: "Perl_mro_get_from_name", scope: !685, file: !685, line: 105, type: !807, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!593, !28}
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "name", arg: 1, scope: !806, file: !685, line: 105, type: !28)
!811 = !DILocalVariable(name: "data", scope: !806, file: !685, line: 106, type: !27)
!812 = !DILocation(line: 0, scope: !806)
!813 = !DILocation(line: 110, column: 40, scope: !806)
!814 = !DILocation(line: 110, column: 19, scope: !806)
!815 = !DILocation(line: 112, column: 10, scope: !816)
!816 = distinct !DILexicalBlock(scope: !806, file: !685, line: 112, column: 9)
!817 = !DILocation(line: 112, column: 9, scope: !806)
!818 = !DILocation(line: 116, column: 12, scope: !806)
!819 = !DILocation(line: 116, column: 5, scope: !806)
!820 = !DILocation(line: 117, column: 1, scope: !806)
!821 = distinct !DISubprogram(name: "Perl_mro_register", scope: !685, file: !685, line: 127, type: !822, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !593}
!824 = !{!825, !826}
!825 = !DILocalVariable(name: "mro", arg: 1, scope: !821, file: !685, line: 127, type: !593)
!826 = !DILocalVariable(name: "wrapper", scope: !821, file: !685, line: 128, type: !28)
!827 = !DILocation(line: 0, scope: !821)
!828 = !DILocation(line: 128, column: 19, scope: !821)
!829 = !DILocation(line: 133, column: 31, scope: !830)
!830 = distinct !DILexicalBlock(scope: !821, file: !685, line: 133, column: 9)
!831 = !DILocation(line: 134, column: 9, scope: !830)
!832 = !DILocation(line: 134, column: 20, scope: !830)
!833 = !DILocation(line: 134, column: 15, scope: !830)
!834 = !DILocation(line: 134, column: 33, scope: !830)
!835 = !DILocation(line: 134, column: 28, scope: !830)
!836 = !DILocation(line: 135, column: 36, scope: !830)
!837 = !DILocation(line: 133, column: 10, scope: !830)
!838 = !DILocation(line: 133, column: 9, scope: !821)
!839 = !DILocalVariable(name: "sv", arg: 1, scope: !840, file: !841, line: 171, type: !28)
!840 = distinct !DISubprogram(name: "S_SvREFCNT_dec_NN", scope: !841, file: !841, line: 171, type: !842, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!841 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!842 = !DISubroutineType(types: !843)
!843 = !{null, !28}
!844 = !{!839, !845}
!845 = !DILocalVariable(name: "rc", scope: !840, file: !841, line: 173, type: !36)
!846 = !DILocation(line: 0, scope: !840, inlinedAt: !847)
!847 = distinct !DILocation(line: 136, column: 2, scope: !848)
!848 = distinct !DILexicalBlock(scope: !830, file: !685, line: 135, column: 43)
!849 = !DILocation(line: 173, column: 14, scope: !840, inlinedAt: !847)
!850 = !DILocation(line: 174, column: 9, scope: !851, inlinedAt: !847)
!851 = distinct !DILexicalBlock(scope: !840, file: !841, line: 174, column: 9)
!852 = !DILocation(line: 174, column: 9, scope: !840, inlinedAt: !847)
!853 = !DILocation(line: 175, column: 20, scope: !851, inlinedAt: !847)
!854 = !DILocation(line: 175, column: 15, scope: !851, inlinedAt: !847)
!855 = !DILocation(line: 175, column: 2, scope: !851, inlinedAt: !847)
!856 = !DILocation(line: 177, column: 2, scope: !851, inlinedAt: !847)
!857 = !DILocation(line: 138, column: 34, scope: !848)
!858 = !DILocation(line: 138, column: 23, scope: !848)
!859 = !DILocation(line: 138, column: 47, scope: !848)
!860 = !DILocation(line: 138, column: 58, scope: !848)
!861 = !DILocation(line: 138, column: 53, scope: !848)
!862 = !DILocation(line: 137, column: 2, scope: !848)
!863 = !DILocation(line: 139, column: 5, scope: !848)
!864 = !DILocation(line: 140, column: 1, scope: !821)
!865 = !DISubprogram(name: "Perl_newSVuv", scope: !732, file: !732, line: 3133, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!866 = !DISubroutineType(types: !867)
!867 = !{!28, !868}
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!869 = distinct !DISubprogram(name: "Perl_mro_meta_init", scope: !685, file: !685, line: 143, type: !870, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{!618, !61}
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "stash", arg: 1, scope: !869, file: !685, line: 143, type: !61)
!874 = !DILocalVariable(name: "newmeta", scope: !869, file: !685, line: 145, type: !618)
!875 = !DILocation(line: 0, scope: !869)
!876 = !DILocation(line: 151, column: 5, scope: !869)
!877 = !DILocation(line: 152, column: 5, scope: !869)
!878 = !DILocation(line: 152, column: 19, scope: !869)
!879 = !DILocation(line: 152, column: 32, scope: !869)
!880 = !DILocation(line: 153, column: 14, scope: !869)
!881 = !DILocation(line: 153, column: 24, scope: !869)
!882 = !DILocation(line: 154, column: 14, scope: !869)
!883 = !DILocation(line: 154, column: 22, scope: !869)
!884 = !DILocation(line: 155, column: 14, scope: !869)
!885 = !DILocation(line: 155, column: 24, scope: !869)
!886 = !DILocation(line: 157, column: 5, scope: !869)
!887 = !DISubprogram(name: "Perl_safesyscalloc", scope: !732, file: !732, line: 3746, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!888 = !DISubroutineType(types: !889)
!889 = !{!34, !169, !169}
!890 = distinct !DISubprogram(name: "Perl_mro_get_linear_isa", scope: !685, file: !685, line: 397, type: !891, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!115, !61}
!893 = !{!894, !895, !896, !897, !900, !904, !905, !906, !909, !912, !913, !914}
!894 = !DILocalVariable(name: "stash", arg: 1, scope: !890, file: !685, line: 397, type: !61)
!895 = !DILocalVariable(name: "meta", scope: !890, file: !685, line: 399, type: !618)
!896 = !DILocalVariable(name: "isa", scope: !890, file: !685, line: 400, type: !115)
!897 = !DILocalVariable(name: "namesv", scope: !898, file: !685, line: 412, type: !486)
!898 = distinct !DILexicalBlock(scope: !899, file: !685, line: 411, column: 38)
!899 = distinct !DILexicalBlock(scope: !890, file: !685, line: 411, column: 9)
!900 = !DILocalVariable(name: "old", scope: !901, file: !685, line: 421, type: !903)
!901 = distinct !DILexicalBlock(scope: !902, file: !685, line: 420, column: 2)
!902 = distinct !DILexicalBlock(scope: !898, file: !685, line: 419, column: 5)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!904 = !DILocalVariable(name: "svp", scope: !901, file: !685, line: 422, type: !27)
!905 = !DILocalVariable(name: "ovp", scope: !901, file: !685, line: 423, type: !27)
!906 = !DILocalVariable(name: "oend", scope: !901, file: !685, line: 424, type: !907)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!909 = !DILocalVariable(name: "isa_hash", scope: !910, file: !685, line: 435, type: !747)
!910 = distinct !DILexicalBlock(scope: !911, file: !685, line: 434, column: 21)
!911 = distinct !DILexicalBlock(scope: !890, file: !685, line: 434, column: 9)
!912 = !DILocalVariable(name: "svp", scope: !910, file: !685, line: 437, type: !908)
!913 = !DILocalVariable(name: "svp_end", scope: !910, file: !685, line: 438, type: !907)
!914 = !DILocalVariable(name: "canon_name", scope: !910, file: !685, line: 439, type: !915)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!917 = !DILocation(line: 0, scope: !890)
!918 = !DILocation(line: 403, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !890, file: !685, line: 403, column: 8)
!920 = !DILocation(line: 403, column: 8, scope: !890)
!921 = !DILocation(line: 404, column: 9, scope: !919)
!922 = !DILocation(line: 406, column: 12, scope: !890)
!923 = !DILocation(line: 0, scope: !869, inlinedAt: !924)
!924 = distinct !DILocation(line: 406, column: 12, scope: !890)
!925 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !924)
!926 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !924)
!927 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !924)
!928 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !924)
!929 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !924)
!930 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !924)
!931 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !924)
!932 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !924)
!933 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !924)
!934 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !924)
!935 = !DILocation(line: 407, column: 16, scope: !936)
!936 = distinct !DILexicalBlock(scope: !890, file: !685, line: 407, column: 9)
!937 = !DILocation(line: 407, column: 9, scope: !890)
!938 = !DILocation(line: 407, column: 10, scope: !936)
!939 = !DILocation(line: 408, column: 9, scope: !936)
!940 = !DILocation(line: 409, column: 17, scope: !890)
!941 = !DILocation(line: 409, column: 28, scope: !890)
!942 = !DILocation(line: 409, column: 11, scope: !890)
!943 = !DILocation(line: 411, column: 15, scope: !899)
!944 = !DILocation(line: 411, column: 25, scope: !899)
!945 = !DILocation(line: 411, column: 9, scope: !890)
!946 = !DILocation(line: 413, column: 7, scope: !898)
!947 = !DILocation(line: 413, column: 21, scope: !898)
!948 = !DILocation(line: 413, column: 23, scope: !898)
!949 = !DILocation(line: 413, column: 6, scope: !898)
!950 = !DILocation(line: 414, column: 10, scope: !898)
!951 = !DILocation(line: 0, scope: !898)
!952 = !DILocation(line: 419, column: 5, scope: !902)
!953 = !DILocation(line: 419, column: 12, scope: !902)
!954 = !DILocation(line: 419, column: 16, scope: !902)
!955 = !DILocation(line: 419, column: 29, scope: !902)
!956 = !DILocation(line: 419, column: 35, scope: !902)
!957 = !DILocation(line: 419, column: 39, scope: !902)
!958 = !DILocation(line: 419, column: 5, scope: !898)
!959 = !DILocation(line: 424, column: 38, scope: !901)
!960 = !DILocalVariable(name: "sv", arg: 1, scope: !961, file: !841, line: 159, type: !28)
!961 = distinct !DISubprogram(name: "S_SvREFCNT_dec", scope: !841, file: !841, line: 159, type: !842, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !962)
!962 = !{!960, !963}
!963 = !DILocalVariable(name: "rc", scope: !964, file: !841, line: 162, type: !36)
!964 = distinct !DILexicalBlock(scope: !965, file: !841, line: 161, column: 29)
!965 = distinct !DILexicalBlock(scope: !961, file: !841, line: 161, column: 9)
!966 = !DILocation(line: 0, scope: !961, inlinedAt: !967)
!967 = distinct !DILocation(line: 431, column: 7, scope: !902)
!968 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !967)
!969 = !DILocation(line: 0, scope: !964, inlinedAt: !967)
!970 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !967)
!971 = distinct !DILexicalBlock(scope: !964, file: !841, line: 163, column: 6)
!972 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !967)
!973 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !967)
!974 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !967)
!975 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !967)
!976 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !967)
!977 = !DILocation(line: 0, scope: !901)
!978 = !DILocation(line: 423, column: 17, scope: !901)
!979 = !DILocation(line: 424, column: 36, scope: !901)
!980 = !DILocation(line: 424, column: 51, scope: !901)
!981 = !DILocation(line: 425, column: 18, scope: !901)
!982 = !DILocation(line: 426, column: 6, scope: !901)
!983 = !DILocation(line: 427, column: 7, scope: !901)
!984 = !DILocation(line: 427, column: 20, scope: !901)
!985 = !DILocation(line: 429, column: 17, scope: !901)
!986 = !DILocation(line: 429, column: 6, scope: !901)
!987 = !DILocation(line: 428, column: 12, scope: !901)
!988 = !DILocation(line: 429, column: 34, scope: !901)
!989 = !DILocalVariable(name: "sv", arg: 1, scope: !990, file: !841, line: 140, type: !28)
!990 = distinct !DISubprogram(name: "S_SvREFCNT_inc", scope: !841, file: !841, line: 140, type: !991, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!28, !28}
!993 = !{!989}
!994 = !DILocation(line: 0, scope: !990, inlinedAt: !995)
!995 = distinct !DILocation(line: 429, column: 34, scope: !901)
!996 = !DILocation(line: 142, column: 9, scope: !997, inlinedAt: !995)
!997 = distinct !DILexicalBlock(scope: !990, file: !841, line: 142, column: 9)
!998 = !DILocation(line: 142, column: 9, scope: !990, inlinedAt: !995)
!999 = !DILocation(line: 143, column: 2, scope: !997, inlinedAt: !995)
!1000 = !DILocation(line: 143, column: 14, scope: !997, inlinedAt: !995)
!1001 = !DILocation(line: 429, column: 32, scope: !901)
!1002 = distinct !{!1002, !986, !988, !1003, !1004}
!1003 = !{!"llvm.loop.mustprogress"}
!1004 = !{!"llvm.loop.unroll.disable"}
!1005 = !DILocation(line: 434, column: 16, scope: !911)
!1006 = !DILocation(line: 434, column: 10, scope: !911)
!1007 = !DILocation(line: 434, column: 9, scope: !890)
!1008 = !DILocation(line: 435, column: 27, scope: !910)
!1009 = !DILocation(line: 0, scope: !910)
!1010 = !DILocation(line: 437, column: 23, scope: !910)
!1011 = !DILocation(line: 438, column: 39, scope: !910)
!1012 = !DILocation(line: 438, column: 37, scope: !910)
!1013 = !DILocation(line: 438, column: 52, scope: !910)
!1014 = !DILocation(line: 439, column: 30, scope: !910)
!1015 = !DILocation(line: 440, column: 11, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !910, file: !685, line: 440, column: 10)
!1017 = !DILocation(line: 440, column: 10, scope: !910)
!1018 = !DILocation(line: 440, column: 36, scope: !1016)
!1019 = !DILocation(line: 442, column: 17, scope: !910)
!1020 = !DILocation(line: 442, column: 6, scope: !910)
!1021 = !DILocation(line: 443, column: 10, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !910, file: !685, line: 442, column: 28)
!1023 = distinct !{!1023, !1020, !1024, !1003, !1004}
!1024 = !DILocation(line: 444, column: 6, scope: !910)
!1025 = !DILocation(line: 446, column: 13, scope: !910)
!1026 = !DILocation(line: 450, column: 13, scope: !910)
!1027 = !DILocation(line: 452, column: 6, scope: !910)
!1028 = !DILocation(line: 454, column: 16, scope: !910)
!1029 = !DILocation(line: 455, column: 5, scope: !910)
!1030 = !DILocation(line: 457, column: 5, scope: !890)
!1031 = !DISubprogram(name: "Perl_newSVhek", scope: !732, file: !732, line: 3084, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!28, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!1035 = !DISubprogram(name: "Perl_sv_eq_flags", scope: !732, file: !732, line: 4359, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!105, !28, !28, !497}
!1038 = !DISubprogram(name: "Perl_sv_2mortal", scope: !732, file: !732, line: 4114, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!28, !486}
!1041 = !DISubprogram(name: "Perl_av_extend", scope: !732, file: !732, line: 214, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !115, !128}
!1044 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !732, file: !732, line: 1627, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!34, !61, !103, !105, !1047, !28, !497}
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!1048 = distinct !DISubprogram(name: "Perl_mro_isa_changed_in", scope: !685, file: !685, line: 484, type: !1049, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !61}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1065, !1068, !1070, !1071, !1075, !1076, !1077, !1079, !1080, !1081, !1083, !1084}
!1052 = !DILocalVariable(name: "stash", arg: 1, scope: !1048, file: !685, line: 484, type: !61)
!1053 = !DILocalVariable(name: "isarev", scope: !1048, file: !685, line: 486, type: !61)
!1054 = !DILocalVariable(name: "linear_mro", scope: !1048, file: !685, line: 487, type: !115)
!1055 = !DILocalVariable(name: "iter", scope: !1048, file: !685, line: 488, type: !148)
!1056 = !DILocalVariable(name: "svp", scope: !1048, file: !685, line: 489, type: !27)
!1057 = !DILocalVariable(name: "items", scope: !1048, file: !685, line: 490, type: !105)
!1058 = !DILocalVariable(name: "is_universal", scope: !1048, file: !685, line: 491, type: !348)
!1059 = !DILocalVariable(name: "meta", scope: !1048, file: !685, line: 492, type: !618)
!1060 = !DILocalVariable(name: "isa", scope: !1048, file: !685, line: 493, type: !61)
!1061 = !DILocalVariable(name: "stashhek", scope: !1048, file: !685, line: 495, type: !1034)
!1062 = !DILocalVariable(name: "stashname", scope: !1048, file: !685, line: 496, type: !496)
!1063 = !DILocalVariable(name: "stashname_len", scope: !1048, file: !685, line: 497, type: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!1065 = !DILocalVariable(name: "isa_hashes", scope: !1066, file: !685, line: 548, type: !61)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !685, line: 547, column: 16)
!1067 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 547, column: 8)
!1068 = !DILocalVariable(name: "revstash", scope: !1069, file: !685, line: 565, type: !61)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !685, line: 564, column: 45)
!1070 = !DILocalVariable(name: "revmeta", scope: !1069, file: !685, line: 566, type: !618)
!1071 = !DILocalVariable(name: "revstash", scope: !1072, file: !685, line: 595, type: !747)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !685, line: 594, column: 53)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !685, line: 592, column: 24)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !685, line: 592, column: 12)
!1075 = !DILocalVariable(name: "isa", scope: !1072, file: !685, line: 596, type: !747)
!1076 = !DILocalVariable(name: "namehek", scope: !1072, file: !685, line: 597, type: !915)
!1077 = !DILocalVariable(name: "sv", scope: !1078, file: !685, line: 608, type: !486)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !685, line: 607, column: 33)
!1079 = !DILocalVariable(name: "mroisarev", scope: !1078, file: !685, line: 609, type: !61)
!1080 = !DILocalVariable(name: "he", scope: !1078, file: !685, line: 611, type: !148)
!1081 = !DILocalVariable(name: "sv", scope: !1082, file: !685, line: 653, type: !486)
!1082 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 652, column: 21)
!1083 = !DILocalVariable(name: "mroisarev", scope: !1082, file: !685, line: 654, type: !61)
!1084 = !DILocalVariable(name: "he", scope: !1082, file: !685, line: 656, type: !148)
!1085 = !DILocation(line: 0, scope: !1048)
!1086 = !DILocation(line: 495, column: 34, scope: !1048)
!1087 = !DILocation(line: 496, column: 36, scope: !1048)
!1088 = !DILocation(line: 497, column: 34, scope: !1048)
!1089 = !DILocation(line: 501, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 501, column: 8)
!1091 = !DILocation(line: 501, column: 8, scope: !1048)
!1092 = !DILocation(line: 502, column: 9, scope: !1090)
!1093 = !DILocation(line: 506, column: 12, scope: !1048)
!1094 = !DILocation(line: 0, scope: !869, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 506, column: 12, scope: !1048)
!1096 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1095)
!1097 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1095)
!1098 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1095)
!1099 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1095)
!1100 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1095)
!1101 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1095)
!1102 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1095)
!1103 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1095)
!1104 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1095)
!1105 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1095)
!1106 = !DILocation(line: 507, column: 5, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 507, column: 5)
!1108 = !DILocation(line: 507, column: 5, scope: !1048)
!1109 = !DILocation(line: 0, scope: !961, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 507, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !685, line: 507, column: 5)
!1112 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1110)
!1113 = !DILocation(line: 0, scope: !964, inlinedAt: !1110)
!1114 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1110)
!1115 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1110)
!1116 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1110)
!1117 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1110)
!1118 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1110)
!1119 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1110)
!1120 = !DILocation(line: 507, column: 5, scope: !1111)
!1121 = !DILocation(line: 507, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1107, file: !685, line: 507, column: 5)
!1123 = !DILocation(line: 0, scope: !961, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 507, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !685, line: 507, column: 5)
!1126 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1124)
!1127 = !DILocation(line: 0, scope: !964, inlinedAt: !1124)
!1128 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1124)
!1129 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1124)
!1130 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1124)
!1131 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1124)
!1132 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1124)
!1133 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1124)
!1134 = !DILocation(line: 507, column: 5, scope: !1125)
!1135 = !DILocation(line: 508, column: 15, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 508, column: 9)
!1137 = !DILocation(line: 508, column: 9, scope: !1136)
!1138 = !DILocation(line: 508, column: 9, scope: !1048)
!1139 = !DILocation(line: 510, column: 14, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !685, line: 508, column: 20)
!1141 = !DILocation(line: 511, column: 12, scope: !1140)
!1142 = !DILocation(line: 512, column: 5, scope: !1140)
!1143 = !DILocation(line: 515, column: 11, scope: !1048)
!1144 = !DILocation(line: 515, column: 18, scope: !1048)
!1145 = !DILocation(line: 520, column: 11, scope: !1048)
!1146 = !DILocation(line: 521, column: 14, scope: !1048)
!1147 = !DILocation(line: 521, column: 20, scope: !1048)
!1148 = !DILocation(line: 523, column: 23, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 523, column: 8)
!1150 = !DILocation(line: 523, column: 28, scope: !1149)
!1151 = !DILocation(line: 523, column: 31, scope: !1149)
!1152 = !DILocation(line: 524, column: 9, scope: !1149)
!1153 = !DILocation(line: 524, column: 13, scope: !1149)
!1154 = !DILocation(line: 524, column: 20, scope: !1149)
!1155 = !DILocation(line: 524, column: 23, scope: !1149)
!1156 = !DILocation(line: 523, column: 8, scope: !1048)
!1157 = !DILocation(line: 525, column: 26, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !685, line: 524, column: 59)
!1159 = !DILocation(line: 527, column: 5, scope: !1158)
!1160 = !DILocation(line: 529, column: 15, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1149, file: !685, line: 528, column: 10)
!1162 = !DILocation(line: 529, column: 24, scope: !1161)
!1163 = !DILocation(line: 534, column: 14, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 534, column: 8)
!1165 = !DILocation(line: 534, column: 8, scope: !1164)
!1166 = !DILocation(line: 534, column: 8, scope: !1048)
!1167 = !DILocation(line: 534, column: 30, scope: !1164)
!1168 = !DILocation(line: 537, column: 5, scope: !1048)
!1169 = !DILocation(line: 539, column: 5, scope: !1048)
!1170 = !DILocation(line: 539, column: 19, scope: !1048)
!1171 = !DILocation(line: 539, column: 33, scope: !1048)
!1172 = !DILocation(line: 542, column: 10, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 542, column: 9)
!1174 = !DILocation(line: 542, column: 9, scope: !1048)
!1175 = !DILocation(line: 542, column: 27, scope: !1173)
!1176 = !DILocation(line: 542, column: 42, scope: !1173)
!1177 = !DILocation(line: 547, column: 8, scope: !1067)
!1178 = !DILocation(line: 547, column: 8, scope: !1048)
!1179 = !DILocation(line: 0, scope: !1066)
!1180 = !DILocation(line: 559, column: 12, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1066, file: !685, line: 559, column: 12)
!1182 = !DILocation(line: 559, column: 12, scope: !1066)
!1183 = !DILocation(line: 562, column: 32, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !685, line: 559, column: 33)
!1185 = !DILocation(line: 563, column: 9, scope: !1184)
!1186 = !DILocation(line: 564, column: 23, scope: !1066)
!1187 = !DILocation(line: 564, column: 9, scope: !1066)
!1188 = !DILocation(line: 565, column: 13, scope: !1069)
!1189 = !DILocation(line: 565, column: 28, scope: !1069)
!1190 = !DILocation(line: 0, scope: !1069)
!1191 = !DILocation(line: 565, column: 17, scope: !1069)
!1192 = !DILocation(line: 568, column: 17, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1069, file: !685, line: 568, column: 16)
!1194 = !DILocation(line: 568, column: 16, scope: !1069)
!1195 = distinct !{!1195, !1187, !1196, !1003, !1004}
!1196 = !DILocation(line: 583, column: 9, scope: !1066)
!1197 = !DILocation(line: 569, column: 23, scope: !1069)
!1198 = !DILocation(line: 0, scope: !869, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 569, column: 23, scope: !1069)
!1200 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1199)
!1201 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1199)
!1202 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1199)
!1203 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1199)
!1204 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1199)
!1205 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1199)
!1206 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1199)
!1207 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1199)
!1208 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1199)
!1209 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1199)
!1210 = !DILocation(line: 570, column: 6, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1069, file: !685, line: 570, column: 6)
!1212 = !DILocation(line: 570, column: 6, scope: !1069)
!1213 = !DILocation(line: 0, scope: !961, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 570, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !685, line: 570, column: 6)
!1216 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1214)
!1217 = !DILocation(line: 0, scope: !964, inlinedAt: !1214)
!1218 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1214)
!1219 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1214)
!1220 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1214)
!1221 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1214)
!1222 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1214)
!1223 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1214)
!1224 = !DILocation(line: 570, column: 6, scope: !1215)
!1225 = !DILocation(line: 570, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1211, file: !685, line: 570, column: 6)
!1227 = !DILocation(line: 0, scope: !961, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 570, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !685, line: 570, column: 6)
!1230 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1228)
!1231 = !DILocation(line: 0, scope: !964, inlinedAt: !1228)
!1232 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1228)
!1233 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1228)
!1234 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1228)
!1235 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1228)
!1236 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1228)
!1237 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1228)
!1238 = !DILocation(line: 570, column: 6, scope: !1229)
!1239 = !DILocation(line: 571, column: 16, scope: !1069)
!1240 = !DILocation(line: 572, column: 26, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1069, file: !685, line: 571, column: 16)
!1242 = !DILocation(line: 572, column: 35, scope: !1241)
!1243 = !DILocation(line: 572, column: 17, scope: !1241)
!1244 = !DILocation(line: 573, column: 25, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1069, file: !685, line: 573, column: 16)
!1246 = !DILocation(line: 573, column: 16, scope: !1245)
!1247 = !DILocation(line: 573, column: 16, scope: !1069)
!1248 = !DILocation(line: 574, column: 17, scope: !1245)
!1249 = !DILocation(line: 575, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1069, file: !685, line: 575, column: 10)
!1251 = !DILocation(line: 575, column: 10, scope: !1069)
!1252 = !DILocation(line: 575, column: 31, scope: !1250)
!1253 = !DILocation(line: 575, column: 49, scope: !1250)
!1254 = !DILocation(line: 578, column: 8, scope: !1069)
!1255 = !DILocation(line: 582, column: 19, scope: !1069)
!1256 = !DILocation(line: 590, column: 9, scope: !1066)
!1257 = !DILocation(line: 592, column: 12, scope: !1074)
!1258 = !DILocation(line: 592, column: 12, scope: !1066)
!1259 = !DILocation(line: 593, column: 13, scope: !1073)
!1260 = !DILocation(line: 594, column: 27, scope: !1073)
!1261 = !DILocation(line: 594, column: 13, scope: !1073)
!1262 = !DILocation(line: 595, column: 46, scope: !1072)
!1263 = !DILocation(line: 595, column: 38, scope: !1072)
!1264 = !DILocation(line: 0, scope: !1072)
!1265 = !DILocation(line: 596, column: 40, scope: !1072)
!1266 = !DILocation(line: 600, column: 30, scope: !1072)
!1267 = !DILocation(line: 601, column: 23, scope: !1072)
!1268 = !DILocation(line: 602, column: 25, scope: !1072)
!1269 = !DILocation(line: 604, column: 27, scope: !1072)
!1270 = !DILocation(line: 605, column: 22, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1072, file: !685, line: 605, column: 21)
!1272 = !DILocation(line: 605, column: 21, scope: !1072)
!1273 = !DILocation(line: 605, column: 41, scope: !1271)
!1274 = !DILocation(line: 607, column: 17, scope: !1072)
!1275 = !DILocation(line: 607, column: 29, scope: !1072)
!1276 = !DILocation(line: 608, column: 36, scope: !1078)
!1277 = !DILocation(line: 0, scope: !1078)
!1278 = !DILocation(line: 611, column: 30, scope: !1078)
!1279 = !DILocation(line: 617, column: 33, scope: !1078)
!1280 = !DILocation(line: 619, column: 21, scope: !1078)
!1281 = !DILocation(line: 628, column: 23, scope: !1078)
!1282 = distinct !{!1282, !1274, !1283, !1003, !1004}
!1283 = !DILocation(line: 629, column: 17, scope: !1072)
!1284 = !DILocation(line: 631, column: 31, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1072, file: !685, line: 631, column: 21)
!1286 = !DILocation(line: 631, column: 21, scope: !1072)
!1287 = !DILocation(line: 633, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !685, line: 631, column: 48)
!1289 = !DILocation(line: 0, scope: !869, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 633, column: 21, scope: !1288)
!1291 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1290)
!1292 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1290)
!1293 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1290)
!1294 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1290)
!1295 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1290)
!1296 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1290)
!1297 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1290)
!1298 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1290)
!1299 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1290)
!1300 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1290)
!1301 = !DILocation(line: 638, column: 17, scope: !1288)
!1302 = distinct !{!1302, !1261, !1303, !1003, !1004}
!1303 = !DILocation(line: 639, column: 13, scope: !1073)
!1304 = !DILocation(line: 648, column: 18, scope: !1048)
!1305 = !DILocation(line: 650, column: 13, scope: !1048)
!1306 = !DILocation(line: 652, column: 5, scope: !1048)
!1307 = !DILocation(line: 649, column: 11, scope: !1048)
!1308 = !DILocation(line: 652, column: 17, scope: !1048)
!1309 = !DILocation(line: 653, column: 24, scope: !1082)
!1310 = !DILocation(line: 0, scope: !1082)
!1311 = !DILocation(line: 656, column: 18, scope: !1082)
!1312 = !DILocation(line: 662, column: 21, scope: !1082)
!1313 = !DILocation(line: 664, column: 2, scope: !1082)
!1314 = !DILocation(line: 671, column: 8, scope: !1082)
!1315 = distinct !{!1315, !1306, !1316, !1003, !1004}
!1316 = !DILocation(line: 672, column: 5, scope: !1048)
!1317 = !DILocation(line: 675, column: 8, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1048, file: !685, line: 675, column: 8)
!1319 = !DILocation(line: 675, column: 12, scope: !1318)
!1320 = !DILocation(line: 675, column: 15, scope: !1318)
!1321 = !DILocation(line: 675, column: 8, scope: !1048)
!1322 = !DILocation(line: 676, column: 9, scope: !1318)
!1323 = !DILocation(line: 678, column: 1, scope: !1048)
!1324 = !DISubprogram(name: "Perl_hv_clear", scope: !732, file: !732, line: 1620, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1325 = !DISubprogram(name: "Perl_hv_iterinit", scope: !732, file: !732, line: 1705, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!105, !61}
!1328 = !DISubprogram(name: "Perl_hv_iternext_flags", scope: !732, file: !732, line: 1729, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!148, !61, !105}
!1331 = !DISubprogram(name: "Perl_gv_stashsv", scope: !732, file: !732, line: 1605, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!61, !28, !105}
!1334 = !DISubprogram(name: "Perl_hv_iterkeysv", scope: !732, file: !732, line: 1717, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!28, !148}
!1337 = !DISubprogram(name: "Perl_sv_upgrade", scope: !732, file: !732, line: 4747, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !486, !664}
!1340 = distinct !DISubprogram(name: "S_mro_clean_isarev", scope: !685, file: !685, line: 682, type: !1341, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !747, !496, !1064, !747, !36, !36}
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1354, !1356, !1357}
!1344 = !DILocalVariable(name: "isa", arg: 1, scope: !1340, file: !685, line: 682, type: !747)
!1345 = !DILocalVariable(name: "name", arg: 2, scope: !1340, file: !685, line: 682, type: !496)
!1346 = !DILocalVariable(name: "len", arg: 3, scope: !1340, file: !685, line: 683, type: !1064)
!1347 = !DILocalVariable(name: "exceptions", arg: 4, scope: !1340, file: !685, line: 683, type: !747)
!1348 = !DILocalVariable(name: "hash", arg: 5, scope: !1340, file: !685, line: 683, type: !36)
!1349 = !DILocalVariable(name: "flags", arg: 6, scope: !1340, file: !685, line: 684, type: !36)
!1350 = !DILocalVariable(name: "iter", scope: !1340, file: !685, line: 686, type: !148)
!1351 = !DILocalVariable(name: "svp", scope: !1352, file: !685, line: 692, type: !27)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !685, line: 691, column: 42)
!1353 = distinct !DILexicalBlock(scope: !1340, file: !685, line: 691, column: 8)
!1354 = !DILocalVariable(name: "klen", scope: !1355, file: !685, line: 694, type: !105)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !685, line: 693, column: 42)
!1356 = !DILocalVariable(name: "key", scope: !1355, file: !685, line: 695, type: !496)
!1357 = !DILocalVariable(name: "isarev", scope: !1358, file: !685, line: 700, type: !747)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !685, line: 699, column: 21)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !685, line: 699, column: 16)
!1360 = !DILocation(line: 0, scope: !1340)
!1361 = !DILocation(line: 691, column: 8, scope: !1353)
!1362 = !DILocation(line: 691, column: 21, scope: !1353)
!1363 = !DILocation(line: 691, column: 24, scope: !1353)
!1364 = !DILocation(line: 691, column: 8, scope: !1340)
!1365 = !DILocation(line: 693, column: 23, scope: !1352)
!1366 = !DILocation(line: 693, column: 9, scope: !1352)
!1367 = !DILocation(line: 694, column: 13, scope: !1355)
!1368 = !DILocation(line: 0, scope: !1355)
!1369 = !DILocation(line: 695, column: 38, scope: !1355)
!1370 = !DILocation(line: 696, column: 27, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1355, file: !685, line: 696, column: 16)
!1372 = !DILocation(line: 696, column: 30, scope: !1371)
!1373 = !DILocation(line: 696, column: 16, scope: !1355)
!1374 = distinct !{!1374, !1366, !1375, !1003, !1004}
!1375 = !DILocation(line: 707, column: 9, scope: !1352)
!1376 = !DILocation(line: 698, column: 19, scope: !1355)
!1377 = !DILocation(line: 0, scope: !1352)
!1378 = !DILocation(line: 699, column: 16, scope: !1359)
!1379 = !DILocation(line: 699, column: 16, scope: !1355)
!1380 = !DILocation(line: 700, column: 43, scope: !1358)
!1381 = !DILocation(line: 0, scope: !1358)
!1382 = !DILocation(line: 701, column: 23, scope: !1358)
!1383 = !DILocation(line: 703, column: 21, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1358, file: !685, line: 703, column: 20)
!1385 = !DILocation(line: 703, column: 37, scope: !1384)
!1386 = !DILocation(line: 703, column: 41, scope: !1384)
!1387 = !DILocation(line: 703, column: 20, scope: !1358)
!1388 = !DILocation(line: 704, column: 27, scope: !1384)
!1389 = !DILocation(line: 704, column: 21, scope: !1384)
!1390 = !DILocation(line: 709, column: 1, scope: !1340)
!1391 = distinct !DISubprogram(name: "Perl_mro_package_moved", scope: !685, file: !685, line: 735, type: !1392, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !747, !747, !1394, !36}
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1410, !1413, !1415}
!1398 = !DILocalVariable(name: "stash", arg: 1, scope: !1391, file: !685, line: 735, type: !747)
!1399 = !DILocalVariable(name: "oldstash", arg: 2, scope: !1391, file: !685, line: 735, type: !747)
!1400 = !DILocalVariable(name: "gv", arg: 3, scope: !1391, file: !685, line: 736, type: !1394)
!1401 = !DILocalVariable(name: "flags", arg: 4, scope: !1391, file: !685, line: 736, type: !36)
!1402 = !DILocalVariable(name: "namesv", scope: !1391, file: !685, line: 738, type: !28)
!1403 = !DILocalVariable(name: "namep", scope: !1391, file: !685, line: 739, type: !638)
!1404 = !DILocalVariable(name: "name_count", scope: !1391, file: !685, line: 740, type: !105)
!1405 = !DILocalVariable(name: "stashes", scope: !1391, file: !685, line: 741, type: !61)
!1406 = !DILocalVariable(name: "iter", scope: !1391, file: !685, line: 742, type: !148)
!1407 = !DILocalVariable(name: "svp", scope: !1408, file: !685, line: 768, type: !27)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !685, line: 767, column: 22)
!1409 = distinct !DILexicalBlock(scope: !1391, file: !685, line: 767, column: 8)
!1410 = !DILocalVariable(name: "aname", scope: !1411, file: !685, line: 808, type: !28)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !685, line: 807, column: 10)
!1412 = distinct !DILexicalBlock(scope: !1391, file: !685, line: 788, column: 9)
!1413 = !DILocalVariable(name: "stash", scope: !1414, file: !685, line: 856, type: !747)
!1414 = distinct !DILexicalBlock(scope: !1391, file: !685, line: 855, column: 42)
!1415 = !DILocalVariable(name: "meta", scope: !1416, file: !685, line: 864, type: !702)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !685, line: 857, column: 21)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !685, line: 857, column: 5)
!1418 = !DILocation(line: 0, scope: !1391)
!1419 = !DILocation(line: 767, column: 16, scope: !1409)
!1420 = !DILocation(line: 767, column: 8, scope: !1391)
!1421 = !DILocation(line: 770, column: 4, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1408, file: !685, line: 770, column: 3)
!1423 = !DILocation(line: 770, column: 16, scope: !1422)
!1424 = !DILocation(line: 770, column: 20, scope: !1422)
!1425 = !DILocation(line: 770, column: 41, scope: !1422)
!1426 = !DILocation(line: 771, column: 11, scope: !1422)
!1427 = !DILocation(line: 0, scope: !1408)
!1428 = !DILocation(line: 771, column: 9, scope: !1422)
!1429 = !DILocation(line: 771, column: 56, scope: !1422)
!1430 = !DILocation(line: 772, column: 3, scope: !1422)
!1431 = !DILocation(line: 772, column: 8, scope: !1422)
!1432 = !DILocation(line: 770, column: 3, scope: !1408)
!1433 = !DILocation(line: 779, column: 18, scope: !1391)
!1434 = !DILocation(line: 779, column: 38, scope: !1391)
!1435 = !DILocation(line: 780, column: 10, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1391, file: !685, line: 780, column: 9)
!1437 = !DILocation(line: 780, column: 9, scope: !1391)
!1438 = !DILocation(line: 785, column: 41, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !685, line: 784, column: 10)
!1440 = !DILocation(line: 786, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1439, file: !685, line: 786, column: 6)
!1442 = !DILocation(line: 786, column: 6, scope: !1439)
!1443 = !DILocation(line: 786, column: 22, scope: !1441)
!1444 = !DILocation(line: 786, column: 56, scope: !1441)
!1445 = !DILocation(line: 0, scope: !1436)
!1446 = !DILocation(line: 788, column: 20, scope: !1412)
!1447 = !DILocation(line: 788, column: 9, scope: !1391)
!1448 = !DILocation(line: 789, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !685, line: 789, column: 6)
!1450 = distinct !DILexicalBlock(scope: !1412, file: !685, line: 788, column: 26)
!1451 = !DILocation(line: 789, column: 22, scope: !1449)
!1452 = !DILocation(line: 789, column: 27, scope: !1449)
!1453 = !DILocation(line: 789, column: 30, scope: !1449)
!1454 = !DILocation(line: 789, column: 6, scope: !1450)
!1455 = !DILocation(line: 790, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !685, line: 789, column: 66)
!1457 = !DILocation(line: 790, column: 29, scope: !1456)
!1458 = !DILocation(line: 791, column: 5, scope: !1456)
!1459 = !DILocation(line: 792, column: 5, scope: !1456)
!1460 = !DILocation(line: 795, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1449, file: !685, line: 794, column: 7)
!1462 = !DILocation(line: 796, column: 10, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1461, file: !685, line: 796, column: 10)
!1464 = !DILocation(line: 796, column: 24, scope: !1463)
!1465 = !DILocation(line: 796, column: 10, scope: !1461)
!1466 = !DILocation(line: 796, column: 30, scope: !1463)
!1467 = !DILocation(line: 797, column: 30, scope: !1463)
!1468 = !DILocation(line: 0, scope: !1449)
!1469 = !DILocation(line: 799, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1450, file: !685, line: 799, column: 6)
!1471 = !DILocation(line: 799, column: 20, scope: !1470)
!1472 = !DILocation(line: 799, column: 6, scope: !1450)
!1473 = !DILocation(line: 800, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !685, line: 799, column: 26)
!1475 = !DILocation(line: 805, column: 9, scope: !1474)
!1476 = !DILocation(line: 809, column: 11, scope: !1411)
!1477 = !DILocation(line: 810, column: 2, scope: !1411)
!1478 = !DILocation(line: 810, column: 19, scope: !1411)
!1479 = !DILocation(line: 811, column: 9, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !685, line: 811, column: 9)
!1481 = distinct !DILexicalBlock(scope: !1411, file: !685, line: 810, column: 23)
!1482 = !DILocation(line: 811, column: 25, scope: !1480)
!1483 = !DILocation(line: 811, column: 30, scope: !1480)
!1484 = !DILocation(line: 811, column: 33, scope: !1480)
!1485 = !DILocation(line: 811, column: 9, scope: !1481)
!1486 = !DILocation(line: 812, column: 11, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1480, file: !685, line: 811, column: 68)
!1488 = !DILocation(line: 812, column: 25, scope: !1487)
!1489 = !DILocation(line: 813, column: 14, scope: !1487)
!1490 = !DILocation(line: 814, column: 14, scope: !1487)
!1491 = !DILocation(line: 818, column: 11, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !685, line: 817, column: 11)
!1493 = !DILocation(line: 0, scope: !1411)
!1494 = !DILocation(line: 819, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !685, line: 819, column: 7)
!1496 = !DILocation(line: 819, column: 21, scope: !1495)
!1497 = !DILocation(line: 819, column: 7, scope: !1492)
!1498 = !DILocation(line: 819, column: 27, scope: !1495)
!1499 = !DILocation(line: 820, column: 27, scope: !1495)
!1500 = !DILocation(line: 0, scope: !1480)
!1501 = !DILocation(line: 822, column: 10, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1481, file: !685, line: 822, column: 10)
!1503 = !DILocation(line: 822, column: 24, scope: !1502)
!1504 = !DILocation(line: 822, column: 10, scope: !1481)
!1505 = !DILocation(line: 823, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !685, line: 822, column: 30)
!1507 = !DILocation(line: 828, column: 13, scope: !1506)
!1508 = !DILocation(line: 829, column: 6, scope: !1481)
!1509 = distinct !{!1509, !1477, !1510, !1003, !1004}
!1510 = !DILocation(line: 830, column: 2, scope: !1411)
!1511 = !DILocation(line: 0, scope: !1412)
!1512 = !DILocation(line: 846, column: 22, scope: !1391)
!1513 = !DILocation(line: 847, column: 5, scope: !1391)
!1514 = !DILocation(line: 854, column: 5, scope: !1391)
!1515 = !DILocation(line: 855, column: 19, scope: !1391)
!1516 = !DILocation(line: 855, column: 5, scope: !1391)
!1517 = !DILocation(line: 856, column: 29, scope: !1414)
!1518 = !DILocation(line: 856, column: 21, scope: !1414)
!1519 = !DILocation(line: 0, scope: !1414)
!1520 = !DILocation(line: 857, column: 5, scope: !1417)
!1521 = !DILocation(line: 857, column: 5, scope: !1414)
!1522 = !DILocation(line: 864, column: 37, scope: !1416)
!1523 = !DILocation(line: 0, scope: !869, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 864, column: 37, scope: !1416)
!1525 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1524)
!1526 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1524)
!1527 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1524)
!1528 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1524)
!1529 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1524)
!1530 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1524)
!1531 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1524)
!1532 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1524)
!1533 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1524)
!1534 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1524)
!1535 = !DILocation(line: 0, scope: !1416)
!1536 = !DILocation(line: 865, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1416, file: !685, line: 865, column: 9)
!1538 = !DILocation(line: 865, column: 28, scope: !1537)
!1539 = !DILocation(line: 865, column: 19, scope: !1537)
!1540 = !DILocation(line: 865, column: 9, scope: !1416)
!1541 = !DILocation(line: 0, scope: !961, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 866, column: 3, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1537, file: !685, line: 865, column: 40)
!1544 = !DILocation(line: 161, column: 9, scope: !965, inlinedAt: !1542)
!1545 = !DILocation(line: 161, column: 9, scope: !961, inlinedAt: !1542)
!1546 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1542)
!1547 = !DILocation(line: 0, scope: !964, inlinedAt: !1542)
!1548 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1542)
!1549 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1542)
!1550 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1542)
!1551 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1542)
!1552 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1542)
!1553 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1542)
!1554 = !DILocation(line: 868, column: 6, scope: !1543)
!1555 = !DILocation(line: 868, column: 18, scope: !1543)
!1556 = !DILocation(line: 868, column: 4, scope: !1543)
!1557 = !DILocation(line: 871, column: 15, scope: !1543)
!1558 = !DILocation(line: 872, column: 6, scope: !1543)
!1559 = !DILocation(line: 873, column: 6, scope: !1416)
!1560 = !DILocation(line: 874, column: 2, scope: !1416)
!1561 = distinct !{!1561, !1516, !1562, !1003, !1004}
!1562 = !DILocation(line: 875, column: 5, scope: !1391)
!1563 = !DILocation(line: 876, column: 1, scope: !1391)
!1564 = !DISubprogram(name: "Perl_newSVpvn_flags", scope: !732, file: !732, line: 3116, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!28, !496, !1064, !497}
!1567 = !DISubprogram(name: "Perl_sv_catpvn_flags", scope: !732, file: !732, line: 4229, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !486, !103, !1064, !518}
!1570 = !DISubprogram(name: "Perl_newSVpvn", scope: !732, file: !732, line: 3112, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!28, !496, !1064}
!1573 = !DISubprogram(name: "Perl_av_push", scope: !732, file: !732, line: 259, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !115, !28}
!1576 = distinct !DISubprogram(name: "S_mro_gather_and_rename", scope: !685, file: !685, line: 879, type: !1577, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !747, !747, !61, !61, !28}
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1591, !1592, !1593, !1594, !1595, !1598, !1600, !1603, !1605, !1606, !1607, !1611, !1612, !1613, !1618, !1623, !1627, !1630, !1632, !1633, !1640, !1641, !1644, !1645, !1646, !1649, !1652, !1659, !1660, !1663, !1666, !1669}
!1580 = !DILocalVariable(name: "stashes", arg: 1, scope: !1576, file: !685, line: 879, type: !747)
!1581 = !DILocalVariable(name: "seen_stashes", arg: 2, scope: !1576, file: !685, line: 879, type: !747)
!1582 = !DILocalVariable(name: "stash", arg: 3, scope: !1576, file: !685, line: 880, type: !61)
!1583 = !DILocalVariable(name: "oldstash", arg: 4, scope: !1576, file: !685, line: 880, type: !61)
!1584 = !DILocalVariable(name: "namesv", arg: 5, scope: !1576, file: !685, line: 880, type: !28)
!1585 = !DILocalVariable(name: "xhv", scope: !1576, file: !685, line: 882, type: !66)
!1586 = !DILocalVariable(name: "entry", scope: !1576, file: !685, line: 883, type: !148)
!1587 = !DILocalVariable(name: "riter", scope: !1576, file: !685, line: 884, type: !105)
!1588 = !DILocalVariable(name: "items", scope: !1576, file: !685, line: 885, type: !105)
!1589 = !DILocalVariable(name: "stash_had_name", scope: !1576, file: !685, line: 886, type: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!1591 = !DILocalVariable(name: "fetched_isarev", scope: !1576, file: !685, line: 887, type: !348)
!1592 = !DILocalVariable(name: "seen", scope: !1576, file: !685, line: 888, type: !61)
!1593 = !DILocalVariable(name: "isarev", scope: !1576, file: !685, line: 889, type: !61)
!1594 = !DILocalVariable(name: "svp", scope: !1576, file: !685, line: 890, type: !27)
!1595 = !DILocalVariable(name: "meta", scope: !1596, file: !685, line: 913, type: !618)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !685, line: 911, column: 18)
!1597 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 911, column: 8)
!1598 = !DILocalVariable(name: "entry", scope: !1596, file: !685, line: 914, type: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1600 = !DILocalVariable(name: "enamehek", scope: !1601, file: !685, line: 939, type: !1034)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !685, line: 938, column: 28)
!1602 = distinct !DILexicalBlock(scope: !1596, file: !685, line: 938, column: 5)
!1603 = !DILocalVariable(name: "name_utf8", scope: !1604, file: !685, line: 949, type: !497)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !685, line: 948, column: 22)
!1605 = !DILocalVariable(name: "len", scope: !1604, file: !685, line: 950, type: !190)
!1606 = !DILocalVariable(name: "name", scope: !1604, file: !685, line: 951, type: !103)
!1607 = !DILocalVariable(name: "name_utf8", scope: !1608, file: !685, line: 992, type: !497)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !685, line: 991, column: 18)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !685, line: 982, column: 15)
!1610 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 982, column: 8)
!1611 = !DILocalVariable(name: "len", scope: !1608, file: !685, line: 993, type: !190)
!1612 = !DILocalVariable(name: "name", scope: !1608, file: !685, line: 994, type: !103)
!1613 = !DILocalVariable(name: "meta", scope: !1614, file: !685, line: 1025, type: !702)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !685, line: 1024, column: 6)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !685, line: 1023, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !685, line: 1020, column: 7)
!1617 = distinct !DILexicalBlock(scope: !1609, file: !685, line: 1018, column: 5)
!1618 = !DILocalVariable(name: "hvename", scope: !1619, file: !685, line: 1058, type: !1034)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !685, line: 1056, column: 16)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !685, line: 1056, column: 6)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !685, line: 1044, column: 25)
!1622 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 1044, column: 8)
!1623 = !DILocalVariable(name: "iter", scope: !1624, file: !685, line: 1076, type: !148)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !685, line: 1075, column: 41)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !685, line: 1074, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 1073, column: 9)
!1627 = !DILocalVariable(name: "he", scope: !1628, file: !685, line: 1079, type: !1599)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !685, line: 1078, column: 23)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !685, line: 1078, column: 6)
!1630 = !DILocalVariable(name: "revstash", scope: !1631, file: !685, line: 1085, type: !61)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !685, line: 1084, column: 38)
!1632 = !DILocalVariable(name: "meta", scope: !1631, file: !685, line: 1086, type: !618)
!1633 = !DILocalVariable(name: "key", scope: !1634, file: !685, line: 1122, type: !103)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !685, line: 1121, column: 42)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !685, line: 1121, column: 6)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !685, line: 1121, column: 6)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !685, line: 1117, column: 39)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !685, line: 1109, column: 42)
!1639 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 1109, column: 8)
!1640 = !DILocalVariable(name: "len", scope: !1634, file: !685, line: 1123, type: !105)
!1641 = !DILocalVariable(name: "oldsubstash", scope: !1642, file: !685, line: 1132, type: !747)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !685, line: 1131, column: 36)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !685, line: 1130, column: 7)
!1644 = !DILocalVariable(name: "stashentry", scope: !1642, file: !685, line: 1133, type: !543)
!1645 = !DILocalVariable(name: "substash", scope: !1642, file: !685, line: 1135, type: !61)
!1646 = !DILocalVariable(name: "subname", scope: !1647, file: !685, line: 1150, type: !28)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !685, line: 1147, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !685, line: 1141, column: 11)
!1649 = !DILocalVariable(name: "aname", scope: !1650, file: !685, line: 1152, type: !28)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !685, line: 1151, column: 35)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !685, line: 1151, column: 7)
!1652 = !DILocalVariable(name: "key", scope: !1653, file: !685, line: 1206, type: !103)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !685, line: 1205, column: 42)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !685, line: 1205, column: 6)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !685, line: 1205, column: 6)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !685, line: 1201, column: 39)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !685, line: 1195, column: 37)
!1658 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 1195, column: 9)
!1659 = !DILocalVariable(name: "len", scope: !1653, file: !685, line: 1207, type: !105)
!1660 = !DILocalVariable(name: "substash", scope: !1661, file: !685, line: 1216, type: !61)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !685, line: 1215, column: 36)
!1662 = distinct !DILexicalBlock(scope: !1653, file: !685, line: 1214, column: 7)
!1663 = !DILocalVariable(name: "subname", scope: !1664, file: !685, line: 1227, type: !28)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !685, line: 1226, column: 20)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !685, line: 1226, column: 10)
!1666 = !DILocalVariable(name: "aname", scope: !1667, file: !685, line: 1235, type: !28)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !685, line: 1234, column: 35)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !685, line: 1234, column: 7)
!1669 = !DILabel(scope: !1576, name: "check_stash", file: !685, line: 981)
!1670 = !DILocation(line: 0, scope: !1576)
!1671 = !DILocation(line: 886, column: 33, scope: !1576)
!1672 = !DILocation(line: 886, column: 39, scope: !1576)
!1673 = !DILocation(line: 886, column: 42, scope: !1576)
!1674 = !DILocation(line: 911, column: 8, scope: !1597)
!1675 = !DILocation(line: 911, column: 8, scope: !1576)
!1676 = !DILocation(line: 916, column: 7, scope: !1596)
!1677 = !DILocation(line: 0, scope: !1596)
!1678 = !DILocation(line: 920, column: 5, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1596, file: !685, line: 920, column: 5)
!1680 = !DILocation(line: 920, column: 18, scope: !1679)
!1681 = !DILocation(line: 920, column: 34, scope: !1679)
!1682 = !DILocation(line: 921, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !685, line: 920, column: 65)
!1684 = !DILocation(line: 922, column: 6, scope: !1683)
!1685 = !DILocation(line: 925, column: 18, scope: !1596)
!1686 = !DILocation(line: 925, column: 5, scope: !1596)
!1687 = !DILocation(line: 925, column: 3, scope: !1596)
!1688 = !DILocation(line: 926, column: 9, scope: !1596)
!1689 = !DILocation(line: 0, scope: !869, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 926, column: 9, scope: !1596)
!1691 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1690)
!1692 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1690)
!1693 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1690)
!1694 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1690)
!1695 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1690)
!1696 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1690)
!1697 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1690)
!1698 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1690)
!1699 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1690)
!1700 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1690)
!1701 = !DILocation(line: 928, column: 4, scope: !1596)
!1702 = !DILocation(line: 935, column: 2, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1596, file: !685, line: 935, column: 2)
!1704 = !DILocation(line: 935, column: 2, scope: !1596)
!1705 = !DILocation(line: 0, scope: !961, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 935, column: 2, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !685, line: 935, column: 2)
!1708 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1706)
!1709 = !DILocation(line: 0, scope: !964, inlinedAt: !1706)
!1710 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1706)
!1711 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1706)
!1712 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1706)
!1713 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1706)
!1714 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1706)
!1715 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1706)
!1716 = !DILocation(line: 935, column: 2, scope: !1707)
!1717 = !DILocation(line: 935, column: 2, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1703, file: !685, line: 935, column: 2)
!1719 = !DILocation(line: 0, scope: !961, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 935, column: 2, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !685, line: 935, column: 2)
!1722 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1720)
!1723 = !DILocation(line: 0, scope: !964, inlinedAt: !1720)
!1724 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1720)
!1725 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1720)
!1726 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1720)
!1727 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1720)
!1728 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1720)
!1729 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1720)
!1730 = !DILocation(line: 935, column: 2, scope: !1721)
!1731 = !DILocation(line: 938, column: 5, scope: !1602)
!1732 = !DILocation(line: 938, column: 5, scope: !1596)
!1733 = !DILocation(line: 939, column: 35, scope: !1601)
!1734 = !DILocation(line: 940, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1601, file: !685, line: 940, column: 9)
!1736 = !DILocation(line: 0, scope: !1601)
!1737 = !DILocation(line: 940, column: 24, scope: !1735)
!1738 = !DILocation(line: 940, column: 9, scope: !1601)
!1739 = !DILocation(line: 941, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !685, line: 940, column: 37)
!1741 = !DILocation(line: 942, column: 9, scope: !1740)
!1742 = !DILocation(line: 948, column: 6, scope: !1601)
!1743 = !DILocation(line: 948, column: 18, scope: !1601)
!1744 = !DILocation(line: 949, column: 39, scope: !1604)
!1745 = !DILocation(line: 0, scope: !1604)
!1746 = !DILocation(line: 950, column: 3, scope: !1604)
!1747 = !DILocation(line: 951, column: 22, scope: !1604)
!1748 = !DILocation(line: 952, column: 6, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1604, file: !685, line: 952, column: 6)
!1750 = !DILocation(line: 952, column: 6, scope: !1604)
!1751 = !DILocation(line: 955, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !685, line: 952, column: 21)
!1753 = !DILocation(line: 956, column: 17, scope: !1752)
!1754 = !DILocation(line: 957, column: 17, scope: !1604)
!1755 = !DILocation(line: 958, column: 10, scope: !1604)
!1756 = !DILocation(line: 960, column: 8, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1604, file: !685, line: 960, column: 7)
!1758 = !DILocation(line: 960, column: 7, scope: !1604)
!1759 = !DILocation(line: 969, column: 10, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !685, line: 969, column: 10)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !685, line: 960, column: 24)
!1762 = !DILocation(line: 969, column: 32, scope: !1760)
!1763 = !DILocation(line: 969, column: 10, scope: !1761)
!1764 = !DILocation(line: 970, column: 13, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !685, line: 970, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1760, file: !685, line: 969, column: 45)
!1767 = !DILocation(line: 970, column: 7, scope: !1765)
!1768 = !DILocation(line: 970, column: 17, scope: !1765)
!1769 = !DILocation(line: 970, column: 20, scope: !1765)
!1770 = !DILocation(line: 970, column: 7, scope: !1766)
!1771 = !DILocation(line: 971, column: 8, scope: !1765)
!1772 = !DILocation(line: 973, column: 19, scope: !1766)
!1773 = !DILocation(line: 976, column: 7, scope: !1766)
!1774 = !DILocation(line: 978, column: 6, scope: !1601)
!1775 = distinct !{!1775, !1742, !1774, !1003, !1004}
!1776 = !DILocation(line: 890, column: 10, scope: !1576)
!1777 = !DILocation(line: 889, column: 9, scope: !1576)
!1778 = !DILocation(line: 887, column: 10, scope: !1576)
!1779 = !DILocation(line: 885, column: 9, scope: !1576)
!1780 = !DILocation(line: 981, column: 4, scope: !1576)
!1781 = !DILocation(line: 982, column: 8, scope: !1610)
!1782 = !DILocation(line: 982, column: 8, scope: !1576)
!1783 = !DILocation(line: 983, column: 5, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1609, file: !685, line: 983, column: 5)
!1785 = !DILocation(line: 983, column: 20, scope: !1784)
!1786 = !DILocation(line: 983, column: 5, scope: !1609)
!1787 = !DILocation(line: 984, column: 14, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !685, line: 983, column: 33)
!1789 = !DILocation(line: 985, column: 12, scope: !1788)
!1790 = !DILocation(line: 991, column: 2, scope: !1609)
!1791 = !DILocation(line: 991, column: 14, scope: !1609)
!1792 = !DILocation(line: 992, column: 35, scope: !1608)
!1793 = !DILocation(line: 0, scope: !1608)
!1794 = !DILocation(line: 993, column: 6, scope: !1608)
!1795 = !DILocation(line: 994, column: 25, scope: !1608)
!1796 = !DILocation(line: 995, column: 6, scope: !1608)
!1797 = !DILocation(line: 996, column: 2, scope: !1609)
!1798 = distinct !{!1798, !1790, !1797, !1003, !1004}
!1799 = !DILocation(line: 0, scope: !1609)
!1800 = !DILocation(line: 1014, column: 7, scope: !1609)
!1801 = !DILocation(line: 1018, column: 5, scope: !1617)
!1802 = !DILocation(line: 1018, column: 18, scope: !1617)
!1803 = !DILocation(line: 1018, column: 32, scope: !1617)
!1804 = !DILocation(line: 1019, column: 12, scope: !1617)
!1805 = !DILocation(line: 1019, column: 6, scope: !1617)
!1806 = !DILocation(line: 1022, column: 22, scope: !1616)
!1807 = !DILocation(line: 1022, column: 9, scope: !1616)
!1808 = !DILocation(line: 1022, column: 7, scope: !1616)
!1809 = !DILocation(line: 1023, column: 9, scope: !1616)
!1810 = !DILocation(line: 1025, column: 34, scope: !1614)
!1811 = !DILocation(line: 0, scope: !869, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 1025, column: 34, scope: !1614)
!1813 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1812)
!1814 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1812)
!1815 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1812)
!1816 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1812)
!1817 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1812)
!1818 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1812)
!1819 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1812)
!1820 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1812)
!1821 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1812)
!1822 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1812)
!1823 = !DILocation(line: 0, scope: !1614)
!1824 = !DILocation(line: 1027, column: 5, scope: !1614)
!1825 = !DILocation(line: 1034, column: 3, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1614, file: !685, line: 1034, column: 3)
!1827 = !DILocation(line: 1034, column: 3, scope: !1614)
!1828 = !DILocation(line: 0, scope: !961, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 1034, column: 3, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !685, line: 1034, column: 3)
!1831 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1829)
!1832 = !DILocation(line: 0, scope: !964, inlinedAt: !1829)
!1833 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1829)
!1834 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1829)
!1835 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1829)
!1836 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1829)
!1837 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1829)
!1838 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1829)
!1839 = !DILocation(line: 1034, column: 3, scope: !1830)
!1840 = !DILocation(line: 1034, column: 3, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1826, file: !685, line: 1034, column: 3)
!1842 = !DILocation(line: 0, scope: !961, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 1034, column: 3, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !685, line: 1034, column: 3)
!1845 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1843)
!1846 = !DILocation(line: 0, scope: !964, inlinedAt: !1843)
!1847 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1843)
!1848 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1843)
!1849 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1843)
!1850 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1843)
!1851 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1843)
!1852 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1843)
!1853 = !DILocation(line: 1034, column: 3, scope: !1844)
!1854 = !DILocation(line: 1039, column: 9, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1576, file: !685, line: 1039, column: 8)
!1856 = !DILocation(line: 1039, column: 15, scope: !1855)
!1857 = !DILocation(line: 1044, column: 9, scope: !1622)
!1858 = !DILocation(line: 1044, column: 8, scope: !1576)
!1859 = !DILocation(line: 1056, column: 6, scope: !1621)
!1860 = !DILocation(line: 1058, column: 34, scope: !1619)
!1861 = !DILocation(line: 0, scope: !1619)
!1862 = !DILocation(line: 1060, column: 12, scope: !1619)
!1863 = !DILocation(line: 1061, column: 10, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1619, file: !685, line: 1061, column: 10)
!1865 = !DILocation(line: 1061, column: 10, scope: !1619)
!1866 = !DILocation(line: 1061, column: 24, scope: !1864)
!1867 = !DILocation(line: 1061, column: 15, scope: !1864)
!1868 = !DILocation(line: 1063, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1620, file: !685, line: 1063, column: 10)
!1870 = !DILocation(line: 1063, column: 25, scope: !1869)
!1871 = !DILocation(line: 1063, column: 10, scope: !1620)
!1872 = !DILocation(line: 1064, column: 14, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !685, line: 1063, column: 38)
!1874 = !DILocation(line: 1065, column: 12, scope: !1873)
!1875 = !DILocation(line: 1066, column: 2, scope: !1873)
!1876 = !DILocation(line: 1073, column: 9, scope: !1626)
!1877 = !DILocation(line: 1073, column: 16, scope: !1626)
!1878 = !DILocation(line: 1075, column: 29, scope: !1625)
!1879 = !DILocation(line: 985, column: 10, scope: !1788)
!1880 = !DILocation(line: 1075, column: 37, scope: !1625)
!1881 = !DILocation(line: 1075, column: 7, scope: !1625)
!1882 = !DILocation(line: 1079, column: 22, scope: !1628)
!1883 = !DILocation(line: 0, scope: !1628)
!1884 = !DILocation(line: 1080, column: 11, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1628, file: !685, line: 1080, column: 10)
!1886 = !DILocation(line: 1080, column: 14, scope: !1885)
!1887 = distinct !{!1887, !1881, !1888, !1003, !1004}
!1888 = !DILocation(line: 1102, column: 7, scope: !1625)
!1889 = !DILocation(line: 1080, column: 28, scope: !1885)
!1890 = !DILocation(line: 1080, column: 26, scope: !1885)
!1891 = !DILocation(line: 1080, column: 10, scope: !1628)
!1892 = !DILocation(line: 1083, column: 2, scope: !1624)
!1893 = !DILocation(line: 1084, column: 16, scope: !1624)
!1894 = !DILocation(line: 0, scope: !1624)
!1895 = !DILocation(line: 1084, column: 2, scope: !1624)
!1896 = !DILocation(line: 1085, column: 6, scope: !1631)
!1897 = !DILocation(line: 1085, column: 21, scope: !1631)
!1898 = !DILocation(line: 0, scope: !1631)
!1899 = !DILocation(line: 1085, column: 10, scope: !1631)
!1900 = !DILocation(line: 1088, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1631, file: !685, line: 1088, column: 9)
!1902 = !DILocation(line: 1088, column: 9, scope: !1631)
!1903 = distinct !{!1903, !1895, !1904, !1003, !1004}
!1904 = !DILocation(line: 1099, column: 9, scope: !1624)
!1905 = !DILocation(line: 1089, column: 13, scope: !1631)
!1906 = !DILocation(line: 0, scope: !869, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 1089, column: 13, scope: !1631)
!1908 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !1907)
!1909 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !1907)
!1910 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !1907)
!1911 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !1907)
!1912 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !1907)
!1913 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !1907)
!1914 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !1907)
!1915 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !1907)
!1916 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !1907)
!1917 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !1907)
!1918 = !DILocation(line: 1091, column: 8, scope: !1631)
!1919 = !DILocation(line: 1098, column: 6, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1631, file: !685, line: 1098, column: 6)
!1921 = !DILocation(line: 1098, column: 6, scope: !1631)
!1922 = !DILocation(line: 0, scope: !961, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 1098, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !685, line: 1098, column: 6)
!1925 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1923)
!1926 = !DILocation(line: 0, scope: !964, inlinedAt: !1923)
!1927 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1923)
!1928 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1923)
!1929 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1923)
!1930 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1923)
!1931 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1923)
!1932 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1923)
!1933 = !DILocation(line: 1098, column: 6, scope: !1924)
!1934 = !DILocation(line: 1098, column: 6, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1920, file: !685, line: 1098, column: 6)
!1936 = !DILocation(line: 0, scope: !961, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1098, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !685, line: 1098, column: 6)
!1939 = !DILocation(line: 162, column: 11, scope: !964, inlinedAt: !1937)
!1940 = !DILocation(line: 0, scope: !964, inlinedAt: !1937)
!1941 = !DILocation(line: 163, column: 6, scope: !971, inlinedAt: !1937)
!1942 = !DILocation(line: 163, column: 6, scope: !964, inlinedAt: !1937)
!1943 = !DILocation(line: 164, column: 24, scope: !971, inlinedAt: !1937)
!1944 = !DILocation(line: 164, column: 19, scope: !971, inlinedAt: !1937)
!1945 = !DILocation(line: 164, column: 6, scope: !971, inlinedAt: !1937)
!1946 = !DILocation(line: 166, column: 6, scope: !971, inlinedAt: !1937)
!1947 = !DILocation(line: 1098, column: 6, scope: !1938)
!1948 = !DILocation(line: 1109, column: 8, scope: !1639)
!1949 = !DILocation(line: 1109, column: 17, scope: !1639)
!1950 = !DILocation(line: 1109, column: 20, scope: !1639)
!1951 = !DILocation(line: 1109, column: 8, scope: !1576)
!1952 = !DILocation(line: 1110, column: 16, scope: !1638)
!1953 = !DILocation(line: 1111, column: 16, scope: !1638)
!1954 = !DILocation(line: 1117, column: 30, scope: !1638)
!1955 = !DILocation(line: 1117, column: 17, scope: !1638)
!1956 = !DILocation(line: 1117, column: 2, scope: !1638)
!1957 = !DILocation(line: 1117, column: 9, scope: !1638)
!1958 = distinct !{!1958, !1956, !1959, !1003, !1004}
!1959 = !DILocation(line: 1191, column: 2, scope: !1638)
!1960 = !DILocation(line: 1118, column: 15, scope: !1637)
!1961 = !DILocation(line: 1118, column: 14, scope: !1637)
!1962 = !DILocation(line: 0, scope: !1637)
!1963 = !DILocation(line: 1121, column: 6, scope: !1636)
!1964 = !DILocation(line: 1123, column: 3, scope: !1634)
!1965 = !DILocation(line: 1127, column: 8, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1634, file: !685, line: 1127, column: 7)
!1967 = !DILocation(line: 1127, column: 7, scope: !1634)
!1968 = !DILocation(line: 0, scope: !1634)
!1969 = !DILocation(line: 1129, column: 9, scope: !1634)
!1970 = !DILocation(line: 1130, column: 8, scope: !1643)
!1971 = !DILocation(line: 1130, column: 12, scope: !1643)
!1972 = !DILocation(line: 1130, column: 16, scope: !1643)
!1973 = !DILocation(line: 1130, column: 26, scope: !1643)
!1974 = !DILocation(line: 1130, column: 19, scope: !1643)
!1975 = !DILocation(line: 1130, column: 30, scope: !1643)
!1976 = !DILocation(line: 1130, column: 37, scope: !1643)
!1977 = !DILocation(line: 1130, column: 47, scope: !1643)
!1978 = !DILocation(line: 1130, column: 40, scope: !1643)
!1979 = !DILocation(line: 1130, column: 51, scope: !1643)
!1980 = !DILocation(line: 1131, column: 4, scope: !1643)
!1981 = !DILocation(line: 1131, column: 12, scope: !1643)
!1982 = !DILocation(line: 1131, column: 17, scope: !1643)
!1983 = !DILocation(line: 1131, column: 20, scope: !1643)
!1984 = !DILocation(line: 1131, column: 27, scope: !1643)
!1985 = !DILocation(line: 1130, column: 7, scope: !1634)
!1986 = !DILocation(line: 1132, column: 32, scope: !1642)
!1987 = !DILocation(line: 0, scope: !1642)
!1988 = !DILocation(line: 1134, column: 10, scope: !1642)
!1989 = !DILocation(line: 1134, column: 18, scope: !1642)
!1990 = !DILocation(line: 1138, column: 25, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1642, file: !685, line: 1138, column: 10)
!1992 = !DILocation(line: 1138, column: 22, scope: !1991)
!1993 = !DILocation(line: 1138, column: 10, scope: !1642)
!1994 = !DILocation(line: 1142, column: 15, scope: !1648)
!1995 = !DILocation(line: 1142, column: 26, scope: !1648)
!1996 = !DILocation(line: 1142, column: 29, scope: !1648)
!1997 = !DILocation(line: 1142, column: 41, scope: !1648)
!1998 = !DILocation(line: 1142, column: 44, scope: !1648)
!1999 = !DILocation(line: 1143, column: 12, scope: !1648)
!2000 = !DILocation(line: 1143, column: 27, scope: !1648)
!2001 = !DILocation(line: 1143, column: 25, scope: !1648)
!2002 = !DILocation(line: 1145, column: 8, scope: !1648)
!2003 = !DILocation(line: 1145, column: 12, scope: !1648)
!2004 = !DILocation(line: 1145, column: 24, scope: !1648)
!2005 = !DILocation(line: 1145, column: 27, scope: !1648)
!2006 = !DILocation(line: 1141, column: 11, scope: !1642)
!2007 = !DILocation(line: 1151, column: 7, scope: !1651)
!2008 = !DILocation(line: 1151, column: 22, scope: !1651)
!2009 = !DILocation(line: 1151, column: 7, scope: !1647)
!2010 = !DILocation(line: 1153, column: 16, scope: !1650)
!2011 = !DILocation(line: 1154, column: 14, scope: !1650)
!2012 = !DILocation(line: 1155, column: 18, scope: !1650)
!2013 = !DILocation(line: 0, scope: !1647)
!2014 = !DILocation(line: 1156, column: 8, scope: !1650)
!2015 = !DILocation(line: 1157, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1650, file: !685, line: 1156, column: 24)
!2017 = !DILocation(line: 0, scope: !1650)
!2018 = !DILocation(line: 1158, column: 9, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !685, line: 1158, column: 9)
!2020 = !DILocation(line: 1158, column: 13, scope: !2019)
!2021 = !DILocation(line: 1158, column: 9, scope: !2016)
!2022 = !DILocation(line: 1159, column: 9, scope: !2019)
!2023 = !DILocation(line: 1161, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !685, line: 1160, column: 10)
!2025 = !DILocation(line: 1162, column: 9, scope: !2024)
!2026 = !DILocation(line: 1168, column: 5, scope: !2016)
!2027 = !DILocation(line: 1156, column: 20, scope: !1650)
!2028 = distinct !{!2028, !2014, !2029, !1003, !1004}
!2029 = !DILocation(line: 1169, column: 8, scope: !1650)
!2030 = !DILocation(line: 1172, column: 18, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1651, file: !685, line: 1171, column: 9)
!2032 = !DILocation(line: 1173, column: 12, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2031, file: !685, line: 1173, column: 12)
!2034 = !DILocation(line: 1173, column: 16, scope: !2033)
!2035 = !DILocation(line: 1173, column: 12, scope: !2031)
!2036 = !DILocation(line: 1173, column: 22, scope: !2033)
!2037 = !DILocation(line: 1175, column: 5, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !685, line: 1174, column: 13)
!2039 = !DILocation(line: 1176, column: 5, scope: !2038)
!2040 = !DILocation(line: 0, scope: !1651)
!2041 = !DILocation(line: 1182, column: 4, scope: !1647)
!2042 = !DILocation(line: 1186, column: 7, scope: !1647)
!2043 = !DILocation(line: 1188, column: 13, scope: !1642)
!2044 = !DILocation(line: 1190, column: 6, scope: !1635)
!2045 = distinct !{!2045, !1963, !2046, !1003, !1004}
!2046 = !DILocation(line: 1190, column: 6, scope: !1636)
!2047 = !DILocation(line: 1195, column: 9, scope: !1658)
!2048 = !DILocation(line: 1195, column: 15, scope: !1658)
!2049 = !DILocation(line: 1195, column: 18, scope: !1658)
!2050 = !DILocation(line: 1195, column: 9, scope: !1576)
!2051 = !DILocation(line: 1196, column: 16, scope: !1657)
!2052 = !DILocation(line: 1201, column: 30, scope: !1657)
!2053 = !DILocation(line: 1201, column: 17, scope: !1657)
!2054 = !DILocation(line: 1201, column: 2, scope: !1657)
!2055 = !DILocation(line: 1201, column: 9, scope: !1657)
!2056 = distinct !{!2056, !2054, !2057, !1003, !1004}
!2057 = !DILocation(line: 1272, column: 2, scope: !1657)
!2058 = !DILocation(line: 1202, column: 15, scope: !1656)
!2059 = !DILocation(line: 1202, column: 14, scope: !1656)
!2060 = !DILocation(line: 0, scope: !1656)
!2061 = !DILocation(line: 1205, column: 6, scope: !1655)
!2062 = !DILocation(line: 1207, column: 3, scope: !1653)
!2063 = !DILocation(line: 1211, column: 8, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1653, file: !685, line: 1211, column: 7)
!2065 = !DILocation(line: 1211, column: 7, scope: !1653)
!2066 = !DILocation(line: 0, scope: !1653)
!2067 = !DILocation(line: 1213, column: 9, scope: !1653)
!2068 = !DILocation(line: 1214, column: 8, scope: !1662)
!2069 = !DILocation(line: 1214, column: 12, scope: !1662)
!2070 = !DILocation(line: 1214, column: 16, scope: !1662)
!2071 = !DILocation(line: 1214, column: 26, scope: !1662)
!2072 = !DILocation(line: 1214, column: 19, scope: !1662)
!2073 = !DILocation(line: 1214, column: 30, scope: !1662)
!2074 = !DILocation(line: 1214, column: 37, scope: !1662)
!2075 = !DILocation(line: 1214, column: 47, scope: !1662)
!2076 = !DILocation(line: 1214, column: 40, scope: !1662)
!2077 = !DILocation(line: 1214, column: 51, scope: !1662)
!2078 = !DILocation(line: 1215, column: 4, scope: !1662)
!2079 = !DILocation(line: 1215, column: 12, scope: !1662)
!2080 = !DILocation(line: 1215, column: 17, scope: !1662)
!2081 = !DILocation(line: 1215, column: 20, scope: !1662)
!2082 = !DILocation(line: 1215, column: 27, scope: !1662)
!2083 = !DILocation(line: 1214, column: 7, scope: !1653)
!2084 = !DILocation(line: 1220, column: 15, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1661, file: !685, line: 1220, column: 10)
!2086 = !DILocation(line: 1220, column: 18, scope: !2085)
!2087 = !DILocation(line: 1220, column: 10, scope: !1661)
!2088 = !DILocation(line: 1225, column: 18, scope: !1661)
!2089 = !DILocation(line: 0, scope: !1661)
!2090 = !DILocation(line: 1226, column: 10, scope: !1665)
!2091 = !DILocation(line: 1226, column: 10, scope: !1661)
!2092 = !DILocation(line: 1234, column: 7, scope: !1668)
!2093 = !DILocation(line: 1234, column: 22, scope: !1668)
!2094 = !DILocation(line: 1234, column: 7, scope: !1664)
!2095 = !DILocation(line: 1236, column: 16, scope: !1667)
!2096 = !DILocation(line: 1237, column: 14, scope: !1667)
!2097 = !DILocation(line: 1238, column: 18, scope: !1667)
!2098 = !DILocation(line: 0, scope: !1664)
!2099 = !DILocation(line: 1239, column: 8, scope: !1667)
!2100 = !DILocation(line: 1240, column: 13, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1667, file: !685, line: 1239, column: 24)
!2102 = !DILocation(line: 0, scope: !1667)
!2103 = !DILocation(line: 1241, column: 9, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !685, line: 1241, column: 9)
!2105 = !DILocation(line: 1241, column: 13, scope: !2104)
!2106 = !DILocation(line: 1241, column: 9, scope: !2101)
!2107 = !DILocation(line: 1242, column: 9, scope: !2104)
!2108 = !DILocation(line: 1244, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !685, line: 1243, column: 10)
!2110 = !DILocation(line: 1245, column: 9, scope: !2109)
!2111 = !DILocation(line: 1251, column: 5, scope: !2101)
!2112 = !DILocation(line: 1239, column: 20, scope: !1667)
!2113 = distinct !{!2113, !2099, !2114, !1003, !1004}
!2114 = !DILocation(line: 1252, column: 8, scope: !1667)
!2115 = !DILocation(line: 1255, column: 18, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1668, file: !685, line: 1254, column: 9)
!2117 = !DILocation(line: 1256, column: 12, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2116, file: !685, line: 1256, column: 12)
!2119 = !DILocation(line: 1256, column: 16, scope: !2118)
!2120 = !DILocation(line: 1256, column: 12, scope: !2116)
!2121 = !DILocation(line: 1256, column: 22, scope: !2118)
!2122 = !DILocation(line: 1258, column: 5, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !685, line: 1257, column: 13)
!2124 = !DILocation(line: 1259, column: 5, scope: !2123)
!2125 = !DILocation(line: 0, scope: !1668)
!2126 = !DILocation(line: 1265, column: 4, scope: !1664)
!2127 = !DILocation(line: 1271, column: 6, scope: !1654)
!2128 = distinct !{!2128, !2061, !2129, !1003, !1004}
!2129 = !DILocation(line: 1271, column: 6, scope: !1655)
!2130 = !DILocation(line: 1274, column: 1, scope: !1576)
!2131 = distinct !DISubprogram(name: "Perl_mro_method_changed_in", scope: !685, file: !685, line: 1307, type: !1049, scopeLine: 1308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2132)
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138, !2141, !2143}
!2133 = !DILocalVariable(name: "stash", arg: 1, scope: !2131, file: !685, line: 1307, type: !61)
!2134 = !DILocalVariable(name: "stashname", scope: !2131, file: !685, line: 1309, type: !496)
!2135 = !DILocalVariable(name: "stashname_len", scope: !2131, file: !685, line: 1310, type: !1064)
!2136 = !DILocalVariable(name: "svp", scope: !2131, file: !685, line: 1312, type: !543)
!2137 = !DILocalVariable(name: "isarev", scope: !2131, file: !685, line: 1313, type: !747)
!2138 = !DILocalVariable(name: "iter", scope: !2139, file: !685, line: 1337, type: !148)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !685, line: 1336, column: 16)
!2140 = distinct !DILexicalBlock(scope: !2131, file: !685, line: 1336, column: 8)
!2141 = !DILocalVariable(name: "revstash", scope: !2142, file: !685, line: 1341, type: !747)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !685, line: 1340, column: 45)
!2143 = !DILocalVariable(name: "mrometa", scope: !2142, file: !685, line: 1342, type: !618)
!2144 = !DILocation(line: 0, scope: !2131)
!2145 = !DILocation(line: 1309, column: 36, scope: !2131)
!2146 = !DILocation(line: 1310, column: 34, scope: !2131)
!2147 = !DILocation(line: 1312, column: 23, scope: !2131)
!2148 = !DILocation(line: 1313, column: 25, scope: !2131)
!2149 = !DILocation(line: 1313, column: 31, scope: !2131)
!2150 = !DILocation(line: 1317, column: 9, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2131, file: !685, line: 1317, column: 8)
!2152 = !DILocation(line: 1317, column: 8, scope: !2131)
!2153 = !DILocation(line: 1318, column: 9, scope: !2151)
!2154 = !DILocation(line: 1321, column: 5, scope: !2131)
!2155 = !DILocation(line: 1321, column: 30, scope: !2131)
!2156 = !DILocation(line: 0, scope: !869, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 1321, column: 5, scope: !2131)
!2158 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !2157)
!2159 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !2157)
!2160 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !2157)
!2161 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !2157)
!2162 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !2157)
!2163 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !2157)
!2164 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !2157)
!2165 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !2157)
!2166 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !2157)
!2167 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !2157)
!2168 = !DILocation(line: 1321, column: 23, scope: !2131)
!2169 = !DILocation(line: 1324, column: 10, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2131, file: !685, line: 1324, column: 9)
!2171 = !DILocation(line: 1324, column: 9, scope: !2131)
!2172 = !DILocation(line: 1324, column: 27, scope: !2170)
!2173 = !DILocation(line: 1324, column: 42, scope: !2170)
!2174 = !DILocation(line: 1328, column: 23, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2131, file: !685, line: 1328, column: 8)
!2176 = !DILocation(line: 1328, column: 28, scope: !2175)
!2177 = !DILocation(line: 1328, column: 31, scope: !2175)
!2178 = !DILocation(line: 1329, column: 9, scope: !2175)
!2179 = !DILocation(line: 1329, column: 13, scope: !2175)
!2180 = !DILocation(line: 1329, column: 20, scope: !2175)
!2181 = !DILocation(line: 1329, column: 23, scope: !2175)
!2182 = !DILocation(line: 1328, column: 8, scope: !2131)
!2183 = !DILocation(line: 1330, column: 26, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2175, file: !685, line: 1329, column: 59)
!2185 = !DILocation(line: 1331, column: 9, scope: !2184)
!2186 = !DILocation(line: 1339, column: 9, scope: !2139)
!2187 = !DILocation(line: 1340, column: 23, scope: !2139)
!2188 = !DILocation(line: 0, scope: !2139)
!2189 = !DILocation(line: 1340, column: 9, scope: !2139)
!2190 = !DILocation(line: 1341, column: 34, scope: !2142)
!2191 = !DILocation(line: 0, scope: !2142)
!2192 = !DILocation(line: 1344, column: 17, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2142, file: !685, line: 1344, column: 16)
!2194 = !DILocation(line: 1344, column: 16, scope: !2142)
!2195 = distinct !{!2195, !2189, !2196, !1003, !1004}
!2196 = !DILocation(line: 1350, column: 9, scope: !2139)
!2197 = !DILocation(line: 1345, column: 23, scope: !2142)
!2198 = !DILocation(line: 1346, column: 31, scope: !2142)
!2199 = !DILocation(line: 0, scope: !869, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 1345, column: 23, scope: !2142)
!2201 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !2200)
!2202 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !2200)
!2203 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !2200)
!2204 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !2200)
!2205 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !2200)
!2206 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !2200)
!2207 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !2200)
!2208 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !2200)
!2209 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !2200)
!2210 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !2200)
!2211 = !DILocation(line: 1346, column: 22, scope: !2142)
!2212 = !DILocation(line: 1347, column: 25, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2142, file: !685, line: 1347, column: 16)
!2214 = !DILocation(line: 1347, column: 16, scope: !2213)
!2215 = !DILocation(line: 1347, column: 16, scope: !2142)
!2216 = !DILocation(line: 1348, column: 17, scope: !2213)
!2217 = !DILocation(line: 1349, column: 18, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2142, file: !685, line: 1349, column: 17)
!2219 = !DILocation(line: 1349, column: 17, scope: !2142)
!2220 = !DILocation(line: 1349, column: 38, scope: !2218)
!2221 = !DILocation(line: 1349, column: 56, scope: !2218)
!2222 = !DILocation(line: 1355, column: 5, scope: !2131)
!2223 = !DILocation(line: 1357, column: 5, scope: !2131)
!2224 = !DILocation(line: 1357, column: 19, scope: !2131)
!2225 = !DILocation(line: 1357, column: 33, scope: !2131)
!2226 = !DILocation(line: 1358, column: 1, scope: !2131)
!2227 = distinct !DISubprogram(name: "Perl_mro_set_mro", scope: !685, file: !685, line: 1361, type: !2228, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !702, !486}
!2230 = !{!2231, !2232, !2233}
!2231 = !DILocalVariable(name: "meta", arg: 1, scope: !2227, file: !685, line: 1361, type: !702)
!2232 = !DILocalVariable(name: "name", arg: 2, scope: !2227, file: !685, line: 1361, type: !486)
!2233 = !DILocalVariable(name: "which", scope: !2227, file: !685, line: 1363, type: !703)
!2234 = !DILocation(line: 0, scope: !2227)
!2235 = !DILocation(line: 0, scope: !806, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1363, column: 41, scope: !2227)
!2237 = !DILocation(line: 110, column: 40, scope: !806, inlinedAt: !2236)
!2238 = !DILocation(line: 110, column: 19, scope: !806, inlinedAt: !2236)
!2239 = !DILocation(line: 112, column: 10, scope: !816, inlinedAt: !2236)
!2240 = !DILocation(line: 112, column: 9, scope: !806, inlinedAt: !2236)
!2241 = !DILocation(line: 116, column: 12, scope: !806, inlinedAt: !2236)
!2242 = !DILocation(line: 1367, column: 10, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2227, file: !685, line: 1367, column: 9)
!2244 = !DILocation(line: 1367, column: 9, scope: !2227)
!2245 = !DILocation(line: 1368, column: 9, scope: !2243)
!2246 = !DILocation(line: 1370, column: 14, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2227, file: !685, line: 1370, column: 8)
!2248 = !DILocation(line: 1370, column: 24, scope: !2247)
!2249 = !DILocation(line: 1370, column: 8, scope: !2227)
!2250 = !DILocation(line: 1371, column: 12, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !685, line: 1371, column: 6)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !685, line: 1370, column: 34)
!2253 = !DILocation(line: 1371, column: 6, scope: !2251)
!2254 = !DILocation(line: 1371, column: 31, scope: !2251)
!2255 = !DILocation(line: 1371, column: 41, scope: !2251)
!2256 = !DILocation(line: 1371, column: 35, scope: !2251)
!2257 = !DILocation(line: 1371, column: 6, scope: !2252)
!2258 = !DILocation(line: 1374, column: 6, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2251, file: !685, line: 1371, column: 57)
!2260 = !DILocation(line: 1376, column: 2, scope: !2259)
!2261 = !DILocation(line: 1377, column: 18, scope: !2252)
!2262 = !DILocation(line: 1379, column: 27, scope: !2252)
!2263 = !DILocation(line: 1382, column: 15, scope: !2252)
!2264 = !DILocation(line: 1382, column: 24, scope: !2252)
!2265 = !DILocation(line: 1383, column: 18, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2252, file: !685, line: 1383, column: 12)
!2267 = !DILocation(line: 1383, column: 12, scope: !2266)
!2268 = !DILocation(line: 1383, column: 12, scope: !2252)
!2269 = !DILocation(line: 1384, column: 13, scope: !2266)
!2270 = !DILocation(line: 1386, column: 1, scope: !2227)
!2271 = !DILocation(line: 0, scope: !821, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1397, column: 5, scope: !684)
!2273 = !DILocation(line: 128, column: 19, scope: !821, inlinedAt: !2272)
!2274 = !DILocation(line: 133, column: 31, scope: !830, inlinedAt: !2272)
!2275 = !DILocation(line: 133, column: 10, scope: !830, inlinedAt: !2272)
!2276 = !DILocation(line: 133, column: 9, scope: !821, inlinedAt: !2272)
!2277 = !DILocation(line: 0, scope: !840, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 136, column: 2, scope: !848, inlinedAt: !2272)
!2279 = !DILocation(line: 173, column: 14, scope: !840, inlinedAt: !2278)
!2280 = !DILocation(line: 174, column: 9, scope: !851, inlinedAt: !2278)
!2281 = !DILocation(line: 174, column: 9, scope: !840, inlinedAt: !2278)
!2282 = !DILocation(line: 175, column: 20, scope: !851, inlinedAt: !2278)
!2283 = !DILocation(line: 175, column: 15, scope: !851, inlinedAt: !2278)
!2284 = !DILocation(line: 175, column: 2, scope: !851, inlinedAt: !2278)
!2285 = !DILocation(line: 177, column: 2, scope: !851, inlinedAt: !2278)
!2286 = !DILocation(line: 137, column: 2, scope: !848, inlinedAt: !2272)
!2287 = !DILocation(line: 139, column: 5, scope: !848, inlinedAt: !2272)
!2288 = !DILocation(line: 1399, column: 5, scope: !684)
!2289 = !DILocation(line: 1400, column: 1, scope: !684)
!2290 = !DISubprogram(name: "Perl_newXS_flags", scope: !732, file: !732, line: 3168, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!290, !103, !2293, !496, !496, !36}
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSUBADDR_t", file: !30, line: 5402, baseType: !359)
!2294 = distinct !DISubprogram(name: "XS_mro_method_changed_in", scope: !685, file: !685, line: 1402, type: !360, scopeLine: 1403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2296 = !DILocalVariable(name: "cv", arg: 1, scope: !2294, file: !685, line: 1402, type: !290)
!2297 = !DILocalVariable(name: "sp", scope: !2294, file: !685, line: 1404, type: !27)
!2298 = !DILocalVariable(name: "ax", scope: !2294, file: !685, line: 1404, type: !105)
!2299 = !DILocalVariable(name: "mark", scope: !2294, file: !685, line: 1404, type: !27)
!2300 = !DILocalVariable(name: "items", scope: !2294, file: !685, line: 1404, type: !105)
!2301 = !DILocalVariable(name: "classname", scope: !2294, file: !685, line: 1405, type: !28)
!2302 = !DILocalVariable(name: "class_stash", scope: !2294, file: !685, line: 1406, type: !61)
!2303 = !DILocalVariable(name: "tmpXSoff", scope: !2304, file: !685, line: 1418, type: !2306)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !685, line: 1418, column: 5)
!2305 = distinct !DILexicalBlock(scope: !2294, file: !685, line: 1418, column: 5)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!2307 = !DILocation(line: 0, scope: !2294)
!2308 = !DILocation(line: 1404, column: 5, scope: !2294)
!2309 = !DILocation(line: 1408, column: 14, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2294, file: !685, line: 1408, column: 8)
!2311 = !DILocation(line: 1408, column: 8, scope: !2294)
!2312 = !DILocation(line: 1409, column: 2, scope: !2310)
!2313 = !DILocation(line: 1411, column: 17, scope: !2294)
!2314 = !DILocation(line: 1413, column: 19, scope: !2294)
!2315 = !DILocation(line: 1414, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2294, file: !685, line: 1414, column: 8)
!2317 = !DILocation(line: 1414, column: 8, scope: !2294)
!2318 = !DILocation(line: 1416, column: 5, scope: !2294)
!2319 = !DILocation(line: 1414, column: 22, scope: !2316)
!2320 = !DILocation(line: 0, scope: !2304)
!2321 = !DILocation(line: 1418, column: 5, scope: !2304)
!2322 = !DILocation(line: 1419, column: 1, scope: !2294)
!2323 = !DISubprogram(name: "Perl_croak_xs_usage", scope: !732, file: !732, line: 763, type: !2324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2326, !496}
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!2329 = !DISubprogram(name: "Perl_sv_free2", scope: !732, file: !732, line: 4371, type: !2330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !486, !497}
!2332 = distinct !DISubprogram(name: "S_mro_get_linear_isa_dfs", scope: !685, file: !685, line: 216, type: !599, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2347, !2348, !2350, !2351, !2352, !2353, !2359, !2363, !2364, !2367, !2369, !2373}
!2334 = !DILocalVariable(name: "stash", arg: 1, scope: !2332, file: !685, line: 216, type: !61)
!2335 = !DILocalVariable(name: "level", arg: 2, scope: !2332, file: !685, line: 216, type: !36)
!2336 = !DILocalVariable(name: "retval", scope: !2332, file: !685, line: 218, type: !115)
!2337 = !DILocalVariable(name: "gvp", scope: !2332, file: !685, line: 219, type: !665)
!2338 = !DILocalVariable(name: "gv", scope: !2332, file: !685, line: 220, type: !223)
!2339 = !DILocalVariable(name: "av", scope: !2332, file: !685, line: 221, type: !115)
!2340 = !DILocalVariable(name: "stashhek", scope: !2332, file: !685, line: 222, type: !915)
!2341 = !DILocalVariable(name: "meta", scope: !2332, file: !685, line: 223, type: !618)
!2342 = !DILocalVariable(name: "our_name", scope: !2332, file: !685, line: 224, type: !28)
!2343 = !DILocalVariable(name: "stored", scope: !2332, file: !685, line: 225, type: !61)
!2344 = !DILocalVariable(name: "svp", scope: !2345, file: !685, line: 270, type: !27)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !685, line: 268, column: 32)
!2346 = distinct !DILexicalBlock(scope: !2332, file: !685, line: 268, column: 8)
!2347 = !DILocalVariable(name: "items", scope: !2345, file: !685, line: 271, type: !105)
!2348 = !DILocalVariable(name: "sv", scope: !2349, file: !685, line: 275, type: !486)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !685, line: 274, column: 25)
!2350 = !DILocalVariable(name: "basestash", scope: !2349, file: !685, line: 276, type: !747)
!2351 = !DILocalVariable(name: "subrv_p", scope: !2349, file: !685, line: 277, type: !908)
!2352 = !DILocalVariable(name: "subrv_items", scope: !2349, file: !685, line: 278, type: !105)
!2353 = !DILocalVariable(name: "subrv", scope: !2354, file: !685, line: 293, type: !2356)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !685, line: 287, column: 18)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !685, line: 281, column: 17)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!2359 = !DILocalVariable(name: "subsv", scope: !2360, file: !685, line: 301, type: !486)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !685, line: 300, column: 24)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !685, line: 299, column: 18)
!2362 = distinct !DILexicalBlock(scope: !2349, file: !685, line: 299, column: 10)
!2363 = !DILocalVariable(name: "he", scope: !2360, file: !685, line: 304, type: !1599)
!2364 = !DILocalVariable(name: "val", scope: !2365, file: !685, line: 309, type: !486)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !685, line: 306, column: 37)
!2366 = distinct !DILexicalBlock(scope: !2360, file: !685, line: 306, column: 10)
!2367 = !DILocalVariable(name: "key", scope: !2365, file: !685, line: 310, type: !2368)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!2369 = !DILocalVariable(name: "svp", scope: !2370, file: !685, line: 330, type: !27)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !685, line: 329, column: 18)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !685, line: 329, column: 7)
!2372 = distinct !DILexicalBlock(scope: !2362, file: !685, line: 317, column: 20)
!2373 = !DILocalVariable(name: "val", scope: !2374, file: !685, line: 336, type: !486)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !685, line: 335, column: 28)
!2375 = !DILocation(line: 0, scope: !2332)
!2376 = !DILocation(line: 231, column: 8, scope: !2332)
!2377 = !DILocation(line: 231, column: 33, scope: !2332)
!2378 = !DILocation(line: 231, column: 47, scope: !2332)
!2379 = !DILocation(line: 231, column: 50, scope: !2332)
!2380 = !DILocation(line: 233, column: 11, scope: !2332)
!2381 = !DILocation(line: 235, column: 10, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2332, file: !685, line: 235, column: 9)
!2383 = !DILocation(line: 235, column: 9, scope: !2332)
!2384 = !DILocation(line: 236, column: 7, scope: !2382)
!2385 = !DILocation(line: 238, column: 15, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2332, file: !685, line: 238, column: 9)
!2387 = !DILocation(line: 238, column: 9, scope: !2332)
!2388 = !DILocation(line: 239, column: 9, scope: !2386)
!2389 = !DILocation(line: 243, column: 12, scope: !2332)
!2390 = !DILocation(line: 0, scope: !869, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 243, column: 12, scope: !2332)
!2392 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !2391)
!2393 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !2391)
!2394 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !2391)
!2395 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !2391)
!2396 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !2391)
!2397 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !2391)
!2398 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !2391)
!2399 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !2391)
!2400 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !2391)
!2401 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !2391)
!2402 = !DILocation(line: 246, column: 18, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2332, file: !685, line: 246, column: 8)
!2404 = !DILocation(line: 0, scope: !699, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 246, column: 18, scope: !2403)
!2406 = !DILocation(line: 42, column: 47, scope: !699, inlinedAt: !2405)
!2407 = !DILocation(line: 42, column: 19, scope: !699, inlinedAt: !2405)
!2408 = !DILocation(line: 45, column: 10, scope: !718, inlinedAt: !2405)
!2409 = !DILocation(line: 45, column: 9, scope: !699, inlinedAt: !2405)
!2410 = !DILocation(line: 50, column: 16, scope: !721, inlinedAt: !2405)
!2411 = !DILocation(line: 50, column: 26, scope: !721, inlinedAt: !2405)
!2412 = !DILocation(line: 50, column: 9, scope: !699, inlinedAt: !2405)
!2413 = !DILocation(line: 51, column: 30, scope: !721, inlinedAt: !2405)
!2414 = !DILocation(line: 51, column: 9, scope: !721, inlinedAt: !2405)
!2415 = !DILocation(line: 51, column: 28, scope: !721, inlinedAt: !2405)
!2416 = !DILocation(line: 51, column: 2, scope: !721, inlinedAt: !2405)
!2417 = !DILocation(line: 246, column: 16, scope: !2403)
!2418 = !DILocation(line: 246, column: 8, scope: !2332)
!2419 = !DILocation(line: 252, column: 14, scope: !2332)
!2420 = !DILocation(line: 255, column: 16, scope: !2332)
!2421 = !DILocation(line: 256, column: 5, scope: !2332)
!2422 = !DILocation(line: 259, column: 17, scope: !2332)
!2423 = !DILocation(line: 260, column: 11, scope: !2332)
!2424 = !DILocation(line: 260, column: 15, scope: !2332)
!2425 = !DILocation(line: 260, column: 24, scope: !2332)
!2426 = !DILocation(line: 260, column: 22, scope: !2332)
!2427 = !DILocation(line: 260, column: 30, scope: !2332)
!2428 = !DILocation(line: 260, column: 33, scope: !2332)
!2429 = !DILocation(line: 260, column: 53, scope: !2332)
!2430 = !DILocation(line: 268, column: 8, scope: !2346)
!2431 = !DILocation(line: 268, column: 11, scope: !2346)
!2432 = !DILocation(line: 268, column: 14, scope: !2346)
!2433 = !DILocation(line: 268, column: 26, scope: !2346)
!2434 = !DILocation(line: 268, column: 8, scope: !2332)
!2435 = !DILocation(line: 0, scope: !2345)
!2436 = !DILocation(line: 271, column: 21, scope: !2345)
!2437 = !DILocation(line: 274, column: 9, scope: !2345)
!2438 = !DILocation(line: 270, column: 20, scope: !2345)
!2439 = !DILocation(line: 275, column: 13, scope: !2349)
!2440 = !DILocation(line: 275, column: 28, scope: !2349)
!2441 = !DILocation(line: 0, scope: !2349)
!2442 = !DILocation(line: 275, column: 23, scope: !2349)
!2443 = !DILocation(line: 276, column: 35, scope: !2349)
!2444 = !DILocation(line: 279, column: 9, scope: !2349)
!2445 = !DILocation(line: 281, column: 18, scope: !2355)
!2446 = !DILocation(line: 281, column: 17, scope: !2349)
!2447 = !DILocation(line: 299, column: 10, scope: !2362)
!2448 = !DILocation(line: 299, column: 10, scope: !2349)
!2449 = !DILocation(line: 294, column: 9, scope: !2354)
!2450 = !DILocation(line: 0, scope: !2354)
!2451 = !DILocation(line: 296, column: 13, scope: !2354)
!2452 = !DILocation(line: 297, column: 17, scope: !2354)
!2453 = !DILocation(line: 300, column: 3, scope: !2361)
!2454 = !DILocation(line: 300, column: 20, scope: !2361)
!2455 = !DILocation(line: 301, column: 33, scope: !2360)
!2456 = !DILocation(line: 301, column: 25, scope: !2360)
!2457 = !DILocation(line: 0, scope: !2360)
!2458 = !DILocation(line: 304, column: 22, scope: !2360)
!2459 = !DILocation(line: 306, column: 10, scope: !2366)
!2460 = !DILocation(line: 306, column: 20, scope: !2366)
!2461 = !DILocation(line: 306, column: 10, scope: !2360)
!2462 = !DILocation(line: 0, scope: !2365)
!2463 = !DILocation(line: 310, column: 21, scope: !2365)
!2464 = !DILocation(line: 312, column: 14, scope: !2365)
!2465 = !DILocation(line: 313, column: 4, scope: !2365)
!2466 = !DILocation(line: 314, column: 4, scope: !2365)
!2467 = !DILocation(line: 315, column: 7, scope: !2365)
!2468 = distinct !{!2468, !2453, !2469, !1003, !1004}
!2469 = !DILocation(line: 316, column: 3, scope: !2361)
!2470 = !DILocation(line: 331, column: 16, scope: !2370)
!2471 = !DILocation(line: 0, scope: !869, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 331, column: 16, scope: !2370)
!2473 = !DILocation(line: 151, column: 5, scope: !869, inlinedAt: !2472)
!2474 = !DILocation(line: 152, column: 5, scope: !869, inlinedAt: !2472)
!2475 = !DILocation(line: 152, column: 19, scope: !869, inlinedAt: !2472)
!2476 = !DILocation(line: 152, column: 32, scope: !869, inlinedAt: !2472)
!2477 = !DILocation(line: 153, column: 14, scope: !869, inlinedAt: !2472)
!2478 = !DILocation(line: 153, column: 24, scope: !869, inlinedAt: !2472)
!2479 = !DILocation(line: 154, column: 14, scope: !869, inlinedAt: !2472)
!2480 = !DILocation(line: 154, column: 22, scope: !869, inlinedAt: !2472)
!2481 = !DILocation(line: 155, column: 14, scope: !869, inlinedAt: !2472)
!2482 = !DILocation(line: 155, column: 24, scope: !869, inlinedAt: !2472)
!2483 = !DILocation(line: 332, column: 7, scope: !2370)
!2484 = !DILocation(line: 333, column: 7, scope: !2370)
!2485 = !DILocation(line: 333, column: 23, scope: !2370)
!2486 = !DILocation(line: 0, scope: !2370)
!2487 = !DILocation(line: 335, column: 7, scope: !2370)
!2488 = !DILocation(line: 334, column: 13, scope: !2370)
!2489 = !DILocation(line: 336, column: 28, scope: !2374)
!2490 = !DILocation(line: 336, column: 20, scope: !2374)
!2491 = !DILocation(line: 0, scope: !2374)
!2492 = !DILocation(line: 337, column: 13, scope: !2374)
!2493 = !DILocation(line: 338, column: 10, scope: !2374)
!2494 = !DILocation(line: 339, column: 10, scope: !2374)
!2495 = !DILocation(line: 337, column: 5, scope: !2374)
!2496 = !DILocation(line: 337, column: 11, scope: !2374)
!2497 = !DILocation(line: 335, column: 24, scope: !2370)
!2498 = distinct !{!2498, !2487, !2499, !1003, !1004}
!2499 = !DILocation(line: 340, column: 7, scope: !2370)
!2500 = !DILocation(line: 344, column: 16, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2371, file: !685, line: 341, column: 10)
!2502 = !DILocation(line: 345, column: 14, scope: !2501)
!2503 = !DILocation(line: 346, column: 7, scope: !2501)
!2504 = !DILocation(line: 351, column: 9, scope: !2345)
!2505 = !DILocation(line: 274, column: 21, scope: !2345)
!2506 = distinct !{!2506, !2437, !2504, !1003, !1004}
!2507 = !DILocation(line: 354, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2346, file: !685, line: 352, column: 12)
!2509 = !DILocation(line: 355, column: 9, scope: !2508)
!2510 = !DILocation(line: 358, column: 12, scope: !2332)
!2511 = !DILocation(line: 360, column: 5, scope: !2332)
!2512 = !DILocation(line: 361, column: 5, scope: !2332)
!2513 = !DILocation(line: 362, column: 5, scope: !2332)
!2514 = !DILocation(line: 364, column: 11, scope: !2332)
!2515 = !DILocation(line: 364, column: 15, scope: !2332)
!2516 = !DILocation(line: 369, column: 5, scope: !2332)
!2517 = !DILocation(line: 370, column: 5, scope: !2332)
!2518 = !DILocation(line: 374, column: 5, scope: !2332)
!2519 = !DILocation(line: 376, column: 12, scope: !2332)
!2520 = !DILocation(line: 376, column: 5, scope: !2332)
!2521 = !DILocation(line: 378, column: 1, scope: !2332)
!2522 = !DISubprogram(name: "Perl_sv_sethek", scope: !732, file: !732, line: 4582, type: !2523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !486, !1034}
!2525 = !DISubprogram(name: "Perl_newHVhv", scope: !732, file: !732, line: 2930, type: !2526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!61, !61}
!2528 = !DISubprogram(name: "Perl_newSVsv", scope: !732, file: !732, line: 3129, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2529 = !DISubprogram(name: "Perl_hv_iterkey", scope: !732, file: !732, line: 1710, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!43, !148, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2533 = !DISubprogram(name: "Perl_hv_placeholders_get", scope: !732, file: !732, line: 1765, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!105, !679}
!2536 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !732, file: !732, line: 4130, type: !2537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!43, !486, !2539, !518}
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2541 = !DISubprogram(name: "Perl_hv_ename_delete", scope: !732, file: !732, line: 1667, type: !2542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !61, !103, !36, !36}
!2544 = !DISubprogram(name: "Perl_hv_ename_add", scope: !732, file: !732, line: 1661, type: !2542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !688)
