import D0FullInterface
import D0ForestAssembly0515
import D0ForestChunk2030
import D0ForestChunk2031
import D0ForestChunk2032
import D0ForestChunk2033
import D0ForestChunk2034
import D0ForestChunk2035
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2567926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 190)))
theorem cover_2567926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567926 := by
  apply coveredState_split_literal (state := state_2567926) 1
    state_2567927 state_2568034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567927
  · exact cover_2568034
#print axioms cover_2567926

def state_2567925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 95)))
theorem cover_2567925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567925 := by
  apply coveredState_split_literal (state := state_2567925) 4
    state_2567926 state_2568045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567926
  · exact cover_2568045
#print axioms cover_2567925

def state_2567893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 95)))
theorem cover_2567893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567893 := by
  apply coveredState_split_literal (state := state_2567893) 2
    state_2567894 state_2567925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567894
  · exact cover_2567925
#print axioms cover_2567893

def state_2568118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 117 else (if j.val < 4 then 115 else 95)))
theorem cover_2568118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568118 := by
  apply coveredState_split_literal (state := state_2568118) 4
    state_2568119 state_2568148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568119
  · exact cover_2568148
#print axioms cover_2568118

def state_2568088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 95)))
theorem cover_2568088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568088 := by
  apply coveredState_split_literal (state := state_2568088) 2
    state_2568089 state_2568118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568089
  · exact cover_2568118
#print axioms cover_2568088

def state_2567892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_2567892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567892 := by
  apply coveredState_split_literal (state := state_2567892) 3
    state_2567893 state_2568088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567893
  · exact cover_2568088
#print axioms cover_2567892

def state_2567891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_2567891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567891 := by
  apply coveredState_split_literal (state := state_2567891) 0
    state_2567892 state_2568203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567892
  · exact cover_2568203
#print axioms cover_2567891

def state_2567827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_2567827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567827 := by
  apply coveredState_split_literal (state := state_2567827) 4
    state_2567828 state_2567891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567828
  · exact cover_2567891
#print axioms cover_2567827

def state_2567445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_2567445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567445 := by
  apply coveredState_split_literal (state := state_2567445) 1
    state_2567446 state_2567827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567446
  · exact cover_2567827
#print axioms cover_2567445

def state_2568273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 114 else 94)))
theorem cover_2568273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568273 := by
  apply coveredState_split_literal (state := state_2568273) 2
    state_2568274 state_2568329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568274
  · exact cover_2568329
#print axioms cover_2568273

def state_2568272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 94)))
theorem cover_2568272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568272 := by
  apply coveredState_split_literal (state := state_2568272) 3
    state_2568273 state_2568342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568273
  · exact cover_2568342
#print axioms cover_2568272

def state_2568271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 94)))
theorem cover_2568271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568271 := by
  apply coveredState_split_literal (state := state_2568271) 0
    state_2568272 state_2568359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568272
  · exact cover_2568359
#print axioms cover_2568271

def state_2568381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 95)))
theorem cover_2568381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568381 := by
  apply coveredState_split_literal (state := state_2568381) 3
    state_2568382 state_2568427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568382
  · exact cover_2568427
#print axioms cover_2568381

def state_2568380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 95)))
theorem cover_2568380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568380 := by
  apply coveredState_split_literal (state := state_2568380) 0
    state_2568381 state_2568458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568381
  · exact cover_2568458
#print axioms cover_2568380

def state_2568270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
theorem cover_2568270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568270 := by
  apply coveredState_split_literal (state := state_2568270) 4
    state_2568271 state_2568380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568271
  · exact cover_2568380
#print axioms cover_2568270

def state_2568228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
theorem cover_2568228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568228 := by
  apply coveredState_split_literal (state := state_2568228) 1
    state_2568229 state_2568270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568229
  · exact cover_2568270
#print axioms cover_2568228

def state_2567444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
theorem cover_2567444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567444 := by
  apply coveredState_split_literal (state := state_2567444) 2
    state_2567445 state_2568228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567445
  · exact cover_2568228
#print axioms cover_2567444

def state_2567104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2567104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567104 := by
  apply coveredState_split_literal (state := state_2567104) 3
    state_2567105 state_2567444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567105
  · exact cover_2567444
#print axioms cover_2567104

def state_2567103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2567103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567103 := by
  apply coveredState_split_literal (state := state_2567103) 0
    state_2567104 state_2568497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567104
  · exact cover_2568497
#print axioms cover_2567103

def state_2566941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2566941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566941 := by
  apply coveredState_split_literal (state := state_2566941) 4
    state_2566942 state_2567103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566942
  · exact cover_2567103
#print axioms cover_2566941

def state_2568556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_2568556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568556 := by
  apply coveredState_split_literal (state := state_2568556) 3
    state_2568557 state_2568614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568557
  · exact cover_2568614
#print axioms cover_2568556

def state_2568555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_2568555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568555 := by
  apply coveredState_split_literal (state := state_2568555) 0
    state_2568556 state_2568633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568556
  · exact cover_2568633
#print axioms cover_2568555

def state_2568659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
theorem cover_2568659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568659 := by
  apply coveredState_split_literal (state := state_2568659) 3
    state_2568660 state_2568677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568660
  · exact cover_2568677
#print axioms cover_2568659

def state_2568658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
theorem cover_2568658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568658 := by
  apply coveredState_split_literal (state := state_2568658) 0
    state_2568659 state_2568734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568659
  · exact cover_2568734
#print axioms cover_2568658

def state_2568657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
theorem cover_2568657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568657 := by
  apply coveredState_split_literal (state := state_2568657) 1
    state_2568658 state_2568739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568658
  · exact cover_2568739
#print axioms cover_2568657

def state_2568656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
theorem cover_2568656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568656 := by
  apply coveredState_split_literal (state := state_2568656) 4
    state_2568657 state_2568750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568657
  · exact cover_2568750
#print axioms cover_2568656

def state_2568638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
theorem cover_2568638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568638 := by
  apply coveredState_split_literal (state := state_2568638) 2
    state_2568639 state_2568656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568639
  · exact cover_2568656
#print axioms cover_2568638

def state_2568819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
theorem cover_2568819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568819 := by
  apply coveredState_split_literal (state := state_2568819) 4
    state_2568820 state_2568865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568820
  · exact cover_2568865
#print axioms cover_2568819

def state_2568783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
theorem cover_2568783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568783 := by
  apply coveredState_split_literal (state := state_2568783) 2
    state_2568784 state_2568819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568784
  · exact cover_2568819
#print axioms cover_2568783

def state_2568637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2568637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568637 := by
  apply coveredState_split_literal (state := state_2568637) 3
    state_2568638 state_2568783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568638
  · exact cover_2568783
#print axioms cover_2568637

def state_2568636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2568636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568636 := by
  apply coveredState_split_literal (state := state_2568636) 0
    state_2568637 state_2568928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568637
  · exact cover_2568928
#print axioms cover_2568636

def state_2568554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2568554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568554 := by
  apply coveredState_split_literal (state := state_2568554) 4
    state_2568555 state_2568636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568555
  · exact cover_2568636
#print axioms cover_2568554
end Mub6.Numerical.CircleFullD0.Forest
