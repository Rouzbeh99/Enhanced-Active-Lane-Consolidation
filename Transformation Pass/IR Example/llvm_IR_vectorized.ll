; ModuleID = 'raw code.cpp'
source_filename = "raw code.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.a = private unnamed_addr constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float 2.000000e+00, float -2.000000e+00, float 3.000000e+00, float -3.000000e+00, float 4.000000e+00, float -4.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [8 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_raw_code.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

;declare <4 x float> @llvm.vp.load.v4f32.p0v4f32(<4 x float>* %ptr, <4 x i1> %mask, i32 %evl)

;declare <4 x float> @llvm.vp.fmul.v4f32(<4 x float> %a, <4 x float> %b, <4 x i1> %mask, i32 %evl)

;declare void @llvm.vp.store.v4f32.p0v4f32(<4 x float> %val, <4 x float>* %ptr, <4 x i1> %mask, i32 %evl)

declare <4 x float>  @llvm.masked.load.v4f32.p0v4f32 (<4 x float>* %ptr, i32 %alignment, <4 x i1> %mask, <4 x float> %passthru)

declare void @llvm.masked.store.v4f32.p0v4f32 (<4 x float> %value, <4 x float>* %ptr, i32 %alignment,  <4 x i1> %mask)

declare <4 x float>  @llvm.vp.fadd.v4f32 (<4 x float> %left_op, <4 x float> %right_op, <4 x i1> %mask, i32 %vector_length)




;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

define void @_Z3fooPfS_S_i(ptr %a, ptr %b, ptr %c, i32 %n){

   entry:
      br label %for.cond

   for.cond:
     %index = phi i32[ 0, %entry ], [ %inc, %for.inc]
     %cmp = icmp slt i32 %index, %n
     br i1 %cmp, label %for.body, label %for.end

   for.body:

     %rem1 = srem i32 %index, 2          ;// calculating i%2
     %mask1 =  icmp eq i32 %rem1, 1

     %0 = add nsw i32 %index, 1          ;// increment i
     %rem2 = srem i32 %0, 2              ;// calculating i%2
     %mask2 =  icmp eq i32 %rem2, 1

     %1 = add nsw i32 %0, 1              ;// increment i
     %rem3 = srem i32 %1, 2              ;// calculating i%2
     %mask3 =  icmp eq i32 %rem3, 1

     %2 = add nsw i32 %1, 1              ;// increment i
     %rem4 = srem i32 %2, 2              ;// calculating i%2
     %mask4 =  icmp eq i32 %rem4, 1
     
     %mask_vec_1 = insertelement <4 x i1> undef, i1 %mask1, i32 0;
     %mask_vec_2 = insertelement <4 x i1> %mask_vec_1 , i1 %mask2, i32 1;
     %mask_vec_3 = insertelement <4 x i1> %mask_vec_2 , i1 %mask3, i32 2;
     %mask = insertelement <4 x i1> %mask_vec_3 , i1 %mask4, i32 3;

      
     %passthru = fadd <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>, zeroinitializer   ;// used for inactive lanes
     
     %ptr.a = getelementptr inbounds float, ptr %a, i32 %index
     %ptr.b = getelementptr inbounds float, ptr %b, i32 %index
     %ptr.c = getelementptr inbounds float, ptr %c, i32 %index
     
     ;%wide.load.a = call <4 x float> @llvm.vp.load.v4f32.p0v4f32 (<4 x float>* %ptr.a, <4 x i1> %mask, i32 4)  
     ;%wide.load.b = call <4 x float> @llvm.vp.load.v4f32.p0v4f32 (<4 x float>* %ptr.b, <4 x i1> %mask, i32 4)
     ;%mul  = call <4 x float> @llvm.vp.fmul.v4f32(<4 x float> %wide.load.a, <4 x float>  %wide.load.b, <4 x i1> %mask, i32 4)
     ;call void @llvm.vp.store.v4f32.p0v4f32(<4 x float> %mul, <4 x float>* %ptr.c, <4 x i1> %mask, i32 4)
     
     %wide.load.a = call <4 x float>  @llvm.masked.load.v4f32.p0v4f32 (<4 x float>* %ptr.a, i32 4, <4 x i1> %mask, <4 x float> %passthru)
     %wide.load.b = call <4 x float>  @llvm.masked.load.v4f32.p0v4f32 (<4 x float>* %ptr.b, i32 4, <4 x i1> %mask, <4 x float> %passthru)

     ;%mul = call <4 x float>  @llvm.vp.fadd.v4f32 (<4 x float>  %wide.load.a, <4 x float>  %wide.load.b, <4 x i1> %mask, i32 4)
     %mul = fmul <4 x float> %wide.load.a, %wide.load.b
     call void @llvm.masked.store.v4f32.p0v4f32 (<4 x float> %mul, <4 x float>* %ptr.c, i32 4,  <4 x i1> %mask)
     
     br label %for.inc

   for.inc:
     %inc = add nsw i32 %index, 4
     br label %for.cond
     
   for.end:
   	ret void

}

;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [8 x float], align 16
  %b = alloca [8 x float], align 16
  %c = alloca [8 x float], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 8, ptr %n, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 @__const.main.a, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %b, ptr align 16 @__const.main.b, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x float], ptr %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %b, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 0
  %0 = load i32, ptr %n, align 4
  call void @_Z3fooPfS_S_i(ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, i32 noundef %0)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 %idxprom
  %4 = load float, ptr %arrayidx, align 4
  %conv = fpext float %4 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_raw_code.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
