; ModuleID = 'FunctionUtil.cpp'
source_filename = "FunctionUtil.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.Functional::FunctionUtil" = type { ptr, i32, %"class.std::__cxx11::basic_string", ptr, ptr, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"struct.std::__detail::_Hash_node_value_base" = type { %"struct.std::__detail::_Hash_node_base", %"struct.__gnu_cxx::__aligned_buffer" }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.__gnu_cxx::__aligned_buffer" = type { %"union.std::aligned_storage<48, 8>::type" }
%"union.std::aligned_storage<48, 8>::type" = type { [48 x i8] }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"struct.std::pair.10" }
%"struct.std::pair.10" = type <{ ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"struct.std::__detail::_Hash_node" = type { %"struct.std::__detail::_Hash_node_value_base", i64 }

$__clang_call_terminate = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IPmjEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN10Functional12FunctionUtilE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN10Functional12FunctionUtilE, ptr @_ZN10Functional12FunctionUtilD2Ev, ptr @_ZN10Functional12FunctionUtilD0Ev] }, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [18 x i8] c"ERROR: Literal ( \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" ) not found!\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ERROR: current token = \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN10Functional12FunctionUtilE = dso_local constant [29 x i8] c"N10Functional12FunctionUtilE\00", align 1
@_ZTIN10Functional12FunctionUtilE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10Functional12FunctionUtilE }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"basic_string::at: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionUtil.cpp, ptr null }]

@_ZN10Functional12FunctionUtilC1ERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPmjESt4hashIS7_ESt8equal_toIS7_ESaIS8_IKS7_SA_EEERNS_13BitVectorPoolEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32), ptr @_ZN10Functional12FunctionUtilC2ERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPmjESt4hashIS7_ESt8equal_toIS7_ESaIS8_IKS7_SA_EEERNS_13BitVectorPoolEii
@_ZN10Functional12FunctionUtilD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10Functional12FunctionUtilD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @_ZN10Functional12FunctionUtilC2ERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPmjESt4hashIS7_ESt8equal_toIS7_ESaIS8_IKS7_SA_EEERNS_13BitVectorPoolEii(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(56) %entries, ptr noundef nonnull align 8 dereferenceable(56) %functionPool, i32 noundef %nVars, i32 noundef %nWords) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN10Functional12FunctionUtilE, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %tokenValue = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2
  %0 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2, i32 2
  store ptr %0, ptr %tokenValue, align 8, !tbaa !8
  %_M_string_length.i.i.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2, i32 1
  store i64 0, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  store i8 0, ptr %0, align 8, !tbaa !15
  %literals = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 3
  store ptr %entries, ptr %literals, align 8, !tbaa !16
  %functionPool2 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  store ptr %functionPool, ptr %functionPool2, align 8, !tbaa !16
  %nVars3 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 5
  store i32 %nVars, ptr %nVars3, align 8, !tbaa !17
  %nWords4 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  store i32 %nWords, ptr %nWords4, align 4, !tbaa !21
  %currentToken = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 1
  store i32 60, ptr %currentToken, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN10Functional12FunctionUtilD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN10Functional12FunctionUtilE, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %tokenValue = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %tokenValue, align 8, !tbaa !23
  %1 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2, i32 2
  %cmp.i.i.i = icmp eq ptr %0, %1
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(ptr noundef %0) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN10Functional12FunctionUtilD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN10Functional12FunctionUtilE, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %tokenValue.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %tokenValue.i, align 8, !tbaa !23
  %1 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2, i32 2
  %cmp.i.i.i.i = icmp eq ptr %0, %1
  br i1 %cmp.i.i.i.i, label %_ZN10Functional12FunctionUtilD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(ptr noundef %0) #18
  br label %_ZN10Functional12FunctionUtilD2Ev.exit

_ZN10Functional12FunctionUtilD2Ev.exit:           ; preds = %entry, %if.then.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %this) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN10Functional12FunctionUtil15parseExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull %expression) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %functionality = alloca %"class.std::__cxx11::basic_istringstream", align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %functionality) #18
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %functionality, ptr noundef nonnull align 8 dereferenceable(32) %expression, i32 noundef 8)
  %call = invoke noundef ptr @_ZN10Functional12FunctionUtil5expr1ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %functionality)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %0, ptr %functionality, align 8, !tbaa !5
  %1 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %0, i64 -24
  %vbase.offset.i.i = load i64, ptr %vbase.offset.ptr.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %functionality, i64 %vbase.offset.i.i
  store ptr %1, ptr %add.ptr.i.i, align 8, !tbaa !5
  %_M_stringbuf.i.i = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", ptr %functionality, i64 0, i32 1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i.i, align 8, !tbaa !5
  %_M_string.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", ptr %functionality, i64 0, i32 1, i32 2
  %2 = load ptr, ptr %_M_string.i.i.i, align 8, !tbaa !23
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", ptr %functionality, i64 0, i32 1, i32 2, i32 2
  %cmp.i.i.i.i.i.i = icmp eq ptr %2, %3
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont
  call void @_ZdlPv(ptr noundef %2) #18
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i.i.i.i
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i.i, align 8, !tbaa !5
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i.i, i64 0, i32 7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #18
  %4 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1), align 8
  store ptr %4, ptr %functionality, align 8, !tbaa !5
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8
  %vbase.offset.ptr.i.i.i = getelementptr i8, ptr %4, i64 -24
  %vbase.offset.i.i.i = load i64, ptr %vbase.offset.ptr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %functionality, i64 %vbase.offset.i.i.i
  store ptr %5, ptr %add.ptr.i.i.i, align 8, !tbaa !5
  %_M_gcount.i.i.i = getelementptr inbounds %"class.std::basic_istream", ptr %functionality, i64 0, i32 1
  store i64 0, ptr %_M_gcount.i.i.i, align 8, !tbaa !24
  %6 = getelementptr inbounds i8, ptr %functionality, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %6) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %functionality) #18
  ret ptr %call

lpad:                                             ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %functionality) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %functionality) #18
  resume { ptr, i32 } %7
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10Functional12FunctionUtil5expr1ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression) local_unnamed_addr #8 align 2 {
entry:
  %call.i38 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %currentToken.i40 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i41119 = icmp eq i32 %0, 42
  br i1 %cond.i41119, label %sw.bb.i47.lr.ph, label %for.cond.i.preheader

sw.bb.i47.lr.ph:                                  ; preds = %entry
  %functionPool.i43 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %nWords.i45 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  br label %sw.bb.i47

for.cond.i.preheader:                             ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i58, %entry
  %lhs.0.i39.lcssa = phi ptr [ %call.i38, %entry ], [ %call2.i44, %_ZN10Functional3ANDEPmS0_S0_i.exit.i58 ]
  %.lcssa118 = phi i32 [ %0, %entry ], [ %45, %_ZN10Functional3ANDEPmS0_S0_i.exit.i58 ]
  %cond.i125 = icmp eq i32 %.lcssa118, 94
  br i1 %cond.i125, label %sw.bb.i.lr.ph, label %for.cond.preheader

sw.bb.i.lr.ph:                                    ; preds = %for.cond.i.preheader
  %functionPool.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %nWords.i36 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  br label %sw.bb.i

sw.bb.i47:                                        ; preds = %sw.bb.i47.lr.ph, %_ZN10Functional3ANDEPmS0_S0_i.exit.i58
  %lhs.0.i39120 = phi ptr [ %call.i38, %sw.bb.i47.lr.ph ], [ %call2.i44, %_ZN10Functional3ANDEPmS0_S0_i.exit.i58 ]
  %1 = load ptr, ptr %functionPool.i43, align 8, !tbaa !26
  %call2.i44 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %call3.i = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %2 = load i32, ptr %nWords.i45, align 4, !tbaa !21
  %cmp9.i.i46 = icmp sgt i32 %2, 0
  br i1 %cmp9.i.i46, label %for.body.preheader.i.i49, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i58

for.body.preheader.i.i49:                         ; preds = %sw.bb.i47
  %wide.trip.count.i.i48 = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %for.body.i.i57.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader.i.i49
  %3 = shl nuw nsw i64 %wide.trip.count.i.i48, 3
  %uglygep = getelementptr i8, ptr %call2.i44, i64 %3
  %uglygep182 = getelementptr i8, ptr %lhs.0.i39120, i64 %3
  %uglygep183 = getelementptr i8, ptr %call3.i, i64 %3
  %bound0 = icmp ult ptr %call2.i44, %uglygep182
  %bound1 = icmp ult ptr %lhs.0.i39120, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %call2.i44, %uglygep183
  %bound1185 = icmp ult ptr %call3.i, %uglygep
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx = or i1 %found.conflict, %found.conflict186
  br i1 %conflict.rdx, label %for.body.i.i57.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i48, 4294967292
  %4 = add nsw i64 %n.vec, -4
  %5 = lshr exact i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 1
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %8 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %index
  %wide.load = load <2 x i64>, ptr %8, align 8, !tbaa !27, !alias.scope !28
  %9 = getelementptr inbounds i64, ptr %8, i64 2
  %wide.load187 = load <2 x i64>, ptr %9, align 8, !tbaa !27, !alias.scope !28
  %10 = getelementptr inbounds i64, ptr %call3.i, i64 %index
  %wide.load188 = load <2 x i64>, ptr %10, align 8, !tbaa !27, !alias.scope !31
  %11 = getelementptr inbounds i64, ptr %10, i64 2
  %wide.load189 = load <2 x i64>, ptr %11, align 8, !tbaa !27, !alias.scope !31
  %12 = and <2 x i64> %wide.load188, %wide.load
  %13 = and <2 x i64> %wide.load189, %wide.load187
  %14 = getelementptr inbounds i64, ptr %call2.i44, i64 %index
  store <2 x i64> %12, ptr %14, align 8, !tbaa !27, !alias.scope !33, !noalias !35
  %15 = getelementptr inbounds i64, ptr %14, i64 2
  store <2 x i64> %13, ptr %15, align 8, !tbaa !27, !alias.scope !33, !noalias !35
  %index.next = or i64 %index, 4
  %16 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %index.next
  %wide.load.1 = load <2 x i64>, ptr %16, align 8, !tbaa !27, !alias.scope !28
  %17 = getelementptr inbounds i64, ptr %16, i64 2
  %wide.load187.1 = load <2 x i64>, ptr %17, align 8, !tbaa !27, !alias.scope !28
  %18 = getelementptr inbounds i64, ptr %call3.i, i64 %index.next
  %wide.load188.1 = load <2 x i64>, ptr %18, align 8, !tbaa !27, !alias.scope !31
  %19 = getelementptr inbounds i64, ptr %18, i64 2
  %wide.load189.1 = load <2 x i64>, ptr %19, align 8, !tbaa !27, !alias.scope !31
  %20 = and <2 x i64> %wide.load188.1, %wide.load.1
  %21 = and <2 x i64> %wide.load189.1, %wide.load187.1
  %22 = getelementptr inbounds i64, ptr %call2.i44, i64 %index.next
  store <2 x i64> %20, ptr %22, align 8, !tbaa !27, !alias.scope !33, !noalias !35
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  store <2 x i64> %21, ptr %23, align 8, !tbaa !27, !alias.scope !33, !noalias !35
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !36

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %24 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %index.unr
  %wide.load.epil = load <2 x i64>, ptr %24, align 8, !tbaa !27, !alias.scope !28
  %25 = getelementptr inbounds i64, ptr %24, i64 2
  %wide.load187.epil = load <2 x i64>, ptr %25, align 8, !tbaa !27, !alias.scope !28
  %26 = getelementptr inbounds i64, ptr %call3.i, i64 %index.unr
  %wide.load188.epil = load <2 x i64>, ptr %26, align 8, !tbaa !27, !alias.scope !31
  %27 = getelementptr inbounds i64, ptr %26, i64 2
  %wide.load189.epil = load <2 x i64>, ptr %27, align 8, !tbaa !27, !alias.scope !31
  %28 = and <2 x i64> %wide.load188.epil, %wide.load.epil
  %29 = and <2 x i64> %wide.load189.epil, %wide.load187.epil
  %30 = getelementptr inbounds i64, ptr %call2.i44, i64 %index.unr
  store <2 x i64> %28, ptr %30, align 8, !tbaa !27, !alias.scope !33, !noalias !35
  %31 = getelementptr inbounds i64, ptr %30, i64 2
  store <2 x i64> %29, ptr %31, align 8, !tbaa !27, !alias.scope !33, !noalias !35
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i48
  br i1 %cmp.n, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i58, label %for.body.i.i57.preheader

for.body.i.i57.preheader:                         ; preds = %vector.memcheck, %for.body.preheader.i.i49, %middle.block
  %indvars.iv.i.i50.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader.i.i49 ], [ %n.vec, %middle.block ]
  %32 = xor i64 %indvars.iv.i.i50.ph, -1
  %33 = add nsw i64 %32, %wide.trip.count.i.i48
  %xtraiter353 = and i64 %wide.trip.count.i.i48, 3
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %for.body.i.i57.prol.loopexit, label %for.body.i.i57.prol

for.body.i.i57.prol:                              ; preds = %for.body.i.i57.preheader, %for.body.i.i57.prol
  %indvars.iv.i.i50.prol = phi i64 [ %indvars.iv.next.i.i55.prol, %for.body.i.i57.prol ], [ %indvars.iv.i.i50.ph, %for.body.i.i57.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.i.i57.prol ], [ 0, %for.body.i.i57.preheader ]
  %arrayidx.i.i51.prol = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %indvars.iv.i.i50.prol
  %34 = load i64, ptr %arrayidx.i.i51.prol, align 8, !tbaa !27
  %arrayidx2.i.i52.prol = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.i.i50.prol
  %35 = load i64, ptr %arrayidx2.i.i52.prol, align 8, !tbaa !27
  %and.i.i53.prol = and i64 %35, %34
  %arrayidx4.i.i54.prol = getelementptr inbounds i64, ptr %call2.i44, i64 %indvars.iv.i.i50.prol
  store i64 %and.i.i53.prol, ptr %arrayidx4.i.i54.prol, align 8, !tbaa !27
  %indvars.iv.next.i.i55.prol = add nuw nsw i64 %indvars.iv.i.i50.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter353
  br i1 %prol.iter.cmp.not, label %for.body.i.i57.prol.loopexit, label %for.body.i.i57.prol, !llvm.loop !39

for.body.i.i57.prol.loopexit:                     ; preds = %for.body.i.i57.prol, %for.body.i.i57.preheader
  %indvars.iv.i.i50.unr = phi i64 [ %indvars.iv.i.i50.ph, %for.body.i.i57.preheader ], [ %indvars.iv.next.i.i55.prol, %for.body.i.i57.prol ]
  %36 = icmp ult i64 %33, 3
  br i1 %36, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i58, label %for.body.i.i57

for.body.i.i57:                                   ; preds = %for.body.i.i57.prol.loopexit, %for.body.i.i57
  %indvars.iv.i.i50 = phi i64 [ %indvars.iv.next.i.i55.3, %for.body.i.i57 ], [ %indvars.iv.i.i50.unr, %for.body.i.i57.prol.loopexit ]
  %arrayidx.i.i51 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %indvars.iv.i.i50
  %37 = load i64, ptr %arrayidx.i.i51, align 8, !tbaa !27
  %arrayidx2.i.i52 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.i.i50
  %38 = load i64, ptr %arrayidx2.i.i52, align 8, !tbaa !27
  %and.i.i53 = and i64 %38, %37
  %arrayidx4.i.i54 = getelementptr inbounds i64, ptr %call2.i44, i64 %indvars.iv.i.i50
  store i64 %and.i.i53, ptr %arrayidx4.i.i54, align 8, !tbaa !27
  %indvars.iv.next.i.i55 = add nuw nsw i64 %indvars.iv.i.i50, 1
  %arrayidx.i.i51.1 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %indvars.iv.next.i.i55
  %39 = load i64, ptr %arrayidx.i.i51.1, align 8, !tbaa !27
  %arrayidx2.i.i52.1 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.next.i.i55
  %40 = load i64, ptr %arrayidx2.i.i52.1, align 8, !tbaa !27
  %and.i.i53.1 = and i64 %40, %39
  %arrayidx4.i.i54.1 = getelementptr inbounds i64, ptr %call2.i44, i64 %indvars.iv.next.i.i55
  store i64 %and.i.i53.1, ptr %arrayidx4.i.i54.1, align 8, !tbaa !27
  %indvars.iv.next.i.i55.1 = add nuw nsw i64 %indvars.iv.i.i50, 2
  %arrayidx.i.i51.2 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %indvars.iv.next.i.i55.1
  %41 = load i64, ptr %arrayidx.i.i51.2, align 8, !tbaa !27
  %arrayidx2.i.i52.2 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.next.i.i55.1
  %42 = load i64, ptr %arrayidx2.i.i52.2, align 8, !tbaa !27
  %and.i.i53.2 = and i64 %42, %41
  %arrayidx4.i.i54.2 = getelementptr inbounds i64, ptr %call2.i44, i64 %indvars.iv.next.i.i55.1
  store i64 %and.i.i53.2, ptr %arrayidx4.i.i54.2, align 8, !tbaa !27
  %indvars.iv.next.i.i55.2 = add nuw nsw i64 %indvars.iv.i.i50, 3
  %arrayidx.i.i51.3 = getelementptr inbounds i64, ptr %lhs.0.i39120, i64 %indvars.iv.next.i.i55.2
  %43 = load i64, ptr %arrayidx.i.i51.3, align 8, !tbaa !27
  %arrayidx2.i.i52.3 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.next.i.i55.2
  %44 = load i64, ptr %arrayidx2.i.i52.3, align 8, !tbaa !27
  %and.i.i53.3 = and i64 %44, %43
  %arrayidx4.i.i54.3 = getelementptr inbounds i64, ptr %call2.i44, i64 %indvars.iv.next.i.i55.2
  store i64 %and.i.i53.3, ptr %arrayidx4.i.i54.3, align 8, !tbaa !27
  %indvars.iv.next.i.i55.3 = add nuw nsw i64 %indvars.iv.i.i50, 4
  %exitcond.not.i.i56.3 = icmp eq i64 %indvars.iv.next.i.i55.3, %wide.trip.count.i.i48
  br i1 %exitcond.not.i.i56.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i58, label %for.body.i.i57, !llvm.loop !41

_ZN10Functional3ANDEPmS0_S0_i.exit.i58:           ; preds = %for.body.i.i57.prol.loopexit, %for.body.i.i57, %middle.block, %sw.bb.i47
  %45 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i41 = icmp eq i32 %45, 42
  br i1 %cond.i41, label %sw.bb.i47, label %for.cond.i.preheader, !llvm.loop !42

for.cond.preheader:                               ; preds = %_ZN10Functional3XOREPmS0_S0_i.exit, %for.cond.i.preheader
  %46 = phi i32 [ %.lcssa118, %for.cond.i.preheader ], [ %.pr, %_ZN10Functional3XOREPmS0_S0_i.exit ]
  %lhs.0.i.lcssa = phi ptr [ %lhs.0.i39.lcssa, %for.cond.i.preheader ], [ %call2.i, %_ZN10Functional3XOREPmS0_S0_i.exit ]
  %cond138 = icmp eq i32 %46, 43
  br i1 %cond138, label %sw.bb.lr.ph, label %sw.default

sw.bb.lr.ph:                                      ; preds = %for.cond.preheader
  %functionPool = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %nWords.i102 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  br label %sw.bb

sw.bb.i:                                          ; preds = %sw.bb.i.lr.ph, %_ZN10Functional3XOREPmS0_S0_i.exit
  %lhs.0.i126 = phi ptr [ %lhs.0.i39.lcssa, %sw.bb.i.lr.ph ], [ %call2.i, %_ZN10Functional3XOREPmS0_S0_i.exit ]
  %47 = load ptr, ptr %functionPool.i, align 8, !tbaa !26
  %call2.i = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %47)
  %call.i28 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %48 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i31122 = icmp eq i32 %48, 42
  br i1 %cond.i31122, label %sw.bb.i37, label %sw.bb.i._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit_crit_edge

sw.bb.i._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit_crit_edge: ; preds = %sw.bb.i
  %.pre = load i32, ptr %nWords.i36, align 4, !tbaa !21
  br label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit

sw.bb.i37:                                        ; preds = %sw.bb.i, %_ZN10Functional3ANDEPmS0_S0_i.exit.i
  %lhs.0.i29123 = phi ptr [ %call2.i34, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ], [ %call.i28, %sw.bb.i ]
  %49 = load ptr, ptr %functionPool.i, align 8, !tbaa !26
  %call2.i34 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %49)
  %call3.i35 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %50 = load i32, ptr %nWords.i36, align 4, !tbaa !21
  %cmp9.i.i = icmp sgt i32 %50, 0
  br i1 %cmp9.i.i, label %for.body.preheader.i.i, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i

for.body.preheader.i.i:                           ; preds = %sw.bb.i37
  %wide.trip.count.i.i = zext i32 %50 to i64
  %min.iters.check229 = icmp ult i32 %50, 4
  br i1 %min.iters.check229, label %for.body.i.i.preheader, label %vector.memcheck216

vector.memcheck216:                               ; preds = %for.body.preheader.i.i
  %51 = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %uglygep217 = getelementptr i8, ptr %call2.i34, i64 %51
  %uglygep218 = getelementptr i8, ptr %lhs.0.i29123, i64 %51
  %uglygep219 = getelementptr i8, ptr %call3.i35, i64 %51
  %bound0220 = icmp ult ptr %call2.i34, %uglygep218
  %bound1221 = icmp ult ptr %lhs.0.i29123, %uglygep217
  %found.conflict222 = and i1 %bound0220, %bound1221
  %bound0223 = icmp ult ptr %call2.i34, %uglygep219
  %bound1224 = icmp ult ptr %call3.i35, %uglygep217
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %found.conflict222, %found.conflict225
  br i1 %conflict.rdx226, label %for.body.i.i.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck216
  %n.vec232 = and i64 %wide.trip.count.i.i, 4294967292
  %52 = add nsw i64 %n.vec232, -4
  %53 = lshr exact i64 %52, 2
  %54 = add nuw nsw i64 %53, 1
  %xtraiter355 = and i64 %54, 1
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %middle.block227.unr-lcssa, label %vector.ph230.new

vector.ph230.new:                                 ; preds = %vector.ph230
  %unroll_iter357 = and i64 %54, 9223372036854775806
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph230.new
  %index236 = phi i64 [ 0, %vector.ph230.new ], [ %index.next241.1, %vector.body235 ]
  %niter358 = phi i64 [ 0, %vector.ph230.new ], [ %niter358.next.1, %vector.body235 ]
  %56 = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %index236
  %wide.load237 = load <2 x i64>, ptr %56, align 8, !tbaa !27, !alias.scope !43
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %wide.load238 = load <2 x i64>, ptr %57, align 8, !tbaa !27, !alias.scope !43
  %58 = getelementptr inbounds i64, ptr %call3.i35, i64 %index236
  %wide.load239 = load <2 x i64>, ptr %58, align 8, !tbaa !27, !alias.scope !46
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %wide.load240 = load <2 x i64>, ptr %59, align 8, !tbaa !27, !alias.scope !46
  %60 = and <2 x i64> %wide.load239, %wide.load237
  %61 = and <2 x i64> %wide.load240, %wide.load238
  %62 = getelementptr inbounds i64, ptr %call2.i34, i64 %index236
  store <2 x i64> %60, ptr %62, align 8, !tbaa !27, !alias.scope !48, !noalias !50
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store <2 x i64> %61, ptr %63, align 8, !tbaa !27, !alias.scope !48, !noalias !50
  %index.next241 = or i64 %index236, 4
  %64 = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %index.next241
  %wide.load237.1 = load <2 x i64>, ptr %64, align 8, !tbaa !27, !alias.scope !43
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %wide.load238.1 = load <2 x i64>, ptr %65, align 8, !tbaa !27, !alias.scope !43
  %66 = getelementptr inbounds i64, ptr %call3.i35, i64 %index.next241
  %wide.load239.1 = load <2 x i64>, ptr %66, align 8, !tbaa !27, !alias.scope !46
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %wide.load240.1 = load <2 x i64>, ptr %67, align 8, !tbaa !27, !alias.scope !46
  %68 = and <2 x i64> %wide.load239.1, %wide.load237.1
  %69 = and <2 x i64> %wide.load240.1, %wide.load238.1
  %70 = getelementptr inbounds i64, ptr %call2.i34, i64 %index.next241
  store <2 x i64> %68, ptr %70, align 8, !tbaa !27, !alias.scope !48, !noalias !50
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store <2 x i64> %69, ptr %71, align 8, !tbaa !27, !alias.scope !48, !noalias !50
  %index.next241.1 = add nuw i64 %index236, 8
  %niter358.next.1 = add i64 %niter358, 2
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %middle.block227.unr-lcssa, label %vector.body235, !llvm.loop !51

middle.block227.unr-lcssa:                        ; preds = %vector.body235, %vector.ph230
  %index236.unr = phi i64 [ 0, %vector.ph230 ], [ %index.next241.1, %vector.body235 ]
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %middle.block227, label %vector.body235.epil

vector.body235.epil:                              ; preds = %middle.block227.unr-lcssa
  %72 = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %index236.unr
  %wide.load237.epil = load <2 x i64>, ptr %72, align 8, !tbaa !27, !alias.scope !43
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  %wide.load238.epil = load <2 x i64>, ptr %73, align 8, !tbaa !27, !alias.scope !43
  %74 = getelementptr inbounds i64, ptr %call3.i35, i64 %index236.unr
  %wide.load239.epil = load <2 x i64>, ptr %74, align 8, !tbaa !27, !alias.scope !46
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  %wide.load240.epil = load <2 x i64>, ptr %75, align 8, !tbaa !27, !alias.scope !46
  %76 = and <2 x i64> %wide.load239.epil, %wide.load237.epil
  %77 = and <2 x i64> %wide.load240.epil, %wide.load238.epil
  %78 = getelementptr inbounds i64, ptr %call2.i34, i64 %index236.unr
  store <2 x i64> %76, ptr %78, align 8, !tbaa !27, !alias.scope !48, !noalias !50
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store <2 x i64> %77, ptr %79, align 8, !tbaa !27, !alias.scope !48, !noalias !50
  br label %middle.block227

middle.block227:                                  ; preds = %middle.block227.unr-lcssa, %vector.body235.epil
  %cmp.n234 = icmp eq i64 %n.vec232, %wide.trip.count.i.i
  br i1 %cmp.n234, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %vector.memcheck216, %for.body.preheader.i.i, %middle.block227
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck216 ], [ 0, %for.body.preheader.i.i ], [ %n.vec232, %middle.block227 ]
  %80 = xor i64 %indvars.iv.i.i.ph, -1
  %81 = add nsw i64 %80, %wide.trip.count.i.i
  %xtraiter359 = and i64 %wide.trip.count.i.i, 3
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %for.body.i.i.prol.loopexit, label %for.body.i.i.prol

for.body.i.i.prol:                                ; preds = %for.body.i.i.preheader, %for.body.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %for.body.i.i.prol ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %prol.iter361 = phi i64 [ %prol.iter361.next, %for.body.i.i.prol ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i.prol = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %indvars.iv.i.i.prol
  %82 = load i64, ptr %arrayidx.i.i.prol, align 8, !tbaa !27
  %arrayidx2.i.i.prol = getelementptr inbounds i64, ptr %call3.i35, i64 %indvars.iv.i.i.prol
  %83 = load i64, ptr %arrayidx2.i.i.prol, align 8, !tbaa !27
  %and.i.i.prol = and i64 %83, %82
  %arrayidx4.i.i.prol = getelementptr inbounds i64, ptr %call2.i34, i64 %indvars.iv.i.i.prol
  store i64 %and.i.i.prol, ptr %arrayidx4.i.i.prol, align 8, !tbaa !27
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1
  %prol.iter361.next = add i64 %prol.iter361, 1
  %prol.iter361.cmp.not = icmp eq i64 %prol.iter361.next, %xtraiter359
  br i1 %prol.iter361.cmp.not, label %for.body.i.i.prol.loopexit, label %for.body.i.i.prol, !llvm.loop !52

for.body.i.i.prol.loopexit:                       ; preds = %for.body.i.i.prol, %for.body.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %for.body.i.i.prol ]
  %84 = icmp ult i64 %81, 3
  br i1 %84, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.prol.loopexit, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %for.body.i.i ], [ %indvars.iv.i.i.unr, %for.body.i.i.prol.loopexit ]
  %arrayidx.i.i = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %indvars.iv.i.i
  %85 = load i64, ptr %arrayidx.i.i, align 8, !tbaa !27
  %arrayidx2.i.i = getelementptr inbounds i64, ptr %call3.i35, i64 %indvars.iv.i.i
  %86 = load i64, ptr %arrayidx2.i.i, align 8, !tbaa !27
  %and.i.i = and i64 %86, %85
  %arrayidx4.i.i = getelementptr inbounds i64, ptr %call2.i34, i64 %indvars.iv.i.i
  store i64 %and.i.i, ptr %arrayidx4.i.i, align 8, !tbaa !27
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %arrayidx.i.i.1 = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %indvars.iv.next.i.i
  %87 = load i64, ptr %arrayidx.i.i.1, align 8, !tbaa !27
  %arrayidx2.i.i.1 = getelementptr inbounds i64, ptr %call3.i35, i64 %indvars.iv.next.i.i
  %88 = load i64, ptr %arrayidx2.i.i.1, align 8, !tbaa !27
  %and.i.i.1 = and i64 %88, %87
  %arrayidx4.i.i.1 = getelementptr inbounds i64, ptr %call2.i34, i64 %indvars.iv.next.i.i
  store i64 %and.i.i.1, ptr %arrayidx4.i.i.1, align 8, !tbaa !27
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %arrayidx.i.i.2 = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %indvars.iv.next.i.i.1
  %89 = load i64, ptr %arrayidx.i.i.2, align 8, !tbaa !27
  %arrayidx2.i.i.2 = getelementptr inbounds i64, ptr %call3.i35, i64 %indvars.iv.next.i.i.1
  %90 = load i64, ptr %arrayidx2.i.i.2, align 8, !tbaa !27
  %and.i.i.2 = and i64 %90, %89
  %arrayidx4.i.i.2 = getelementptr inbounds i64, ptr %call2.i34, i64 %indvars.iv.next.i.i.1
  store i64 %and.i.i.2, ptr %arrayidx4.i.i.2, align 8, !tbaa !27
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3
  %arrayidx.i.i.3 = getelementptr inbounds i64, ptr %lhs.0.i29123, i64 %indvars.iv.next.i.i.2
  %91 = load i64, ptr %arrayidx.i.i.3, align 8, !tbaa !27
  %arrayidx2.i.i.3 = getelementptr inbounds i64, ptr %call3.i35, i64 %indvars.iv.next.i.i.2
  %92 = load i64, ptr %arrayidx2.i.i.3, align 8, !tbaa !27
  %and.i.i.3 = and i64 %92, %91
  %arrayidx4.i.i.3 = getelementptr inbounds i64, ptr %call2.i34, i64 %indvars.iv.next.i.i.2
  store i64 %and.i.i.3, ptr %arrayidx4.i.i.3, align 8, !tbaa !27
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i, label %for.body.i.i, !llvm.loop !53

_ZN10Functional3ANDEPmS0_S0_i.exit.i:             ; preds = %for.body.i.i.prol.loopexit, %for.body.i.i, %middle.block227, %sw.bb.i37
  %93 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i31 = icmp eq i32 %93, 42
  br i1 %cond.i31, label %sw.bb.i37, label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !42

_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i, %sw.bb.i._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit_crit_edge
  %.pr = phi i32 [ %48, %sw.bb.i._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit_crit_edge ], [ %93, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ]
  %94 = phi i32 [ %.pre, %sw.bb.i._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit_crit_edge ], [ %50, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ]
  %lhs.0.i29.lcssa = phi ptr [ %call.i28, %sw.bb.i._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit_crit_edge ], [ %call2.i34, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ]
  %cmp9.i18 = icmp sgt i32 %94, 0
  br i1 %cmp9.i18, label %for.body.preheader.i20, label %_ZN10Functional3XOREPmS0_S0_i.exit

for.body.preheader.i20:                           ; preds = %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit
  %wide.trip.count.i19 = zext i32 %94 to i64
  %min.iters.check203 = icmp ult i32 %94, 4
  br i1 %min.iters.check203, label %for.body.i27.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %for.body.preheader.i20
  %95 = shl nuw nsw i64 %wide.trip.count.i19, 3
  %uglygep191 = getelementptr i8, ptr %call2.i, i64 %95
  %uglygep192 = getelementptr i8, ptr %lhs.0.i126, i64 %95
  %uglygep193 = getelementptr i8, ptr %lhs.0.i29.lcssa, i64 %95
  %bound0194 = icmp ult ptr %call2.i, %uglygep192
  %bound1195 = icmp ult ptr %lhs.0.i126, %uglygep191
  %found.conflict196 = and i1 %bound0194, %bound1195
  %bound0197 = icmp ult ptr %call2.i, %uglygep193
  %bound1198 = icmp ult ptr %lhs.0.i29.lcssa, %uglygep191
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %found.conflict196, %found.conflict199
  br i1 %conflict.rdx200, label %for.body.i27.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck190
  %n.vec206 = and i64 %wide.trip.count.i19, 4294967292
  %96 = add nsw i64 %n.vec206, -4
  %97 = lshr exact i64 %96, 2
  %98 = add nuw nsw i64 %97, 1
  %xtraiter362 = and i64 %98, 1
  %99 = icmp eq i64 %96, 0
  br i1 %99, label %middle.block201.unr-lcssa, label %vector.ph204.new

vector.ph204.new:                                 ; preds = %vector.ph204
  %unroll_iter364 = and i64 %98, 9223372036854775806
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph204.new
  %index210 = phi i64 [ 0, %vector.ph204.new ], [ %index.next215.1, %vector.body209 ]
  %niter365 = phi i64 [ 0, %vector.ph204.new ], [ %niter365.next.1, %vector.body209 ]
  %100 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %index210
  %wide.load211 = load <2 x i64>, ptr %100, align 8, !tbaa !27, !alias.scope !54
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  %wide.load212 = load <2 x i64>, ptr %101, align 8, !tbaa !27, !alias.scope !54
  %102 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %index210
  %wide.load213 = load <2 x i64>, ptr %102, align 8, !tbaa !27, !alias.scope !57
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  %wide.load214 = load <2 x i64>, ptr %103, align 8, !tbaa !27, !alias.scope !57
  %104 = xor <2 x i64> %wide.load213, %wide.load211
  %105 = xor <2 x i64> %wide.load214, %wide.load212
  %106 = getelementptr inbounds i64, ptr %call2.i, i64 %index210
  store <2 x i64> %104, ptr %106, align 8, !tbaa !27, !alias.scope !59, !noalias !61
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store <2 x i64> %105, ptr %107, align 8, !tbaa !27, !alias.scope !59, !noalias !61
  %index.next215 = or i64 %index210, 4
  %108 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %index.next215
  %wide.load211.1 = load <2 x i64>, ptr %108, align 8, !tbaa !27, !alias.scope !54
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  %wide.load212.1 = load <2 x i64>, ptr %109, align 8, !tbaa !27, !alias.scope !54
  %110 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %index.next215
  %wide.load213.1 = load <2 x i64>, ptr %110, align 8, !tbaa !27, !alias.scope !57
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  %wide.load214.1 = load <2 x i64>, ptr %111, align 8, !tbaa !27, !alias.scope !57
  %112 = xor <2 x i64> %wide.load213.1, %wide.load211.1
  %113 = xor <2 x i64> %wide.load214.1, %wide.load212.1
  %114 = getelementptr inbounds i64, ptr %call2.i, i64 %index.next215
  store <2 x i64> %112, ptr %114, align 8, !tbaa !27, !alias.scope !59, !noalias !61
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store <2 x i64> %113, ptr %115, align 8, !tbaa !27, !alias.scope !59, !noalias !61
  %index.next215.1 = add nuw i64 %index210, 8
  %niter365.next.1 = add i64 %niter365, 2
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %middle.block201.unr-lcssa, label %vector.body209, !llvm.loop !62

middle.block201.unr-lcssa:                        ; preds = %vector.body209, %vector.ph204
  %index210.unr = phi i64 [ 0, %vector.ph204 ], [ %index.next215.1, %vector.body209 ]
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %middle.block201, label %vector.body209.epil

vector.body209.epil:                              ; preds = %middle.block201.unr-lcssa
  %116 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %index210.unr
  %wide.load211.epil = load <2 x i64>, ptr %116, align 8, !tbaa !27, !alias.scope !54
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  %wide.load212.epil = load <2 x i64>, ptr %117, align 8, !tbaa !27, !alias.scope !54
  %118 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %index210.unr
  %wide.load213.epil = load <2 x i64>, ptr %118, align 8, !tbaa !27, !alias.scope !57
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  %wide.load214.epil = load <2 x i64>, ptr %119, align 8, !tbaa !27, !alias.scope !57
  %120 = xor <2 x i64> %wide.load213.epil, %wide.load211.epil
  %121 = xor <2 x i64> %wide.load214.epil, %wide.load212.epil
  %122 = getelementptr inbounds i64, ptr %call2.i, i64 %index210.unr
  store <2 x i64> %120, ptr %122, align 8, !tbaa !27, !alias.scope !59, !noalias !61
  %123 = getelementptr inbounds i64, ptr %122, i64 2
  store <2 x i64> %121, ptr %123, align 8, !tbaa !27, !alias.scope !59, !noalias !61
  br label %middle.block201

middle.block201:                                  ; preds = %middle.block201.unr-lcssa, %vector.body209.epil
  %cmp.n208 = icmp eq i64 %n.vec206, %wide.trip.count.i19
  br i1 %cmp.n208, label %_ZN10Functional3XOREPmS0_S0_i.exit, label %for.body.i27.preheader

for.body.i27.preheader:                           ; preds = %vector.memcheck190, %for.body.preheader.i20, %middle.block201
  %indvars.iv.i21.ph = phi i64 [ 0, %vector.memcheck190 ], [ 0, %for.body.preheader.i20 ], [ %n.vec206, %middle.block201 ]
  %124 = xor i64 %indvars.iv.i21.ph, -1
  %125 = add nsw i64 %124, %wide.trip.count.i19
  %xtraiter366 = and i64 %wide.trip.count.i19, 3
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %for.body.i27.prol.loopexit, label %for.body.i27.prol

for.body.i27.prol:                                ; preds = %for.body.i27.preheader, %for.body.i27.prol
  %indvars.iv.i21.prol = phi i64 [ %indvars.iv.next.i25.prol, %for.body.i27.prol ], [ %indvars.iv.i21.ph, %for.body.i27.preheader ]
  %prol.iter368 = phi i64 [ %prol.iter368.next, %for.body.i27.prol ], [ 0, %for.body.i27.preheader ]
  %arrayidx.i22.prol = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %indvars.iv.i21.prol
  %126 = load i64, ptr %arrayidx.i22.prol, align 8, !tbaa !27
  %arrayidx2.i23.prol = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %indvars.iv.i21.prol
  %127 = load i64, ptr %arrayidx2.i23.prol, align 8, !tbaa !27
  %xor.i.prol = xor i64 %127, %126
  %arrayidx4.i24.prol = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.i21.prol
  store i64 %xor.i.prol, ptr %arrayidx4.i24.prol, align 8, !tbaa !27
  %indvars.iv.next.i25.prol = add nuw nsw i64 %indvars.iv.i21.prol, 1
  %prol.iter368.next = add i64 %prol.iter368, 1
  %prol.iter368.cmp.not = icmp eq i64 %prol.iter368.next, %xtraiter366
  br i1 %prol.iter368.cmp.not, label %for.body.i27.prol.loopexit, label %for.body.i27.prol, !llvm.loop !63

for.body.i27.prol.loopexit:                       ; preds = %for.body.i27.prol, %for.body.i27.preheader
  %indvars.iv.i21.unr = phi i64 [ %indvars.iv.i21.ph, %for.body.i27.preheader ], [ %indvars.iv.next.i25.prol, %for.body.i27.prol ]
  %128 = icmp ult i64 %125, 3
  br i1 %128, label %_ZN10Functional3XOREPmS0_S0_i.exit, label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.prol.loopexit, %for.body.i27
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i25.3, %for.body.i27 ], [ %indvars.iv.i21.unr, %for.body.i27.prol.loopexit ]
  %arrayidx.i22 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %indvars.iv.i21
  %129 = load i64, ptr %arrayidx.i22, align 8, !tbaa !27
  %arrayidx2.i23 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %indvars.iv.i21
  %130 = load i64, ptr %arrayidx2.i23, align 8, !tbaa !27
  %xor.i = xor i64 %130, %129
  %arrayidx4.i24 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.i21
  store i64 %xor.i, ptr %arrayidx4.i24, align 8, !tbaa !27
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i21, 1
  %arrayidx.i22.1 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %indvars.iv.next.i25
  %131 = load i64, ptr %arrayidx.i22.1, align 8, !tbaa !27
  %arrayidx2.i23.1 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %indvars.iv.next.i25
  %132 = load i64, ptr %arrayidx2.i23.1, align 8, !tbaa !27
  %xor.i.1 = xor i64 %132, %131
  %arrayidx4.i24.1 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.next.i25
  store i64 %xor.i.1, ptr %arrayidx4.i24.1, align 8, !tbaa !27
  %indvars.iv.next.i25.1 = add nuw nsw i64 %indvars.iv.i21, 2
  %arrayidx.i22.2 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %indvars.iv.next.i25.1
  %133 = load i64, ptr %arrayidx.i22.2, align 8, !tbaa !27
  %arrayidx2.i23.2 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %indvars.iv.next.i25.1
  %134 = load i64, ptr %arrayidx2.i23.2, align 8, !tbaa !27
  %xor.i.2 = xor i64 %134, %133
  %arrayidx4.i24.2 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.next.i25.1
  store i64 %xor.i.2, ptr %arrayidx4.i24.2, align 8, !tbaa !27
  %indvars.iv.next.i25.2 = add nuw nsw i64 %indvars.iv.i21, 3
  %arrayidx.i22.3 = getelementptr inbounds i64, ptr %lhs.0.i126, i64 %indvars.iv.next.i25.2
  %135 = load i64, ptr %arrayidx.i22.3, align 8, !tbaa !27
  %arrayidx2.i23.3 = getelementptr inbounds i64, ptr %lhs.0.i29.lcssa, i64 %indvars.iv.next.i25.2
  %136 = load i64, ptr %arrayidx2.i23.3, align 8, !tbaa !27
  %xor.i.3 = xor i64 %136, %135
  %arrayidx4.i24.3 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.next.i25.2
  store i64 %xor.i.3, ptr %arrayidx4.i24.3, align 8, !tbaa !27
  %indvars.iv.next.i25.3 = add nuw nsw i64 %indvars.iv.i21, 4
  %exitcond.not.i26.3 = icmp eq i64 %indvars.iv.next.i25.3, %wide.trip.count.i19
  br i1 %exitcond.not.i26.3, label %_ZN10Functional3XOREPmS0_S0_i.exit, label %for.body.i27, !llvm.loop !64

_ZN10Functional3XOREPmS0_S0_i.exit:               ; preds = %for.body.i27.prol.loopexit, %for.body.i27, %middle.block201, %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit
  %cond.i = icmp eq i32 %.pr, 94
  br i1 %cond.i, label %sw.bb.i, label %for.cond.preheader, !llvm.loop !65

sw.bb:                                            ; preds = %sw.bb.lr.ph, %_ZN10Functional2OREPmS0_S0_i.exit
  %lhs.0139 = phi ptr [ %lhs.0.i.lcssa, %sw.bb.lr.ph ], [ %call2, %_ZN10Functional2OREPmS0_S0_i.exit ]
  %137 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %137)
  %call.i94 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %138 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i97128 = icmp eq i32 %138, 42
  br i1 %cond.i97128, label %sw.bb.i104, label %for.cond.i11.preheader

for.cond.i11.preheader:                           ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i115, %sw.bb
  %lhs.0.i95.lcssa = phi ptr [ %call.i94, %sw.bb ], [ %call2.i100, %_ZN10Functional3ANDEPmS0_S0_i.exit.i115 ]
  %.lcssa = phi i32 [ %138, %sw.bb ], [ %183, %_ZN10Functional3ANDEPmS0_S0_i.exit.i115 ]
  %cond.i10135 = icmp eq i32 %.lcssa, 94
  br i1 %cond.i10135, label %sw.bb.i16, label %for.cond.i11.preheader._ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17_crit_edge

for.cond.i11.preheader._ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17_crit_edge: ; preds = %for.cond.i11.preheader
  %.pre146 = load i32, ptr %nWords.i102, align 4, !tbaa !21
  br label %_ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17

sw.bb.i104:                                       ; preds = %sw.bb, %_ZN10Functional3ANDEPmS0_S0_i.exit.i115
  %lhs.0.i95129 = phi ptr [ %call2.i100, %_ZN10Functional3ANDEPmS0_S0_i.exit.i115 ], [ %call.i94, %sw.bb ]
  %139 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2.i100 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %139)
  %call3.i101 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %140 = load i32, ptr %nWords.i102, align 4, !tbaa !21
  %cmp9.i.i103 = icmp sgt i32 %140, 0
  br i1 %cmp9.i.i103, label %for.body.preheader.i.i106, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i115

for.body.preheader.i.i106:                        ; preds = %sw.bb.i104
  %wide.trip.count.i.i105 = zext i32 %140 to i64
  %min.iters.check333 = icmp ult i32 %140, 4
  br i1 %min.iters.check333, label %for.body.i.i114.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %for.body.preheader.i.i106
  %141 = shl nuw nsw i64 %wide.trip.count.i.i105, 3
  %uglygep321 = getelementptr i8, ptr %call2.i100, i64 %141
  %uglygep322 = getelementptr i8, ptr %lhs.0.i95129, i64 %141
  %uglygep323 = getelementptr i8, ptr %call3.i101, i64 %141
  %bound0324 = icmp ult ptr %call2.i100, %uglygep322
  %bound1325 = icmp ult ptr %lhs.0.i95129, %uglygep321
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0327 = icmp ult ptr %call2.i100, %uglygep323
  %bound1328 = icmp ult ptr %call3.i101, %uglygep321
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %found.conflict326, %found.conflict329
  br i1 %conflict.rdx330, label %for.body.i.i114.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck320
  %n.vec336 = and i64 %wide.trip.count.i.i105, 4294967292
  %142 = add nsw i64 %n.vec336, -4
  %143 = lshr exact i64 %142, 2
  %144 = add nuw nsw i64 %143, 1
  %xtraiter369 = and i64 %144, 1
  %145 = icmp eq i64 %142, 0
  br i1 %145, label %middle.block331.unr-lcssa, label %vector.ph334.new

vector.ph334.new:                                 ; preds = %vector.ph334
  %unroll_iter371 = and i64 %144, 9223372036854775806
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph334.new
  %index340 = phi i64 [ 0, %vector.ph334.new ], [ %index.next345.1, %vector.body339 ]
  %niter372 = phi i64 [ 0, %vector.ph334.new ], [ %niter372.next.1, %vector.body339 ]
  %146 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %index340
  %wide.load341 = load <2 x i64>, ptr %146, align 8, !tbaa !27, !alias.scope !66
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  %wide.load342 = load <2 x i64>, ptr %147, align 8, !tbaa !27, !alias.scope !66
  %148 = getelementptr inbounds i64, ptr %call3.i101, i64 %index340
  %wide.load343 = load <2 x i64>, ptr %148, align 8, !tbaa !27, !alias.scope !69
  %149 = getelementptr inbounds i64, ptr %148, i64 2
  %wide.load344 = load <2 x i64>, ptr %149, align 8, !tbaa !27, !alias.scope !69
  %150 = and <2 x i64> %wide.load343, %wide.load341
  %151 = and <2 x i64> %wide.load344, %wide.load342
  %152 = getelementptr inbounds i64, ptr %call2.i100, i64 %index340
  store <2 x i64> %150, ptr %152, align 8, !tbaa !27, !alias.scope !71, !noalias !73
  %153 = getelementptr inbounds i64, ptr %152, i64 2
  store <2 x i64> %151, ptr %153, align 8, !tbaa !27, !alias.scope !71, !noalias !73
  %index.next345 = or i64 %index340, 4
  %154 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %index.next345
  %wide.load341.1 = load <2 x i64>, ptr %154, align 8, !tbaa !27, !alias.scope !66
  %155 = getelementptr inbounds i64, ptr %154, i64 2
  %wide.load342.1 = load <2 x i64>, ptr %155, align 8, !tbaa !27, !alias.scope !66
  %156 = getelementptr inbounds i64, ptr %call3.i101, i64 %index.next345
  %wide.load343.1 = load <2 x i64>, ptr %156, align 8, !tbaa !27, !alias.scope !69
  %157 = getelementptr inbounds i64, ptr %156, i64 2
  %wide.load344.1 = load <2 x i64>, ptr %157, align 8, !tbaa !27, !alias.scope !69
  %158 = and <2 x i64> %wide.load343.1, %wide.load341.1
  %159 = and <2 x i64> %wide.load344.1, %wide.load342.1
  %160 = getelementptr inbounds i64, ptr %call2.i100, i64 %index.next345
  store <2 x i64> %158, ptr %160, align 8, !tbaa !27, !alias.scope !71, !noalias !73
  %161 = getelementptr inbounds i64, ptr %160, i64 2
  store <2 x i64> %159, ptr %161, align 8, !tbaa !27, !alias.scope !71, !noalias !73
  %index.next345.1 = add nuw i64 %index340, 8
  %niter372.next.1 = add i64 %niter372, 2
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371
  br i1 %niter372.ncmp.1, label %middle.block331.unr-lcssa, label %vector.body339, !llvm.loop !74

middle.block331.unr-lcssa:                        ; preds = %vector.body339, %vector.ph334
  %index340.unr = phi i64 [ 0, %vector.ph334 ], [ %index.next345.1, %vector.body339 ]
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %middle.block331, label %vector.body339.epil

vector.body339.epil:                              ; preds = %middle.block331.unr-lcssa
  %162 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %index340.unr
  %wide.load341.epil = load <2 x i64>, ptr %162, align 8, !tbaa !27, !alias.scope !66
  %163 = getelementptr inbounds i64, ptr %162, i64 2
  %wide.load342.epil = load <2 x i64>, ptr %163, align 8, !tbaa !27, !alias.scope !66
  %164 = getelementptr inbounds i64, ptr %call3.i101, i64 %index340.unr
  %wide.load343.epil = load <2 x i64>, ptr %164, align 8, !tbaa !27, !alias.scope !69
  %165 = getelementptr inbounds i64, ptr %164, i64 2
  %wide.load344.epil = load <2 x i64>, ptr %165, align 8, !tbaa !27, !alias.scope !69
  %166 = and <2 x i64> %wide.load343.epil, %wide.load341.epil
  %167 = and <2 x i64> %wide.load344.epil, %wide.load342.epil
  %168 = getelementptr inbounds i64, ptr %call2.i100, i64 %index340.unr
  store <2 x i64> %166, ptr %168, align 8, !tbaa !27, !alias.scope !71, !noalias !73
  %169 = getelementptr inbounds i64, ptr %168, i64 2
  store <2 x i64> %167, ptr %169, align 8, !tbaa !27, !alias.scope !71, !noalias !73
  br label %middle.block331

middle.block331:                                  ; preds = %middle.block331.unr-lcssa, %vector.body339.epil
  %cmp.n338 = icmp eq i64 %n.vec336, %wide.trip.count.i.i105
  br i1 %cmp.n338, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i115, label %for.body.i.i114.preheader

for.body.i.i114.preheader:                        ; preds = %vector.memcheck320, %for.body.preheader.i.i106, %middle.block331
  %indvars.iv.i.i107.ph = phi i64 [ 0, %vector.memcheck320 ], [ 0, %for.body.preheader.i.i106 ], [ %n.vec336, %middle.block331 ]
  %170 = xor i64 %indvars.iv.i.i107.ph, -1
  %171 = add nsw i64 %170, %wide.trip.count.i.i105
  %xtraiter373 = and i64 %wide.trip.count.i.i105, 3
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %for.body.i.i114.prol.loopexit, label %for.body.i.i114.prol

for.body.i.i114.prol:                             ; preds = %for.body.i.i114.preheader, %for.body.i.i114.prol
  %indvars.iv.i.i107.prol = phi i64 [ %indvars.iv.next.i.i112.prol, %for.body.i.i114.prol ], [ %indvars.iv.i.i107.ph, %for.body.i.i114.preheader ]
  %prol.iter375 = phi i64 [ %prol.iter375.next, %for.body.i.i114.prol ], [ 0, %for.body.i.i114.preheader ]
  %arrayidx.i.i108.prol = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %indvars.iv.i.i107.prol
  %172 = load i64, ptr %arrayidx.i.i108.prol, align 8, !tbaa !27
  %arrayidx2.i.i109.prol = getelementptr inbounds i64, ptr %call3.i101, i64 %indvars.iv.i.i107.prol
  %173 = load i64, ptr %arrayidx2.i.i109.prol, align 8, !tbaa !27
  %and.i.i110.prol = and i64 %173, %172
  %arrayidx4.i.i111.prol = getelementptr inbounds i64, ptr %call2.i100, i64 %indvars.iv.i.i107.prol
  store i64 %and.i.i110.prol, ptr %arrayidx4.i.i111.prol, align 8, !tbaa !27
  %indvars.iv.next.i.i112.prol = add nuw nsw i64 %indvars.iv.i.i107.prol, 1
  %prol.iter375.next = add i64 %prol.iter375, 1
  %prol.iter375.cmp.not = icmp eq i64 %prol.iter375.next, %xtraiter373
  br i1 %prol.iter375.cmp.not, label %for.body.i.i114.prol.loopexit, label %for.body.i.i114.prol, !llvm.loop !75

for.body.i.i114.prol.loopexit:                    ; preds = %for.body.i.i114.prol, %for.body.i.i114.preheader
  %indvars.iv.i.i107.unr = phi i64 [ %indvars.iv.i.i107.ph, %for.body.i.i114.preheader ], [ %indvars.iv.next.i.i112.prol, %for.body.i.i114.prol ]
  %174 = icmp ult i64 %171, 3
  br i1 %174, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i115, label %for.body.i.i114

for.body.i.i114:                                  ; preds = %for.body.i.i114.prol.loopexit, %for.body.i.i114
  %indvars.iv.i.i107 = phi i64 [ %indvars.iv.next.i.i112.3, %for.body.i.i114 ], [ %indvars.iv.i.i107.unr, %for.body.i.i114.prol.loopexit ]
  %arrayidx.i.i108 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %indvars.iv.i.i107
  %175 = load i64, ptr %arrayidx.i.i108, align 8, !tbaa !27
  %arrayidx2.i.i109 = getelementptr inbounds i64, ptr %call3.i101, i64 %indvars.iv.i.i107
  %176 = load i64, ptr %arrayidx2.i.i109, align 8, !tbaa !27
  %and.i.i110 = and i64 %176, %175
  %arrayidx4.i.i111 = getelementptr inbounds i64, ptr %call2.i100, i64 %indvars.iv.i.i107
  store i64 %and.i.i110, ptr %arrayidx4.i.i111, align 8, !tbaa !27
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i107, 1
  %arrayidx.i.i108.1 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %indvars.iv.next.i.i112
  %177 = load i64, ptr %arrayidx.i.i108.1, align 8, !tbaa !27
  %arrayidx2.i.i109.1 = getelementptr inbounds i64, ptr %call3.i101, i64 %indvars.iv.next.i.i112
  %178 = load i64, ptr %arrayidx2.i.i109.1, align 8, !tbaa !27
  %and.i.i110.1 = and i64 %178, %177
  %arrayidx4.i.i111.1 = getelementptr inbounds i64, ptr %call2.i100, i64 %indvars.iv.next.i.i112
  store i64 %and.i.i110.1, ptr %arrayidx4.i.i111.1, align 8, !tbaa !27
  %indvars.iv.next.i.i112.1 = add nuw nsw i64 %indvars.iv.i.i107, 2
  %arrayidx.i.i108.2 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %indvars.iv.next.i.i112.1
  %179 = load i64, ptr %arrayidx.i.i108.2, align 8, !tbaa !27
  %arrayidx2.i.i109.2 = getelementptr inbounds i64, ptr %call3.i101, i64 %indvars.iv.next.i.i112.1
  %180 = load i64, ptr %arrayidx2.i.i109.2, align 8, !tbaa !27
  %and.i.i110.2 = and i64 %180, %179
  %arrayidx4.i.i111.2 = getelementptr inbounds i64, ptr %call2.i100, i64 %indvars.iv.next.i.i112.1
  store i64 %and.i.i110.2, ptr %arrayidx4.i.i111.2, align 8, !tbaa !27
  %indvars.iv.next.i.i112.2 = add nuw nsw i64 %indvars.iv.i.i107, 3
  %arrayidx.i.i108.3 = getelementptr inbounds i64, ptr %lhs.0.i95129, i64 %indvars.iv.next.i.i112.2
  %181 = load i64, ptr %arrayidx.i.i108.3, align 8, !tbaa !27
  %arrayidx2.i.i109.3 = getelementptr inbounds i64, ptr %call3.i101, i64 %indvars.iv.next.i.i112.2
  %182 = load i64, ptr %arrayidx2.i.i109.3, align 8, !tbaa !27
  %and.i.i110.3 = and i64 %182, %181
  %arrayidx4.i.i111.3 = getelementptr inbounds i64, ptr %call2.i100, i64 %indvars.iv.next.i.i112.2
  store i64 %and.i.i110.3, ptr %arrayidx4.i.i111.3, align 8, !tbaa !27
  %indvars.iv.next.i.i112.3 = add nuw nsw i64 %indvars.iv.i.i107, 4
  %exitcond.not.i.i113.3 = icmp eq i64 %indvars.iv.next.i.i112.3, %wide.trip.count.i.i105
  br i1 %exitcond.not.i.i113.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i115, label %for.body.i.i114, !llvm.loop !76

_ZN10Functional3ANDEPmS0_S0_i.exit.i115:          ; preds = %for.body.i.i114.prol.loopexit, %for.body.i.i114, %middle.block331, %sw.bb.i104
  %183 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i97 = icmp eq i32 %183, 42
  br i1 %cond.i97, label %sw.bb.i104, label %for.cond.i11.preheader, !llvm.loop !42

sw.bb.i16:                                        ; preds = %for.cond.i11.preheader, %_ZN10Functional3XOREPmS0_S0_i.exit71
  %lhs.0.i8136 = phi ptr [ %call2.i13, %_ZN10Functional3XOREPmS0_S0_i.exit71 ], [ %lhs.0.i95.lcssa, %for.cond.i11.preheader ]
  %184 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2.i13 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %184)
  %call.i = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %185 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i74132 = icmp eq i32 %185, 42
  br i1 %cond.i74132, label %sw.bb.i81, label %sw.bb.i16._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93_crit_edge

sw.bb.i16._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93_crit_edge: ; preds = %sw.bb.i16
  %.pre144 = load i32, ptr %nWords.i102, align 4, !tbaa !21
  br label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93

sw.bb.i81:                                        ; preds = %sw.bb.i16, %_ZN10Functional3ANDEPmS0_S0_i.exit.i92
  %lhs.0.i72133 = phi ptr [ %call2.i77, %_ZN10Functional3ANDEPmS0_S0_i.exit.i92 ], [ %call.i, %sw.bb.i16 ]
  %186 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2.i77 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %186)
  %call3.i78 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %187 = load i32, ptr %nWords.i102, align 4, !tbaa !21
  %cmp9.i.i80 = icmp sgt i32 %187, 0
  br i1 %cmp9.i.i80, label %for.body.preheader.i.i83, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i92

for.body.preheader.i.i83:                         ; preds = %sw.bb.i81
  %wide.trip.count.i.i82 = zext i32 %187 to i64
  %min.iters.check307 = icmp ult i32 %187, 4
  br i1 %min.iters.check307, label %for.body.i.i91.preheader, label %vector.memcheck294

vector.memcheck294:                               ; preds = %for.body.preheader.i.i83
  %188 = shl nuw nsw i64 %wide.trip.count.i.i82, 3
  %uglygep295 = getelementptr i8, ptr %call2.i77, i64 %188
  %uglygep296 = getelementptr i8, ptr %lhs.0.i72133, i64 %188
  %uglygep297 = getelementptr i8, ptr %call3.i78, i64 %188
  %bound0298 = icmp ult ptr %call2.i77, %uglygep296
  %bound1299 = icmp ult ptr %lhs.0.i72133, %uglygep295
  %found.conflict300 = and i1 %bound0298, %bound1299
  %bound0301 = icmp ult ptr %call2.i77, %uglygep297
  %bound1302 = icmp ult ptr %call3.i78, %uglygep295
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %found.conflict300, %found.conflict303
  br i1 %conflict.rdx304, label %for.body.i.i91.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck294
  %n.vec310 = and i64 %wide.trip.count.i.i82, 4294967292
  %189 = add nsw i64 %n.vec310, -4
  %190 = lshr exact i64 %189, 2
  %191 = add nuw nsw i64 %190, 1
  %xtraiter376 = and i64 %191, 1
  %192 = icmp eq i64 %189, 0
  br i1 %192, label %middle.block305.unr-lcssa, label %vector.ph308.new

vector.ph308.new:                                 ; preds = %vector.ph308
  %unroll_iter378 = and i64 %191, 9223372036854775806
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph308.new
  %index314 = phi i64 [ 0, %vector.ph308.new ], [ %index.next319.1, %vector.body313 ]
  %niter379 = phi i64 [ 0, %vector.ph308.new ], [ %niter379.next.1, %vector.body313 ]
  %193 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %index314
  %wide.load315 = load <2 x i64>, ptr %193, align 8, !tbaa !27, !alias.scope !77
  %194 = getelementptr inbounds i64, ptr %193, i64 2
  %wide.load316 = load <2 x i64>, ptr %194, align 8, !tbaa !27, !alias.scope !77
  %195 = getelementptr inbounds i64, ptr %call3.i78, i64 %index314
  %wide.load317 = load <2 x i64>, ptr %195, align 8, !tbaa !27, !alias.scope !80
  %196 = getelementptr inbounds i64, ptr %195, i64 2
  %wide.load318 = load <2 x i64>, ptr %196, align 8, !tbaa !27, !alias.scope !80
  %197 = and <2 x i64> %wide.load317, %wide.load315
  %198 = and <2 x i64> %wide.load318, %wide.load316
  %199 = getelementptr inbounds i64, ptr %call2.i77, i64 %index314
  store <2 x i64> %197, ptr %199, align 8, !tbaa !27, !alias.scope !82, !noalias !84
  %200 = getelementptr inbounds i64, ptr %199, i64 2
  store <2 x i64> %198, ptr %200, align 8, !tbaa !27, !alias.scope !82, !noalias !84
  %index.next319 = or i64 %index314, 4
  %201 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %index.next319
  %wide.load315.1 = load <2 x i64>, ptr %201, align 8, !tbaa !27, !alias.scope !77
  %202 = getelementptr inbounds i64, ptr %201, i64 2
  %wide.load316.1 = load <2 x i64>, ptr %202, align 8, !tbaa !27, !alias.scope !77
  %203 = getelementptr inbounds i64, ptr %call3.i78, i64 %index.next319
  %wide.load317.1 = load <2 x i64>, ptr %203, align 8, !tbaa !27, !alias.scope !80
  %204 = getelementptr inbounds i64, ptr %203, i64 2
  %wide.load318.1 = load <2 x i64>, ptr %204, align 8, !tbaa !27, !alias.scope !80
  %205 = and <2 x i64> %wide.load317.1, %wide.load315.1
  %206 = and <2 x i64> %wide.load318.1, %wide.load316.1
  %207 = getelementptr inbounds i64, ptr %call2.i77, i64 %index.next319
  store <2 x i64> %205, ptr %207, align 8, !tbaa !27, !alias.scope !82, !noalias !84
  %208 = getelementptr inbounds i64, ptr %207, i64 2
  store <2 x i64> %206, ptr %208, align 8, !tbaa !27, !alias.scope !82, !noalias !84
  %index.next319.1 = add nuw i64 %index314, 8
  %niter379.next.1 = add i64 %niter379, 2
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %middle.block305.unr-lcssa, label %vector.body313, !llvm.loop !85

middle.block305.unr-lcssa:                        ; preds = %vector.body313, %vector.ph308
  %index314.unr = phi i64 [ 0, %vector.ph308 ], [ %index.next319.1, %vector.body313 ]
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %middle.block305, label %vector.body313.epil

vector.body313.epil:                              ; preds = %middle.block305.unr-lcssa
  %209 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %index314.unr
  %wide.load315.epil = load <2 x i64>, ptr %209, align 8, !tbaa !27, !alias.scope !77
  %210 = getelementptr inbounds i64, ptr %209, i64 2
  %wide.load316.epil = load <2 x i64>, ptr %210, align 8, !tbaa !27, !alias.scope !77
  %211 = getelementptr inbounds i64, ptr %call3.i78, i64 %index314.unr
  %wide.load317.epil = load <2 x i64>, ptr %211, align 8, !tbaa !27, !alias.scope !80
  %212 = getelementptr inbounds i64, ptr %211, i64 2
  %wide.load318.epil = load <2 x i64>, ptr %212, align 8, !tbaa !27, !alias.scope !80
  %213 = and <2 x i64> %wide.load317.epil, %wide.load315.epil
  %214 = and <2 x i64> %wide.load318.epil, %wide.load316.epil
  %215 = getelementptr inbounds i64, ptr %call2.i77, i64 %index314.unr
  store <2 x i64> %213, ptr %215, align 8, !tbaa !27, !alias.scope !82, !noalias !84
  %216 = getelementptr inbounds i64, ptr %215, i64 2
  store <2 x i64> %214, ptr %216, align 8, !tbaa !27, !alias.scope !82, !noalias !84
  br label %middle.block305

middle.block305:                                  ; preds = %middle.block305.unr-lcssa, %vector.body313.epil
  %cmp.n312 = icmp eq i64 %n.vec310, %wide.trip.count.i.i82
  br i1 %cmp.n312, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i92, label %for.body.i.i91.preheader

for.body.i.i91.preheader:                         ; preds = %vector.memcheck294, %for.body.preheader.i.i83, %middle.block305
  %indvars.iv.i.i84.ph = phi i64 [ 0, %vector.memcheck294 ], [ 0, %for.body.preheader.i.i83 ], [ %n.vec310, %middle.block305 ]
  %217 = xor i64 %indvars.iv.i.i84.ph, -1
  %218 = add nsw i64 %217, %wide.trip.count.i.i82
  %xtraiter380 = and i64 %wide.trip.count.i.i82, 3
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %for.body.i.i91.prol.loopexit, label %for.body.i.i91.prol

for.body.i.i91.prol:                              ; preds = %for.body.i.i91.preheader, %for.body.i.i91.prol
  %indvars.iv.i.i84.prol = phi i64 [ %indvars.iv.next.i.i89.prol, %for.body.i.i91.prol ], [ %indvars.iv.i.i84.ph, %for.body.i.i91.preheader ]
  %prol.iter382 = phi i64 [ %prol.iter382.next, %for.body.i.i91.prol ], [ 0, %for.body.i.i91.preheader ]
  %arrayidx.i.i85.prol = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %indvars.iv.i.i84.prol
  %219 = load i64, ptr %arrayidx.i.i85.prol, align 8, !tbaa !27
  %arrayidx2.i.i86.prol = getelementptr inbounds i64, ptr %call3.i78, i64 %indvars.iv.i.i84.prol
  %220 = load i64, ptr %arrayidx2.i.i86.prol, align 8, !tbaa !27
  %and.i.i87.prol = and i64 %220, %219
  %arrayidx4.i.i88.prol = getelementptr inbounds i64, ptr %call2.i77, i64 %indvars.iv.i.i84.prol
  store i64 %and.i.i87.prol, ptr %arrayidx4.i.i88.prol, align 8, !tbaa !27
  %indvars.iv.next.i.i89.prol = add nuw nsw i64 %indvars.iv.i.i84.prol, 1
  %prol.iter382.next = add i64 %prol.iter382, 1
  %prol.iter382.cmp.not = icmp eq i64 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %for.body.i.i91.prol.loopexit, label %for.body.i.i91.prol, !llvm.loop !86

for.body.i.i91.prol.loopexit:                     ; preds = %for.body.i.i91.prol, %for.body.i.i91.preheader
  %indvars.iv.i.i84.unr = phi i64 [ %indvars.iv.i.i84.ph, %for.body.i.i91.preheader ], [ %indvars.iv.next.i.i89.prol, %for.body.i.i91.prol ]
  %221 = icmp ult i64 %218, 3
  br i1 %221, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i92, label %for.body.i.i91

for.body.i.i91:                                   ; preds = %for.body.i.i91.prol.loopexit, %for.body.i.i91
  %indvars.iv.i.i84 = phi i64 [ %indvars.iv.next.i.i89.3, %for.body.i.i91 ], [ %indvars.iv.i.i84.unr, %for.body.i.i91.prol.loopexit ]
  %arrayidx.i.i85 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %indvars.iv.i.i84
  %222 = load i64, ptr %arrayidx.i.i85, align 8, !tbaa !27
  %arrayidx2.i.i86 = getelementptr inbounds i64, ptr %call3.i78, i64 %indvars.iv.i.i84
  %223 = load i64, ptr %arrayidx2.i.i86, align 8, !tbaa !27
  %and.i.i87 = and i64 %223, %222
  %arrayidx4.i.i88 = getelementptr inbounds i64, ptr %call2.i77, i64 %indvars.iv.i.i84
  store i64 %and.i.i87, ptr %arrayidx4.i.i88, align 8, !tbaa !27
  %indvars.iv.next.i.i89 = add nuw nsw i64 %indvars.iv.i.i84, 1
  %arrayidx.i.i85.1 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %indvars.iv.next.i.i89
  %224 = load i64, ptr %arrayidx.i.i85.1, align 8, !tbaa !27
  %arrayidx2.i.i86.1 = getelementptr inbounds i64, ptr %call3.i78, i64 %indvars.iv.next.i.i89
  %225 = load i64, ptr %arrayidx2.i.i86.1, align 8, !tbaa !27
  %and.i.i87.1 = and i64 %225, %224
  %arrayidx4.i.i88.1 = getelementptr inbounds i64, ptr %call2.i77, i64 %indvars.iv.next.i.i89
  store i64 %and.i.i87.1, ptr %arrayidx4.i.i88.1, align 8, !tbaa !27
  %indvars.iv.next.i.i89.1 = add nuw nsw i64 %indvars.iv.i.i84, 2
  %arrayidx.i.i85.2 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %indvars.iv.next.i.i89.1
  %226 = load i64, ptr %arrayidx.i.i85.2, align 8, !tbaa !27
  %arrayidx2.i.i86.2 = getelementptr inbounds i64, ptr %call3.i78, i64 %indvars.iv.next.i.i89.1
  %227 = load i64, ptr %arrayidx2.i.i86.2, align 8, !tbaa !27
  %and.i.i87.2 = and i64 %227, %226
  %arrayidx4.i.i88.2 = getelementptr inbounds i64, ptr %call2.i77, i64 %indvars.iv.next.i.i89.1
  store i64 %and.i.i87.2, ptr %arrayidx4.i.i88.2, align 8, !tbaa !27
  %indvars.iv.next.i.i89.2 = add nuw nsw i64 %indvars.iv.i.i84, 3
  %arrayidx.i.i85.3 = getelementptr inbounds i64, ptr %lhs.0.i72133, i64 %indvars.iv.next.i.i89.2
  %228 = load i64, ptr %arrayidx.i.i85.3, align 8, !tbaa !27
  %arrayidx2.i.i86.3 = getelementptr inbounds i64, ptr %call3.i78, i64 %indvars.iv.next.i.i89.2
  %229 = load i64, ptr %arrayidx2.i.i86.3, align 8, !tbaa !27
  %and.i.i87.3 = and i64 %229, %228
  %arrayidx4.i.i88.3 = getelementptr inbounds i64, ptr %call2.i77, i64 %indvars.iv.next.i.i89.2
  store i64 %and.i.i87.3, ptr %arrayidx4.i.i88.3, align 8, !tbaa !27
  %indvars.iv.next.i.i89.3 = add nuw nsw i64 %indvars.iv.i.i84, 4
  %exitcond.not.i.i90.3 = icmp eq i64 %indvars.iv.next.i.i89.3, %wide.trip.count.i.i82
  br i1 %exitcond.not.i.i90.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i92, label %for.body.i.i91, !llvm.loop !87

_ZN10Functional3ANDEPmS0_S0_i.exit.i92:           ; preds = %for.body.i.i91.prol.loopexit, %for.body.i.i91, %middle.block305, %sw.bb.i81
  %230 = load i32, ptr %currentToken.i40, align 8, !tbaa !22
  %cond.i74 = icmp eq i32 %230, 42
  br i1 %cond.i74, label %sw.bb.i81, label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93, !llvm.loop !42

_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93: ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i92, %sw.bb.i16._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93_crit_edge
  %.pr117 = phi i32 [ %185, %sw.bb.i16._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93_crit_edge ], [ %230, %_ZN10Functional3ANDEPmS0_S0_i.exit.i92 ]
  %231 = phi i32 [ %.pre144, %sw.bb.i16._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93_crit_edge ], [ %187, %_ZN10Functional3ANDEPmS0_S0_i.exit.i92 ]
  %lhs.0.i72.lcssa = phi ptr [ %call.i, %sw.bb.i16._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93_crit_edge ], [ %call2.i77, %_ZN10Functional3ANDEPmS0_S0_i.exit.i92 ]
  %cmp9.i60 = icmp sgt i32 %231, 0
  br i1 %cmp9.i60, label %for.body.preheader.i62, label %_ZN10Functional3XOREPmS0_S0_i.exit71

for.body.preheader.i62:                           ; preds = %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93
  %wide.trip.count.i61 = zext i32 %231 to i64
  %min.iters.check281 = icmp ult i32 %231, 4
  br i1 %min.iters.check281, label %for.body.i70.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %for.body.preheader.i62
  %232 = shl nuw nsw i64 %wide.trip.count.i61, 3
  %uglygep269 = getelementptr i8, ptr %call2.i13, i64 %232
  %uglygep270 = getelementptr i8, ptr %lhs.0.i8136, i64 %232
  %uglygep271 = getelementptr i8, ptr %lhs.0.i72.lcssa, i64 %232
  %bound0272 = icmp ult ptr %call2.i13, %uglygep270
  %bound1273 = icmp ult ptr %lhs.0.i8136, %uglygep269
  %found.conflict274 = and i1 %bound0272, %bound1273
  %bound0275 = icmp ult ptr %call2.i13, %uglygep271
  %bound1276 = icmp ult ptr %lhs.0.i72.lcssa, %uglygep269
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %found.conflict274, %found.conflict277
  br i1 %conflict.rdx278, label %for.body.i70.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck268
  %n.vec284 = and i64 %wide.trip.count.i61, 4294967292
  %233 = add nsw i64 %n.vec284, -4
  %234 = lshr exact i64 %233, 2
  %235 = add nuw nsw i64 %234, 1
  %xtraiter383 = and i64 %235, 1
  %236 = icmp eq i64 %233, 0
  br i1 %236, label %middle.block279.unr-lcssa, label %vector.ph282.new

vector.ph282.new:                                 ; preds = %vector.ph282
  %unroll_iter385 = and i64 %235, 9223372036854775806
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph282.new
  %index288 = phi i64 [ 0, %vector.ph282.new ], [ %index.next293.1, %vector.body287 ]
  %niter386 = phi i64 [ 0, %vector.ph282.new ], [ %niter386.next.1, %vector.body287 ]
  %237 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %index288
  %wide.load289 = load <2 x i64>, ptr %237, align 8, !tbaa !27, !alias.scope !88
  %238 = getelementptr inbounds i64, ptr %237, i64 2
  %wide.load290 = load <2 x i64>, ptr %238, align 8, !tbaa !27, !alias.scope !88
  %239 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %index288
  %wide.load291 = load <2 x i64>, ptr %239, align 8, !tbaa !27, !alias.scope !91
  %240 = getelementptr inbounds i64, ptr %239, i64 2
  %wide.load292 = load <2 x i64>, ptr %240, align 8, !tbaa !27, !alias.scope !91
  %241 = xor <2 x i64> %wide.load291, %wide.load289
  %242 = xor <2 x i64> %wide.load292, %wide.load290
  %243 = getelementptr inbounds i64, ptr %call2.i13, i64 %index288
  store <2 x i64> %241, ptr %243, align 8, !tbaa !27, !alias.scope !93, !noalias !95
  %244 = getelementptr inbounds i64, ptr %243, i64 2
  store <2 x i64> %242, ptr %244, align 8, !tbaa !27, !alias.scope !93, !noalias !95
  %index.next293 = or i64 %index288, 4
  %245 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %index.next293
  %wide.load289.1 = load <2 x i64>, ptr %245, align 8, !tbaa !27, !alias.scope !88
  %246 = getelementptr inbounds i64, ptr %245, i64 2
  %wide.load290.1 = load <2 x i64>, ptr %246, align 8, !tbaa !27, !alias.scope !88
  %247 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %index.next293
  %wide.load291.1 = load <2 x i64>, ptr %247, align 8, !tbaa !27, !alias.scope !91
  %248 = getelementptr inbounds i64, ptr %247, i64 2
  %wide.load292.1 = load <2 x i64>, ptr %248, align 8, !tbaa !27, !alias.scope !91
  %249 = xor <2 x i64> %wide.load291.1, %wide.load289.1
  %250 = xor <2 x i64> %wide.load292.1, %wide.load290.1
  %251 = getelementptr inbounds i64, ptr %call2.i13, i64 %index.next293
  store <2 x i64> %249, ptr %251, align 8, !tbaa !27, !alias.scope !93, !noalias !95
  %252 = getelementptr inbounds i64, ptr %251, i64 2
  store <2 x i64> %250, ptr %252, align 8, !tbaa !27, !alias.scope !93, !noalias !95
  %index.next293.1 = add nuw i64 %index288, 8
  %niter386.next.1 = add i64 %niter386, 2
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %middle.block279.unr-lcssa, label %vector.body287, !llvm.loop !96

middle.block279.unr-lcssa:                        ; preds = %vector.body287, %vector.ph282
  %index288.unr = phi i64 [ 0, %vector.ph282 ], [ %index.next293.1, %vector.body287 ]
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %middle.block279, label %vector.body287.epil

vector.body287.epil:                              ; preds = %middle.block279.unr-lcssa
  %253 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %index288.unr
  %wide.load289.epil = load <2 x i64>, ptr %253, align 8, !tbaa !27, !alias.scope !88
  %254 = getelementptr inbounds i64, ptr %253, i64 2
  %wide.load290.epil = load <2 x i64>, ptr %254, align 8, !tbaa !27, !alias.scope !88
  %255 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %index288.unr
  %wide.load291.epil = load <2 x i64>, ptr %255, align 8, !tbaa !27, !alias.scope !91
  %256 = getelementptr inbounds i64, ptr %255, i64 2
  %wide.load292.epil = load <2 x i64>, ptr %256, align 8, !tbaa !27, !alias.scope !91
  %257 = xor <2 x i64> %wide.load291.epil, %wide.load289.epil
  %258 = xor <2 x i64> %wide.load292.epil, %wide.load290.epil
  %259 = getelementptr inbounds i64, ptr %call2.i13, i64 %index288.unr
  store <2 x i64> %257, ptr %259, align 8, !tbaa !27, !alias.scope !93, !noalias !95
  %260 = getelementptr inbounds i64, ptr %259, i64 2
  store <2 x i64> %258, ptr %260, align 8, !tbaa !27, !alias.scope !93, !noalias !95
  br label %middle.block279

middle.block279:                                  ; preds = %middle.block279.unr-lcssa, %vector.body287.epil
  %cmp.n286 = icmp eq i64 %n.vec284, %wide.trip.count.i61
  br i1 %cmp.n286, label %_ZN10Functional3XOREPmS0_S0_i.exit71, label %for.body.i70.preheader

for.body.i70.preheader:                           ; preds = %vector.memcheck268, %for.body.preheader.i62, %middle.block279
  %indvars.iv.i63.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %for.body.preheader.i62 ], [ %n.vec284, %middle.block279 ]
  %261 = xor i64 %indvars.iv.i63.ph, -1
  %262 = add nsw i64 %261, %wide.trip.count.i61
  %xtraiter387 = and i64 %wide.trip.count.i61, 3
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %for.body.i70.prol.loopexit, label %for.body.i70.prol

for.body.i70.prol:                                ; preds = %for.body.i70.preheader, %for.body.i70.prol
  %indvars.iv.i63.prol = phi i64 [ %indvars.iv.next.i68.prol, %for.body.i70.prol ], [ %indvars.iv.i63.ph, %for.body.i70.preheader ]
  %prol.iter389 = phi i64 [ %prol.iter389.next, %for.body.i70.prol ], [ 0, %for.body.i70.preheader ]
  %arrayidx.i64.prol = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %indvars.iv.i63.prol
  %263 = load i64, ptr %arrayidx.i64.prol, align 8, !tbaa !27
  %arrayidx2.i65.prol = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %indvars.iv.i63.prol
  %264 = load i64, ptr %arrayidx2.i65.prol, align 8, !tbaa !27
  %xor.i66.prol = xor i64 %264, %263
  %arrayidx4.i67.prol = getelementptr inbounds i64, ptr %call2.i13, i64 %indvars.iv.i63.prol
  store i64 %xor.i66.prol, ptr %arrayidx4.i67.prol, align 8, !tbaa !27
  %indvars.iv.next.i68.prol = add nuw nsw i64 %indvars.iv.i63.prol, 1
  %prol.iter389.next = add i64 %prol.iter389, 1
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %for.body.i70.prol.loopexit, label %for.body.i70.prol, !llvm.loop !97

for.body.i70.prol.loopexit:                       ; preds = %for.body.i70.prol, %for.body.i70.preheader
  %indvars.iv.i63.unr = phi i64 [ %indvars.iv.i63.ph, %for.body.i70.preheader ], [ %indvars.iv.next.i68.prol, %for.body.i70.prol ]
  %265 = icmp ult i64 %262, 3
  br i1 %265, label %_ZN10Functional3XOREPmS0_S0_i.exit71, label %for.body.i70

for.body.i70:                                     ; preds = %for.body.i70.prol.loopexit, %for.body.i70
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i68.3, %for.body.i70 ], [ %indvars.iv.i63.unr, %for.body.i70.prol.loopexit ]
  %arrayidx.i64 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %indvars.iv.i63
  %266 = load i64, ptr %arrayidx.i64, align 8, !tbaa !27
  %arrayidx2.i65 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %indvars.iv.i63
  %267 = load i64, ptr %arrayidx2.i65, align 8, !tbaa !27
  %xor.i66 = xor i64 %267, %266
  %arrayidx4.i67 = getelementptr inbounds i64, ptr %call2.i13, i64 %indvars.iv.i63
  store i64 %xor.i66, ptr %arrayidx4.i67, align 8, !tbaa !27
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i63, 1
  %arrayidx.i64.1 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %indvars.iv.next.i68
  %268 = load i64, ptr %arrayidx.i64.1, align 8, !tbaa !27
  %arrayidx2.i65.1 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %indvars.iv.next.i68
  %269 = load i64, ptr %arrayidx2.i65.1, align 8, !tbaa !27
  %xor.i66.1 = xor i64 %269, %268
  %arrayidx4.i67.1 = getelementptr inbounds i64, ptr %call2.i13, i64 %indvars.iv.next.i68
  store i64 %xor.i66.1, ptr %arrayidx4.i67.1, align 8, !tbaa !27
  %indvars.iv.next.i68.1 = add nuw nsw i64 %indvars.iv.i63, 2
  %arrayidx.i64.2 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %indvars.iv.next.i68.1
  %270 = load i64, ptr %arrayidx.i64.2, align 8, !tbaa !27
  %arrayidx2.i65.2 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %indvars.iv.next.i68.1
  %271 = load i64, ptr %arrayidx2.i65.2, align 8, !tbaa !27
  %xor.i66.2 = xor i64 %271, %270
  %arrayidx4.i67.2 = getelementptr inbounds i64, ptr %call2.i13, i64 %indvars.iv.next.i68.1
  store i64 %xor.i66.2, ptr %arrayidx4.i67.2, align 8, !tbaa !27
  %indvars.iv.next.i68.2 = add nuw nsw i64 %indvars.iv.i63, 3
  %arrayidx.i64.3 = getelementptr inbounds i64, ptr %lhs.0.i8136, i64 %indvars.iv.next.i68.2
  %272 = load i64, ptr %arrayidx.i64.3, align 8, !tbaa !27
  %arrayidx2.i65.3 = getelementptr inbounds i64, ptr %lhs.0.i72.lcssa, i64 %indvars.iv.next.i68.2
  %273 = load i64, ptr %arrayidx2.i65.3, align 8, !tbaa !27
  %xor.i66.3 = xor i64 %273, %272
  %arrayidx4.i67.3 = getelementptr inbounds i64, ptr %call2.i13, i64 %indvars.iv.next.i68.2
  store i64 %xor.i66.3, ptr %arrayidx4.i67.3, align 8, !tbaa !27
  %indvars.iv.next.i68.3 = add nuw nsw i64 %indvars.iv.i63, 4
  %exitcond.not.i69.3 = icmp eq i64 %indvars.iv.next.i68.3, %wide.trip.count.i61
  br i1 %exitcond.not.i69.3, label %_ZN10Functional3XOREPmS0_S0_i.exit71, label %for.body.i70, !llvm.loop !98

_ZN10Functional3XOREPmS0_S0_i.exit71:             ; preds = %for.body.i70.prol.loopexit, %for.body.i70, %middle.block279, %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit93
  %cond.i10 = icmp eq i32 %.pr117, 94
  br i1 %cond.i10, label %sw.bb.i16, label %_ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17, !llvm.loop !65

_ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17: ; preds = %_ZN10Functional3XOREPmS0_S0_i.exit71, %for.cond.i11.preheader._ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17_crit_edge
  %274 = phi i32 [ %.lcssa, %for.cond.i11.preheader._ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17_crit_edge ], [ %.pr117, %_ZN10Functional3XOREPmS0_S0_i.exit71 ]
  %275 = phi i32 [ %.pre146, %for.cond.i11.preheader._ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17_crit_edge ], [ %231, %_ZN10Functional3XOREPmS0_S0_i.exit71 ]
  %lhs.0.i8.lcssa = phi ptr [ %lhs.0.i95.lcssa, %for.cond.i11.preheader._ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17_crit_edge ], [ %call2.i13, %_ZN10Functional3XOREPmS0_S0_i.exit71 ]
  %cmp9.i = icmp sgt i32 %275, 0
  br i1 %cmp9.i, label %for.body.preheader.i, label %_ZN10Functional2OREPmS0_S0_i.exit

for.body.preheader.i:                             ; preds = %_ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17
  %wide.trip.count.i = zext i32 %275 to i64
  %min.iters.check255 = icmp ult i32 %275, 4
  br i1 %min.iters.check255, label %for.body.i.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %for.body.preheader.i
  %276 = shl nuw nsw i64 %wide.trip.count.i, 3
  %uglygep243 = getelementptr i8, ptr %call2, i64 %276
  %uglygep244 = getelementptr i8, ptr %lhs.0139, i64 %276
  %uglygep245 = getelementptr i8, ptr %lhs.0.i8.lcssa, i64 %276
  %bound0246 = icmp ult ptr %call2, %uglygep244
  %bound1247 = icmp ult ptr %lhs.0139, %uglygep243
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0249 = icmp ult ptr %call2, %uglygep245
  %bound1250 = icmp ult ptr %lhs.0.i8.lcssa, %uglygep243
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %found.conflict248, %found.conflict251
  br i1 %conflict.rdx252, label %for.body.i.preheader, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck242
  %n.vec258 = and i64 %wide.trip.count.i, 4294967292
  %277 = add nsw i64 %n.vec258, -4
  %278 = lshr exact i64 %277, 2
  %279 = add nuw nsw i64 %278, 1
  %xtraiter390 = and i64 %279, 1
  %280 = icmp eq i64 %277, 0
  br i1 %280, label %middle.block253.unr-lcssa, label %vector.ph256.new

vector.ph256.new:                                 ; preds = %vector.ph256
  %unroll_iter392 = and i64 %279, 9223372036854775806
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph256.new
  %index262 = phi i64 [ 0, %vector.ph256.new ], [ %index.next267.1, %vector.body261 ]
  %niter393 = phi i64 [ 0, %vector.ph256.new ], [ %niter393.next.1, %vector.body261 ]
  %281 = getelementptr inbounds i64, ptr %lhs.0139, i64 %index262
  %wide.load263 = load <2 x i64>, ptr %281, align 8, !tbaa !27, !alias.scope !99
  %282 = getelementptr inbounds i64, ptr %281, i64 2
  %wide.load264 = load <2 x i64>, ptr %282, align 8, !tbaa !27, !alias.scope !99
  %283 = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %index262
  %wide.load265 = load <2 x i64>, ptr %283, align 8, !tbaa !27, !alias.scope !102
  %284 = getelementptr inbounds i64, ptr %283, i64 2
  %wide.load266 = load <2 x i64>, ptr %284, align 8, !tbaa !27, !alias.scope !102
  %285 = or <2 x i64> %wide.load265, %wide.load263
  %286 = or <2 x i64> %wide.load266, %wide.load264
  %287 = getelementptr inbounds i64, ptr %call2, i64 %index262
  store <2 x i64> %285, ptr %287, align 8, !tbaa !27, !alias.scope !104, !noalias !106
  %288 = getelementptr inbounds i64, ptr %287, i64 2
  store <2 x i64> %286, ptr %288, align 8, !tbaa !27, !alias.scope !104, !noalias !106
  %index.next267 = or i64 %index262, 4
  %289 = getelementptr inbounds i64, ptr %lhs.0139, i64 %index.next267
  %wide.load263.1 = load <2 x i64>, ptr %289, align 8, !tbaa !27, !alias.scope !99
  %290 = getelementptr inbounds i64, ptr %289, i64 2
  %wide.load264.1 = load <2 x i64>, ptr %290, align 8, !tbaa !27, !alias.scope !99
  %291 = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %index.next267
  %wide.load265.1 = load <2 x i64>, ptr %291, align 8, !tbaa !27, !alias.scope !102
  %292 = getelementptr inbounds i64, ptr %291, i64 2
  %wide.load266.1 = load <2 x i64>, ptr %292, align 8, !tbaa !27, !alias.scope !102
  %293 = or <2 x i64> %wide.load265.1, %wide.load263.1
  %294 = or <2 x i64> %wide.load266.1, %wide.load264.1
  %295 = getelementptr inbounds i64, ptr %call2, i64 %index.next267
  store <2 x i64> %293, ptr %295, align 8, !tbaa !27, !alias.scope !104, !noalias !106
  %296 = getelementptr inbounds i64, ptr %295, i64 2
  store <2 x i64> %294, ptr %296, align 8, !tbaa !27, !alias.scope !104, !noalias !106
  %index.next267.1 = add nuw i64 %index262, 8
  %niter393.next.1 = add i64 %niter393, 2
  %niter393.ncmp.1 = icmp eq i64 %niter393.next.1, %unroll_iter392
  br i1 %niter393.ncmp.1, label %middle.block253.unr-lcssa, label %vector.body261, !llvm.loop !107

middle.block253.unr-lcssa:                        ; preds = %vector.body261, %vector.ph256
  %index262.unr = phi i64 [ 0, %vector.ph256 ], [ %index.next267.1, %vector.body261 ]
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %middle.block253, label %vector.body261.epil

vector.body261.epil:                              ; preds = %middle.block253.unr-lcssa
  %297 = getelementptr inbounds i64, ptr %lhs.0139, i64 %index262.unr
  %wide.load263.epil = load <2 x i64>, ptr %297, align 8, !tbaa !27, !alias.scope !99
  %298 = getelementptr inbounds i64, ptr %297, i64 2
  %wide.load264.epil = load <2 x i64>, ptr %298, align 8, !tbaa !27, !alias.scope !99
  %299 = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %index262.unr
  %wide.load265.epil = load <2 x i64>, ptr %299, align 8, !tbaa !27, !alias.scope !102
  %300 = getelementptr inbounds i64, ptr %299, i64 2
  %wide.load266.epil = load <2 x i64>, ptr %300, align 8, !tbaa !27, !alias.scope !102
  %301 = or <2 x i64> %wide.load265.epil, %wide.load263.epil
  %302 = or <2 x i64> %wide.load266.epil, %wide.load264.epil
  %303 = getelementptr inbounds i64, ptr %call2, i64 %index262.unr
  store <2 x i64> %301, ptr %303, align 8, !tbaa !27, !alias.scope !104, !noalias !106
  %304 = getelementptr inbounds i64, ptr %303, i64 2
  store <2 x i64> %302, ptr %304, align 8, !tbaa !27, !alias.scope !104, !noalias !106
  br label %middle.block253

middle.block253:                                  ; preds = %middle.block253.unr-lcssa, %vector.body261.epil
  %cmp.n260 = icmp eq i64 %n.vec258, %wide.trip.count.i
  br i1 %cmp.n260, label %_ZN10Functional2OREPmS0_S0_i.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %vector.memcheck242, %for.body.preheader.i, %middle.block253
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck242 ], [ 0, %for.body.preheader.i ], [ %n.vec258, %middle.block253 ]
  %305 = xor i64 %indvars.iv.i.ph, -1
  %306 = add nsw i64 %305, %wide.trip.count.i
  %xtraiter394 = and i64 %wide.trip.count.i, 3
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.preheader, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %prol.iter396 = phi i64 [ %prol.iter396.next, %for.body.i.prol ], [ 0, %for.body.i.preheader ]
  %arrayidx.i.prol = getelementptr inbounds i64, ptr %lhs.0139, i64 %indvars.iv.i.prol
  %307 = load i64, ptr %arrayidx.i.prol, align 8, !tbaa !27
  %arrayidx2.i.prol = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %indvars.iv.i.prol
  %308 = load i64, ptr %arrayidx2.i.prol, align 8, !tbaa !27
  %or.i.prol = or i64 %308, %307
  %arrayidx4.i.prol = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.i.prol
  store i64 %or.i.prol, ptr %arrayidx4.i.prol, align 8, !tbaa !27
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter396.next = add i64 %prol.iter396, 1
  %prol.iter396.cmp.not = icmp eq i64 %prol.iter396.next, %xtraiter394
  br i1 %prol.iter396.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !108

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body.i.preheader ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %309 = icmp ult i64 %306, 3
  br i1 %309, label %_ZN10Functional2OREPmS0_S0_i.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body.i ], [ %indvars.iv.i.unr, %for.body.i.prol.loopexit ]
  %arrayidx.i = getelementptr inbounds i64, ptr %lhs.0139, i64 %indvars.iv.i
  %310 = load i64, ptr %arrayidx.i, align 8, !tbaa !27
  %arrayidx2.i = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %indvars.iv.i
  %311 = load i64, ptr %arrayidx2.i, align 8, !tbaa !27
  %or.i = or i64 %311, %310
  %arrayidx4.i = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.i
  store i64 %or.i, ptr %arrayidx4.i, align 8, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds i64, ptr %lhs.0139, i64 %indvars.iv.next.i
  %312 = load i64, ptr %arrayidx.i.1, align 8, !tbaa !27
  %arrayidx2.i.1 = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %indvars.iv.next.i
  %313 = load i64, ptr %arrayidx2.i.1, align 8, !tbaa !27
  %or.i.1 = or i64 %313, %312
  %arrayidx4.i.1 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i
  store i64 %or.i.1, ptr %arrayidx4.i.1, align 8, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds i64, ptr %lhs.0139, i64 %indvars.iv.next.i.1
  %314 = load i64, ptr %arrayidx.i.2, align 8, !tbaa !27
  %arrayidx2.i.2 = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %indvars.iv.next.i.1
  %315 = load i64, ptr %arrayidx2.i.2, align 8, !tbaa !27
  %or.i.2 = or i64 %315, %314
  %arrayidx4.i.2 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i.1
  store i64 %or.i.2, ptr %arrayidx4.i.2, align 8, !tbaa !27
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds i64, ptr %lhs.0139, i64 %indvars.iv.next.i.2
  %316 = load i64, ptr %arrayidx.i.3, align 8, !tbaa !27
  %arrayidx2.i.3 = getelementptr inbounds i64, ptr %lhs.0.i8.lcssa, i64 %indvars.iv.next.i.2
  %317 = load i64, ptr %arrayidx2.i.3, align 8, !tbaa !27
  %or.i.3 = or i64 %317, %316
  %arrayidx4.i.3 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i.2
  store i64 %or.i.3, ptr %arrayidx4.i.3, align 8, !tbaa !27
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN10Functional2OREPmS0_S0_i.exit, label %for.body.i, !llvm.loop !109

_ZN10Functional2OREPmS0_S0_i.exit:                ; preds = %for.body.i.prol.loopexit, %for.body.i, %middle.block253, %_ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit17
  %cond = icmp eq i32 %274, 43
  br i1 %cond, label %sw.bb, label %sw.default, !llvm.loop !110

sw.default:                                       ; preds = %_ZN10Functional2OREPmS0_S0_i.exit, %for.cond.preheader
  %lhs.0.lcssa = phi ptr [ %lhs.0.i.lcssa, %for.cond.preheader ], [ %call2, %_ZN10Functional2OREPmS0_S0_i.exit ]
  ret ptr %lhs.0.lcssa
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4 align 2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10Functional12FunctionUtil5expr2ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression) local_unnamed_addr #8 align 2 {
entry:
  %call.i = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %currentToken.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %currentToken.i, align 8, !tbaa !22
  %cond7.i = icmp eq i32 %0, 42
  br i1 %cond7.i, label %sw.bb.lr.ph.i, label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit

sw.bb.lr.ph.i:                                    ; preds = %entry
  %functionPool.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %nWords.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i, %sw.bb.lr.ph.i
  %lhs.08.i = phi ptr [ %call.i, %sw.bb.lr.ph.i ], [ %call2.i, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ]
  %1 = load ptr, ptr %functionPool.i, align 8, !tbaa !26
  %call2.i = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %call3.i = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %2 = load i32, ptr %nWords.i, align 4, !tbaa !21
  %cmp9.i.i = icmp sgt i32 %2, 0
  br i1 %cmp9.i.i, label %for.body.preheader.i.i, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i

for.body.preheader.i.i:                           ; preds = %sw.bb.i
  %wide.trip.count.i.i = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader.i.i
  %3 = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %uglygep = getelementptr i8, ptr %call2.i, i64 %3
  %uglygep44 = getelementptr i8, ptr %lhs.08.i, i64 %3
  %uglygep45 = getelementptr i8, ptr %call3.i, i64 %3
  %bound0 = icmp ult ptr %call2.i, %uglygep44
  %bound1 = icmp ult ptr %lhs.08.i, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %call2.i, %uglygep45
  %bound147 = icmp ult ptr %call3.i, %uglygep
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  br i1 %conflict.rdx, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292
  %4 = add nsw i64 %n.vec, -4
  %5 = lshr exact i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 1
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %8 = getelementptr inbounds i64, ptr %lhs.08.i, i64 %index
  %wide.load = load <2 x i64>, ptr %8, align 8, !tbaa !27, !alias.scope !111
  %9 = getelementptr inbounds i64, ptr %8, i64 2
  %wide.load49 = load <2 x i64>, ptr %9, align 8, !tbaa !27, !alias.scope !111
  %10 = getelementptr inbounds i64, ptr %call3.i, i64 %index
  %wide.load50 = load <2 x i64>, ptr %10, align 8, !tbaa !27, !alias.scope !114
  %11 = getelementptr inbounds i64, ptr %10, i64 2
  %wide.load51 = load <2 x i64>, ptr %11, align 8, !tbaa !27, !alias.scope !114
  %12 = and <2 x i64> %wide.load50, %wide.load
  %13 = and <2 x i64> %wide.load51, %wide.load49
  %14 = getelementptr inbounds i64, ptr %call2.i, i64 %index
  store <2 x i64> %12, ptr %14, align 8, !tbaa !27, !alias.scope !116, !noalias !118
  %15 = getelementptr inbounds i64, ptr %14, i64 2
  store <2 x i64> %13, ptr %15, align 8, !tbaa !27, !alias.scope !116, !noalias !118
  %index.next = or i64 %index, 4
  %16 = getelementptr inbounds i64, ptr %lhs.08.i, i64 %index.next
  %wide.load.1 = load <2 x i64>, ptr %16, align 8, !tbaa !27, !alias.scope !111
  %17 = getelementptr inbounds i64, ptr %16, i64 2
  %wide.load49.1 = load <2 x i64>, ptr %17, align 8, !tbaa !27, !alias.scope !111
  %18 = getelementptr inbounds i64, ptr %call3.i, i64 %index.next
  %wide.load50.1 = load <2 x i64>, ptr %18, align 8, !tbaa !27, !alias.scope !114
  %19 = getelementptr inbounds i64, ptr %18, i64 2
  %wide.load51.1 = load <2 x i64>, ptr %19, align 8, !tbaa !27, !alias.scope !114
  %20 = and <2 x i64> %wide.load50.1, %wide.load.1
  %21 = and <2 x i64> %wide.load51.1, %wide.load49.1
  %22 = getelementptr inbounds i64, ptr %call2.i, i64 %index.next
  store <2 x i64> %20, ptr %22, align 8, !tbaa !27, !alias.scope !116, !noalias !118
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  store <2 x i64> %21, ptr %23, align 8, !tbaa !27, !alias.scope !116, !noalias !118
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !119

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %24 = getelementptr inbounds i64, ptr %lhs.08.i, i64 %index.unr
  %wide.load.epil = load <2 x i64>, ptr %24, align 8, !tbaa !27, !alias.scope !111
  %25 = getelementptr inbounds i64, ptr %24, i64 2
  %wide.load49.epil = load <2 x i64>, ptr %25, align 8, !tbaa !27, !alias.scope !111
  %26 = getelementptr inbounds i64, ptr %call3.i, i64 %index.unr
  %wide.load50.epil = load <2 x i64>, ptr %26, align 8, !tbaa !27, !alias.scope !114
  %27 = getelementptr inbounds i64, ptr %26, i64 2
  %wide.load51.epil = load <2 x i64>, ptr %27, align 8, !tbaa !27, !alias.scope !114
  %28 = and <2 x i64> %wide.load50.epil, %wide.load.epil
  %29 = and <2 x i64> %wide.load51.epil, %wide.load49.epil
  %30 = getelementptr inbounds i64, ptr %call2.i, i64 %index.unr
  store <2 x i64> %28, ptr %30, align 8, !tbaa !27, !alias.scope !116, !noalias !118
  %31 = getelementptr inbounds i64, ptr %30, i64 2
  store <2 x i64> %29, ptr %31, align 8, !tbaa !27, !alias.scope !116, !noalias !118
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %vector.memcheck, %for.body.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  %32 = xor i64 %indvars.iv.i.i.ph, -1
  %33 = add nsw i64 %32, %wide.trip.count.i.i
  %xtraiter106 = and i64 %wide.trip.count.i.i, 3
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %for.body.i.i.prol.loopexit, label %for.body.i.i.prol

for.body.i.i.prol:                                ; preds = %for.body.i.i.preheader, %for.body.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %for.body.i.i.prol ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.i.i.prol ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i.prol = getelementptr inbounds i64, ptr %lhs.08.i, i64 %indvars.iv.i.i.prol
  %34 = load i64, ptr %arrayidx.i.i.prol, align 8, !tbaa !27
  %arrayidx2.i.i.prol = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.i.i.prol
  %35 = load i64, ptr %arrayidx2.i.i.prol, align 8, !tbaa !27
  %and.i.i.prol = and i64 %35, %34
  %arrayidx4.i.i.prol = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.i.i.prol
  store i64 %and.i.i.prol, ptr %arrayidx4.i.i.prol, align 8, !tbaa !27
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter106
  br i1 %prol.iter.cmp.not, label %for.body.i.i.prol.loopexit, label %for.body.i.i.prol, !llvm.loop !120

for.body.i.i.prol.loopexit:                       ; preds = %for.body.i.i.prol, %for.body.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %for.body.i.i.prol ]
  %36 = icmp ult i64 %33, 3
  br i1 %36, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.prol.loopexit, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %for.body.i.i ], [ %indvars.iv.i.i.unr, %for.body.i.i.prol.loopexit ]
  %arrayidx.i.i = getelementptr inbounds i64, ptr %lhs.08.i, i64 %indvars.iv.i.i
  %37 = load i64, ptr %arrayidx.i.i, align 8, !tbaa !27
  %arrayidx2.i.i = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.i.i
  %38 = load i64, ptr %arrayidx2.i.i, align 8, !tbaa !27
  %and.i.i = and i64 %38, %37
  %arrayidx4.i.i = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.i.i
  store i64 %and.i.i, ptr %arrayidx4.i.i, align 8, !tbaa !27
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %arrayidx.i.i.1 = getelementptr inbounds i64, ptr %lhs.08.i, i64 %indvars.iv.next.i.i
  %39 = load i64, ptr %arrayidx.i.i.1, align 8, !tbaa !27
  %arrayidx2.i.i.1 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.next.i.i
  %40 = load i64, ptr %arrayidx2.i.i.1, align 8, !tbaa !27
  %and.i.i.1 = and i64 %40, %39
  %arrayidx4.i.i.1 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.next.i.i
  store i64 %and.i.i.1, ptr %arrayidx4.i.i.1, align 8, !tbaa !27
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %arrayidx.i.i.2 = getelementptr inbounds i64, ptr %lhs.08.i, i64 %indvars.iv.next.i.i.1
  %41 = load i64, ptr %arrayidx.i.i.2, align 8, !tbaa !27
  %arrayidx2.i.i.2 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.next.i.i.1
  %42 = load i64, ptr %arrayidx2.i.i.2, align 8, !tbaa !27
  %and.i.i.2 = and i64 %42, %41
  %arrayidx4.i.i.2 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.next.i.i.1
  store i64 %and.i.i.2, ptr %arrayidx4.i.i.2, align 8, !tbaa !27
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3
  %arrayidx.i.i.3 = getelementptr inbounds i64, ptr %lhs.08.i, i64 %indvars.iv.next.i.i.2
  %43 = load i64, ptr %arrayidx.i.i.3, align 8, !tbaa !27
  %arrayidx2.i.i.3 = getelementptr inbounds i64, ptr %call3.i, i64 %indvars.iv.next.i.i.2
  %44 = load i64, ptr %arrayidx2.i.i.3, align 8, !tbaa !27
  %and.i.i.3 = and i64 %44, %43
  %arrayidx4.i.i.3 = getelementptr inbounds i64, ptr %call2.i, i64 %indvars.iv.next.i.i.2
  store i64 %and.i.i.3, ptr %arrayidx4.i.i.3, align 8, !tbaa !27
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i, label %for.body.i.i, !llvm.loop !121

_ZN10Functional3ANDEPmS0_S0_i.exit.i:             ; preds = %for.body.i.i.prol.loopexit, %for.body.i.i, %middle.block, %sw.bb.i
  %45 = load i32, ptr %currentToken.i, align 8, !tbaa !22
  %cond.i = icmp eq i32 %45, 42
  br i1 %cond.i, label %sw.bb.i, label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !42

_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i, %entry
  %46 = phi i32 [ %0, %entry ], [ %45, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ]
  %lhs.0.lcssa.i = phi ptr [ %call.i, %entry ], [ %call2.i, %_ZN10Functional3ANDEPmS0_S0_i.exit.i ]
  %cond32 = icmp eq i32 %46, 94
  br i1 %cond32, label %sw.bb.lr.ph, label %sw.default

sw.bb.lr.ph:                                      ; preds = %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit
  %functionPool = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %nWords.i11 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  br label %sw.bb

sw.bb:                                            ; preds = %sw.bb.lr.ph, %_ZN10Functional3XOREPmS0_S0_i.exit
  %lhs.033 = phi ptr [ %lhs.0.lcssa.i, %sw.bb.lr.ph ], [ %call2, %_ZN10Functional3XOREPmS0_S0_i.exit ]
  %47 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %47)
  %call.i7 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %48 = load i32, ptr %currentToken.i, align 8, !tbaa !22
  %cond7.i9 = icmp eq i32 %48, 42
  br i1 %cond7.i9, label %sw.bb.i17, label %sw.bb._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31_crit_edge

sw.bb._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31_crit_edge: ; preds = %sw.bb
  %.pre = load i32, ptr %nWords.i11, align 4, !tbaa !21
  br label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31

sw.bb.i17:                                        ; preds = %sw.bb, %_ZN10Functional3ANDEPmS0_S0_i.exit.i29
  %lhs.08.i13 = phi ptr [ %call2.i14, %_ZN10Functional3ANDEPmS0_S0_i.exit.i29 ], [ %call.i7, %sw.bb ]
  %49 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2.i14 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %49)
  %call3.i15 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %50 = load i32, ptr %nWords.i11, align 4, !tbaa !21
  %cmp9.i.i16 = icmp sgt i32 %50, 0
  br i1 %cmp9.i.i16, label %for.body.preheader.i.i19, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i29

for.body.preheader.i.i19:                         ; preds = %sw.bb.i17
  %wide.trip.count.i.i18 = zext i32 %50 to i64
  %min.iters.check91 = icmp ult i32 %50, 4
  br i1 %min.iters.check91, label %for.body.i.i27.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %for.body.preheader.i.i19
  %51 = shl nuw nsw i64 %wide.trip.count.i.i18, 3
  %uglygep79 = getelementptr i8, ptr %call2.i14, i64 %51
  %uglygep80 = getelementptr i8, ptr %lhs.08.i13, i64 %51
  %uglygep81 = getelementptr i8, ptr %call3.i15, i64 %51
  %bound082 = icmp ult ptr %call2.i14, %uglygep80
  %bound183 = icmp ult ptr %lhs.08.i13, %uglygep79
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %call2.i14, %uglygep81
  %bound186 = icmp ult ptr %call3.i15, %uglygep79
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  br i1 %conflict.rdx88, label %for.body.i.i27.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %vector.memcheck78
  %n.vec94 = and i64 %wide.trip.count.i.i18, 4294967292
  %52 = add nsw i64 %n.vec94, -4
  %53 = lshr exact i64 %52, 2
  %54 = add nuw nsw i64 %53, 1
  %xtraiter108 = and i64 %54, 1
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %middle.block89.unr-lcssa, label %vector.ph92.new

vector.ph92.new:                                  ; preds = %vector.ph92
  %unroll_iter110 = and i64 %54, 9223372036854775806
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph92.new
  %index98 = phi i64 [ 0, %vector.ph92.new ], [ %index.next103.1, %vector.body97 ]
  %niter111 = phi i64 [ 0, %vector.ph92.new ], [ %niter111.next.1, %vector.body97 ]
  %56 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %index98
  %wide.load99 = load <2 x i64>, ptr %56, align 8, !tbaa !27, !alias.scope !122
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %wide.load100 = load <2 x i64>, ptr %57, align 8, !tbaa !27, !alias.scope !122
  %58 = getelementptr inbounds i64, ptr %call3.i15, i64 %index98
  %wide.load101 = load <2 x i64>, ptr %58, align 8, !tbaa !27, !alias.scope !125
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %wide.load102 = load <2 x i64>, ptr %59, align 8, !tbaa !27, !alias.scope !125
  %60 = and <2 x i64> %wide.load101, %wide.load99
  %61 = and <2 x i64> %wide.load102, %wide.load100
  %62 = getelementptr inbounds i64, ptr %call2.i14, i64 %index98
  store <2 x i64> %60, ptr %62, align 8, !tbaa !27, !alias.scope !127, !noalias !129
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store <2 x i64> %61, ptr %63, align 8, !tbaa !27, !alias.scope !127, !noalias !129
  %index.next103 = or i64 %index98, 4
  %64 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %index.next103
  %wide.load99.1 = load <2 x i64>, ptr %64, align 8, !tbaa !27, !alias.scope !122
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %wide.load100.1 = load <2 x i64>, ptr %65, align 8, !tbaa !27, !alias.scope !122
  %66 = getelementptr inbounds i64, ptr %call3.i15, i64 %index.next103
  %wide.load101.1 = load <2 x i64>, ptr %66, align 8, !tbaa !27, !alias.scope !125
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %wide.load102.1 = load <2 x i64>, ptr %67, align 8, !tbaa !27, !alias.scope !125
  %68 = and <2 x i64> %wide.load101.1, %wide.load99.1
  %69 = and <2 x i64> %wide.load102.1, %wide.load100.1
  %70 = getelementptr inbounds i64, ptr %call2.i14, i64 %index.next103
  store <2 x i64> %68, ptr %70, align 8, !tbaa !27, !alias.scope !127, !noalias !129
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store <2 x i64> %69, ptr %71, align 8, !tbaa !27, !alias.scope !127, !noalias !129
  %index.next103.1 = add nuw i64 %index98, 8
  %niter111.next.1 = add i64 %niter111, 2
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %middle.block89.unr-lcssa, label %vector.body97, !llvm.loop !130

middle.block89.unr-lcssa:                         ; preds = %vector.body97, %vector.ph92
  %index98.unr = phi i64 [ 0, %vector.ph92 ], [ %index.next103.1, %vector.body97 ]
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %middle.block89, label %vector.body97.epil

vector.body97.epil:                               ; preds = %middle.block89.unr-lcssa
  %72 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %index98.unr
  %wide.load99.epil = load <2 x i64>, ptr %72, align 8, !tbaa !27, !alias.scope !122
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  %wide.load100.epil = load <2 x i64>, ptr %73, align 8, !tbaa !27, !alias.scope !122
  %74 = getelementptr inbounds i64, ptr %call3.i15, i64 %index98.unr
  %wide.load101.epil = load <2 x i64>, ptr %74, align 8, !tbaa !27, !alias.scope !125
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  %wide.load102.epil = load <2 x i64>, ptr %75, align 8, !tbaa !27, !alias.scope !125
  %76 = and <2 x i64> %wide.load101.epil, %wide.load99.epil
  %77 = and <2 x i64> %wide.load102.epil, %wide.load100.epil
  %78 = getelementptr inbounds i64, ptr %call2.i14, i64 %index98.unr
  store <2 x i64> %76, ptr %78, align 8, !tbaa !27, !alias.scope !127, !noalias !129
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store <2 x i64> %77, ptr %79, align 8, !tbaa !27, !alias.scope !127, !noalias !129
  br label %middle.block89

middle.block89:                                   ; preds = %middle.block89.unr-lcssa, %vector.body97.epil
  %cmp.n96 = icmp eq i64 %n.vec94, %wide.trip.count.i.i18
  br i1 %cmp.n96, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i29, label %for.body.i.i27.preheader

for.body.i.i27.preheader:                         ; preds = %vector.memcheck78, %for.body.preheader.i.i19, %middle.block89
  %indvars.iv.i.i20.ph = phi i64 [ 0, %vector.memcheck78 ], [ 0, %for.body.preheader.i.i19 ], [ %n.vec94, %middle.block89 ]
  %80 = xor i64 %indvars.iv.i.i20.ph, -1
  %81 = add nsw i64 %80, %wide.trip.count.i.i18
  %xtraiter112 = and i64 %wide.trip.count.i.i18, 3
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %for.body.i.i27.prol.loopexit, label %for.body.i.i27.prol

for.body.i.i27.prol:                              ; preds = %for.body.i.i27.preheader, %for.body.i.i27.prol
  %indvars.iv.i.i20.prol = phi i64 [ %indvars.iv.next.i.i25.prol, %for.body.i.i27.prol ], [ %indvars.iv.i.i20.ph, %for.body.i.i27.preheader ]
  %prol.iter114 = phi i64 [ %prol.iter114.next, %for.body.i.i27.prol ], [ 0, %for.body.i.i27.preheader ]
  %arrayidx.i.i21.prol = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %indvars.iv.i.i20.prol
  %82 = load i64, ptr %arrayidx.i.i21.prol, align 8, !tbaa !27
  %arrayidx2.i.i22.prol = getelementptr inbounds i64, ptr %call3.i15, i64 %indvars.iv.i.i20.prol
  %83 = load i64, ptr %arrayidx2.i.i22.prol, align 8, !tbaa !27
  %and.i.i23.prol = and i64 %83, %82
  %arrayidx4.i.i24.prol = getelementptr inbounds i64, ptr %call2.i14, i64 %indvars.iv.i.i20.prol
  store i64 %and.i.i23.prol, ptr %arrayidx4.i.i24.prol, align 8, !tbaa !27
  %indvars.iv.next.i.i25.prol = add nuw nsw i64 %indvars.iv.i.i20.prol, 1
  %prol.iter114.next = add i64 %prol.iter114, 1
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %for.body.i.i27.prol.loopexit, label %for.body.i.i27.prol, !llvm.loop !131

for.body.i.i27.prol.loopexit:                     ; preds = %for.body.i.i27.prol, %for.body.i.i27.preheader
  %indvars.iv.i.i20.unr = phi i64 [ %indvars.iv.i.i20.ph, %for.body.i.i27.preheader ], [ %indvars.iv.next.i.i25.prol, %for.body.i.i27.prol ]
  %84 = icmp ult i64 %81, 3
  br i1 %84, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i29, label %for.body.i.i27

for.body.i.i27:                                   ; preds = %for.body.i.i27.prol.loopexit, %for.body.i.i27
  %indvars.iv.i.i20 = phi i64 [ %indvars.iv.next.i.i25.3, %for.body.i.i27 ], [ %indvars.iv.i.i20.unr, %for.body.i.i27.prol.loopexit ]
  %arrayidx.i.i21 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %indvars.iv.i.i20
  %85 = load i64, ptr %arrayidx.i.i21, align 8, !tbaa !27
  %arrayidx2.i.i22 = getelementptr inbounds i64, ptr %call3.i15, i64 %indvars.iv.i.i20
  %86 = load i64, ptr %arrayidx2.i.i22, align 8, !tbaa !27
  %and.i.i23 = and i64 %86, %85
  %arrayidx4.i.i24 = getelementptr inbounds i64, ptr %call2.i14, i64 %indvars.iv.i.i20
  store i64 %and.i.i23, ptr %arrayidx4.i.i24, align 8, !tbaa !27
  %indvars.iv.next.i.i25 = add nuw nsw i64 %indvars.iv.i.i20, 1
  %arrayidx.i.i21.1 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %indvars.iv.next.i.i25
  %87 = load i64, ptr %arrayidx.i.i21.1, align 8, !tbaa !27
  %arrayidx2.i.i22.1 = getelementptr inbounds i64, ptr %call3.i15, i64 %indvars.iv.next.i.i25
  %88 = load i64, ptr %arrayidx2.i.i22.1, align 8, !tbaa !27
  %and.i.i23.1 = and i64 %88, %87
  %arrayidx4.i.i24.1 = getelementptr inbounds i64, ptr %call2.i14, i64 %indvars.iv.next.i.i25
  store i64 %and.i.i23.1, ptr %arrayidx4.i.i24.1, align 8, !tbaa !27
  %indvars.iv.next.i.i25.1 = add nuw nsw i64 %indvars.iv.i.i20, 2
  %arrayidx.i.i21.2 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %indvars.iv.next.i.i25.1
  %89 = load i64, ptr %arrayidx.i.i21.2, align 8, !tbaa !27
  %arrayidx2.i.i22.2 = getelementptr inbounds i64, ptr %call3.i15, i64 %indvars.iv.next.i.i25.1
  %90 = load i64, ptr %arrayidx2.i.i22.2, align 8, !tbaa !27
  %and.i.i23.2 = and i64 %90, %89
  %arrayidx4.i.i24.2 = getelementptr inbounds i64, ptr %call2.i14, i64 %indvars.iv.next.i.i25.1
  store i64 %and.i.i23.2, ptr %arrayidx4.i.i24.2, align 8, !tbaa !27
  %indvars.iv.next.i.i25.2 = add nuw nsw i64 %indvars.iv.i.i20, 3
  %arrayidx.i.i21.3 = getelementptr inbounds i64, ptr %lhs.08.i13, i64 %indvars.iv.next.i.i25.2
  %91 = load i64, ptr %arrayidx.i.i21.3, align 8, !tbaa !27
  %arrayidx2.i.i22.3 = getelementptr inbounds i64, ptr %call3.i15, i64 %indvars.iv.next.i.i25.2
  %92 = load i64, ptr %arrayidx2.i.i22.3, align 8, !tbaa !27
  %and.i.i23.3 = and i64 %92, %91
  %arrayidx4.i.i24.3 = getelementptr inbounds i64, ptr %call2.i14, i64 %indvars.iv.next.i.i25.2
  store i64 %and.i.i23.3, ptr %arrayidx4.i.i24.3, align 8, !tbaa !27
  %indvars.iv.next.i.i25.3 = add nuw nsw i64 %indvars.iv.i.i20, 4
  %exitcond.not.i.i26.3 = icmp eq i64 %indvars.iv.next.i.i25.3, %wide.trip.count.i.i18
  br i1 %exitcond.not.i.i26.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit.i29, label %for.body.i.i27, !llvm.loop !132

_ZN10Functional3ANDEPmS0_S0_i.exit.i29:           ; preds = %for.body.i.i27.prol.loopexit, %for.body.i.i27, %middle.block89, %sw.bb.i17
  %93 = load i32, ptr %currentToken.i, align 8, !tbaa !22
  %cond.i28 = icmp eq i32 %93, 42
  br i1 %cond.i28, label %sw.bb.i17, label %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31, !llvm.loop !42

_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31: ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit.i29, %sw.bb._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31_crit_edge
  %94 = phi i32 [ %48, %sw.bb._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31_crit_edge ], [ %93, %_ZN10Functional3ANDEPmS0_S0_i.exit.i29 ]
  %95 = phi i32 [ %.pre, %sw.bb._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31_crit_edge ], [ %50, %_ZN10Functional3ANDEPmS0_S0_i.exit.i29 ]
  %lhs.0.lcssa.i30 = phi ptr [ %call.i7, %sw.bb._ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31_crit_edge ], [ %call2.i14, %_ZN10Functional3ANDEPmS0_S0_i.exit.i29 ]
  %cmp9.i = icmp sgt i32 %95, 0
  br i1 %cmp9.i, label %for.body.preheader.i, label %_ZN10Functional3XOREPmS0_S0_i.exit

for.body.preheader.i:                             ; preds = %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31
  %wide.trip.count.i = zext i32 %95 to i64
  %min.iters.check65 = icmp ult i32 %95, 4
  br i1 %min.iters.check65, label %for.body.i.preheader, label %vector.memcheck52

vector.memcheck52:                                ; preds = %for.body.preheader.i
  %96 = shl nuw nsw i64 %wide.trip.count.i, 3
  %uglygep53 = getelementptr i8, ptr %call2, i64 %96
  %uglygep54 = getelementptr i8, ptr %lhs.033, i64 %96
  %uglygep55 = getelementptr i8, ptr %lhs.0.lcssa.i30, i64 %96
  %bound056 = icmp ult ptr %call2, %uglygep54
  %bound157 = icmp ult ptr %lhs.033, %uglygep53
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %call2, %uglygep55
  %bound160 = icmp ult ptr %lhs.0.lcssa.i30, %uglygep53
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  br i1 %conflict.rdx62, label %for.body.i.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck52
  %n.vec68 = and i64 %wide.trip.count.i, 4294967292
  %97 = add nsw i64 %n.vec68, -4
  %98 = lshr exact i64 %97, 2
  %99 = add nuw nsw i64 %98, 1
  %xtraiter115 = and i64 %99, 1
  %100 = icmp eq i64 %97, 0
  br i1 %100, label %middle.block63.unr-lcssa, label %vector.ph66.new

vector.ph66.new:                                  ; preds = %vector.ph66
  %unroll_iter117 = and i64 %99, 9223372036854775806
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph66.new
  %index72 = phi i64 [ 0, %vector.ph66.new ], [ %index.next77.1, %vector.body71 ]
  %niter118 = phi i64 [ 0, %vector.ph66.new ], [ %niter118.next.1, %vector.body71 ]
  %101 = getelementptr inbounds i64, ptr %lhs.033, i64 %index72
  %wide.load73 = load <2 x i64>, ptr %101, align 8, !tbaa !27, !alias.scope !133
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  %wide.load74 = load <2 x i64>, ptr %102, align 8, !tbaa !27, !alias.scope !133
  %103 = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %index72
  %wide.load75 = load <2 x i64>, ptr %103, align 8, !tbaa !27, !alias.scope !136
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  %wide.load76 = load <2 x i64>, ptr %104, align 8, !tbaa !27, !alias.scope !136
  %105 = xor <2 x i64> %wide.load75, %wide.load73
  %106 = xor <2 x i64> %wide.load76, %wide.load74
  %107 = getelementptr inbounds i64, ptr %call2, i64 %index72
  store <2 x i64> %105, ptr %107, align 8, !tbaa !27, !alias.scope !138, !noalias !140
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  store <2 x i64> %106, ptr %108, align 8, !tbaa !27, !alias.scope !138, !noalias !140
  %index.next77 = or i64 %index72, 4
  %109 = getelementptr inbounds i64, ptr %lhs.033, i64 %index.next77
  %wide.load73.1 = load <2 x i64>, ptr %109, align 8, !tbaa !27, !alias.scope !133
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  %wide.load74.1 = load <2 x i64>, ptr %110, align 8, !tbaa !27, !alias.scope !133
  %111 = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %index.next77
  %wide.load75.1 = load <2 x i64>, ptr %111, align 8, !tbaa !27, !alias.scope !136
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  %wide.load76.1 = load <2 x i64>, ptr %112, align 8, !tbaa !27, !alias.scope !136
  %113 = xor <2 x i64> %wide.load75.1, %wide.load73.1
  %114 = xor <2 x i64> %wide.load76.1, %wide.load74.1
  %115 = getelementptr inbounds i64, ptr %call2, i64 %index.next77
  store <2 x i64> %113, ptr %115, align 8, !tbaa !27, !alias.scope !138, !noalias !140
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store <2 x i64> %114, ptr %116, align 8, !tbaa !27, !alias.scope !138, !noalias !140
  %index.next77.1 = add nuw i64 %index72, 8
  %niter118.next.1 = add i64 %niter118, 2
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
  br i1 %niter118.ncmp.1, label %middle.block63.unr-lcssa, label %vector.body71, !llvm.loop !141

middle.block63.unr-lcssa:                         ; preds = %vector.body71, %vector.ph66
  %index72.unr = phi i64 [ 0, %vector.ph66 ], [ %index.next77.1, %vector.body71 ]
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %middle.block63, label %vector.body71.epil

vector.body71.epil:                               ; preds = %middle.block63.unr-lcssa
  %117 = getelementptr inbounds i64, ptr %lhs.033, i64 %index72.unr
  %wide.load73.epil = load <2 x i64>, ptr %117, align 8, !tbaa !27, !alias.scope !133
  %118 = getelementptr inbounds i64, ptr %117, i64 2
  %wide.load74.epil = load <2 x i64>, ptr %118, align 8, !tbaa !27, !alias.scope !133
  %119 = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %index72.unr
  %wide.load75.epil = load <2 x i64>, ptr %119, align 8, !tbaa !27, !alias.scope !136
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  %wide.load76.epil = load <2 x i64>, ptr %120, align 8, !tbaa !27, !alias.scope !136
  %121 = xor <2 x i64> %wide.load75.epil, %wide.load73.epil
  %122 = xor <2 x i64> %wide.load76.epil, %wide.load74.epil
  %123 = getelementptr inbounds i64, ptr %call2, i64 %index72.unr
  store <2 x i64> %121, ptr %123, align 8, !tbaa !27, !alias.scope !138, !noalias !140
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store <2 x i64> %122, ptr %124, align 8, !tbaa !27, !alias.scope !138, !noalias !140
  br label %middle.block63

middle.block63:                                   ; preds = %middle.block63.unr-lcssa, %vector.body71.epil
  %cmp.n70 = icmp eq i64 %n.vec68, %wide.trip.count.i
  br i1 %cmp.n70, label %_ZN10Functional3XOREPmS0_S0_i.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %vector.memcheck52, %for.body.preheader.i, %middle.block63
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck52 ], [ 0, %for.body.preheader.i ], [ %n.vec68, %middle.block63 ]
  %125 = xor i64 %indvars.iv.i.ph, -1
  %126 = add nsw i64 %125, %wide.trip.count.i
  %xtraiter119 = and i64 %wide.trip.count.i, 3
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.preheader, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %prol.iter121 = phi i64 [ %prol.iter121.next, %for.body.i.prol ], [ 0, %for.body.i.preheader ]
  %arrayidx.i.prol = getelementptr inbounds i64, ptr %lhs.033, i64 %indvars.iv.i.prol
  %127 = load i64, ptr %arrayidx.i.prol, align 8, !tbaa !27
  %arrayidx2.i.prol = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %indvars.iv.i.prol
  %128 = load i64, ptr %arrayidx2.i.prol, align 8, !tbaa !27
  %xor.i.prol = xor i64 %128, %127
  %arrayidx4.i.prol = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.i.prol
  store i64 %xor.i.prol, ptr %arrayidx4.i.prol, align 8, !tbaa !27
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter121.next = add i64 %prol.iter121, 1
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !142

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body.i.preheader ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %129 = icmp ult i64 %126, 3
  br i1 %129, label %_ZN10Functional3XOREPmS0_S0_i.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body.i ], [ %indvars.iv.i.unr, %for.body.i.prol.loopexit ]
  %arrayidx.i = getelementptr inbounds i64, ptr %lhs.033, i64 %indvars.iv.i
  %130 = load i64, ptr %arrayidx.i, align 8, !tbaa !27
  %arrayidx2.i = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %indvars.iv.i
  %131 = load i64, ptr %arrayidx2.i, align 8, !tbaa !27
  %xor.i = xor i64 %131, %130
  %arrayidx4.i = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.i
  store i64 %xor.i, ptr %arrayidx4.i, align 8, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds i64, ptr %lhs.033, i64 %indvars.iv.next.i
  %132 = load i64, ptr %arrayidx.i.1, align 8, !tbaa !27
  %arrayidx2.i.1 = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %indvars.iv.next.i
  %133 = load i64, ptr %arrayidx2.i.1, align 8, !tbaa !27
  %xor.i.1 = xor i64 %133, %132
  %arrayidx4.i.1 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i
  store i64 %xor.i.1, ptr %arrayidx4.i.1, align 8, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds i64, ptr %lhs.033, i64 %indvars.iv.next.i.1
  %134 = load i64, ptr %arrayidx.i.2, align 8, !tbaa !27
  %arrayidx2.i.2 = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %indvars.iv.next.i.1
  %135 = load i64, ptr %arrayidx2.i.2, align 8, !tbaa !27
  %xor.i.2 = xor i64 %135, %134
  %arrayidx4.i.2 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i.1
  store i64 %xor.i.2, ptr %arrayidx4.i.2, align 8, !tbaa !27
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds i64, ptr %lhs.033, i64 %indvars.iv.next.i.2
  %136 = load i64, ptr %arrayidx.i.3, align 8, !tbaa !27
  %arrayidx2.i.3 = getelementptr inbounds i64, ptr %lhs.0.lcssa.i30, i64 %indvars.iv.next.i.2
  %137 = load i64, ptr %arrayidx2.i.3, align 8, !tbaa !27
  %xor.i.3 = xor i64 %137, %136
  %arrayidx4.i.3 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i.2
  store i64 %xor.i.3, ptr %arrayidx4.i.3, align 8, !tbaa !27
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN10Functional3XOREPmS0_S0_i.exit, label %for.body.i, !llvm.loop !143

_ZN10Functional3XOREPmS0_S0_i.exit:               ; preds = %for.body.i.prol.loopexit, %for.body.i, %middle.block63, %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit31
  %cond = icmp eq i32 %94, 94
  br i1 %cond, label %sw.bb, label %sw.default, !llvm.loop !65

sw.default:                                       ; preds = %_ZN10Functional3XOREPmS0_S0_i.exit, %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit
  %lhs.0.lcssa = phi ptr [ %lhs.0.lcssa.i, %_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE.exit ], [ %call2, %_ZN10Functional3XOREPmS0_S0_i.exit ]
  ret ptr %lhs.0.lcssa
}

declare noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10Functional12FunctionUtil4termERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression) local_unnamed_addr #8 align 2 {
entry:
  %call = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %currentToken = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %currentToken, align 8, !tbaa !22
  %cond7 = icmp eq i32 %0, 42
  br i1 %cond7, label %sw.bb.lr.ph, label %sw.default

sw.bb.lr.ph:                                      ; preds = %entry
  %functionPool = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %nWords = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  br label %sw.bb

sw.bb:                                            ; preds = %sw.bb.lr.ph, %_ZN10Functional3ANDEPmS0_S0_i.exit
  %lhs.08 = phi ptr [ %call, %sw.bb.lr.ph ], [ %call2, %_ZN10Functional3ANDEPmS0_S0_i.exit ]
  %1 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call2 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %call3 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %2 = load i32, ptr %nWords, align 4, !tbaa !21
  %cmp9.i = icmp sgt i32 %2, 0
  br i1 %cmp9.i, label %for.body.preheader.i, label %_ZN10Functional3ANDEPmS0_S0_i.exit

for.body.preheader.i:                             ; preds = %sw.bb
  %wide.trip.count.i = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader.i
  %3 = shl nuw nsw i64 %wide.trip.count.i, 3
  %uglygep = getelementptr i8, ptr %call2, i64 %3
  %uglygep9 = getelementptr i8, ptr %lhs.08, i64 %3
  %uglygep10 = getelementptr i8, ptr %call3, i64 %3
  %bound0 = icmp ult ptr %call2, %uglygep9
  %bound1 = icmp ult ptr %lhs.08, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  %bound011 = icmp ult ptr %call2, %uglygep10
  %bound112 = icmp ult ptr %call3, %uglygep
  %found.conflict13 = and i1 %bound011, %bound112
  %conflict.rdx = or i1 %found.conflict, %found.conflict13
  br i1 %conflict.rdx, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967292
  %4 = add nsw i64 %n.vec, -4
  %5 = lshr exact i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 1
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %8 = getelementptr inbounds i64, ptr %lhs.08, i64 %index
  %wide.load = load <2 x i64>, ptr %8, align 8, !tbaa !27, !alias.scope !144
  %9 = getelementptr inbounds i64, ptr %8, i64 2
  %wide.load14 = load <2 x i64>, ptr %9, align 8, !tbaa !27, !alias.scope !144
  %10 = getelementptr inbounds i64, ptr %call3, i64 %index
  %wide.load15 = load <2 x i64>, ptr %10, align 8, !tbaa !27, !alias.scope !147
  %11 = getelementptr inbounds i64, ptr %10, i64 2
  %wide.load16 = load <2 x i64>, ptr %11, align 8, !tbaa !27, !alias.scope !147
  %12 = and <2 x i64> %wide.load15, %wide.load
  %13 = and <2 x i64> %wide.load16, %wide.load14
  %14 = getelementptr inbounds i64, ptr %call2, i64 %index
  store <2 x i64> %12, ptr %14, align 8, !tbaa !27, !alias.scope !149, !noalias !151
  %15 = getelementptr inbounds i64, ptr %14, i64 2
  store <2 x i64> %13, ptr %15, align 8, !tbaa !27, !alias.scope !149, !noalias !151
  %index.next = or i64 %index, 4
  %16 = getelementptr inbounds i64, ptr %lhs.08, i64 %index.next
  %wide.load.1 = load <2 x i64>, ptr %16, align 8, !tbaa !27, !alias.scope !144
  %17 = getelementptr inbounds i64, ptr %16, i64 2
  %wide.load14.1 = load <2 x i64>, ptr %17, align 8, !tbaa !27, !alias.scope !144
  %18 = getelementptr inbounds i64, ptr %call3, i64 %index.next
  %wide.load15.1 = load <2 x i64>, ptr %18, align 8, !tbaa !27, !alias.scope !147
  %19 = getelementptr inbounds i64, ptr %18, i64 2
  %wide.load16.1 = load <2 x i64>, ptr %19, align 8, !tbaa !27, !alias.scope !147
  %20 = and <2 x i64> %wide.load15.1, %wide.load.1
  %21 = and <2 x i64> %wide.load16.1, %wide.load14.1
  %22 = getelementptr inbounds i64, ptr %call2, i64 %index.next
  store <2 x i64> %20, ptr %22, align 8, !tbaa !27, !alias.scope !149, !noalias !151
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  store <2 x i64> %21, ptr %23, align 8, !tbaa !27, !alias.scope !149, !noalias !151
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !152

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %24 = getelementptr inbounds i64, ptr %lhs.08, i64 %index.unr
  %wide.load.epil = load <2 x i64>, ptr %24, align 8, !tbaa !27, !alias.scope !144
  %25 = getelementptr inbounds i64, ptr %24, i64 2
  %wide.load14.epil = load <2 x i64>, ptr %25, align 8, !tbaa !27, !alias.scope !144
  %26 = getelementptr inbounds i64, ptr %call3, i64 %index.unr
  %wide.load15.epil = load <2 x i64>, ptr %26, align 8, !tbaa !27, !alias.scope !147
  %27 = getelementptr inbounds i64, ptr %26, i64 2
  %wide.load16.epil = load <2 x i64>, ptr %27, align 8, !tbaa !27, !alias.scope !147
  %28 = and <2 x i64> %wide.load15.epil, %wide.load.epil
  %29 = and <2 x i64> %wide.load16.epil, %wide.load14.epil
  %30 = getelementptr inbounds i64, ptr %call2, i64 %index.unr
  store <2 x i64> %28, ptr %30, align 8, !tbaa !27, !alias.scope !149, !noalias !151
  %31 = getelementptr inbounds i64, ptr %30, i64 2
  store <2 x i64> %29, ptr %31, align 8, !tbaa !27, !alias.scope !149, !noalias !151
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN10Functional3ANDEPmS0_S0_i.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %vector.memcheck, %for.body.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader.i ], [ %n.vec, %middle.block ]
  %32 = xor i64 %indvars.iv.i.ph, -1
  %33 = add nsw i64 %32, %wide.trip.count.i
  %xtraiter17 = and i64 %wide.trip.count.i, 3
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.preheader, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.i.prol ], [ 0, %for.body.i.preheader ]
  %arrayidx.i.prol = getelementptr inbounds i64, ptr %lhs.08, i64 %indvars.iv.i.prol
  %34 = load i64, ptr %arrayidx.i.prol, align 8, !tbaa !27
  %arrayidx2.i.prol = getelementptr inbounds i64, ptr %call3, i64 %indvars.iv.i.prol
  %35 = load i64, ptr %arrayidx2.i.prol, align 8, !tbaa !27
  %and.i.prol = and i64 %35, %34
  %arrayidx4.i.prol = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.i.prol
  store i64 %and.i.prol, ptr %arrayidx4.i.prol, align 8, !tbaa !27
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter17
  br i1 %prol.iter.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !153

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body.i.preheader ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %36 = icmp ult i64 %33, 3
  br i1 %36, label %_ZN10Functional3ANDEPmS0_S0_i.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body.i ], [ %indvars.iv.i.unr, %for.body.i.prol.loopexit ]
  %arrayidx.i = getelementptr inbounds i64, ptr %lhs.08, i64 %indvars.iv.i
  %37 = load i64, ptr %arrayidx.i, align 8, !tbaa !27
  %arrayidx2.i = getelementptr inbounds i64, ptr %call3, i64 %indvars.iv.i
  %38 = load i64, ptr %arrayidx2.i, align 8, !tbaa !27
  %and.i = and i64 %38, %37
  %arrayidx4.i = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.i
  store i64 %and.i, ptr %arrayidx4.i, align 8, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds i64, ptr %lhs.08, i64 %indvars.iv.next.i
  %39 = load i64, ptr %arrayidx.i.1, align 8, !tbaa !27
  %arrayidx2.i.1 = getelementptr inbounds i64, ptr %call3, i64 %indvars.iv.next.i
  %40 = load i64, ptr %arrayidx2.i.1, align 8, !tbaa !27
  %and.i.1 = and i64 %40, %39
  %arrayidx4.i.1 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i
  store i64 %and.i.1, ptr %arrayidx4.i.1, align 8, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds i64, ptr %lhs.08, i64 %indvars.iv.next.i.1
  %41 = load i64, ptr %arrayidx.i.2, align 8, !tbaa !27
  %arrayidx2.i.2 = getelementptr inbounds i64, ptr %call3, i64 %indvars.iv.next.i.1
  %42 = load i64, ptr %arrayidx2.i.2, align 8, !tbaa !27
  %and.i.2 = and i64 %42, %41
  %arrayidx4.i.2 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i.1
  store i64 %and.i.2, ptr %arrayidx4.i.2, align 8, !tbaa !27
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds i64, ptr %lhs.08, i64 %indvars.iv.next.i.2
  %43 = load i64, ptr %arrayidx.i.3, align 8, !tbaa !27
  %arrayidx2.i.3 = getelementptr inbounds i64, ptr %call3, i64 %indvars.iv.next.i.2
  %44 = load i64, ptr %arrayidx2.i.3, align 8, !tbaa !27
  %and.i.3 = and i64 %44, %43
  %arrayidx4.i.3 = getelementptr inbounds i64, ptr %call2, i64 %indvars.iv.next.i.2
  store i64 %and.i.3, ptr %arrayidx4.i.3, align 8, !tbaa !27
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN10Functional3ANDEPmS0_S0_i.exit, label %for.body.i, !llvm.loop !154

_ZN10Functional3ANDEPmS0_S0_i.exit:               ; preds = %for.body.i.prol.loopexit, %for.body.i, %middle.block, %sw.bb
  %45 = load i32, ptr %currentToken, align 8, !tbaa !22
  %cond = icmp eq i32 %45, 42
  br i1 %cond, label %sw.bb, label %sw.default, !llvm.loop !42

sw.default:                                       ; preds = %_ZN10Functional3ANDEPmS0_S0_i.exit, %entry
  %lhs.0.lcssa = phi ptr [ %call, %entry ], [ %call2, %_ZN10Functional3ANDEPmS0_S0_i.exit ]
  ret ptr %lhs.0.lcssa
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression) local_unnamed_addr #6 align 2 {
entry:
  %call = tail call noundef i32 @_ZN10Functional12FunctionUtil8getTokenERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression), !range !155
  %currentToken = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %currentToken, align 8, !tbaa !22
  switch i32 %0, label %return [
    i32 34, label %sw.bb
    i32 33, label %sw.bb17
    i32 40, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %call2 = tail call noundef i32 @_ZN10Functional12FunctionUtil8getTokenERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression), !range !155
  %literals = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 3
  %1 = load ptr, ptr %literals, align 8, !tbaa !156
  %tokenValue = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2
  %call.i = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IPmjEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %tokenValue)
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %_M_storage.i.i = getelementptr inbounds %"struct.std::__detail::_Hash_node_value_base", ptr %call.i, i64 0, i32 1
  %second = getelementptr inbounds %"struct.std::pair", ptr %_M_storage.i.i, i64 0, i32 1
  %2 = load ptr, ptr %second, align 8, !tbaa !157
  %functionPool = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %3 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call11 = tail call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %nWords = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  %4 = load i32, ptr %nWords, align 4, !tbaa !21
  %cmp6.i = icmp sgt i32 %4, 0
  br i1 %cmp6.i, label %for.body.preheader.i, label %return

for.body.preheader.i:                             ; preds = %if.then
  %wide.trip.count.i = zext i32 %4 to i64
  %min.iters.check60 = icmp ult i32 %4, 4
  br i1 %min.iters.check60, label %for.body.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader.i
  %5 = shl nuw nsw i64 %wide.trip.count.i, 3
  %uglygep = getelementptr i8, ptr %call11, i64 %5
  %uglygep57 = getelementptr i8, ptr %2, i64 %5
  %bound0 = icmp ult ptr %call11, %uglygep57
  %bound1 = icmp ult ptr %2, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.i.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck
  %n.vec63 = and i64 %wide.trip.count.i, 4294967292
  %6 = add nsw i64 %n.vec63, -4
  %7 = lshr exact i64 %6, 2
  %8 = add nuw nsw i64 %7, 1
  %xtraiter72 = and i64 %8, 3
  %9 = icmp ult i64 %6, 12
  br i1 %9, label %middle.block58.unr-lcssa, label %vector.ph61.new

vector.ph61.new:                                  ; preds = %vector.ph61
  %unroll_iter74 = and i64 %8, 9223372036854775804
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph61.new
  %index67 = phi i64 [ 0, %vector.ph61.new ], [ %index.next70.3, %vector.body66 ]
  %niter75 = phi i64 [ 0, %vector.ph61.new ], [ %niter75.next.3, %vector.body66 ]
  %10 = getelementptr inbounds i64, ptr %2, i64 %index67
  %wide.load68 = load <2 x i64>, ptr %10, align 8, !tbaa !27, !alias.scope !160
  %11 = getelementptr inbounds i64, ptr %10, i64 2
  %wide.load69 = load <2 x i64>, ptr %11, align 8, !tbaa !27, !alias.scope !160
  %12 = getelementptr inbounds i64, ptr %call11, i64 %index67
  store <2 x i64> %wide.load68, ptr %12, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %13 = getelementptr inbounds i64, ptr %12, i64 2
  store <2 x i64> %wide.load69, ptr %13, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %index.next70 = or i64 %index67, 4
  %14 = getelementptr inbounds i64, ptr %2, i64 %index.next70
  %wide.load68.1 = load <2 x i64>, ptr %14, align 8, !tbaa !27, !alias.scope !160
  %15 = getelementptr inbounds i64, ptr %14, i64 2
  %wide.load69.1 = load <2 x i64>, ptr %15, align 8, !tbaa !27, !alias.scope !160
  %16 = getelementptr inbounds i64, ptr %call11, i64 %index.next70
  store <2 x i64> %wide.load68.1, ptr %16, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %17 = getelementptr inbounds i64, ptr %16, i64 2
  store <2 x i64> %wide.load69.1, ptr %17, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %index.next70.1 = or i64 %index67, 8
  %18 = getelementptr inbounds i64, ptr %2, i64 %index.next70.1
  %wide.load68.2 = load <2 x i64>, ptr %18, align 8, !tbaa !27, !alias.scope !160
  %19 = getelementptr inbounds i64, ptr %18, i64 2
  %wide.load69.2 = load <2 x i64>, ptr %19, align 8, !tbaa !27, !alias.scope !160
  %20 = getelementptr inbounds i64, ptr %call11, i64 %index.next70.1
  store <2 x i64> %wide.load68.2, ptr %20, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %21 = getelementptr inbounds i64, ptr %20, i64 2
  store <2 x i64> %wide.load69.2, ptr %21, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %index.next70.2 = or i64 %index67, 12
  %22 = getelementptr inbounds i64, ptr %2, i64 %index.next70.2
  %wide.load68.3 = load <2 x i64>, ptr %22, align 8, !tbaa !27, !alias.scope !160
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  %wide.load69.3 = load <2 x i64>, ptr %23, align 8, !tbaa !27, !alias.scope !160
  %24 = getelementptr inbounds i64, ptr %call11, i64 %index.next70.2
  store <2 x i64> %wide.load68.3, ptr %24, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %25 = getelementptr inbounds i64, ptr %24, i64 2
  store <2 x i64> %wide.load69.3, ptr %25, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %index.next70.3 = add nuw i64 %index67, 16
  %niter75.next.3 = add nuw i64 %niter75, 4
  %niter75.ncmp.3 = icmp eq i64 %niter75.next.3, %unroll_iter74
  br i1 %niter75.ncmp.3, label %middle.block58.unr-lcssa, label %vector.body66, !llvm.loop !165

middle.block58.unr-lcssa:                         ; preds = %vector.body66, %vector.ph61
  %index67.unr = phi i64 [ 0, %vector.ph61 ], [ %index.next70.3, %vector.body66 ]
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %middle.block58, label %vector.body66.epil

vector.body66.epil:                               ; preds = %middle.block58.unr-lcssa, %vector.body66.epil
  %index67.epil = phi i64 [ %index.next70.epil, %vector.body66.epil ], [ %index67.unr, %middle.block58.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body66.epil ], [ 0, %middle.block58.unr-lcssa ]
  %26 = getelementptr inbounds i64, ptr %2, i64 %index67.epil
  %wide.load68.epil = load <2 x i64>, ptr %26, align 8, !tbaa !27, !alias.scope !160
  %27 = getelementptr inbounds i64, ptr %26, i64 2
  %wide.load69.epil = load <2 x i64>, ptr %27, align 8, !tbaa !27, !alias.scope !160
  %28 = getelementptr inbounds i64, ptr %call11, i64 %index67.epil
  store <2 x i64> %wide.load68.epil, ptr %28, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %29 = getelementptr inbounds i64, ptr %28, i64 2
  store <2 x i64> %wide.load69.epil, ptr %29, align 8, !tbaa !27, !alias.scope !163, !noalias !160
  %index.next70.epil = add nuw i64 %index67.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter72
  br i1 %epil.iter.cmp.not, label %middle.block58, label %vector.body66.epil, !llvm.loop !166

middle.block58:                                   ; preds = %vector.body66.epil, %middle.block58.unr-lcssa
  %cmp.n65 = icmp eq i64 %n.vec63, %wide.trip.count.i
  br i1 %cmp.n65, label %return, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %vector.memcheck, %for.body.preheader.i, %middle.block58
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader.i ], [ %n.vec63, %middle.block58 ]
  %30 = xor i64 %indvars.iv.i.ph, -1
  %31 = add nsw i64 %30, %wide.trip.count.i
  %xtraiter76 = and i64 %wide.trip.count.i, 3
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.preheader, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.i.prol ], [ 0, %for.body.i.preheader ]
  %arrayidx.i.prol = getelementptr inbounds i64, ptr %2, i64 %indvars.iv.i.prol
  %32 = load i64, ptr %arrayidx.i.prol, align 8, !tbaa !27
  %arrayidx2.i.prol = getelementptr inbounds i64, ptr %call11, i64 %indvars.iv.i.prol
  store i64 %32, ptr %arrayidx2.i.prol, align 8, !tbaa !27
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter76
  br i1 %prol.iter.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !167

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body.i.preheader ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %33 = icmp ult i64 %31, 3
  br i1 %33, label %return, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body.i ], [ %indvars.iv.i.unr, %for.body.i.prol.loopexit ]
  %arrayidx.i = getelementptr inbounds i64, ptr %2, i64 %indvars.iv.i
  %34 = load i64, ptr %arrayidx.i, align 8, !tbaa !27
  %arrayidx2.i = getelementptr inbounds i64, ptr %call11, i64 %indvars.iv.i
  store i64 %34, ptr %arrayidx2.i, align 8, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds i64, ptr %2, i64 %indvars.iv.next.i
  %35 = load i64, ptr %arrayidx.i.1, align 8, !tbaa !27
  %arrayidx2.i.1 = getelementptr inbounds i64, ptr %call11, i64 %indvars.iv.next.i
  store i64 %35, ptr %arrayidx2.i.1, align 8, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds i64, ptr %2, i64 %indvars.iv.next.i.1
  %36 = load i64, ptr %arrayidx.i.2, align 8, !tbaa !27
  %arrayidx2.i.2 = getelementptr inbounds i64, ptr %call11, i64 %indvars.iv.next.i.1
  store i64 %36, ptr %arrayidx2.i.2, align 8, !tbaa !27
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds i64, ptr %2, i64 %indvars.iv.next.i.2
  %37 = load i64, ptr %arrayidx.i.3, align 8, !tbaa !27
  %arrayidx2.i.3 = getelementptr inbounds i64, ptr %call11, i64 %indvars.iv.next.i.2
  store i64 %37, ptr %arrayidx2.i.3, align 8, !tbaa !27
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %return, label %for.body.i, !llvm.loop !168

if.else:                                          ; preds = %sw.bb
  %call12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call12, ptr noundef nonnull align 8 dereferenceable(32) %tokenValue)
  %call15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @.str.1)
  %call.i37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call15)
  tail call void @exit(i32 noundef 1) #20
  unreachable

sw.bb17:                                          ; preds = %entry
  %call18 = tail call noundef ptr @_ZN10Functional12FunctionUtil4primERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %nWords19 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 6
  %38 = load i32, ptr %nWords19, align 4, !tbaa !21
  %cmp6.i38 = icmp sgt i32 %38, 0
  br i1 %cmp6.i38, label %for.body.preheader.i40, label %return

for.body.preheader.i40:                           ; preds = %sw.bb17
  %wide.trip.count.i39 = zext i32 %38 to i64
  %min.iters.check = icmp ult i32 %38, 4
  br i1 %min.iters.check, label %for.body.i46.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i40
  %n.vec = and i64 %wide.trip.count.i39, 4294967292
  %39 = add nsw i64 %n.vec, -4
  %40 = lshr exact i64 %39, 2
  %41 = add nuw nsw i64 %40, 1
  %xtraiter = and i64 %41, 1
  %42 = icmp eq i64 %39, 0
  br i1 %42, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %41, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %43 = getelementptr inbounds i64, ptr %call18, i64 %index
  %wide.load = load <2 x i64>, ptr %43, align 8, !tbaa !27
  %44 = getelementptr inbounds i64, ptr %43, i64 2
  %wide.load56 = load <2 x i64>, ptr %44, align 8, !tbaa !27
  %45 = xor <2 x i64> %wide.load, <i64 -1, i64 -1>
  %46 = xor <2 x i64> %wide.load56, <i64 -1, i64 -1>
  store <2 x i64> %45, ptr %43, align 8, !tbaa !27
  store <2 x i64> %46, ptr %44, align 8, !tbaa !27
  %index.next = or i64 %index, 4
  %47 = getelementptr inbounds i64, ptr %call18, i64 %index.next
  %wide.load.1 = load <2 x i64>, ptr %47, align 8, !tbaa !27
  %48 = getelementptr inbounds i64, ptr %47, i64 2
  %wide.load56.1 = load <2 x i64>, ptr %48, align 8, !tbaa !27
  %49 = xor <2 x i64> %wide.load.1, <i64 -1, i64 -1>
  %50 = xor <2 x i64> %wide.load56.1, <i64 -1, i64 -1>
  store <2 x i64> %49, ptr %47, align 8, !tbaa !27
  store <2 x i64> %50, ptr %48, align 8, !tbaa !27
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !169

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %51 = getelementptr inbounds i64, ptr %call18, i64 %index.unr
  %wide.load.epil = load <2 x i64>, ptr %51, align 8, !tbaa !27
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  %wide.load56.epil = load <2 x i64>, ptr %52, align 8, !tbaa !27
  %53 = xor <2 x i64> %wide.load.epil, <i64 -1, i64 -1>
  %54 = xor <2 x i64> %wide.load56.epil, <i64 -1, i64 -1>
  store <2 x i64> %53, ptr %51, align 8, !tbaa !27
  store <2 x i64> %54, ptr %52, align 8, !tbaa !27
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i39
  br i1 %cmp.n, label %return, label %for.body.i46.preheader

for.body.i46.preheader:                           ; preds = %for.body.preheader.i40, %middle.block
  %indvars.iv.i41.ph = phi i64 [ 0, %for.body.preheader.i40 ], [ %n.vec, %middle.block ]
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.body.i46.preheader, %for.body.i46
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i44, %for.body.i46 ], [ %indvars.iv.i41.ph, %for.body.i46.preheader ]
  %arrayidx.i42 = getelementptr inbounds i64, ptr %call18, i64 %indvars.iv.i41
  %55 = load i64, ptr %arrayidx.i42, align 8, !tbaa !27
  %neg.i = xor i64 %55, -1
  store i64 %neg.i, ptr %arrayidx.i42, align 8, !tbaa !27
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %wide.trip.count.i39
  br i1 %exitcond.not.i45, label %return, label %for.body.i46, !llvm.loop !170

sw.bb20:                                          ; preds = %entry
  %call22 = tail call noundef ptr @_ZN10Functional12FunctionUtil5expr1ERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression)
  %56 = load i32, ptr %currentToken, align 8, !tbaa !22
  %cmp.not = icmp eq i32 %56, 41
  br i1 %cmp.not, label %if.end, label %if.then24

if.then24:                                        ; preds = %sw.bb20
  %call25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2)
  %57 = load i32, ptr %currentToken, align 8, !tbaa !22
  %call27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call25, i32 noundef %57)
  %call.i47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call27)
  tail call void @exit(i32 noundef 1) #20
  unreachable

if.end:                                           ; preds = %sw.bb20
  %call29 = tail call noundef i32 @_ZN10Functional12FunctionUtil8getTokenERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression), !range !155
  br label %return

return:                                           ; preds = %for.body.i46, %for.body.i.prol.loopexit, %for.body.i, %middle.block, %middle.block58, %sw.bb17, %if.then, %entry, %if.end
  %retval.0 = phi ptr [ %call22, %if.end ], [ null, %entry ], [ %call11, %if.then ], [ %call18, %sw.bb17 ], [ %call11, %middle.block58 ], [ %call18, %middle.block ], [ %call11, %for.body.i ], [ %call11, %for.body.i.prol.loopexit ], [ %call18, %for.body.i46 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN10Functional12FunctionUtil8getTokenERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %this, ptr noundef nonnull align 8 dereferenceable(120) %expression) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ch = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch) #18
  store i8 0, ptr %ch, align 1, !tbaa !15
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %expression, ptr noundef nonnull align 1 dereferenceable(1) %ch)
  %0 = load i8, ptr %ch, align 1, !tbaa !15
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %cleanup
    i32 59, label %sw.bb2
    i32 42, label %sw.bb2
    i32 43, label %sw.bb2
    i32 94, label %sw.bb2
    i32 33, label %sw.bb2
    i32 40, label %sw.bb2
    i32 41, label %sw.bb2
    i32 61, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call6 = call i32 @isalpha(i32 noundef %conv) #21
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.default
  %tokenValue = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2
  %_M_string_length.i.i.i = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2, i32 1
  %1 = load i64, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  %call3.i.i = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %tokenValue, i64 noundef 0, i64 noundef %1, ptr noundef nonnull @.str.3, i64 noundef 0)
  %2 = load i8, ptr %ch, align 1, !tbaa !15
  %conv822 = sext i8 %2 to i32
  %call923 = call i32 @isalnum(i32 noundef %conv822) #21
  %tobool10.not24 = icmp eq i32 %call923, 0
  br i1 %tobool10.not24, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.then
  %3 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 2, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %4 = phi i8 [ %2, %land.rhs.lr.ph ], [ %11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ]
  %vtable = load ptr, ptr %expression, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %expression, i64 %vbase.offset
  %_M_streambuf_state.i.i = getelementptr inbounds %"class.std::ios_base", ptr %add.ptr, i64 0, i32 5
  %5 = load i32, ptr %_M_streambuf_state.i.i, align 8, !tbaa !172
  %and.i.i = and i32 %5, 2
  %cmp.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %6 = load i64, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  %add.i.i = add i64 %6, 1
  %7 = load ptr, ptr %tokenValue, align 8, !tbaa !23
  %cmp.i.i.i.i = icmp eq ptr %7, %3
  %8 = load i64, ptr %3, align 8
  %spec.select.i.i.i = select i1 %cmp.i.i.i.i, i64 15, i64 %8
  %cmp.i.i = icmp ugt i64 %add.i.i, %spec.select.i.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

if.then.i.i:                                      ; preds = %for.body
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %tokenValue, i64 noundef %6, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %tokenValue, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %for.body, %if.then.i.i
  %9 = phi ptr [ %.pre.i.i, %if.then.i.i ], [ %7, %for.body ]
  %arrayidx.i.i = getelementptr inbounds i8, ptr %9, i64 %6
  store i8 %4, ptr %arrayidx.i.i, align 1, !tbaa !15
  store i64 %add.i.i, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  %10 = load ptr, ptr %tokenValue, align 8, !tbaa !23
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %10, i64 %add.i.i
  store i8 0, ptr %arrayidx.i.i.i, align 1, !tbaa !15
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %expression, ptr noundef nonnull align 1 dereferenceable(1) %ch)
  %11 = load i8, ptr %ch, align 1, !tbaa !15
  %conv8 = sext i8 %11 to i32
  %call9 = call i32 @isalnum(i32 noundef %conv8) #21
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.end, label %land.rhs, !llvm.loop !178

for.end:                                          ; preds = %land.rhs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %if.then
  %.lcssa = phi i8 [ %2, %if.then ], [ %11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %4, %land.rhs ]
  %call15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7putbackEc(ptr noundef nonnull align 8 dereferenceable(16) %expression, i8 noundef signext %.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry, %for.end, %sw.bb2
  %.sink = phi i32 [ 34, %for.end ], [ %conv, %sw.bb2 ], [ 59, %entry ], [ 59, %sw.default ]
  %currentToken17 = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 1
  store i32 %.sink, ptr %currentToken17, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch) #18
  ret i32 %.sink
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @isalnum(i32 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7putbackEc(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN10Functional12FunctionUtil9parseHexaENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %this, ptr noundef %hexa) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__dnew.i.i.i.i.i74 = alloca i64, align 8
  %__dnew.i.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %value = alloca i64, align 8
  %ss = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %currentHexa = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp23 = alloca %"class.std::__cxx11::basic_string", align 8
  %_M_string_length.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %hexa, i64 0, i32 1
  %0 = load i64, ptr %_M_string_length.i.i, align 8, !tbaa !12
  %cmp.not.i.not = icmp eq i64 %0, 0
  br i1 %cmp.not.i.not, label %if.then.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %entry
  %1 = load ptr, ptr %hexa, align 8, !tbaa !23
  %2 = load i8, ptr %1, align 1, !tbaa !15
  %cmp = icmp eq i8 %2, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %cmp.not.i64 = icmp ugt i64 %0, 1
  br i1 %cmp.not.i64, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit66, label %if.then.i65

if.then.i65:                                      ; preds = %land.lhs.true
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 1, i64 noundef %0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit66: ; preds = %land.lhs.true
  %arrayidx.i = getelementptr inbounds i8, ptr %1, i64 1
  %3 = load i8, ptr %arrayidx.i, align 1, !tbaa !15
  %cmp4 = icmp eq i8 %3, 120
  br i1 %cmp4, label %invoke.cont4.i.i, label %if.end

invoke.cont4.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit66
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp, i64 0, i32 2
  store ptr %4, ptr %ref.tmp, align 8, !tbaa !8, !alias.scope !179
  %add.ptr.i.i = getelementptr inbounds i8, ptr %1, i64 2
  %sub.i.i.i = add i64 %0, -2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__dnew.i.i.i.i.i) #18, !noalias !179
  store i64 %sub.i.i.i, ptr %__dnew.i.i.i.i.i, align 8, !tbaa !27, !noalias !179
  %cmp3.i.i.i.i.i = icmp ugt i64 %sub.i.i.i, 15
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %if.end6.i.i.i.i.i

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont4.i.i
  %call5.i.i.i16.i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i.i, i64 noundef 0)
  store ptr %call5.i.i.i16.i.i, ptr %ref.tmp, align 8, !tbaa !23, !alias.scope !179
  %5 = load i64, ptr %__dnew.i.i.i.i.i, align 8, !tbaa !27, !noalias !179
  store i64 %5, ptr %4, align 8, !tbaa !15, !alias.scope !179
  br label %if.end6.i.i.i.i.i

if.end6.i.i.i.i.i:                                ; preds = %if.then4.i.i.i.i.i, %invoke.cont4.i.i
  %6 = phi ptr [ %call5.i.i.i16.i.i, %if.then4.i.i.i.i.i ], [ %4, %invoke.cont4.i.i ]
  switch i64 %0, label %if.end.i.i.i.i.i.i.i.i [
    i64 3, label %if.then.i.i.i.i.i.i.i
    i64 2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

if.then.i.i.i.i.i.i.i:                            ; preds = %if.end6.i.i.i.i.i
  %7 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !15
  store i8 %7, ptr %6, align 1, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end6.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %add.ptr.i.i, i64 %sub.i.i.i, i1 false) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %if.end6.i.i.i.i.i, %if.then.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i.i
  %8 = load i64, ptr %__dnew.i.i.i.i.i, align 8, !tbaa !27, !noalias !179
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp, i64 0, i32 1
  store i64 %8, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !12, !alias.scope !179
  %9 = load ptr, ptr %ref.tmp, align 8, !tbaa !23, !alias.scope !179
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %9, i64 %8
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__dnew.i.i.i.i.i) #18, !noalias !179
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %hexa, i64 0, i32 2
  %11 = load ptr, ptr %ref.tmp, align 8, !tbaa !23
  %cmp.i52.i = icmp eq ptr %11, %4
  br i1 %cmp.i52.i, label %if.then15.i, label %invoke.cont25.i

if.then15.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %12 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !12
  %tobool.not.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i, label %if.end22.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then15.i
  %13 = load ptr, ptr %hexa, align 8, !tbaa !23
  %cond.i = icmp eq i64 %12, 1
  br i1 %cond.i, label %if.then.i.i68, label %if.end.i.i.i

if.then.i.i68:                                    ; preds = %if.then17.i
  %14 = load i8, ptr %4, align 8, !tbaa !15
  store i8 %14, ptr %13, align 1, !tbaa !15
  br label %if.end22.i

if.end.i.i.i:                                     ; preds = %if.then17.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr nonnull align 8 %4, i64 %12, i1 false) #18
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i68, %if.then15.i
  %15 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !12
  store i64 %15, ptr %_M_string_length.i.i, align 8, !tbaa !12
  %16 = load ptr, ptr %hexa, align 8, !tbaa !23
  %arrayidx.i.i = getelementptr inbounds i8, ptr %16, i64 %15
  store i8 0, ptr %arrayidx.i.i, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %ref.tmp, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

invoke.cont25.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %17 = load ptr, ptr %hexa, align 8, !tbaa !23
  %cmp.i56.i = icmp eq ptr %17, %10
  br i1 %cmp.i56.i, label %if.end29.thread.i, label %if.end29.i

if.end29.thread.i:                                ; preds = %invoke.cont25.i
  store ptr %11, ptr %hexa, align 8, !tbaa !23
  %18 = load <2 x i64>, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !15
  store <2 x i64> %18, ptr %_M_string_length.i.i, align 8, !tbaa !15
  br label %if.else34.i

if.end29.i:                                       ; preds = %invoke.cont25.i
  %19 = load i64, ptr %10, align 8, !tbaa !15
  store ptr %11, ptr %hexa, align 8, !tbaa !23
  %20 = load <2 x i64>, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !15
  store <2 x i64> %20, ptr %_M_string_length.i.i, align 8, !tbaa !15
  %tobool32.not.i = icmp eq ptr %17, null
  br i1 %tobool32.not.i, label %if.else34.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end29.i
  store ptr %17, ptr %ref.tmp, align 8, !tbaa !23
  store i64 %19, ptr %4, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

if.else34.i:                                      ; preds = %if.end29.i, %if.end29.thread.i
  store ptr %4, ptr %ref.tmp, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %if.end22.i, %if.then33.i, %if.else34.i
  %21 = phi ptr [ %.pre.i, %if.end22.i ], [ %17, %if.then33.i ], [ %4, %if.else34.i ]
  store i64 0, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !12
  store i8 0, ptr %21, align 1, !tbaa !15
  %22 = load ptr, ptr %ref.tmp, align 8, !tbaa !23
  %cmp.i.i.i = icmp eq ptr %22, %4
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i69

if.then.i.i69:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %22) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %if.then.i.i69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp) #18
  br label %if.end

if.end:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %functionPool = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 4
  %23 = load ptr, ptr %functionPool, align 8, !tbaa !26
  %call6 = call noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(56) %23)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #18
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %ss) #18
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %ss)
  %nVars = getelementptr inbounds %"class.Functional::FunctionUtil", ptr %this, i64 0, i32 5
  %24 = load i32, ptr %nVars, align 8, !tbaa !17
  %cmp7 = icmp slt i32 %24, 6
  br i1 %cmp7, label %invoke.cont, label %if.else

invoke.cont:                                      ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %ss, i64 16
  %vtable.i = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 %vbase.offset.i
  %_M_flags.i.i = getelementptr inbounds %"class.std::ios_base", ptr %add.ptr.i, i64 0, i32 3
  %25 = load i32, ptr %_M_flags.i.i, align 8, !tbaa !182
  %and.i.i.i.i120 = and i32 %25, -75
  %or.i.i.i.i = or i32 %and.i.i.i.i120, 8
  store i32 %or.i.i.i.i, ptr %_M_flags.i.i, align 8, !tbaa !183
  %26 = load ptr, ptr %hexa, align 8, !tbaa !23
  %27 = load i64, ptr %_M_string_length.i.i, align 8, !tbaa !12
  %call2.i72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr, ptr noundef %26, i64 noundef %27)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont
  %call.i73 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %ss, ptr noundef nonnull align 8 dereferenceable(8) %value)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  %28 = load i64, ptr %value, align 8, !tbaa !27
  store i64 %28, ptr %call6, align 8, !tbaa !27
  br label %cleanup

lpad:                                             ; preds = %invoke.cont10, %invoke.cont
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup44

if.else:                                          ; preds = %if.end
  %30 = load i64, ptr %_M_string_length.i.i, align 8, !tbaa !12
  %31 = trunc i64 %30 to i32
  %lhs.0135 = add i32 %31, -16
  %cmp16136 = icmp sgt i32 %lhs.0135, -1
  br i1 %cmp16136, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %if.else
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %currentHexa, i64 0, i32 2
  %_M_string_length.i.i.i.i.i.i.i87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %currentHexa, i64 0, i32 1
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp23, i64 0, i32 2
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp23, i64 0, i32 1
  %_M_string.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1, i32 2
  %_M_string_length.i.i.i.i93 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1, i32 2, i32 1
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1
  %_M_mode.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1, i32 1
  %add.ptr31 = getelementptr inbounds i8, ptr %ss, i64 16
  %34 = lshr i32 %lhs.0135, 4
  %35 = add nuw nsw i32 %34, 1
  %wide.trip.count = zext i32 %35 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %currentHexa) #18
  %conv17124166 = zext i32 %lhs.0135 to i64
  %cmp.i.i76167 = icmp ult i64 %30, %conv17124166
  br i1 %cmp.i.i76167, label %if.then.i.i77, label %invoke.cont4.i.i81

if.then.i.i77:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge, %while.body.lr.ph
  %.lcssa = phi i64 [ %30, %while.body.lr.ph ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge ]
  %lhs.0138.lcssa = phi i32 [ %lhs.0135, %while.body.lr.ph ], [ %lhs.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge ]
  %conv17124.le = zext i32 %lhs.0138.lcssa to i64
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef %conv17124.le, i64 noundef %.lcssa) #22
          to label %.noexc unwind label %lpad18.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i77
  unreachable

invoke.cont4.i.i81:                               ; preds = %while.body.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge
  %conv17124170 = phi i64 [ %conv17124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge ], [ %conv17124166, %while.body.lr.ph ]
  %lhs.0138169 = phi i32 [ %lhs.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge ], [ %lhs.0135, %while.body.lr.ph ]
  %indvars.iv168 = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge ], [ 0, %while.body.lr.ph ]
  %36 = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge ], [ %30, %while.body.lr.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  store ptr %32, ptr %currentHexa, align 8, !tbaa !8, !alias.scope !184
  %37 = load ptr, ptr %hexa, align 8, !tbaa !23, !noalias !184
  %add.ptr.i.i78 = getelementptr inbounds i8, ptr %37, i64 %conv17124170
  %sub.i.i.i79 = sub i64 %36, %conv17124170
  %38 = call i64 @llvm.umin.i64(i64 %sub.i.i.i79, i64 16) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__dnew.i.i.i.i.i74) #18, !noalias !184
  store i64 %38, ptr %__dnew.i.i.i.i.i74, align 8, !tbaa !27, !noalias !184
  %cmp3.i.i.i.i.i80 = icmp ugt i64 %38, 15
  br i1 %cmp3.i.i.i.i.i80, label %if.then4.i.i.i.i.i83, label %if.end6.i.i.i.i.i84

if.then4.i.i.i.i.i83:                             ; preds = %invoke.cont4.i.i81
  %call5.i.i.i16.i.i8289 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %currentHexa, ptr noundef nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i.i74, i64 noundef 0)
          to label %if.end6.i.i.i.i.i84.thread unwind label %lpad18.loopexit

if.end6.i.i.i.i.i84.thread:                       ; preds = %if.then4.i.i.i.i.i83
  store ptr %call5.i.i.i16.i.i8289, ptr %currentHexa, align 8, !tbaa !23, !alias.scope !184
  %39 = load i64, ptr %__dnew.i.i.i.i.i74, align 8, !tbaa !27, !noalias !184
  store i64 %39, ptr %32, align 8, !tbaa !15, !alias.scope !184
  br label %if.end.i.i.i.i.i.i.i.i86

if.end6.i.i.i.i.i84:                              ; preds = %invoke.cont4.i.i81
  switch i64 %38, label %if.end.i.i.i.i.i.i.i.i86 [
    i64 1, label %if.then.i.i.i.i.i.i.i85
    i64 0, label %invoke.cont19
  ]

if.then.i.i.i.i.i.i.i85:                          ; preds = %if.end6.i.i.i.i.i84
  %40 = load i8, ptr %add.ptr.i.i78, align 1, !tbaa !15
  store i8 %40, ptr %32, align 8, !tbaa !15
  br label %invoke.cont19

if.end.i.i.i.i.i.i.i.i86:                         ; preds = %if.end6.i.i.i.i.i84.thread, %if.end6.i.i.i.i.i84
  %41 = phi ptr [ %call5.i.i.i16.i.i8289, %if.end6.i.i.i.i.i84.thread ], [ %32, %if.end6.i.i.i.i.i84 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %add.ptr.i.i78, i64 %38, i1 false) #18
  %.pre148 = load i64, ptr %__dnew.i.i.i.i.i74, align 8, !tbaa !27, !noalias !184
  %.pre149 = load ptr, ptr %currentHexa, align 8, !tbaa !23, !alias.scope !184
  br label %invoke.cont19

invoke.cont19:                                    ; preds = %if.end.i.i.i.i.i.i.i.i86, %if.then.i.i.i.i.i.i.i85, %if.end6.i.i.i.i.i84
  %42 = phi ptr [ %.pre149, %if.end.i.i.i.i.i.i.i.i86 ], [ %32, %if.then.i.i.i.i.i.i.i85 ], [ %32, %if.end6.i.i.i.i.i84 ]
  %43 = phi i64 [ %.pre148, %if.end.i.i.i.i.i.i.i.i86 ], [ 1, %if.then.i.i.i.i.i.i.i85 ], [ %38, %if.end6.i.i.i.i.i84 ]
  store i64 %43, ptr %_M_string_length.i.i.i.i.i.i.i87, align 8, !tbaa !12, !alias.scope !184
  %arrayidx.i.i.i.i.i.i88 = getelementptr inbounds i8, ptr %42, i64 %43
  store i8 0, ptr %arrayidx.i.i.i.i.i.i88, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__dnew.i.i.i.i.i74) #18, !noalias !184
  %vtable = load ptr, ptr %ss, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %ss, i64 %vbase.offset
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr20, i32 noundef 0)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp23) #18
  store ptr %33, ptr %ref.tmp23, align 8, !tbaa !8
  store i64 0, ptr %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  store i8 0, ptr %33, align 8, !tbaa !15
  %44 = load i64, ptr %_M_string_length.i.i.i.i93, align 8, !tbaa !12
  %call2.i.i.i94 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %_M_string.i.i, i64 noundef 0, i64 noundef %44, ptr noundef nonnull %33, i64 noundef 0)
          to label %call2.i.i.i.noexc unwind label %lpad27

call2.i.i.i.noexc:                                ; preds = %invoke.cont22
  %45 = load i32, ptr %_M_mode.i.i, align 8, !tbaa !187
  %and.i.i.i.i = and i32 %45, 3
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %46 = load i64, ptr %_M_string_length.i.i.i.i93, align 8
  %spec.select.i.i = select i1 %tobool.not.i.i.i, i64 0, i64 %46
  %47 = load ptr, ptr %_M_string.i.i, align 8, !tbaa !23
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %_M_stringbuf.i, ptr noundef %47, i64 noundef 0, i64 noundef %spec.select.i.i)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %call2.i.i.i.noexc
  %48 = load ptr, ptr %ref.tmp23, align 8, !tbaa !23
  %cmp.i.i.i96 = icmp eq ptr %48, %33
  br i1 %cmp.i.i.i96, label %invoke.cont32, label %if.then.i.i97

if.then.i.i97:                                    ; preds = %invoke.cont28
  call void @_ZdlPv(ptr noundef %48) #18
  br label %invoke.cont32

invoke.cont32:                                    ; preds = %invoke.cont28, %if.then.i.i97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp23) #18
  %vtable.i99 = load ptr, ptr %add.ptr31, align 8, !tbaa !5
  %vbase.offset.ptr.i100 = getelementptr i8, ptr %vtable.i99, i64 -24
  %vbase.offset.i101 = load i64, ptr %vbase.offset.ptr.i100, align 8
  %add.ptr.i102 = getelementptr inbounds i8, ptr %add.ptr31, i64 %vbase.offset.i101
  %_M_flags.i.i121 = getelementptr inbounds %"class.std::ios_base", ptr %add.ptr.i102, i64 0, i32 3
  %49 = load i32, ptr %_M_flags.i.i121, align 8, !tbaa !182
  %and.i.i.i.i122 = and i32 %49, -75
  %or.i.i.i.i123 = or i32 %and.i.i.i.i122, 8
  store i32 %or.i.i.i.i123, ptr %_M_flags.i.i121, align 8, !tbaa !183
  %50 = load ptr, ptr %currentHexa, align 8, !tbaa !23
  %51 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i87, align 8, !tbaa !12
  %call2.i106 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr31, ptr noundef %50, i64 noundef %51)
          to label %invoke.cont34 unwind label %lpad21

invoke.cont34:                                    ; preds = %invoke.cont32
  %call.i108 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %ss, ptr noundef nonnull align 8 dereferenceable(8) %value)
          to label %invoke.cont36 unwind label %lpad21

invoke.cont36:                                    ; preds = %invoke.cont34
  %52 = load i64, ptr %value, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv168, 1
  %arrayidx38 = getelementptr inbounds i64, ptr %call6, i64 %indvars.iv168
  store i64 %52, ptr %arrayidx38, align 8, !tbaa !27
  %53 = load ptr, ptr %currentHexa, align 8, !tbaa !23
  %cmp.i.i.i110 = icmp eq ptr %53, %32
  br i1 %cmp.i.i.i110, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %if.then.i.i111

if.then.i.i111:                                   ; preds = %invoke.cont36
  call void @_ZdlPv(ptr noundef %53) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %invoke.cont36, %if.then.i.i111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %currentHexa) #18
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge, !llvm.loop !190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.while.body_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %lhs.0 = add i32 %lhs.0138169, -16
  %.pre = load i64, ptr %_M_string_length.i.i, align 8, !tbaa !12, !noalias !184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %currentHexa) #18
  %conv17124 = zext i32 %lhs.0 to i64
  %cmp.i.i76 = icmp ult i64 %.pre, %conv17124
  br i1 %cmp.i.i76, label %if.then.i.i77, label %invoke.cont4.i.i81

lpad18.loopexit:                                  ; preds = %if.then4.i.i.i.i.i83
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup41

lpad18.loopexit.split-lp:                         ; preds = %if.then.i.i77
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup41

lpad21:                                           ; preds = %invoke.cont34, %invoke.cont32, %invoke.cont19
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup40

lpad27:                                           ; preds = %call2.i.i.i.noexc, %invoke.cont22
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load ptr, ptr %ref.tmp23, align 8, !tbaa !23
  %cmp.i.i.i113 = icmp eq ptr %56, %33
  br i1 %cmp.i.i.i113, label %ehcleanup, label %if.then.i.i114

if.then.i.i114:                                   ; preds = %lpad27
  call void @_ZdlPv(ptr noundef %56) #18
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i114, %lpad27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp23) #18
  br label %ehcleanup40

ehcleanup40:                                      ; preds = %ehcleanup, %lpad21
  %.pn57 = phi { ptr, i32 } [ %54, %lpad21 ], [ %55, %ehcleanup ]
  %57 = load ptr, ptr %currentHexa, align 8, !tbaa !23
  %cmp.i.i.i116 = icmp eq ptr %57, %32
  br i1 %cmp.i.i.i116, label %ehcleanup41, label %if.then.i.i117

if.then.i.i117:                                   ; preds = %ehcleanup40
  call void @_ZdlPv(ptr noundef %57) #18
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %lpad18.loopexit, %lpad18.loopexit.split-lp, %if.then.i.i117, %ehcleanup40
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %ehcleanup40 ], [ %.pn57, %if.then.i.i117 ], [ %lpad.loopexit, %lpad18.loopexit ], [ %lpad.loopexit.split-lp, %lpad18.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %currentHexa) #18
  br label %ehcleanup44

cleanup:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %if.else, %invoke.cont12
  %58 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %58, ptr %ss, align 8, !tbaa !5
  %59 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %58, i64 -24
  %vbase.offset.i.i = load i64, ptr %vbase.offset.ptr.i.i, align 8
  %add.ptr.i.i119 = getelementptr inbounds i8, ptr %ss, i64 %vbase.offset.i.i
  store ptr %59, ptr %add.ptr.i.i119, align 8, !tbaa !5
  %60 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8
  %add.ptr3.i.i = getelementptr inbounds i8, ptr %ss, i64 16
  store ptr %60, ptr %add.ptr3.i.i, align 8, !tbaa !5
  %_M_stringbuf.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i.i, align 8, !tbaa !5
  %_M_string.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1, i32 2
  %61 = load ptr, ptr %_M_string.i.i.i, align 8, !tbaa !23
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ss, i64 0, i32 1, i32 2, i32 2
  %cmp.i.i.i.i.i.i = icmp eq ptr %61, %62
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %cleanup
  call void @_ZdlPv(ptr noundef %61) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %cleanup, %if.then.i.i.i.i.i
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i.i, align 8, !tbaa !5
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i.i, i64 0, i32 7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #18
  %63 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8
  store ptr %63, ptr %ss, align 8, !tbaa !5
  %64 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %vbase.offset.ptr.i.i.i.i = getelementptr i8, ptr %63, i64 -24
  %vbase.offset.i.i.i.i = load i64, ptr %vbase.offset.ptr.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %ss, i64 %vbase.offset.i.i.i.i
  store ptr %64, ptr %add.ptr.i.i.i.i, align 8, !tbaa !5
  %_M_gcount.i.i.i.i = getelementptr inbounds %"class.std::basic_istream", ptr %ss, i64 0, i32 1
  store i64 0, ptr %_M_gcount.i.i.i.i, align 8, !tbaa !24
  %65 = getelementptr inbounds i8, ptr %ss, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %65) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %ss) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #18
  ret ptr %call6

ehcleanup44:                                      ; preds = %ehcleanup41, %lpad
  %.pn58 = phi { ptr, i32 } [ %29, %lpad ], [ %.pn57.pn, %ehcleanup41 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %ss) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %ss) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #18
  resume { ptr, i32 } %.pn58
}

; Function Attrs: uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IPmjEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %this, ptr noundef nonnull align 8 dereferenceable(32) %__k) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %__k, align 8, !tbaa !23
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %__k, i64 0, i32 1
  %1 = load i64, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  %call.i5.i.i = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %0, i64 noundef %1, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IPmjEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %terminate.lpad.i.i

terminate.lpad.i.i:                               ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  tail call void @__clang_call_terminate(ptr %3) #20
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IPmjEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %entry
  %_M_bucket_count.i = getelementptr inbounds %"class.std::_Hashtable", ptr %this, i64 0, i32 1
  %4 = load i64, ptr %_M_bucket_count.i, align 8, !tbaa !191
  %rem.i.i.i = urem i64 %call.i5.i.i, %4
  %5 = load ptr, ptr %this, align 8, !tbaa !196
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %5, i64 %rem.i.i.i
  %6 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !16
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %cond.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IPmjEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = load i64, ptr %_M_string_length.i.i.i, align 8
  %cmp.i.i.i.i.i.i.i = icmp eq i64 %8, 0
  %9 = load ptr, ptr %__k, align 8
  %_M_hash_code.i.i.us.phi.trans.insert.i.i = getelementptr inbounds %"struct.std::__detail::_Hash_node", ptr %7, i64 0, i32 1
  %.pre24.i.i = load i64, ptr %_M_hash_code.i.i.us.phi.trans.insert.i.i, align 8, !tbaa !198
  br i1 %cmp.i.i.i.i.i.i.i, label %for.cond.us.i.i, label %for.cond.i.i

for.cond.us.i.i:                                  ; preds = %if.end.i.i, %lor.lhs.false.us.i.i
  %10 = phi i64 [ %13, %lor.lhs.false.us.i.i ], [ %.pre24.i.i, %if.end.i.i ]
  %__p.0.us.i.i = phi ptr [ %12, %lor.lhs.false.us.i.i ], [ %7, %if.end.i.i ]
  %cmp.i.i.us.i.i = icmp eq i64 %10, %call.i5.i.i
  br i1 %cmp.i.i.us.i.i, label %land.rhs.i.i.us.i.i, label %if.end3.us.i.i

land.rhs.i.i.us.i.i:                              ; preds = %for.cond.us.i.i
  %_M_storage.i.i.i.i.us.i.i = getelementptr inbounds %"struct.std::__detail::_Hash_node_value_base", ptr %__p.0.us.i.i, i64 0, i32 1
  %_M_string_length.i9.i.i.i.i.us.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %_M_storage.i.i.i.i.us.i.i, i64 0, i32 1
  %11 = load i64, ptr %_M_string_length.i9.i.i.i.i.us.i.i, align 8, !tbaa !12
  %cmp.i.i.i.i.us.i.i = icmp eq i64 %11, 0
  br i1 %cmp.i.i.i.i.us.i.i, label %cond.end, label %if.end3.us.i.i

if.end3.us.i.i:                                   ; preds = %land.rhs.i.i.us.i.i, %for.cond.us.i.i
  %12 = load ptr, ptr %__p.0.us.i.i, align 8, !tbaa !197
  %tobool5.not.us.i.i = icmp eq ptr %12, null
  br i1 %tobool5.not.us.i.i, label %cond.end, label %lor.lhs.false.us.i.i

lor.lhs.false.us.i.i:                             ; preds = %if.end3.us.i.i
  %_M_hash_code.i.i19.us.i.i = getelementptr inbounds %"struct.std::__detail::_Hash_node", ptr %12, i64 0, i32 1
  %13 = load i64, ptr %_M_hash_code.i.i19.us.i.i, align 8, !tbaa !198
  %rem.i.i.i.us.i.i = urem i64 %13, %4
  %cmp.not.us.i.i = icmp eq i64 %rem.i.i.i.us.i.i, %rem.i.i.i
  br i1 %cmp.not.us.i.i, label %for.cond.us.i.i, label %cond.end, !llvm.loop !200

for.cond.i.i:                                     ; preds = %if.end.i.i, %lor.lhs.false.i.i
  %14 = phi i64 [ %18, %lor.lhs.false.i.i ], [ %.pre24.i.i, %if.end.i.i ]
  %__p.0.i.i = phi ptr [ %17, %lor.lhs.false.i.i ], [ %7, %if.end.i.i ]
  %cmp.i.i.i.i = icmp eq i64 %14, %call.i5.i.i
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end3.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.cond.i.i
  %_M_storage.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_Hash_node_value_base", ptr %__p.0.i.i, i64 0, i32 1
  %_M_string_length.i9.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %_M_storage.i.i.i.i.i.i, i64 0, i32 1
  %15 = load i64, ptr %_M_string_length.i9.i.i.i.i.i.i, align 8, !tbaa !12
  %cmp.i.i.i.i.i.i = icmp eq i64 %8, %15
  br i1 %cmp.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i, label %if.end3.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i
  %16 = load ptr, ptr %_M_storage.i.i.i.i.i.i, align 8, !tbaa !23
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %9, ptr %16, i64 %8) #18
  %phi.cmp.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i.i.i, label %cond.end, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %land.rhs.i.i.i.i.i.i, %land.rhs.i.i.i.i, %for.cond.i.i
  %17 = load ptr, ptr %__p.0.i.i, align 8, !tbaa !197
  %tobool5.not.i.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i.i, label %cond.end, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i
  %_M_hash_code.i.i19.i.i = getelementptr inbounds %"struct.std::__detail::_Hash_node", ptr %17, i64 0, i32 1
  %18 = load i64, ptr %_M_hash_code.i.i19.i.i, align 8, !tbaa !198
  %rem.i.i.i.i.i = urem i64 %18, %4
  %cmp.not.i.i = icmp eq i64 %rem.i.i.i.i.i, %rem.i.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i, label %cond.end, !llvm.loop !200

cond.end:                                         ; preds = %lor.lhs.false.i.i, %if.end3.i.i, %land.rhs.i.i.i.i.i.i, %if.end3.us.i.i, %lor.lhs.false.us.i.i, %land.rhs.i.i.us.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IPmjEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %retval.sroa.0.0 = phi ptr [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IPmjEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %if.end3.us.i.i ], [ null, %lor.lhs.false.us.i.i ], [ %__p.0.us.i.i, %land.rhs.i.i.us.i.i ], [ null, %lor.lhs.false.i.i ], [ null, %if.end3.i.i ], [ %__p.0.i.i, %land.rhs.i.i.i.i.i.i ]
  ret ptr %retval.sroa.0.0
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FunctionUtil.cpp() #6 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !11, i64 16}
!14 = !{!"long", !11, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!18, !20, i64 64}
!18 = !{!"_ZTSN10Functional12FunctionUtilE", !19, i64 8, !13, i64 16, !10, i64 48, !10, i64 56, !20, i64 64, !20, i64 68}
!19 = !{!"_ZTSN10Functional5TokenE", !11, i64 0}
!20 = !{!"int", !11, i64 0}
!21 = !{!18, !20, i64 68}
!22 = !{!18, !19, i64 8}
!23 = !{!13, !10, i64 0}
!24 = !{!25, !14, i64 8}
!25 = !{!"_ZTSSi", !14, i64 8}
!26 = !{!18, !10, i64 56}
!27 = !{!14, !14, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = !{!34}
!34 = distinct !{!34, !30}
!35 = !{!29, !32}
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !37, !38}
!42 = distinct !{!42, !37}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = !{!49}
!49 = distinct !{!49, !45}
!50 = !{!44, !47}
!51 = distinct !{!51, !37, !38}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !37, !38}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = !{!60}
!60 = distinct !{!60, !56}
!61 = !{!55, !58}
!62 = distinct !{!62, !37, !38}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !37, !38}
!65 = distinct !{!65, !37}
!66 = !{!67}
!67 = distinct !{!67, !68}
!68 = distinct !{!68, !"LVerDomain"}
!69 = !{!70}
!70 = distinct !{!70, !68}
!71 = !{!72}
!72 = distinct !{!72, !68}
!73 = !{!67, !70}
!74 = distinct !{!74, !37, !38}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !37, !38}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!83}
!83 = distinct !{!83, !79}
!84 = !{!78, !81}
!85 = distinct !{!85, !37, !38}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !37, !38}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = !{!94}
!94 = distinct !{!94, !90}
!95 = !{!89, !92}
!96 = distinct !{!96, !37, !38}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !37, !38}
!99 = !{!100}
!100 = distinct !{!100, !101}
!101 = distinct !{!101, !"LVerDomain"}
!102 = !{!103}
!103 = distinct !{!103, !101}
!104 = !{!105}
!105 = distinct !{!105, !101}
!106 = !{!100, !103}
!107 = distinct !{!107, !37, !38}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !37, !38}
!110 = distinct !{!110, !37}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = !{!117}
!117 = distinct !{!117, !113}
!118 = !{!112, !115}
!119 = distinct !{!119, !37, !38}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !37, !38}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!123, !126}
!130 = distinct !{!130, !37, !38}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, !37, !38}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137}
!137 = distinct !{!137, !135}
!138 = !{!139}
!139 = distinct !{!139, !135}
!140 = !{!134, !137}
!141 = distinct !{!141, !37, !38}
!142 = distinct !{!142, !40}
!143 = distinct !{!143, !37, !38}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = !{!150}
!150 = distinct !{!150, !146}
!151 = !{!145, !148}
!152 = distinct !{!152, !37, !38}
!153 = distinct !{!153, !40}
!154 = distinct !{!154, !37, !38}
!155 = !{i32 -128, i32 128}
!156 = !{!18, !10, i64 48}
!157 = !{!158, !10, i64 32}
!158 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IPmjEE", !13, i64 0, !159, i64 32}
!159 = !{!"_ZTSSt4pairIPmjE", !10, i64 0, !20, i64 8}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !37, !38}
!166 = distinct !{!166, !40}
!167 = distinct !{!167, !40}
!168 = distinct !{!168, !37, !38}
!169 = distinct !{!169, !37, !38}
!170 = distinct !{!170, !37, !171, !38}
!171 = !{!"llvm.loop.unroll.runtime.disable"}
!172 = !{!173, !175, i64 32}
!173 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !174, i64 24, !175, i64 28, !175, i64 32, !10, i64 40, !176, i64 48, !11, i64 64, !20, i64 192, !10, i64 200, !177, i64 208}
!174 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!175 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!176 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !14, i64 8}
!177 = !{!"_ZTSSt6locale", !10, i64 0}
!178 = distinct !{!178, !37}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: %agg.result"}
!181 = distinct !{!181, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!182 = !{!173, !174, i64 24}
!183 = !{!174, !174, i64 0}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: %agg.result"}
!186 = distinct !{!186, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!187 = !{!188, !189, i64 64}
!188 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !189, i64 64, !13, i64 72}
!189 = !{!"_ZTSSt13_Ios_Openmode", !11, i64 0}
!190 = distinct !{!190, !37}
!191 = !{!192, !14, i64 8}
!192 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IPmjEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !10, i64 0, !14, i64 8, !193, i64 16, !14, i64 24, !194, i64 32, !10, i64 48}
!193 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!194 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !195, i64 0, !14, i64 8}
!195 = !{!"float", !11, i64 0}
!196 = !{!192, !10, i64 0}
!197 = !{!193, !10, i64 0}
!198 = !{!199, !14, i64 56}
!199 = !{!"_ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_IPmjEELb1EEE", !14, i64 56}
!200 = distinct !{!200, !37}
