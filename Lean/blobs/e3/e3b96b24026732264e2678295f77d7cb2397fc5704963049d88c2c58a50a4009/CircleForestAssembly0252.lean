import CircleFullInterface
import CircleForestChunk0962
import CircleForestChunk0963
import CircleForestChunk0964
import CircleForestChunk0965
import CircleForestChunk0966
import CircleForestChunk0967
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1531436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 8)))
theorem cover_1531436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531436 := by
  apply coveredState_split_literal (state := state_1531436) 4
    state_1531437 state_1531494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531437
  · exact cover_1531494
#print axioms cover_1531436

def state_1531603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 206 else (if j.val < 4 then 76 else 65)))
theorem cover_1531603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531603 := by
  apply coveredState_split_literal (state := state_1531603) 1
    state_1531604 state_1531653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531604
  · exact cover_1531653
#print axioms cover_1531603

def state_1531668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 65)))
theorem cover_1531668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531668 := by
  apply coveredState_split_literal (state := state_1531668) 1
    state_1531669 state_1531722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531669
  · exact cover_1531722
#print axioms cover_1531668

def state_1531602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 65)))
theorem cover_1531602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531602 := by
  apply coveredState_split_literal (state := state_1531602) 2
    state_1531603 state_1531668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531603
  · exact cover_1531668
#print axioms cover_1531602

def state_1531777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 65)))
theorem cover_1531777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531777 := by
  apply coveredState_split_literal (state := state_1531777) 1
    state_1531778 state_1531819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531778
  · exact cover_1531819
#print axioms cover_1531777

def state_1531763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 65)))
theorem cover_1531763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531763 := by
  apply coveredState_split_literal (state := state_1531763) 2
    state_1531764 state_1531777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531764
  · exact cover_1531777
#print axioms cover_1531763

def state_1531601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 65)))
theorem cover_1531601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531601 := by
  apply coveredState_split_literal (state := state_1531601) 0
    state_1531602 state_1531763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531602
  · exact cover_1531763
#print axioms cover_1531601

def state_1531599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 32)))
theorem cover_1531599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531599 := by
  apply coveredState_split_literal (state := state_1531599) 4
    state_1531600 state_1531601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531600
  · exact cover_1531601
#print axioms cover_1531599

def state_1531598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 32)))
theorem cover_1531598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531598 := by
  apply coveredState_split_literal (state := state_1531598) 3
    state_1531599 state_1531854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531599
  · exact cover_1531854
#print axioms cover_1531598

def state_1531597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 32)))
theorem cover_1531597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531597 := by
  apply coveredState_split_literal (state := state_1531597) 1
    state_1531598 state_1531911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531598
  · exact cover_1531911
#print axioms cover_1531597

def state_1531559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
theorem cover_1531559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531559 := by
  apply coveredState_split_literal (state := state_1531559) 2
    state_1531560 state_1531597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531560
  · exact cover_1531597
#print axioms cover_1531559

def state_1531558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
theorem cover_1531558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531558 := by
  apply coveredState_split_literal (state := state_1531558) 0
    state_1531559 state_1531944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531559
  · exact cover_1531944
#print axioms cover_1531558

def state_1532001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 33)))
theorem cover_1532001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532001 := by
  apply coveredState_split_literal (state := state_1532001) 1
    state_1532002 state_1532043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532002
  · exact cover_1532043
#print axioms cover_1532001

def state_1532078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 66)))
theorem cover_1532078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532078 := by
  apply coveredState_split_literal (state := state_1532078) 2
    state_1532079 state_1532126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532079
  · exact cover_1532126
#print axioms cover_1532078

def state_1532077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 66)))
theorem cover_1532077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532077 := by
  apply coveredState_split_literal (state := state_1532077) 0
    state_1532078 state_1532167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532078
  · exact cover_1532167
#print axioms cover_1532077

def state_1532076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 33)))
theorem cover_1532076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532076 := by
  apply coveredState_split_literal (state := state_1532076) 4
    state_1532077 state_1532224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532077
  · exact cover_1532224
#print axioms cover_1532076

def state_1532266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 66)))
theorem cover_1532266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532266 := by
  apply coveredState_split_literal (state := state_1532266) 2
    state_1532267 state_1532296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532267
  · exact cover_1532296
#print axioms cover_1532266

def state_1532226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 66)))
theorem cover_1532226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532226 := by
  apply coveredState_split_literal (state := state_1532226) 0
    state_1532227 state_1532266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532227
  · exact cover_1532266
#print axioms cover_1532226

def state_1532225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 33)))
theorem cover_1532225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532225 := by
  apply coveredState_split_literal (state := state_1532225) 4
    state_1532226 state_1532349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532226
  · exact cover_1532349
#print axioms cover_1532225

def state_1532075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 33)))
theorem cover_1532075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532075 := by
  apply coveredState_split_literal (state := state_1532075) 3
    state_1532076 state_1532225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532076
  · exact cover_1532225
#print axioms cover_1532075

def state_1532435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 66)))
theorem cover_1532435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532435 := by
  apply coveredState_split_literal (state := state_1532435) 2
    state_1532436 state_1532445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532436
  · exact cover_1532445
#print axioms cover_1532435

def state_1532431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 66)))
theorem cover_1532431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532431 := by
  apply coveredState_split_literal (state := state_1532431) 0
    state_1532432 state_1532435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532432
  · exact cover_1532435
#print axioms cover_1532431

def state_1532520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 67)))
theorem cover_1532520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532520 := by
  apply coveredState_split_literal (state := state_1532520) 2
    state_1532521 state_1532556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532521
  · exact cover_1532556
#print axioms cover_1532520

def state_1532506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 67)))
theorem cover_1532506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532506 := by
  apply coveredState_split_literal (state := state_1532506) 0
    state_1532507 state_1532520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532507
  · exact cover_1532520
#print axioms cover_1532506

def state_1532430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 33)))
theorem cover_1532430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532430 := by
  apply coveredState_split_literal (state := state_1532430) 4
    state_1532431 state_1532506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532431
  · exact cover_1532506
#print axioms cover_1532430

def state_1532378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 33)))
theorem cover_1532378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532378 := by
  apply coveredState_split_literal (state := state_1532378) 3
    state_1532379 state_1532430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532379
  · exact cover_1532430
#print axioms cover_1532378

def state_1532074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 33)))
theorem cover_1532074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532074 := by
  apply coveredState_split_literal (state := state_1532074) 1
    state_1532075 state_1532378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532075
  · exact cover_1532378
#print axioms cover_1532074

def state_1532000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 33)))
theorem cover_1532000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532000 := by
  apply coveredState_split_literal (state := state_1532000) 2
    state_1532001 state_1532074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532001
  · exact cover_1532074
#print axioms cover_1532000

def state_1532615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 33)))
theorem cover_1532615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532615 := by
  apply coveredState_split_literal (state := state_1532615) 1
    state_1532616 state_1532661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532616
  · exact cover_1532661
#print axioms cover_1532615

def state_1532609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 33)))
theorem cover_1532609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532609 := by
  apply coveredState_split_literal (state := state_1532609) 2
    state_1532610 state_1532615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532610
  · exact cover_1532615
#print axioms cover_1532609

def state_1531999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 33)))
theorem cover_1531999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531999 := by
  apply coveredState_split_literal (state := state_1531999) 0
    state_1532000 state_1532609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532000
  · exact cover_1532609
#print axioms cover_1531999

def state_1531557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 16)))
theorem cover_1531557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531557 := by
  apply coveredState_split_literal (state := state_1531557) 4
    state_1531558 state_1531999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531558
  · exact cover_1531999
#print axioms cover_1531557
end Mub6.Numerical.CircleFullD0.Forest
