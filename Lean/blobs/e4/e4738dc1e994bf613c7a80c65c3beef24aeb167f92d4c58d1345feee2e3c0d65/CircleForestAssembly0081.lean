import CircleFullInterface
import CircleForestAssembly0077
import CircleForestAssembly0080
import CircleForestChunk0324
import CircleForestChunk0325
import CircleForestChunk0326
import CircleForestChunk0327
import CircleForestChunk0328
import CircleForestChunk0329
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_153189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_153189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153189 := by
  apply coveredState_split_literal (state := state_153189) 1
    state_153190 state_153223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153190
  · exact cover_153223
#print axioms cover_153189

def state_149687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_149687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149687 := by
  apply coveredState_split_literal (state := state_149687) 0
    state_149688 state_153189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149688
  · exact cover_153189
#print axioms cover_149687

def state_149479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_149479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149479 := by
  apply coveredState_split_literal (state := state_149479) 4
    state_149480 state_149687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149480
  · exact cover_149687
#print axioms cover_149479

def state_149233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_149233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149233 := by
  apply coveredState_split_literal (state := state_149233) 3
    state_149234 state_149479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149234
  · exact cover_149479
#print axioms cover_149233

def state_153436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_153436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153436 := by
  apply coveredState_split_literal (state := state_153436) 0
    state_153437 state_153494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153437
  · exact cover_153494
#print axioms cover_153436

def state_153619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 12)))
theorem cover_153619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153619 := by
  apply coveredState_split_literal (state := state_153619) 3
    state_153620 state_153673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153620
  · exact cover_153673
#print axioms cover_153619

def state_153609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
theorem cover_153609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153609 := by
  apply coveredState_split_literal (state := state_153609) 2
    state_153610 state_153619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153610
  · exact cover_153619
#print axioms cover_153609

def state_153608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
theorem cover_153608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153608 := by
  apply coveredState_split_literal (state := state_153608) 1
    state_153609 state_153686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153609
  · exact cover_153686
#print axioms cover_153608

def state_153767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 13)))
theorem cover_153767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153767 := by
  apply coveredState_split_literal (state := state_153767) 3
    state_153768 state_153819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153768
  · exact cover_153819
#print axioms cover_153767

def state_153759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
theorem cover_153759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153759 := by
  apply coveredState_split_literal (state := state_153759) 2
    state_153760 state_153767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153760
  · exact cover_153767
#print axioms cover_153759

def state_153711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
theorem cover_153711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153711 := by
  apply coveredState_split_literal (state := state_153711) 1
    state_153712 state_153759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153712
  · exact cover_153759
#print axioms cover_153711

def state_153607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_153607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153607 := by
  apply coveredState_split_literal (state := state_153607) 4
    state_153608 state_153711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153608
  · exact cover_153711
#print axioms cover_153607

def state_153563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_153563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153563 := by
  apply coveredState_split_literal (state := state_153563) 0
    state_153564 state_153607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153564
  · exact cover_153607
#print axioms cover_153563

def state_153562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_153562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153562 := by
  apply coveredState_split_literal (state := state_153562) 4
    state_153563 state_153838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153563
  · exact cover_153838
#print axioms cover_153562

def state_153561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_153561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153561 := by
  apply coveredState_split_literal (state := state_153561) 3
    state_153562 state_153851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153562
  · exact cover_153851
#print axioms cover_153561

def state_153519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_153519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153519 := by
  apply coveredState_split_literal (state := state_153519) 2
    state_153520 state_153561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153520
  · exact cover_153561
#print axioms cover_153519

def state_153871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_153871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153871 := by
  apply coveredState_split_literal (state := state_153871) 3
    state_153872 state_153895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153872
  · exact cover_153895
#print axioms cover_153871

def state_153945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_153945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153945 := by
  apply coveredState_split_literal (state := state_153945) 4
    state_153946 state_153991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153946
  · exact cover_153991
#print axioms cover_153945

def state_153944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_153944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153944 := by
  apply coveredState_split_literal (state := state_153944) 3
    state_153945 state_154010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153945
  · exact cover_154010
#print axioms cover_153944

def state_153870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_153870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153870 := by
  apply coveredState_split_literal (state := state_153870) 2
    state_153871 state_153944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153871
  · exact cover_153944
#print axioms cover_153870

def state_153518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_153518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153518 := by
  apply coveredState_split_literal (state := state_153518) 1
    state_153519 state_153870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153519
  · exact cover_153870
#print axioms cover_153518

def state_154025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_154025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154025 := by
  apply coveredState_split_literal (state := state_154025) 3
    state_154026 state_154049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154026
  · exact cover_154049
#print axioms cover_154025

def state_154104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_154104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154104 := by
  apply coveredState_split_literal (state := state_154104) 4
    state_154105 state_154132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154105
  · exact cover_154132
#print axioms cover_154104

def state_154103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_154103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154103 := by
  apply coveredState_split_literal (state := state_154103) 4
    state_154104 state_154183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154104
  · exact cover_154183
#print axioms cover_154103

def state_154102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_154102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154102 := by
  apply coveredState_split_literal (state := state_154102) 3
    state_154103 state_154200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154103
  · exact cover_154200
#print axioms cover_154102

def state_154024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_154024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154024 := by
  apply coveredState_split_literal (state := state_154024) 2
    state_154025 state_154102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154025
  · exact cover_154102
#print axioms cover_154024

def state_154257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_154257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154257 := by
  apply coveredState_split_literal (state := state_154257) 2
    state_154258 state_154281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154258
  · exact cover_154281
#print axioms cover_154257

def state_154023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_154023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154023 := by
  apply coveredState_split_literal (state := state_154023) 1
    state_154024 state_154257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154024
  · exact cover_154257
#print axioms cover_154023

def state_153517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_153517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153517 := by
  apply coveredState_split_literal (state := state_153517) 0
    state_153518 state_154023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153518
  · exact cover_154023
#print axioms cover_153517

def state_153435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_153435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153435 := by
  apply coveredState_split_literal (state := state_153435) 4
    state_153436 state_153517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153436
  · exact cover_153517
#print axioms cover_153435

def state_154345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_154345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154345 := by
  apply coveredState_split_literal (state := state_154345) 0
    state_154346 state_154409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154346
  · exact cover_154409
#print axioms cover_154345

def state_154532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_154532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154532 := by
  apply coveredState_split_literal (state := state_154532) 0
    state_154533 state_154584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154533
  · exact cover_154584
#print axioms cover_154532
end Mub6.Numerical.CircleFullPrototype.Forest
