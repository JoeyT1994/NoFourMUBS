import D0FullInterface
import D0ForestAssembly0473
import D0ForestChunk1865
import D0ForestChunk1866
import D0ForestChunk1867
import D0ForestChunk1868
import D0ForestChunk1869
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2320708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 29 else 44)))
theorem cover_2320708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320708 := by
  apply coveredState_split_literal (state := state_2320708) 1
    state_2320709 state_2320770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320709
  · exact cover_2320770
#print axioms cover_2320708

def state_2320707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 29 else 44)))
theorem cover_2320707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320707 := by
  apply coveredState_split_literal (state := state_2320707) 2
    state_2320708 state_2320777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320708
  · exact cover_2320777
#print axioms cover_2320707

def state_2320706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 29 else 22)))
theorem cover_2320706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320706 := by
  apply coveredState_split_literal (state := state_2320706) 4
    state_2320707 state_2320788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320707
  · exact cover_2320788
#print axioms cover_2320706

def state_2320705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 29 else 22)))
theorem cover_2320705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320705 := by
  apply coveredState_split_literal (state := state_2320705) 0
    state_2320706 state_2320833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320706
  · exact cover_2320833
#print axioms cover_2320705

def state_2320685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
theorem cover_2320685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320685 := by
  apply coveredState_split_literal (state := state_2320685) 3
    state_2320686 state_2320705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320686
  · exact cover_2320705
#print axioms cover_2320685

def state_2320684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
theorem cover_2320684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320684 := by
  apply coveredState_split_literal (state := state_2320684) 1
    state_2320685 state_2320874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320685
  · exact cover_2320874
#print axioms cover_2320684

def state_2320206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_2320206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320206 := by
  apply coveredState_split_literal (state := state_2320206) 2
    state_2320207 state_2320684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320207
  · exact cover_2320684
#print axioms cover_2320206

def state_2320205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2320205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320205 := by
  apply coveredState_split_literal (state := state_2320205) 4
    state_2320206 state_2320887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320206
  · exact cover_2320887
#print axioms cover_2320205

def state_2319999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2319999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319999 := by
  apply coveredState_split_literal (state := state_2319999) 0
    state_2320000 state_2320205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320000
  · exact cover_2320205
#print axioms cover_2319999

def state_2320952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_2320952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320952 := by
  apply coveredState_split_literal (state := state_2320952) 2
    state_2320953 state_2320984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320953
  · exact cover_2320984
#print axioms cover_2320952

def state_2320951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2320951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320951 := by
  apply coveredState_split_literal (state := state_2320951) 4
    state_2320952 state_2321027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2320952
  · exact cover_2321027
#print axioms cover_2320951

def state_2321094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 83 else (if j.val < 4 then 60 else 88)))
theorem cover_2321094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321094 := by
  apply coveredState_split_literal (state := state_2321094) 3
    state_2321095 state_2321124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321095
  · exact cover_2321124
#print axioms cover_2321094

def state_2321076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 88)))
theorem cover_2321076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321076 := by
  apply coveredState_split_literal (state := state_2321076) 2
    state_2321077 state_2321094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321077
  · exact cover_2321094
#print axioms cover_2321076

def state_2321075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 88)))
theorem cover_2321075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321075 := by
  apply coveredState_split_literal (state := state_2321075) 1
    state_2321076 state_2321165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321076
  · exact cover_2321165
#print axioms cover_2321075

def state_2321184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 89)))
theorem cover_2321184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321184 := by
  apply coveredState_split_literal (state := state_2321184) 1
    state_2321185 state_2321230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321185
  · exact cover_2321230
#print axioms cover_2321184

def state_2321074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
theorem cover_2321074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321074 := by
  apply coveredState_split_literal (state := state_2321074) 4
    state_2321075 state_2321184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321075
  · exact cover_2321184
#print axioms cover_2321074

def state_2321046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
theorem cover_2321046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321046 := by
  apply coveredState_split_literal (state := state_2321046) 0
    state_2321047 state_2321074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321047
  · exact cover_2321074
#print axioms cover_2321046

def state_2321045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 30 else 44)))
theorem cover_2321045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321045 := by
  apply coveredState_split_literal (state := state_2321045) 3
    state_2321046 state_2321257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321046
  · exact cover_2321257
#print axioms cover_2321045

def state_2321037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2321037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321037 := by
  apply coveredState_split_literal (state := state_2321037) 2
    state_2321038 state_2321045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321038
  · exact cover_2321045
#print axioms cover_2321037

def state_2321036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2321036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321036 := by
  apply coveredState_split_literal (state := state_2321036) 1
    state_2321037 state_2321288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321037
  · exact cover_2321288
#print axioms cover_2321036

def state_2321035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
theorem cover_2321035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321035 := by
  apply coveredState_split_literal (state := state_2321035) 4
    state_2321036 state_2321317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321036
  · exact cover_2321317
#print axioms cover_2321035

def state_2321356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 30 else 44)))
theorem cover_2321356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321356 := by
  apply coveredState_split_literal (state := state_2321356) 3
    state_2321357 state_2321408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321357
  · exact cover_2321408
#print axioms cover_2321356

def state_2321354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2321354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321354 := by
  apply coveredState_split_literal (state := state_2321354) 2
    state_2321355 state_2321356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321355
  · exact cover_2321356
#print axioms cover_2321354

def state_2321353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2321353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321353 := by
  apply coveredState_split_literal (state := state_2321353) 1
    state_2321354 state_2321429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321354
  · exact cover_2321429
#print axioms cover_2321353

def state_2321352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
theorem cover_2321352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321352 := by
  apply coveredState_split_literal (state := state_2321352) 4
    state_2321353 state_2321450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321353
  · exact cover_2321450
#print axioms cover_2321352

def state_2321034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
theorem cover_2321034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321034 := by
  apply coveredState_split_literal (state := state_2321034) 0
    state_2321035 state_2321352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321035
  · exact cover_2321352
#print axioms cover_2321034

def state_2321033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
theorem cover_2321033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321033 := by
  apply coveredState_split_literal (state := state_2321033) 3
    state_2321034 state_2321501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321034
  · exact cover_2321501
#print axioms cover_2321033

def state_2321032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
theorem cover_2321032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321032 := by
  apply coveredState_split_literal (state := state_2321032) 1
    state_2321033 state_2321546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321033
  · exact cover_2321546
#print axioms cover_2321032

def state_2321612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 88)))
theorem cover_2321612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321612 := by
  apply coveredState_split_literal (state := state_2321612) 1
    state_2321613 state_2321666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321613
  · exact cover_2321666
#print axioms cover_2321612

def state_2321611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 88)))
theorem cover_2321611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321611 := by
  apply coveredState_split_literal (state := state_2321611) 2
    state_2321612 state_2321679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321612
  · exact cover_2321679
#print axioms cover_2321611

def state_2321704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 89)))
theorem cover_2321704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321704 := by
  apply coveredState_split_literal (state := state_2321704) 2
    state_2321705 state_2321750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321705
  · exact cover_2321750
#print axioms cover_2321704

def state_2321610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
theorem cover_2321610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321610 := by
  apply coveredState_split_literal (state := state_2321610) 4
    state_2321611 state_2321704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321611
  · exact cover_2321704
#print axioms cover_2321610
end Mub6.Numerical.CircleFullD0.Forest
