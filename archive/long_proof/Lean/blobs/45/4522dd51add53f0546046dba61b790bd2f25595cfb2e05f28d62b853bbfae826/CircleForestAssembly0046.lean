import CircleFullInterface
import CircleForestChunk0183
import CircleForestChunk0184
import CircleForestChunk0185
import CircleForestChunk0186
import CircleForestChunk0187
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_981557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_981557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981557 := by
  apply coveredState_split_literal (state := state_981557) 1
    state_981558 state_981565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981558
  · exact cover_981565
#print axioms cover_981557

def state_981519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_981519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981519 := by
  apply coveredState_split_literal (state := state_981519) 0
    state_981520 state_981557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981520
  · exact cover_981557
#print axioms cover_981519

def state_981499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 24 else 20)))
theorem cover_981499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981499 := by
  apply coveredState_split_literal (state := state_981499) 3
    state_981500 state_981519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981500
  · exact cover_981519
#print axioms cover_981499

def state_981498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 20)))
theorem cover_981498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981498 := by
  apply coveredState_split_literal (state := state_981498) 2
    state_981499 state_981624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981499
  · exact cover_981624
#print axioms cover_981498

def state_981497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
theorem cover_981497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981497 := by
  apply coveredState_split_literal (state := state_981497) 4
    state_981498 state_981635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981498
  · exact cover_981635
#print axioms cover_981497

def state_981668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
theorem cover_981668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981668 := by
  apply coveredState_split_literal (state := state_981668) 3
    state_981669 state_981720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981669
  · exact cover_981720
#print axioms cover_981668

def state_981662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
theorem cover_981662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981662 := by
  apply coveredState_split_literal (state := state_981662) 1
    state_981663 state_981668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981663
  · exact cover_981668
#print axioms cover_981662

def state_981638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
theorem cover_981638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981638 := by
  apply coveredState_split_literal (state := state_981638) 0
    state_981639 state_981662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981639
  · exact cover_981662
#print axioms cover_981638

def state_981637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 20)))
theorem cover_981637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981637 := by
  apply coveredState_split_literal (state := state_981637) 2
    state_981638 state_981735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981638
  · exact cover_981735
#print axioms cover_981637

def state_981636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_981636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981636 := by
  apply coveredState_split_literal (state := state_981636) 4
    state_981637 state_981766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981637
  · exact cover_981766
#print axioms cover_981636

def state_981496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_981496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981496 := by
  apply coveredState_split_literal (state := state_981496) 3
    state_981497 state_981636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981497
  · exact cover_981636
#print axioms cover_981496

def state_981488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_981488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981488 := by
  apply coveredState_split_literal (state := state_981488) 1
    state_981489 state_981496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981489
  · exact cover_981496
#print axioms cover_981488

def state_981487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_981487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981487 := by
  apply coveredState_split_literal (state := state_981487) 0
    state_981488 state_981783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981488
  · exact cover_981783
#print axioms cover_981487

def state_981486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_981486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981486 := by
  apply coveredState_split_literal (state := state_981486) 2
    state_981487 state_981846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981487
  · exact cover_981846
#print axioms cover_981486

def state_981485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_981485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981485 := by
  apply coveredState_split_literal (state := state_981485) 4
    state_981486 state_981877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981486
  · exact cover_981877
#print axioms cover_981485

def state_981947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_981947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981947 := by
  apply coveredState_split_literal (state := state_981947) 0
    state_981948 state_981983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981948
  · exact cover_981983
#print axioms cover_981947

def state_981883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_981883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981883 := by
  apply coveredState_split_literal (state := state_981883) 2
    state_981884 state_981947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981884
  · exact cover_981947
#print axioms cover_981883

def state_981882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_981882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981882 := by
  apply coveredState_split_literal (state := state_981882) 4
    state_981883 state_982018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981883
  · exact cover_982018
#print axioms cover_981882

def state_981484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981484 := by
  apply coveredState_split_literal (state := state_981484) 3
    state_981485 state_981882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981485
  · exact cover_981882
#print axioms cover_981484

def state_982065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_982065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982065 := by
  apply coveredState_split_literal (state := state_982065) 4
    state_982066 state_982087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982066
  · exact cover_982087
#print axioms cover_982065

def state_982064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_982064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982064 := by
  apply coveredState_split_literal (state := state_982064) 1
    state_982065 state_982144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982065
  · exact cover_982144
#print axioms cover_982064

def state_982162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 99 else 40)))
theorem cover_982162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982162 := by
  apply coveredState_split_literal (state := state_982162) 0
    state_982163 state_982222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982163
  · exact cover_982222
#print axioms cover_982162

def state_982154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 49 else 40)))
theorem cover_982154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982154 := by
  apply coveredState_split_literal (state := state_982154) 3
    state_982155 state_982162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982155
  · exact cover_982162
#print axioms cover_982154

def state_982153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 40)))
theorem cover_982153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982153 := by
  apply coveredState_split_literal (state := state_982153) 2
    state_982154 state_982227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982154
  · exact cover_982227
#print axioms cover_982153

def state_982239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 49 else 41)))
theorem cover_982239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982239 := by
  apply coveredState_split_literal (state := state_982239) 3
    state_982240 state_982257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982240
  · exact cover_982257
#print axioms cover_982239

def state_982238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 41)))
theorem cover_982238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982238 := by
  apply coveredState_split_literal (state := state_982238) 2
    state_982239 state_982318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982239
  · exact cover_982318
#print axioms cover_982238

def state_982152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_982152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982152 := by
  apply coveredState_split_literal (state := state_982152) 4
    state_982153 state_982238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982153
  · exact cover_982238
#print axioms cover_982152

def state_982151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_982151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982151 := by
  apply coveredState_split_literal (state := state_982151) 1
    state_982152 state_982341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982152
  · exact cover_982341
#print axioms cover_982151

def state_982063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
theorem cover_982063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982063 := by
  apply coveredState_split_literal (state := state_982063) 0
    state_982064 state_982151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982064
  · exact cover_982151
#print axioms cover_982063

def state_982037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 24 else 20)))
theorem cover_982037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982037 := by
  apply coveredState_split_literal (state := state_982037) 3
    state_982038 state_982063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982038
  · exact cover_982063
#print axioms cover_982037

def state_982036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 20)))
theorem cover_982036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982036 := by
  apply coveredState_split_literal (state := state_982036) 2
    state_982037 state_982384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982037
  · exact cover_982384
#print axioms cover_982036

def state_982456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 21)))
theorem cover_982456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982456 := by
  apply coveredState_split_literal (state := state_982456) 1
    state_982457 state_982470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982457
  · exact cover_982470
#print axioms cover_982456
end Mub6.Numerical.CircleFullD0.Forest
