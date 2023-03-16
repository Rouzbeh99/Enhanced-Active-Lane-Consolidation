; ModuleID = 'PriorityCutPool.cpp'
source_filename = "PriorityCutPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.algorithm::PriCutPool" = type { i64, i32, i32, i64, i64, ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.algorithm::priCut_" = type { float, float, float, float, i32, i16, ptr, [0 x i32] }

$_ZN9algorithm10PriCutPool5allocEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [29 x i8] c"this->entriesFree == nullptr\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PriorityCutPool.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN9algorithm10PriCutPool9getMemoryEv = private unnamed_addr constant [54 x i8] c"algorithm::PriCut *algorithm::PriCutPool::getMemory()\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Error: memory could not be allocated by CutPool!\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_PriorityCutPool.cpp, ptr null }]

@_ZN9algorithm10PriCutPoolC1Elib = dso_local unnamed_addr alias void (ptr, i64, i32, i1), ptr @_ZN9algorithm10PriCutPoolC2Elib
@_ZN9algorithm10PriCutPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9algorithm10PriCutPoolD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @_ZN9algorithm10PriCutPoolC2Elib(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %this, i64 noundef %initialSize, i32 noundef %k, i1 noundef zeroext %compTruth) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %blocks = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %blocks, i8 0, i64 24, i1 false) #20
  store i64 %initialSize, ptr %this, align 8, !tbaa !5
  %k2 = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 1
  store i32 %k, ptr %k2, align 8, !tbaa !13
  %mul = shl i32 %k, 2
  %add = add i32 %mul, 32
  br i1 %compTruth, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp.i = icmp slt i32 %k, 6
  br i1 %cmp.i, label %_ZN12Functional327wordNumEi.exit, label %cond.false.i

cond.false.i:                                     ; preds = %if.then
  %sub.i = add nsw i32 %k, -5
  %phi.bo = shl i32 4, %sub.i
  br label %_ZN12Functional327wordNumEi.exit

_ZN12Functional327wordNumEi.exit:                 ; preds = %if.then, %cond.false.i
  %cond.i = phi i32 [ %phi.bo, %cond.false.i ], [ 4, %if.then ]
  %add5 = add i32 %add, %cond.i
  br label %if.end

if.end:                                           ; preds = %entry, %_ZN12Functional327wordNumEi.exit
  %add.sink = phi i32 [ %add5, %_ZN12Functional327wordNumEi.exit ], [ %add, %entry ]
  %entrySize11 = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 2
  store i32 %add.sink, ptr %entrySize11, align 4, !tbaa !14
  %entriesUsed = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %entriesUsed, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define dso_local void @_ZN9algorithm10PriCutPoolD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %blocks = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %blocks, align 8, !tbaa !15
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data", ptr %blocks, i64 0, i32 1
  %1 = load ptr, ptr %_M_finish.i, align 8, !tbaa !15
  %cmp.i.not11 = icmp eq ptr %0, %1
  br i1 %cmp.i.not11, label %for.cond.cleanup, label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.body
  %.pre = load ptr, ptr %blocks, align 8, !tbaa !16
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %2 = phi ptr [ %.pre, %for.cond.cleanup.loopexit ], [ %0, %entry ]
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #20
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %for.cond.cleanup, %if.then.i.i.i
  ret void

for.body:                                         ; preds = %entry, %for.body
  %__begin1.sroa.0.012 = phi ptr [ %incdec.ptr.i, %for.body ], [ %0, %entry ]
  %3 = load ptr, ptr %__begin1.sroa.0.012, align 8, !tbaa !15
  tail call void @free(ptr noundef %3) #20
  %incdec.ptr.i = getelementptr inbounds ptr, ptr %__begin1.sroa.0.012, i64 1
  %cmp.i.not = icmp eq ptr %incdec.ptr.i, %1
  br i1 %cmp.i.not, label %for.cond.cleanup.loopexit, label %for.body
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN9algorithm10PriCutPool9getMemoryEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #6 align 2 {
entry:
  %entriesUsed = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %entriesUsed, align 8, !tbaa !18
  %entriesAlloc = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 4
  %1 = load i64, ptr %entriesAlloc, align 8, !tbaa !19
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %entriesFree = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 5
  %2 = load ptr, ptr %entriesFree, align 8, !tbaa !20
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 85, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9algorithm10PriCutPool9getMemoryEv) #21
  unreachable

cond.end:                                         ; preds = %if.then
  tail call void @_ZN9algorithm10PriCutPool5allocEv(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %.pre = load i64, ptr %entriesUsed, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %3 = phi i64 [ %.pre, %cond.end ], [ %0, %entry ]
  %inc = add nsw i64 %3, 1
  store i64 %inc, ptr %entriesUsed, align 8, !tbaa !18
  %entriesFree4 = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 5
  %4 = load ptr, ptr %entriesFree4, align 8, !tbaa !20
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  store ptr %5, ptr %entriesFree4, align 8, !tbaa !20
  %entrySize = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 2
  %6 = load i32, ptr %entrySize, align 4, !tbaa !14
  %conv = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %conv, i1 false)
  %nextCut = getelementptr inbounds %"struct.algorithm::priCut_", ptr %4, i64 0, i32 6
  store ptr null, ptr %nextCut, align 8, !tbaa !21
  ret ptr %4
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN9algorithm10PriCutPool5allocEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %entrySize = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 2
  %0 = load i32, ptr %entrySize, align 4, !tbaa !14
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %this, align 8, !tbaa !5
  %mul = mul nsw i64 %1, %conv
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #22
  %entriesFree = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 5
  store ptr %call, ptr %entriesFree, align 8, !tbaa !20
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp819 = icmp sgt i64 %1, 1
  br i1 %cmp819, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %2 = add i64 %1, -1
  %3 = add i64 %1, -2
  %xtraiter = and i64 %2, 7
  %4 = icmp ult i64 %3, 7
  br i1 %4, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %2, -8
  br label %for.body

if.then:                                          ; preds = %entry
  %call3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2)
  %call.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call3)
  tail call void @exit(i32 noundef 1) #21
  unreachable

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %add.ptr.lcssa.ph = phi ptr [ undef, %for.body.preheader ], [ %add.ptr.7, %for.body ]
  %pTemp.020.unr = phi ptr [ %call, %for.body.preheader ], [ %add.ptr.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %pTemp.020.epil = phi ptr [ %add.ptr.epil, %for.body.epil ], [ %pTemp.020.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond.cleanup.loopexit.unr-lcssa ]
  %add.ptr.epil = getelementptr inbounds i8, ptr %pTemp.020.epil, i64 %conv
  store ptr %add.ptr.epil, ptr %pTemp.020.epil, align 8, !tbaa !15
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !25

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil, %for.cond.preheader
  %pTemp.0.lcssa = phi ptr [ %call, %for.cond.preheader ], [ %add.ptr.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %add.ptr.epil, %for.body.epil ]
  store ptr null, ptr %pTemp.0.lcssa, align 8, !tbaa !15
  %entriesAlloc = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 4
  %5 = load i64, ptr %entriesAlloc, align 8, !tbaa !19
  %add = add nsw i64 %5, %1
  store i64 %add, ptr %entriesAlloc, align 8, !tbaa !19
  %blocks = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 6
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data", ptr %blocks, i64 0, i32 1
  %6 = load ptr, ptr %_M_finish.i, align 8, !tbaa !27
  %_M_end_of_storage.i = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data", ptr %blocks, i64 0, i32 2
  %7 = load ptr, ptr %_M_end_of_storage.i, align 8, !tbaa !28
  %cmp.not.i = icmp eq ptr %6, %7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond.cleanup
  store ptr %call, ptr %6, align 8, !tbaa !15
  %8 = load ptr, ptr %_M_finish.i, align 8, !tbaa !27
  %incdec.ptr.i = getelementptr inbounds ptr, ptr %8, i64 1
  store ptr %incdec.ptr.i, ptr %_M_finish.i, align 8, !tbaa !27
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

if.else.i:                                        ; preds = %for.cond.cleanup
  %9 = load ptr, ptr %blocks, align 8, !tbaa !16
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %9 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %cmp.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 9223372036854775800
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %if.else.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %10 = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i.i.i.i, i64 1)
  %add.i.i.i = add i64 %10, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 1152921504606846975
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m.exit.i.i.i

_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %mul.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i.i, 3
  %call2.i.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i) #24
  %.pre = load ptr, ptr %entriesFree, align 8, !tbaa !15
  br label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m.exit.i.i.i, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %11 = phi ptr [ %.pre, %_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m.exit.i.i.i ], [ %call, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %cond.i.i.i = phi ptr [ %call2.i.i.i.i.i, %_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m.exit.i.i.i ], [ null, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %add.ptr.i.i = getelementptr inbounds ptr, ptr %cond.i.i.i, i64 %sub.ptr.div.i.i.i.i
  store ptr %11, ptr %add.ptr.i.i, align 8, !tbaa !15
  %cmp.i.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i

if.then.i.i.i.i.i.i:                              ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %cond.i.i.i, ptr align 8 %9, i64 %sub.ptr.sub.i.i.i.i, i1 false) #20
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i: ; preds = %if.then.i.i.i.i.i.i, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %incdec.ptr.i.i = getelementptr inbounds ptr, ptr %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %if.then.i39.i.i

if.then.i39.i.i:                                  ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %9) #20
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %if.then.i39.i.i, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i
  store ptr %cond.i.i.i, ptr %blocks, align 8, !tbaa !16
  store ptr %incdec.ptr.i.i, ptr %_M_finish.i, align 8, !tbaa !27
  %add.ptr19.i.i = getelementptr inbounds ptr, ptr %cond.i.i.i, i64 %spec.select.i.i.i
  store ptr %add.ptr19.i.i, ptr %_M_end_of_storage.i, align 8, !tbaa !28
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %if.then.i, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %pTemp.020 = phi ptr [ %call, %for.body.preheader.new ], [ %add.ptr.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.7, %for.body ]
  %add.ptr = getelementptr inbounds i8, ptr %pTemp.020, i64 %conv
  store ptr %add.ptr, ptr %pTemp.020, align 8, !tbaa !15
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %conv
  store ptr %add.ptr.1, ptr %add.ptr, align 8, !tbaa !15
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %conv
  store ptr %add.ptr.2, ptr %add.ptr.1, align 8, !tbaa !15
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %conv
  store ptr %add.ptr.3, ptr %add.ptr.2, align 8, !tbaa !15
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %conv
  store ptr %add.ptr.4, ptr %add.ptr.3, align 8, !tbaa !15
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %conv
  store ptr %add.ptr.5, ptr %add.ptr.4, align 8, !tbaa !15
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %conv
  store ptr %add.ptr.6, ptr %add.ptr.5, align 8, !tbaa !15
  %add.ptr.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %conv
  store ptr %add.ptr.7, ptr %add.ptr.6, align 8, !tbaa !15
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body, !llvm.loop !29
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_ZN9algorithm10PriCutPool14giveBackMemoryEPNS_7priCut_E(ptr nocapture noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %cut) local_unnamed_addr #10 align 2 {
entry:
  %entriesUsed = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %entriesUsed, align 8, !tbaa !18
  %dec = add nsw i64 %0, -1
  store i64 %dec, ptr %entriesUsed, align 8, !tbaa !18
  %entriesFree = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 5
  %1 = load ptr, ptr %entriesFree, align 8, !tbaa !20
  store ptr %1, ptr %cut, align 8, !tbaa !15
  store ptr %cut, ptr %entriesFree, align 8, !tbaa !20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef i32 @_ZN9algorithm10PriCutPool12getNumBlocksEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #11 align 2 {
entry:
  %blocks = getelementptr inbounds %"class.algorithm::PriCutPool", ptr %this, i64 0, i32 6
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data", ptr %blocks, i64 0, i32 1
  %0 = load ptr, ptr %_M_finish.i, align 8, !tbaa !27
  %1 = load ptr, ptr %blocks, align 8, !tbaa !16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %2 = lshr exact i64 %sub.ptr.sub.i, 3
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef i32 @_ZN9algorithm10PriCutPool12getBlockSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #11 align 2 {
entry:
  %0 = load i64, ptr %this, align 8, !tbaa !5
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PriorityCutPool.cpp() #18 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #17 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSN9algorithm10PriCutPoolE", !7, i64 0, !10, i64 8, !10, i64 12, !7, i64 16, !7, i64 24, !11, i64 32, !12, i64 40}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_ZTSSt6vectorIPcSaIS0_EE"}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !10, i64 12}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !11, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!18 = !{!6, !7, i64 16}
!19 = !{!6, !7, i64 24}
!20 = !{!6, !11, i64 32}
!21 = !{!22, !11, i64 24}
!22 = !{!"_ZTSN9algorithm7priCut_E", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !10, i64 16, !24, i64 20, !11, i64 24, !8, i64 32}
!23 = !{!"float", !8, i64 0}
!24 = !{!"short", !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!17, !11, i64 8}
!28 = !{!17, !11, i64 16}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
