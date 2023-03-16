; ModuleID = 'BitVectorPool.cpp'
source_filename = "BitVectorPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.Functional::BitVectorPool" = type { ptr, i32, i32, i32, ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN10Functional13BitVectorPoolE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN10Functional13BitVectorPoolE, ptr @_ZN10Functional13BitVectorPoolD2Ev, ptr @_ZN10Functional13BitVectorPoolD0Ev] }, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [55 x i8] c"Error: memory could not be allocated by BitVectorPool!\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN10Functional13BitVectorPoolE = dso_local constant [30 x i8] c"N10Functional13BitVectorPoolE\00", align 1
@_ZTIN10Functional13BitVectorPoolE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10Functional13BitVectorPoolE }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_BitVectorPool.cpp, ptr null }]

@_ZN10Functional13BitVectorPoolC1Eii = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN10Functional13BitVectorPoolC2Eii
@_ZN10Functional13BitVectorPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10Functional13BitVectorPoolD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN10Functional13BitVectorPoolC2Eii(ptr nocapture noundef nonnull align 8 dereferenceable(56) %this, i32 noundef %nElements, i32 noundef %nWords) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN10Functional13BitVectorPoolE, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %blocks = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %blocks, i8 0, i64 24, i1 false) #18
  %blockSize = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 1
  store i32 %nElements, ptr %blockSize, align 8, !tbaa !8
  %nWords2 = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 2
  store i32 %nWords, ptr %nWords2, align 4, !tbaa !14
  %index = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 3
  store i32 0, ptr %index, align 8, !tbaa !15
  %currentBlock = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 4
  store ptr null, ptr %currentBlock, align 8, !tbaa !16
  invoke void @_ZN10Functional13BitVectorPool5allocEv(ptr noundef nonnull align 8 dereferenceable(56) %this)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = load ptr, ptr %blocks, align 8, !tbaa !17
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIPPmSaIS1_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad
  tail call void @_ZdlPv(ptr noundef nonnull %1) #18
  br label %_ZNSt6vectorIPPmSaIS1_EED2Ev.exit

_ZNSt6vectorIPPmSaIS1_EED2Ev.exit:                ; preds = %lpad, %if.then.i.i.i
  resume { ptr, i32 } %0
}

; Function Attrs: uwtable
define dso_local void @_ZN10Functional13BitVectorPool5allocEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %this) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %blockSize = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %blockSize, align 8, !tbaa !8
  %nWords = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %nWords, align 4, !tbaa !14
  %mul = mul nsw i32 %1, %0
  %conv = sext i32 %mul to i64
  %mul2 = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul2) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call3)
  tail call void @exit(i32 noundef 1) #20
  unreachable

if.end:                                           ; preds = %entry
  %conv6 = sext i32 %0 to i64
  %mul7 = shl nsw i64 %conv6, 3
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul7) #19
  %currentBlock = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 4
  store ptr %call8, ptr %currentBlock, align 8, !tbaa !16
  %cmp10 = icmp eq ptr %call8, null
  br i1 %cmp10, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1627 = icmp sgt i32 %0, 0
  br i1 %cmp1627, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %2 = sext i32 %1 to i64
  store ptr %call, ptr %call8, align 8, !tbaa !19
  %exitcond.not35 = icmp eq i32 %0, 1
  br i1 %exitcond.not35, label %for.end, label %for.body.for.body_crit_edge.preheader, !llvm.loop !20

for.body.for.body_crit_edge.preheader:            ; preds = %for.body.preheader
  %wide.trip.count = zext i32 %0 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %3, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.end.loopexit.unr-lcssa, label %for.body.for.body_crit_edge.preheader.new

for.body.for.body_crit_edge.preheader.new:        ; preds = %for.body.for.body_crit_edge.preheader
  %unroll_iter = and i64 %3, -4
  br label %for.body.for.body_crit_edge

if.then11:                                        ; preds = %if.end
  %call12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call.i26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call12)
  tail call void @exit(i32 noundef 1) #20
  unreachable

for.body.for.body_crit_edge:                      ; preds = %for.body.for.body_crit_edge, %for.body.for.body_crit_edge.preheader.new
  %indvars.iv.next3137 = phi i64 [ 1, %for.body.for.body_crit_edge.preheader.new ], [ %indvars.iv.next31.3, %for.body.for.body_crit_edge ]
  %indvars.iv36 = phi i64 [ 0, %for.body.for.body_crit_edge.preheader.new ], [ %indvars.iv.next.3, %for.body.for.body_crit_edge ]
  %niter = phi i64 [ 0, %for.body.for.body_crit_edge.preheader.new ], [ %niter.next.3, %for.body.for.body_crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv36, %2
  %.pre = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds i64, ptr %call, i64 %indvars.iv.next
  %arrayidx19 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv.next3137
  store ptr %arrayidx, ptr %arrayidx19, align 8, !tbaa !19
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv.next3137, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %2
  %.pre.1 = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %arrayidx.1 = getelementptr inbounds i64, ptr %call, i64 %indvars.iv.next.1
  %arrayidx19.1 = getelementptr inbounds ptr, ptr %.pre.1, i64 %indvars.iv.next31
  store ptr %arrayidx.1, ptr %arrayidx19.1, align 8, !tbaa !19
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv.next3137, 2
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %2
  %.pre.2 = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %arrayidx.2 = getelementptr inbounds i64, ptr %call, i64 %indvars.iv.next.2
  %arrayidx19.2 = getelementptr inbounds ptr, ptr %.pre.2, i64 %indvars.iv.next31.1
  store ptr %arrayidx.2, ptr %arrayidx19.2, align 8, !tbaa !19
  %indvars.iv.next31.2 = add nuw nsw i64 %indvars.iv.next3137, 3
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %2
  %.pre.3 = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %arrayidx.3 = getelementptr inbounds i64, ptr %call, i64 %indvars.iv.next.3
  %arrayidx19.3 = getelementptr inbounds ptr, ptr %.pre.3, i64 %indvars.iv.next31.2
  store ptr %arrayidx.3, ptr %arrayidx19.3, align 8, !tbaa !19
  %indvars.iv.next31.3 = add nuw nsw i64 %indvars.iv.next3137, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body.for.body_crit_edge, !llvm.loop !20

for.end.loopexit.unr-lcssa:                       ; preds = %for.body.for.body_crit_edge, %for.body.for.body_crit_edge.preheader
  %indvars.iv.next3137.unr = phi i64 [ 1, %for.body.for.body_crit_edge.preheader ], [ %indvars.iv.next31.3, %for.body.for.body_crit_edge ]
  %indvars.iv36.unr = phi i64 [ 0, %for.body.for.body_crit_edge.preheader ], [ %indvars.iv.next.3, %for.body.for.body_crit_edge ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.for.body_crit_edge.epil

for.body.for.body_crit_edge.epil:                 ; preds = %for.end.loopexit.unr-lcssa, %for.body.for.body_crit_edge.epil
  %indvars.iv.next3137.epil = phi i64 [ %indvars.iv.next31.epil, %for.body.for.body_crit_edge.epil ], [ %indvars.iv.next3137.unr, %for.end.loopexit.unr-lcssa ]
  %indvars.iv36.epil = phi i64 [ %indvars.iv.next.epil, %for.body.for.body_crit_edge.epil ], [ %indvars.iv36.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.for.body_crit_edge.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %indvars.iv.next.epil = add nsw i64 %indvars.iv36.epil, %2
  %.pre.epil = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %arrayidx.epil = getelementptr inbounds i64, ptr %call, i64 %indvars.iv.next.epil
  %arrayidx19.epil = getelementptr inbounds ptr, ptr %.pre.epil, i64 %indvars.iv.next3137.epil
  store ptr %arrayidx.epil, ptr %arrayidx19.epil, align 8, !tbaa !19
  %indvars.iv.next31.epil = add nuw nsw i64 %indvars.iv.next3137.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.for.body_crit_edge.epil, !llvm.loop !22

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.for.body_crit_edge.epil, %for.body.preheader, %for.cond.preheader
  %blocks = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 5
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data", ptr %blocks, i64 0, i32 1
  %6 = load ptr, ptr %_M_finish.i, align 8, !tbaa !24
  %_M_end_of_storage.i = getelementptr inbounds %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data", ptr %blocks, i64 0, i32 2
  %7 = load ptr, ptr %_M_end_of_storage.i, align 8, !tbaa !25
  %cmp.not.i = icmp eq ptr %6, %7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  %8 = load ptr, ptr %currentBlock, align 8, !tbaa !19
  store ptr %8, ptr %6, align 8, !tbaa !19
  %9 = load ptr, ptr %_M_finish.i, align 8, !tbaa !24
  %incdec.ptr.i = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %incdec.ptr.i, ptr %_M_finish.i, align 8, !tbaa !24
  br label %_ZNSt6vectorIPPmSaIS1_EE9push_backERKS1_.exit

if.else.i:                                        ; preds = %for.end
  %10 = load ptr, ptr %blocks, align 8, !tbaa !17
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %10 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %cmp.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 9223372036854775800
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt6vectorIPPmSaIS1_EE12_M_check_lenEmPKc.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
  unreachable

_ZNKSt6vectorIPPmSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %if.else.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %11 = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i.i.i.i, i64 1)
  %add.i.i.i = add i64 %11, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 1152921504606846975
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %_ZNSt12_Vector_baseIPPmSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIPPmEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIPPmEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIPPmSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %mul.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i.i, 3
  %call2.i.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i) #22
  br label %_ZNSt12_Vector_baseIPPmSaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPPmSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIPPmEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIPPmSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %cond.i.i.i = phi ptr [ %call2.i.i.i.i.i, %_ZNSt16allocator_traitsISaIPPmEE8allocateERS2_m.exit.i.i.i ], [ null, %_ZNKSt6vectorIPPmSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %add.ptr.i.i = getelementptr inbounds ptr, ptr %cond.i.i.i, i64 %sub.ptr.div.i.i.i.i
  %12 = load ptr, ptr %currentBlock, align 8, !tbaa !19
  store ptr %12, ptr %add.ptr.i.i, align 8, !tbaa !19
  %cmp.i.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %_ZNSt6vectorIPPmSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i

if.then.i.i.i.i.i.i:                              ; preds = %_ZNSt12_Vector_baseIPPmSaIS1_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %cond.i.i.i, ptr align 8 %10, i64 %sub.ptr.sub.i.i.i.i, i1 false) #18
  br label %_ZNSt6vectorIPPmSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i

_ZNSt6vectorIPPmSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i: ; preds = %if.then.i.i.i.i.i.i, %_ZNSt12_Vector_baseIPPmSaIS1_EE11_M_allocateEm.exit.i.i
  %incdec.ptr.i.i = getelementptr inbounds ptr, ptr %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIPPmSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i39.i.i

if.then.i39.i.i:                                  ; preds = %_ZNSt6vectorIPPmSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %10) #18
  br label %_ZNSt6vectorIPPmSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPPmSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i39.i.i, %_ZNSt6vectorIPPmSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i
  store ptr %cond.i.i.i, ptr %blocks, align 8, !tbaa !17
  store ptr %incdec.ptr.i.i, ptr %_M_finish.i, align 8, !tbaa !24
  %add.ptr19.i.i = getelementptr inbounds ptr, ptr %cond.i.i.i, i64 %spec.select.i.i.i
  store ptr %add.ptr19.i.i, ptr %_M_end_of_storage.i, align 8, !tbaa !25
  br label %_ZNSt6vectorIPPmSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPPmSaIS1_EE9push_backERKS1_.exit:    ; preds = %if.then.i, %_ZNSt6vectorIPPmSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define dso_local void @_ZN10Functional13BitVectorPoolD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN10Functional13BitVectorPoolE, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %blocks = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %blocks, align 8, !tbaa !19
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data", ptr %blocks, i64 0, i32 1
  %1 = load ptr, ptr %_M_finish.i, align 8, !tbaa !19
  %cmp.i.not12 = icmp eq ptr %0, %1
  br i1 %cmp.i.not12, label %for.cond.cleanup, label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.body
  %.pre = load ptr, ptr %blocks, align 8, !tbaa !17
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %2 = phi ptr [ %.pre, %for.cond.cleanup.loopexit ], [ %0, %entry ]
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIPPmSaIS1_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  br label %_ZNSt6vectorIPPmSaIS1_EED2Ev.exit

_ZNSt6vectorIPPmSaIS1_EED2Ev.exit:                ; preds = %for.cond.cleanup, %if.then.i.i.i
  ret void

for.body:                                         ; preds = %entry, %for.body
  %__begin1.sroa.0.013 = phi ptr [ %incdec.ptr.i, %for.body ], [ %0, %entry ]
  %3 = load ptr, ptr %__begin1.sroa.0.013, align 8, !tbaa !19
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  tail call void @free(ptr noundef %4) #18
  tail call void @free(ptr noundef %3) #18
  %incdec.ptr.i = getelementptr inbounds ptr, ptr %__begin1.sroa.0.013, i64 1
  %cmp.i.not = icmp eq ptr %incdec.ptr.i, %1
  br i1 %cmp.i.not, label %for.cond.cleanup.loopexit, label %for.body
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_ZN10Functional13BitVectorPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN10Functional13BitVectorPoolE, i64 0, inrange i32 0, i64 2), ptr %this, align 8, !tbaa !5
  %blocks.i = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %blocks.i, align 8, !tbaa !19
  %_M_finish.i.i = getelementptr inbounds %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data", ptr %blocks.i, i64 0, i32 1
  %1 = load ptr, ptr %_M_finish.i.i, align 8, !tbaa !19
  %cmp.i.not12.i = icmp eq ptr %0, %1
  br i1 %cmp.i.not12.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.loopexit.i:                      ; preds = %for.body.i
  %.pre.i = load ptr, ptr %blocks.i, align 8, !tbaa !17
  br label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.loopexit.i, %entry
  %2 = phi ptr [ %.pre.i, %for.cond.cleanup.loopexit.i ], [ %0, %entry ]
  %tobool.not.i.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i.i, label %_ZN10Functional13BitVectorPoolD2Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.cond.cleanup.i
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  br label %_ZN10Functional13BitVectorPoolD2Ev.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %__begin1.sroa.0.013.i = phi ptr [ %incdec.ptr.i.i, %for.body.i ], [ %0, %entry ]
  %3 = load ptr, ptr %__begin1.sroa.0.013.i, align 8, !tbaa !19
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  tail call void @free(ptr noundef %4) #18
  tail call void @free(ptr noundef %3) #18
  %incdec.ptr.i.i = getelementptr inbounds ptr, ptr %__begin1.sroa.0.013.i, i64 1
  %cmp.i.not.i = icmp eq ptr %incdec.ptr.i.i, %1
  br i1 %cmp.i.not.i, label %for.cond.cleanup.loopexit.i, label %for.body.i

_ZN10Functional13BitVectorPoolD2Ev.exit:          ; preds = %for.cond.cleanup.i, %if.then.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %this) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10Functional13BitVectorPool9getMemoryEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %this) local_unnamed_addr #10 align 2 {
entry:
  %index = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %index, align 8, !tbaa !15
  %blockSize = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %blockSize, align 8, !tbaa !8
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN10Functional13BitVectorPool5allocEv(ptr noundef nonnull align 8 dereferenceable(56) %this)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ 0, %if.then ], [ %0, %entry ]
  %currentBlock = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 4
  %3 = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !19
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %index, align 8, !tbaa !15
  ret ptr %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10Functional13BitVectorPool14getCleanMemoryEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %this) local_unnamed_addr #10 align 2 {
entry:
  %index = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %index, align 8, !tbaa !15
  %blockSize = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %blockSize, align 8, !tbaa !8
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN10Functional13BitVectorPool5allocEv(ptr noundef nonnull align 8 dereferenceable(56) %this)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ 0, %if.then ], [ %0, %entry ]
  %nWords = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 2
  %3 = load i32, ptr %nWords, align 4, !tbaa !14
  %cmp315 = icmp sgt i32 %3, 0
  %currentBlock = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 4
  %4 = load ptr, ptr %currentBlock, align 8, !tbaa !16
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !19
  br i1 %cmp315, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %6 = zext i32 %3 to i64
  %7 = shl nuw nsw i64 %6, 3
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %7, i1 false), !tbaa !26
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %if.end, %for.body.lr.ph
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, ptr %index, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_ZN10Functional13BitVectorPool14giveBackMemoryEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %this) local_unnamed_addr #11 align 2 {
entry:
  %index = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %index, align 8, !tbaa !15
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %index, align 8, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local noundef i32 @_ZN10Functional13BitVectorPool12getNumBlocksEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %this) local_unnamed_addr #12 align 2 {
entry:
  %blocks = getelementptr inbounds %"class.Functional::BitVectorPool", ptr %this, i64 0, i32 5
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<unsigned long **, std::allocator<unsigned long **>>::_Vector_impl_data", ptr %blocks, i64 0, i32 1
  %0 = load ptr, ptr %_M_finish.i, align 8, !tbaa !24
  %1 = load ptr, ptr %blocks, align 8, !tbaa !17
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %2 = lshr exact i64 %sub.ptr.sub.i, 3
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_BitVectorPool.cpp() #3 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { allocsize(0) }
attributes #23 = { builtin nounwind }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN10Functional13BitVectorPoolE", !10, i64 8, !10, i64 12, !10, i64 16, !12, i64 24, !13, i64 32}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"any pointer", !11, i64 0}
!13 = !{!"_ZTSSt6vectorIPPmSaIS1_EE"}
!14 = !{!9, !10, i64 12}
!15 = !{!9, !10, i64 16}
!16 = !{!9, !12, i64 24}
!17 = !{!18, !12, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIPPmSaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!19 = !{!12, !12, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!18, !12, i64 8}
!25 = !{!18, !12, i64 16}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !11, i64 0}
