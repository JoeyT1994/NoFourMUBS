import CircleFullInterface
import CircleForestAssembly0154
import CircleForestAssembly0155
import CircleForestAssembly0156
import CircleForestAssembly0157
import CircleForestChunk0596
import CircleForestChunk0605
import CircleForestChunk0606
import CircleForestChunk0607
import CircleForestChunk0608
import CircleForestChunk0609
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1334078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1334078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334078 := by
  apply coveredState_split_literal (state := state_1334078) 4
    state_1334079 state_1334100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334079
  · exact cover_1334100
#print axioms cover_1334078

def state_1334064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1334064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334064 := by
  apply coveredState_split_literal (state := state_1334064) 0
    state_1334065 state_1334078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334065
  · exact cover_1334078
#print axioms cover_1334064

def state_1334048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 25)))
theorem cover_1334048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334048 := by
  apply coveredState_split_literal (state := state_1334048) 3
    state_1334049 state_1334064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334049
  · exact cover_1334064
#print axioms cover_1334048

def state_1334046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1334046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334046 := by
  apply coveredState_split_literal (state := state_1334046) 2
    state_1334047 state_1334048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334047
  · exact cover_1334048
#print axioms cover_1334046

def state_1332246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1332246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332246 := by
  apply coveredState_split_literal (state := state_1332246) 1
    state_1332247 state_1334046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332247
  · exact cover_1334046
#print axioms cover_1332246

def state_1331886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 12)))
theorem cover_1331886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331886 := by
  apply coveredState_split_literal (state := state_1331886) 4
    state_1331887 state_1332246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331887
  · exact cover_1332246
#print axioms cover_1331886

def state_1331840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1331840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331840 := by
  apply coveredState_split_literal (state := state_1331840) 3
    state_1331841 state_1331886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331841
  · exact cover_1331886
#print axioms cover_1331840

def state_1331790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1331790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331790 := by
  apply coveredState_split_literal (state := state_1331790) 0
    state_1331791 state_1331840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331791
  · exact cover_1331840
#print axioms cover_1331790

def state_1331556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1331556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331556 := by
  apply coveredState_split_literal (state := state_1331556) 2
    state_1331557 state_1331790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331557
  · exact cover_1331790
#print axioms cover_1331556

def state_1330464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1330464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330464 := by
  apply coveredState_split_literal (state := state_1330464) 1
    state_1330465 state_1331556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330465
  · exact cover_1331556
#print axioms cover_1330464

def state_1334231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 13)))
theorem cover_1334231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334231 := by
  apply coveredState_split_literal (state := state_1334231) 0
    state_1334232 state_1334241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334232
  · exact cover_1334241
#print axioms cover_1334231

def state_1334225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_1334225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334225 := by
  apply coveredState_split_literal (state := state_1334225) 2
    state_1334226 state_1334231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334226
  · exact cover_1334231
#print axioms cover_1334225

def state_1334217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
theorem cover_1334217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334217 := by
  apply coveredState_split_literal (state := state_1334217) 1
    state_1334218 state_1334225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334218
  · exact cover_1334225
#print axioms cover_1334217

def state_1330463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 6)))
theorem cover_1330463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330463 := by
  apply coveredState_split_literal (state := state_1330463) 4
    state_1330464 state_1334217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330464
  · exact cover_1334217
#print axioms cover_1330463

def state_1330387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1330387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330387 := by
  apply coveredState_split_literal (state := state_1330387) 3
    state_1330388 state_1330463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330388
  · exact cover_1330463
#print axioms cover_1330387

def state_1334323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 24)))
theorem cover_1334323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334323 := by
  apply coveredState_split_literal (state := state_1334323) 0
    state_1334324 state_1334383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334324
  · exact cover_1334383
#print axioms cover_1334323

def state_1334322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 12)))
theorem cover_1334322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334322 := by
  apply coveredState_split_literal (state := state_1334322) 4
    state_1334323 state_1334388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334323
  · exact cover_1334388
#print axioms cover_1334322

def state_1334389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 12)))
theorem cover_1334389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334389 := by
  apply coveredState_split_literal (state := state_1334389) 4
    state_1334390 state_1334449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334390
  · exact cover_1334449
#print axioms cover_1334389

def state_1334321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
theorem cover_1334321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334321 := by
  apply coveredState_split_literal (state := state_1334321) 3
    state_1334322 state_1334389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334322
  · exact cover_1334389
#print axioms cover_1334321

def state_1334320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1334320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334320 := by
  apply coveredState_split_literal (state := state_1334320) 2
    state_1334321 state_1334458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334321
  · exact cover_1334458
#print axioms cover_1334320

def state_1334567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
theorem cover_1334567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334567 := by
  apply coveredState_split_literal (state := state_1334567) 2
    state_1334568 state_1334577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334568
  · exact cover_1334577
#print axioms cover_1334567

def state_1334566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
theorem cover_1334566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334566 := by
  apply coveredState_split_literal (state := state_1334566) 1
    state_1334567 state_1334634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334567
  · exact cover_1334634
#print axioms cover_1334566

def state_1334565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
theorem cover_1334565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334565 := by
  apply coveredState_split_literal (state := state_1334565) 0
    state_1334566 state_1334639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334566
  · exact cover_1334639
#print axioms cover_1334565

def state_1334564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 12)))
theorem cover_1334564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334564 := by
  apply coveredState_split_literal (state := state_1334564) 4
    state_1334565 state_1334644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334565
  · exact cover_1334644
#print axioms cover_1334564

def state_1334518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
theorem cover_1334518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334518 := by
  apply coveredState_split_literal (state := state_1334518) 3
    state_1334519 state_1334564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334519
  · exact cover_1334564
#print axioms cover_1334518

def state_1334808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
theorem cover_1334808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334808 := by
  apply coveredState_split_literal (state := state_1334808) 2
    state_1334809 state_1334832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334809
  · exact cover_1334832
#print axioms cover_1334808

def state_1334780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
theorem cover_1334780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334780 := by
  apply coveredState_split_literal (state := state_1334780) 1
    state_1334781 state_1334808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334781
  · exact cover_1334808
#print axioms cover_1334780

def state_1334779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
theorem cover_1334779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334779 := by
  apply coveredState_split_literal (state := state_1334779) 0
    state_1334780 state_1334881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334780
  · exact cover_1334881
#print axioms cover_1334779

def state_1334778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 25)))
theorem cover_1334778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334778 := by
  apply coveredState_split_literal (state := state_1334778) 4
    state_1334779 state_1334886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334779
  · exact cover_1334886
#print axioms cover_1334778

def state_1334746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 23 else 25)))
theorem cover_1334746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334746 := by
  apply coveredState_split_literal (state := state_1334746) 3
    state_1334747 state_1334778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334747
  · exact cover_1334778
#print axioms cover_1334746

def state_1334971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 47 else 51)))
theorem cover_1334971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334971 := by
  apply coveredState_split_literal (state := state_1334971) 3
    state_1334972 state_1334985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334972
  · exact cover_1334985
#print axioms cover_1334971

def state_1334970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1334970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334970 := by
  apply coveredState_split_literal (state := state_1334970) 2
    state_1334971 state_1335038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334971
  · exact cover_1335038
#print axioms cover_1334970
end Mub6.Numerical.CircleFullD0.Forest
