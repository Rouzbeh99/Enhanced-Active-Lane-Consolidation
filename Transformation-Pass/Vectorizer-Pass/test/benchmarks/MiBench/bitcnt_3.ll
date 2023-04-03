; ModuleID = 'bitcnt_3.c'
source_filename = "bitcnt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @ntbl_bitcount(i64 noundef %x) local_unnamed_addr #0 {
entry:
  %conv = and i64 %x, 15
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv1 = sext i8 %0 to i32
  %1 = lshr i64 %x, 4
  %conv3 = and i64 %1, 15
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv3
  %2 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %conv6 = sext i8 %2 to i32
  %add = add nsw i32 %conv6, %conv1
  %3 = lshr i64 %x, 8
  %conv9 = and i64 %3, 15
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv9
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %conv12 = sext i8 %4 to i32
  %add13 = add nsw i32 %add, %conv12
  %5 = lshr i64 %x, 12
  %conv16 = and i64 %5, 15
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv16
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !5
  %conv19 = sext i8 %6 to i32
  %add20 = add nsw i32 %add13, %conv19
  %7 = lshr i64 %x, 16
  %conv23 = and i64 %7, 15
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv23
  %8 = load i8, ptr %arrayidx25, align 1, !tbaa !5
  %conv26 = sext i8 %8 to i32
  %add27 = add nsw i32 %add20, %conv26
  %9 = lshr i64 %x, 20
  %conv30 = and i64 %9, 15
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv30
  %10 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %conv33 = sext i8 %10 to i32
  %add34 = add nsw i32 %add27, %conv33
  %11 = lshr i64 %x, 24
  %conv37 = and i64 %11, 15
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv37
  %12 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %conv40 = sext i8 %12 to i32
  %add41 = add nsw i32 %add34, %conv40
  %13 = lshr i64 %x, 28
  %14 = and i64 %13, 15
  %arrayidx46 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %14
  %15 = load i8, ptr %arrayidx46, align 1, !tbaa !5
  %conv47 = sext i8 %15 to i32
  %add48 = add nsw i32 %add41, %conv47
  ret i32 %add48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @BW_btbl_bitcount(i64 noundef %x) local_unnamed_addr #0 {
entry:
  %U.sroa.4.0.extract.shift = lshr i64 %x, 8
  %U.sroa.5.0.extract.shift = lshr i64 %x, 16
  %U.sroa.6.0.extract.shift = lshr i64 %x, 24
  %idxprom = and i64 %x, 255
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx1, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %idxprom3 = and i64 %U.sroa.4.0.extract.shift, 255
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom3
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %conv5 = sext i8 %1 to i32
  %add = add nsw i32 %conv5, %conv
  %idxprom7 = and i64 %U.sroa.6.0.extract.shift, 255
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom7
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %conv9 = sext i8 %2 to i32
  %add10 = add nsw i32 %add, %conv9
  %idxprom12 = and i64 %U.sroa.5.0.extract.shift, 255
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom12
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %conv14 = sext i8 %3 to i32
  %add15 = add nsw i32 %add10, %conv14
  ret i32 %add15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @AR_btbl_bitcount(i64 noundef %x) local_unnamed_addr #0 {
entry:
  %x.addr.sroa.2.0.extract.shift = lshr i64 %x, 8
  %x.addr.sroa.3.0.extract.shift = lshr i64 %x, 16
  %x.addr.sroa.4.0.extract.shift = lshr i64 %x, 24
  %idxprom = and i64 %x, 255
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %idxprom2 = and i64 %x.addr.sroa.2.0.extract.shift, 255
  %arrayidx3 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !5
  %conv4 = sext i8 %1 to i32
  %add = add nsw i32 %conv4, %conv
  %idxprom6 = and i64 %x.addr.sroa.3.0.extract.shift, 255
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom6
  %2 = load i8, ptr %arrayidx7, align 1, !tbaa !5
  %conv8 = sext i8 %2 to i32
  %add9 = add nsw i32 %add, %conv8
  %idxprom10 = and i64 %x.addr.sroa.4.0.extract.shift, 255
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom10
  %3 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %conv12 = sext i8 %3 to i32
  %add13 = add nsw i32 %add9, %conv12
  ret i32 %add13
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
