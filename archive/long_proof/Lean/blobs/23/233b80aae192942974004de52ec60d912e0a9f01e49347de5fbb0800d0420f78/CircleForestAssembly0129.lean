import CircleFullInterface
import CircleForestChunk0508
import CircleForestChunk0509
import CircleForestChunk0510
import CircleForestChunk0511
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_283449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
theorem cover_283449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283449 := by
  apply coveredState_split_literal (state := state_283449) 1
    state_283450 state_283487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283450
  · exact cover_283487
#print axioms cover_283449

def state_283445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
theorem cover_283445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283445 := by
  apply coveredState_split_literal (state := state_283445) 0
    state_283446 state_283449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283446
  · exact cover_283449
#print axioms cover_283445

def state_283444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
theorem cover_283444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283444 := by
  apply coveredState_split_literal (state := state_283444) 4
    state_283445 state_283538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283445
  · exact cover_283538
#print axioms cover_283444

def state_283426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 24)))
theorem cover_283426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283426 := by
  apply coveredState_split_literal (state := state_283426) 2
    state_283427 state_283444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283427
  · exact cover_283444
#print axioms cover_283426

def state_283425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 24)))
theorem cover_283425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283425 := by
  apply coveredState_split_literal (state := state_283425) 3
    state_283426 state_283543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283426
  · exact cover_283543
#print axioms cover_283425

def state_283424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 24)))
theorem cover_283424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283424 := by
  apply coveredState_split_literal (state := state_283424) 1
    state_283425 state_283586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283425
  · exact cover_283586
#print axioms cover_283424

def state_283423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 12)))
theorem cover_283423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283423 := by
  apply coveredState_split_literal (state := state_283423) 4
    state_283424 state_283601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283424
  · exact cover_283601
#print axioms cover_283423

def state_283755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 57) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 96)))
theorem cover_283755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283755 := by
  apply coveredState_split_literal (state := state_283755) 1
    state_283756 state_283797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283756
  · exact cover_283797
#print axioms cover_283755

def state_283754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 96)))
theorem cover_283754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283754 := by
  apply coveredState_split_literal (state := state_283754) 0
    state_283755 state_283838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283755
  · exact cover_283838
#print axioms cover_283754

def state_283753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 48)))
theorem cover_283753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283753 := by
  apply coveredState_split_literal (state := state_283753) 4
    state_283754 state_283845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283754
  · exact cover_283845
#print axioms cover_283753

def state_283725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 48)))
theorem cover_283725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283725 := by
  apply coveredState_split_literal (state := state_283725) 2
    state_283726 state_283753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283726
  · exact cover_283753
#print axioms cover_283725

def state_283673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
theorem cover_283673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283673 := by
  apply coveredState_split_literal (state := state_283673) 3
    state_283674 state_283725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283674
  · exact cover_283725
#print axioms cover_283673

def state_283635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
theorem cover_283635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283635 := by
  apply coveredState_split_literal (state := state_283635) 1
    state_283636 state_283673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283636
  · exact cover_283673
#print axioms cover_283635

def state_283634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
theorem cover_283634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283634 := by
  apply coveredState_split_literal (state := state_283634) 4
    state_283635 state_283888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283635
  · exact cover_283888
#print axioms cover_283634

def state_283633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
theorem cover_283633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283633 := by
  apply coveredState_split_literal (state := state_283633) 0
    state_283634 state_283903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283634
  · exact cover_283903
#print axioms cover_283633

def state_283605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 24)))
theorem cover_283605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283605 := by
  apply coveredState_split_literal (state := state_283605) 2
    state_283606 state_283633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283606
  · exact cover_283633
#print axioms cover_283605

def state_283604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 24)))
theorem cover_283604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283604 := by
  apply coveredState_split_literal (state := state_283604) 3
    state_283605 state_283926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283605
  · exact cover_283926
#print axioms cover_283604

def state_283960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
theorem cover_283960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283960 := by
  apply coveredState_split_literal (state := state_283960) 0
    state_283961 state_284022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283961
  · exact cover_284022
#print axioms cover_283960

def state_283954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 24)))
theorem cover_283954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283954 := by
  apply coveredState_split_literal (state := state_283954) 2
    state_283955 state_283960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283955
  · exact cover_283960
#print axioms cover_283954

def state_283953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 24)))
theorem cover_283953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283953 := by
  apply coveredState_split_literal (state := state_283953) 3
    state_283954 state_284047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283954
  · exact cover_284047
#print axioms cover_283953

def state_283603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 24)))
theorem cover_283603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283603 := by
  apply coveredState_split_literal (state := state_283603) 1
    state_283604 state_283953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283604
  · exact cover_283953
#print axioms cover_283603

def state_283602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 12)))
theorem cover_283602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283602 := by
  apply coveredState_split_literal (state := state_283602) 4
    state_283603 state_284090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283603
  · exact cover_284090
#print axioms cover_283602

def state_283422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 12)))
theorem cover_283422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283422 := by
  apply coveredState_split_literal (state := state_283422) 0
    state_283423 state_283602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283423
  · exact cover_283602
#print axioms cover_283422

def state_283421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 12)))
theorem cover_283421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283421 := by
  apply coveredState_split_literal (state := state_283421) 3
    state_283422 state_284099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283422
  · exact cover_284099
#print axioms cover_283421

def state_284237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 115) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
theorem cover_284237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284237 := by
  apply coveredState_split_literal (state := state_284237) 3
    state_284238 state_284297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284238
  · exact cover_284297
#print axioms cover_284237

def state_284211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
theorem cover_284211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284211 := by
  apply coveredState_split_literal (state := state_284211) 1
    state_284212 state_284237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284212
  · exact cover_284237
#print axioms cover_284211

def state_284195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
theorem cover_284195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284195 := by
  apply coveredState_split_literal (state := state_284195) 0
    state_284196 state_284211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284196
  · exact cover_284211
#print axioms cover_284195

def state_284194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 48)))
theorem cover_284194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284194 := by
  apply coveredState_split_literal (state := state_284194) 4
    state_284195 state_284318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284195
  · exact cover_284318
#print axioms cover_284194

def state_284193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 48)))
theorem cover_284193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284193 := by
  apply coveredState_split_literal (state := state_284193) 2
    state_284194 state_284335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284194
  · exact cover_284335
#print axioms cover_284193

def state_284153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284153 := by
  apply coveredState_split_literal (state := state_284153) 3
    state_284154 state_284193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284154
  · exact cover_284193
#print axioms cover_284153

def state_284137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284137 := by
  apply coveredState_split_literal (state := state_284137) 1
    state_284138 state_284153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284138
  · exact cover_284153
#print axioms cover_284137

def state_284123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284123 := by
  apply coveredState_split_literal (state := state_284123) 0
    state_284124 state_284137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284124
  · exact cover_284137
#print axioms cover_284123
end Mub6.Numerical.CircleFullPrototype.Forest
