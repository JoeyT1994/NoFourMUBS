import CircleFullInterface
import CircleForestAssembly0333
import CircleForestChunk1291
import CircleForestChunk1293
import CircleForestChunk1294
import CircleForestChunk1295
import CircleForestChunk1296
import CircleForestChunk1297
import CircleForestChunk1298
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1611132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 82) else (if j.val < 3 then 209 else (if j.val < 4 then 122 else 199)))
theorem cover_1611132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611132 := by
  apply coveredState_split_literal (state := state_1611132) 1
    state_1611133 state_1611158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611133
  · exact cover_1611158
#print axioms cover_1611132

def state_1611104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 199)))
theorem cover_1611104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611104 := by
  apply coveredState_split_literal (state := state_1611104) 2
    state_1611105 state_1611132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611105
  · exact cover_1611132
#print axioms cover_1611104

def state_1611103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 199)))
theorem cover_1611103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611103 := by
  apply coveredState_split_literal (state := state_1611103) 0
    state_1611104 state_1611197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611104
  · exact cover_1611197
#print axioms cover_1611103

def state_1611077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 99)))
theorem cover_1611077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611077 := by
  apply coveredState_split_literal (state := state_1611077) 4
    state_1611078 state_1611103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611078
  · exact cover_1611103
#print axioms cover_1611077

def state_1611208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 99)))
theorem cover_1611208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611208 := by
  apply coveredState_split_literal (state := state_1611208) 4
    state_1611209 state_1611222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611209
  · exact cover_1611222
#print axioms cover_1611208

def state_1611076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
theorem cover_1611076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611076 := by
  apply coveredState_split_literal (state := state_1611076) 3
    state_1611077 state_1611208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611077
  · exact cover_1611208
#print axioms cover_1611076

def state_1611075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
theorem cover_1611075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611075 := by
  apply coveredState_split_literal (state := state_1611075) 1
    state_1611076 state_1611283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611076
  · exact cover_1611283
#print axioms cover_1611075

def state_1611362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 99)))
theorem cover_1611362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611362 := by
  apply coveredState_split_literal (state := state_1611362) 3
    state_1611363 state_1611418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611363
  · exact cover_1611418
#print axioms cover_1611362

def state_1611298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 99)))
theorem cover_1611298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611298 := by
  apply coveredState_split_literal (state := state_1611298) 1
    state_1611299 state_1611362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611299
  · exact cover_1611362
#print axioms cover_1611298

def state_1611074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
theorem cover_1611074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611074 := by
  apply coveredState_split_literal (state := state_1611074) 2
    state_1611075 state_1611298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611075
  · exact cover_1611298
#print axioms cover_1611074

def state_1611073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
theorem cover_1611073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611073 := by
  apply coveredState_split_literal (state := state_1611073) 0
    state_1611074 state_1611439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611074
  · exact cover_1611439
#print axioms cover_1611073

def state_1611011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 49)))
theorem cover_1611011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611011 := by
  apply coveredState_split_literal (state := state_1611011) 4
    state_1611012 state_1611073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611012
  · exact cover_1611073
#print axioms cover_1611011

def state_1610827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1610827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610827 := by
  apply coveredState_split_literal (state := state_1610827) 3
    state_1610828 state_1611011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610828
  · exact cover_1611011
#print axioms cover_1610827

def state_1610639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1610639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610639 := by
  apply coveredState_split_literal (state := state_1610639) 1
    state_1610640 state_1610827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610640
  · exact cover_1610827
#print axioms cover_1610639

def state_1610638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1610638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610638 := by
  apply coveredState_split_literal (state := state_1610638) 2
    state_1610639 state_1611476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610639
  · exact cover_1611476
#print axioms cover_1610638

def state_1610637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1610637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610637 := by
  apply coveredState_split_literal (state := state_1610637) 0
    state_1610638 state_1611519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610638
  · exact cover_1611519
#print axioms cover_1610637

def state_1610601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 24)))
theorem cover_1610601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610601 := by
  apply coveredState_split_literal (state := state_1610601) 4
    state_1610602 state_1610637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610602
  · exact cover_1610637
#print axioms cover_1610601

def state_1611612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 99)))
theorem cover_1611612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611612 := by
  apply coveredState_split_literal (state := state_1611612) 0
    state_1611613 state_1611644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611613
  · exact cover_1611644
#print axioms cover_1611612

def state_1611598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 49)))
theorem cover_1611598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611598 := by
  apply coveredState_split_literal (state := state_1611598) 4
    state_1611599 state_1611612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611599
  · exact cover_1611612
#print axioms cover_1611598

def state_1611597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1611597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611597 := by
  apply coveredState_split_literal (state := state_1611597) 3
    state_1611598 state_1611705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611598
  · exact cover_1611705
#print axioms cover_1611597

def state_1611775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 99)))
theorem cover_1611775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611775 := by
  apply coveredState_split_literal (state := state_1611775) 0
    state_1611776 state_1611833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611776
  · exact cover_1611833
#print axioms cover_1611775

def state_1611743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 49)))
theorem cover_1611743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611743 := by
  apply coveredState_split_literal (state := state_1611743) 4
    state_1611744 state_1611775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611744
  · exact cover_1611775
#print axioms cover_1611743

def state_1611742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1611742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611742 := by
  apply coveredState_split_literal (state := state_1611742) 3
    state_1611743 state_1611878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611743
  · exact cover_1611878
#print axioms cover_1611742

def state_1611596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1611596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611596 := by
  apply coveredState_split_literal (state := state_1611596) 1
    state_1611597 state_1611742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611597
  · exact cover_1611742
#print axioms cover_1611596

def state_1611595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
theorem cover_1611595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611595 := by
  apply coveredState_split_literal (state := state_1611595) 2
    state_1611596 state_1611911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611596
  · exact cover_1611911
#print axioms cover_1611595

def state_1611938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1611938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611938 := by
  apply coveredState_split_literal (state := state_1611938) 3
    state_1611939 state_1611952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611939
  · exact cover_1611952
#print axioms cover_1611938

def state_1611937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1611937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611937 := by
  apply coveredState_split_literal (state := state_1611937) 1
    state_1611938 state_1612009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611938
  · exact cover_1612009
#print axioms cover_1611937

def state_1611936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
theorem cover_1611936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611936 := by
  apply coveredState_split_literal (state := state_1611936) 2
    state_1611937 state_1612046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611937
  · exact cover_1612046
#print axioms cover_1611936

def state_1611594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
theorem cover_1611594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611594 := by
  apply coveredState_split_literal (state := state_1611594) 0
    state_1611595 state_1611936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611595
  · exact cover_1611936
#print axioms cover_1611594

def state_1611546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 24)))
theorem cover_1611546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611546 := by
  apply coveredState_split_literal (state := state_1611546) 4
    state_1611547 state_1611594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1611547
  · exact cover_1611594
#print axioms cover_1611546

def state_1610600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
theorem cover_1610600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610600 := by
  apply coveredState_split_literal (state := state_1610600) 3
    state_1610601 state_1611546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610601
  · exact cover_1611546
#print axioms cover_1610600

def state_1610599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1610599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610599 := by
  apply coveredState_split_literal (state := state_1610599) 2
    state_1610600 state_1612087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610600
  · exact cover_1612087
#print axioms cover_1610599
end Mub6.Numerical.CircleFullD0.Forest
