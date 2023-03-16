; ModuleID = 'LookupTableParser.cpp'
source_filename = "LookupTableParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"struct.lookuptables::lookupTableElement" = type <{ %"class.std::__cxx11::basic_string", i8, i8, [6 x i8] }>
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"basic_string::at: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_LookupTableParser.cpp, ptr null }]

@_ZN12lookuptables17LookupTableParserC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12lookuptables17LookupTableParserC2Ev
@_ZN12lookuptables17LookupTableParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12lookuptables17LookupTableParserD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @_ZN12lookuptables17LookupTableParserC2Ev(ptr nocapture nonnull align 1 %this) unnamed_addr #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @_ZN12lookuptables17LookupTableParserD2Ev(ptr nocapture nonnull align 1 %this) unnamed_addr #3 align 2 {
entry:
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN12lookuptables17LookupTableParser9parseFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPNS_18lookupTableElementE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %this, ptr noundef nonnull %fileName, ptr nocapture noundef readonly %lookupTable) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__dnew.i.i.i.i.i = alloca i64, align 8
  %__endptr.i.i58 = alloca ptr, align 8
  %__endptr.i.i = alloca ptr, align 8
  %file = alloca %"class.std::basic_ifstream", align 8
  %line = alloca %"class.std::__cxx11::basic_string", align 8
  %token = alloca %"class.std::__cxx11::basic_string", align 8
  %exp = alloca %"class.std::__cxx11::basic_string", align 8
  %tokenizer = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %ref.tmp = alloca %"struct.lookuptables::lookupTableElement", align 8
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %file) #12
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %file, ptr noundef nonnull align 8 dereferenceable(32) %fileName, i32 noundef 8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %line) #12
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %line, i64 0, i32 2
  store ptr %0, ptr %line, align 8, !tbaa !5
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %line, i64 0, i32 1
  store i64 0, ptr %_M_string_length.i.i.i, align 8, !tbaa !10
  store i8 0, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %token) #12
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %token, i64 0, i32 2
  store ptr %1, ptr %token, align 8, !tbaa !5
  %_M_string_length.i.i.i49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %token, i64 0, i32 1
  store i64 0, ptr %_M_string_length.i.i.i49, align 8, !tbaa !10
  store i8 0, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %exp) #12
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %exp, i64 0, i32 2
  store ptr %2, ptr %exp, align 8, !tbaa !5
  %_M_string_length.i.i.i50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %exp, i64 0, i32 1
  store i64 0, ptr %_M_string_length.i.i.i50, align 8, !tbaa !10
  store i8 0, ptr %2, align 8, !tbaa !13
  %vtable.i131138 = load ptr, ptr %file, align 8, !tbaa !14
  %vbase.offset.ptr.i132139 = getelementptr i8, ptr %vtable.i131138, i64 -24
  %vbase.offset.i133140 = load i64, ptr %vbase.offset.ptr.i132139, align 8
  %add.ptr.i134141 = getelementptr inbounds i8, ptr %file, i64 %vbase.offset.i133140
  %_M_ctype.i.i135142 = getelementptr inbounds %"class.std::basic_ios", ptr %add.ptr.i134141, i64 0, i32 5
  %3 = load ptr, ptr %_M_ctype.i.i135142, align 8, !tbaa !16
  %tobool.not.i.i.i136143 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i136143, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph.lr.ph: ; preds = %entry
  %add.ptr8 = getelementptr inbounds i8, ptr %tokenizer, i64 16
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp, i64 0, i32 2
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp, i64 0, i32 1
  %literals3.i = getelementptr inbounds %"struct.lookuptables::lookupTableElement", ptr %ref.tmp, i64 0, i32 1
  %levels4.i = getelementptr inbounds %"struct.lookuptables::lookupTableElement", ptr %ref.tmp, i64 0, i32 2
  %5 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8
  %6 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %5, i64 -24
  %7 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8
  %_M_stringbuf.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %tokenizer, i64 0, i32 1
  %_M_string.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %tokenizer, i64 0, i32 1, i32 2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %tokenizer, i64 0, i32 1, i32 2, i32 2
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i.i, i64 0, i32 7
  %9 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8
  %10 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %vbase.offset.ptr.i.i.i.i = getelementptr i8, ptr %9, i64 -24
  %_M_gcount.i.i.i.i = getelementptr inbounds %"class.std::basic_istream", ptr %tokenizer, i64 0, i32 1
  %11 = getelementptr inbounds i8, ptr %tokenizer, i64 128
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph.lr.ph, %if.then
  %indvars.iv173 = phi i64 [ 0, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph.lr.ph ], [ %indvars.iv.next174, %if.then ]
  %12 = phi ptr [ %3, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph.lr.ph ], [ %21, %if.then ]
  %arrayidx = getelementptr inbounds ptr, ptr %lookupTable, i64 %indvars.iv173
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %entry
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %.noexc unwind label %lpad.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %indvars.iv = phi i64 [ 0, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %13 = phi ptr [ %12, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %65, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", ptr %13, i64 0, i32 8
  %14 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !19
  %tobool.not.i3.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", ptr %13, i64 0, i32 9, i64 10
  %15 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !13
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
          to label %.noexc51 unwind label %lpad.loopexit

.noexc51:                                         ; preds = %if.end.i.i.i
  %vtable.i.i.i = load ptr, ptr %13, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds ptr, ptr %vtable.i.i.i, i64 6
  %16 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i52 = invoke noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %lpad.loopexit

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc51, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %15, %if.then.i4.i.i ], [ %call.i.i.i52, %.noexc51 ]
  %call1.i53 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %file, ptr noundef nonnull align 8 dereferenceable(32) %line, i8 noundef signext %retval.0.i.i.i)
          to label %invoke.cont2 unwind label %lpad.loopexit

invoke.cont2:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %vtable = load ptr, ptr %call1.i53, align 8, !tbaa !14
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call1.i53, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds %"class.std::ios_base", ptr %add.ptr, i64 0, i32 5
  %17 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %and.i.i.i = and i32 %17, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont2
  %18 = load i64, ptr %_M_string_length.i.i.i, align 8, !tbaa !10
  %cmp.not.i.not = icmp eq i64 %18, 0
  br i1 %cmp.not.i.not, label %if.then.i, label %invoke.cont4

if.then.i:                                        ; preds = %while.body
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 0) #13
          to label %.noexc54 unwind label %lpad.loopexit.split-lp

.noexc54:                                         ; preds = %if.then.i
  unreachable

invoke.cont4:                                     ; preds = %while.body
  %19 = load ptr, ptr %line, align 8, !tbaa !28
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %cmp = icmp eq i8 %20, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont4
  %indvars.iv.next174 = add nuw i64 %indvars.iv173, 1
  %vtable.i131 = load ptr, ptr %file, align 8, !tbaa !14
  %vbase.offset.ptr.i132 = getelementptr i8, ptr %vtable.i131, i64 -24
  %vbase.offset.i133 = load i64, ptr %vbase.offset.ptr.i132, align 8
  %add.ptr.i134 = getelementptr inbounds i8, ptr %file, i64 %vbase.offset.i133
  %_M_ctype.i.i135 = getelementptr inbounds %"class.std::basic_ios", ptr %add.ptr.i134, i64 0, i32 5
  %21 = load ptr, ptr %_M_ctype.i.i135, align 8, !tbaa !16
  %tobool.not.i.i.i136 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i136, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph, !llvm.loop !29

lpad.loopexit:                                    ; preds = %if.end.i.i.i, %.noexc51, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup31

lpad.loopexit.split-lp:                           ; preds = %if.then.i.i.i, %if.then.i
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup31

if.end:                                           ; preds = %invoke.cont4
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %tokenizer) #12
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %tokenizer)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %if.end
  %22 = load ptr, ptr %line, align 8, !tbaa !28
  %23 = load i64, ptr %_M_string_length.i.i.i, align 8, !tbaa !10
  %call2.i56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr8, ptr noundef %22, i64 noundef %23)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %call13 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %tokenizer, ptr noundef nonnull align 8 dereferenceable(32) %exp, i8 noundef signext 59)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  %call15 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %tokenizer, ptr noundef nonnull align 8 dereferenceable(32) %token, i8 noundef signext 59)
          to label %invoke.cont14 unwind label %lpad9

invoke.cont14:                                    ; preds = %invoke.cont12
  %24 = load ptr, ptr %token, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__endptr.i.i) #12
  %call.i.i.i = tail call ptr @__errno_location() #14
  %25 = load i32, ptr %call.i.i.i, align 4, !tbaa !31
  store i32 0, ptr %call.i.i.i, align 4, !tbaa !31
  %call.i.i = call noundef i64 @strtol(ptr noundef %24, ptr noundef nonnull %__endptr.i.i, i32 noundef 10)
  %26 = load ptr, ptr %__endptr.i.i, align 8, !tbaa !32
  %cmp.i.i = icmp eq ptr %26, %24
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %invoke.cont14
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str) #13
          to label %invoke.cont1.i.i unwind label %lpad.i.i

invoke.cont1.i.i:                                 ; preds = %if.then.i.i
  unreachable

lpad.i.i:                                         ; preds = %if.then7.i.i, %if.then.i.i
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load i32, ptr %call.i.i.i, align 4, !tbaa !31
  %cmp.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i57, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

if.then.i.i.i57:                                  ; preds = %lpad.i.i
  store i32 %25, ptr %call.i.i.i, align 4, !tbaa !31
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %if.then.i.i.i57, %lpad.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__endptr.i.i) #12
  br label %ehcleanup

if.else.i.i:                                      ; preds = %invoke.cont14
  %29 = load i32, ptr %call.i.i.i, align 4, !tbaa !31
  %cmp3.i.i = icmp eq i32 %29, 34
  %30 = add i64 %call.i.i, -2147483648
  %31 = icmp ult i64 %30, -4294967296
  %or.cond.i.i = or i1 %31, %cmp3.i.i
  br i1 %or.cond.i.i, label %if.then7.i.i, label %if.else9.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str) #13
          to label %invoke.cont8.i.i unwind label %lpad.i.i

invoke.cont8.i.i:                                 ; preds = %if.then7.i.i
  unreachable

if.else9.i.i:                                     ; preds = %if.else.i.i
  %cmp.i25.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i25.i.i, label %if.then.i26.i.i, label %invoke.cont16

if.then.i26.i.i:                                  ; preds = %if.else9.i.i
  store i32 %25, ptr %call.i.i.i, align 4, !tbaa !31
  br label %invoke.cont16

invoke.cont16:                                    ; preds = %if.then.i26.i.i, %if.else9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__endptr.i.i) #12
  %conv18 = trunc i64 %call.i.i to i8
  %call20 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %tokenizer, ptr noundef nonnull align 8 dereferenceable(32) %token, i8 noundef signext 59)
          to label %invoke.cont19 unwind label %lpad9

invoke.cont19:                                    ; preds = %invoke.cont16
  %32 = load ptr, ptr %token, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__endptr.i.i58) #12
  %33 = load i32, ptr %call.i.i.i, align 4, !tbaa !31
  store i32 0, ptr %call.i.i.i, align 4, !tbaa !31
  %call.i.i60 = call noundef i64 @strtol(ptr noundef %32, ptr noundef nonnull %__endptr.i.i58, i32 noundef 10)
  %34 = load ptr, ptr %__endptr.i.i58, align 8, !tbaa !32
  %cmp.i.i61 = icmp eq ptr %34, %32
  br i1 %cmp.i.i61, label %if.then.i.i62, label %if.else.i.i70

if.then.i.i62:                                    ; preds = %invoke.cont19
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str) #13
          to label %invoke.cont1.i.i63 unwind label %lpad.i.i65

invoke.cont1.i.i63:                               ; preds = %if.then.i.i62
  unreachable

lpad.i.i65:                                       ; preds = %if.then7.i.i71, %if.then.i.i62
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load i32, ptr %call.i.i.i, align 4, !tbaa !31
  %cmp.i.i.i64 = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i64, label %if.then.i.i.i66, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i67

if.then.i.i.i66:                                  ; preds = %lpad.i.i65
  store i32 %33, ptr %call.i.i.i, align 4, !tbaa !31
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i67

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i67: ; preds = %if.then.i.i.i66, %lpad.i.i65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__endptr.i.i58) #12
  br label %ehcleanup

if.else.i.i70:                                    ; preds = %invoke.cont19
  %37 = load i32, ptr %call.i.i.i, align 4, !tbaa !31
  %cmp3.i.i68 = icmp eq i32 %37, 34
  %38 = add i64 %call.i.i60, -2147483648
  %39 = icmp ult i64 %38, -4294967296
  %or.cond.i.i69 = or i1 %39, %cmp3.i.i68
  br i1 %or.cond.i.i69, label %if.then7.i.i71, label %if.else9.i.i73

if.then7.i.i71:                                   ; preds = %if.else.i.i70
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str) #13
          to label %invoke.cont8.i.i72 unwind label %lpad.i.i65

invoke.cont8.i.i72:                               ; preds = %if.then7.i.i71
  unreachable

if.else9.i.i73:                                   ; preds = %if.else.i.i70
  %cmp.i25.i.i74 = icmp eq i32 %37, 0
  br i1 %cmp.i25.i.i74, label %if.then.i26.i.i75, label %invoke.cont21

if.then.i26.i.i75:                                ; preds = %if.else9.i.i73
  store i32 %33, ptr %call.i.i.i, align 4, !tbaa !31
  br label %invoke.cont21

invoke.cont21:                                    ; preds = %if.then.i26.i.i75, %if.else9.i.i73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__endptr.i.i58) #12
  %conv23 = trunc i64 %call.i.i60 to i8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ref.tmp) #12
  store ptr %4, ptr %ref.tmp, align 8, !tbaa !5
  %40 = load ptr, ptr %exp, align 8, !tbaa !28
  %41 = load i64, ptr %_M_string_length.i.i.i50, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__dnew.i.i.i.i.i) #12
  store i64 %41, ptr %__dnew.i.i.i.i.i, align 8, !tbaa !33
  %cmp3.i.i.i.i.i = icmp ugt i64 %41, 15
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %if.end6.i.i.i.i.i

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont21
  %call5.i.i.i12.i.i81 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i.i, i64 noundef 0)
          to label %call5.i.i.i12.i.i.noexc unwind label %lpad24

call5.i.i.i12.i.i.noexc:                          ; preds = %if.then4.i.i.i.i.i
  store ptr %call5.i.i.i12.i.i81, ptr %ref.tmp, align 8, !tbaa !28
  %42 = load i64, ptr %__dnew.i.i.i.i.i, align 8, !tbaa !33
  store i64 %42, ptr %4, align 8, !tbaa !13
  br label %if.end6.i.i.i.i.i

if.end6.i.i.i.i.i:                                ; preds = %call5.i.i.i12.i.i.noexc, %invoke.cont21
  %43 = phi ptr [ %call5.i.i.i12.i.i81, %call5.i.i.i12.i.i.noexc ], [ %4, %invoke.cont21 ]
  switch i64 %41, label %if.end.i.i.i.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i.i.i.i
    i64 0, label %invoke.cont25
  ]

if.then.i.i.i.i.i.i.i:                            ; preds = %if.end6.i.i.i.i.i
  %44 = load i8, ptr %40, align 1, !tbaa !13
  store i8 %44, ptr %43, align 1, !tbaa !13
  br label %invoke.cont25

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end6.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 1 %40, i64 %41, i1 false) #12
  br label %invoke.cont25

invoke.cont25:                                    ; preds = %if.end.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i, %if.end6.i.i.i.i.i
  %45 = load i64, ptr %__dnew.i.i.i.i.i, align 8, !tbaa !33
  store i64 %45, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !10
  %46 = load ptr, ptr %ref.tmp, align 8, !tbaa !28
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %46, i64 %45
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__dnew.i.i.i.i.i) #12
  store i8 %conv18, ptr %literals3.i, align 8, !tbaa !34
  store i8 %conv23, ptr %levels4.i, align 1, !tbaa !36
  %47 = load ptr, ptr %arrayidx, align 8, !tbaa !32
  %arrayidx27 = getelementptr inbounds %"struct.lookuptables::lookupTableElement", ptr %47, i64 %indvars.iv
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %arrayidx27, i64 0, i32 2
  %49 = load ptr, ptr %ref.tmp, align 8, !tbaa !28
  %cmp.i56.i.i = icmp eq ptr %49, %4
  br i1 %cmp.i56.i.i, label %if.then19.i.i, label %invoke.cont29.i.i

if.then19.i.i:                                    ; preds = %invoke.cont25
  %50 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !10
  %tobool.not.i.i = icmp eq i64 %50, 0
  br i1 %tobool.not.i.i, label %if.end26.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  %51 = load ptr, ptr %arrayidx27, align 8, !tbaa !28
  %cond.i.i = icmp eq i64 %50, 1
  br i1 %cond.i.i, label %if.then.i.i.i83, label %if.end.i.i.i.i

if.then.i.i.i83:                                  ; preds = %if.then21.i.i
  %52 = load i8, ptr %4, align 8, !tbaa !13
  store i8 %52, ptr %51, align 1, !tbaa !13
  br label %if.end26.i.i

if.end.i.i.i.i:                                   ; preds = %if.then21.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr nonnull align 8 %4, i64 %50, i1 false) #12
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end.i.i.i.i, %if.then.i.i.i83, %if.then19.i.i
  %53 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !10
  %_M_string_length.i.i59.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %arrayidx27, i64 0, i32 1
  store i64 %53, ptr %_M_string_length.i.i59.i.i, align 8, !tbaa !10
  %54 = load ptr, ptr %arrayidx27, align 8, !tbaa !28
  %arrayidx.i.i.i84 = getelementptr inbounds i8, ptr %54, i64 %53
  store i8 0, ptr %arrayidx.i.i.i84, align 1, !tbaa !13
  %.pre.i.i = load ptr, ptr %ref.tmp, align 8, !tbaa !28
  br label %_ZN12lookuptables18lookupTableElementaSEOS0_.exit

invoke.cont29.i.i:                                ; preds = %invoke.cont25
  %55 = load ptr, ptr %arrayidx27, align 8, !tbaa !28
  %cmp.i60.i.i = icmp eq ptr %55, %48
  br i1 %cmp.i60.i.i, label %if.end33.thread.i.i, label %if.end33.i.i

if.end33.thread.i.i:                              ; preds = %invoke.cont29.i.i
  store ptr %49, ptr %arrayidx27, align 8, !tbaa !28
  %56 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !10
  %_M_string_length.i6266.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %arrayidx27, i64 0, i32 1
  store i64 %56, ptr %_M_string_length.i6266.i.i, align 8, !tbaa !10
  %57 = load i64, ptr %4, align 8, !tbaa !13
  store i64 %57, ptr %48, align 8, !tbaa !13
  br label %if.else38.i.i

if.end33.i.i:                                     ; preds = %invoke.cont29.i.i
  %58 = load i64, ptr %48, align 8, !tbaa !13
  store ptr %49, ptr %arrayidx27, align 8, !tbaa !28
  %59 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !10
  %_M_string_length.i62.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %arrayidx27, i64 0, i32 1
  store i64 %59, ptr %_M_string_length.i62.i.i, align 8, !tbaa !10
  %60 = load i64, ptr %4, align 8, !tbaa !13
  store i64 %60, ptr %48, align 8, !tbaa !13
  %tobool36.not.i.i = icmp eq ptr %55, null
  br i1 %tobool36.not.i.i, label %if.else38.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end33.i.i
  store ptr %55, ptr %ref.tmp, align 8, !tbaa !28
  store i64 %58, ptr %4, align 8, !tbaa !13
  br label %_ZN12lookuptables18lookupTableElementaSEOS0_.exit

if.else38.i.i:                                    ; preds = %if.end33.i.i, %if.end33.thread.i.i
  store ptr %4, ptr %ref.tmp, align 8, !tbaa !28
  br label %_ZN12lookuptables18lookupTableElementaSEOS0_.exit

_ZN12lookuptables18lookupTableElementaSEOS0_.exit: ; preds = %if.end26.i.i, %if.then37.i.i, %if.else38.i.i
  %61 = phi ptr [ %.pre.i.i, %if.end26.i.i ], [ %55, %if.then37.i.i ], [ %4, %if.else38.i.i ]
  store i64 0, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !10
  store i8 0, ptr %61, align 1, !tbaa !13
  %literals.i = getelementptr inbounds %"struct.lookuptables::lookupTableElement", ptr %47, i64 %indvars.iv, i32 1
  %62 = load i16, ptr %literals3.i, align 8
  store i16 %62, ptr %literals.i, align 8
  %63 = load ptr, ptr %ref.tmp, align 8, !tbaa !28
  %cmp.i.i.i.i = icmp eq ptr %63, %4
  br i1 %cmp.i.i.i.i, label %_ZN12lookuptables18lookupTableElementD2Ev.exit, label %if.then.i.i.i86

if.then.i.i.i86:                                  ; preds = %_ZN12lookuptables18lookupTableElementaSEOS0_.exit
  call void @_ZdlPv(ptr noundef %63) #12
  br label %_ZN12lookuptables18lookupTableElementD2Ev.exit

_ZN12lookuptables18lookupTableElementD2Ev.exit:   ; preds = %_ZN12lookuptables18lookupTableElementaSEOS0_.exit, %if.then.i.i.i86
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ref.tmp) #12
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  store ptr %5, ptr %tokenizer, align 8, !tbaa !14
  %vbase.offset.i.i = load i64, ptr %vbase.offset.ptr.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %tokenizer, i64 %vbase.offset.i.i
  store ptr %6, ptr %add.ptr.i.i, align 8, !tbaa !14
  store ptr %7, ptr %add.ptr8, align 8, !tbaa !14
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i.i, align 8, !tbaa !14
  %64 = load ptr, ptr %_M_string.i.i.i, align 8, !tbaa !28
  %cmp.i.i.i.i.i.i = icmp eq ptr %64, %8
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZN12lookuptables18lookupTableElementD2Ev.exit
  call void @_ZdlPv(ptr noundef %64) #12
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN12lookuptables18lookupTableElementD2Ev.exit, %if.then.i.i.i.i.i
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i.i, align 8, !tbaa !14
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #12
  store ptr %9, ptr %tokenizer, align 8, !tbaa !14
  %vbase.offset.i.i.i.i = load i64, ptr %vbase.offset.ptr.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %tokenizer, i64 %vbase.offset.i.i.i.i
  store ptr %10, ptr %add.ptr.i.i.i.i, align 8, !tbaa !14
  store i64 0, ptr %_M_gcount.i.i.i.i, align 8, !tbaa !37
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %11) #12
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %tokenizer) #12
  %vtable.i = load ptr, ptr %file, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %file, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds %"class.std::basic_ios", ptr %add.ptr.i, i64 0, i32 5
  %65 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !llvm.loop !29

lpad6:                                            ; preds = %if.end
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup30

lpad9:                                            ; preds = %invoke.cont7, %invoke.cont16, %invoke.cont12, %invoke.cont10
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad24:                                           ; preds = %if.then4.i.i.i.i.i
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ref.tmp) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i67, %lpad9, %lpad24
  %.pn = phi { ptr, i32 } [ %68, %lpad24 ], [ %27, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ], [ %67, %lpad9 ], [ %35, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i67 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %tokenizer) #12
  br label %ehcleanup30

ehcleanup30:                                      ; preds = %ehcleanup, %lpad6
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %66, %lpad6 ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %tokenizer) #12
  br label %ehcleanup31

while.end:                                        ; preds = %invoke.cont2
  %69 = load ptr, ptr %exp, align 8, !tbaa !28
  %cmp.i.i.i87 = icmp eq ptr %69, %2
  br i1 %cmp.i.i.i87, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i88

if.then.i.i88:                                    ; preds = %while.end
  call void @_ZdlPv(ptr noundef %69) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %while.end, %if.then.i.i88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %exp) #12
  %70 = load ptr, ptr %token, align 8, !tbaa !28
  %cmp.i.i.i89 = icmp eq ptr %70, %1
  br i1 %cmp.i.i.i89, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %if.then.i.i90

if.then.i.i90:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %70) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %if.then.i.i90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %token) #12
  %71 = load ptr, ptr %line, align 8, !tbaa !28
  %cmp.i.i.i92 = icmp eq ptr %71, %0
  br i1 %cmp.i.i.i92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %if.then.i.i93

if.then.i.i93:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  call void @_ZdlPv(ptr noundef %71) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %if.then.i.i93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %line) #12
  %72 = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8
  store ptr %72, ptr %file, align 8, !tbaa !14
  %73 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 3), align 8
  %vbase.offset.ptr.i.i95 = getelementptr i8, ptr %72, i64 -24
  %vbase.offset.i.i96 = load i64, ptr %vbase.offset.ptr.i.i95, align 8
  %add.ptr.i.i97 = getelementptr inbounds i8, ptr %file, i64 %vbase.offset.i.i96
  store ptr %73, ptr %add.ptr.i.i97, align 8, !tbaa !14
  %_M_filebuf.i.i = getelementptr inbounds %"class.std::basic_ifstream", ptr %file, i64 0, i32 1
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %_M_filebuf.i.i) #12
  %74 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  store ptr %74, ptr %file, align 8, !tbaa !14
  %75 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %vbase.offset.ptr.i.i.i = getelementptr i8, ptr %74, i64 -24
  %vbase.offset.i.i.i = load i64, ptr %vbase.offset.ptr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %file, i64 %vbase.offset.i.i.i
  store ptr %75, ptr %add.ptr.i.i.i, align 8, !tbaa !14
  %_M_gcount.i.i.i = getelementptr inbounds %"class.std::basic_istream", ptr %file, i64 0, i32 1
  store i64 0, ptr %_M_gcount.i.i.i, align 8, !tbaa !37
  %76 = getelementptr inbounds i8, ptr %file, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %76) #12
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %file) #12
  ret void

ehcleanup31:                                      ; preds = %lpad.loopexit, %lpad.loopexit.split-lp, %ehcleanup30
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %ehcleanup30 ], [ %lpad.loopexit107, %lpad.loopexit ], [ %lpad.loopexit.split-lp108, %lpad.loopexit.split-lp ]
  %77 = load ptr, ptr %exp, align 8, !tbaa !28
  %cmp.i.i.i98 = icmp eq ptr %77, %2
  br i1 %cmp.i.i.i98, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %if.then.i.i99

if.then.i.i99:                                    ; preds = %ehcleanup31
  call void @_ZdlPv(ptr noundef %77) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %ehcleanup31, %if.then.i.i99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %exp) #12
  %78 = load ptr, ptr %token, align 8, !tbaa !28
  %cmp.i.i.i101 = icmp eq ptr %78, %1
  br i1 %cmp.i.i.i101, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %if.then.i.i102

if.then.i.i102:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  call void @_ZdlPv(ptr noundef %78) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %if.then.i.i102
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %token) #12
  %79 = load ptr, ptr %line, align 8, !tbaa !28
  %cmp.i.i.i104 = icmp eq ptr %79, %0
  br i1 %cmp.i.i.i104, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %if.then.i.i105

if.then.i.i105:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  call void @_ZdlPv(ptr noundef %79) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %if.then.i.i105
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %line) #12
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %file) #12
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %file) #12
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #6 align 2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LookupTableParser.cpp() #4 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #12
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !9, i64 0}
!16 = !{!17, !7, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 216, !8, i64 224, !18, i64 225, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256}
!18 = !{!"bool", !8, i64 0}
!19 = !{!20, !8, i64 56}
!20 = !{!"_ZTSSt5ctypeIcE", !7, i64 16, !18, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!21 = !{!22, !24, i64 32}
!22 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !7, i64 40, !25, i64 48, !8, i64 64, !26, i64 192, !7, i64 200, !27, i64 208}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !12, i64 8}
!26 = !{!"int", !8, i64 0}
!27 = !{!"_ZTSSt6locale", !7, i64 0}
!28 = !{!11, !7, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!26, !26, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{!35, !8, i64 32}
!35 = !{!"_ZTSN12lookuptables18lookupTableElementE", !11, i64 0, !8, i64 32, !8, i64 33}
!36 = !{!35, !8, i64 33}
!37 = !{!38, !12, i64 8}
!38 = !{!"_ZTSSi", !12, i64 8}
