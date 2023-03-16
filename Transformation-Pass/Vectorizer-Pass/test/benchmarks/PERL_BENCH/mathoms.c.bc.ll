; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/mathoms.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/mathoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu }
%union._xmgu = type { ptr }
%union.anon.16 = type { i64 }
%union._xivu = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu }
%union.anon.17 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu, %union._xnvu }
%union.anon.18 = type { i64 }
%union._xnvu = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.any = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.padnamelist = type { i64, ptr, i64, i64, i32 }
%struct.padname = type { ptr, ptr, %union.anon.21, i32, i32, i32, i32, i8, i8 }
%union.anon.21 = type { ptr }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c":raw\00", align 1
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_in_utf8_CTYPE_locale = external local_unnamed_addr global i8, align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@PL_comppad_name = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_ref(ptr noundef %o, i32 noundef %type) local_unnamed_addr #0 !dbg !677 {
entry:
  call void @llvm.dbg.value(metadata ptr %o, metadata !682, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i32 %type, metadata !683, metadata !DIExpression()), !dbg !684
  %call = tail call ptr @Perl_doref(ptr noundef %o, i32 noundef %type, i1 noundef zeroext true) #10, !dbg !685
  ret ptr %call, !dbg !686
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !687 ptr @Perl_doref(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_unref(ptr noundef %sv) local_unnamed_addr #0 !dbg !692 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !696, metadata !DIExpression()), !dbg !697
  tail call void @Perl_sv_unref_flags(ptr noundef %sv, i32 noundef 0) #10, !dbg !698
  ret void, !dbg !699
}

declare !dbg !700 void @Perl_sv_unref_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_taint(ptr noundef %sv) local_unnamed_addr #0 !dbg !703 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !705, metadata !DIExpression()), !dbg !706
  tail call void @Perl_sv_magic(ptr noundef %sv, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10, !dbg !707
  ret void, !dbg !708
}

declare !dbg !709 void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_sv_2iv(ptr noundef %sv) local_unnamed_addr #0 !dbg !713 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !717, metadata !DIExpression()), !dbg !718
  %call = tail call i64 @Perl_sv_2iv_flags(ptr noundef %sv, i32 noundef 2) #10, !dbg !719
  ret i64 %call, !dbg !720
}

declare !dbg !721 i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_sv_2uv(ptr noundef %sv) local_unnamed_addr #0 !dbg !724 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !728, metadata !DIExpression()), !dbg !729
  %call = tail call i64 @Perl_sv_2uv_flags(ptr noundef %sv, i32 noundef 2) #10, !dbg !730
  ret i64 %call, !dbg !731
}

declare !dbg !732 i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @Perl_sv_2nv(ptr noundef %sv) local_unnamed_addr #0 !dbg !735 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !739, metadata !DIExpression()), !dbg !740
  %call = tail call double @Perl_sv_2nv_flags(ptr noundef %sv, i32 noundef 2) #10, !dbg !741
  ret double %call, !dbg !742
}

declare !dbg !743 double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_2pv(ptr noundef %sv, ptr noundef %lp) local_unnamed_addr #0 !dbg !746 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !751, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata ptr %lp, metadata !752, metadata !DIExpression()), !dbg !753
  %call = tail call ptr @Perl_sv_2pv_flags(ptr noundef %sv, ptr noundef %lp, i32 noundef 2) #10, !dbg !754
  ret ptr %call, !dbg !755
}

declare !dbg !756 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_2pv_nolen(ptr noundef %sv) local_unnamed_addr #0 !dbg !760 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !764, metadata !DIExpression()), !dbg !765
  %call = tail call ptr @Perl_sv_2pv_flags(ptr noundef %sv, ptr noundef null, i32 noundef 2) #10, !dbg !766
  ret ptr %call, !dbg !767
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_2pvbyte_nolen(ptr noundef %sv) local_unnamed_addr #0 !dbg !768 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !770, metadata !DIExpression()), !dbg !771
  %call = tail call ptr @Perl_sv_2pvbyte(ptr noundef %sv, ptr noundef null) #10, !dbg !772
  ret ptr %call, !dbg !773
}

declare !dbg !774 ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_2pvutf8_nolen(ptr noundef %sv) local_unnamed_addr #0 !dbg !777 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !779, metadata !DIExpression()), !dbg !780
  %call = tail call ptr @Perl_sv_2pvutf8(ptr noundef %sv, ptr noundef null) #10, !dbg !781
  ret ptr %call, !dbg !782
}

declare !dbg !783 ptr @Perl_sv_2pvutf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_force_normal(ptr noundef %sv) local_unnamed_addr #0 !dbg !784 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !786, metadata !DIExpression()), !dbg !787
  tail call void @Perl_sv_force_normal_flags(ptr noundef %sv, i32 noundef 0) #10, !dbg !788
  ret void, !dbg !789
}

declare !dbg !790 void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_setsv(ptr noundef %dstr, ptr noundef %sstr) local_unnamed_addr #0 !dbg !791 {
entry:
  call void @llvm.dbg.value(metadata ptr %dstr, metadata !795, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata ptr %sstr, metadata !796, metadata !DIExpression()), !dbg !797
  tail call void @Perl_sv_setsv_flags(ptr noundef %dstr, ptr noundef %sstr, i32 noundef 2) #10, !dbg !798
  ret void, !dbg !799
}

declare !dbg !800 void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_catpvn(ptr noundef %dsv, ptr noundef %sstr, i64 noundef %slen) local_unnamed_addr #0 !dbg !803 {
entry:
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !807, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata ptr %sstr, metadata !808, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %slen, metadata !809, metadata !DIExpression()), !dbg !810
  tail call void @Perl_sv_catpvn_flags(ptr noundef %dsv, ptr noundef %sstr, i64 noundef %slen, i32 noundef 2) #10, !dbg !811
  ret void, !dbg !812
}

declare !dbg !813 void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_catpvn_mg(ptr noundef %sv, ptr noundef %ptr, i64 noundef %len) local_unnamed_addr #0 !dbg !817 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !819, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !820, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i64 %len, metadata !821, metadata !DIExpression()), !dbg !822
  tail call void @Perl_sv_catpvn_flags(ptr noundef %sv, ptr noundef %ptr, i64 noundef %len, i32 noundef 130) #10, !dbg !823
  ret void, !dbg !824
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_catsv(ptr noundef %dstr, ptr noundef %sstr) local_unnamed_addr #0 !dbg !825 {
entry:
  call void @llvm.dbg.value(metadata ptr %dstr, metadata !827, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr %sstr, metadata !828, metadata !DIExpression()), !dbg !829
  tail call void @Perl_sv_catsv_flags(ptr noundef %dstr, ptr noundef %sstr, i32 noundef 2) #10, !dbg !830
  ret void, !dbg !831
}

declare !dbg !832 void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_catsv_mg(ptr noundef %dsv, ptr noundef %ssv) local_unnamed_addr #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !837, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr %ssv, metadata !838, metadata !DIExpression()), !dbg !839
  tail call void @Perl_sv_catsv_flags(ptr noundef %dsv, ptr noundef %ssv, i32 noundef 130) #10, !dbg !840
  ret void, !dbg !841
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_sv_iv(ptr noundef %sv) local_unnamed_addr #0 !dbg !842 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !844, metadata !DIExpression()), !dbg !845
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !846
  %0 = load i32, ptr %sv_flags, align 4, !dbg !846
  %and = and i32 %0, 256, !dbg !846
  %tobool.not = icmp eq i32 %and, 0, !dbg !846
  br i1 %tobool.not, label %if.end6, label %if.then, !dbg !848

if.then:                                          ; preds = %entry
  %tobool3.not = icmp sgt i32 %0, -1, !dbg !849
  %1 = load ptr, ptr %sv, align 8, !dbg !852
  br i1 %tobool3.not, label %if.end, label %if.then4, !dbg !853

if.then4:                                         ; preds = %if.then
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %1, i64 0, i32 4, !dbg !854
  %2 = load i64, ptr %xuv_u, align 8, !dbg !854
  br label %return, !dbg !855

if.end:                                           ; preds = %if.then
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %1, i64 0, i32 4, !dbg !856
  %3 = load i64, ptr %xiv_u, align 8, !dbg !856
  br label %return, !dbg !857

if.end6:                                          ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %sv, i32 noundef 2) #10, !dbg !858
  br label %return, !dbg !859

return:                                           ; preds = %if.end6, %if.end, %if.then4
  %retval.0 = phi i64 [ %2, %if.then4 ], [ %3, %if.end ], [ %call, %if.end6 ], !dbg !845
  ret i64 %retval.0, !dbg !860
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_sv_uv(ptr noundef %sv) local_unnamed_addr #0 !dbg !861 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !863, metadata !DIExpression()), !dbg !864
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !865
  %0 = load i32, ptr %sv_flags, align 4, !dbg !865
  %and = and i32 %0, 256, !dbg !865
  %tobool.not = icmp eq i32 %and, 0, !dbg !865
  br i1 %tobool.not, label %if.end6, label %if.then, !dbg !867

if.then:                                          ; preds = %entry
  %tobool3.not = icmp sgt i32 %0, -1, !dbg !868
  %1 = load ptr, ptr %sv, align 8, !dbg !871
  br i1 %tobool3.not, label %if.end, label %if.then4, !dbg !872

if.then4:                                         ; preds = %if.then
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %1, i64 0, i32 4, !dbg !873
  %2 = load i64, ptr %xuv_u, align 8, !dbg !873
  br label %return, !dbg !874

if.end:                                           ; preds = %if.then
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %1, i64 0, i32 4, !dbg !875
  %3 = load i64, ptr %xiv_u, align 8, !dbg !875
  br label %return, !dbg !876

if.end6:                                          ; preds = %entry
  %call = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %sv, i32 noundef 2) #10, !dbg !877
  br label %return, !dbg !878

return:                                           ; preds = %if.end6, %if.end, %if.then4
  %retval.0 = phi i64 [ %2, %if.then4 ], [ %3, %if.end ], [ %call, %if.end6 ], !dbg !864
  ret i64 %retval.0, !dbg !879
}

; Function Attrs: nounwind uwtable
define dso_local double @Perl_sv_nv(ptr noundef %sv) local_unnamed_addr #0 !dbg !880 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !882, metadata !DIExpression()), !dbg !883
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !884
  %0 = load i32, ptr %sv_flags, align 4, !dbg !884
  %and = and i32 %0, 512, !dbg !884
  %tobool.not = icmp eq i32 %and, 0, !dbg !884
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sv, align 8, !dbg !887
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %1, i64 0, i32 5, !dbg !887
  %2 = load double, ptr %xnv_u, align 8, !dbg !887
  br label %return, !dbg !888

if.end:                                           ; preds = %entry
  %call = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %sv, i32 noundef 2) #10, !dbg !889
  br label %return, !dbg !890

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi double [ %2, %if.then ], [ %call, %if.end ], !dbg !883
  ret double %retval.0, !dbg !891
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvn(ptr noundef %sv, ptr noundef %lp) local_unnamed_addr #0 !dbg !892 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !894, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr %lp, metadata !895, metadata !DIExpression()), !dbg !896
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !897
  %0 = load i32, ptr %sv_flags, align 4, !dbg !897
  %and = and i32 %0, 1024, !dbg !897
  %tobool.not = icmp eq i32 %and, 0, !dbg !897
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !899

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sv, align 8, !dbg !900
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !900
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !900
  store i64 %2, ptr %lp, align 8, !dbg !902
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !903
  %3 = load ptr, ptr %sv_u, align 8, !dbg !903
  br label %return, !dbg !904

if.end:                                           ; preds = %entry
  %call = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef %lp, i32 noundef 2) #10, !dbg !905
  br label %return, !dbg !906

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %call, %if.end ], !dbg !896
  ret ptr %retval.0, !dbg !907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvn_nomg(ptr noundef %sv, ptr noundef %lp) local_unnamed_addr #0 !dbg !908 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !910, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %lp, metadata !911, metadata !DIExpression()), !dbg !912
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !913
  %0 = load i32, ptr %sv_flags, align 4, !dbg !913
  %and = and i32 %0, 1024, !dbg !913
  %tobool.not = icmp eq i32 %and, 0, !dbg !913
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !915

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sv, align 8, !dbg !916
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !916
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !916
  store i64 %2, ptr %lp, align 8, !dbg !918
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !919
  %3 = load ptr, ptr %sv_u, align 8, !dbg !919
  br label %return, !dbg !920

if.end:                                           ; preds = %entry
  %call = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef %lp, i32 noundef 0) #10, !dbg !921
  br label %return, !dbg !922

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %call, %if.end ], !dbg !912
  ret ptr %retval.0, !dbg !923
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pv(ptr noundef %sv) local_unnamed_addr #0 !dbg !924 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !926, metadata !DIExpression()), !dbg !927
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !928
  %0 = load i32, ptr %sv_flags, align 4, !dbg !928
  %and = and i32 %0, 1024, !dbg !928
  %tobool.not = icmp eq i32 %and, 0, !dbg !928
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !930

if.then:                                          ; preds = %entry
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !931
  %1 = load ptr, ptr %sv_u, align 8, !dbg !931
  br label %return, !dbg !932

if.end:                                           ; preds = %entry
  %call = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 2) #10, !dbg !933
  br label %return, !dbg !934

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %call, %if.end ], !dbg !927
  ret ptr %retval.0, !dbg !935
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvn_force(ptr noundef %sv, ptr noundef %lp) local_unnamed_addr #0 !dbg !936 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !938, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr %lp, metadata !939, metadata !DIExpression()), !dbg !940
  %call = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %sv, ptr noundef %lp, i32 noundef 2) #10, !dbg !941
  ret ptr %call, !dbg !942
}

declare !dbg !943 ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvbyte(ptr noundef %sv) local_unnamed_addr #0 !dbg !944 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !946, metadata !DIExpression()), !dbg !947
  %call = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %sv, i1 noundef zeroext false) #10, !dbg !948
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !949
  %0 = load i32, ptr %sv_flags, align 4, !dbg !949
  %and = and i32 %0, 2098176, !dbg !949
  %cmp = icmp eq i32 %and, 1024, !dbg !949
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !949

cond.true:                                        ; preds = %entry
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !949
  %1 = load ptr, ptr %sv_u, align 8, !dbg !949
  br label %cond.end, !dbg !949

cond.false:                                       ; preds = %entry
  %call1 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 2) #10, !dbg !949
  br label %cond.end, !dbg !949

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %call1, %cond.false ], !dbg !949
  ret ptr %cond, !dbg !950
}

declare !dbg !951 zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvbyten(ptr noundef %sv, ptr noundef %lp) local_unnamed_addr #0 !dbg !955 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr %lp, metadata !958, metadata !DIExpression()), !dbg !959
  %call = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %sv, i1 noundef zeroext false) #10, !dbg !960
  call void @llvm.dbg.value(metadata ptr %sv, metadata !894, metadata !DIExpression()) #10, !dbg !961
  call void @llvm.dbg.value(metadata ptr %lp, metadata !895, metadata !DIExpression()) #10, !dbg !961
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !963
  %0 = load i32, ptr %sv_flags.i, align 4, !dbg !963
  %and.i = and i32 %0, 1024, !dbg !963
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !963
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !964

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr %sv, align 8, !dbg !965
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !965
  %2 = load i64, ptr %xpv_cur.i, align 8, !dbg !965
  store i64 %2, ptr %lp, align 8, !dbg !966
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !967
  %3 = load ptr, ptr %sv_u.i, align 8, !dbg !967
  br label %Perl_sv_pvn.exit, !dbg !968

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef %lp, i32 noundef 2) #10, !dbg !969
  br label %Perl_sv_pvn.exit, !dbg !970

Perl_sv_pvn.exit:                                 ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ %call.i, %if.end.i ], !dbg !961
  ret ptr %retval.0.i, !dbg !971
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvutf8(ptr noundef %sv) local_unnamed_addr #0 !dbg !972 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !974, metadata !DIExpression()), !dbg !975
  %call = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %sv, i32 noundef 2, i64 noundef 0) #10, !dbg !976
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !977
  %0 = load i32, ptr %sv_flags, align 4, !dbg !977
  %and = and i32 %0, 2098176, !dbg !977
  %cmp = icmp eq i32 %and, 1024, !dbg !977
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !977

cond.true:                                        ; preds = %entry
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !977
  %1 = load ptr, ptr %sv_u, align 8, !dbg !977
  br label %cond.end, !dbg !977

cond.false:                                       ; preds = %entry
  %call1 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 2) #10, !dbg !977
  br label %cond.end, !dbg !977

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %call1, %cond.false ], !dbg !977
  ret ptr %cond, !dbg !978
}

declare !dbg !979 i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_pvutf8n(ptr noundef %sv, ptr noundef %lp) local_unnamed_addr #0 !dbg !982 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !984, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr %lp, metadata !985, metadata !DIExpression()), !dbg !986
  %call = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %sv, i32 noundef 2, i64 noundef 0) #10, !dbg !987
  call void @llvm.dbg.value(metadata ptr %sv, metadata !894, metadata !DIExpression()) #10, !dbg !988
  call void @llvm.dbg.value(metadata ptr %lp, metadata !895, metadata !DIExpression()) #10, !dbg !988
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !990
  %0 = load i32, ptr %sv_flags.i, align 4, !dbg !990
  %and.i = and i32 %0, 1024, !dbg !990
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !990
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !991

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr %sv, align 8, !dbg !992
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !992
  %2 = load i64, ptr %xpv_cur.i, align 8, !dbg !992
  store i64 %2, ptr %lp, align 8, !dbg !993
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !994
  %3 = load ptr, ptr %sv_u.i, align 8, !dbg !994
  br label %Perl_sv_pvn.exit, !dbg !995

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef %lp, i32 noundef 2) #10, !dbg !996
  br label %Perl_sv_pvn.exit, !dbg !997

Perl_sv_pvn.exit:                                 ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ %call.i, %if.end.i ], !dbg !988
  ret ptr %retval.0.i, !dbg !998
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_sv_utf8_upgrade(ptr noundef %sv) local_unnamed_addr #0 !dbg !999 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1003, metadata !DIExpression()), !dbg !1004
  %call = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %sv, i32 noundef 2, i64 noundef 0) #10, !dbg !1005
  ret i64 %call, !dbg !1006
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_fprintf_nocontext(ptr noundef %stream, ptr noundef %format, ...) local_unnamed_addr #0 !dbg !1007 {
entry:
  %arglist = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %stream, metadata !1011, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %format, metadata !1012, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arglist) #10, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %arglist, metadata !1014, metadata !DIExpression()), !dbg !1030
  call void @llvm.va_start(ptr nonnull %arglist), !dbg !1031
  %call = call i32 @PerlIO_vprintf(ptr noundef %stream, ptr noundef %format, ptr noundef nonnull %arglist) #10, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %call, metadata !1013, metadata !DIExpression()), !dbg !1028
  call void @llvm.va_end(ptr nonnull %arglist), !dbg !1033
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arglist) #10, !dbg !1034
  ret i32 %call, !dbg !1035
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

declare !dbg !1036 i32 @PerlIO_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_printf_nocontext(ptr noundef %format, ...) local_unnamed_addr #0 !dbg !1040 {
entry:
  %arglist = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %format, metadata !1044, metadata !DIExpression()), !dbg !1047
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arglist) #10, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %arglist, metadata !1045, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !1046, metadata !DIExpression()), !dbg !1047
  call void @llvm.va_start(ptr nonnull %arglist), !dbg !1050
  %call = call ptr @Perl_PerlIO_stdout() #10, !dbg !1051
  %call2 = call i32 @PerlIO_vprintf(ptr noundef %call, ptr noundef %format, ptr noundef nonnull %arglist) #10, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1046, metadata !DIExpression()), !dbg !1047
  call void @llvm.va_end(ptr nonnull %arglist), !dbg !1053
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arglist) #10, !dbg !1054
  ret i32 %call2, !dbg !1055
}

declare !dbg !1056 ptr @Perl_PerlIO_stdout() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local double @Perl_huge() local_unnamed_addr #5 !dbg !1059 {
entry:
  ret double 0x7FF0000000000000, !dbg !1062
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_fullname(ptr noundef %sv, ptr noundef %gv) local_unnamed_addr #0 !dbg !1063 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1069, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1070, metadata !DIExpression()), !dbg !1071
  %cmp = icmp eq ptr %sv, %gv, !dbg !1072
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1, !dbg !1072
  tail call void @Perl_gv_fullname4(ptr noundef %sv, ptr noundef %gv, ptr noundef nonnull %cond, i1 noundef zeroext true) #10, !dbg !1072
  ret void, !dbg !1073
}

declare !dbg !1074 void @Perl_gv_fullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_efullname(ptr noundef %sv, ptr noundef %gv) local_unnamed_addr #0 !dbg !1077 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1079, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1080, metadata !DIExpression()), !dbg !1081
  %cmp = icmp eq ptr %sv, %gv, !dbg !1082
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1, !dbg !1082
  tail call void @Perl_gv_efullname4(ptr noundef %sv, ptr noundef %gv, ptr noundef nonnull %cond, i1 noundef zeroext true) #10, !dbg !1082
  ret void, !dbg !1083
}

declare !dbg !1084 void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_fullname3(ptr noundef %sv, ptr noundef %gv, ptr noundef %prefix) local_unnamed_addr #0 !dbg !1085 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1089, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1090, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %prefix, metadata !1091, metadata !DIExpression()), !dbg !1092
  tail call void @Perl_gv_fullname4(ptr noundef %sv, ptr noundef %gv, ptr noundef %prefix, i1 noundef zeroext true) #10, !dbg !1093
  ret void, !dbg !1094
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_efullname3(ptr noundef %sv, ptr noundef %gv, ptr noundef %prefix) local_unnamed_addr #0 !dbg !1095 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1097, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1098, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %prefix, metadata !1099, metadata !DIExpression()), !dbg !1100
  tail call void @Perl_gv_efullname4(ptr noundef %sv, ptr noundef %gv, ptr noundef %prefix, i1 noundef zeroext true) #10, !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchmethod(ptr noundef %stash, ptr noundef %name) local_unnamed_addr #0 !dbg !1103 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !1107, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %name, metadata !1108, metadata !DIExpression()), !dbg !1109
  %call = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %stash, ptr noundef %name, i32 noundef 1) #10, !dbg !1110
  ret ptr %call, !dbg !1111
}

declare !dbg !1112 ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_iternext(ptr noundef %hv) local_unnamed_addr #0 !dbg !1115 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1119, metadata !DIExpression()), !dbg !1120
  %call = tail call ptr @Perl_hv_iternext_flags(ptr noundef %hv, i32 noundef 0) #10, !dbg !1121
  ret ptr %call, !dbg !1122
}

declare !dbg !1123 ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_hv_magic(ptr noundef %hv, ptr noundef %gv, i32 noundef %how) local_unnamed_addr #0 !dbg !1126 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1130, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1131, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 %how, metadata !1132, metadata !DIExpression()), !dbg !1133
  tail call void @Perl_sv_magic(ptr noundef %hv, ptr noundef %gv, i32 noundef %how, ptr noundef null, i32 noundef 0) #10, !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_open(ptr noundef %gv, ptr noundef %name, i32 noundef %len, i32 noundef %as_raw, i32 noundef %rawmode, i32 noundef %rawperm, ptr noundef %supplied_fp) local_unnamed_addr #0 !dbg !1136 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1140, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %name, metadata !1141, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %len, metadata !1142, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %as_raw, metadata !1143, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %rawmode, metadata !1144, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %rawperm, metadata !1145, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %supplied_fp, metadata !1146, metadata !DIExpression()), !dbg !1147
  %call = tail call zeroext i1 @Perl_do_openn(ptr noundef %gv, ptr noundef %name, i32 noundef %len, i32 noundef %as_raw, i32 noundef %rawmode, i32 noundef %rawperm, ptr noundef %supplied_fp, ptr noundef null, i32 noundef 0) #10, !dbg !1148
  ret i1 %call, !dbg !1149
}

declare !dbg !1150 zeroext i1 @Perl_do_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_open9(ptr noundef %gv, ptr noundef %name, i32 noundef %len, i32 noundef %as_raw, i32 noundef %rawmode, i32 noundef %rawperm, ptr noundef %supplied_fp, ptr noundef %svs, i32 noundef %num_svs) local_unnamed_addr #0 !dbg !1153 {
entry:
  %svs.addr = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1157, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %name, metadata !1158, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %len, metadata !1159, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %as_raw, metadata !1160, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %rawmode, metadata !1161, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %rawperm, metadata !1162, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %supplied_fp, metadata !1163, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %svs, metadata !1164, metadata !DIExpression()), !dbg !1166
  store ptr %svs, ptr %svs.addr, align 8
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1165, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %svs.addr, metadata !1164, metadata !DIExpression(DW_OP_deref)), !dbg !1166
  %call = call zeroext i1 @Perl_do_openn(ptr noundef %gv, ptr noundef %name, i32 noundef %len, i32 noundef %as_raw, i32 noundef %rawmode, i32 noundef %rawperm, ptr noundef %supplied_fp, ptr noundef nonnull %svs.addr, i32 noundef 1) #10, !dbg !1167
  ret i1 %call, !dbg !1168
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_do_binmode(ptr noundef %fp, i32 noundef %iotype, i32 noundef %mode) local_unnamed_addr #0 !dbg !1169 {
entry:
  call void @llvm.dbg.value(metadata ptr %fp, metadata !1173, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %iotype, metadata !1174, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1175, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !1176, metadata !DIExpression()), !dbg !1177
  %call = tail call i32 @PerlIO_binmode(ptr noundef %fp, i32 noundef %iotype, i32 noundef %mode, ptr noundef nonnull @.str.2) #10, !dbg !1178
  ret i32 %call, !dbg !1179
}

declare !dbg !1180 i32 @PerlIO_binmode(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_aexec(ptr noundef %really, ptr noundef %mark, ptr noundef %sp) local_unnamed_addr #0 !dbg !1183 {
entry:
  call void @llvm.dbg.value(metadata ptr %really, metadata !1187, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %mark, metadata !1188, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %sp, metadata !1189, metadata !DIExpression()), !dbg !1190
  %call = tail call zeroext i1 @Perl_do_aexec5(ptr noundef %really, ptr noundef %mark, ptr noundef %sp, i32 noundef 0, i32 noundef 0) #10, !dbg !1191
  ret i1 %call, !dbg !1192
}

declare !dbg !1193 zeroext i1 @Perl_do_aexec5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_init_i18nl14n(i32 noundef %printwarn) local_unnamed_addr #0 !dbg !1196 {
entry:
  call void @llvm.dbg.value(metadata i32 %printwarn, metadata !1200, metadata !DIExpression()), !dbg !1201
  %call = tail call i32 @Perl_init_i18nl10n(i32 noundef %printwarn) #10, !dbg !1202
  ret i32 %call, !dbg !1203
}

declare !dbg !1204 i32 @Perl_init_i18nl10n(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_string_loc(ptr noundef %s, i64 noundef %len, ptr noundef %ep) local_unnamed_addr #0 !dbg !1205 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !1210, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %len, metadata !1211, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %ep, metadata !1212, metadata !DIExpression()), !dbg !1213
  %call = tail call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %s, i64 noundef %len, ptr noundef %ep, ptr noundef null) #10, !dbg !1214
  ret i1 %call, !dbg !1215
}

declare !dbg !1216 zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_sv_nolocking(ptr nocapture noundef %sv) local_unnamed_addr #5 !dbg !1219 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1221, metadata !DIExpression()), !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_sv_nounlocking(ptr nocapture noundef %sv) local_unnamed_addr #5 !dbg !1224 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1226, metadata !DIExpression()), !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_long(ptr noundef %longp) local_unnamed_addr #0 !dbg !1229 {
entry:
  call void @llvm.dbg.value(metadata ptr %longp, metadata !1234, metadata !DIExpression()), !dbg !1235
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1236
  %add1 = add nsw i32 %0, 7, !dbg !1236
  %1 = load i32, ptr @PL_savestack_max, align 4, !dbg !1236
  %cmp = icmp sgt i32 %add1, %1, !dbg !1236
  br i1 %cmp, label %if.then, label %if.end, !dbg !1238

if.then:                                          ; preds = %entry
  tail call void @Perl_savestack_grow() #10, !dbg !1236
  %.pre = load i32, ptr @PL_savestack_ix, align 4, !dbg !1239
  br label %if.end, !dbg !1236

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %0, %entry ], [ %.pre, %if.then ], !dbg !1239
  %3 = load i64, ptr %longp, align 8, !dbg !1239
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !1239
  %inc = add nsw i32 %2, 1, !dbg !1239
  store i32 %inc, ptr @PL_savestack_ix, align 4, !dbg !1239
  %idxprom = sext i32 %2 to i64, !dbg !1239
  %arrayidx = getelementptr inbounds %union.any, ptr %4, i64 %idxprom, !dbg !1239
  store i64 %3, ptr %arrayidx, align 8, !dbg !1239
  %5 = load ptr, ptr @PL_savestack, align 8, !dbg !1240
  %6 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1240
  %inc2 = add nsw i32 %6, 1, !dbg !1240
  store i32 %inc2, ptr @PL_savestack_ix, align 4, !dbg !1240
  %idxprom3 = sext i32 %6 to i64, !dbg !1240
  %arrayidx4 = getelementptr inbounds %union.any, ptr %5, i64 %idxprom3, !dbg !1240
  store ptr %longp, ptr %arrayidx4, align 8, !dbg !1240
  %7 = load ptr, ptr @PL_savestack, align 8, !dbg !1241
  %8 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1241
  %inc5 = add nsw i32 %8, 1, !dbg !1241
  store i32 %inc5, ptr @PL_savestack_ix, align 4, !dbg !1241
  %idxprom6 = sext i32 %8 to i64, !dbg !1241
  %arrayidx7 = getelementptr inbounds %union.any, ptr %7, i64 %idxprom6, !dbg !1241
  store i64 37, ptr %arrayidx7, align 8, !dbg !1241
  ret void, !dbg !1242
}

declare !dbg !1243 void @Perl_savestack_grow() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_iv(ptr noundef %ivp) local_unnamed_addr #0 !dbg !1246 {
entry:
  call void @llvm.dbg.value(metadata ptr %ivp, metadata !1251, metadata !DIExpression()), !dbg !1252
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1253
  %add1 = add nsw i32 %0, 7, !dbg !1253
  %1 = load i32, ptr @PL_savestack_max, align 4, !dbg !1253
  %cmp = icmp sgt i32 %add1, %1, !dbg !1253
  br i1 %cmp, label %if.then, label %if.end, !dbg !1255

if.then:                                          ; preds = %entry
  tail call void @Perl_savestack_grow() #10, !dbg !1253
  %.pre = load i32, ptr @PL_savestack_ix, align 4, !dbg !1256
  br label %if.end, !dbg !1253

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %0, %entry ], [ %.pre, %if.then ], !dbg !1256
  %3 = load i64, ptr %ivp, align 8, !dbg !1256
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !1256
  %inc = add nsw i32 %2, 1, !dbg !1256
  store i32 %inc, ptr @PL_savestack_ix, align 4, !dbg !1256
  %idxprom = sext i32 %2 to i64, !dbg !1256
  %arrayidx = getelementptr inbounds %union.any, ptr %4, i64 %idxprom, !dbg !1256
  store i64 %3, ptr %arrayidx, align 8, !dbg !1256
  %5 = load ptr, ptr @PL_savestack, align 8, !dbg !1257
  %6 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1257
  %inc2 = add nsw i32 %6, 1, !dbg !1257
  store i32 %inc2, ptr @PL_savestack_ix, align 4, !dbg !1257
  %idxprom3 = sext i32 %6 to i64, !dbg !1257
  %arrayidx4 = getelementptr inbounds %union.any, ptr %5, i64 %idxprom3, !dbg !1257
  store ptr %ivp, ptr %arrayidx4, align 8, !dbg !1257
  %7 = load ptr, ptr @PL_savestack, align 8, !dbg !1258
  %8 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1258
  %inc5 = add nsw i32 %8, 1, !dbg !1258
  store i32 %inc5, ptr @PL_savestack_ix, align 4, !dbg !1258
  %idxprom6 = sext i32 %8 to i64, !dbg !1258
  %arrayidx7 = getelementptr inbounds %union.any, ptr %7, i64 %idxprom6, !dbg !1258
  store i64 36, ptr %arrayidx7, align 8, !dbg !1258
  ret void, !dbg !1259
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_nogv(ptr noundef %gv) local_unnamed_addr #0 !dbg !1260 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1264, metadata !DIExpression()), !dbg !1265
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1266
  %add1 = add nsw i32 %0, 6, !dbg !1266
  %1 = load i32, ptr @PL_savestack_max, align 4, !dbg !1266
  %cmp = icmp sgt i32 %add1, %1, !dbg !1266
  br i1 %cmp, label %if.then, label %if.end, !dbg !1268

if.then:                                          ; preds = %entry
  tail call void @Perl_savestack_grow() #10, !dbg !1266
  %.pre = load i32, ptr @PL_savestack_ix, align 4, !dbg !1269
  br label %if.end, !dbg !1266

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %0, %entry ], [ %.pre, %if.then ], !dbg !1269
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !1269
  %inc = add nsw i32 %2, 1, !dbg !1269
  store i32 %inc, ptr @PL_savestack_ix, align 4, !dbg !1269
  %idxprom = sext i32 %2 to i64, !dbg !1269
  %arrayidx = getelementptr inbounds %union.any, ptr %3, i64 %idxprom, !dbg !1269
  store ptr %gv, ptr %arrayidx, align 8, !dbg !1269
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !1270
  %5 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1270
  %inc2 = add nsw i32 %5, 1, !dbg !1270
  store i32 %inc2, ptr @PL_savestack_ix, align 4, !dbg !1270
  %idxprom3 = sext i32 %5 to i64, !dbg !1270
  %arrayidx4 = getelementptr inbounds %union.any, ptr %4, i64 %idxprom3, !dbg !1270
  store i64 17, ptr %arrayidx4, align 8, !dbg !1270
  ret void, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_list(ptr nocapture noundef readonly %sarg, i32 noundef %maxsarg) local_unnamed_addr #0 !dbg !1272 {
entry:
  call void @llvm.dbg.value(metadata ptr %sarg, metadata !1276, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32 %maxsarg, metadata !1277, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32 1, metadata !1278, metadata !DIExpression()), !dbg !1283
  %cmp.not31 = icmp slt i32 %maxsarg, 1, !dbg !1284
  br i1 %cmp.not31, label %for.end, label %for.body.preheader, !dbg !1285

for.body.preheader:                               ; preds = %entry
  %0 = add nuw i32 %maxsarg, 1, !dbg !1285
  %wide.trip.count = zext i32 %0 to i64, !dbg !1284
  br label %for.body, !dbg !1285

for.body:                                         ; preds = %for.body.preheader, %if.end
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1278, metadata !DIExpression()), !dbg !1283
  %arrayidx = getelementptr inbounds ptr, ptr %sarg, i64 %indvars.iv, !dbg !1286
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !1286
  %sv_flags = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2, !dbg !1286
  %2 = load i32, ptr %sv_flags, align 4, !dbg !1286
  %and = and i32 %2, 2097152, !dbg !1286
  %tobool.not = icmp eq i32 %and, 0, !dbg !1286
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1286

land.rhs:                                         ; preds = %for.body
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %1) #10, !dbg !1286
  br label %land.end

land.end:                                         ; preds = %for.body, %land.rhs
  %call4 = tail call ptr @Perl_newSV(i64 noundef 0) #10, !dbg !1287
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1279, metadata !DIExpression()), !dbg !1288
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1289
  tail call void @Perl_sv_setsv_flags(ptr noundef %call4, ptr noundef %3, i32 noundef 1536) #10, !dbg !1289
  %4 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1290
  %add7 = add nsw i32 %4, 7, !dbg !1290
  %5 = load i32, ptr @PL_savestack_max, align 4, !dbg !1290
  %cmp8 = icmp sgt i32 %add7, %5, !dbg !1290
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1292

if.then:                                          ; preds = %land.end
  tail call void @Perl_savestack_grow() #10, !dbg !1290
  %.pre = load i32, ptr @PL_savestack_ix, align 4, !dbg !1293
  br label %if.end, !dbg !1290

if.end:                                           ; preds = %land.end, %if.then
  %6 = phi i32 [ %4, %land.end ], [ %.pre, %if.then ], !dbg !1293
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1293
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !1293
  %inc = add nsw i32 %6, 1, !dbg !1293
  store i32 %inc, ptr @PL_savestack_ix, align 4, !dbg !1293
  %idxprom13 = sext i32 %6 to i64, !dbg !1293
  %arrayidx14 = getelementptr inbounds %union.any, ptr %8, i64 %idxprom13, !dbg !1293
  store ptr %7, ptr %arrayidx14, align 8, !dbg !1293
  %9 = load ptr, ptr @PL_savestack, align 8, !dbg !1294
  %10 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1294
  %inc15 = add nsw i32 %10, 1, !dbg !1294
  store i32 %inc15, ptr @PL_savestack_ix, align 4, !dbg !1294
  %idxprom16 = sext i32 %10 to i64, !dbg !1294
  %arrayidx17 = getelementptr inbounds %union.any, ptr %9, i64 %idxprom16, !dbg !1294
  store ptr %call4, ptr %arrayidx17, align 8, !dbg !1294
  %11 = load ptr, ptr @PL_savestack, align 8, !dbg !1295
  %12 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1295
  %inc18 = add nsw i32 %12, 1, !dbg !1295
  store i32 %inc18, ptr @PL_savestack_ix, align 4, !dbg !1295
  %idxprom19 = sext i32 %12 to i64, !dbg !1295
  %arrayidx20 = getelementptr inbounds %union.any, ptr %11, i64 %idxprom19, !dbg !1295
  store i64 35, ptr %arrayidx20, align 8, !dbg !1295
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1278, metadata !DIExpression()), !dbg !1283
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1284
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1285, !llvm.loop !1297

for.end:                                          ; preds = %if.end, %entry
  ret void, !dbg !1301
}

declare !dbg !1302 i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare !dbg !1305 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_usepvn_mg(ptr noundef %sv, ptr noundef %ptr, i64 noundef %len) local_unnamed_addr #0 !dbg !1308 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !1313, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %len, metadata !1314, metadata !DIExpression()), !dbg !1315
  tail call void @Perl_sv_usepvn_flags(ptr noundef %sv, ptr noundef %ptr, i64 noundef %len, i32 noundef 128) #10, !dbg !1316
  ret void, !dbg !1317
}

declare !dbg !1318 void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_usepvn(ptr noundef %sv, ptr noundef %ptr, i64 noundef %len) local_unnamed_addr #0 !dbg !1321 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1323, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !1324, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %len, metadata !1325, metadata !DIExpression()), !dbg !1326
  tail call void @Perl_sv_usepvn_flags(ptr noundef %sv, ptr noundef %ptr, i64 noundef %len, i32 noundef 0) #10, !dbg !1327
  ret void, !dbg !1328
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_unpack_str(ptr noundef %pat, ptr noundef %patend, ptr noundef %s, ptr nocapture noundef readnone %strbeg, ptr noundef %strend, ptr nocapture noundef readnone %new_s, i32 noundef %ocnt, i32 noundef %flags) local_unnamed_addr #0 !dbg !1329 {
entry:
  call void @llvm.dbg.value(metadata ptr %pat, metadata !1333, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %patend, metadata !1334, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %s, metadata !1335, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %strbeg, metadata !1336, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %strend, metadata !1337, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %new_s, metadata !1338, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %ocnt, metadata !1339, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1340, metadata !DIExpression()), !dbg !1341
  %call = tail call i32 @Perl_unpackstring(ptr noundef %pat, ptr noundef %patend, ptr noundef %s, ptr noundef %strend, i32 noundef %flags) #10, !dbg !1342
  ret i32 %call, !dbg !1343
}

declare !dbg !1344 i32 @Perl_unpackstring(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pack_cat(ptr noundef %cat, ptr noundef %pat, ptr noundef %patend, ptr noundef %beglist, ptr noundef %endlist, ptr nocapture noundef readnone %next_in_list, i32 noundef %flags) local_unnamed_addr #0 !dbg !1347 {
entry:
  call void @llvm.dbg.value(metadata ptr %cat, metadata !1352, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %pat, metadata !1353, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %patend, metadata !1354, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %beglist, metadata !1355, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %endlist, metadata !1356, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %next_in_list, metadata !1357, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1358, metadata !DIExpression()), !dbg !1359
  tail call void @Perl_packlist(ptr noundef %cat, ptr noundef %pat, ptr noundef %patend, ptr noundef %beglist, ptr noundef %endlist) #10, !dbg !1360
  ret void, !dbg !1361
}

declare !dbg !1362 void @Perl_packlist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_store_ent(ptr noundef %hv, ptr noundef %keysv, ptr noundef %val, i32 noundef %hash) local_unnamed_addr #0 !dbg !1365 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1369, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %keysv, metadata !1370, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %val, metadata !1371, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1372, metadata !DIExpression()), !dbg !1373
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef %keysv, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %val, i32 noundef %hash) #10, !dbg !1374
  ret ptr %call, !dbg !1375
}

declare !dbg !1376 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_hv_exists_ent(ptr noundef %hv, ptr noundef %keysv, i32 noundef %hash) local_unnamed_addr #0 !dbg !1379 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1383, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %keysv, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1385, metadata !DIExpression()), !dbg !1386
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef %keysv, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef %hash) #10, !dbg !1387
  %tobool = icmp ne ptr %call, null, !dbg !1387
  ret i1 %tobool, !dbg !1388
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_fetch_ent(ptr noundef %hv, ptr noundef %keysv, i32 noundef %lval, i32 noundef %hash) local_unnamed_addr #0 !dbg !1389 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1393, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata ptr %keysv, metadata !1394, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %lval, metadata !1395, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1396, metadata !DIExpression()), !dbg !1397
  %tobool.not = icmp eq i32 %lval, 0, !dbg !1398
  %cond = select i1 %tobool.not, i32 0, i32 16, !dbg !1398
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef %keysv, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %cond, ptr noundef null, i32 noundef %hash) #10, !dbg !1398
  ret ptr %call, !dbg !1399
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_delete_ent(ptr noundef %hv, ptr noundef %keysv, i32 noundef %flags, i32 noundef %hash) local_unnamed_addr #0 !dbg !1400 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1404, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %keysv, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1406, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1407, metadata !DIExpression()), !dbg !1408
  %or = or i32 %flags, 64, !dbg !1409
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef %keysv, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %or, ptr noundef null, i32 noundef %hash) #10, !dbg !1409
  ret ptr %call, !dbg !1410
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_store_flags(ptr noundef %hv, ptr noundef %key, i32 noundef %klen, ptr noundef %val, i32 noundef %hash, i32 noundef %flags) local_unnamed_addr #0 !dbg !1411 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1415, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %key, metadata !1416, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %klen, metadata !1417, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %val, metadata !1418, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1419, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1420, metadata !DIExpression()), !dbg !1421
  %conv = sext i32 %klen to i64, !dbg !1422
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef null, ptr noundef %key, i64 noundef %conv, i32 noundef %flags, i32 noundef 36, ptr noundef %val, i32 noundef %hash) #10, !dbg !1422
  ret ptr %call, !dbg !1423
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_store(ptr noundef %hv, ptr noundef %key, i32 noundef %klen_i32, ptr noundef %val, i32 noundef %hash) local_unnamed_addr #0 !dbg !1424 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1428, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata ptr %key, metadata !1429, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %klen_i32, metadata !1430, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata ptr %val, metadata !1431, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1432, metadata !DIExpression()), !dbg !1435
  %0 = tail call i32 @llvm.abs.i32(i32 %klen_i32, i1 true), !dbg !1436
  %klen_i32.lobit = lshr i32 %klen_i32, 31, !dbg !1436
  %klen.0 = zext i32 %0 to i64, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %klen_i32.lobit, metadata !1434, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %klen.0, metadata !1433, metadata !DIExpression()), !dbg !1435
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef null, ptr noundef %key, i64 noundef %klen.0, i32 noundef %klen_i32.lobit, i32 noundef 36, ptr noundef %val, i32 noundef %hash) #10, !dbg !1439
  ret ptr %call, !dbg !1440
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_hv_exists(ptr noundef %hv, ptr noundef %key, i32 noundef %klen_i32) local_unnamed_addr #0 !dbg !1441 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1445, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata ptr %key, metadata !1446, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %klen_i32, metadata !1447, metadata !DIExpression()), !dbg !1450
  %0 = tail call i32 @llvm.abs.i32(i32 %klen_i32, i1 true), !dbg !1451
  %klen_i32.lobit = lshr i32 %klen_i32, 31, !dbg !1451
  %klen.0 = zext i32 %0 to i64, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %klen_i32.lobit, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i64 %klen.0, metadata !1448, metadata !DIExpression()), !dbg !1450
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef null, ptr noundef %key, i64 noundef %klen.0, i32 noundef %klen_i32.lobit, i32 noundef 8, ptr noundef null, i32 noundef 0) #10, !dbg !1454
  %tobool = icmp ne ptr %call, null, !dbg !1454
  ret i1 %tobool, !dbg !1455
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_fetch(ptr noundef %hv, ptr noundef %key, i32 noundef %klen_i32, i32 noundef %lval) local_unnamed_addr #0 !dbg !1456 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1460, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata ptr %key, metadata !1461, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 %klen_i32, metadata !1462, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 %lval, metadata !1463, metadata !DIExpression()), !dbg !1466
  %0 = tail call i32 @llvm.abs.i32(i32 %klen_i32, i1 true), !dbg !1467
  %klen_i32.lobit = lshr i32 %klen_i32, 31, !dbg !1467
  %klen.0 = zext i32 %0 to i64, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %klen_i32.lobit, metadata !1465, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %klen.0, metadata !1464, metadata !DIExpression()), !dbg !1466
  %tobool.not = icmp eq i32 %lval, 0, !dbg !1470
  %cond = select i1 %tobool.not, i32 32, i32 48, !dbg !1470
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef null, ptr noundef %key, i64 noundef %klen.0, i32 noundef %klen_i32.lobit, i32 noundef %cond, ptr noundef null, i32 noundef 0) #10, !dbg !1470
  ret ptr %call, !dbg !1471
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_delete(ptr noundef %hv, ptr noundef %key, i32 noundef %klen_i32, i32 noundef %flags) local_unnamed_addr #0 !dbg !1472 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !1476, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata ptr %key, metadata !1477, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %klen_i32, metadata !1478, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1479, metadata !DIExpression()), !dbg !1482
  %0 = tail call i32 @llvm.abs.i32(i32 %klen_i32, i1 true), !dbg !1483
  %klen_i32.lobit = lshr i32 %klen_i32, 31, !dbg !1483
  %klen.0 = zext i32 %0 to i64, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %klen_i32.lobit, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %klen.0, metadata !1480, metadata !DIExpression()), !dbg !1482
  %or = or i32 %flags, 64, !dbg !1486
  %call = tail call ptr @Perl_hv_common(ptr noundef %hv, ptr noundef null, ptr noundef %key, i64 noundef %klen.0, i32 noundef %klen_i32.lobit, i32 noundef %or, ptr noundef null, i32 noundef 0) #10, !dbg !1486
  ret ptr %call, !dbg !1487
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newAV() local_unnamed_addr #0 !dbg !1488 {
entry:
  %call = tail call ptr @Perl_newSV_type(i32 noundef 11) #10, !dbg !1491
  ret ptr %call, !dbg !1492
}

declare !dbg !1493 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newHV() local_unnamed_addr #0 !dbg !1498 {
entry:
  %call = tail call ptr @Perl_newSV_type(i32 noundef 12) #10, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %call, metadata !1502, metadata !DIExpression()), !dbg !1505
  ret ptr %call, !dbg !1506
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_insert(ptr noundef %bigstr, i64 noundef %offset, i64 noundef %len, ptr noundef %little, i64 noundef %littlelen) local_unnamed_addr #0 !dbg !1507 {
entry:
  call void @llvm.dbg.value(metadata ptr %bigstr, metadata !1511, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1512, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %len, metadata !1513, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %little, metadata !1514, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %littlelen, metadata !1515, metadata !DIExpression()), !dbg !1516
  tail call void @Perl_sv_insert_flags(ptr noundef %bigstr, i64 noundef %offset, i64 noundef %len, ptr noundef %little, i64 noundef %littlelen, i32 noundef 2) #10, !dbg !1517
  ret void, !dbg !1518
}

declare !dbg !1519 void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_freesv(ptr noundef %sv) local_unnamed_addr #0 !dbg !1522 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1524, metadata !DIExpression()), !dbg !1525
  tail call void @Perl_save_pushptr(ptr noundef %sv, i32 noundef 11) #10, !dbg !1526
  ret void, !dbg !1527
}

declare !dbg !1528 void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_mortalizesv(ptr noundef %sv) local_unnamed_addr #0 !dbg !1532 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1534, metadata !DIExpression()), !dbg !1535
  tail call void @Perl_save_pushptr(ptr noundef %sv, i32 noundef 16) #10, !dbg !1536
  ret void, !dbg !1537
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_freeop(ptr noundef %o) local_unnamed_addr #0 !dbg !1538 {
entry:
  call void @llvm.dbg.value(metadata ptr %o, metadata !1542, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr %o, metadata !1543, metadata !DIExpression()), !dbg !1547
  %op_savefree = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 4, !dbg !1548
  %bf.load = load i16, ptr %op_savefree, align 8, !dbg !1548
  %bf.set = or i16 %bf.load, 2048, !dbg !1548
  store i16 %bf.set, ptr %op_savefree, align 8, !dbg !1548
  tail call void @Perl_save_pushptr(ptr noundef %o, i32 noundef 9) #10, !dbg !1548
  ret void, !dbg !1549
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_freepv(ptr noundef %pv) local_unnamed_addr #0 !dbg !1550 {
entry:
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1554, metadata !DIExpression()), !dbg !1555
  tail call void @Perl_save_pushptr(ptr noundef %pv, i32 noundef 10) #10, !dbg !1556
  ret void, !dbg !1557
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_op() local_unnamed_addr #0 !dbg !1558 {
entry:
  %0 = load ptr, ptr @PL_op, align 8, !dbg !1559
  tail call void @Perl_save_pushptr(ptr noundef %0, i32 noundef 18) #10, !dbg !1559
  ret void, !dbg !1560
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_SVadd(ptr noundef %gv) local_unnamed_addr #0 !dbg !1561 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1565, metadata !DIExpression()), !dbg !1566
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef %gv, i32 noundef 0) #10, !dbg !1567
  ret ptr %call, !dbg !1568
}

declare !dbg !1569 ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_AVadd(ptr noundef %gv) local_unnamed_addr #0 !dbg !1572 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1574, metadata !DIExpression()), !dbg !1575
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef %gv, i32 noundef 11) #10, !dbg !1576
  ret ptr %call, !dbg !1577
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_HVadd(ptr noundef %gv) local_unnamed_addr #0 !dbg !1578 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1580, metadata !DIExpression()), !dbg !1581
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef %gv, i32 noundef 12) #10, !dbg !1582
  ret ptr %call, !dbg !1583
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_IOadd(ptr noundef %gv) local_unnamed_addr #0 !dbg !1584 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1586, metadata !DIExpression()), !dbg !1587
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef %gv, i32 noundef 15) #10, !dbg !1588
  ret ptr %call, !dbg !1589
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newIO() local_unnamed_addr #0 !dbg !1590 {
entry:
  %call = tail call ptr @Perl_newSV_type(i32 noundef 15) #10, !dbg !1593
  ret ptr %call, !dbg !1594
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_my_stat() local_unnamed_addr #0 !dbg !1595 {
entry:
  %call = tail call i32 @Perl_my_stat_flags(i32 noundef 2) #10, !dbg !1598
  ret i32 %call, !dbg !1599
}

declare !dbg !1600 i32 @Perl_my_stat_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_my_lstat() local_unnamed_addr #0 !dbg !1603 {
entry:
  %call = tail call i32 @Perl_my_lstat_flags(i32 noundef 2) #10, !dbg !1604
  ret i32 %call, !dbg !1605
}

declare !dbg !1606 i32 @Perl_my_lstat_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_sv_eq(ptr noundef %sv1, ptr noundef %sv2) local_unnamed_addr #0 !dbg !1607 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv1, metadata !1611, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata ptr %sv2, metadata !1612, metadata !DIExpression()), !dbg !1613
  %call = tail call i32 @Perl_sv_eq_flags(ptr noundef %sv1, ptr noundef %sv2, i32 noundef 2) #10, !dbg !1614
  ret i32 %call, !dbg !1615
}

declare !dbg !1616 i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_2bool(ptr noundef %sv) local_unnamed_addr #0 !dbg !1619 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1623, metadata !DIExpression()), !dbg !1624
  %call = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %sv, i32 noundef 2) #10, !dbg !1625
  ret i1 %call, !dbg !1626
}

declare !dbg !1627 zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_custom_op_name(ptr noundef %o) local_unnamed_addr #0 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata ptr %o, metadata !1636, metadata !DIExpression()), !dbg !1637
  %call = tail call ptr @Perl_custom_op_get_field(ptr noundef %o, i32 noundef 1) #10, !dbg !1638
  ret ptr %call, !dbg !1639
}

declare !dbg !1640 ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_custom_op_desc(ptr noundef %o) local_unnamed_addr #0 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata ptr %o, metadata !1667, metadata !DIExpression()), !dbg !1668
  %call = tail call ptr @Perl_custom_op_get_field(ptr noundef %o, i32 noundef 2) #10, !dbg !1669
  ret ptr %call, !dbg !1670
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newSUB(i32 noundef %floor, ptr noundef %o, ptr noundef %proto, ptr noundef %block) local_unnamed_addr #0 !dbg !1671 {
entry:
  call void @llvm.dbg.value(metadata i32 %floor, metadata !1675, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %o, metadata !1676, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %proto, metadata !1677, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %block, metadata !1678, metadata !DIExpression()), !dbg !1679
  %call = tail call ptr @Perl_newATTRSUB_x(i32 noundef %floor, ptr noundef %o, ptr noundef %proto, ptr noundef null, ptr noundef %block, i1 noundef zeroext false) #10, !dbg !1680
  ret ptr %call, !dbg !1681
}

declare !dbg !1682 ptr @Perl_newATTRSUB_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_to_utf8_fold(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp) local_unnamed_addr #0 !dbg !1685 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1689, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %ustrp, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %lenp, metadata !1691, metadata !DIExpression()), !dbg !1692
  %call = tail call i64 @Perl__to_utf8_fold_flags(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp, i8 noundef zeroext 2) #10, !dbg !1693
  ret i64 %call, !dbg !1694
}

declare !dbg !1695 i64 @Perl__to_utf8_fold_flags(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_to_utf8_lower(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp) local_unnamed_addr #0 !dbg !1698 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1700, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr %ustrp, metadata !1701, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr %lenp, metadata !1702, metadata !DIExpression()), !dbg !1703
  %call = tail call i64 @Perl__to_utf8_lower_flags(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp, i1 noundef zeroext false) #10, !dbg !1704
  ret i64 %call, !dbg !1705
}

declare !dbg !1706 i64 @Perl__to_utf8_lower_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_to_utf8_title(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp) local_unnamed_addr #0 !dbg !1709 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1711, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %ustrp, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %lenp, metadata !1713, metadata !DIExpression()), !dbg !1714
  %call = tail call i64 @Perl__to_utf8_title_flags(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp, i1 noundef zeroext false) #10, !dbg !1715
  ret i64 %call, !dbg !1716
}

declare !dbg !1717 i64 @Perl__to_utf8_title_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_to_utf8_upper(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp) local_unnamed_addr #0 !dbg !1718 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1720, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %ustrp, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %lenp, metadata !1722, metadata !DIExpression()), !dbg !1723
  %call = tail call i64 @Perl__to_utf8_upper_flags(ptr noundef %p, ptr noundef %ustrp, ptr noundef %lenp, i1 noundef zeroext false) #10, !dbg !1724
  ret i64 %call, !dbg !1725
}

declare !dbg !1726 i64 @Perl__to_utf8_upper_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_mortalcopy(ptr noundef %oldstr) local_unnamed_addr #0 !dbg !1727 {
entry:
  call void @llvm.dbg.value(metadata ptr %oldstr, metadata !1731, metadata !DIExpression()), !dbg !1732
  %call = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %oldstr, i32 noundef 2) #10, !dbg !1733
  ret ptr %call, !dbg !1734
}

declare !dbg !1735 ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_copypv(ptr noundef %dsv, ptr noundef %ssv) local_unnamed_addr #0 !dbg !1738 {
entry:
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata ptr %ssv, metadata !1743, metadata !DIExpression()), !dbg !1744
  tail call void @Perl_sv_copypv_flags(ptr noundef %dsv, ptr noundef %ssv, i32 noundef 0) #10, !dbg !1745
  ret void, !dbg !1746
}

declare !dbg !1747 void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @NATIVE_TO_NEED(i64 noundef %enc, i64 noundef returned %ch) local_unnamed_addr #5 !dbg !1748 {
entry:
  call void @llvm.dbg.value(metadata i64 %enc, metadata !1753, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %ch, metadata !1754, metadata !DIExpression()), !dbg !1755
  ret i64 %ch, !dbg !1756
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @ASCII_TO_NEED(i64 noundef %enc, i64 noundef returned %ch) local_unnamed_addr #5 !dbg !1757 {
entry:
  call void @llvm.dbg.value(metadata i64 %enc, metadata !1759, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %ch, metadata !1760, metadata !DIExpression()), !dbg !1761
  ret i64 %ch, !dbg !1762
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_isIDFIRST_lazy(ptr noundef %p) local_unnamed_addr #0 !dbg !1763 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1767, metadata !DIExpression()), !dbg !1768
  %0 = load ptr, ptr @PL_curcop, align 8, !dbg !1769
  %cop_hints = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 10, !dbg !1769
  %1 = load i32, ptr %cop_hints, align 8, !dbg !1769
  %and = and i32 %1, 8, !dbg !1769
  %tobool.not = icmp eq i32 %and, 0, !dbg !1769
  %2 = load i8, ptr %p, align 1, !dbg !1769
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !1769

cond.true:                                        ; preds = %entry
  %idxprom = zext i8 %2 to i64, !dbg !1769
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1769
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1769
  %and1 = and i32 %3, 81920, !dbg !1769
  %cmp = icmp eq i32 %and1, 81920, !dbg !1769
  %land.ext = zext i1 %cmp to i32, !dbg !1769
  br label %cond.end42, !dbg !1769

cond.false:                                       ; preds = %entry
  %cmp2 = icmp sgt i8 %2, -1, !dbg !1769
  br i1 %cmp2, label %cond.true4, label %cond.false10, !dbg !1769

cond.true4:                                       ; preds = %cond.false
  %conv = zext i8 %2 to i64, !dbg !1769
  %arrayidx6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !1769
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !1769
  %and7 = lshr i32 %4, 16, !dbg !1769
  %and7.lobit = and i32 %and7, 1, !dbg !1769
  br label %cond.end42, !dbg !1769

cond.false10:                                     ; preds = %cond.false
  %conv11 = zext i8 %2 to i32, !dbg !1769
  %and12 = and i32 %conv11, 254, !dbg !1769
  %cmp13 = icmp eq i32 %and12, 194, !dbg !1769
  br i1 %cmp13, label %cond.true15, label %cond.false37, !dbg !1769

cond.true15:                                      ; preds = %cond.false10
  %5 = and i32 %conv11, 28, !dbg !1769
  %tobool22.not = icmp eq i32 %5, 0, !dbg !1769
  br i1 %tobool22.not, label %land.rhs, label %cond.end42, !dbg !1769

land.rhs:                                         ; preds = %cond.true15
  %and17 = shl i8 %2, 6, !dbg !1769
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !1769
  %6 = load i8, ptr %add.ptr, align 1, !dbg !1769
  %7 = and i8 %6, 63, !dbg !1769
  %or = or i8 %7, %and17, !dbg !1769
  %idxprom31 = zext i8 %or to i64, !dbg !1769
  %arrayidx32 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom31, !dbg !1769
  %8 = load i32, ptr %arrayidx32, align 4, !dbg !1769
  %and33 = lshr i32 %8, 16
  %and33.lobit = and i32 %and33, 1
  br label %cond.end42

cond.false37:                                     ; preds = %cond.false10
  %call = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %p) #10, !dbg !1769
  %conv38 = zext i1 %call to i32, !dbg !1769
  br label %cond.end42, !dbg !1769

cond.end42:                                       ; preds = %cond.true15, %land.rhs, %cond.true4, %cond.false37, %cond.true
  %cond43 = phi i32 [ %land.ext, %cond.true ], [ %and7.lobit, %cond.true4 ], [ %conv38, %cond.false37 ], [ 0, %cond.true15 ], [ %and33.lobit, %land.rhs ], !dbg !1769
  %tobool44 = icmp ne i32 %cond43, 0, !dbg !1769
  ret i1 %tobool44, !dbg !1770
}

declare !dbg !1771 zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_isALNUM_lazy(ptr noundef %p) local_unnamed_addr #0 !dbg !1774 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1776, metadata !DIExpression()), !dbg !1777
  %0 = load ptr, ptr @PL_curcop, align 8, !dbg !1778
  %cop_hints = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 10, !dbg !1778
  %1 = load i32, ptr %cop_hints, align 8, !dbg !1778
  %and = and i32 %1, 8, !dbg !1778
  %tobool.not = icmp eq i32 %and, 0, !dbg !1778
  %2 = load i8, ptr %p, align 1, !dbg !1778
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !1778

cond.true:                                        ; preds = %entry
  %idxprom = zext i8 %2 to i64, !dbg !1778
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1778
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1778
  %and1 = and i32 %3, 16385, !dbg !1778
  %cmp = icmp eq i32 %and1, 16385, !dbg !1778
  %land.ext = zext i1 %cmp to i32, !dbg !1778
  br label %cond.end42, !dbg !1778

cond.false:                                       ; preds = %entry
  %cmp2 = icmp sgt i8 %2, -1, !dbg !1778
  br i1 %cmp2, label %cond.true4, label %cond.false10, !dbg !1778

cond.true4:                                       ; preds = %cond.false
  %conv = zext i8 %2 to i64, !dbg !1778
  %arrayidx6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !1778
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !1778
  %and7 = and i32 %4, 1, !dbg !1778
  br label %cond.end42, !dbg !1778

cond.false10:                                     ; preds = %cond.false
  %conv11 = zext i8 %2 to i32, !dbg !1778
  %and12 = and i32 %conv11, 254, !dbg !1778
  %cmp13 = icmp eq i32 %and12, 194, !dbg !1778
  br i1 %cmp13, label %cond.true15, label %cond.false37, !dbg !1778

cond.true15:                                      ; preds = %cond.false10
  %5 = and i32 %conv11, 28, !dbg !1778
  %tobool22.not = icmp eq i32 %5, 0, !dbg !1778
  br i1 %tobool22.not, label %land.rhs, label %cond.end42, !dbg !1778

land.rhs:                                         ; preds = %cond.true15
  %and17 = shl i8 %2, 6, !dbg !1778
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !1778
  %6 = load i8, ptr %add.ptr, align 1, !dbg !1778
  %7 = and i8 %6, 63, !dbg !1778
  %or = or i8 %7, %and17, !dbg !1778
  %idxprom31 = zext i8 %or to i64, !dbg !1778
  %arrayidx32 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom31, !dbg !1778
  %8 = load i32, ptr %arrayidx32, align 4, !dbg !1778
  %and33 = and i32 %8, 1, !dbg !1778
  br label %cond.end42

cond.false37:                                     ; preds = %cond.false10
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef nonnull %p) #10, !dbg !1778
  %conv38 = zext i1 %call to i32, !dbg !1778
  br label %cond.end42, !dbg !1778

cond.end42:                                       ; preds = %cond.true15, %land.rhs, %cond.true4, %cond.false37, %cond.true
  %cond43 = phi i32 [ %land.ext, %cond.true ], [ %and7, %cond.true4 ], [ %conv38, %cond.false37 ], [ 0, %cond.true15 ], [ %and33, %land.rhs ], !dbg !1778
  %tobool44 = icmp ne i32 %cond43, 0, !dbg !1778
  ret i1 %tobool44, !dbg !1779
}

declare !dbg !1780 zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnum(i64 noundef %c) local_unnamed_addr #0 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1787, metadata !DIExpression()), !dbg !1788
  %cmp = icmp ult i64 %c, 256, !dbg !1789
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1789

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1789
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1789
  %and1 = and i32 %0, 1, !dbg !1789
  br label %cond.end, !dbg !1789

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 0, i64 noundef %c) #10, !dbg !1789
  %conv3 = zext i1 %call to i32, !dbg !1789
  br label %cond.end, !dbg !1789

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1, %land.rhs ], [ %conv3, %cond.false ], !dbg !1789
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1789
  ret i1 %tobool5, !dbg !1790
}

declare !dbg !1791 zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnumc(i64 noundef %c) local_unnamed_addr #0 !dbg !1794 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1796, metadata !DIExpression()), !dbg !1797
  %cmp = icmp ult i64 %c, 256, !dbg !1798
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1798

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1798
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1798
  %and1 = and i32 %0, 1, !dbg !1798
  br label %cond.end, !dbg !1798

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 0, i64 noundef %c) #10, !dbg !1798
  %conv3 = zext i1 %call to i32, !dbg !1798
  br label %cond.end, !dbg !1798

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1, %land.rhs ], [ %conv3, %cond.false ], !dbg !1798
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1798
  ret i1 %tobool5, !dbg !1799
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alpha(i64 noundef %c) local_unnamed_addr #0 !dbg !1800 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1802, metadata !DIExpression()), !dbg !1803
  %cmp = icmp ult i64 %c, 256, !dbg !1804
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1804

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1804
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1804
  %and1 = lshr i32 %0, 2
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1804

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 2, i64 noundef %c) #10, !dbg !1804
  %conv3 = zext i1 %call to i32, !dbg !1804
  br label %cond.end, !dbg !1804

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1804
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1804
  ret i1 %tobool5, !dbg !1805
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_ascii(i64 noundef %c) local_unnamed_addr #5 !dbg !1806 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1808, metadata !DIExpression()), !dbg !1809
  %cmp = icmp ult i64 %c, 128, !dbg !1810
  ret i1 %cmp, !dbg !1811
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_blank(i64 noundef %c) local_unnamed_addr #5 !dbg !1812 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1814, metadata !DIExpression()), !dbg !1815
  %cmp = icmp ult i64 %c, 256, !dbg !1816
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1816

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1816
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1816
  %and1 = lshr i32 %0, 11
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1816

cond.false:                                       ; preds = %entry
  %cmp3 = icmp eq i64 %c, 5760, !dbg !1816
  br i1 %cmp3, label %cond.end, label %lor.rhs, !dbg !1816

lor.rhs:                                          ; preds = %cond.false
  %cmp5 = icmp ugt i64 %c, 5760, !dbg !1816
  br i1 %cmp5, label %land.rhs7, label %cond.end, !dbg !1816

land.rhs7:                                        ; preds = %lor.rhs
  %1 = add i64 %c, -8192, !dbg !1816
  %2 = icmp ult i64 %1, 11, !dbg !1816
  br i1 %2, label %cond.end, label %lor.rhs12, !dbg !1816

lor.rhs12:                                        ; preds = %land.rhs7
  %cmp13 = icmp ugt i64 %c, 8202, !dbg !1816
  br i1 %cmp13, label %land.rhs15, label %cond.end, !dbg !1816

land.rhs15:                                       ; preds = %lor.rhs12
  %cmp16 = icmp eq i64 %c, 8239, !dbg !1816
  br i1 %cmp16, label %cond.end, label %lor.rhs18, !dbg !1816

lor.rhs18:                                        ; preds = %land.rhs15
  %cmp19 = icmp ugt i64 %c, 8239, !dbg !1816
  br i1 %cmp19, label %land.rhs21, label %cond.end, !dbg !1816

land.rhs21:                                       ; preds = %lor.rhs18
  %cmp22 = icmp eq i64 %c, 8287, !dbg !1816
  br i1 %cmp22, label %cond.end, label %lor.rhs24, !dbg !1816

lor.rhs24:                                        ; preds = %land.rhs21
  %cmp25 = icmp eq i64 %c, 12288, !dbg !1816
  %phi.cast = zext i1 %cmp25 to i32, !dbg !1816
  br label %cond.end, !dbg !1816

cond.end:                                         ; preds = %cond.false, %land.rhs7, %land.rhs15, %land.rhs21, %lor.rhs24, %lor.rhs18, %lor.rhs12, %lor.rhs, %land.rhs
  %cond33 = phi i32 [ %and1.lobit, %land.rhs ], [ 1, %cond.false ], [ 0, %lor.rhs ], [ 1, %land.rhs7 ], [ 0, %lor.rhs12 ], [ 1, %land.rhs15 ], [ 0, %lor.rhs18 ], [ 1, %land.rhs21 ], [ %phi.cast, %lor.rhs24 ], !dbg !1816
  %tobool34 = icmp ne i32 %cond33, 0, !dbg !1816
  ret i1 %tobool34, !dbg !1817
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_space(i64 noundef %c) local_unnamed_addr #5 !dbg !1818 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1820, metadata !DIExpression()), !dbg !1821
  %cmp = icmp ult i64 %c, 256, !dbg !1822
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1822

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1822
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1822
  %and1 = lshr i32 %0, 10
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1822

cond.false:                                       ; preds = %entry
  %cmp3 = icmp eq i64 %c, 5760, !dbg !1822
  br i1 %cmp3, label %cond.end, label %lor.rhs, !dbg !1822

lor.rhs:                                          ; preds = %cond.false
  %cmp5 = icmp ugt i64 %c, 5760, !dbg !1822
  br i1 %cmp5, label %land.rhs7, label %cond.end, !dbg !1822

land.rhs7:                                        ; preds = %lor.rhs
  %1 = add i64 %c, -8192, !dbg !1822
  %2 = icmp ult i64 %1, 11, !dbg !1822
  br i1 %2, label %cond.end, label %lor.rhs12, !dbg !1822

lor.rhs12:                                        ; preds = %land.rhs7
  %cmp13 = icmp ugt i64 %c, 8202, !dbg !1822
  br i1 %cmp13, label %land.rhs15, label %cond.end, !dbg !1822

land.rhs15:                                       ; preds = %lor.rhs12
  %cmp16 = icmp eq i64 %c, 8232, !dbg !1822
  br i1 %cmp16, label %cond.end, label %lor.rhs18, !dbg !1822

lor.rhs18:                                        ; preds = %land.rhs15
  %cmp19 = icmp ugt i64 %c, 8232, !dbg !1822
  br i1 %cmp19, label %land.rhs21, label %cond.end, !dbg !1822

land.rhs21:                                       ; preds = %lor.rhs18
  switch i64 %c, label %lor.rhs30 [
    i64 8233, label %cond.end
    i64 8239, label %cond.end
  ], !dbg !1822

lor.rhs30:                                        ; preds = %land.rhs21
  %cmp31 = icmp ugt i64 %c, 8239, !dbg !1822
  br i1 %cmp31, label %land.rhs33, label %cond.end, !dbg !1822

land.rhs33:                                       ; preds = %lor.rhs30
  %cmp34 = icmp eq i64 %c, 8287, !dbg !1822
  br i1 %cmp34, label %cond.end, label %lor.rhs36, !dbg !1822

lor.rhs36:                                        ; preds = %land.rhs33
  %cmp37 = icmp eq i64 %c, 12288, !dbg !1822
  %phi.cast = zext i1 %cmp37 to i32, !dbg !1822
  br label %cond.end, !dbg !1822

cond.end:                                         ; preds = %cond.false, %land.rhs7, %land.rhs15, %land.rhs33, %lor.rhs36, %lor.rhs30, %lor.rhs18, %lor.rhs12, %lor.rhs, %land.rhs21, %land.rhs21, %land.rhs
  %cond49 = phi i32 [ %and1.lobit, %land.rhs ], [ 1, %cond.false ], [ 0, %lor.rhs ], [ 1, %land.rhs7 ], [ 0, %lor.rhs12 ], [ 1, %land.rhs15 ], [ 0, %lor.rhs18 ], [ 1, %land.rhs21 ], [ 0, %lor.rhs30 ], [ 1, %land.rhs33 ], [ %phi.cast, %lor.rhs36 ], [ 1, %land.rhs21 ], !dbg !1822
  %tobool50 = icmp ne i32 %cond49, 0, !dbg !1822
  ret i1 %tobool50, !dbg !1823
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_digit(i64 noundef %c) local_unnamed_addr #0 !dbg !1824 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1826, metadata !DIExpression()), !dbg !1827
  %cmp = icmp ult i64 %c, 256, !dbg !1828
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1828

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1828
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1828
  %and1 = lshr i32 %0, 1
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1828

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 1, i64 noundef %c) #10, !dbg !1828
  %conv3 = zext i1 %call to i32, !dbg !1828
  br label %cond.end, !dbg !1828

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1828
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1828
  ret i1 %tobool5, !dbg !1829
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_upper(i64 noundef %c) local_unnamed_addr #0 !dbg !1830 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1832, metadata !DIExpression()), !dbg !1833
  %cmp = icmp ult i64 %c, 256, !dbg !1834
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1834

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1834
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1834
  %and1 = lshr i32 %0, 4
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1834

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 4, i64 noundef %c) #10, !dbg !1834
  %conv3 = zext i1 %call to i32, !dbg !1834
  br label %cond.end, !dbg !1834

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1834
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1834
  ret i1 %tobool5, !dbg !1835
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_lower(i64 noundef %c) local_unnamed_addr #0 !dbg !1836 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1838, metadata !DIExpression()), !dbg !1839
  %cmp = icmp ult i64 %c, 256, !dbg !1840
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1840

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1840
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1840
  %and1 = lshr i32 %0, 3
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1840

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 3, i64 noundef %c) #10, !dbg !1840
  %conv3 = zext i1 %call to i32, !dbg !1840
  br label %cond.end, !dbg !1840

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1840
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1840
  ret i1 %tobool5, !dbg !1841
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_cntrl(i64 noundef %c) local_unnamed_addr #5 !dbg !1842 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1844, metadata !DIExpression()), !dbg !1845
  %tobool.not = icmp ult i64 %c, 256, !dbg !1846
  br i1 %tobool.not, label %land.rhs, label %land.end, !dbg !1846

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1846
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1846
  %and1 = and i32 %0, 8192, !dbg !1846
  %tobool2 = icmp ne i32 %and1, 0, !dbg !1846
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !1845
  ret i1 %1, !dbg !1847
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_graph(i64 noundef %c) local_unnamed_addr #0 !dbg !1848 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1850, metadata !DIExpression()), !dbg !1851
  %cmp = icmp ult i64 %c, 256, !dbg !1852
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1852

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1852
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1852
  %and1 = lshr i32 %0, 8
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1852

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 8, i64 noundef %c) #10, !dbg !1852
  %conv3 = zext i1 %call to i32, !dbg !1852
  br label %cond.end, !dbg !1852

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1852
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1852
  ret i1 %tobool5, !dbg !1853
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_print(i64 noundef %c) local_unnamed_addr #0 !dbg !1854 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1856, metadata !DIExpression()), !dbg !1857
  %cmp = icmp ult i64 %c, 256, !dbg !1858
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1858

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1858
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1858
  %and1 = lshr i32 %0, 6
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1858

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 6, i64 noundef %c) #10, !dbg !1858
  %conv3 = zext i1 %call to i32, !dbg !1858
  br label %cond.end, !dbg !1858

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1858
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1858
  ret i1 %tobool5, !dbg !1859
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_punct(i64 noundef %c) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1862, metadata !DIExpression()), !dbg !1863
  %cmp = icmp ult i64 %c, 256, !dbg !1864
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1864

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1864
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1864
  %and1 = lshr i32 %0, 5
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1864

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 5, i64 noundef %c) #10, !dbg !1864
  %conv3 = zext i1 %call to i32, !dbg !1864
  br label %cond.end, !dbg !1864

cond.end:                                         ; preds = %cond.false, %land.rhs
  %cond4 = phi i32 [ %and1.lobit, %land.rhs ], [ %conv3, %cond.false ], !dbg !1864
  %tobool5 = icmp ne i32 %cond4, 0, !dbg !1864
  ret i1 %tobool5, !dbg !1865
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_xdigit(i64 noundef %c) local_unnamed_addr #5 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1868, metadata !DIExpression()), !dbg !1869
  %cmp = icmp ult i64 %c, 256, !dbg !1870
  br i1 %cmp, label %land.rhs, label %cond.false, !dbg !1870

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1870
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1870
  %and1 = lshr i32 %0, 12
  %and1.lobit = and i32 %and1, 1
  br label %cond.end, !dbg !1870

cond.false:                                       ; preds = %entry
  %1 = add i64 %c, -65296, !dbg !1870
  %2 = icmp ult i64 %1, 10, !dbg !1870
  br i1 %2, label %cond.end, label %lor.rhs, !dbg !1870

lor.rhs:                                          ; preds = %cond.false
  %cmp7 = icmp ugt i64 %c, 65305, !dbg !1870
  br i1 %cmp7, label %land.rhs9, label %cond.end, !dbg !1870

land.rhs9:                                        ; preds = %lor.rhs
  %3 = add i64 %c, -65313, !dbg !1870
  %4 = icmp ult i64 %3, 6, !dbg !1870
  br i1 %4, label %cond.end, label %lor.rhs15, !dbg !1870

lor.rhs15:                                        ; preds = %land.rhs9
  %cmp16 = icmp ugt i64 %c, 65344, !dbg !1870
  br i1 %cmp16, label %land.rhs18, label %cond.end, !dbg !1870

land.rhs18:                                       ; preds = %lor.rhs15
  %cmp19 = icmp ult i64 %c, 65351, !dbg !1870
  %phi.cast = zext i1 %cmp19 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs9, %land.rhs18, %lor.rhs15, %lor.rhs, %land.rhs
  %cond24 = phi i32 [ %and1.lobit, %land.rhs ], [ 1, %cond.false ], [ 0, %lor.rhs ], [ 1, %land.rhs9 ], [ 0, %lor.rhs15 ], [ %phi.cast, %land.rhs18 ], !dbg !1870
  %tobool25 = icmp ne i32 %cond24, 0, !dbg !1870
  ret i1 %tobool25, !dbg !1871
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnum_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1874, metadata !DIExpression()), !dbg !1875
  %cmp = icmp ult i64 %c, 256, !dbg !1876
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1876

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1876
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1876

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1876
  %0 = load ptr, ptr %call, align 8, !dbg !1876
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1876
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1876
  %2 = and i16 %1, 8, !dbg !1876
  %tobool.not = icmp ne i16 %2, 0, !dbg !1876
  %cmp4 = icmp eq i64 %c, 95
  %spec.select = or i1 %cmp4, %tobool.not, !dbg !1876
  br label %cond.end, !dbg !1876

cond.false:                                       ; preds = %entry
  %call6 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 0, i64 noundef %c) #10, !dbg !1876
  br label %cond.end, !dbg !1876

cond.end:                                         ; preds = %land.rhs, %cond.true, %cond.false
  %cond.in = phi i1 [ %call6, %cond.false ], [ false, %cond.true ], [ %spec.select, %land.rhs ]
  ret i1 %cond.in, !dbg !1877
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnumc_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1878 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1880, metadata !DIExpression()), !dbg !1881
  %cmp = icmp ult i64 %c, 256, !dbg !1882
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1882

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1882
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1882

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1882
  %0 = load ptr, ptr %call, align 8, !dbg !1882
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1882
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1882
  %2 = and i16 %1, 8, !dbg !1882
  %tobool = icmp ne i16 %2, 0, !dbg !1882
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 7, i64 noundef %c) #10, !dbg !1882
  br label %cond.end, !dbg !1882

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1883
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_idfirst_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1886, metadata !DIExpression()), !dbg !1887
  %cmp = icmp ult i64 %c, 256, !dbg !1888
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1888

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1888
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1888

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1888
  %0 = load ptr, ptr %call, align 8, !dbg !1888
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1888
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1888
  %2 = and i16 %1, 1024, !dbg !1888
  %tobool.not = icmp ne i16 %2, 0, !dbg !1888
  %cmp4 = icmp eq i64 %c, 95
  %spec.select = or i1 %cmp4, %tobool.not, !dbg !1888
  br label %cond.end, !dbg !1888

cond.false:                                       ; preds = %entry
  %call6 = tail call zeroext i1 @Perl__is_uni_perl_idstart(i64 noundef %c) #10, !dbg !1888
  br label %cond.end, !dbg !1888

cond.end:                                         ; preds = %land.rhs, %cond.true, %cond.false
  %cond.in = phi i1 [ %call6, %cond.false ], [ false, %cond.true ], [ %spec.select, %land.rhs ]
  ret i1 %cond.in, !dbg !1889
}

declare !dbg !1890 zeroext i1 @Perl__is_uni_perl_idstart(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alpha_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1891 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1893, metadata !DIExpression()), !dbg !1894
  %cmp = icmp ult i64 %c, 256, !dbg !1895
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1895

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1895
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1895

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1895
  %0 = load ptr, ptr %call, align 8, !dbg !1895
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1895
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1895
  %2 = and i16 %1, 1024, !dbg !1895
  %tobool = icmp ne i16 %2, 0, !dbg !1895
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 2, i64 noundef %c) #10, !dbg !1895
  br label %cond.end, !dbg !1895

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1896
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_ascii_lc(i64 noundef %c) local_unnamed_addr #5 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1899, metadata !DIExpression()), !dbg !1900
  %cmp = icmp ult i64 %c, 128, !dbg !1901
  ret i1 %cmp, !dbg !1902
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_blank_lc(i64 noundef %c) local_unnamed_addr #7 !dbg !1903 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1905, metadata !DIExpression()), !dbg !1906
  %cmp = icmp ult i64 %c, 256, !dbg !1907
  br i1 %cmp, label %cond.true, label %cond.false16, !dbg !1907

cond.true:                                        ; preds = %entry
  %0 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !dbg !1907, !range !1908
  %tobool.not = icmp eq i8 %0, 0, !dbg !1907
  %arrayidx10 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %c, !dbg !1907
  %1 = load i32, ptr %arrayidx10, align 4, !dbg !1907
  br i1 %tobool.not, label %land.rhs7, label %land.rhs, !dbg !1907

land.rhs:                                         ; preds = %cond.true
  %and3 = lshr i32 %1, 11
  %and3.lobit = and i32 %and3, 1
  br label %cond.end50

land.rhs7:                                        ; preds = %cond.true
  %and11 = and i32 %1, 18432, !dbg !1907
  %cmp12 = icmp eq i32 %and11, 18432, !dbg !1907
  %phi.cast66 = zext i1 %cmp12 to i32
  br label %cond.end50

cond.false16:                                     ; preds = %entry
  %cmp17 = icmp eq i64 %c, 5760, !dbg !1907
  br i1 %cmp17, label %cond.end50, label %lor.rhs, !dbg !1907

lor.rhs:                                          ; preds = %cond.false16
  %cmp19 = icmp ugt i64 %c, 5760, !dbg !1907
  br i1 %cmp19, label %land.rhs21, label %cond.end50, !dbg !1907

land.rhs21:                                       ; preds = %lor.rhs
  %2 = add i64 %c, -8192, !dbg !1907
  %3 = icmp ult i64 %2, 11, !dbg !1907
  br i1 %3, label %cond.end50, label %lor.rhs26, !dbg !1907

lor.rhs26:                                        ; preds = %land.rhs21
  %cmp27 = icmp ugt i64 %c, 8202, !dbg !1907
  br i1 %cmp27, label %land.rhs29, label %cond.end50, !dbg !1907

land.rhs29:                                       ; preds = %lor.rhs26
  %cmp30 = icmp eq i64 %c, 8239, !dbg !1907
  br i1 %cmp30, label %cond.end50, label %lor.rhs32, !dbg !1907

lor.rhs32:                                        ; preds = %land.rhs29
  %cmp33 = icmp ugt i64 %c, 8239, !dbg !1907
  br i1 %cmp33, label %land.rhs35, label %cond.end50, !dbg !1907

land.rhs35:                                       ; preds = %lor.rhs32
  %cmp36 = icmp eq i64 %c, 8287, !dbg !1907
  br i1 %cmp36, label %cond.end50, label %lor.rhs38, !dbg !1907

lor.rhs38:                                        ; preds = %land.rhs35
  %cmp39 = icmp eq i64 %c, 12288, !dbg !1907
  %phi.cast = zext i1 %cmp39 to i32, !dbg !1907
  br label %cond.end50, !dbg !1907

cond.end50:                                       ; preds = %cond.false16, %land.rhs21, %land.rhs29, %land.rhs35, %lor.rhs38, %lor.rhs32, %lor.rhs26, %lor.rhs, %land.rhs7, %land.rhs
  %cond51 = phi i32 [ %and3.lobit, %land.rhs ], [ %phi.cast66, %land.rhs7 ], [ 1, %cond.false16 ], [ 0, %lor.rhs ], [ 1, %land.rhs21 ], [ 0, %lor.rhs26 ], [ 1, %land.rhs29 ], [ 0, %lor.rhs32 ], [ 1, %land.rhs35 ], [ %phi.cast, %lor.rhs38 ], !dbg !1907
  %tobool52 = icmp ne i32 %cond51, 0, !dbg !1907
  ret i1 %tobool52, !dbg !1909
}

; Function Attrs: mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_space_lc(i64 noundef %c) local_unnamed_addr #8 !dbg !1910 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1912, metadata !DIExpression()), !dbg !1913
  %cmp = icmp ult i64 %c, 256, !dbg !1914
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1914

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1914
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1914

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1914
  %0 = load ptr, ptr %call, align 8, !dbg !1914
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1914
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1914
  %2 = lshr i16 %1, 13
  %3 = and i16 %2, 1
  %and3.lobit = zext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %cmp4 = icmp eq i64 %c, 5760, !dbg !1914
  br i1 %cmp4, label %cond.end, label %lor.rhs, !dbg !1914

lor.rhs:                                          ; preds = %cond.false
  %cmp6 = icmp ugt i64 %c, 5760, !dbg !1914
  br i1 %cmp6, label %land.rhs8, label %cond.end, !dbg !1914

land.rhs8:                                        ; preds = %lor.rhs
  %4 = add i64 %c, -8192, !dbg !1914
  %5 = icmp ult i64 %4, 11, !dbg !1914
  br i1 %5, label %cond.end, label %lor.rhs13, !dbg !1914

lor.rhs13:                                        ; preds = %land.rhs8
  %cmp14 = icmp ugt i64 %c, 8202, !dbg !1914
  br i1 %cmp14, label %land.rhs16, label %cond.end, !dbg !1914

land.rhs16:                                       ; preds = %lor.rhs13
  %cmp17 = icmp eq i64 %c, 8232, !dbg !1914
  br i1 %cmp17, label %cond.end, label %lor.rhs19, !dbg !1914

lor.rhs19:                                        ; preds = %land.rhs16
  %cmp20 = icmp ugt i64 %c, 8232, !dbg !1914
  br i1 %cmp20, label %land.rhs22, label %cond.end, !dbg !1914

land.rhs22:                                       ; preds = %lor.rhs19
  switch i64 %c, label %lor.rhs31 [
    i64 8233, label %cond.end
    i64 8239, label %cond.end
  ], !dbg !1914

lor.rhs31:                                        ; preds = %land.rhs22
  %cmp32 = icmp ugt i64 %c, 8239, !dbg !1914
  br i1 %cmp32, label %land.rhs34, label %cond.end, !dbg !1914

land.rhs34:                                       ; preds = %lor.rhs31
  %cmp35 = icmp eq i64 %c, 8287, !dbg !1914
  br i1 %cmp35, label %cond.end, label %lor.rhs37, !dbg !1914

lor.rhs37:                                        ; preds = %land.rhs34
  %cmp38 = icmp eq i64 %c, 12288, !dbg !1914
  %phi.cast = zext i1 %cmp38 to i32, !dbg !1914
  br label %cond.end, !dbg !1914

cond.end:                                         ; preds = %cond.false, %land.rhs8, %land.rhs16, %land.rhs34, %lor.rhs37, %lor.rhs31, %lor.rhs19, %lor.rhs13, %lor.rhs, %land.rhs22, %land.rhs22, %cond.true, %land.rhs
  %cond = phi i32 [ 0, %cond.true ], [ %and3.lobit, %land.rhs ], [ 1, %cond.false ], [ 0, %lor.rhs ], [ 1, %land.rhs8 ], [ 0, %lor.rhs13 ], [ 1, %land.rhs16 ], [ 0, %lor.rhs19 ], [ 1, %land.rhs22 ], [ 0, %lor.rhs31 ], [ 1, %land.rhs34 ], [ %phi.cast, %lor.rhs37 ], [ 1, %land.rhs22 ], !dbg !1914
  %tobool55 = icmp ne i32 %cond, 0, !dbg !1914
  ret i1 %tobool55, !dbg !1915
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_digit_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1916 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1918, metadata !DIExpression()), !dbg !1919
  %cmp = icmp ult i64 %c, 256, !dbg !1920
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1920

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1920
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1920

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1920
  %0 = load ptr, ptr %call, align 8, !dbg !1920
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1920
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1920
  %2 = and i16 %1, 2048, !dbg !1920
  %tobool = icmp ne i16 %2, 0, !dbg !1920
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 1, i64 noundef %c) #10, !dbg !1920
  br label %cond.end, !dbg !1920

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1921
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_idfirst(i64 noundef %c) local_unnamed_addr #0 !dbg !1922 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  call void @llvm.dbg.value(metadata i64 %c, metadata !1924, metadata !DIExpression()), !dbg !1929
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !1930
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !1925, metadata !DIExpression()), !dbg !1931
  %call = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %tmpbuf, i64 noundef %c, i64 noundef 0) #10, !dbg !1932
  %call2 = call zeroext i1 @Perl__is_utf8_idstart(ptr noundef nonnull %tmpbuf) #10, !dbg !1933
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !1934
  ret i1 %call2, !dbg !1935
}

declare !dbg !1936 ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1939 zeroext i1 @Perl__is_utf8_idstart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_idfirst(ptr noundef %p) local_unnamed_addr #0 !dbg !1940 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1942, metadata !DIExpression()), !dbg !1943
  %call = tail call zeroext i1 @Perl__is_utf8_idstart(ptr noundef %p) #10, !dbg !1944
  ret i1 %call, !dbg !1945
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_xidfirst(ptr noundef %p) local_unnamed_addr #0 !dbg !1946 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1948, metadata !DIExpression()), !dbg !1949
  %call = tail call zeroext i1 @Perl__is_utf8_xidstart(ptr noundef %p) #10, !dbg !1950
  ret i1 %call, !dbg !1951
}

declare !dbg !1952 zeroext i1 @Perl__is_utf8_xidstart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_idcont(ptr noundef %p) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1955, metadata !DIExpression()), !dbg !1956
  %call = tail call zeroext i1 @Perl__is_utf8_idcont(ptr noundef %p) #10, !dbg !1957
  ret i1 %call, !dbg !1958
}

declare !dbg !1959 zeroext i1 @Perl__is_utf8_idcont(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_xidcont(ptr noundef %p) local_unnamed_addr #0 !dbg !1960 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1962, metadata !DIExpression()), !dbg !1963
  %call = tail call zeroext i1 @Perl__is_utf8_xidcont(ptr noundef %p) #10, !dbg !1964
  ret i1 %call, !dbg !1965
}

declare !dbg !1966 zeroext i1 @Perl__is_utf8_xidcont(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_upper_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1967 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1969, metadata !DIExpression()), !dbg !1970
  %cmp = icmp ult i64 %c, 256, !dbg !1971
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1971

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1971
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1971

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1971
  %0 = load ptr, ptr %call, align 8, !dbg !1971
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1971
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1971
  %2 = and i16 %1, 256, !dbg !1971
  %tobool = icmp ne i16 %2, 0, !dbg !1971
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 4, i64 noundef %c) #10, !dbg !1971
  br label %cond.end, !dbg !1971

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1972
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_lower_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1973 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1975, metadata !DIExpression()), !dbg !1976
  %cmp = icmp ult i64 %c, 256, !dbg !1977
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1977

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1977
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1977

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1977
  %0 = load ptr, ptr %call, align 8, !dbg !1977
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1977
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1977
  %2 = and i16 %1, 512, !dbg !1977
  %tobool = icmp ne i16 %2, 0, !dbg !1977
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 3, i64 noundef %c) #10, !dbg !1977
  br label %cond.end, !dbg !1977

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1978
}

; Function Attrs: mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_cntrl_lc(i64 noundef %c) local_unnamed_addr #8 !dbg !1979 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1981, metadata !DIExpression()), !dbg !1982
  %cmp1 = icmp ult i64 %c, 128, !dbg !1983
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1983

land.rhs:                                         ; preds = %entry
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1983
  %0 = load ptr, ptr %call, align 8, !dbg !1983
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1983
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1983
  %2 = and i16 %1, 2, !dbg !1983
  %tobool = icmp ne i16 %2, 0, !dbg !1983
  br label %cond.end

cond.end:                                         ; preds = %land.rhs, %entry
  %cond = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  ret i1 %cond, !dbg !1984
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_graph_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1985 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1987, metadata !DIExpression()), !dbg !1988
  %cmp = icmp ult i64 %c, 256, !dbg !1989
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1989

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1989
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1989

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1989
  %0 = load ptr, ptr %call, align 8, !dbg !1989
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1989
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1989
  %tobool = icmp slt i16 %1, 0, !dbg !1989
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 8, i64 noundef %c) #10, !dbg !1989
  br label %cond.end, !dbg !1989

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1990
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_print_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1993, metadata !DIExpression()), !dbg !1994
  %cmp = icmp ult i64 %c, 256, !dbg !1995
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1995

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !1995
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !1995

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !1995
  %0 = load ptr, ptr %call, align 8, !dbg !1995
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !1995
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1995
  %2 = and i16 %1, 16384, !dbg !1995
  %tobool = icmp ne i16 %2, 0, !dbg !1995
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 6, i64 noundef %c) #10, !dbg !1995
  br label %cond.end, !dbg !1995

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !1996
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_punct_lc(i64 noundef %c) local_unnamed_addr #0 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !1999, metadata !DIExpression()), !dbg !2000
  %cmp = icmp ult i64 %c, 256, !dbg !2001
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2001

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !2001
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !2001

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !2001
  %0 = load ptr, ptr %call, align 8, !dbg !2001
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !2001
  %1 = load i16, ptr %arrayidx, align 2, !dbg !2001
  %2 = and i16 %1, 4, !dbg !2001
  %tobool = icmp ne i16 %2, 0, !dbg !2001
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 5, i64 noundef %c) #10, !dbg !2001
  br label %cond.end, !dbg !2001

cond.end:                                         ; preds = %cond.true, %land.rhs, %cond.false
  %cond.in = phi i1 [ %call4, %cond.false ], [ false, %cond.true ], [ %tobool, %land.rhs ]
  ret i1 %cond.in, !dbg !2002
}

; Function Attrs: mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_uni_xdigit_lc(i64 noundef %c) local_unnamed_addr #8 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !2005, metadata !DIExpression()), !dbg !2006
  %cmp = icmp ult i64 %c, 256, !dbg !2007
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2007

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %c, 128, !dbg !2007
  br i1 %cmp1, label %land.rhs, label %cond.end, !dbg !2007

land.rhs:                                         ; preds = %cond.true
  %call = tail call ptr @__ctype_b_loc() #11, !dbg !2007
  %0 = load ptr, ptr %call, align 8, !dbg !2007
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %c, !dbg !2007
  %1 = load i16, ptr %arrayidx, align 2, !dbg !2007
  %2 = lshr i16 %1, 12
  %3 = and i16 %2, 1
  %and3.lobit = zext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = add i64 %c, -65296, !dbg !2007
  %5 = icmp ult i64 %4, 10, !dbg !2007
  br i1 %5, label %cond.end, label %lor.rhs, !dbg !2007

lor.rhs:                                          ; preds = %cond.false
  %cmp8 = icmp ugt i64 %c, 65305, !dbg !2007
  br i1 %cmp8, label %land.rhs10, label %cond.end, !dbg !2007

land.rhs10:                                       ; preds = %lor.rhs
  %6 = add i64 %c, -65313, !dbg !2007
  %7 = icmp ult i64 %6, 6, !dbg !2007
  br i1 %7, label %cond.end, label %lor.rhs16, !dbg !2007

lor.rhs16:                                        ; preds = %land.rhs10
  %cmp17 = icmp ugt i64 %c, 65344, !dbg !2007
  br i1 %cmp17, label %land.rhs19, label %cond.end, !dbg !2007

land.rhs19:                                       ; preds = %lor.rhs16
  %cmp20 = icmp ult i64 %c, 65351, !dbg !2007
  %phi.cast = zext i1 %cmp20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs10, %land.rhs19, %lor.rhs16, %lor.rhs, %cond.true, %land.rhs
  %cond = phi i32 [ 0, %cond.true ], [ %and3.lobit, %land.rhs ], [ 1, %cond.false ], [ 0, %lor.rhs ], [ 1, %land.rhs10 ], [ 0, %lor.rhs16 ], [ %phi.cast, %land.rhs19 ], !dbg !2007
  %tobool27 = icmp ne i32 %cond, 0, !dbg !2007
  ret i1 %tobool27, !dbg !2008
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_to_uni_upper_lc(i32 noundef %c) local_unnamed_addr #0 !dbg !2009 {
entry:
  %len = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %c, metadata !2013, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #10, !dbg !2017
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !2015, metadata !DIExpression()), !dbg !2019
  %conv = zext i32 %c to i64, !dbg !2020
  call void @llvm.dbg.value(metadata ptr %len, metadata !2014, metadata !DIExpression(DW_OP_deref)), !dbg !2016
  %call = call i64 @Perl_to_uni_upper(i64 noundef %conv, ptr noundef nonnull %tmpbuf, ptr noundef nonnull %len) #10, !dbg !2020
  %conv1 = trunc i64 %call to i32, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !2022
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #10, !dbg !2022
  ret i32 %conv1, !dbg !2023
}

declare !dbg !2024 i64 @Perl_to_uni_upper(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_to_uni_title_lc(i32 noundef %c) local_unnamed_addr #0 !dbg !2027 {
entry:
  %len = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %c, metadata !2029, metadata !DIExpression()), !dbg !2032
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #10, !dbg !2033
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !2031, metadata !DIExpression()), !dbg !2035
  %conv = zext i32 %c to i64, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %len, metadata !2030, metadata !DIExpression(DW_OP_deref)), !dbg !2032
  %call = call i64 @Perl_to_uni_title(i64 noundef %conv, ptr noundef nonnull %tmpbuf, ptr noundef nonnull %len) #10, !dbg !2036
  %conv1 = trunc i64 %call to i32, !dbg !2037
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !2038
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #10, !dbg !2038
  ret i32 %conv1, !dbg !2039
}

declare !dbg !2040 i64 @Perl_to_uni_title(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_to_uni_lower_lc(i32 noundef %c) local_unnamed_addr #0 !dbg !2041 {
entry:
  %len = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %c, metadata !2043, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #10, !dbg !2047
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !2045, metadata !DIExpression()), !dbg !2049
  %conv = zext i32 %c to i64, !dbg !2050
  call void @llvm.dbg.value(metadata ptr %len, metadata !2044, metadata !DIExpression(DW_OP_deref)), !dbg !2046
  %call = call i64 @Perl_to_uni_lower(i64 noundef %conv, ptr noundef nonnull %tmpbuf, ptr noundef nonnull %len) #10, !dbg !2050
  %conv1 = trunc i64 %call to i32, !dbg !2051
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %tmpbuf) #10, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #10, !dbg !2052
  ret i32 %conv1, !dbg !2053
}

declare !dbg !2054 i64 @Perl_to_uni_lower(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_alnum(ptr noundef %p) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2057, metadata !DIExpression()), !dbg !2058
  %0 = load i8, ptr %p, align 1, !dbg !2059
  %cmp = icmp sgt i8 %0, -1, !dbg !2059
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2059

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2059
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2059
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2059
  %and = and i32 %1, 1, !dbg !2059
  br label %cond.end30, !dbg !2059

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2059
  %and3 = and i32 %conv2, 254, !dbg !2059
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2059
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2059

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2059
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2059
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2059

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2059
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2059
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2059
  %4 = and i8 %3, 63, !dbg !2059
  %or = or i8 %4, %and8, !dbg !2059
  %idxprom22 = zext i8 %or to i64, !dbg !2059
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2059
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2059
  %and24 = and i32 %5, 1, !dbg !2059
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef nonnull %p) #10, !dbg !2059
  %conv28 = zext i1 %call to i32, !dbg !2059
  br label %cond.end30, !dbg !2059

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24, %land.rhs ], !dbg !2059
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2059
  ret i1 %tobool32, !dbg !2060
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_alnumc(ptr noundef %p) local_unnamed_addr #0 !dbg !2061 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2063, metadata !DIExpression()), !dbg !2064
  %0 = load i8, ptr %p, align 1, !dbg !2065
  %cmp = icmp sgt i8 %0, -1, !dbg !2065
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2065

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2065
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2065
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2065
  %and = lshr i32 %1, 7, !dbg !2065
  %and.lobit = and i32 %and, 1, !dbg !2065
  br label %cond.end30, !dbg !2065

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2065
  %and3 = and i32 %conv2, 254, !dbg !2065
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2065
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2065

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2065
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2065
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2065

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2065
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2065
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2065
  %4 = and i8 %3, 63, !dbg !2065
  %or = or i8 %4, %and8, !dbg !2065
  %idxprom22 = zext i8 %or to i64, !dbg !2065
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2065
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2065
  %and24 = lshr i32 %5, 7
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 7, ptr noundef nonnull %p) #10, !dbg !2065
  %conv28 = zext i1 %call to i32, !dbg !2065
  br label %cond.end30, !dbg !2065

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2065
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2065
  ret i1 %tobool32, !dbg !2066
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_alpha(ptr noundef %p) local_unnamed_addr #0 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2069, metadata !DIExpression()), !dbg !2070
  %0 = load i8, ptr %p, align 1, !dbg !2071
  %cmp = icmp sgt i8 %0, -1, !dbg !2071
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2071

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2071
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2071
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2071
  %and = lshr i32 %1, 2, !dbg !2071
  %and.lobit = and i32 %and, 1, !dbg !2071
  br label %cond.end30, !dbg !2071

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2071
  %and3 = and i32 %conv2, 254, !dbg !2071
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2071
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2071

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2071
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2071
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2071

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2071
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2071
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2071
  %4 = and i8 %3, 63, !dbg !2071
  %or = or i8 %4, %and8, !dbg !2071
  %idxprom22 = zext i8 %or to i64, !dbg !2071
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2071
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2071
  %and24 = lshr i32 %5, 2
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 2, ptr noundef nonnull %p) #10, !dbg !2071
  %conv28 = zext i1 %call to i32, !dbg !2071
  br label %cond.end30, !dbg !2071

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2071
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2071
  ret i1 %tobool32, !dbg !2072
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_ascii(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2073 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2075, metadata !DIExpression()), !dbg !2076
  %0 = load i8, ptr %p, align 1, !dbg !2077
  %cmp = icmp sgt i8 %0, -1, !dbg !2077
  ret i1 %cmp, !dbg !2078
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_blank(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2081, metadata !DIExpression()), !dbg !2082
  %0 = load i8, ptr %p, align 1, !dbg !2083
  %cmp = icmp sgt i8 %0, -1, !dbg !2083
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2083

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2083
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2083
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2083
  %and = lshr i32 %1, 11, !dbg !2083
  %and.lobit = and i32 %and, 1, !dbg !2083
  br label %cond.end99, !dbg !2083

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2083
  %and3 = and i32 %conv2, 254, !dbg !2083
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2083
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2083

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2083
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2083
  br i1 %tobool13.not, label %land.rhs, label %cond.end99, !dbg !2083

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2083
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2083
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2083
  %4 = and i8 %3, 63, !dbg !2083
  %or = or i8 %4, %and8, !dbg !2083
  %idxprom22 = zext i8 %or to i64, !dbg !2083
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2083
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2083
  %and24 = lshr i32 %5, 11
  %and24.lobit = and i32 %and24, 1
  br label %cond.end99

cond.false27:                                     ; preds = %cond.false
  switch i8 %0, label %cond.end99 [
    i8 -31, label %cond.true32
    i8 -30, label %cond.true49
    i8 -29, label %land.lhs.true
  ], !dbg !2083

cond.true32:                                      ; preds = %cond.false27
  %arrayidx33 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2083
  %6 = load i8, ptr %arrayidx33, align 1, !dbg !2083
  %cmp35 = icmp eq i8 %6, -102, !dbg !2083
  br i1 %cmp35, label %land.rhs37, label %cond.end99, !dbg !2083

land.rhs37:                                       ; preds = %cond.true32
  %arrayidx38 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2083
  %7 = load i8, ptr %arrayidx38, align 1, !dbg !2083
  %cmp40 = icmp eq i8 %7, -128, !dbg !2083
  %phi.sel122 = select i1 %cmp40, i32 3, i32 0
  br label %cond.end99

cond.true49:                                      ; preds = %cond.false27
  %arrayidx50 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2083
  %8 = load i8, ptr %arrayidx50, align 1, !dbg !2083
  switch i8 %8, label %cond.end99 [
    i8 -128, label %cond.true54
    i8 -127, label %land.rhs69
  ], !dbg !2083

cond.true54:                                      ; preds = %cond.true49
  %arrayidx55 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2083
  %9 = load i8, ptr %arrayidx55, align 1, !dbg !2083
  %cmp57 = icmp ult i8 %9, -117, !dbg !2083
  br i1 %cmp57, label %cond.end99, label %lor.rhs, !dbg !2083

lor.rhs:                                          ; preds = %cond.true54
  %cmp61 = icmp eq i8 %9, -81, !dbg !2083
  %phi.sel121 = select i1 %cmp61, i32 3, i32 0, !dbg !2083
  br label %cond.end99, !dbg !2083

land.rhs69:                                       ; preds = %cond.true49
  %arrayidx70 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2083
  %10 = load i8, ptr %arrayidx70, align 1, !dbg !2083
  %cmp72 = icmp eq i8 %10, -97, !dbg !2083
  %phi.sel120 = select i1 %cmp72, i32 3, i32 0
  br label %cond.end99

land.lhs.true:                                    ; preds = %cond.false27
  %arrayidx82 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2083
  %11 = load i8, ptr %arrayidx82, align 1, !dbg !2083
  %cmp84 = icmp eq i8 %11, -128, !dbg !2083
  br i1 %cmp84, label %land.rhs86, label %cond.end99, !dbg !2083

land.rhs86:                                       ; preds = %land.lhs.true
  %arrayidx87 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2083
  %12 = load i8, ptr %arrayidx87, align 1, !dbg !2083
  %cmp89 = icmp eq i8 %12, -128, !dbg !2083
  %phi.sel = select i1 %cmp89, i32 3, i32 0
  br label %cond.end99

cond.end99:                                       ; preds = %land.lhs.true, %land.rhs86, %cond.false27, %land.rhs69, %cond.true49, %cond.true54, %lor.rhs, %cond.true32, %land.rhs37, %cond.true6, %land.rhs, %cond.true
  %cond100 = phi i32 [ %and.lobit, %cond.true ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], [ 0, %cond.true32 ], [ %phi.sel122, %land.rhs37 ], [ 3, %cond.true54 ], [ %phi.sel121, %lor.rhs ], [ %phi.sel120, %land.rhs69 ], [ 0, %cond.true49 ], [ 0, %land.lhs.true ], [ %phi.sel, %land.rhs86 ], [ 0, %cond.false27 ], !dbg !2083
  %tobool101 = icmp ne i32 %cond100, 0, !dbg !2083
  ret i1 %tobool101, !dbg !2084
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_space(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2085 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2087, metadata !DIExpression()), !dbg !2088
  %0 = load i8, ptr %p, align 1, !dbg !2089
  %cmp = icmp sgt i8 %0, -1, !dbg !2089
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2089

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2089
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2089
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2089
  %and = lshr i32 %1, 10, !dbg !2089
  %and.lobit = and i32 %and, 1, !dbg !2089
  br label %cond.end104, !dbg !2089

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2089
  %and3 = and i32 %conv2, 254, !dbg !2089
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2089
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2089

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2089
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2089
  br i1 %tobool13.not, label %land.rhs, label %cond.end104, !dbg !2089

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2089
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2089
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2089
  %4 = and i8 %3, 63, !dbg !2089
  %or = or i8 %4, %and8, !dbg !2089
  %idxprom22 = zext i8 %or to i64, !dbg !2089
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2089
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2089
  %and24 = lshr i32 %5, 10
  %and24.lobit = and i32 %and24, 1
  br label %cond.end104

cond.false27:                                     ; preds = %cond.false
  switch i8 %0, label %cond.end104 [
    i8 -31, label %cond.true32
    i8 -30, label %cond.true49
    i8 -29, label %land.lhs.true
  ], !dbg !2089

cond.true32:                                      ; preds = %cond.false27
  %arrayidx33 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2089
  %6 = load i8, ptr %arrayidx33, align 1, !dbg !2089
  %cmp35 = icmp eq i8 %6, -102, !dbg !2089
  br i1 %cmp35, label %land.rhs37, label %cond.end104, !dbg !2089

land.rhs37:                                       ; preds = %cond.true32
  %arrayidx38 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2089
  %7 = load i8, ptr %arrayidx38, align 1, !dbg !2089
  %cmp40 = icmp eq i8 %7, -128, !dbg !2089
  %phi.sel128 = select i1 %cmp40, i32 3, i32 0
  br label %cond.end104

cond.true49:                                      ; preds = %cond.false27
  %arrayidx50 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2089
  %8 = load i8, ptr %arrayidx50, align 1, !dbg !2089
  switch i8 %8, label %cond.end104 [
    i8 -128, label %cond.true54
    i8 -127, label %land.rhs74
  ], !dbg !2089

cond.true54:                                      ; preds = %cond.true49
  %arrayidx55 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2089
  %9 = load i8, ptr %arrayidx55, align 1, !dbg !2089
  %cmp57 = icmp ult i8 %9, -117, !dbg !2089
  %10 = and i8 %9, -2, !dbg !2089
  %cmp62 = icmp eq i8 %10, -88, !dbg !2089
  %or.cond = or i1 %cmp57, %cmp62, !dbg !2089
  br i1 %or.cond, label %cond.end104, label %lor.rhs, !dbg !2089

lor.rhs:                                          ; preds = %cond.true54
  %cmp66 = icmp eq i8 %9, -81, !dbg !2089
  %phi.sel127 = select i1 %cmp66, i32 3, i32 0, !dbg !2089
  br label %cond.end104, !dbg !2089

land.rhs74:                                       ; preds = %cond.true49
  %arrayidx75 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2089
  %11 = load i8, ptr %arrayidx75, align 1, !dbg !2089
  %cmp77 = icmp eq i8 %11, -97, !dbg !2089
  %phi.sel126 = select i1 %cmp77, i32 3, i32 0
  br label %cond.end104

land.lhs.true:                                    ; preds = %cond.false27
  %arrayidx87 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2089
  %12 = load i8, ptr %arrayidx87, align 1, !dbg !2089
  %cmp89 = icmp eq i8 %12, -128, !dbg !2089
  br i1 %cmp89, label %land.rhs91, label %cond.end104, !dbg !2089

land.rhs91:                                       ; preds = %land.lhs.true
  %arrayidx92 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2089
  %13 = load i8, ptr %arrayidx92, align 1, !dbg !2089
  %cmp94 = icmp eq i8 %13, -128, !dbg !2089
  %phi.sel = select i1 %cmp94, i32 3, i32 0
  br label %cond.end104

cond.end104:                                      ; preds = %land.lhs.true, %land.rhs91, %cond.false27, %land.rhs74, %cond.true49, %cond.true54, %lor.rhs, %cond.true32, %land.rhs37, %cond.true6, %land.rhs, %cond.true
  %cond105 = phi i32 [ %and.lobit, %cond.true ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], [ 0, %cond.true32 ], [ %phi.sel128, %land.rhs37 ], [ 3, %cond.true54 ], [ %phi.sel127, %lor.rhs ], [ %phi.sel126, %land.rhs74 ], [ 0, %cond.true49 ], [ 0, %land.lhs.true ], [ %phi.sel, %land.rhs91 ], [ 0, %cond.false27 ], !dbg !2089
  %tobool106 = icmp ne i32 %cond105, 0, !dbg !2089
  ret i1 %tobool106, !dbg !2090
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_perl_space(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2091 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2093, metadata !DIExpression()), !dbg !2094
  %0 = load i8, ptr %p, align 1, !dbg !2095
  %idxprom = zext i8 %0 to i64, !dbg !2095
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !2095
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2095
  %and = and i32 %1, 17408, !dbg !2095
  %cmp = icmp eq i32 %and, 17408, !dbg !2095
  ret i1 %cmp, !dbg !2096
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_perl_word(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2097 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2099, metadata !DIExpression()), !dbg !2100
  %0 = load i8, ptr %p, align 1, !dbg !2101
  %idxprom = zext i8 %0 to i64, !dbg !2101
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !2101
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2101
  %and = and i32 %1, 16385, !dbg !2101
  %cmp = icmp eq i32 %and, 16385, !dbg !2101
  ret i1 %cmp, !dbg !2102
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_digit(ptr noundef %p) local_unnamed_addr #0 !dbg !2103 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2105, metadata !DIExpression()), !dbg !2106
  %0 = load i8, ptr %p, align 1, !dbg !2107
  %cmp = icmp sgt i8 %0, -1, !dbg !2107
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2107

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2107
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2107
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2107
  %and = lshr i32 %1, 1, !dbg !2107
  %and.lobit = and i32 %and, 1, !dbg !2107
  br label %cond.end9, !dbg !2107

cond.false:                                       ; preds = %entry
  %cmp3 = icmp ugt i8 %0, -61, !dbg !2107
  br i1 %cmp3, label %cond.true5, label %cond.end9, !dbg !2107

cond.true5:                                       ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 1, ptr noundef nonnull %p) #10, !dbg !2107
  %conv6 = zext i1 %call to i32, !dbg !2107
  br label %cond.end9, !dbg !2107

cond.end9:                                        ; preds = %cond.true5, %cond.false, %cond.true
  %cond10 = phi i32 [ %and.lobit, %cond.true ], [ %conv6, %cond.true5 ], [ 0, %cond.false ], !dbg !2107
  %tobool11 = icmp ne i32 %cond10, 0, !dbg !2107
  ret i1 %tobool11, !dbg !2108
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_posix_digit(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2109 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2111, metadata !DIExpression()), !dbg !2112
  %0 = load i8, ptr %p, align 1, !dbg !2113
  %idxprom = zext i8 %0 to i64, !dbg !2113
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !2113
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2113
  %and = and i32 %1, 2, !dbg !2113
  %tobool = icmp ne i32 %and, 0, !dbg !2113
  ret i1 %tobool, !dbg !2114
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_upper(ptr noundef %p) local_unnamed_addr #0 !dbg !2115 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2117, metadata !DIExpression()), !dbg !2118
  %0 = load i8, ptr %p, align 1, !dbg !2119
  %cmp = icmp sgt i8 %0, -1, !dbg !2119
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2119

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2119
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2119
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2119
  %and = lshr i32 %1, 4, !dbg !2119
  %and.lobit = and i32 %and, 1, !dbg !2119
  br label %cond.end30, !dbg !2119

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2119
  %and3 = and i32 %conv2, 254, !dbg !2119
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2119
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2119

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2119
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2119
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2119

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2119
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2119
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2119
  %4 = and i8 %3, 63, !dbg !2119
  %or = or i8 %4, %and8, !dbg !2119
  %idxprom22 = zext i8 %or to i64, !dbg !2119
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2119
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2119
  %and24 = lshr i32 %5, 4
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 4, ptr noundef nonnull %p) #10, !dbg !2119
  %conv28 = zext i1 %call to i32, !dbg !2119
  br label %cond.end30, !dbg !2119

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2119
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2119
  ret i1 %tobool32, !dbg !2120
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_lower(ptr noundef %p) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2123, metadata !DIExpression()), !dbg !2124
  %0 = load i8, ptr %p, align 1, !dbg !2125
  %cmp = icmp sgt i8 %0, -1, !dbg !2125
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2125

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2125
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2125
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2125
  %and = lshr i32 %1, 3, !dbg !2125
  %and.lobit = and i32 %and, 1, !dbg !2125
  br label %cond.end30, !dbg !2125

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2125
  %and3 = and i32 %conv2, 254, !dbg !2125
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2125
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2125

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2125
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2125
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2125

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2125
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2125
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2125
  %4 = and i8 %3, 63, !dbg !2125
  %or = or i8 %4, %and8, !dbg !2125
  %idxprom22 = zext i8 %or to i64, !dbg !2125
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2125
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2125
  %and24 = lshr i32 %5, 3
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 3, ptr noundef nonnull %p) #10, !dbg !2125
  %conv28 = zext i1 %call to i32, !dbg !2125
  br label %cond.end30, !dbg !2125

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2125
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2125
  ret i1 %tobool32, !dbg !2126
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_cntrl(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2129, metadata !DIExpression()), !dbg !2130
  %0 = load i8, ptr %p, align 1, !dbg !2131
  %cmp = icmp sgt i8 %0, -1, !dbg !2131
  br i1 %cmp, label %cond.end29.sink.split, label %cond.false, !dbg !2131

cond.false:                                       ; preds = %entry
  %1 = and i8 %0, -2, !dbg !2131
  %2 = icmp eq i8 %1, -62, !dbg !2131
  br i1 %2, label %land.rhs, label %cond.end29, !dbg !2131

land.rhs:                                         ; preds = %cond.false
  %and8 = shl i8 %0, 6, !dbg !2131
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2131
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2131
  %4 = and i8 %3, 63, !dbg !2131
  %or = or i8 %4, %and8, !dbg !2131
  br label %cond.end29.sink.split

cond.end29.sink.split:                            ; preds = %entry, %land.rhs
  %or.sink = phi i8 [ %or, %land.rhs ], [ %0, %entry ]
  %idxprom22 = zext i8 %or.sink to i64, !dbg !2131
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2131
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2131
  %6 = and i32 %5, 8192, !dbg !2131
  %phi.cmp = icmp ne i32 %6, 0, !dbg !2131
  br label %cond.end29, !dbg !2131

cond.end29:                                       ; preds = %cond.end29.sink.split, %cond.false
  %cond30 = phi i1 [ false, %cond.false ], [ %phi.cmp, %cond.end29.sink.split ]
  ret i1 %cond30, !dbg !2132
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_graph(ptr noundef %p) local_unnamed_addr #0 !dbg !2133 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = load i8, ptr %p, align 1, !dbg !2137
  %cmp = icmp sgt i8 %0, -1, !dbg !2137
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2137

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2137
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2137
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2137
  %and = lshr i32 %1, 8, !dbg !2137
  %and.lobit = and i32 %and, 1, !dbg !2137
  br label %cond.end30, !dbg !2137

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2137
  %and3 = and i32 %conv2, 254, !dbg !2137
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2137
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2137

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2137
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2137
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2137

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2137
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2137
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2137
  %4 = and i8 %3, 63, !dbg !2137
  %or = or i8 %4, %and8, !dbg !2137
  %idxprom22 = zext i8 %or to i64, !dbg !2137
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2137
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2137
  %and24 = lshr i32 %5, 8
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 8, ptr noundef nonnull %p) #10, !dbg !2137
  %conv28 = zext i1 %call to i32, !dbg !2137
  br label %cond.end30, !dbg !2137

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2137
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2137
  ret i1 %tobool32, !dbg !2138
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_print(ptr noundef %p) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2141, metadata !DIExpression()), !dbg !2142
  %0 = load i8, ptr %p, align 1, !dbg !2143
  %cmp = icmp sgt i8 %0, -1, !dbg !2143
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2143

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2143
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2143
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2143
  %and = lshr i32 %1, 6, !dbg !2143
  %and.lobit = and i32 %and, 1, !dbg !2143
  br label %cond.end30, !dbg !2143

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2143
  %and3 = and i32 %conv2, 254, !dbg !2143
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2143
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2143

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2143
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2143
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2143

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2143
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2143
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2143
  %4 = and i8 %3, 63, !dbg !2143
  %or = or i8 %4, %and8, !dbg !2143
  %idxprom22 = zext i8 %or to i64, !dbg !2143
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2143
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2143
  %and24 = lshr i32 %5, 6
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 6, ptr noundef nonnull %p) #10, !dbg !2143
  %conv28 = zext i1 %call to i32, !dbg !2143
  br label %cond.end30, !dbg !2143

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2143
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2143
  ret i1 %tobool32, !dbg !2144
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_punct(ptr noundef %p) local_unnamed_addr #0 !dbg !2145 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2147, metadata !DIExpression()), !dbg !2148
  %0 = load i8, ptr %p, align 1, !dbg !2149
  %cmp = icmp sgt i8 %0, -1, !dbg !2149
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2149

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2149
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2149
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2149
  %and = lshr i32 %1, 5, !dbg !2149
  %and.lobit = and i32 %and, 1, !dbg !2149
  br label %cond.end30, !dbg !2149

cond.false:                                       ; preds = %entry
  %conv2 = zext i8 %0 to i32, !dbg !2149
  %and3 = and i32 %conv2, 254, !dbg !2149
  %cmp4 = icmp eq i32 %and3, 194, !dbg !2149
  br i1 %cmp4, label %cond.true6, label %cond.false27, !dbg !2149

cond.true6:                                       ; preds = %cond.false
  %2 = and i32 %conv2, 28, !dbg !2149
  %tobool13.not = icmp eq i32 %2, 0, !dbg !2149
  br i1 %tobool13.not, label %land.rhs, label %cond.end30, !dbg !2149

land.rhs:                                         ; preds = %cond.true6
  %and8 = shl i8 %0, 6, !dbg !2149
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2149
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2149
  %4 = and i8 %3, 63, !dbg !2149
  %or = or i8 %4, %and8, !dbg !2149
  %idxprom22 = zext i8 %or to i64, !dbg !2149
  %arrayidx23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom22, !dbg !2149
  %5 = load i32, ptr %arrayidx23, align 4, !dbg !2149
  %and24 = lshr i32 %5, 5
  %and24.lobit = and i32 %and24, 1
  br label %cond.end30

cond.false27:                                     ; preds = %cond.false
  %call = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 5, ptr noundef nonnull %p) #10, !dbg !2149
  %conv28 = zext i1 %call to i32, !dbg !2149
  br label %cond.end30, !dbg !2149

cond.end30:                                       ; preds = %cond.true6, %land.rhs, %cond.false27, %cond.true
  %cond31 = phi i32 [ %and.lobit, %cond.true ], [ %conv28, %cond.false27 ], [ 0, %cond.true6 ], [ %and24.lobit, %land.rhs ], !dbg !2149
  %tobool32 = icmp ne i32 %cond31, 0, !dbg !2149
  ret i1 %tobool32, !dbg !2150
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @Perl_is_utf8_xdigit(ptr nocapture noundef readonly %p) local_unnamed_addr #9 !dbg !2151 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2153, metadata !DIExpression()), !dbg !2154
  %0 = load i8, ptr %p, align 1, !dbg !2155
  %cmp = icmp sgt i8 %0, -1, !dbg !2155
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2155

cond.true:                                        ; preds = %entry
  %conv = zext i8 %0 to i64, !dbg !2155
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %conv, !dbg !2155
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2155
  %and = lshr i32 %1, 12, !dbg !2155
  %and.lobit = and i32 %and, 1, !dbg !2155
  br label %cond.end58, !dbg !2155

cond.false:                                       ; preds = %entry
  %cmp8 = icmp eq i8 %0, -17, !dbg !2155
  br i1 %cmp8, label %cond.true10, label %cond.end58, !dbg !2155

cond.true10:                                      ; preds = %cond.false
  %arrayidx11 = getelementptr inbounds i8, ptr %p, i64 1, !dbg !2155
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !2155
  switch i8 %2, label %cond.end58 [
    i8 -68, label %cond.true15
    i8 -67, label %land.rhs38
  ], !dbg !2155

cond.true15:                                      ; preds = %cond.true10
  %arrayidx16 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2155
  %3 = load i8, ptr %arrayidx16, align 1, !dbg !2155
  %4 = add i8 %3, 112, !dbg !2155
  %5 = icmp ult i8 %4, 10, !dbg !2155
  br i1 %5, label %cond.end58, label %lor.rhs, !dbg !2155

lor.rhs:                                          ; preds = %cond.true15
  %cmp26 = icmp ugt i8 %3, -96, !dbg !2155
  br i1 %cmp26, label %land.rhs, label %cond.end58, !dbg !2155

land.rhs:                                         ; preds = %lor.rhs
  %cmp30 = icmp ult i8 %3, -89, !dbg !2155
  %phi.sel72 = select i1 %cmp30, i32 3, i32 0
  br label %cond.end58

land.rhs38:                                       ; preds = %cond.true10
  %arrayidx39 = getelementptr inbounds i8, ptr %p, i64 2, !dbg !2155
  %6 = load i8, ptr %arrayidx39, align 1, !dbg !2155
  %cmp41 = icmp ugt i8 %6, -128, !dbg !2155
  br i1 %cmp41, label %land.rhs43, label %cond.end58, !dbg !2155

land.rhs43:                                       ; preds = %land.rhs38
  %cmp46 = icmp ult i8 %6, -121, !dbg !2155
  %phi.sel = select i1 %cmp46, i32 3, i32 0
  br label %cond.end58

cond.end58:                                       ; preds = %land.rhs43, %land.rhs38, %cond.true10, %land.rhs, %lor.rhs, %cond.true15, %cond.false, %cond.true
  %cond59 = phi i32 [ %and.lobit, %cond.true ], [ 0, %cond.false ], [ 0, %lor.rhs ], [ %phi.sel72, %land.rhs ], [ 3, %cond.true15 ], [ 0, %land.rhs38 ], [ %phi.sel, %land.rhs43 ], [ 0, %cond.true10 ], !dbg !2155
  %tobool60 = icmp ne i32 %cond59, 0, !dbg !2155
  ret i1 %tobool60, !dbg !2156
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_mark(ptr noundef %p) local_unnamed_addr #0 !dbg !2157 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2159, metadata !DIExpression()), !dbg !2160
  %call = tail call zeroext i1 @Perl__is_utf8_mark(ptr noundef %p) #10, !dbg !2161
  ret i1 %call, !dbg !2162
}

declare !dbg !2163 zeroext i1 @Perl__is_utf8_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_is_utf8_char(ptr noundef %s) local_unnamed_addr #0 !dbg !2164 {
entry:
  %actual_len.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %s, metadata !2168, metadata !DIExpression()), !dbg !2169
  %0 = load i8, ptr %s, align 1, !dbg !2170
  %idxprom = zext i8 %0 to i64, !dbg !2170
  %arrayidx = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom, !dbg !2170
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2170
  %2 = zext i8 %1 to i64
  %cmp.not.not = icmp eq i8 %1, 0, !dbg !2170
  br i1 %cmp.not.not, label %cond.end164, label %cond.false3, !dbg !2170

cond.false3:                                      ; preds = %entry
  %cmp5 = icmp sgt i8 %0, -1, !dbg !2170
  br i1 %cmp5, label %cond.end164, label %cond.false22, !dbg !2170

cond.false22:                                     ; preds = %cond.false3
  %cmp26 = icmp ult i8 %1, 5, !dbg !2170
  br i1 %cmp26, label %cond.true30, label %cond.false152, !dbg !2170

cond.true30:                                      ; preds = %cond.false22
  %3 = add nsw i8 %0, 62, !dbg !2170
  %4 = icmp ult i8 %3, 30, !dbg !2170
  br i1 %4, label %cond.true39, label %cond.false44, !dbg !2170

cond.true39:                                      ; preds = %cond.true30
  %arrayidx40 = getelementptr inbounds i8, ptr %s, i64 1, !dbg !2170
  %5 = load i8, ptr %arrayidx40, align 1, !dbg !2170
  %6 = and i8 %5, -64, !dbg !2170
  %cmp42 = icmp eq i8 %6, -128, !dbg !2170
  %cond = select i1 %cmp42, i64 2, i64 0, !dbg !2170
  br label %cond.end164, !dbg !2170

cond.false44:                                     ; preds = %cond.true30
  %cmp47 = icmp eq i8 %0, -32, !dbg !2170
  br i1 %cmp47, label %cond.true49, label %cond.false61, !dbg !2170

cond.true49:                                      ; preds = %cond.false44
  %arrayidx50 = getelementptr inbounds i8, ptr %s, i64 1, !dbg !2170
  %7 = load i8, ptr %arrayidx50, align 1, !dbg !2170
  %8 = and i8 %7, -32, !dbg !2170
  %cmp53 = icmp eq i8 %8, -96, !dbg !2170
  br i1 %cmp53, label %land.rhs, label %cond.end164, !dbg !2170

land.rhs:                                         ; preds = %cond.true49
  %arrayidx55 = getelementptr inbounds i8, ptr %s, i64 2, !dbg !2170
  %9 = load i8, ptr %arrayidx55, align 1, !dbg !2170
  %10 = and i8 %9, -64, !dbg !2170
  %cmp58 = icmp eq i8 %10, -128, !dbg !2170
  %phi.sel197 = select i1 %cmp58, i64 3, i64 0
  br label %cond.end164

cond.false61:                                     ; preds = %cond.false44
  %11 = add nsw i8 %0, 31, !dbg !2170
  %12 = icmp ult i8 %11, 15, !dbg !2170
  br i1 %12, label %cond.true71, label %cond.false85, !dbg !2170

cond.true71:                                      ; preds = %cond.false61
  %arrayidx72 = getelementptr inbounds i8, ptr %s, i64 1, !dbg !2170
  %13 = load i8, ptr %arrayidx72, align 1, !dbg !2170
  %14 = and i8 %13, -64, !dbg !2170
  %cmp75 = icmp eq i8 %14, -128, !dbg !2170
  br i1 %cmp75, label %land.rhs77, label %cond.end164, !dbg !2170

land.rhs77:                                       ; preds = %cond.true71
  %arrayidx78 = getelementptr inbounds i8, ptr %s, i64 2, !dbg !2170
  %15 = load i8, ptr %arrayidx78, align 1, !dbg !2170
  %16 = and i8 %15, -64, !dbg !2170
  %cmp81 = icmp eq i8 %16, -128, !dbg !2170
  %phi.sel198 = select i1 %cmp81, i64 3, i64 0
  br label %cond.end164

cond.false85:                                     ; preds = %cond.false61
  %cmp88 = icmp eq i8 %0, -16, !dbg !2170
  br i1 %cmp88, label %cond.true90, label %cond.false114, !dbg !2170

cond.true90:                                      ; preds = %cond.false85
  %arrayidx91 = getelementptr inbounds i8, ptr %s, i64 1, !dbg !2170
  %17 = load i8, ptr %arrayidx91, align 1, !dbg !2170
  %18 = add i8 %17, 112, !dbg !2170
  %19 = icmp ult i8 %18, 48, !dbg !2170
  br i1 %19, label %land.lhs.true100, label %cond.end164, !dbg !2170

land.lhs.true100:                                 ; preds = %cond.true90
  %arrayidx101 = getelementptr inbounds i8, ptr %s, i64 2, !dbg !2170
  %20 = load i8, ptr %arrayidx101, align 1, !dbg !2170
  %21 = and i8 %20, -64, !dbg !2170
  %cmp104 = icmp eq i8 %21, -128, !dbg !2170
  br i1 %cmp104, label %land.rhs106, label %cond.end164, !dbg !2170

land.rhs106:                                      ; preds = %land.lhs.true100
  %arrayidx107 = getelementptr inbounds i8, ptr %s, i64 3, !dbg !2170
  %22 = load i8, ptr %arrayidx107, align 1, !dbg !2170
  %23 = and i8 %22, -64, !dbg !2170
  %cmp110 = icmp eq i8 %23, -128, !dbg !2170
  %phi.sel199 = select i1 %cmp110, i64 4, i64 0
  br label %cond.end164

cond.false114:                                    ; preds = %cond.false85
  %24 = add nsw i8 %0, 15, !dbg !2170
  %25 = icmp ult i8 %24, 7, !dbg !2170
  br i1 %25, label %land.lhs.true124, label %cond.end164, !dbg !2170

land.lhs.true124:                                 ; preds = %cond.false114
  %arrayidx125 = getelementptr inbounds i8, ptr %s, i64 1, !dbg !2170
  %26 = load i8, ptr %arrayidx125, align 1, !dbg !2170
  %27 = and i8 %26, -64, !dbg !2170
  %cmp128 = icmp eq i8 %27, -128, !dbg !2170
  br i1 %cmp128, label %land.lhs.true130, label %cond.end164, !dbg !2170

land.lhs.true130:                                 ; preds = %land.lhs.true124
  %arrayidx131 = getelementptr inbounds i8, ptr %s, i64 2, !dbg !2170
  %28 = load i8, ptr %arrayidx131, align 1, !dbg !2170
  %29 = and i8 %28, -64, !dbg !2170
  %cmp134 = icmp eq i8 %29, -128, !dbg !2170
  br i1 %cmp134, label %land.rhs136, label %cond.end164, !dbg !2170

land.rhs136:                                      ; preds = %land.lhs.true130
  %arrayidx137 = getelementptr inbounds i8, ptr %s, i64 3, !dbg !2170
  %30 = load i8, ptr %arrayidx137, align 1, !dbg !2170
  %31 = and i8 %30, -64, !dbg !2170
  %cmp140 = icmp eq i8 %31, -128, !dbg !2170
  %phi.sel = select i1 %cmp140, i64 4, i64 0
  br label %cond.end164

cond.false152:                                    ; preds = %cond.false22
  call void @llvm.dbg.value(metadata ptr %s, metadata !2171, metadata !DIExpression()) #10, !dbg !2179
  call void @llvm.dbg.value(metadata !DIArgList(ptr %s, i64 %2), metadata !2177, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #10, !dbg !2179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %actual_len.i) #10, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %actual_len.i, metadata !2178, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2179
  %call.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %s, i64 noundef %2, ptr noundef nonnull %actual_len.i, i32 noundef 8192) #10, !dbg !2182
  %32 = load i64, ptr %actual_len.i, align 8, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %32, metadata !2178, metadata !DIExpression()) #10, !dbg !2179
  %cmp.i = icmp eq i64 %32, -1, !dbg !2184
  %spec.select.i = select i1 %cmp.i, i64 0, i64 %32, !dbg !2185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %actual_len.i) #10, !dbg !2186
  br label %cond.end164, !dbg !2170

cond.end164:                                      ; preds = %cond.true39, %land.rhs, %cond.true49, %land.rhs77, %cond.true71, %land.rhs106, %land.lhs.true100, %cond.true90, %land.rhs136, %land.lhs.true130, %land.lhs.true124, %cond.false114, %cond.false3, %cond.false152, %entry
  %cond165 = phi i64 [ 0, %entry ], [ 1, %cond.false3 ], [ %spec.select.i, %cond.false152 ], [ %cond, %cond.true39 ], [ 0, %cond.true49 ], [ %phi.sel197, %land.rhs ], [ 0, %cond.true71 ], [ %phi.sel198, %land.rhs77 ], [ 0, %land.lhs.true100 ], [ 0, %cond.true90 ], [ %phi.sel199, %land.rhs106 ], [ 0, %land.lhs.true130 ], [ 0, %land.lhs.true124 ], [ 0, %cond.false114 ], [ %phi.sel, %land.rhs136 ], !dbg !2170
  ret i64 %cond165, !dbg !2187
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_is_utf8_char_buf(ptr noundef %buf, ptr noundef %buf_end) local_unnamed_addr #0 !dbg !2188 {
entry:
  %actual_len.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %buf, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata ptr %buf_end, metadata !2191, metadata !DIExpression()), !dbg !2192
  %cmp.not = icmp ugt ptr %buf_end, %buf, !dbg !2193
  br i1 %cmp.not, label %cond.false2, label %cond.end150, !dbg !2193

cond.false2:                                      ; preds = %entry
  %0 = load i8, ptr %buf, align 1, !dbg !2193
  %cmp3 = icmp sgt i8 %0, -1, !dbg !2193
  br i1 %cmp3, label %cond.end150, label %cond.false6, !dbg !2193

cond.false6:                                      ; preds = %cond.false2
  %conv = zext i8 %0 to i64, !dbg !2193
  %sub.ptr.lhs.cast = ptrtoint ptr %buf_end to i64, !dbg !2193
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i64, !dbg !2193
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2193
  %arrayidx = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %conv, !dbg !2193
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2193
  %conv7 = zext i8 %1 to i64, !dbg !2193
  %cmp8 = icmp slt i64 %sub.ptr.sub, %conv7, !dbg !2193
  br i1 %cmp8, label %cond.end150, label %cond.false13, !dbg !2193

cond.false13:                                     ; preds = %cond.false6
  %cmp17 = icmp ult i8 %1, 5, !dbg !2193
  br i1 %cmp17, label %cond.true21, label %cond.false143, !dbg !2193

cond.true21:                                      ; preds = %cond.false13
  %2 = add nsw i8 %0, 62, !dbg !2193
  %3 = icmp ult i8 %2, 30, !dbg !2193
  br i1 %3, label %cond.true30, label %cond.false35, !dbg !2193

cond.true30:                                      ; preds = %cond.true21
  %arrayidx31 = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !2193
  %4 = load i8, ptr %arrayidx31, align 1, !dbg !2193
  %5 = and i8 %4, -64, !dbg !2193
  %cmp33 = icmp eq i8 %5, -128, !dbg !2193
  %cond = select i1 %cmp33, i64 2, i64 0, !dbg !2193
  br label %cond.end150, !dbg !2193

cond.false35:                                     ; preds = %cond.true21
  %cmp38 = icmp eq i8 %0, -32, !dbg !2193
  br i1 %cmp38, label %cond.true40, label %cond.false52, !dbg !2193

cond.true40:                                      ; preds = %cond.false35
  %arrayidx41 = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !2193
  %6 = load i8, ptr %arrayidx41, align 1, !dbg !2193
  %7 = and i8 %6, -32, !dbg !2193
  %cmp44 = icmp eq i8 %7, -96, !dbg !2193
  br i1 %cmp44, label %land.rhs, label %cond.end150, !dbg !2193

land.rhs:                                         ; preds = %cond.true40
  %arrayidx46 = getelementptr inbounds i8, ptr %buf, i64 2, !dbg !2193
  %8 = load i8, ptr %arrayidx46, align 1, !dbg !2193
  %9 = and i8 %8, -64, !dbg !2193
  %cmp49 = icmp eq i8 %9, -128, !dbg !2193
  %phi.sel179 = select i1 %cmp49, i64 3, i64 0
  br label %cond.end150

cond.false52:                                     ; preds = %cond.false35
  %10 = add nsw i8 %0, 31, !dbg !2193
  %11 = icmp ult i8 %10, 15, !dbg !2193
  br i1 %11, label %cond.true62, label %cond.false76, !dbg !2193

cond.true62:                                      ; preds = %cond.false52
  %arrayidx63 = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !2193
  %12 = load i8, ptr %arrayidx63, align 1, !dbg !2193
  %13 = and i8 %12, -64, !dbg !2193
  %cmp66 = icmp eq i8 %13, -128, !dbg !2193
  br i1 %cmp66, label %land.rhs68, label %cond.end150, !dbg !2193

land.rhs68:                                       ; preds = %cond.true62
  %arrayidx69 = getelementptr inbounds i8, ptr %buf, i64 2, !dbg !2193
  %14 = load i8, ptr %arrayidx69, align 1, !dbg !2193
  %15 = and i8 %14, -64, !dbg !2193
  %cmp72 = icmp eq i8 %15, -128, !dbg !2193
  %phi.sel180 = select i1 %cmp72, i64 3, i64 0
  br label %cond.end150

cond.false76:                                     ; preds = %cond.false52
  %cmp79 = icmp eq i8 %0, -16, !dbg !2193
  br i1 %cmp79, label %cond.true81, label %cond.false105, !dbg !2193

cond.true81:                                      ; preds = %cond.false76
  %arrayidx82 = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !2193
  %16 = load i8, ptr %arrayidx82, align 1, !dbg !2193
  %17 = add i8 %16, 112, !dbg !2193
  %18 = icmp ult i8 %17, 48, !dbg !2193
  br i1 %18, label %land.lhs.true91, label %cond.end150, !dbg !2193

land.lhs.true91:                                  ; preds = %cond.true81
  %arrayidx92 = getelementptr inbounds i8, ptr %buf, i64 2, !dbg !2193
  %19 = load i8, ptr %arrayidx92, align 1, !dbg !2193
  %20 = and i8 %19, -64, !dbg !2193
  %cmp95 = icmp eq i8 %20, -128, !dbg !2193
  br i1 %cmp95, label %land.rhs97, label %cond.end150, !dbg !2193

land.rhs97:                                       ; preds = %land.lhs.true91
  %arrayidx98 = getelementptr inbounds i8, ptr %buf, i64 3, !dbg !2193
  %21 = load i8, ptr %arrayidx98, align 1, !dbg !2193
  %22 = and i8 %21, -64, !dbg !2193
  %cmp101 = icmp eq i8 %22, -128, !dbg !2193
  %phi.sel181 = select i1 %cmp101, i64 4, i64 0
  br label %cond.end150

cond.false105:                                    ; preds = %cond.false76
  %23 = add nsw i8 %0, 15, !dbg !2193
  %24 = icmp ult i8 %23, 7, !dbg !2193
  br i1 %24, label %land.lhs.true115, label %cond.end150, !dbg !2193

land.lhs.true115:                                 ; preds = %cond.false105
  %arrayidx116 = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !2193
  %25 = load i8, ptr %arrayidx116, align 1, !dbg !2193
  %26 = and i8 %25, -64, !dbg !2193
  %cmp119 = icmp eq i8 %26, -128, !dbg !2193
  br i1 %cmp119, label %land.lhs.true121, label %cond.end150, !dbg !2193

land.lhs.true121:                                 ; preds = %land.lhs.true115
  %arrayidx122 = getelementptr inbounds i8, ptr %buf, i64 2, !dbg !2193
  %27 = load i8, ptr %arrayidx122, align 1, !dbg !2193
  %28 = and i8 %27, -64, !dbg !2193
  %cmp125 = icmp eq i8 %28, -128, !dbg !2193
  br i1 %cmp125, label %land.rhs127, label %cond.end150, !dbg !2193

land.rhs127:                                      ; preds = %land.lhs.true121
  %arrayidx128 = getelementptr inbounds i8, ptr %buf, i64 3, !dbg !2193
  %29 = load i8, ptr %arrayidx128, align 1, !dbg !2193
  %30 = and i8 %29, -64, !dbg !2193
  %cmp131 = icmp eq i8 %30, -128, !dbg !2193
  %phi.sel = select i1 %cmp131, i64 4, i64 0
  br label %cond.end150

cond.false143:                                    ; preds = %cond.false13
  call void @llvm.dbg.value(metadata ptr %buf, metadata !2171, metadata !DIExpression()) #10, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %buf_end, metadata !2177, metadata !DIExpression()) #10, !dbg !2194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %actual_len.i) #10, !dbg !2196
  call void @llvm.dbg.value(metadata ptr %actual_len.i, metadata !2178, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2194
  %call.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %buf, i64 noundef %sub.ptr.sub, ptr noundef nonnull %actual_len.i, i32 noundef 8192) #10, !dbg !2197
  %31 = load i64, ptr %actual_len.i, align 8, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %31, metadata !2178, metadata !DIExpression()) #10, !dbg !2194
  %cmp.i = icmp eq i64 %31, -1, !dbg !2199
  %spec.select.i = select i1 %cmp.i, i64 0, i64 %31, !dbg !2200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %actual_len.i) #10, !dbg !2201
  br label %cond.end150, !dbg !2193

cond.end150:                                      ; preds = %cond.true30, %land.rhs, %cond.true40, %land.rhs68, %cond.true62, %land.rhs97, %land.lhs.true91, %cond.true81, %land.rhs127, %land.lhs.true121, %land.lhs.true115, %cond.false105, %cond.false2, %cond.false143, %cond.false6, %entry
  %cond151 = phi i64 [ 0, %entry ], [ 1, %cond.false2 ], [ 0, %cond.false6 ], [ %spec.select.i, %cond.false143 ], [ %cond, %cond.true30 ], [ 0, %cond.true40 ], [ %phi.sel179, %land.rhs ], [ 0, %cond.true62 ], [ %phi.sel180, %land.rhs68 ], [ 0, %land.lhs.true91 ], [ 0, %cond.true81 ], [ %phi.sel181, %land.rhs97 ], [ 0, %land.lhs.true121 ], [ 0, %land.lhs.true115 ], [ 0, %cond.false105 ], [ %phi.sel, %land.rhs127 ], !dbg !2193
  ret i64 %cond151, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_valid_utf8_to_uvuni(ptr noundef %s, ptr noundef %retlen) local_unnamed_addr #0 !dbg !2203 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata ptr %retlen, metadata !2208, metadata !DIExpression()), !dbg !2209
  %call = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %s, ptr noundef %retlen) #10, !dbg !2210
  ret i64 %call, !dbg !2211
}

declare !dbg !2212 i64 @Perl_valid_utf8_to_uvchr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_utf8_to_uvchr(ptr noundef %s, ptr noundef %retlen) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %retlen, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #10, !dbg !2218
  %cond = select i1 %call, i32 0, i32 -8161, !dbg !2218
  %call1 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %s, i64 noundef 13, ptr noundef %retlen, i32 noundef %cond) #10, !dbg !2218
  ret i64 %call1, !dbg !2219
}

declare !dbg !2220 i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2223 zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_utf8_to_uvuni(ptr noundef %s, ptr noundef %retlen) local_unnamed_addr #0 !dbg !2226 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !2228, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata ptr %retlen, metadata !2229, metadata !DIExpression()), !dbg !2230
  %call = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %s, ptr noundef %retlen) #10, !dbg !2231
  ret i64 %call, !dbg !2232
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @Perl_pad_compname_type(i64 noundef %po) local_unnamed_addr #7 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata i64 %po, metadata !2238, metadata !DIExpression()), !dbg !2239
  %0 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2240
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1, !dbg !2240
  %1 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !2240
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %po, !dbg !2240
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2240
  %xpadn_type_u = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 2, !dbg !2240
  %3 = load ptr, ptr %xpadn_type_u, align 8, !dbg !2240
  ret ptr %3, !dbg !2241
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!670, !671, !672, !673, !674, !675}
!llvm.ident = !{!676}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/mathoms.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "09f4208cf83f5d5ed3a0cbc46756b154")
!2 = !{!3, !24, !32}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 867, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "XOPe_xop_ptr", value: 0)
!28 = !DIEnumerator(name: "XOPe_xop_name", value: 1)
!29 = !DIEnumerator(name: "XOPe_xop_desc", value: 2)
!30 = !DIEnumerator(name: "XOPe_xop_class", value: 4)
!31 = !DIEnumerator(name: "XOPe_xop_peep", value: 8)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 46, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !DIEnumerator(name: "_ISupper", value: 256)
!36 = !DIEnumerator(name: "_ISlower", value: 512)
!37 = !DIEnumerator(name: "_ISalpha", value: 1024)
!38 = !DIEnumerator(name: "_ISdigit", value: 2048)
!39 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!40 = !DIEnumerator(name: "_ISspace", value: 8192)
!41 = !DIEnumerator(name: "_ISprint", value: 16384)
!42 = !DIEnumerator(name: "_ISgraph", value: 32768)
!43 = !DIEnumerator(name: "_ISblank", value: 1)
!44 = !DIEnumerator(name: "_IScntrl", value: 2)
!45 = !DIEnumerator(name: "_ISpunct", value: 4)
!46 = !DIEnumerator(name: "_ISalnum", value: 8)
!47 = !{!48, !51, !626, !105, !639, !653, !493, !87, !92, !153, !168, !353, !50, !156, !446, !56, !319, !665, !278, !667, !106, !86, !594, !94, !669, !119}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !49, line: 1670, baseType: !50)
!49 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!50 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !49, line: 2661, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !4, line: 510, size: 320, elements: !54)
!54 = !{!55, !618, !619, !620, !625}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !53, file: !4, line: 511, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !49, line: 2649, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !4, line: 246, size: 192, elements: !59)
!59 = !{!60, !603, !604, !605}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !58, file: !4, line: 247, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !49, line: 2667, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !64, line: 130, size: 256, elements: !65)
!64 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!65 = !{!66, !67, !601, !602}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !63, file: !64, line: 131, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !63, file: !64, line: 132, baseType: !68, size: 64, offset: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !4, line: 494, size: 64, elements: !69)
!69 = !{!70, !600}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !68, file: !4, line: 495, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !49, line: 2658, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !74, line: 23, size: 384, elements: !75)
!74 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!75 = !{!76, !77, !592, !595, !596, !597, !598, !599}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !73, file: !74, line: 24, baseType: !71, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !73, file: !74, line: 25, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !49, line: 2673, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !74, line: 11, size: 512, elements: !81)
!81 = !{!82, !562, !563, !567, !568, !569, !573, !591}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !80, file: !74, line: 12, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !87, !71}
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !49, line: 2647, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !4, line: 218, size: 192, elements: !90)
!90 = !{!91, !93, !96, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !89, file: !4, line: 219, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !89, file: !4, line: 219, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !95, line: 175, baseType: !5)
!95 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !89, file: !4, line: 219, baseType: !94, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !89, file: !4, line: 220, baseType: !98, size: 64, offset: 128)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !4, line: 220, size: 64, elements: !99)
!99 = !{!100, !103, !104, !107, !110, !111, !558, !559, !560, !561}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !98, file: !4, line: 220, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !98, file: !4, line: 220, baseType: !48, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !98, file: !4, line: 220, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !49, line: 1671, baseType: !106)
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !98, file: !4, line: 220, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !49, line: 1877, baseType: !109)
!109 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !98, file: !4, line: 220, baseType: !87, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !98, file: !4, line: 220, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !114, line: 140, size: 1536, elements: !115)
!114 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!115 = !{!116, !117, !118, !122, !127, !514, !515, !516, !517, !518, !519, !520, !536, !537, !538, !539, !540, !541, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !113, file: !114, line: 141, baseType: !56, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !113, file: !114, line: 141, baseType: !68, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !113, file: !114, line: 141, baseType: !119, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !49, line: 2615, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !106)
!121 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !113, file: !114, line: 141, baseType: !123, size: 64, offset: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !114, line: 141, size: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !123, file: !114, line: 141, baseType: !119, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !123, file: !114, line: 141, baseType: !101, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !113, file: !114, line: 142, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !114, line: 157, size: 768, elements: !131)
!131 = !{!132, !454, !459, !475, !479, !483, !488, !495, !499, !503, !507, !508}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !130, file: !114, line: 158, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !453, !94}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !49, line: 2651, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !4, line: 256, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !138, file: !4, line: 257, baseType: !112, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !138, file: !4, line: 257, baseType: !94, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !138, file: !4, line: 257, baseType: !94, size: 32, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !138, file: !4, line: 258, baseType: !144, size: 64, offset: 128)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !4, line: 258, size: 64, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !154, !178, !452}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !144, file: !4, line: 258, baseType: !101, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !144, file: !4, line: 258, baseType: !48, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !144, file: !4, line: 258, baseType: !105, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !144, file: !4, line: 258, baseType: !108, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !144, file: !4, line: 258, baseType: !87, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !144, file: !4, line: 258, baseType: !112, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !144, file: !4, line: 258, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !144, file: !4, line: 258, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !4, line: 186, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !64, line: 32, size: 192, elements: !159)
!159 = !{!160, !161, !173}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !158, file: !64, line: 36, baseType: !156, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !158, file: !64, line: 37, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !4, line: 187, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !64, line: 45, size: 96, elements: !165)
!165 = !{!166, !167, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !164, file: !64, line: 46, baseType: !94, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !164, file: !64, line: 47, baseType: !168, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !95, line: 174, baseType: !86)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !164, file: !64, line: 48, baseType: !170, size: 8, offset: 64)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 1)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !158, file: !64, line: 41, baseType: !174, size: 64, offset: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !64, line: 38, size: 64, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !174, file: !64, line: 39, baseType: !87, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !174, file: !64, line: 40, baseType: !120, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !144, file: !4, line: 258, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !49, line: 2652, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !182, line: 11, size: 640, elements: !183)
!182 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!183 = !{!184, !185, !295, !442, !443, !444, !445, !447, !448, !449, !450, !451}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !181, file: !182, line: 12, baseType: !87, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !181, file: !182, line: 13, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !4, line: 251, size: 192, elements: !188)
!188 = !{!189, !280, !281, !282}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !187, file: !4, line: 252, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !49, line: 2672, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !4, line: 603, size: 1088, elements: !193)
!193 = !{!194, !195, !196, !197, !202, !208, !215, !224, !225, !226, !227, !228, !272, !273, !274, !275, !276, !277}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !192, file: !4, line: 604, baseType: !56, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !192, file: !4, line: 604, baseType: !68, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !192, file: !4, line: 604, baseType: !119, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !192, file: !4, line: 604, baseType: !198, size: 64, offset: 192)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !4, line: 604, size: 64, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !198, file: !4, line: 604, baseType: !119, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !198, file: !4, line: 604, baseType: !101, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !192, file: !4, line: 605, baseType: !203, size: 64, offset: 256)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !4, line: 488, size: 64, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !203, file: !4, line: 489, baseType: !48, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !203, file: !4, line: 490, baseType: !105, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !203, file: !4, line: 491, baseType: !162, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !192, file: !4, line: 607, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !211, line: 85, baseType: !212)
!211 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !211, line: 83, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !211, line: 83, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !192, file: !4, line: 620, baseType: !216, size: 64, offset: 384)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !4, line: 617, size: 64, elements: !217)
!217 = !{!218, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !216, file: !4, line: 618, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !221, line: 127, baseType: !222)
!221 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !221, line: 127, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !216, file: !4, line: 619, baseType: !92, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !192, file: !4, line: 622, baseType: !48, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !192, file: !4, line: 623, baseType: !48, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !192, file: !4, line: 624, baseType: !48, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !192, file: !4, line: 625, baseType: !101, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !192, file: !4, line: 626, baseType: !229, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !49, line: 2653, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !4, line: 231, size: 192, elements: !232)
!232 = !{!233, !257, !258, !259}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !231, file: !4, line: 232, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !49, line: 2668, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !4, line: 561, size: 384, elements: !237)
!237 = !{!238, !239, !240, !241, !246, !247}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !236, file: !4, line: 562, baseType: !56, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !236, file: !4, line: 562, baseType: !68, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !236, file: !4, line: 562, baseType: !119, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !236, file: !4, line: 562, baseType: !242, size: 64, offset: 192)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !4, line: 562, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !242, file: !4, line: 562, baseType: !119, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !242, file: !4, line: 562, baseType: !101, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !236, file: !4, line: 563, baseType: !203, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !236, file: !4, line: 564, baseType: !248, size: 64, offset: 320)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !4, line: 479, size: 64, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !248, file: !4, line: 480, baseType: !108, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !248, file: !4, line: 481, baseType: !56, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !248, file: !4, line: 485, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !4, line: 482, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !253, file: !4, line: 483, baseType: !94, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !253, file: !4, line: 484, baseType: !94, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !231, file: !4, line: 232, baseType: !94, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !231, file: !4, line: 232, baseType: !94, size: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !231, file: !4, line: 233, baseType: !260, size: 64, offset: 128)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !4, line: 233, size: 64, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !260, file: !4, line: 233, baseType: !101, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !260, file: !4, line: 233, baseType: !48, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !260, file: !4, line: 233, baseType: !105, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !260, file: !4, line: 233, baseType: !108, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !260, file: !4, line: 233, baseType: !87, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !260, file: !4, line: 233, baseType: !112, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !260, file: !4, line: 233, baseType: !153, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !260, file: !4, line: 233, baseType: !155, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !260, file: !4, line: 233, baseType: !179, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !260, file: !4, line: 233, baseType: !209, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !192, file: !4, line: 627, baseType: !101, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !192, file: !4, line: 628, baseType: !229, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !192, file: !4, line: 629, baseType: !101, size: 64, offset: 896)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !192, file: !4, line: 630, baseType: !229, size: 64, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !192, file: !4, line: 631, baseType: !102, size: 8, offset: 1024)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !192, file: !4, line: 632, baseType: !278, size: 8, offset: 1032)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !95, line: 171, baseType: !279)
!279 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !187, file: !4, line: 252, baseType: !94, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !187, file: !4, line: 252, baseType: !94, size: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !187, file: !4, line: 253, baseType: !283, size: 64, offset: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !187, file: !4, line: 253, size: 64, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !283, file: !4, line: 253, baseType: !101, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !283, file: !4, line: 253, baseType: !48, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !283, file: !4, line: 253, baseType: !105, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !283, file: !4, line: 253, baseType: !108, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !283, file: !4, line: 253, baseType: !87, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !283, file: !4, line: 253, baseType: !112, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !283, file: !4, line: 253, baseType: !153, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !283, file: !4, line: 253, baseType: !155, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !283, file: !4, line: 253, baseType: !179, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !283, file: !4, line: 253, baseType: !209, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !181, file: !182, line: 14, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !49, line: 2650, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !4, line: 236, size: 192, elements: !299)
!299 = !{!300, !427, !428, !429}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !298, file: !4, line: 237, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !49, line: 2669, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !304, line: 13, size: 832, elements: !305)
!304 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!305 = !{!306, !307, !308, !309, !314, !315, !359, !367, !372, !373, !422, !423, !424, !426}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !303, file: !304, line: 14, baseType: !56, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !303, file: !304, line: 14, baseType: !68, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !303, file: !304, line: 14, baseType: !119, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !303, file: !304, line: 14, baseType: !310, size: 64, offset: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 14, size: 64, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !310, file: !304, line: 14, baseType: !119, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !310, file: !304, line: 14, baseType: !101, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !303, file: !304, line: 15, baseType: !56, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !303, file: !304, line: 15, baseType: !316, size: 64, offset: 320)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !317)
!317 = !{!318, !342}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !316, file: !304, line: 15, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !49, line: 2617, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !25, line: 202, size: 320, elements: !322)
!322 = !{!323, !324, !325, !329, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !321, file: !25, line: 203, baseType: !319, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !321, file: !25, line: 203, baseType: !319, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !321, file: !25, line: 203, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!319}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !321, file: !25, line: 203, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !331, line: 25, baseType: !106)
!331 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !321, file: !25, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !321, file: !25, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !321, file: !25, line: 203, baseType: !278, size: 8, offset: 272)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !321, file: !25, line: 203, baseType: !278, size: 8, offset: 280)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !316, file: !304, line: 15, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !49, line: 2674, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !49, line: 3691, size: 64, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !354, !358}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !344, file: !49, line: 3692, baseType: !92, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !344, file: !49, line: 3693, baseType: !168, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !344, file: !49, line: 3694, baseType: !94, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !344, file: !49, line: 3695, baseType: !48, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !344, file: !49, line: 3696, baseType: !105, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !344, file: !49, line: 3697, baseType: !50, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !344, file: !49, line: 3698, baseType: !353, size: 8)
!353 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !344, file: !49, line: 3699, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !92}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !344, file: !49, line: 3700, baseType: !355, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !303, file: !304, line: 15, baseType: !360, size: 64, offset: 384)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !360, file: !304, line: 15, baseType: !319, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !360, file: !304, line: 15, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !296}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !303, file: !304, line: 15, baseType: !368, size: 64, offset: 448)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !368, file: !304, line: 15, baseType: !229, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !368, file: !304, line: 15, baseType: !162, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !303, file: !304, line: 15, baseType: !101, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !303, file: !304, line: 15, baseType: !374, size: 64, offset: 576)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 64, elements: !375)
!375 = !{!376, !421}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !374, file: !304, line: 15, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !49, line: 2681, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !331, line: 34, size: 192, elements: !380)
!380 = !{!381, !386, !419, !420}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !379, file: !331, line: 35, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !383, line: 108, baseType: !384)
!383 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !385, line: 193, baseType: !50)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !379, file: !331, line: 36, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !49, line: 2682, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !49, line: 2648, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !4, line: 241, size: 192, elements: !392)
!392 = !{!393, !404, !405, !406}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !391, file: !4, line: 242, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !49, line: 2666, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !397, line: 11, size: 320, elements: !398)
!397 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!398 = !{!399, !400, !401, !402, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !396, file: !397, line: 12, baseType: !56, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !396, file: !397, line: 13, baseType: !68, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !396, file: !397, line: 14, baseType: !382, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !396, file: !397, line: 15, baseType: !382, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !396, file: !397, line: 16, baseType: !153, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !391, file: !4, line: 242, baseType: !94, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !391, file: !4, line: 242, baseType: !94, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !391, file: !4, line: 243, baseType: !407, size: 64, offset: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !4, line: 243, size: 64, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !407, file: !4, line: 243, baseType: !101, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !407, file: !4, line: 243, baseType: !48, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !407, file: !4, line: 243, baseType: !105, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !407, file: !4, line: 243, baseType: !108, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !407, file: !4, line: 243, baseType: !87, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !407, file: !4, line: 243, baseType: !112, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !407, file: !4, line: 243, baseType: !153, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !407, file: !4, line: 243, baseType: !155, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !407, file: !4, line: 243, baseType: !179, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !407, file: !4, line: 243, baseType: !209, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !379, file: !331, line: 37, baseType: !94, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !379, file: !331, line: 38, baseType: !94, size: 32, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !374, file: !304, line: 15, baseType: !92, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !303, file: !304, line: 15, baseType: !296, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !303, file: !304, line: 15, baseType: !94, size: 32, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !303, file: !304, line: 15, baseType: !425, size: 32, offset: 736)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !4, line: 567, baseType: !94)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !303, file: !304, line: 15, baseType: !168, size: 32, offset: 768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !298, file: !4, line: 237, baseType: !94, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !298, file: !4, line: 237, baseType: !94, size: 32, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !298, file: !4, line: 238, baseType: !430, size: 64, offset: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !4, line: 238, size: 64, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !430, file: !4, line: 238, baseType: !101, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !430, file: !4, line: 238, baseType: !48, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !430, file: !4, line: 238, baseType: !105, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !430, file: !4, line: 238, baseType: !108, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !430, file: !4, line: 238, baseType: !87, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !430, file: !4, line: 238, baseType: !112, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !430, file: !4, line: 238, baseType: !153, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !430, file: !4, line: 238, baseType: !155, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !430, file: !4, line: 238, baseType: !179, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !430, file: !4, line: 238, baseType: !209, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !181, file: !182, line: 15, baseType: !94, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !181, file: !182, line: 16, baseType: !94, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !181, file: !182, line: 17, baseType: !56, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !181, file: !182, line: 18, baseType: !446, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !181, file: !182, line: 19, baseType: !296, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !181, file: !182, line: 20, baseType: !229, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !181, file: !182, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !181, file: !182, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !181, file: !182, line: 23, baseType: !162, size: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !144, file: !4, line: 258, baseType: !209, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !130, file: !114, line: 159, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!168, !458, !101, !101, !101, !382, !87, !92, !94}
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !130, file: !114, line: 162, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!101, !458, !87, !463, !101, !101, !466, !467}
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !114, line: 152, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !114, line: 148, size: 128, elements: !470)
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !469, file: !114, line: 150, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !469, file: !114, line: 151, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !130, file: !114, line: 170, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!87, !458}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !130, file: !114, line: 171, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !458}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !130, file: !114, line: 172, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !458, !487, !453}
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !130, file: !114, line: 174, baseType: !489, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !458, !487, !492}
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !130, file: !114, line: 176, baseType: !496, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!168, !458, !492, !487}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !130, file: !114, line: 178, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!87, !458, !453, !453, !466}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !130, file: !114, line: 180, baseType: !504, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!87, !458, !492, !466}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !130, file: !114, line: 182, baseType: !476, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !130, file: !114, line: 186, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!136, !512, !86, !319, !128, !136, !513, !94, !94}
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !113, file: !114, line: 142, baseType: !136, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !113, file: !114, line: 142, baseType: !56, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !113, file: !114, line: 142, baseType: !94, size: 32, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !113, file: !114, line: 142, baseType: !382, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !113, file: !114, line: 142, baseType: !382, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !113, file: !114, line: 142, baseType: !119, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !113, file: !114, line: 142, baseType: !521, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !114, line: 45, size: 1024, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !522, file: !114, line: 46, baseType: !278, size: 8)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !522, file: !114, line: 47, baseType: !526, size: 960, offset: 64)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 960, elements: !534)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !114, line: 38, size: 320, elements: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !527, file: !114, line: 39, baseType: !382, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !527, file: !114, line: 40, baseType: !382, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !527, file: !114, line: 41, baseType: !87, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !527, file: !114, line: 42, baseType: !87, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !527, file: !114, line: 43, baseType: !382, size: 64, offset: 256)
!534 = !{!535}
!535 = !DISubrange(count: 3)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !113, file: !114, line: 142, baseType: !94, size: 32, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !113, file: !114, line: 142, baseType: !94, size: 32, offset: 800)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !113, file: !114, line: 142, baseType: !92, size: 64, offset: 832)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !113, file: !114, line: 142, baseType: !94, size: 32, offset: 896)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !113, file: !114, line: 142, baseType: !94, size: 32, offset: 928)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !113, file: !114, line: 142, baseType: !542, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !114, line: 68, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !114, line: 58, size: 192, elements: !545)
!545 = !{!546, !547, !548}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !544, file: !114, line: 59, baseType: !382, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !544, file: !114, line: 60, baseType: !382, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !544, file: !114, line: 67, baseType: !382, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !113, file: !114, line: 142, baseType: !101, size: 64, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !113, file: !114, line: 142, baseType: !87, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !113, file: !114, line: 142, baseType: !382, size: 64, offset: 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !113, file: !114, line: 142, baseType: !382, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !113, file: !114, line: 142, baseType: !382, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !113, file: !114, line: 142, baseType: !382, size: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !113, file: !114, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !113, file: !114, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !113, file: !114, line: 142, baseType: !296, size: 64, offset: 1472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !98, file: !4, line: 220, baseType: !153, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !98, file: !4, line: 220, baseType: !155, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !98, file: !4, line: 220, baseType: !179, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !98, file: !4, line: 220, baseType: !209, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !80, file: !74, line: 13, baseType: !83, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !80, file: !74, line: 14, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!94, !87, !71}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !80, file: !74, line: 15, baseType: !83, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !80, file: !74, line: 16, baseType: !83, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !80, file: !74, line: 17, baseType: !570, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!86, !87, !71, !87, !464, !168}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !80, file: !74, line: 19, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!86, !71, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !49, line: 2677, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !4, line: 2150, size: 320, elements: !580)
!580 = !{!581, !582, !583, !589, !590}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !579, file: !4, line: 2151, baseType: !446, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !4, line: 2152, baseType: !105, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !579, file: !4, line: 2153, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !49, line: 2639, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !49, line: 5434, size: 8, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !586, file: !49, line: 5435, baseType: !102, size: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !579, file: !4, line: 2154, baseType: !584, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !579, file: !4, line: 2155, baseType: !446, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !80, file: !74, line: 20, baseType: !83, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !73, file: !74, line: 26, baseType: !593, size: 16, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !95, line: 173, baseType: !594)
!594 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !73, file: !74, line: 27, baseType: !102, size: 8, offset: 144)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !73, file: !74, line: 28, baseType: !278, size: 8, offset: 152)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !73, file: !74, line: 29, baseType: !382, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !73, file: !74, line: 30, baseType: !87, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !73, file: !74, line: 31, baseType: !101, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !68, file: !4, line: 496, baseType: !119, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !63, file: !64, line: 133, baseType: !119, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !63, file: !64, line: 134, baseType: !119, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !58, file: !4, line: 247, baseType: !94, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !58, file: !4, line: 247, baseType: !94, size: 32, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !58, file: !4, line: 248, baseType: !606, size: 64, offset: 128)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !4, line: 248, size: 64, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !606, file: !4, line: 248, baseType: !101, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !606, file: !4, line: 248, baseType: !48, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !606, file: !4, line: 248, baseType: !105, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !606, file: !4, line: 248, baseType: !108, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !606, file: !4, line: 248, baseType: !87, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !606, file: !4, line: 248, baseType: !112, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !606, file: !4, line: 248, baseType: !153, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !606, file: !4, line: 248, baseType: !155, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !606, file: !4, line: 248, baseType: !179, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !606, file: !4, line: 248, baseType: !209, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !53, file: !4, line: 511, baseType: !68, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !53, file: !4, line: 511, baseType: !119, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !53, file: !4, line: 511, baseType: !621, size: 64, offset: 192)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !53, file: !4, line: 511, size: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !621, file: !4, line: 511, baseType: !119, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !621, file: !4, line: 511, baseType: !101, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !53, file: !4, line: 512, baseType: !203, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIV", file: !49, line: 2660, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpviv", file: !4, line: 503, size: 320, elements: !629)
!629 = !{!630, !631, !632, !633, !638}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !628, file: !4, line: 504, baseType: !56, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !628, file: !4, line: 504, baseType: !68, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !628, file: !4, line: 504, baseType: !119, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !628, file: !4, line: 504, baseType: !634, size: 64, offset: 192)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !4, line: 504, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !634, file: !4, line: 504, baseType: !119, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !634, file: !4, line: 504, baseType: !101, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !628, file: !4, line: 505, baseType: !203, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVNV", file: !49, line: 2662, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvnv", file: !4, line: 517, size: 384, elements: !642)
!642 = !{!643, !644, !645, !646, !651, !652}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !641, file: !4, line: 518, baseType: !56, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !641, file: !4, line: 518, baseType: !68, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !641, file: !4, line: 518, baseType: !119, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !641, file: !4, line: 518, baseType: !647, size: 64, offset: 192)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !4, line: 518, size: 64, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !647, file: !4, line: 518, baseType: !119, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !647, file: !4, line: 518, baseType: !101, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !641, file: !4, line: 519, baseType: !203, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !641, file: !4, line: 520, baseType: !248, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !49, line: 2659, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !4, line: 499, size: 256, elements: !656)
!656 = !{!657, !658, !659, !660}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !655, file: !4, line: 500, baseType: !56, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !655, file: !4, line: 500, baseType: !68, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !655, file: !4, line: 500, baseType: !119, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !655, file: !4, line: 500, baseType: !661, size: 64, offset: 192)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !4, line: 500, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !661, file: !4, line: 500, baseType: !119, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !661, file: !4, line: 500, baseType: !101, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO", file: !49, line: 2654, baseType: !187)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!670 = !{i32 7, !"Dwarf Version", i32 5}
!671 = !{i32 2, !"Debug Info Version", i32 3}
!672 = !{i32 1, !"wchar_size", i32 4}
!673 = !{i32 7, !"PIC Level", i32 2}
!674 = !{i32 7, !"PIE Level", i32 2}
!675 = !{i32 7, !"uwtable", i32 2}
!676 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!677 = distinct !DISubprogram(name: "Perl_ref", scope: !678, file: !678, line: 115, type: !679, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !681)
!678 = !DIFile(filename: "apps/500.perlbench_r/src/mathoms.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "09f4208cf83f5d5ed3a0cbc46756b154")
!679 = !DISubroutineType(types: !680)
!680 = !{!319, !319, !168}
!681 = !{!682, !683}
!682 = !DILocalVariable(name: "o", arg: 1, scope: !677, file: !678, line: 115, type: !319)
!683 = !DILocalVariable(name: "type", arg: 2, scope: !677, file: !678, line: 115, type: !168)
!684 = !DILocation(line: 0, scope: !677)
!685 = !DILocation(line: 117, column: 12, scope: !677)
!686 = !DILocation(line: 117, column: 5, scope: !677)
!687 = !DISubprogram(name: "Perl_doref", scope: !688, file: !688, line: 1098, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!688 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!689 = !DISubroutineType(types: !690)
!690 = !{!319, !319, !168, !353}
!691 = !{}
!692 = distinct !DISubprogram(name: "Perl_sv_unref", scope: !678, file: !678, line: 132, type: !693, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !87}
!695 = !{!696}
!696 = !DILocalVariable(name: "sv", arg: 1, scope: !692, file: !678, line: 132, type: !87)
!697 = !DILocation(line: 0, scope: !692)
!698 = !DILocation(line: 136, column: 5, scope: !692)
!699 = !DILocation(line: 137, column: 1, scope: !692)
!700 = !DISubprogram(name: "Perl_sv_unref_flags", scope: !688, file: !688, line: 4737, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !453, !466}
!703 = distinct !DISubprogram(name: "Perl_sv_taint", scope: !678, file: !678, line: 148, type: !693, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !704)
!704 = !{!705}
!705 = !DILocalVariable(name: "sv", arg: 1, scope: !703, file: !678, line: 148, type: !87)
!706 = !DILocation(line: 0, scope: !703)
!707 = !DILocation(line: 152, column: 5, scope: !703)
!708 = !DILocation(line: 153, column: 1, scope: !703)
!709 = !DISubprogram(name: "Perl_sv_magic", scope: !688, file: !688, line: 4426, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !453, !453, !712, !463, !487}
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!713 = distinct !DISubprogram(name: "Perl_sv_2iv", scope: !678, file: !678, line: 160, type: !714, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!48, !87}
!716 = !{!717}
!717 = !DILocalVariable(name: "sv", arg: 1, scope: !713, file: !678, line: 160, type: !87)
!718 = !DILocation(line: 0, scope: !713)
!719 = !DILocation(line: 164, column: 12, scope: !713)
!720 = !DILocation(line: 164, column: 5, scope: !713)
!721 = !DISubprogram(name: "Perl_sv_2iv_flags", scope: !688, file: !688, line: 4109, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!722 = !DISubroutineType(types: !723)
!723 = !{!48, !453, !487}
!724 = distinct !DISubprogram(name: "Perl_sv_2uv", scope: !678, file: !678, line: 172, type: !725, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!105, !87}
!727 = !{!728}
!728 = !DILocalVariable(name: "sv", arg: 1, scope: !724, file: !678, line: 172, type: !87)
!729 = !DILocation(line: 0, scope: !724)
!730 = !DILocation(line: 176, column: 12, scope: !724)
!731 = !DILocation(line: 176, column: 5, scope: !724)
!732 = !DISubprogram(name: "Perl_sv_2uv_flags", scope: !688, file: !688, line: 4168, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!733 = !DISubroutineType(types: !734)
!734 = !{!105, !453, !487}
!735 = distinct !DISubprogram(name: "Perl_sv_2nv", scope: !678, file: !678, line: 184, type: !736, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!108, !87}
!738 = !{!739}
!739 = !DILocalVariable(name: "sv", arg: 1, scope: !735, file: !678, line: 184, type: !87)
!740 = !DILocation(line: 0, scope: !735)
!741 = !DILocation(line: 186, column: 12, scope: !735)
!742 = !DILocation(line: 186, column: 5, scope: !735)
!743 = !DISubprogram(name: "Perl_sv_2nv_flags", scope: !688, file: !688, line: 4120, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!744 = !DISubroutineType(types: !745)
!745 = !{!108, !453, !487}
!746 = distinct !DISubprogram(name: "Perl_sv_2pv", scope: !678, file: !678, line: 195, type: !747, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !750)
!747 = !DISubroutineType(types: !748)
!748 = !{!101, !87, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!750 = !{!751, !752}
!751 = !DILocalVariable(name: "sv", arg: 1, scope: !746, file: !678, line: 195, type: !87)
!752 = !DILocalVariable(name: "lp", arg: 2, scope: !746, file: !678, line: 195, type: !749)
!753 = !DILocation(line: 0, scope: !746)
!754 = !DILocation(line: 199, column: 12, scope: !746)
!755 = !DILocation(line: 199, column: 5, scope: !746)
!756 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !688, file: !688, line: 4130, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!757 = !DISubroutineType(types: !758)
!758 = !{!101, !453, !759, !487}
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!760 = distinct !DISubprogram(name: "Perl_sv_2pv_nolen", scope: !678, file: !678, line: 212, type: !761, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!101, !87}
!763 = !{!764}
!764 = !DILocalVariable(name: "sv", arg: 1, scope: !760, file: !678, line: 212, type: !87)
!765 = !DILocation(line: 0, scope: !760)
!766 = !DILocation(line: 215, column: 12, scope: !760)
!767 = !DILocation(line: 215, column: 5, scope: !760)
!768 = distinct !DISubprogram(name: "Perl_sv_2pvbyte_nolen", scope: !678, file: !678, line: 230, type: !761, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !769)
!769 = !{!770}
!770 = !DILocalVariable(name: "sv", arg: 1, scope: !768, file: !678, line: 230, type: !87)
!771 = !DILocation(line: 0, scope: !768)
!772 = !DILocation(line: 234, column: 12, scope: !768)
!773 = !DILocation(line: 234, column: 5, scope: !768)
!774 = !DISubprogram(name: "Perl_sv_2pvbyte", scope: !688, file: !688, line: 4141, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!775 = !DISubroutineType(types: !776)
!776 = !{!101, !87, !759}
!777 = distinct !DISubprogram(name: "Perl_sv_2pvutf8_nolen", scope: !678, file: !678, line: 249, type: !761, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !778)
!778 = !{!779}
!779 = !DILocalVariable(name: "sv", arg: 1, scope: !777, file: !678, line: 249, type: !87)
!780 = !DILocation(line: 0, scope: !777)
!781 = !DILocation(line: 253, column: 12, scope: !777)
!782 = !DILocation(line: 253, column: 5, scope: !777)
!783 = !DISubprogram(name: "Perl_sv_2pvutf8", scope: !688, file: !688, line: 4152, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!784 = distinct !DISubprogram(name: "Perl_sv_force_normal", scope: !678, file: !678, line: 267, type: !693, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !785)
!785 = !{!786}
!786 = !DILocalVariable(name: "sv", arg: 1, scope: !784, file: !678, line: 267, type: !87)
!787 = !DILocation(line: 0, scope: !784)
!788 = !DILocation(line: 271, column: 5, scope: !784)
!789 = !DILocation(line: 272, column: 1, scope: !784)
!790 = !DISubprogram(name: "Perl_sv_force_normal_flags", scope: !688, file: !688, line: 4365, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!791 = distinct !DISubprogram(name: "Perl_sv_setsv", scope: !678, file: !678, line: 279, type: !792, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !87, !87}
!794 = !{!795, !796}
!795 = !DILocalVariable(name: "dstr", arg: 1, scope: !791, file: !678, line: 279, type: !87)
!796 = !DILocalVariable(name: "sstr", arg: 2, scope: !791, file: !678, line: 279, type: !87)
!797 = !DILocation(line: 0, scope: !791)
!798 = !DILocation(line: 283, column: 5, scope: !791)
!799 = !DILocation(line: 284, column: 1, scope: !791)
!800 = !DISubprogram(name: "Perl_sv_setsv_flags", scope: !688, file: !688, line: 4683, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !87, !87, !487}
!803 = distinct !DISubprogram(name: "Perl_sv_catpvn", scope: !678, file: !678, line: 291, type: !804, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !87, !464, !119}
!806 = !{!807, !808, !809}
!807 = !DILocalVariable(name: "dsv", arg: 1, scope: !803, file: !678, line: 291, type: !87)
!808 = !DILocalVariable(name: "sstr", arg: 2, scope: !803, file: !678, line: 291, type: !464)
!809 = !DILocalVariable(name: "slen", arg: 3, scope: !803, file: !678, line: 291, type: !119)
!810 = !DILocation(line: 0, scope: !803)
!811 = !DILocation(line: 295, column: 5, scope: !803)
!812 = !DILocation(line: 296, column: 1, scope: !803)
!813 = !DISubprogram(name: "Perl_sv_catpvn_flags", scope: !688, file: !688, line: 4229, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !453, !464, !816, !487}
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!817 = distinct !DISubprogram(name: "Perl_sv_catpvn_mg", scope: !678, file: !678, line: 307, type: !804, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !818)
!818 = !{!819, !820, !821}
!819 = !DILocalVariable(name: "sv", arg: 1, scope: !817, file: !678, line: 307, type: !87)
!820 = !DILocalVariable(name: "ptr", arg: 2, scope: !817, file: !678, line: 307, type: !464)
!821 = !DILocalVariable(name: "len", arg: 3, scope: !817, file: !678, line: 307, type: !119)
!822 = !DILocation(line: 0, scope: !817)
!823 = !DILocation(line: 311, column: 5, scope: !817)
!824 = !DILocation(line: 312, column: 1, scope: !817)
!825 = distinct !DISubprogram(name: "Perl_sv_catsv", scope: !678, file: !678, line: 319, type: !792, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !826)
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "dstr", arg: 1, scope: !825, file: !678, line: 319, type: !87)
!828 = !DILocalVariable(name: "sstr", arg: 2, scope: !825, file: !678, line: 319, type: !87)
!829 = !DILocation(line: 0, scope: !825)
!830 = !DILocation(line: 323, column: 5, scope: !825)
!831 = !DILocation(line: 324, column: 1, scope: !825)
!832 = !DISubprogram(name: "Perl_sv_catsv_flags", scope: !688, file: !688, line: 4246, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !453, !453, !487}
!835 = distinct !DISubprogram(name: "Perl_sv_catsv_mg", scope: !678, file: !678, line: 335, type: !792, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !836)
!836 = !{!837, !838}
!837 = !DILocalVariable(name: "dsv", arg: 1, scope: !835, file: !678, line: 335, type: !87)
!838 = !DILocalVariable(name: "ssv", arg: 2, scope: !835, file: !678, line: 335, type: !87)
!839 = !DILocation(line: 0, scope: !835)
!840 = !DILocation(line: 339, column: 5, scope: !835)
!841 = !DILocation(line: 340, column: 1, scope: !835)
!842 = distinct !DISubprogram(name: "Perl_sv_iv", scope: !678, file: !678, line: 352, type: !714, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !843)
!843 = !{!844}
!844 = !DILocalVariable(name: "sv", arg: 1, scope: !842, file: !678, line: 352, type: !87)
!845 = !DILocation(line: 0, scope: !842)
!846 = !DILocation(line: 356, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !678, line: 356, column: 9)
!848 = !DILocation(line: 356, column: 9, scope: !842)
!849 = !DILocation(line: 357, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !678, line: 357, column: 6)
!851 = distinct !DILexicalBlock(scope: !847, file: !678, line: 356, column: 20)
!852 = !DILocation(line: 0, scope: !851)
!853 = !DILocation(line: 357, column: 6, scope: !851)
!854 = !DILocation(line: 358, column: 17, scope: !850)
!855 = !DILocation(line: 358, column: 6, scope: !850)
!856 = !DILocation(line: 359, column: 9, scope: !851)
!857 = !DILocation(line: 359, column: 2, scope: !851)
!858 = !DILocation(line: 361, column: 12, scope: !842)
!859 = !DILocation(line: 361, column: 5, scope: !842)
!860 = !DILocation(line: 362, column: 1, scope: !842)
!861 = distinct !DISubprogram(name: "Perl_sv_uv", scope: !678, file: !678, line: 374, type: !725, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !862)
!862 = !{!863}
!863 = !DILocalVariable(name: "sv", arg: 1, scope: !861, file: !678, line: 374, type: !87)
!864 = !DILocation(line: 0, scope: !861)
!865 = !DILocation(line: 378, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !678, line: 378, column: 9)
!867 = !DILocation(line: 378, column: 9, scope: !861)
!868 = !DILocation(line: 379, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !678, line: 379, column: 6)
!870 = distinct !DILexicalBlock(scope: !866, file: !678, line: 378, column: 20)
!871 = !DILocation(line: 0, scope: !870)
!872 = !DILocation(line: 379, column: 6, scope: !870)
!873 = !DILocation(line: 380, column: 13, scope: !869)
!874 = !DILocation(line: 380, column: 6, scope: !869)
!875 = !DILocation(line: 381, column: 13, scope: !870)
!876 = !DILocation(line: 381, column: 2, scope: !870)
!877 = !DILocation(line: 383, column: 12, scope: !861)
!878 = !DILocation(line: 383, column: 5, scope: !861)
!879 = !DILocation(line: 384, column: 1, scope: !861)
!880 = distinct !DISubprogram(name: "Perl_sv_nv", scope: !678, file: !678, line: 396, type: !736, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!881 = !{!882}
!882 = !DILocalVariable(name: "sv", arg: 1, scope: !880, file: !678, line: 396, type: !87)
!883 = !DILocation(line: 0, scope: !880)
!884 = !DILocation(line: 400, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !678, line: 400, column: 9)
!886 = !DILocation(line: 400, column: 9, scope: !880)
!887 = !DILocation(line: 401, column: 9, scope: !885)
!888 = !DILocation(line: 401, column: 2, scope: !885)
!889 = !DILocation(line: 402, column: 12, scope: !880)
!890 = !DILocation(line: 402, column: 5, scope: !880)
!891 = !DILocation(line: 403, column: 1, scope: !880)
!892 = distinct !DISubprogram(name: "Perl_sv_pvn", scope: !678, file: !678, line: 419, type: !747, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !893)
!893 = !{!894, !895}
!894 = !DILocalVariable(name: "sv", arg: 1, scope: !892, file: !678, line: 419, type: !87)
!895 = !DILocalVariable(name: "lp", arg: 2, scope: !892, file: !678, line: 419, type: !749)
!896 = !DILocation(line: 0, scope: !892)
!897 = !DILocation(line: 423, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !892, file: !678, line: 423, column: 9)
!899 = !DILocation(line: 423, column: 9, scope: !892)
!900 = !DILocation(line: 424, column: 8, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !678, line: 423, column: 20)
!902 = !DILocation(line: 424, column: 6, scope: !901)
!903 = !DILocation(line: 425, column: 9, scope: !901)
!904 = !DILocation(line: 425, column: 2, scope: !901)
!905 = !DILocation(line: 427, column: 12, scope: !892)
!906 = !DILocation(line: 427, column: 5, scope: !892)
!907 = !DILocation(line: 428, column: 1, scope: !892)
!908 = distinct !DISubprogram(name: "Perl_sv_pvn_nomg", scope: !678, file: !678, line: 432, type: !747, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !909)
!909 = !{!910, !911}
!910 = !DILocalVariable(name: "sv", arg: 1, scope: !908, file: !678, line: 432, type: !87)
!911 = !DILocalVariable(name: "lp", arg: 2, scope: !908, file: !678, line: 432, type: !749)
!912 = !DILocation(line: 0, scope: !908)
!913 = !DILocation(line: 436, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !908, file: !678, line: 436, column: 9)
!915 = !DILocation(line: 436, column: 9, scope: !908)
!916 = !DILocation(line: 437, column: 8, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !678, line: 436, column: 20)
!918 = !DILocation(line: 437, column: 6, scope: !917)
!919 = !DILocation(line: 438, column: 9, scope: !917)
!920 = !DILocation(line: 438, column: 2, scope: !917)
!921 = !DILocation(line: 440, column: 12, scope: !908)
!922 = !DILocation(line: 440, column: 5, scope: !908)
!923 = !DILocation(line: 441, column: 1, scope: !908)
!924 = distinct !DISubprogram(name: "Perl_sv_pv", scope: !678, file: !678, line: 448, type: !761, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !925)
!925 = !{!926}
!926 = !DILocalVariable(name: "sv", arg: 1, scope: !924, file: !678, line: 448, type: !87)
!927 = !DILocation(line: 0, scope: !924)
!928 = !DILocation(line: 452, column: 9, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !678, line: 452, column: 9)
!930 = !DILocation(line: 452, column: 9, scope: !924)
!931 = !DILocation(line: 453, column: 16, scope: !929)
!932 = !DILocation(line: 453, column: 9, scope: !929)
!933 = !DILocation(line: 455, column: 12, scope: !924)
!934 = !DILocation(line: 455, column: 5, scope: !924)
!935 = !DILocation(line: 456, column: 1, scope: !924)
!936 = distinct !DISubprogram(name: "Perl_sv_pvn_force", scope: !678, file: !678, line: 463, type: !747, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "sv", arg: 1, scope: !936, file: !678, line: 463, type: !87)
!939 = !DILocalVariable(name: "lp", arg: 2, scope: !936, file: !678, line: 463, type: !749)
!940 = !DILocation(line: 0, scope: !936)
!941 = !DILocation(line: 467, column: 12, scope: !936)
!942 = !DILocation(line: 467, column: 5, scope: !936)
!943 = !DISubprogram(name: "Perl_sv_pvn_force_flags", scope: !688, file: !688, line: 4520, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!944 = distinct !DISubprogram(name: "Perl_sv_pvbyte", scope: !678, file: !678, line: 475, type: !761, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !945)
!945 = !{!946}
!946 = !DILocalVariable(name: "sv", arg: 1, scope: !944, file: !678, line: 475, type: !87)
!947 = !DILocation(line: 0, scope: !944)
!948 = !DILocation(line: 479, column: 5, scope: !944)
!949 = !DILocation(line: 480, column: 12, scope: !944)
!950 = !DILocation(line: 480, column: 5, scope: !944)
!951 = !DISubprogram(name: "Perl_sv_utf8_downgrade", scope: !688, file: !688, line: 4772, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!952 = !DISubroutineType(types: !953)
!953 = !{!353, !453, !954}
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!955 = distinct !DISubprogram(name: "Perl_sv_pvbyten", scope: !678, file: !678, line: 498, type: !747, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !956)
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "sv", arg: 1, scope: !955, file: !678, line: 498, type: !87)
!958 = !DILocalVariable(name: "lp", arg: 2, scope: !955, file: !678, line: 498, type: !749)
!959 = !DILocation(line: 0, scope: !955)
!960 = !DILocation(line: 502, column: 5, scope: !955)
!961 = !DILocation(line: 0, scope: !892, inlinedAt: !962)
!962 = distinct !DILocation(line: 503, column: 12, scope: !955)
!963 = !DILocation(line: 423, column: 9, scope: !898, inlinedAt: !962)
!964 = !DILocation(line: 423, column: 9, scope: !892, inlinedAt: !962)
!965 = !DILocation(line: 424, column: 8, scope: !901, inlinedAt: !962)
!966 = !DILocation(line: 424, column: 6, scope: !901, inlinedAt: !962)
!967 = !DILocation(line: 425, column: 9, scope: !901, inlinedAt: !962)
!968 = !DILocation(line: 425, column: 2, scope: !901, inlinedAt: !962)
!969 = !DILocation(line: 427, column: 12, scope: !892, inlinedAt: !962)
!970 = !DILocation(line: 427, column: 5, scope: !892, inlinedAt: !962)
!971 = !DILocation(line: 503, column: 5, scope: !955)
!972 = distinct !DISubprogram(name: "Perl_sv_pvutf8", scope: !678, file: !678, line: 511, type: !761, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !973)
!973 = !{!974}
!974 = !DILocalVariable(name: "sv", arg: 1, scope: !972, file: !678, line: 511, type: !87)
!975 = !DILocation(line: 0, scope: !972)
!976 = !DILocation(line: 515, column: 5, scope: !972)
!977 = !DILocation(line: 516, column: 12, scope: !972)
!978 = !DILocation(line: 516, column: 5, scope: !972)
!979 = !DISubprogram(name: "Perl_sv_utf8_upgrade_flags_grow", scope: !688, file: !688, line: 4790, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!980 = !DISubroutineType(types: !981)
!981 = !{!119, !453, !487, !119}
!982 = distinct !DISubprogram(name: "Perl_sv_pvutf8n", scope: !678, file: !678, line: 534, type: !747, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !983)
!983 = !{!984, !985}
!984 = !DILocalVariable(name: "sv", arg: 1, scope: !982, file: !678, line: 534, type: !87)
!985 = !DILocalVariable(name: "lp", arg: 2, scope: !982, file: !678, line: 534, type: !749)
!986 = !DILocation(line: 0, scope: !982)
!987 = !DILocation(line: 538, column: 5, scope: !982)
!988 = !DILocation(line: 0, scope: !892, inlinedAt: !989)
!989 = distinct !DILocation(line: 539, column: 12, scope: !982)
!990 = !DILocation(line: 423, column: 9, scope: !898, inlinedAt: !989)
!991 = !DILocation(line: 423, column: 9, scope: !892, inlinedAt: !989)
!992 = !DILocation(line: 424, column: 8, scope: !901, inlinedAt: !989)
!993 = !DILocation(line: 424, column: 6, scope: !901, inlinedAt: !989)
!994 = !DILocation(line: 425, column: 9, scope: !901, inlinedAt: !989)
!995 = !DILocation(line: 425, column: 2, scope: !901, inlinedAt: !989)
!996 = !DILocation(line: 427, column: 12, scope: !892, inlinedAt: !989)
!997 = !DILocation(line: 427, column: 5, scope: !892, inlinedAt: !989)
!998 = !DILocation(line: 539, column: 5, scope: !982)
!999 = distinct !DISubprogram(name: "Perl_sv_utf8_upgrade", scope: !678, file: !678, line: 547, type: !1000, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!119, !87}
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "sv", arg: 1, scope: !999, file: !678, line: 547, type: !87)
!1004 = !DILocation(line: 0, scope: !999)
!1005 = !DILocation(line: 551, column: 12, scope: !999)
!1006 = !DILocation(line: 551, column: 5, scope: !999)
!1007 = distinct !DISubprogram(name: "Perl_fprintf_nocontext", scope: !678, file: !678, line: 555, type: !1008, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!86, !209, !464, null}
!1010 = !{!1011, !1012, !1013, !1014}
!1011 = !DILocalVariable(name: "stream", arg: 1, scope: !1007, file: !678, line: 555, type: !209)
!1012 = !DILocalVariable(name: "format", arg: 2, scope: !1007, file: !678, line: 555, type: !464)
!1013 = !DILocalVariable(name: "ret", scope: !1007, file: !678, line: 557, type: !86)
!1014 = !DILocalVariable(name: "arglist", scope: !1007, file: !678, line: 558, type: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1016, line: 52, baseType: !1017)
!1016 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1018, line: 32, baseType: !1019)
!1018 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1020, baseType: !1021)
!1020 = !DIFile(filename: "apps/500.perlbench_r/src/mathoms.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 192, elements: !171)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1022, file: !1020, line: 558, baseType: !5, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1022, file: !1020, line: 558, baseType: !5, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1022, file: !1020, line: 558, baseType: !92, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1022, file: !1020, line: 558, baseType: !92, size: 64, offset: 128)
!1028 = !DILocation(line: 0, scope: !1007)
!1029 = !DILocation(line: 558, column: 5, scope: !1007)
!1030 = !DILocation(line: 558, column: 13, scope: !1007)
!1031 = !DILocation(line: 566, column: 5, scope: !1007)
!1032 = !DILocation(line: 567, column: 11, scope: !1007)
!1033 = !DILocation(line: 568, column: 5, scope: !1007)
!1034 = !DILocation(line: 570, column: 1, scope: !1007)
!1035 = !DILocation(line: 569, column: 5, scope: !1007)
!1036 = !DISubprogram(name: "PerlIO_vprintf", scope: !211, file: !211, line: 272, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!86, !209, !464, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1040 = distinct !DISubprogram(name: "Perl_printf_nocontext", scope: !678, file: !678, line: 573, type: !1041, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!86, !464, null}
!1043 = !{!1044, !1045, !1046}
!1044 = !DILocalVariable(name: "format", arg: 1, scope: !1040, file: !678, line: 573, type: !464)
!1045 = !DILocalVariable(name: "arglist", scope: !1040, file: !678, line: 576, type: !1015)
!1046 = !DILocalVariable(name: "ret", scope: !1040, file: !678, line: 577, type: !86)
!1047 = !DILocation(line: 0, scope: !1040)
!1048 = !DILocation(line: 576, column: 5, scope: !1040)
!1049 = !DILocation(line: 576, column: 13, scope: !1040)
!1050 = !DILocation(line: 583, column: 5, scope: !1040)
!1051 = !DILocation(line: 584, column: 26, scope: !1040)
!1052 = !DILocation(line: 584, column: 11, scope: !1040)
!1053 = !DILocation(line: 585, column: 5, scope: !1040)
!1054 = !DILocation(line: 587, column: 1, scope: !1040)
!1055 = !DILocation(line: 586, column: 5, scope: !1040)
!1056 = !DISubprogram(name: "Perl_PerlIO_stdout", scope: !688, file: !688, line: 8280, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!209}
!1059 = distinct !DISubprogram(name: "Perl_huge", scope: !678, file: !678, line: 596, type: !1060, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!108}
!1062 = !DILocation(line: 601, column: 5, scope: !1059)
!1063 = distinct !DISubprogram(name: "Perl_gv_fullname", scope: !678, file: !678, line: 608, type: !1064, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1068)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !87, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!1068 = !{!1069, !1070}
!1069 = !DILocalVariable(name: "sv", arg: 1, scope: !1063, file: !678, line: 608, type: !87)
!1070 = !DILocalVariable(name: "gv", arg: 2, scope: !1063, file: !678, line: 608, type: !1066)
!1071 = !DILocation(line: 0, scope: !1063)
!1072 = !DILocation(line: 612, column: 5, scope: !1063)
!1073 = !DILocation(line: 613, column: 1, scope: !1063)
!1074 = !DISubprogram(name: "Perl_gv_fullname4", scope: !688, file: !688, line: 1547, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !87, !1066, !464, !353}
!1077 = distinct !DISubprogram(name: "Perl_gv_efullname", scope: !678, file: !678, line: 617, type: !1064, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1078)
!1078 = !{!1079, !1080}
!1079 = !DILocalVariable(name: "sv", arg: 1, scope: !1077, file: !678, line: 617, type: !87)
!1080 = !DILocalVariable(name: "gv", arg: 2, scope: !1077, file: !678, line: 617, type: !1066)
!1081 = !DILocation(line: 0, scope: !1077)
!1082 = !DILocation(line: 621, column: 5, scope: !1077)
!1083 = !DILocation(line: 622, column: 1, scope: !1077)
!1084 = !DISubprogram(name: "Perl_gv_efullname4", scope: !688, file: !688, line: 1438, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1085 = distinct !DISubprogram(name: "Perl_gv_fullname3", scope: !678, file: !678, line: 625, type: !1086, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !87, !1066, !464}
!1088 = !{!1089, !1090, !1091}
!1089 = !DILocalVariable(name: "sv", arg: 1, scope: !1085, file: !678, line: 625, type: !87)
!1090 = !DILocalVariable(name: "gv", arg: 2, scope: !1085, file: !678, line: 625, type: !1066)
!1091 = !DILocalVariable(name: "prefix", arg: 3, scope: !1085, file: !678, line: 625, type: !464)
!1092 = !DILocation(line: 0, scope: !1085)
!1093 = !DILocation(line: 629, column: 5, scope: !1085)
!1094 = !DILocation(line: 630, column: 1, scope: !1085)
!1095 = distinct !DISubprogram(name: "Perl_gv_efullname3", scope: !678, file: !678, line: 633, type: !1086, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DILocalVariable(name: "sv", arg: 1, scope: !1095, file: !678, line: 633, type: !87)
!1098 = !DILocalVariable(name: "gv", arg: 2, scope: !1095, file: !678, line: 633, type: !1066)
!1099 = !DILocalVariable(name: "prefix", arg: 3, scope: !1095, file: !678, line: 633, type: !464)
!1100 = !DILocation(line: 0, scope: !1095)
!1101 = !DILocation(line: 637, column: 5, scope: !1095)
!1102 = !DILocation(line: 638, column: 1, scope: !1095)
!1103 = distinct !DISubprogram(name: "Perl_gv_fetchmethod", scope: !678, file: !678, line: 649, type: !1104, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!229, !56, !464}
!1106 = !{!1107, !1108}
!1107 = !DILocalVariable(name: "stash", arg: 1, scope: !1103, file: !678, line: 649, type: !56)
!1108 = !DILocalVariable(name: "name", arg: 2, scope: !1103, file: !678, line: 649, type: !464)
!1109 = !DILocation(line: 0, scope: !1103)
!1110 = !DILocation(line: 653, column: 12, scope: !1103)
!1111 = !DILocation(line: 653, column: 5, scope: !1103)
!1112 = !DISubprogram(name: "Perl_gv_fetchmethod_autoload", scope: !688, file: !688, line: 1496, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!229, !56, !464, !168}
!1115 = distinct !DISubprogram(name: "Perl_hv_iternext", scope: !678, file: !678, line: 657, type: !1116, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!156, !56}
!1118 = !{!1119}
!1119 = !DILocalVariable(name: "hv", arg: 1, scope: !1115, file: !678, line: 657, type: !56)
!1120 = !DILocation(line: 0, scope: !1115)
!1121 = !DILocation(line: 661, column: 12, scope: !1115)
!1122 = !DILocation(line: 661, column: 5, scope: !1115)
!1123 = !DISubprogram(name: "Perl_hv_iternext_flags", scope: !688, file: !688, line: 1729, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!156, !56, !168}
!1126 = distinct !DISubprogram(name: "Perl_hv_magic", scope: !678, file: !678, line: 665, type: !1127, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !56, !229, !86}
!1129 = !{!1130, !1131, !1132}
!1130 = !DILocalVariable(name: "hv", arg: 1, scope: !1126, file: !678, line: 665, type: !56)
!1131 = !DILocalVariable(name: "gv", arg: 2, scope: !1126, file: !678, line: 665, type: !229)
!1132 = !DILocalVariable(name: "how", arg: 3, scope: !1126, file: !678, line: 665, type: !86)
!1133 = !DILocation(line: 0, scope: !1126)
!1134 = !DILocation(line: 669, column: 5, scope: !1126)
!1135 = !DILocation(line: 670, column: 1, scope: !1126)
!1136 = distinct !DISubprogram(name: "Perl_do_open", scope: !678, file: !678, line: 673, type: !1137, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!353, !229, !464, !168, !86, !86, !86, !209}
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1140 = !DILocalVariable(name: "gv", arg: 1, scope: !1136, file: !678, line: 673, type: !229)
!1141 = !DILocalVariable(name: "name", arg: 2, scope: !1136, file: !678, line: 673, type: !464)
!1142 = !DILocalVariable(name: "len", arg: 3, scope: !1136, file: !678, line: 673, type: !168)
!1143 = !DILocalVariable(name: "as_raw", arg: 4, scope: !1136, file: !678, line: 673, type: !86)
!1144 = !DILocalVariable(name: "rawmode", arg: 5, scope: !1136, file: !678, line: 674, type: !86)
!1145 = !DILocalVariable(name: "rawperm", arg: 6, scope: !1136, file: !678, line: 674, type: !86)
!1146 = !DILocalVariable(name: "supplied_fp", arg: 7, scope: !1136, file: !678, line: 674, type: !209)
!1147 = !DILocation(line: 0, scope: !1136)
!1148 = !DILocation(line: 678, column: 12, scope: !1136)
!1149 = !DILocation(line: 678, column: 5, scope: !1136)
!1150 = !DISubprogram(name: "Perl_do_openn", scope: !688, file: !688, line: 1026, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!353, !229, !464, !168, !86, !86, !86, !209, !153, !168}
!1153 = distinct !DISubprogram(name: "Perl_do_open9", scope: !678, file: !678, line: 683, type: !1154, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1156)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!353, !229, !464, !168, !86, !86, !86, !209, !87, !168}
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!1157 = !DILocalVariable(name: "gv", arg: 1, scope: !1153, file: !678, line: 683, type: !229)
!1158 = !DILocalVariable(name: "name", arg: 2, scope: !1153, file: !678, line: 683, type: !464)
!1159 = !DILocalVariable(name: "len", arg: 3, scope: !1153, file: !678, line: 683, type: !168)
!1160 = !DILocalVariable(name: "as_raw", arg: 4, scope: !1153, file: !678, line: 684, type: !86)
!1161 = !DILocalVariable(name: "rawmode", arg: 5, scope: !1153, file: !678, line: 685, type: !86)
!1162 = !DILocalVariable(name: "rawperm", arg: 6, scope: !1153, file: !678, line: 685, type: !86)
!1163 = !DILocalVariable(name: "supplied_fp", arg: 7, scope: !1153, file: !678, line: 685, type: !209)
!1164 = !DILocalVariable(name: "svs", arg: 8, scope: !1153, file: !678, line: 685, type: !87)
!1165 = !DILocalVariable(name: "num_svs", arg: 9, scope: !1153, file: !678, line: 686, type: !168)
!1166 = !DILocation(line: 0, scope: !1153)
!1167 = !DILocation(line: 691, column: 12, scope: !1153)
!1168 = !DILocation(line: 691, column: 5, scope: !1153)
!1169 = distinct !DISubprogram(name: "Perl_do_binmode", scope: !678, file: !678, line: 696, type: !1170, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!86, !209, !86, !86}
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DILocalVariable(name: "fp", arg: 1, scope: !1169, file: !678, line: 696, type: !209)
!1174 = !DILocalVariable(name: "iotype", arg: 2, scope: !1169, file: !678, line: 696, type: !86)
!1175 = !DILocalVariable(name: "mode", arg: 3, scope: !1169, file: !678, line: 696, type: !86)
!1176 = !DILocalVariable(name: "name", scope: !1169, file: !678, line: 701, type: !464)
!1177 = !DILocation(line: 0, scope: !1169)
!1178 = !DILocation(line: 709, column: 9, scope: !1169)
!1179 = !DILocation(line: 709, column: 2, scope: !1169)
!1180 = !DISubprogram(name: "PerlIO_binmode", scope: !211, file: !211, line: 345, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!86, !209, !86, !86, !464}
!1183 = distinct !DISubprogram(name: "Perl_do_aexec", scope: !678, file: !678, line: 714, type: !1184, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!353, !87, !153, !153}
!1186 = !{!1187, !1188, !1189}
!1187 = !DILocalVariable(name: "really", arg: 1, scope: !1183, file: !678, line: 714, type: !87)
!1188 = !DILocalVariable(name: "mark", arg: 2, scope: !1183, file: !678, line: 714, type: !153)
!1189 = !DILocalVariable(name: "sp", arg: 3, scope: !1183, file: !678, line: 714, type: !153)
!1190 = !DILocation(line: 0, scope: !1183)
!1191 = !DILocation(line: 718, column: 12, scope: !1183)
!1192 = !DILocation(line: 718, column: 5, scope: !1183)
!1193 = !DISubprogram(name: "Perl_do_aexec5", scope: !688, file: !688, line: 935, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!353, !87, !153, !153, !86, !86}
!1196 = distinct !DISubprogram(name: "Perl_init_i18nl14n", scope: !678, file: !678, line: 724, type: !1197, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!86, !86}
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "printwarn", arg: 1, scope: !1196, file: !678, line: 724, type: !86)
!1201 = !DILocation(line: 0, scope: !1196)
!1202 = !DILocation(line: 726, column: 12, scope: !1196)
!1203 = !DILocation(line: 726, column: 5, scope: !1196)
!1204 = !DISubprogram(name: "Perl_init_i18nl10n", scope: !688, file: !688, line: 1829, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1205 = distinct !DISubprogram(name: "Perl_is_utf8_string_loc", scope: !678, file: !678, line: 730, type: !1206, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1209)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!353, !667, !119, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1209 = !{!1210, !1211, !1212}
!1210 = !DILocalVariable(name: "s", arg: 1, scope: !1205, file: !678, line: 730, type: !667)
!1211 = !DILocalVariable(name: "len", arg: 2, scope: !1205, file: !678, line: 730, type: !119)
!1212 = !DILocalVariable(name: "ep", arg: 3, scope: !1205, file: !678, line: 730, type: !1208)
!1213 = !DILocation(line: 0, scope: !1205)
!1214 = !DILocation(line: 735, column: 12, scope: !1205)
!1215 = !DILocation(line: 735, column: 5, scope: !1205)
!1216 = !DISubprogram(name: "Perl_is_utf8_string_loclen", scope: !688, file: !688, line: 2189, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!353, !667, !119, !1208, !749}
!1219 = distinct !DISubprogram(name: "Perl_sv_nolocking", scope: !678, file: !678, line: 751, type: !693, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1220)
!1220 = !{!1221}
!1221 = !DILocalVariable(name: "sv", arg: 1, scope: !1219, file: !678, line: 751, type: !87)
!1222 = !DILocation(line: 0, scope: !1219)
!1223 = !DILocation(line: 755, column: 1, scope: !1219)
!1224 = distinct !DISubprogram(name: "Perl_sv_nounlocking", scope: !678, file: !678, line: 771, type: !693, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1225)
!1225 = !{!1226}
!1226 = !DILocalVariable(name: "sv", arg: 1, scope: !1224, file: !678, line: 771, type: !87)
!1227 = !DILocation(line: 0, scope: !1224)
!1228 = !DILocation(line: 775, column: 1, scope: !1224)
!1229 = distinct !DISubprogram(name: "Perl_save_long", scope: !678, file: !678, line: 778, type: !1230, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1233)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1233 = !{!1234}
!1234 = !DILocalVariable(name: "longp", arg: 1, scope: !1229, file: !678, line: 778, type: !1232)
!1235 = !DILocation(line: 0, scope: !1229)
!1236 = !DILocation(line: 782, column: 5, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1229, file: !678, line: 782, column: 5)
!1238 = !DILocation(line: 782, column: 5, scope: !1229)
!1239 = !DILocation(line: 783, column: 5, scope: !1229)
!1240 = !DILocation(line: 784, column: 5, scope: !1229)
!1241 = !DILocation(line: 785, column: 5, scope: !1229)
!1242 = !DILocation(line: 786, column: 1, scope: !1229)
!1243 = !DISubprogram(name: "Perl_savestack_grow", scope: !688, file: !688, line: 3978, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null}
!1246 = distinct !DISubprogram(name: "Perl_save_iv", scope: !678, file: !678, line: 789, type: !1247, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1250)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1250 = !{!1251}
!1251 = !DILocalVariable(name: "ivp", arg: 1, scope: !1246, file: !678, line: 789, type: !1249)
!1252 = !DILocation(line: 0, scope: !1246)
!1253 = !DILocation(line: 793, column: 5, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1246, file: !678, line: 793, column: 5)
!1255 = !DILocation(line: 793, column: 5, scope: !1246)
!1256 = !DILocation(line: 794, column: 5, scope: !1246)
!1257 = !DILocation(line: 795, column: 5, scope: !1246)
!1258 = !DILocation(line: 796, column: 5, scope: !1246)
!1259 = !DILocation(line: 797, column: 1, scope: !1246)
!1260 = distinct !DISubprogram(name: "Perl_save_nogv", scope: !678, file: !678, line: 800, type: !1261, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !229}
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "gv", arg: 1, scope: !1260, file: !678, line: 800, type: !229)
!1265 = !DILocation(line: 0, scope: !1260)
!1266 = !DILocation(line: 804, column: 5, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1260, file: !678, line: 804, column: 5)
!1268 = !DILocation(line: 804, column: 5, scope: !1260)
!1269 = !DILocation(line: 805, column: 5, scope: !1260)
!1270 = !DILocation(line: 806, column: 5, scope: !1260)
!1271 = !DILocation(line: 807, column: 1, scope: !1260)
!1272 = distinct !DISubprogram(name: "Perl_save_list", scope: !678, file: !678, line: 810, type: !1273, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !153, !168}
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DILocalVariable(name: "sarg", arg: 1, scope: !1272, file: !678, line: 810, type: !153)
!1277 = !DILocalVariable(name: "maxsarg", arg: 2, scope: !1272, file: !678, line: 810, type: !168)
!1278 = !DILocalVariable(name: "i", scope: !1272, file: !678, line: 812, type: !168)
!1279 = !DILocalVariable(name: "sv", scope: !1280, file: !678, line: 817, type: !87)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !678, line: 816, column: 36)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !678, line: 816, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1272, file: !678, line: 816, column: 5)
!1283 = !DILocation(line: 0, scope: !1272)
!1284 = !DILocation(line: 816, column: 19, scope: !1281)
!1285 = !DILocation(line: 816, column: 5, scope: !1282)
!1286 = !DILocation(line: 818, column: 2, scope: !1280)
!1287 = !DILocation(line: 819, column: 7, scope: !1280)
!1288 = !DILocation(line: 0, scope: !1280)
!1289 = !DILocation(line: 820, column: 2, scope: !1280)
!1290 = !DILocation(line: 821, column: 2, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1280, file: !678, line: 821, column: 2)
!1292 = !DILocation(line: 821, column: 2, scope: !1280)
!1293 = !DILocation(line: 822, column: 2, scope: !1280)
!1294 = !DILocation(line: 823, column: 2, scope: !1280)
!1295 = !DILocation(line: 824, column: 2, scope: !1280)
!1296 = !DILocation(line: 816, column: 32, scope: !1281)
!1297 = distinct !{!1297, !1285, !1298, !1299, !1300}
!1298 = !DILocation(line: 825, column: 5, scope: !1282)
!1299 = !{!"llvm.loop.mustprogress"}
!1300 = !{!"llvm.loop.unroll.disable"}
!1301 = !DILocation(line: 826, column: 1, scope: !1272)
!1302 = !DISubprogram(name: "Perl_mg_get", scope: !688, file: !688, line: 2670, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!86, !87}
!1305 = !DISubprogram(name: "Perl_newSV", scope: !688, file: !688, line: 3055, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!87, !816}
!1308 = distinct !DISubprogram(name: "Perl_sv_usepvn_mg", scope: !678, file: !678, line: 837, type: !1309, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !87, !101, !119}
!1311 = !{!1312, !1313, !1314}
!1312 = !DILocalVariable(name: "sv", arg: 1, scope: !1308, file: !678, line: 837, type: !87)
!1313 = !DILocalVariable(name: "ptr", arg: 2, scope: !1308, file: !678, line: 837, type: !101)
!1314 = !DILocalVariable(name: "len", arg: 3, scope: !1308, file: !678, line: 837, type: !119)
!1315 = !DILocation(line: 0, scope: !1308)
!1316 = !DILocation(line: 841, column: 5, scope: !1308)
!1317 = !DILocation(line: 842, column: 1, scope: !1308)
!1318 = !DISubprogram(name: "Perl_sv_usepvn_flags", scope: !688, file: !688, line: 4757, type: !1319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !453, !101, !816, !466}
!1321 = distinct !DISubprogram(name: "Perl_sv_usepvn", scope: !678, file: !678, line: 855, type: !1309, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DILocalVariable(name: "sv", arg: 1, scope: !1321, file: !678, line: 855, type: !87)
!1324 = !DILocalVariable(name: "ptr", arg: 2, scope: !1321, file: !678, line: 855, type: !101)
!1325 = !DILocalVariable(name: "len", arg: 3, scope: !1321, file: !678, line: 855, type: !119)
!1326 = !DILocation(line: 0, scope: !1321)
!1327 = !DILocation(line: 859, column: 5, scope: !1321)
!1328 = !DILocation(line: 860, column: 1, scope: !1321)
!1329 = distinct !DISubprogram(name: "Perl_unpack_str", scope: !678, file: !678, line: 872, type: !1330, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!168, !464, !464, !464, !464, !464, !472, !168, !94}
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1333 = !DILocalVariable(name: "pat", arg: 1, scope: !1329, file: !678, line: 872, type: !464)
!1334 = !DILocalVariable(name: "patend", arg: 2, scope: !1329, file: !678, line: 872, type: !464)
!1335 = !DILocalVariable(name: "s", arg: 3, scope: !1329, file: !678, line: 872, type: !464)
!1336 = !DILocalVariable(name: "strbeg", arg: 4, scope: !1329, file: !678, line: 873, type: !464)
!1337 = !DILocalVariable(name: "strend", arg: 5, scope: !1329, file: !678, line: 873, type: !464)
!1338 = !DILocalVariable(name: "new_s", arg: 6, scope: !1329, file: !678, line: 873, type: !472)
!1339 = !DILocalVariable(name: "ocnt", arg: 7, scope: !1329, file: !678, line: 873, type: !168)
!1340 = !DILocalVariable(name: "flags", arg: 8, scope: !1329, file: !678, line: 874, type: !94)
!1341 = !DILocation(line: 0, scope: !1329)
!1342 = !DILocation(line: 882, column: 12, scope: !1329)
!1343 = !DILocation(line: 882, column: 5, scope: !1329)
!1344 = !DISubprogram(name: "Perl_unpackstring", scope: !688, file: !688, line: 4968, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!168, !464, !464, !464, !464, !94}
!1347 = distinct !DISubprogram(name: "Perl_pack_cat", scope: !678, file: !678, line: 896, type: !1348, scopeLine: 897, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1351)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !87, !464, !464, !153, !153, !1350, !94}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1352 = !DILocalVariable(name: "cat", arg: 1, scope: !1347, file: !678, line: 896, type: !87)
!1353 = !DILocalVariable(name: "pat", arg: 2, scope: !1347, file: !678, line: 896, type: !464)
!1354 = !DILocalVariable(name: "patend", arg: 3, scope: !1347, file: !678, line: 896, type: !464)
!1355 = !DILocalVariable(name: "beglist", arg: 4, scope: !1347, file: !678, line: 896, type: !153)
!1356 = !DILocalVariable(name: "endlist", arg: 5, scope: !1347, file: !678, line: 896, type: !153)
!1357 = !DILocalVariable(name: "next_in_list", arg: 6, scope: !1347, file: !678, line: 896, type: !1350)
!1358 = !DILocalVariable(name: "flags", arg: 7, scope: !1347, file: !678, line: 896, type: !94)
!1359 = !DILocation(line: 0, scope: !1347)
!1360 = !DILocation(line: 903, column: 5, scope: !1347)
!1361 = !DILocation(line: 904, column: 1, scope: !1347)
!1362 = !DISubprogram(name: "Perl_packlist", scope: !688, file: !688, line: 3295, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !87, !464, !464, !153, !153}
!1365 = distinct !DISubprogram(name: "Perl_hv_store_ent", scope: !678, file: !678, line: 907, type: !1366, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!156, !56, !87, !87, !94}
!1368 = !{!1369, !1370, !1371, !1372}
!1369 = !DILocalVariable(name: "hv", arg: 1, scope: !1365, file: !678, line: 907, type: !56)
!1370 = !DILocalVariable(name: "keysv", arg: 2, scope: !1365, file: !678, line: 907, type: !87)
!1371 = !DILocalVariable(name: "val", arg: 3, scope: !1365, file: !678, line: 907, type: !87)
!1372 = !DILocalVariable(name: "hash", arg: 4, scope: !1365, file: !678, line: 907, type: !94)
!1373 = !DILocation(line: 0, scope: !1365)
!1374 = !DILocation(line: 909, column: 16, scope: !1365)
!1375 = !DILocation(line: 909, column: 3, scope: !1365)
!1376 = !DISubprogram(name: "Perl_hv_common", scope: !688, file: !688, line: 1626, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!92, !56, !87, !464, !119, !86, !86, !87, !94}
!1379 = distinct !DISubprogram(name: "Perl_hv_exists_ent", scope: !678, file: !678, line: 913, type: !1380, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!353, !56, !87, !94}
!1382 = !{!1383, !1384, !1385}
!1383 = !DILocalVariable(name: "hv", arg: 1, scope: !1379, file: !678, line: 913, type: !56)
!1384 = !DILocalVariable(name: "keysv", arg: 2, scope: !1379, file: !678, line: 913, type: !87)
!1385 = !DILocalVariable(name: "hash", arg: 3, scope: !1379, file: !678, line: 913, type: !94)
!1386 = !DILocation(line: 0, scope: !1379)
!1387 = !DILocation(line: 917, column: 12, scope: !1379)
!1388 = !DILocation(line: 917, column: 5, scope: !1379)
!1389 = distinct !DISubprogram(name: "Perl_hv_fetch_ent", scope: !678, file: !678, line: 922, type: !1390, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!156, !56, !87, !168, !94}
!1392 = !{!1393, !1394, !1395, !1396}
!1393 = !DILocalVariable(name: "hv", arg: 1, scope: !1389, file: !678, line: 922, type: !56)
!1394 = !DILocalVariable(name: "keysv", arg: 2, scope: !1389, file: !678, line: 922, type: !87)
!1395 = !DILocalVariable(name: "lval", arg: 3, scope: !1389, file: !678, line: 922, type: !168)
!1396 = !DILocalVariable(name: "hash", arg: 4, scope: !1389, file: !678, line: 922, type: !94)
!1397 = !DILocation(line: 0, scope: !1389)
!1398 = !DILocation(line: 926, column: 18, scope: !1389)
!1399 = !DILocation(line: 926, column: 5, scope: !1389)
!1400 = distinct !DISubprogram(name: "Perl_hv_delete_ent", scope: !678, file: !678, line: 931, type: !1401, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!87, !56, !87, !168, !94}
!1403 = !{!1404, !1405, !1406, !1407}
!1404 = !DILocalVariable(name: "hv", arg: 1, scope: !1400, file: !678, line: 931, type: !56)
!1405 = !DILocalVariable(name: "keysv", arg: 2, scope: !1400, file: !678, line: 931, type: !87)
!1406 = !DILocalVariable(name: "flags", arg: 3, scope: !1400, file: !678, line: 931, type: !168)
!1407 = !DILocalVariable(name: "hash", arg: 4, scope: !1400, file: !678, line: 931, type: !94)
!1408 = !DILocation(line: 0, scope: !1400)
!1409 = !DILocation(line: 935, column: 12, scope: !1400)
!1410 = !DILocation(line: 935, column: 5, scope: !1400)
!1411 = distinct !DISubprogram(name: "Perl_hv_store_flags", scope: !678, file: !678, line: 940, type: !1412, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!153, !56, !464, !168, !87, !94, !86}
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420}
!1415 = !DILocalVariable(name: "hv", arg: 1, scope: !1411, file: !678, line: 940, type: !56)
!1416 = !DILocalVariable(name: "key", arg: 2, scope: !1411, file: !678, line: 940, type: !464)
!1417 = !DILocalVariable(name: "klen", arg: 3, scope: !1411, file: !678, line: 940, type: !168)
!1418 = !DILocalVariable(name: "val", arg: 4, scope: !1411, file: !678, line: 940, type: !87)
!1419 = !DILocalVariable(name: "hash", arg: 5, scope: !1411, file: !678, line: 940, type: !94)
!1420 = !DILocalVariable(name: "flags", arg: 6, scope: !1411, file: !678, line: 941, type: !86)
!1421 = !DILocation(line: 0, scope: !1411)
!1422 = !DILocation(line: 943, column: 19, scope: !1411)
!1423 = !DILocation(line: 943, column: 5, scope: !1411)
!1424 = distinct !DISubprogram(name: "Perl_hv_store", scope: !678, file: !678, line: 948, type: !1425, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!153, !56, !464, !168, !87, !94}
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1428 = !DILocalVariable(name: "hv", arg: 1, scope: !1424, file: !678, line: 948, type: !56)
!1429 = !DILocalVariable(name: "key", arg: 2, scope: !1424, file: !678, line: 948, type: !464)
!1430 = !DILocalVariable(name: "klen_i32", arg: 3, scope: !1424, file: !678, line: 948, type: !168)
!1431 = !DILocalVariable(name: "val", arg: 4, scope: !1424, file: !678, line: 948, type: !87)
!1432 = !DILocalVariable(name: "hash", arg: 5, scope: !1424, file: !678, line: 948, type: !94)
!1433 = !DILocalVariable(name: "klen", scope: !1424, file: !678, line: 950, type: !119)
!1434 = !DILocalVariable(name: "flags", scope: !1424, file: !678, line: 951, type: !86)
!1435 = !DILocation(line: 0, scope: !1424)
!1436 = !DILocation(line: 953, column: 9, scope: !1424)
!1437 = !DILocation(line: 0, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1424, file: !678, line: 953, column: 9)
!1439 = !DILocation(line: 960, column: 20, scope: !1424)
!1440 = !DILocation(line: 960, column: 5, scope: !1424)
!1441 = distinct !DISubprogram(name: "Perl_hv_exists", scope: !678, file: !678, line: 965, type: !1442, scopeLine: 966, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!353, !56, !464, !168}
!1444 = !{!1445, !1446, !1447, !1448, !1449}
!1445 = !DILocalVariable(name: "hv", arg: 1, scope: !1441, file: !678, line: 965, type: !56)
!1446 = !DILocalVariable(name: "key", arg: 2, scope: !1441, file: !678, line: 965, type: !464)
!1447 = !DILocalVariable(name: "klen_i32", arg: 3, scope: !1441, file: !678, line: 965, type: !168)
!1448 = !DILocalVariable(name: "klen", scope: !1441, file: !678, line: 967, type: !119)
!1449 = !DILocalVariable(name: "flags", scope: !1441, file: !678, line: 968, type: !86)
!1450 = !DILocation(line: 0, scope: !1441)
!1451 = !DILocation(line: 972, column: 9, scope: !1441)
!1452 = !DILocation(line: 0, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1441, file: !678, line: 972, column: 9)
!1454 = !DILocation(line: 979, column: 12, scope: !1441)
!1455 = !DILocation(line: 979, column: 5, scope: !1441)
!1456 = distinct !DISubprogram(name: "Perl_hv_fetch", scope: !678, file: !678, line: 984, type: !1457, scopeLine: 985, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!153, !56, !464, !168, !168}
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465}
!1460 = !DILocalVariable(name: "hv", arg: 1, scope: !1456, file: !678, line: 984, type: !56)
!1461 = !DILocalVariable(name: "key", arg: 2, scope: !1456, file: !678, line: 984, type: !464)
!1462 = !DILocalVariable(name: "klen_i32", arg: 3, scope: !1456, file: !678, line: 984, type: !168)
!1463 = !DILocalVariable(name: "lval", arg: 4, scope: !1456, file: !678, line: 984, type: !168)
!1464 = !DILocalVariable(name: "klen", scope: !1456, file: !678, line: 986, type: !119)
!1465 = !DILocalVariable(name: "flags", scope: !1456, file: !678, line: 987, type: !86)
!1466 = !DILocation(line: 0, scope: !1456)
!1467 = !DILocation(line: 991, column: 9, scope: !1456)
!1468 = !DILocation(line: 0, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1456, file: !678, line: 991, column: 9)
!1470 = !DILocation(line: 998, column: 20, scope: !1456)
!1471 = !DILocation(line: 998, column: 5, scope: !1456)
!1472 = distinct !DISubprogram(name: "Perl_hv_delete", scope: !678, file: !678, line: 1004, type: !1473, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!87, !56, !464, !168, !168}
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481}
!1476 = !DILocalVariable(name: "hv", arg: 1, scope: !1472, file: !678, line: 1004, type: !56)
!1477 = !DILocalVariable(name: "key", arg: 2, scope: !1472, file: !678, line: 1004, type: !464)
!1478 = !DILocalVariable(name: "klen_i32", arg: 3, scope: !1472, file: !678, line: 1004, type: !168)
!1479 = !DILocalVariable(name: "flags", arg: 4, scope: !1472, file: !678, line: 1004, type: !168)
!1480 = !DILocalVariable(name: "klen", scope: !1472, file: !678, line: 1006, type: !119)
!1481 = !DILocalVariable(name: "k_flags", scope: !1472, file: !678, line: 1007, type: !86)
!1482 = !DILocation(line: 0, scope: !1472)
!1483 = !DILocation(line: 1011, column: 9, scope: !1472)
!1484 = !DILocation(line: 0, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1472, file: !678, line: 1011, column: 9)
!1486 = !DILocation(line: 1018, column: 12, scope: !1472)
!1487 = !DILocation(line: 1018, column: 5, scope: !1472)
!1488 = distinct !DISubprogram(name: "Perl_newAV", scope: !678, file: !678, line: 1023, type: !1489, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!446}
!1491 = !DILocation(line: 1025, column: 12, scope: !1488)
!1492 = !DILocation(line: 1025, column: 5, scope: !1488)
!1493 = !DISubprogram(name: "Perl_newSV_type", scope: !688, file: !688, line: 3073, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!87, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !4, line: 153, baseType: !3)
!1498 = distinct !DISubprogram(name: "Perl_newHV", scope: !678, file: !678, line: 1033, type: !1499, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!56}
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "hv", scope: !1498, file: !678, line: 1035, type: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1504 = !DILocation(line: 1035, column: 21, scope: !1498)
!1505 = !DILocation(line: 0, scope: !1498)
!1506 = !DILocation(line: 1038, column: 5, scope: !1498)
!1507 = distinct !DISubprogram(name: "Perl_sv_insert", scope: !678, file: !678, line: 1042, type: !1508, scopeLine: 1044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !453, !816, !816, !463, !816}
!1510 = !{!1511, !1512, !1513, !1514, !1515}
!1511 = !DILocalVariable(name: "bigstr", arg: 1, scope: !1507, file: !678, line: 1042, type: !453)
!1512 = !DILocalVariable(name: "offset", arg: 2, scope: !1507, file: !678, line: 1042, type: !816)
!1513 = !DILocalVariable(name: "len", arg: 3, scope: !1507, file: !678, line: 1042, type: !816)
!1514 = !DILocalVariable(name: "little", arg: 4, scope: !1507, file: !678, line: 1043, type: !463)
!1515 = !DILocalVariable(name: "littlelen", arg: 5, scope: !1507, file: !678, line: 1043, type: !816)
!1516 = !DILocation(line: 0, scope: !1507)
!1517 = !DILocation(line: 1046, column: 5, scope: !1507)
!1518 = !DILocation(line: 1047, column: 1, scope: !1507)
!1519 = !DISubprogram(name: "Perl_sv_insert_flags", scope: !688, file: !688, line: 4402, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !453, !816, !816, !463, !816, !466}
!1522 = distinct !DISubprogram(name: "Perl_save_freesv", scope: !678, file: !678, line: 1050, type: !693, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1523)
!1523 = !{!1524}
!1524 = !DILocalVariable(name: "sv", arg: 1, scope: !1522, file: !678, line: 1050, type: !87)
!1525 = !DILocation(line: 0, scope: !1522)
!1526 = !DILocation(line: 1052, column: 5, scope: !1522)
!1527 = !DILocation(line: 1053, column: 1, scope: !1522)
!1528 = !DISubprogram(name: "Perl_save_pushptr", scope: !688, file: !688, line: 3917, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1531, !712}
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!1532 = distinct !DISubprogram(name: "Perl_save_mortalizesv", scope: !678, file: !678, line: 1056, type: !693, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1533)
!1533 = !{!1534}
!1534 = !DILocalVariable(name: "sv", arg: 1, scope: !1532, file: !678, line: 1056, type: !87)
!1535 = !DILocation(line: 0, scope: !1532)
!1536 = !DILocation(line: 1060, column: 5, scope: !1532)
!1537 = !DILocation(line: 1061, column: 1, scope: !1532)
!1538 = distinct !DISubprogram(name: "Perl_save_freeop", scope: !678, file: !678, line: 1064, type: !1539, scopeLine: 1065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !319}
!1541 = !{!1542, !1543}
!1542 = !DILocalVariable(name: "o", arg: 1, scope: !1538, file: !678, line: 1064, type: !319)
!1543 = !DILocalVariable(name: "_o", scope: !1544, file: !678, line: 1066, type: !1545)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !678, line: 1066, column: 5)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!1546 = !DILocation(line: 0, scope: !1538)
!1547 = !DILocation(line: 0, scope: !1544)
!1548 = !DILocation(line: 1066, column: 5, scope: !1544)
!1549 = !DILocation(line: 1067, column: 1, scope: !1538)
!1550 = distinct !DISubprogram(name: "Perl_save_freepv", scope: !678, file: !678, line: 1070, type: !1551, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !101}
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "pv", arg: 1, scope: !1550, file: !678, line: 1070, type: !101)
!1555 = !DILocation(line: 0, scope: !1550)
!1556 = !DILocation(line: 1072, column: 5, scope: !1550)
!1557 = !DILocation(line: 1073, column: 1, scope: !1550)
!1558 = distinct !DISubprogram(name: "Perl_save_op", scope: !678, file: !678, line: 1076, type: !1244, scopeLine: 1077, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!1559 = !DILocation(line: 1078, column: 5, scope: !1558)
!1560 = !DILocation(line: 1079, column: 1, scope: !1558)
!1561 = distinct !DISubprogram(name: "Perl_gv_SVadd", scope: !678, file: !678, line: 1083, type: !1562, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!229, !229}
!1564 = !{!1565}
!1565 = !DILocalVariable(name: "gv", arg: 1, scope: !1561, file: !678, line: 1083, type: !229)
!1566 = !DILocation(line: 0, scope: !1561)
!1567 = !DILocation(line: 1085, column: 12, scope: !1561)
!1568 = !DILocation(line: 1085, column: 5, scope: !1561)
!1569 = !DISubprogram(name: "Perl_gv_add_by_type", scope: !688, file: !688, line: 1391, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!229, !229, !1497}
!1572 = distinct !DISubprogram(name: "Perl_gv_AVadd", scope: !678, file: !678, line: 1090, type: !1562, scopeLine: 1091, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1573)
!1573 = !{!1574}
!1574 = !DILocalVariable(name: "gv", arg: 1, scope: !1572, file: !678, line: 1090, type: !229)
!1575 = !DILocation(line: 0, scope: !1572)
!1576 = !DILocation(line: 1092, column: 12, scope: !1572)
!1577 = !DILocation(line: 1092, column: 5, scope: !1572)
!1578 = distinct !DISubprogram(name: "Perl_gv_HVadd", scope: !678, file: !678, line: 1096, type: !1562, scopeLine: 1097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1579)
!1579 = !{!1580}
!1580 = !DILocalVariable(name: "gv", arg: 1, scope: !1578, file: !678, line: 1096, type: !229)
!1581 = !DILocation(line: 0, scope: !1578)
!1582 = !DILocation(line: 1098, column: 12, scope: !1578)
!1583 = !DILocation(line: 1098, column: 5, scope: !1578)
!1584 = distinct !DISubprogram(name: "Perl_gv_IOadd", scope: !678, file: !678, line: 1102, type: !1562, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1585)
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "gv", arg: 1, scope: !1584, file: !678, line: 1102, type: !229)
!1587 = !DILocation(line: 0, scope: !1584)
!1588 = !DILocation(line: 1104, column: 12, scope: !1584)
!1589 = !DILocation(line: 1104, column: 5, scope: !1584)
!1590 = distinct !DISubprogram(name: "Perl_newIO", scope: !678, file: !678, line: 1108, type: !1591, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!665}
!1593 = !DILocation(line: 1110, column: 12, scope: !1590)
!1594 = !DILocation(line: 1110, column: 5, scope: !1590)
!1595 = distinct !DISubprogram(name: "Perl_my_stat", scope: !678, file: !678, line: 1114, type: !1596, scopeLine: 1115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!168}
!1598 = !DILocation(line: 1116, column: 12, scope: !1595)
!1599 = !DILocation(line: 1116, column: 5, scope: !1595)
!1600 = !DISubprogram(name: "Perl_my_stat_flags", scope: !688, file: !688, line: 2817, type: !1601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!168, !466}
!1603 = distinct !DISubprogram(name: "Perl_my_lstat", scope: !678, file: !678, line: 1120, type: !1596, scopeLine: 1121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!1604 = !DILocation(line: 1122, column: 12, scope: !1603)
!1605 = !DILocation(line: 1122, column: 5, scope: !1603)
!1606 = !DISubprogram(name: "Perl_my_lstat_flags", scope: !688, file: !688, line: 2800, type: !1601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1607 = distinct !DISubprogram(name: "Perl_sv_eq", scope: !678, file: !678, line: 1126, type: !1608, scopeLine: 1127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!168, !87, !87}
!1610 = !{!1611, !1612}
!1611 = !DILocalVariable(name: "sv1", arg: 1, scope: !1607, file: !678, line: 1126, type: !87)
!1612 = !DILocalVariable(name: "sv2", arg: 2, scope: !1607, file: !678, line: 1126, type: !87)
!1613 = !DILocation(line: 0, scope: !1607)
!1614 = !DILocation(line: 1128, column: 12, scope: !1607)
!1615 = !DILocation(line: 1128, column: 5, scope: !1607)
!1616 = !DISubprogram(name: "Perl_sv_eq_flags", scope: !688, file: !688, line: 4359, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!168, !87, !87, !466}
!1619 = distinct !DISubprogram(name: "Perl_sv_2bool", scope: !678, file: !678, line: 1140, type: !1620, scopeLine: 1141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!353, !453}
!1622 = !{!1623}
!1623 = !DILocalVariable(name: "sv", arg: 1, scope: !1619, file: !678, line: 1140, type: !453)
!1624 = !DILocation(line: 0, scope: !1619)
!1625 = !DILocation(line: 1142, column: 12, scope: !1619)
!1626 = !DILocation(line: 1142, column: 5, scope: !1619)
!1627 = !DISubprogram(name: "Perl_sv_2bool_flags", scope: !688, file: !688, line: 4088, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!353, !87, !168}
!1630 = distinct !DISubprogram(name: "Perl_custom_op_name", scope: !678, file: !678, line: 1161, type: !1631, scopeLine: 1162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1635)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!464, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "o", arg: 1, scope: !1630, file: !678, line: 1161, type: !1633)
!1637 = !DILocation(line: 0, scope: !1630)
!1638 = !DILocation(line: 1164, column: 12, scope: !1630)
!1639 = !DILocation(line: 1164, column: 5, scope: !1630)
!1640 = !DISubprogram(name: "Perl_custom_op_get_field", scope: !688, file: !688, line: 777, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1643, !1633, !1663}
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "XOPRETANY", file: !25, line: 857, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !25, line: 851, size: 64, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1653}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "xop_name", scope: !1644, file: !25, line: 852, baseType: !464, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "xop_desc", scope: !1644, file: !25, line: 853, baseType: !464, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "xop_class", scope: !1644, file: !25, line: 854, baseType: !94, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "xop_peep", scope: !1644, file: !25, line: 855, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !319, !319}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "xop_ptr", scope: !1644, file: !25, line: 856, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "XOP", file: !49, line: 2637, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "custom_op", file: !25, line: 840, size: 320, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "xop_flags", scope: !1656, file: !25, line: 841, baseType: !94, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "xop_name", scope: !1656, file: !25, line: 842, baseType: !464, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "xop_desc", scope: !1656, file: !25, line: 843, baseType: !464, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "xop_class", scope: !1656, file: !25, line: 844, baseType: !94, size: 32, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "xop_peep", scope: !1656, file: !25, line: 845, baseType: !1650, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "xop_flags_enum", file: !25, line: 873, baseType: !24)
!1665 = distinct !DISubprogram(name: "Perl_custom_op_desc", scope: !678, file: !678, line: 1168, type: !1631, scopeLine: 1169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1666)
!1666 = !{!1667}
!1667 = !DILocalVariable(name: "o", arg: 1, scope: !1665, file: !678, line: 1168, type: !1633)
!1668 = !DILocation(line: 0, scope: !1665)
!1669 = !DILocation(line: 1171, column: 12, scope: !1665)
!1670 = !DILocation(line: 1171, column: 5, scope: !1665)
!1671 = distinct !DISubprogram(name: "Perl_newSUB", scope: !678, file: !678, line: 1175, type: !1672, scopeLine: 1176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!296, !168, !319, !319, !319}
!1674 = !{!1675, !1676, !1677, !1678}
!1675 = !DILocalVariable(name: "floor", arg: 1, scope: !1671, file: !678, line: 1175, type: !168)
!1676 = !DILocalVariable(name: "o", arg: 2, scope: !1671, file: !678, line: 1175, type: !319)
!1677 = !DILocalVariable(name: "proto", arg: 3, scope: !1671, file: !678, line: 1175, type: !319)
!1678 = !DILocalVariable(name: "block", arg: 4, scope: !1671, file: !678, line: 1175, type: !319)
!1679 = !DILocation(line: 0, scope: !1671)
!1680 = !DILocation(line: 1177, column: 12, scope: !1671)
!1681 = !DILocation(line: 1177, column: 5, scope: !1671)
!1682 = !DISubprogram(name: "Perl_newATTRSUB_x", scope: !688, file: !688, line: 2847, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!296, !168, !319, !319, !319, !319, !353}
!1685 = distinct !DISubprogram(name: "Perl_to_utf8_fold", scope: !678, file: !678, line: 1181, type: !1686, scopeLine: 1182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!105, !667, !669, !749}
!1688 = !{!1689, !1690, !1691}
!1689 = !DILocalVariable(name: "p", arg: 1, scope: !1685, file: !678, line: 1181, type: !667)
!1690 = !DILocalVariable(name: "ustrp", arg: 2, scope: !1685, file: !678, line: 1181, type: !669)
!1691 = !DILocalVariable(name: "lenp", arg: 3, scope: !1685, file: !678, line: 1181, type: !749)
!1692 = !DILocation(line: 0, scope: !1685)
!1693 = !DILocation(line: 1185, column: 12, scope: !1685)
!1694 = !DILocation(line: 1185, column: 5, scope: !1685)
!1695 = !DISubprogram(name: "Perl__to_utf8_fold_flags", scope: !688, file: !688, line: 119, type: !1696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!105, !667, !669, !749, !278}
!1698 = distinct !DISubprogram(name: "Perl_to_utf8_lower", scope: !678, file: !678, line: 1189, type: !1686, scopeLine: 1190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DILocalVariable(name: "p", arg: 1, scope: !1698, file: !678, line: 1189, type: !667)
!1701 = !DILocalVariable(name: "ustrp", arg: 2, scope: !1698, file: !678, line: 1189, type: !669)
!1702 = !DILocalVariable(name: "lenp", arg: 3, scope: !1698, file: !678, line: 1189, type: !749)
!1703 = !DILocation(line: 0, scope: !1698)
!1704 = !DILocation(line: 1193, column: 12, scope: !1698)
!1705 = !DILocation(line: 1193, column: 5, scope: !1698)
!1706 = !DISubprogram(name: "Perl__to_utf8_lower_flags", scope: !688, file: !688, line: 125, type: !1707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!105, !667, !669, !749, !353}
!1709 = distinct !DISubprogram(name: "Perl_to_utf8_title", scope: !678, file: !678, line: 1197, type: !1686, scopeLine: 1198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DILocalVariable(name: "p", arg: 1, scope: !1709, file: !678, line: 1197, type: !667)
!1712 = !DILocalVariable(name: "ustrp", arg: 2, scope: !1709, file: !678, line: 1197, type: !669)
!1713 = !DILocalVariable(name: "lenp", arg: 3, scope: !1709, file: !678, line: 1197, type: !749)
!1714 = !DILocation(line: 0, scope: !1709)
!1715 = !DILocation(line: 1201, column: 12, scope: !1709)
!1716 = !DILocation(line: 1201, column: 5, scope: !1709)
!1717 = !DISubprogram(name: "Perl__to_utf8_title_flags", scope: !688, file: !688, line: 131, type: !1707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1718 = distinct !DISubprogram(name: "Perl_to_utf8_upper", scope: !678, file: !678, line: 1205, type: !1686, scopeLine: 1206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DILocalVariable(name: "p", arg: 1, scope: !1718, file: !678, line: 1205, type: !667)
!1721 = !DILocalVariable(name: "ustrp", arg: 2, scope: !1718, file: !678, line: 1205, type: !669)
!1722 = !DILocalVariable(name: "lenp", arg: 3, scope: !1718, file: !678, line: 1205, type: !749)
!1723 = !DILocation(line: 0, scope: !1718)
!1724 = !DILocation(line: 1209, column: 12, scope: !1718)
!1725 = !DILocation(line: 1209, column: 5, scope: !1718)
!1726 = !DISubprogram(name: "Perl__to_utf8_upper_flags", scope: !688, file: !688, line: 137, type: !1707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1727 = distinct !DISubprogram(name: "Perl_sv_mortalcopy", scope: !678, file: !678, line: 1213, type: !1728, scopeLine: 1214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!87, !453}
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "oldstr", arg: 1, scope: !1727, file: !678, line: 1213, type: !453)
!1732 = !DILocation(line: 0, scope: !1727)
!1733 = !DILocation(line: 1215, column: 12, scope: !1727)
!1734 = !DILocation(line: 1215, column: 5, scope: !1727)
!1735 = !DISubprogram(name: "Perl_sv_mortalcopy_flags", scope: !688, file: !688, line: 4445, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!87, !453, !94}
!1738 = distinct !DISubprogram(name: "Perl_sv_copypv", scope: !678, file: !678, line: 1219, type: !1739, scopeLine: 1220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !453, !453}
!1741 = !{!1742, !1743}
!1742 = !DILocalVariable(name: "dsv", arg: 1, scope: !1738, file: !678, line: 1219, type: !453)
!1743 = !DILocalVariable(name: "ssv", arg: 2, scope: !1738, file: !678, line: 1219, type: !453)
!1744 = !DILocation(line: 0, scope: !1738)
!1745 = !DILocation(line: 1223, column: 5, scope: !1738)
!1746 = !DILocation(line: 1224, column: 1, scope: !1738)
!1747 = !DISubprogram(name: "Perl_sv_copypv_flags", scope: !688, file: !688, line: 4278, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1748 = distinct !DISubprogram(name: "NATIVE_TO_NEED", scope: !678, file: !678, line: 1227, type: !1749, scopeLine: 1228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1752)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!105, !1751, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1752 = !{!1753, !1754}
!1753 = !DILocalVariable(name: "enc", arg: 1, scope: !1748, file: !678, line: 1227, type: !1751)
!1754 = !DILocalVariable(name: "ch", arg: 2, scope: !1748, file: !678, line: 1227, type: !1751)
!1755 = !DILocation(line: 0, scope: !1748)
!1756 = !DILocation(line: 1230, column: 5, scope: !1748)
!1757 = distinct !DISubprogram(name: "ASCII_TO_NEED", scope: !678, file: !678, line: 1234, type: !1749, scopeLine: 1235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1758)
!1758 = !{!1759, !1760}
!1759 = !DILocalVariable(name: "enc", arg: 1, scope: !1757, file: !678, line: 1234, type: !1751)
!1760 = !DILocalVariable(name: "ch", arg: 2, scope: !1757, file: !678, line: 1234, type: !1751)
!1761 = !DILocation(line: 0, scope: !1757)
!1762 = !DILocation(line: 1237, column: 5, scope: !1757)
!1763 = distinct !DISubprogram(name: "Perl_isIDFIRST_lazy", scope: !678, file: !678, line: 1241, type: !1764, scopeLine: 1242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!353, !464}
!1766 = !{!1767}
!1767 = !DILocalVariable(name: "p", arg: 1, scope: !1763, file: !678, line: 1241, type: !464)
!1768 = !DILocation(line: 0, scope: !1763)
!1769 = !DILocation(line: 1245, column: 12, scope: !1763)
!1770 = !DILocation(line: 1245, column: 5, scope: !1763)
!1771 = !DISubprogram(name: "Perl__is_utf8_perl_idstart", scope: !688, file: !688, line: 95, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!353, !667}
!1774 = distinct !DISubprogram(name: "Perl_isALNUM_lazy", scope: !678, file: !678, line: 1249, type: !1764, scopeLine: 1250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1775)
!1775 = !{!1776}
!1776 = !DILocalVariable(name: "p", arg: 1, scope: !1774, file: !678, line: 1249, type: !464)
!1777 = !DILocation(line: 0, scope: !1774)
!1778 = !DILocation(line: 1253, column: 12, scope: !1774)
!1779 = !DILocation(line: 1253, column: 5, scope: !1774)
!1780 = !DISubprogram(name: "Perl__is_utf8_FOO", scope: !688, file: !688, line: 58, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!353, !668, !667}
!1783 = distinct !DISubprogram(name: "Perl_is_uni_alnum", scope: !678, file: !678, line: 1257, type: !1784, scopeLine: 1258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!353, !105}
!1786 = !{!1787}
!1787 = !DILocalVariable(name: "c", arg: 1, scope: !1783, file: !678, line: 1257, type: !105)
!1788 = !DILocation(line: 0, scope: !1783)
!1789 = !DILocation(line: 1259, column: 12, scope: !1783)
!1790 = !DILocation(line: 1259, column: 5, scope: !1783)
!1791 = !DISubprogram(name: "Perl__is_uni_FOO", scope: !688, file: !688, line: 49, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!353, !668, !1751}
!1794 = distinct !DISubprogram(name: "Perl_is_uni_alnumc", scope: !678, file: !678, line: 1263, type: !1784, scopeLine: 1264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1795)
!1795 = !{!1796}
!1796 = !DILocalVariable(name: "c", arg: 1, scope: !1794, file: !678, line: 1263, type: !105)
!1797 = !DILocation(line: 0, scope: !1794)
!1798 = !DILocation(line: 1265, column: 12, scope: !1794)
!1799 = !DILocation(line: 1265, column: 5, scope: !1794)
!1800 = distinct !DISubprogram(name: "Perl_is_uni_alpha", scope: !678, file: !678, line: 1269, type: !1784, scopeLine: 1270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1801)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "c", arg: 1, scope: !1800, file: !678, line: 1269, type: !105)
!1803 = !DILocation(line: 0, scope: !1800)
!1804 = !DILocation(line: 1271, column: 12, scope: !1800)
!1805 = !DILocation(line: 1271, column: 5, scope: !1800)
!1806 = distinct !DISubprogram(name: "Perl_is_uni_ascii", scope: !678, file: !678, line: 1275, type: !1784, scopeLine: 1276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1807)
!1807 = !{!1808}
!1808 = !DILocalVariable(name: "c", arg: 1, scope: !1806, file: !678, line: 1275, type: !105)
!1809 = !DILocation(line: 0, scope: !1806)
!1810 = !DILocation(line: 1278, column: 12, scope: !1806)
!1811 = !DILocation(line: 1278, column: 5, scope: !1806)
!1812 = distinct !DISubprogram(name: "Perl_is_uni_blank", scope: !678, file: !678, line: 1282, type: !1784, scopeLine: 1283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1813)
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "c", arg: 1, scope: !1812, file: !678, line: 1282, type: !105)
!1815 = !DILocation(line: 0, scope: !1812)
!1816 = !DILocation(line: 1285, column: 12, scope: !1812)
!1817 = !DILocation(line: 1285, column: 5, scope: !1812)
!1818 = distinct !DISubprogram(name: "Perl_is_uni_space", scope: !678, file: !678, line: 1289, type: !1784, scopeLine: 1290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1819)
!1819 = !{!1820}
!1820 = !DILocalVariable(name: "c", arg: 1, scope: !1818, file: !678, line: 1289, type: !105)
!1821 = !DILocation(line: 0, scope: !1818)
!1822 = !DILocation(line: 1292, column: 12, scope: !1818)
!1823 = !DILocation(line: 1292, column: 5, scope: !1818)
!1824 = distinct !DISubprogram(name: "Perl_is_uni_digit", scope: !678, file: !678, line: 1296, type: !1784, scopeLine: 1297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1825)
!1825 = !{!1826}
!1826 = !DILocalVariable(name: "c", arg: 1, scope: !1824, file: !678, line: 1296, type: !105)
!1827 = !DILocation(line: 0, scope: !1824)
!1828 = !DILocation(line: 1299, column: 12, scope: !1824)
!1829 = !DILocation(line: 1299, column: 5, scope: !1824)
!1830 = distinct !DISubprogram(name: "Perl_is_uni_upper", scope: !678, file: !678, line: 1303, type: !1784, scopeLine: 1304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1831)
!1831 = !{!1832}
!1832 = !DILocalVariable(name: "c", arg: 1, scope: !1830, file: !678, line: 1303, type: !105)
!1833 = !DILocation(line: 0, scope: !1830)
!1834 = !DILocation(line: 1306, column: 12, scope: !1830)
!1835 = !DILocation(line: 1306, column: 5, scope: !1830)
!1836 = distinct !DISubprogram(name: "Perl_is_uni_lower", scope: !678, file: !678, line: 1310, type: !1784, scopeLine: 1311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1837)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "c", arg: 1, scope: !1836, file: !678, line: 1310, type: !105)
!1839 = !DILocation(line: 0, scope: !1836)
!1840 = !DILocation(line: 1313, column: 12, scope: !1836)
!1841 = !DILocation(line: 1313, column: 5, scope: !1836)
!1842 = distinct !DISubprogram(name: "Perl_is_uni_cntrl", scope: !678, file: !678, line: 1317, type: !1784, scopeLine: 1318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1843)
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "c", arg: 1, scope: !1842, file: !678, line: 1317, type: !105)
!1845 = !DILocation(line: 0, scope: !1842)
!1846 = !DILocation(line: 1320, column: 12, scope: !1842)
!1847 = !DILocation(line: 1320, column: 5, scope: !1842)
!1848 = distinct !DISubprogram(name: "Perl_is_uni_graph", scope: !678, file: !678, line: 1324, type: !1784, scopeLine: 1325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1849)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "c", arg: 1, scope: !1848, file: !678, line: 1324, type: !105)
!1851 = !DILocation(line: 0, scope: !1848)
!1852 = !DILocation(line: 1327, column: 12, scope: !1848)
!1853 = !DILocation(line: 1327, column: 5, scope: !1848)
!1854 = distinct !DISubprogram(name: "Perl_is_uni_print", scope: !678, file: !678, line: 1331, type: !1784, scopeLine: 1332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "c", arg: 1, scope: !1854, file: !678, line: 1331, type: !105)
!1857 = !DILocation(line: 0, scope: !1854)
!1858 = !DILocation(line: 1334, column: 12, scope: !1854)
!1859 = !DILocation(line: 1334, column: 5, scope: !1854)
!1860 = distinct !DISubprogram(name: "Perl_is_uni_punct", scope: !678, file: !678, line: 1338, type: !1784, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1861)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "c", arg: 1, scope: !1860, file: !678, line: 1338, type: !105)
!1863 = !DILocation(line: 0, scope: !1860)
!1864 = !DILocation(line: 1341, column: 12, scope: !1860)
!1865 = !DILocation(line: 1341, column: 5, scope: !1860)
!1866 = distinct !DISubprogram(name: "Perl_is_uni_xdigit", scope: !678, file: !678, line: 1345, type: !1784, scopeLine: 1346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1867)
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "c", arg: 1, scope: !1866, file: !678, line: 1345, type: !105)
!1869 = !DILocation(line: 0, scope: !1866)
!1870 = !DILocation(line: 1348, column: 12, scope: !1866)
!1871 = !DILocation(line: 1348, column: 5, scope: !1866)
!1872 = distinct !DISubprogram(name: "Perl_is_uni_alnum_lc", scope: !678, file: !678, line: 1352, type: !1784, scopeLine: 1353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1873)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "c", arg: 1, scope: !1872, file: !678, line: 1352, type: !105)
!1875 = !DILocation(line: 0, scope: !1872)
!1876 = !DILocation(line: 1355, column: 12, scope: !1872)
!1877 = !DILocation(line: 1355, column: 5, scope: !1872)
!1878 = distinct !DISubprogram(name: "Perl_is_uni_alnumc_lc", scope: !678, file: !678, line: 1359, type: !1784, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "c", arg: 1, scope: !1878, file: !678, line: 1359, type: !105)
!1881 = !DILocation(line: 0, scope: !1878)
!1882 = !DILocation(line: 1362, column: 12, scope: !1878)
!1883 = !DILocation(line: 1362, column: 5, scope: !1878)
!1884 = distinct !DISubprogram(name: "Perl_is_uni_idfirst_lc", scope: !678, file: !678, line: 1366, type: !1784, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1885)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "c", arg: 1, scope: !1884, file: !678, line: 1366, type: !105)
!1887 = !DILocation(line: 0, scope: !1884)
!1888 = !DILocation(line: 1371, column: 12, scope: !1884)
!1889 = !DILocation(line: 1371, column: 5, scope: !1884)
!1890 = !DISubprogram(name: "Perl__is_uni_perl_idstart", scope: !688, file: !688, line: 55, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1891 = distinct !DISubprogram(name: "Perl_is_uni_alpha_lc", scope: !678, file: !678, line: 1375, type: !1784, scopeLine: 1376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1892)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "c", arg: 1, scope: !1891, file: !678, line: 1375, type: !105)
!1894 = !DILocation(line: 0, scope: !1891)
!1895 = !DILocation(line: 1378, column: 12, scope: !1891)
!1896 = !DILocation(line: 1378, column: 5, scope: !1891)
!1897 = distinct !DISubprogram(name: "Perl_is_uni_ascii_lc", scope: !678, file: !678, line: 1382, type: !1784, scopeLine: 1383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1898)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "c", arg: 1, scope: !1897, file: !678, line: 1382, type: !105)
!1900 = !DILocation(line: 0, scope: !1897)
!1901 = !DILocation(line: 1385, column: 12, scope: !1897)
!1902 = !DILocation(line: 1385, column: 5, scope: !1897)
!1903 = distinct !DISubprogram(name: "Perl_is_uni_blank_lc", scope: !678, file: !678, line: 1389, type: !1784, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "c", arg: 1, scope: !1903, file: !678, line: 1389, type: !105)
!1906 = !DILocation(line: 0, scope: !1903)
!1907 = !DILocation(line: 1392, column: 12, scope: !1903)
!1908 = !{i8 0, i8 2}
!1909 = !DILocation(line: 1392, column: 5, scope: !1903)
!1910 = distinct !DISubprogram(name: "Perl_is_uni_space_lc", scope: !678, file: !678, line: 1396, type: !1784, scopeLine: 1397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1911)
!1911 = !{!1912}
!1912 = !DILocalVariable(name: "c", arg: 1, scope: !1910, file: !678, line: 1396, type: !105)
!1913 = !DILocation(line: 0, scope: !1910)
!1914 = !DILocation(line: 1399, column: 12, scope: !1910)
!1915 = !DILocation(line: 1399, column: 5, scope: !1910)
!1916 = distinct !DISubprogram(name: "Perl_is_uni_digit_lc", scope: !678, file: !678, line: 1403, type: !1784, scopeLine: 1404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1917)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "c", arg: 1, scope: !1916, file: !678, line: 1403, type: !105)
!1919 = !DILocation(line: 0, scope: !1916)
!1920 = !DILocation(line: 1405, column: 12, scope: !1916)
!1921 = !DILocation(line: 1405, column: 5, scope: !1916)
!1922 = distinct !DISubprogram(name: "Perl_is_uni_idfirst", scope: !678, file: !678, line: 1409, type: !1784, scopeLine: 1410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1923)
!1923 = !{!1924, !1925}
!1924 = !DILocalVariable(name: "c", arg: 1, scope: !1922, file: !678, line: 1409, type: !105)
!1925 = !DILocalVariable(name: "tmpbuf", scope: !1922, file: !678, line: 1411, type: !1926)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 112, elements: !1927)
!1927 = !{!1928}
!1928 = !DISubrange(count: 14)
!1929 = !DILocation(line: 0, scope: !1922)
!1930 = !DILocation(line: 1411, column: 5, scope: !1922)
!1931 = !DILocation(line: 1411, column: 8, scope: !1922)
!1932 = !DILocation(line: 1412, column: 5, scope: !1922)
!1933 = !DILocation(line: 1413, column: 12, scope: !1922)
!1934 = !DILocation(line: 1414, column: 1, scope: !1922)
!1935 = !DILocation(line: 1413, column: 5, scope: !1922)
!1936 = !DISubprogram(name: "Perl_uvoffuni_to_utf8_flags", scope: !688, file: !688, line: 5070, type: !1937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!669, !669, !105, !105}
!1939 = !DISubprogram(name: "Perl__is_utf8_idstart", scope: !688, file: !688, line: 77, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1940 = distinct !DISubprogram(name: "Perl_is_utf8_idfirst", scope: !678, file: !678, line: 1417, type: !1772, scopeLine: 1418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1941)
!1941 = !{!1942}
!1942 = !DILocalVariable(name: "p", arg: 1, scope: !1940, file: !678, line: 1417, type: !667)
!1943 = !DILocation(line: 0, scope: !1940)
!1944 = !DILocation(line: 1421, column: 12, scope: !1940)
!1945 = !DILocation(line: 1421, column: 5, scope: !1940)
!1946 = distinct !DISubprogram(name: "Perl_is_utf8_xidfirst", scope: !678, file: !678, line: 1425, type: !1772, scopeLine: 1426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1947)
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "p", arg: 1, scope: !1946, file: !678, line: 1425, type: !667)
!1949 = !DILocation(line: 0, scope: !1946)
!1950 = !DILocation(line: 1429, column: 12, scope: !1946)
!1951 = !DILocation(line: 1429, column: 5, scope: !1946)
!1952 = !DISubprogram(name: "Perl__is_utf8_xidstart", scope: !688, file: !688, line: 107, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1953 = distinct !DISubprogram(name: "Perl_is_utf8_idcont", scope: !678, file: !678, line: 1433, type: !1772, scopeLine: 1434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1954)
!1954 = !{!1955}
!1955 = !DILocalVariable(name: "p", arg: 1, scope: !1953, file: !678, line: 1433, type: !667)
!1956 = !DILocation(line: 0, scope: !1953)
!1957 = !DILocation(line: 1437, column: 12, scope: !1953)
!1958 = !DILocation(line: 1437, column: 5, scope: !1953)
!1959 = !DISubprogram(name: "Perl__is_utf8_idcont", scope: !688, file: !688, line: 71, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1960 = distinct !DISubprogram(name: "Perl_is_utf8_xidcont", scope: !678, file: !678, line: 1441, type: !1772, scopeLine: 1442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1961)
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "p", arg: 1, scope: !1960, file: !678, line: 1441, type: !667)
!1963 = !DILocation(line: 0, scope: !1960)
!1964 = !DILocation(line: 1445, column: 12, scope: !1960)
!1965 = !DILocation(line: 1445, column: 5, scope: !1960)
!1966 = !DISubprogram(name: "Perl__is_utf8_xidcont", scope: !688, file: !688, line: 101, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!1967 = distinct !DISubprogram(name: "Perl_is_uni_upper_lc", scope: !678, file: !678, line: 1449, type: !1784, scopeLine: 1450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1968)
!1968 = !{!1969}
!1969 = !DILocalVariable(name: "c", arg: 1, scope: !1967, file: !678, line: 1449, type: !105)
!1970 = !DILocation(line: 0, scope: !1967)
!1971 = !DILocation(line: 1451, column: 12, scope: !1967)
!1972 = !DILocation(line: 1451, column: 5, scope: !1967)
!1973 = distinct !DISubprogram(name: "Perl_is_uni_lower_lc", scope: !678, file: !678, line: 1455, type: !1784, scopeLine: 1456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1974)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "c", arg: 1, scope: !1973, file: !678, line: 1455, type: !105)
!1976 = !DILocation(line: 0, scope: !1973)
!1977 = !DILocation(line: 1457, column: 12, scope: !1973)
!1978 = !DILocation(line: 1457, column: 5, scope: !1973)
!1979 = distinct !DISubprogram(name: "Perl_is_uni_cntrl_lc", scope: !678, file: !678, line: 1461, type: !1784, scopeLine: 1462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1980)
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "c", arg: 1, scope: !1979, file: !678, line: 1461, type: !105)
!1982 = !DILocation(line: 0, scope: !1979)
!1983 = !DILocation(line: 1463, column: 12, scope: !1979)
!1984 = !DILocation(line: 1463, column: 5, scope: !1979)
!1985 = distinct !DISubprogram(name: "Perl_is_uni_graph_lc", scope: !678, file: !678, line: 1467, type: !1784, scopeLine: 1468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1986)
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "c", arg: 1, scope: !1985, file: !678, line: 1467, type: !105)
!1988 = !DILocation(line: 0, scope: !1985)
!1989 = !DILocation(line: 1469, column: 12, scope: !1985)
!1990 = !DILocation(line: 1469, column: 5, scope: !1985)
!1991 = distinct !DISubprogram(name: "Perl_is_uni_print_lc", scope: !678, file: !678, line: 1473, type: !1784, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1992)
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "c", arg: 1, scope: !1991, file: !678, line: 1473, type: !105)
!1994 = !DILocation(line: 0, scope: !1991)
!1995 = !DILocation(line: 1475, column: 12, scope: !1991)
!1996 = !DILocation(line: 1475, column: 5, scope: !1991)
!1997 = distinct !DISubprogram(name: "Perl_is_uni_punct_lc", scope: !678, file: !678, line: 1479, type: !1784, scopeLine: 1480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1998)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "c", arg: 1, scope: !1997, file: !678, line: 1479, type: !105)
!2000 = !DILocation(line: 0, scope: !1997)
!2001 = !DILocation(line: 1481, column: 12, scope: !1997)
!2002 = !DILocation(line: 1481, column: 5, scope: !1997)
!2003 = distinct !DISubprogram(name: "Perl_is_uni_xdigit_lc", scope: !678, file: !678, line: 1485, type: !1784, scopeLine: 1486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2004)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "c", arg: 1, scope: !2003, file: !678, line: 1485, type: !105)
!2006 = !DILocation(line: 0, scope: !2003)
!2007 = !DILocation(line: 1487, column: 12, scope: !2003)
!2008 = !DILocation(line: 1487, column: 5, scope: !2003)
!2009 = distinct !DISubprogram(name: "Perl_to_uni_upper_lc", scope: !678, file: !678, line: 1491, type: !2010, scopeLine: 1492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!94, !94}
!2012 = !{!2013, !2014, !2015}
!2013 = !DILocalVariable(name: "c", arg: 1, scope: !2009, file: !678, line: 1491, type: !94)
!2014 = !DILocalVariable(name: "len", scope: !2009, file: !678, line: 1495, type: !119)
!2015 = !DILocalVariable(name: "tmpbuf", scope: !2009, file: !678, line: 1496, type: !1926)
!2016 = !DILocation(line: 0, scope: !2009)
!2017 = !DILocation(line: 1495, column: 5, scope: !2009)
!2018 = !DILocation(line: 1496, column: 5, scope: !2009)
!2019 = !DILocation(line: 1496, column: 8, scope: !2009)
!2020 = !DILocation(line: 1497, column: 17, scope: !2009)
!2021 = !DILocation(line: 1497, column: 12, scope: !2009)
!2022 = !DILocation(line: 1498, column: 1, scope: !2009)
!2023 = !DILocation(line: 1497, column: 5, scope: !2009)
!2024 = !DISubprogram(name: "Perl_to_uni_upper", scope: !688, file: !688, line: 4915, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!105, !105, !669, !749}
!2027 = distinct !DISubprogram(name: "Perl_to_uni_title_lc", scope: !678, file: !678, line: 1501, type: !2010, scopeLine: 1502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2028)
!2028 = !{!2029, !2030, !2031}
!2029 = !DILocalVariable(name: "c", arg: 1, scope: !2027, file: !678, line: 1501, type: !94)
!2030 = !DILocalVariable(name: "len", scope: !2027, file: !678, line: 1505, type: !119)
!2031 = !DILocalVariable(name: "tmpbuf", scope: !2027, file: !678, line: 1506, type: !1926)
!2032 = !DILocation(line: 0, scope: !2027)
!2033 = !DILocation(line: 1505, column: 5, scope: !2027)
!2034 = !DILocation(line: 1506, column: 5, scope: !2027)
!2035 = !DILocation(line: 1506, column: 8, scope: !2027)
!2036 = !DILocation(line: 1507, column: 17, scope: !2027)
!2037 = !DILocation(line: 1507, column: 12, scope: !2027)
!2038 = !DILocation(line: 1508, column: 1, scope: !2027)
!2039 = !DILocation(line: 1507, column: 5, scope: !2027)
!2040 = !DISubprogram(name: "Perl_to_uni_title", scope: !688, file: !688, line: 4904, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2041 = distinct !DISubprogram(name: "Perl_to_uni_lower_lc", scope: !678, file: !678, line: 1511, type: !2010, scopeLine: 1512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DILocalVariable(name: "c", arg: 1, scope: !2041, file: !678, line: 1511, type: !94)
!2044 = !DILocalVariable(name: "len", scope: !2041, file: !678, line: 1515, type: !119)
!2045 = !DILocalVariable(name: "tmpbuf", scope: !2041, file: !678, line: 1516, type: !1926)
!2046 = !DILocation(line: 0, scope: !2041)
!2047 = !DILocation(line: 1515, column: 5, scope: !2041)
!2048 = !DILocation(line: 1516, column: 5, scope: !2041)
!2049 = !DILocation(line: 1516, column: 8, scope: !2041)
!2050 = !DILocation(line: 1517, column: 17, scope: !2041)
!2051 = !DILocation(line: 1517, column: 12, scope: !2041)
!2052 = !DILocation(line: 1518, column: 1, scope: !2041)
!2053 = !DILocation(line: 1517, column: 5, scope: !2041)
!2054 = !DISubprogram(name: "Perl_to_uni_lower", scope: !688, file: !688, line: 4893, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2055 = distinct !DISubprogram(name: "Perl_is_utf8_alnum", scope: !678, file: !678, line: 1521, type: !1772, scopeLine: 1522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2056)
!2056 = !{!2057}
!2057 = !DILocalVariable(name: "p", arg: 1, scope: !2055, file: !678, line: 1521, type: !667)
!2058 = !DILocation(line: 0, scope: !2055)
!2059 = !DILocation(line: 1528, column: 12, scope: !2055)
!2060 = !DILocation(line: 1528, column: 5, scope: !2055)
!2061 = distinct !DISubprogram(name: "Perl_is_utf8_alnumc", scope: !678, file: !678, line: 1532, type: !1772, scopeLine: 1533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2062)
!2062 = !{!2063}
!2063 = !DILocalVariable(name: "p", arg: 1, scope: !2061, file: !678, line: 1532, type: !667)
!2064 = !DILocation(line: 0, scope: !2061)
!2065 = !DILocation(line: 1536, column: 12, scope: !2061)
!2066 = !DILocation(line: 1536, column: 5, scope: !2061)
!2067 = distinct !DISubprogram(name: "Perl_is_utf8_alpha", scope: !678, file: !678, line: 1540, type: !1772, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2068)
!2068 = !{!2069}
!2069 = !DILocalVariable(name: "p", arg: 1, scope: !2067, file: !678, line: 1540, type: !667)
!2070 = !DILocation(line: 0, scope: !2067)
!2071 = !DILocation(line: 1544, column: 12, scope: !2067)
!2072 = !DILocation(line: 1544, column: 5, scope: !2067)
!2073 = distinct !DISubprogram(name: "Perl_is_utf8_ascii", scope: !678, file: !678, line: 1548, type: !1772, scopeLine: 1549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2074)
!2074 = !{!2075}
!2075 = !DILocalVariable(name: "p", arg: 1, scope: !2073, file: !678, line: 1548, type: !667)
!2076 = !DILocation(line: 0, scope: !2073)
!2077 = !DILocation(line: 1553, column: 12, scope: !2073)
!2078 = !DILocation(line: 1553, column: 5, scope: !2073)
!2079 = distinct !DISubprogram(name: "Perl_is_utf8_blank", scope: !678, file: !678, line: 1557, type: !1772, scopeLine: 1558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2080)
!2080 = !{!2081}
!2081 = !DILocalVariable(name: "p", arg: 1, scope: !2079, file: !678, line: 1557, type: !667)
!2082 = !DILocation(line: 0, scope: !2079)
!2083 = !DILocation(line: 1562, column: 12, scope: !2079)
!2084 = !DILocation(line: 1562, column: 5, scope: !2079)
!2085 = distinct !DISubprogram(name: "Perl_is_utf8_space", scope: !678, file: !678, line: 1566, type: !1772, scopeLine: 1567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2086)
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "p", arg: 1, scope: !2085, file: !678, line: 1566, type: !667)
!2088 = !DILocation(line: 0, scope: !2085)
!2089 = !DILocation(line: 1571, column: 12, scope: !2085)
!2090 = !DILocation(line: 1571, column: 5, scope: !2085)
!2091 = distinct !DISubprogram(name: "Perl_is_utf8_perl_space", scope: !678, file: !678, line: 1575, type: !1772, scopeLine: 1576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2092)
!2092 = !{!2093}
!2093 = !DILocalVariable(name: "p", arg: 1, scope: !2091, file: !678, line: 1575, type: !667)
!2094 = !DILocation(line: 0, scope: !2091)
!2095 = !DILocation(line: 1582, column: 12, scope: !2091)
!2096 = !DILocation(line: 1582, column: 5, scope: !2091)
!2097 = distinct !DISubprogram(name: "Perl_is_utf8_perl_word", scope: !678, file: !678, line: 1586, type: !1772, scopeLine: 1587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2098)
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "p", arg: 1, scope: !2097, file: !678, line: 1586, type: !667)
!2100 = !DILocation(line: 0, scope: !2097)
!2101 = !DILocation(line: 1593, column: 12, scope: !2097)
!2102 = !DILocation(line: 1593, column: 5, scope: !2097)
!2103 = distinct !DISubprogram(name: "Perl_is_utf8_digit", scope: !678, file: !678, line: 1597, type: !1772, scopeLine: 1598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2104)
!2104 = !{!2105}
!2105 = !DILocalVariable(name: "p", arg: 1, scope: !2103, file: !678, line: 1597, type: !667)
!2106 = !DILocation(line: 0, scope: !2103)
!2107 = !DILocation(line: 1601, column: 12, scope: !2103)
!2108 = !DILocation(line: 1601, column: 5, scope: !2103)
!2109 = distinct !DISubprogram(name: "Perl_is_utf8_posix_digit", scope: !678, file: !678, line: 1605, type: !1772, scopeLine: 1606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2110)
!2110 = !{!2111}
!2111 = !DILocalVariable(name: "p", arg: 1, scope: !2109, file: !678, line: 1605, type: !667)
!2112 = !DILocation(line: 0, scope: !2109)
!2113 = !DILocation(line: 1612, column: 12, scope: !2109)
!2114 = !DILocation(line: 1612, column: 5, scope: !2109)
!2115 = distinct !DISubprogram(name: "Perl_is_utf8_upper", scope: !678, file: !678, line: 1616, type: !1772, scopeLine: 1617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2116)
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "p", arg: 1, scope: !2115, file: !678, line: 1616, type: !667)
!2118 = !DILocation(line: 0, scope: !2115)
!2119 = !DILocation(line: 1620, column: 12, scope: !2115)
!2120 = !DILocation(line: 1620, column: 5, scope: !2115)
!2121 = distinct !DISubprogram(name: "Perl_is_utf8_lower", scope: !678, file: !678, line: 1624, type: !1772, scopeLine: 1625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2122)
!2122 = !{!2123}
!2123 = !DILocalVariable(name: "p", arg: 1, scope: !2121, file: !678, line: 1624, type: !667)
!2124 = !DILocation(line: 0, scope: !2121)
!2125 = !DILocation(line: 1628, column: 12, scope: !2121)
!2126 = !DILocation(line: 1628, column: 5, scope: !2121)
!2127 = distinct !DISubprogram(name: "Perl_is_utf8_cntrl", scope: !678, file: !678, line: 1632, type: !1772, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2128)
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "p", arg: 1, scope: !2127, file: !678, line: 1632, type: !667)
!2130 = !DILocation(line: 0, scope: !2127)
!2131 = !DILocation(line: 1637, column: 12, scope: !2127)
!2132 = !DILocation(line: 1637, column: 5, scope: !2127)
!2133 = distinct !DISubprogram(name: "Perl_is_utf8_graph", scope: !678, file: !678, line: 1641, type: !1772, scopeLine: 1642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "p", arg: 1, scope: !2133, file: !678, line: 1641, type: !667)
!2136 = !DILocation(line: 0, scope: !2133)
!2137 = !DILocation(line: 1645, column: 12, scope: !2133)
!2138 = !DILocation(line: 1645, column: 5, scope: !2133)
!2139 = distinct !DISubprogram(name: "Perl_is_utf8_print", scope: !678, file: !678, line: 1649, type: !1772, scopeLine: 1650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2140)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "p", arg: 1, scope: !2139, file: !678, line: 1649, type: !667)
!2142 = !DILocation(line: 0, scope: !2139)
!2143 = !DILocation(line: 1653, column: 12, scope: !2139)
!2144 = !DILocation(line: 1653, column: 5, scope: !2139)
!2145 = distinct !DISubprogram(name: "Perl_is_utf8_punct", scope: !678, file: !678, line: 1657, type: !1772, scopeLine: 1658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2146)
!2146 = !{!2147}
!2147 = !DILocalVariable(name: "p", arg: 1, scope: !2145, file: !678, line: 1657, type: !667)
!2148 = !DILocation(line: 0, scope: !2145)
!2149 = !DILocation(line: 1661, column: 12, scope: !2145)
!2150 = !DILocation(line: 1661, column: 5, scope: !2145)
!2151 = distinct !DISubprogram(name: "Perl_is_utf8_xdigit", scope: !678, file: !678, line: 1665, type: !1772, scopeLine: 1666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2152)
!2152 = !{!2153}
!2153 = !DILocalVariable(name: "p", arg: 1, scope: !2151, file: !678, line: 1665, type: !667)
!2154 = !DILocation(line: 0, scope: !2151)
!2155 = !DILocation(line: 1670, column: 12, scope: !2151)
!2156 = !DILocation(line: 1670, column: 5, scope: !2151)
!2157 = distinct !DISubprogram(name: "Perl_is_utf8_mark", scope: !678, file: !678, line: 1674, type: !1772, scopeLine: 1675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2158)
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "p", arg: 1, scope: !2157, file: !678, line: 1674, type: !667)
!2160 = !DILocation(line: 0, scope: !2157)
!2161 = !DILocation(line: 1678, column: 12, scope: !2157)
!2162 = !DILocation(line: 1678, column: 5, scope: !2157)
!2163 = !DISubprogram(name: "Perl__is_utf8_mark", scope: !688, file: !688, line: 83, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2164 = distinct !DISubprogram(name: "Perl_is_utf8_char", scope: !678, file: !678, line: 1696, type: !2165, scopeLine: 1697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!119, !667}
!2167 = !{!2168}
!2168 = !DILocalVariable(name: "s", arg: 1, scope: !2164, file: !678, line: 1696, type: !667)
!2169 = !DILocation(line: 0, scope: !2164)
!2170 = !DILocation(line: 1701, column: 12, scope: !2164)
!2171 = !DILocalVariable(name: "s", arg: 1, scope: !2172, file: !2173, line: 268, type: !667)
!2172 = distinct !DISubprogram(name: "S__is_utf8_char_slow", scope: !2173, file: !2173, line: 268, type: !2174, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2176)
!2173 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!119, !667, !667}
!2176 = !{!2171, !2177, !2178}
!2177 = !DILocalVariable(name: "e", arg: 2, scope: !2172, file: !2173, line: 268, type: !667)
!2178 = !DILocalVariable(name: "actual_len", scope: !2172, file: !2173, line: 272, type: !119)
!2179 = !DILocation(line: 0, scope: !2172, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 1701, column: 12, scope: !2164)
!2181 = !DILocation(line: 272, column: 5, scope: !2172, inlinedAt: !2180)
!2182 = !DILocation(line: 277, column: 5, scope: !2172, inlinedAt: !2180)
!2183 = !DILocation(line: 279, column: 13, scope: !2172, inlinedAt: !2180)
!2184 = !DILocation(line: 279, column: 24, scope: !2172, inlinedAt: !2180)
!2185 = !DILocation(line: 279, column: 12, scope: !2172, inlinedAt: !2180)
!2186 = !DILocation(line: 280, column: 1, scope: !2172, inlinedAt: !2180)
!2187 = !DILocation(line: 1701, column: 5, scope: !2164)
!2188 = distinct !DISubprogram(name: "Perl_is_utf8_char_buf", scope: !678, file: !678, line: 1712, type: !2174, scopeLine: 1713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2189)
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "buf", arg: 1, scope: !2188, file: !678, line: 1712, type: !667)
!2191 = !DILocalVariable(name: "buf_end", arg: 2, scope: !2188, file: !678, line: 1712, type: !667)
!2192 = !DILocation(line: 0, scope: !2188)
!2193 = !DILocation(line: 1717, column: 12, scope: !2188)
!2194 = !DILocation(line: 0, scope: !2172, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 1717, column: 12, scope: !2188)
!2196 = !DILocation(line: 272, column: 5, scope: !2172, inlinedAt: !2195)
!2197 = !DILocation(line: 277, column: 5, scope: !2172, inlinedAt: !2195)
!2198 = !DILocation(line: 279, column: 13, scope: !2172, inlinedAt: !2195)
!2199 = !DILocation(line: 279, column: 24, scope: !2172, inlinedAt: !2195)
!2200 = !DILocation(line: 279, column: 12, scope: !2172, inlinedAt: !2195)
!2201 = !DILocation(line: 280, column: 1, scope: !2172, inlinedAt: !2195)
!2202 = !DILocation(line: 1717, column: 5, scope: !2188)
!2203 = distinct !DISubprogram(name: "Perl_valid_utf8_to_uvuni", scope: !678, file: !678, line: 1726, type: !2204, scopeLine: 1727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!105, !667, !749}
!2206 = !{!2207, !2208}
!2207 = !DILocalVariable(name: "s", arg: 1, scope: !2203, file: !678, line: 1726, type: !667)
!2208 = !DILocalVariable(name: "retlen", arg: 2, scope: !2203, file: !678, line: 1726, type: !749)
!2209 = !DILocation(line: 0, scope: !2203)
!2210 = !DILocation(line: 1730, column: 12, scope: !2203)
!2211 = !DILocation(line: 1730, column: 5, scope: !2203)
!2212 = !DISubprogram(name: "Perl_valid_utf8_to_uvchr", scope: !688, file: !688, line: 5085, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2213 = distinct !DISubprogram(name: "Perl_utf8_to_uvchr", scope: !678, file: !678, line: 1756, type: !2204, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2214)
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "s", arg: 1, scope: !2213, file: !678, line: 1756, type: !667)
!2216 = !DILocalVariable(name: "retlen", arg: 2, scope: !2213, file: !678, line: 1756, type: !749)
!2217 = !DILocation(line: 0, scope: !2213)
!2218 = !DILocation(line: 1760, column: 12, scope: !2213)
!2219 = !DILocation(line: 1760, column: 5, scope: !2213)
!2220 = !DISubprogram(name: "Perl_utf8n_to_uvchr", scope: !688, file: !688, line: 5049, type: !2221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!105, !667, !119, !749, !94}
!2223 = !DISubprogram(name: "Perl_ckwarn_d", scope: !688, file: !688, line: 713, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !691)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!353, !94}
!2226 = distinct !DISubprogram(name: "Perl_utf8_to_uvuni", scope: !678, file: !678, line: 1788, type: !2204, scopeLine: 1789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2227)
!2227 = !{!2228, !2229}
!2228 = !DILocalVariable(name: "s", arg: 1, scope: !2226, file: !678, line: 1788, type: !667)
!2229 = !DILocalVariable(name: "retlen", arg: 2, scope: !2226, file: !678, line: 1788, type: !749)
!2230 = !DILocation(line: 0, scope: !2226)
!2231 = !DILocation(line: 1792, column: 12, scope: !2226)
!2232 = !DILocation(line: 1792, column: 5, scope: !2226)
!2233 = distinct !DISubprogram(name: "Perl_pad_compname_type", scope: !678, file: !678, line: 1806, type: !2234, scopeLine: 1807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2237)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!56, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "po", arg: 1, scope: !2233, file: !678, line: 1806, type: !2236)
!2239 = !DILocation(line: 0, scope: !2233)
!2240 = !DILocation(line: 1808, column: 12, scope: !2233)
!2241 = !DILocation(line: 1808, column: 5, scope: !2233)
