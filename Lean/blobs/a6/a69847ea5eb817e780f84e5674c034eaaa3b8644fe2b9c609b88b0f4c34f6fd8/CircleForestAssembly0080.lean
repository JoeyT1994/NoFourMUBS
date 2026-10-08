import CircleFullInterface
import CircleForestAssembly0079
import CircleForestChunk0309
import CircleForestChunk0310
import CircleForestChunk0320
import CircleForestChunk0321
import CircleForestChunk0322
import CircleForestChunk0323
import CircleForestChunk0324
import CircleForestChunk0325
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_152264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_152264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152264 := by
  apply coveredState_split_literal (state := state_152264) 1
    state_152265 state_152288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152265
  · exact cover_152288
#print axioms cover_152264

def state_152263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_152263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152263 := by
  apply coveredState_split_literal (state := state_152263) 0
    state_152264 state_152507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152264
  · exact cover_152507
#print axioms cover_152263

def state_149805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_149805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149805 := by
  apply coveredState_split_literal (state := state_149805) 4
    state_149806 state_152263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149806
  · exact cover_152263
#print axioms cover_149805

def state_152587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
theorem cover_152587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152587 := by
  apply coveredState_split_literal (state := state_152587) 2
    state_152588 state_152645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152588
  · exact cover_152645
#print axioms cover_152587

def state_152668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
theorem cover_152668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152668 := by
  apply coveredState_split_literal (state := state_152668) 2
    state_152669 state_152676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152669
  · exact cover_152676
#print axioms cover_152668

def state_152586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
theorem cover_152586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152586 := by
  apply coveredState_split_literal (state := state_152586) 1
    state_152587 state_152668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152587
  · exact cover_152668
#print axioms cover_152586

def state_152585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
theorem cover_152585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152585 := by
  apply coveredState_split_literal (state := state_152585) 0
    state_152586 state_152737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152586
  · exact cover_152737
#print axioms cover_152585

def state_152584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 13)))
theorem cover_152584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152584 := by
  apply coveredState_split_literal (state := state_152584) 3
    state_152585 state_152762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152585
  · exact cover_152762
#print axioms cover_152584

def state_152576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
theorem cover_152576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152576 := by
  apply coveredState_split_literal (state := state_152576) 4
    state_152577 state_152584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152577
  · exact cover_152584
#print axioms cover_152576

def state_152560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_152560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152560 := by
  apply coveredState_split_literal (state := state_152560) 2
    state_152561 state_152576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152561
  · exact cover_152576
#print axioms cover_152560

def state_152536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_152536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152536 := by
  apply coveredState_split_literal (state := state_152536) 1
    state_152537 state_152560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152537
  · exact cover_152560
#print axioms cover_152536

def state_152535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_152535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152535 := by
  apply coveredState_split_literal (state := state_152535) 0
    state_152536 state_152767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152536
  · exact cover_152767
#print axioms cover_152535

def state_152928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
theorem cover_152928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152928 := by
  apply coveredState_split_literal (state := state_152928) 2
    state_152929 state_152956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152929
  · exact cover_152956
#print axioms cover_152928

def state_152880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
theorem cover_152880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152880 := by
  apply coveredState_split_literal (state := state_152880) 1
    state_152881 state_152928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152881
  · exact cover_152928
#print axioms cover_152880

def state_153009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
theorem cover_153009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153009 := by
  apply coveredState_split_literal (state := state_153009) 1
    state_153010 state_153031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153010
  · exact cover_153031
#print axioms cover_153009

def state_152879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
theorem cover_152879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152879 := by
  apply coveredState_split_literal (state := state_152879) 0
    state_152880 state_153009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152880
  · exact cover_153009
#print axioms cover_152879

def state_152878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 7)))
theorem cover_152878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152878 := by
  apply coveredState_split_literal (state := state_152878) 4
    state_152879 state_153082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152879
  · exact cover_153082
#print axioms cover_152878

def state_152877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_152877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152877 := by
  apply coveredState_split_literal (state := state_152877) 3
    state_152878 state_153097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152878
  · exact cover_153097
#print axioms cover_152877

def state_152837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_152837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152837 := by
  apply coveredState_split_literal (state := state_152837) 2
    state_152838 state_152877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152838
  · exact cover_152877
#print axioms cover_152837

def state_152793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_152793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152793 := by
  apply coveredState_split_literal (state := state_152793) 1
    state_152794 state_152837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152794
  · exact cover_152837
#print axioms cover_152793

def state_153124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_153124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153124 := by
  apply coveredState_split_literal (state := state_153124) 2
    state_153125 state_153126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153125
  · exact cover_153126
#print axioms cover_153124

def state_153122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_153122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153122 := by
  apply coveredState_split_literal (state := state_153122) 1
    state_153123 state_153124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153123
  · exact cover_153124
#print axioms cover_153122

def state_152792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_152792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152792 := by
  apply coveredState_split_literal (state := state_152792) 0
    state_152793 state_153122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152793
  · exact cover_153122
#print axioms cover_152792

def state_152534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_152534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152534 := by
  apply coveredState_split_literal (state := state_152534) 4
    state_152535 state_152792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152535
  · exact cover_152792
#print axioms cover_152534

def state_149804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_149804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149804 := by
  apply coveredState_split_literal (state := state_149804) 3
    state_149805 state_152534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149805
  · exact cover_152534
#print axioms cover_149804

def state_149752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_149752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149752 := by
  apply coveredState_split_literal (state := state_149752) 2
    state_149753 state_149804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149753
  · exact cover_149804
#print axioms cover_149752

def state_149688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_149688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149688 := by
  apply coveredState_split_literal (state := state_149688) 1
    state_149689 state_149752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149689
  · exact cover_149752
#print axioms cover_149688

def state_153253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_153253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153253 := by
  apply coveredState_split_literal (state := state_153253) 1
    state_153254 state_153277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153254
  · exact cover_153277
#print axioms cover_153253

def state_153252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_153252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153252 := by
  apply coveredState_split_literal (state := state_153252) 4
    state_153253 state_153324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153253
  · exact cover_153324
#print axioms cover_153252

def state_153369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_153369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153369 := by
  apply coveredState_split_literal (state := state_153369) 4
    state_153370 state_153415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153370
  · exact cover_153415
#print axioms cover_153369

def state_153251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_153251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153251 := by
  apply coveredState_split_literal (state := state_153251) 3
    state_153252 state_153369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153252
  · exact cover_153369
#print axioms cover_153251

def state_153223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_153223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153223 := by
  apply coveredState_split_literal (state := state_153223) 2
    state_153224 state_153251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153224
  · exact cover_153251
#print axioms cover_153223
end Mub6.Numerical.CircleFullPrototype.Forest
