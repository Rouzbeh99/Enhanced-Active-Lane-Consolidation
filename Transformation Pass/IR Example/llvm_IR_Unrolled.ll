

define void foo(ptr %a, ptr %b, i32 n){

    %i = alloca i32, align 4            ;// loop index variable
    store i32 0, ptr %i, align 4

    for.cond:
      %0 = load i32, ptr %i, align 4
      %1 = load i32, ptr %n.addr, align 4
      %cmp = icmp slt i32 %0, %1
      br i1 %cmp, label %for.body, label %for.end

   for.body:
     %2 = load i32, ptr %i, align 4

     %rem1 = srem i32 %2, 2              ;// calculating i%2
     %mask1 =  icmp slt i32 %rem1, 1

     %3 = add nsw i32 %2, 1              ;// increment i
     %rem2 = srem i32 %3, 2              ;// calculating i%2
     %mask2 =  icmp slt i32 %rem2, 1

     %4 = add nsw i32 %3, 1              ;// increment i
     %rem3 = srem i32 %4, 2              ;// calculating i%2
     %mask3 =  icmp slt i32 %rem3, 1

     %5 = add nsw i32 %4, 1              ;// increment i
     %rem3 = srem i32 %5, 2              ;// calculating i%2
     %mask4 =  icmp slt i32 %rem4, 1

     br label %if.then

   ;// predicated if.then body
   if.then:

     %6 = load ptr, ptr %a.addr, align 8
     %7 = load ptr, ptr %b.addr, align 8
     %8 = load ptr, ptr %c.addr, align 8
     %9 = load i32, ptr %i, align 4
     %idxprom1 = sext i32 %9 to i64

     %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
     %10 = load i32, ptr %arrayidx, align 4
     %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 %idxprom
     %11 = load i32, ptr %arrayidx2, align 4
     %mul = mul nsw i32 %10, %11                             ;// predicated!!
     %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom
     store i32 %mul, ptr %arrayidx3, align 4                ;// predicated!!

     %idxprom2 = add nsw i64 %idxprom1, 1

     %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom2
     %12 = load i32, ptr %arrayidx4, align 4
     %arrayidx5 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
     %13 = load i32, ptr %arrayidx5, align 4
     %mul2 = mul nsw i32 %12, %13                           ;// predicated!!
     %arrayidx6 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
     store i32 %mul2, ptr %arrayidx6, align 4             ;// predicated!!

     %idxprom3 = add nsw i64 %idxprom2, 1

     %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 %idxprom2
     %14 = load i32, ptr %arrayidx7, align 4
     %arrayidx8 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
     %15 = load i32, ptr %arrayidx8, align 4
     %mul3 = mul nsw i32 %14, %15                           ;// predicated!!
     %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
     store i32 %mul3, ptr %arrayidx9, align 4            ;// predicated!!

     %idxprom4 = add nsw i64 %idxprom3, 1

     %arrayidx10 = getelementptr inbounds i32, ptr %6, i64 %idxprom2
     %16 = load i32, ptr %arrayidx10, align 4
     %arrayidx11 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
     %17 = load i32, ptr %arrayidx11, align 4
     %mul4 = mul nsw i32 %16, %17                            ;// predicated!!S
     %arrayidx12 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
     store i32 %mul3, ptr %arrayidx12, align 4              ;// predicated!!

     br lable %for.inc

   for.inc:
      %11 = load i32, ptr %i, align 4
      %inc = add nsw i32 %11, 4
      store i32 %inc, ptr %i, align 4
      br label %for.cond, !llvm.loop !6

   for.end:
      ret void


}