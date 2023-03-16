; ModuleID = 'semantic_error.cpp'
source_filename = "semantic_error.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.semantic_error = type { %"class.std::exception", i32, i32, %"class.std::__cxx11::basic_string" }
%"class.std::exception" = type { ptr }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZTV14semantic_error = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI14semantic_error, ptr @_ZN14semantic_errorD2Ev, ptr @_ZN14semantic_errorD0Ev, ptr @_ZNK14semantic_error4whatEv] }, align 8
@.str = private unnamed_addr constant [24 x i8] c"Semantic error in line-\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" char-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS14semantic_error = dso_local constant [17 x i8] c"14semantic_error\00", align 1
@_ZTISt9exception = external constant ptr
@_ZTI14semantic_error = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14semantic_error, ptr @_ZTISt9exception }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN14semantic_errorC1EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN14semantic_errorC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN14semantic_errorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14semantic_errorD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN14semantic_errorC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %this, i32 noundef %l, i32 noundef %c, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ret = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV14semantic_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %full_msg = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3
  %0 = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3, i32 2
  store ptr %0, ptr %full_msg, align 8, !tbaa !8
  %_M_string_length.i.i.i = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3, i32 1
  store i64 0, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  store i8 0, ptr %0, align 8, !tbaa !15
  %l2 = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 1
  store i32 %l, ptr %l2, align 8, !tbaa !16
  %c3 = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 2
  store i32 %c, ptr %c3, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %ret) #10
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %ret)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %ret, i64 16
  %call1.i30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr, ptr noundef nonnull @.str, i64 noundef 23)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %conv.i = zext i32 %l to i64
  %call.i31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr, i64 noundef %conv.i)
          to label %invoke.cont6 unwind label %lpad4

invoke.cont6:                                     ; preds = %invoke.cont5
  %call1.i33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i31, ptr noundef nonnull @.str.1, i64 noundef 6)
          to label %invoke.cont8 unwind label %lpad4

invoke.cont8:                                     ; preds = %invoke.cont6
  %conv.i35 = zext i32 %c to i64
  %call.i36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %call.i31, i64 noundef %conv.i35)
          to label %invoke.cont10 unwind label %lpad4

invoke.cont10:                                    ; preds = %invoke.cont8
  %call1.i39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i36, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %invoke.cont12 unwind label %lpad4

invoke.cont12:                                    ; preds = %invoke.cont10
  %1 = load ptr, ptr %msg, align 8, !tbaa !20
  %_M_string_length.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %msg, i64 0, i32 1
  %2 = load i64, ptr %_M_string_length.i.i, align 8, !tbaa !12
  %call2.i41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i36, ptr noundef %1, i64 noundef %2)
          to label %invoke.cont14 unwind label %lpad4

invoke.cont14:                                    ; preds = %invoke.cont12
  %vtable.i = load ptr, ptr %call2.i41, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call2.i41, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds %"class.std::basic_ios", ptr %add.ptr.i, i64 0, i32 5
  %3 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !21
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %invoke.cont14
  invoke void @_ZSt16__throw_bad_castv() #11
          to label %.noexc unwind label %lpad4

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %invoke.cont14
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", ptr %3, i64 0, i32 8
  %4 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !24
  %tobool.not.i3.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i49, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", ptr %3, i64 0, i32 9, i64 10
  %5 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

if.end.i.i.i49:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %3)
          to label %.noexc51 unwind label %lpad4

.noexc51:                                         ; preds = %if.end.i.i.i49
  %vtable.i.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds ptr, ptr %vtable.i.i.i, i64 6
  %6 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i52 = invoke noundef signext i8 %6(ptr noundef nonnull align 8 dereferenceable(570) %3, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %lpad4

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc51, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %5, %if.then.i4.i.i ], [ %call.i.i.i52, %.noexc51 ]
  %call1.i53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call2.i41, i8 noundef signext %retval.0.i.i.i)
          to label %call1.i.noexc unwind label %lpad4

call1.i.noexc:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %call.i.i5054 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i53)
          to label %invoke.cont16 unwind label %lpad4

invoke.cont16:                                    ; preds = %call1.i.noexc
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ret, i64 0, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp, i64 0, i32 2
  store ptr %7, ptr %ref.tmp, align 8, !tbaa !8, !alias.scope !32
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %ref.tmp, i64 0, i32 1
  store i64 0, ptr %_M_string_length.i.i.i.i.i, align 8, !tbaa !12, !alias.scope !32
  store i8 0, ptr %7, align 8, !tbaa !15, !alias.scope !32
  %_M_out_cur.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i, i64 0, i32 5
  %8 = load ptr, ptr %_M_out_cur.i.i.i, align 8, !tbaa !33, !noalias !32
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.else19.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont16
  %_M_in_end.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i, i64 0, i32 3
  %9 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !36, !noalias !32
  %cmp.i.i = icmp ugt ptr %8, %9
  %_M_out_beg.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i, i64 0, i32 4
  %10 = load ptr, ptr %_M_out_beg.i.i.i, align 8, !tbaa !37, !noalias !32
  %..i.i = select i1 %cmp.i.i, ptr %8, ptr %9
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %..i.i to i64
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %10 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %11 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp, i64 noundef 0, i64 noundef 0, ptr noundef %10, i64 noundef %sub.ptr.sub.i.i.i.i)
          to label %invoke.cont19 unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %if.else19.i.i, %if.then.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = load ptr, ptr %ref.tmp, align 8, !tbaa !20, !alias.scope !32
  %cmp.i.i.i.i.i = icmp eq ptr %13, %7
  br i1 %cmp.i.i.i.i.i, label %lpad18.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i.i
  call void @_ZdlPv(ptr noundef %13) #10
  br label %lpad18.body

if.else19.i.i:                                    ; preds = %invoke.cont16
  %_M_string.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ret, i64 0, i32 1, i32 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(32) %_M_string.i.i)
          to label %invoke.cont19 unwind label %lpad.i.i

invoke.cont19:                                    ; preds = %if.else19.i.i, %if.then.i.i
  %14 = load ptr, ptr %ref.tmp, align 8, !tbaa !20
  %cmp.i58.i = icmp eq ptr %14, %7
  br i1 %cmp.i58.i, label %if.then16.i, label %invoke.cont26.i

if.then16.i:                                      ; preds = %invoke.cont19
  %15 = load i64, ptr %_M_string_length.i.i.i.i.i, align 8, !tbaa !12
  %tobool.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.end23.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then16.i
  %16 = load ptr, ptr %full_msg, align 8, !tbaa !20
  %cond.i = icmp eq i64 %15, 1
  br i1 %cond.i, label %if.then.i.i44, label %if.end.i.i.i

if.then.i.i44:                                    ; preds = %if.then18.i
  %17 = load i8, ptr %7, align 8, !tbaa !15
  store i8 %17, ptr %16, align 1, !tbaa !15
  br label %if.end23.i

if.end.i.i.i:                                     ; preds = %if.then18.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr nonnull align 8 %7, i64 %15, i1 false) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i44, %if.then16.i
  %18 = load i64, ptr %_M_string_length.i.i.i.i.i, align 8, !tbaa !12
  store i64 %18, ptr %_M_string_length.i.i.i, align 8, !tbaa !12
  %19 = load ptr, ptr %full_msg, align 8, !tbaa !20
  %arrayidx.i.i = getelementptr inbounds i8, ptr %19, i64 %18
  store i8 0, ptr %arrayidx.i.i, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %ref.tmp, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

invoke.cont26.i:                                  ; preds = %invoke.cont19
  %20 = load ptr, ptr %full_msg, align 8, !tbaa !20
  %cmp.i62.i = icmp eq ptr %20, %0
  br i1 %cmp.i62.i, label %if.end30.thread.i, label %if.end30.i

if.end30.thread.i:                                ; preds = %invoke.cont26.i
  store ptr %14, ptr %full_msg, align 8, !tbaa !20
  %21 = load <2 x i64>, ptr %_M_string_length.i.i.i.i.i, align 8, !tbaa !15
  store <2 x i64> %21, ptr %_M_string_length.i.i.i, align 8, !tbaa !15
  br label %if.else39.i

if.end30.i:                                       ; preds = %invoke.cont26.i
  %22 = load i64, ptr %0, align 8, !tbaa !15
  store ptr %14, ptr %full_msg, align 8, !tbaa !20
  %23 = load <2 x i64>, ptr %_M_string_length.i.i.i.i.i, align 8, !tbaa !15
  store <2 x i64> %23, ptr %_M_string_length.i.i.i, align 8, !tbaa !15
  %tobool35.not.i = icmp eq ptr %20, null
  br i1 %tobool35.not.i, label %if.else39.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end30.i
  store ptr %20, ptr %ref.tmp, align 8, !tbaa !20
  store i64 %22, ptr %7, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

if.else39.i:                                      ; preds = %if.end30.i, %if.end30.thread.i
  store ptr %7, ptr %ref.tmp, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %if.end23.i, %if.then36.i, %if.else39.i
  %24 = phi ptr [ %.pre.i, %if.end23.i ], [ %20, %if.then36.i ], [ %7, %if.else39.i ]
  store i64 0, ptr %_M_string_length.i.i.i.i.i, align 8, !tbaa !12
  store i8 0, ptr %24, align 1, !tbaa !15
  %25 = load ptr, ptr %ref.tmp, align 8, !tbaa !20
  %cmp.i.i.i = icmp eq ptr %25, %7
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i45

if.then.i.i45:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %25) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %if.then.i.i45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp) #10
  %26 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %26, ptr %ret, align 8, !tbaa !5
  %27 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %26, i64 -24
  %vbase.offset.i.i = load i64, ptr %vbase.offset.ptr.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %ret, i64 %vbase.offset.i.i
  store ptr %27, ptr %add.ptr.i.i, align 8, !tbaa !5
  %28 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8
  store ptr %28, ptr %add.ptr, align 8, !tbaa !5
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i, align 8, !tbaa !5
  %_M_string.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ret, i64 0, i32 1, i32 2
  %29 = load ptr, ptr %_M_string.i.i.i, align 8, !tbaa !20
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %ret, i64 0, i32 1, i32 2, i32 2
  %cmp.i.i.i.i.i.i = icmp eq ptr %29, %30
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %29) #10
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %if.then.i.i.i.i.i
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %_M_stringbuf.i, align 8, !tbaa !5
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_streambuf", ptr %_M_stringbuf.i, i64 0, i32 7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #10
  %31 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8
  store ptr %31, ptr %ret, align 8, !tbaa !5
  %32 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %vbase.offset.ptr.i.i.i.i = getelementptr i8, ptr %31, i64 -24
  %vbase.offset.i.i.i.i = load i64, ptr %vbase.offset.ptr.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %ret, i64 %vbase.offset.i.i.i.i
  store ptr %32, ptr %add.ptr.i.i.i.i, align 8, !tbaa !5
  %_M_gcount.i.i.i.i = getelementptr inbounds %"class.std::basic_istream", ptr %ret, i64 0, i32 1
  store i64 0, ptr %_M_gcount.i.i.i.i, align 8, !tbaa !38
  %33 = getelementptr inbounds i8, ptr %ret, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %33) #10
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %ret) #10
  ret void

lpad:                                             ; preds = %entry
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup22

lpad4:                                            ; preds = %call1.i.noexc, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc51, %if.end.i.i.i49, %if.then.i.i.i, %invoke.cont12, %invoke.cont10, %invoke.cont8, %invoke.cont6, %invoke.cont5, %invoke.cont
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad18.body:                                      ; preds = %lpad.i.i, %if.then.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad18.body, %lpad4
  %.pn = phi { ptr, i32 } [ %12, %lpad18.body ], [ %35, %lpad4 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %ret) #10
  br label %ehcleanup22

ehcleanup22:                                      ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %34, %lpad ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %ret) #10
  %36 = load ptr, ptr %full_msg, align 8, !tbaa !20
  %cmp.i.i.i46 = icmp eq ptr %36, %0
  br i1 %cmp.i.i.i46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %if.then.i.i47

if.then.i.i47:                                    ; preds = %ehcleanup22
  call void @_ZdlPv(ptr noundef %36) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %ehcleanup22, %if.then.i.i47
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #10
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef ptr @_ZNK14semantic_error4whatEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %full_msg = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %full_msg, align 8, !tbaa !20
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN14semantic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV14semantic_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %full_msg = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %full_msg, align 8, !tbaa !20
  %1 = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3, i32 2
  %cmp.i.i.i = icmp eq ptr %0, %1
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(ptr noundef %0) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %entry, %if.then.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN14semantic_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV14semantic_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %full_msg.i = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %full_msg.i, align 8, !tbaa !20
  %1 = getelementptr inbounds %class.semantic_error, ptr %this, i64 0, i32 3, i32 2
  %cmp.i.i.i.i = icmp eq ptr %0, %1
  br i1 %cmp.i.i.i.i, label %_ZN14semantic_errorD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(ptr noundef %0) #10
  br label %_ZN14semantic_errorD2Ev.exit

_ZN14semantic_errorD2Ev.exit:                     ; preds = %entry, %if.then.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #10
  tail call void @_ZdlPv(ptr noundef nonnull %this) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

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
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTS14semantic_error", !18, i64 8, !18, i64 12, !13, i64 16}
!18 = !{!"int", !11, i64 0}
!19 = !{!17, !18, i64 12}
!20 = !{!13, !10, i64 0}
!21 = !{!22, !10, i64 240}
!22 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 216, !11, i64 224, !23, i64 225, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256}
!23 = !{!"bool", !11, i64 0}
!24 = !{!25, !11, i64 56}
!25 = !{!"_ZTSSt5ctypeIcE", !10, i64 16, !23, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: %agg.result"}
!28 = distinct !{!28, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: %agg.result"}
!31 = distinct !{!31, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!32 = !{!30, !27}
!33 = !{!34, !10, i64 40}
!34 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !35, i64 56}
!35 = !{!"_ZTSSt6locale", !10, i64 0}
!36 = !{!34, !10, i64 24}
!37 = !{!34, !10, i64 32}
!38 = !{!39, !14, i64 8}
!39 = !{!"_ZTSSi", !14, i64 8}
