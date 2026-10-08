import CircleFullInterface
import CircleForestAssembly0053
import CircleForestChunk0214
import CircleForestChunk0215
import CircleForestChunk0216
import CircleForestChunk0217
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_72766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_72766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72766 := by
  apply coveredState_split_literal (state := state_72766) 3
    state_72767 state_72870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72767
  · exact cover_72870
#print axioms cover_72766

def state_72765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_72765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72765 := by
  apply coveredState_split_literal (state := state_72765) 1
    state_72766 state_72871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72766
  · exact cover_72871
#print axioms cover_72765

def state_72764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_72764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72764 := by
  apply coveredState_split_literal (state := state_72764) 0
    state_72765 state_72890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72765
  · exact cover_72890
#print axioms cover_72764

def state_72694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_72694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72694 := by
  apply coveredState_split_literal (state := state_72694) 4
    state_72695 state_72764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72695
  · exact cover_72764
#print axioms cover_72694

def state_72693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_72693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72693 := by
  apply coveredState_split_literal (state := state_72693) 3
    state_72694 state_72943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72694
  · exact cover_72943
#print axioms cover_72693

def state_72964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 9)))
theorem cover_72964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72964 := by
  apply coveredState_split_literal (state := state_72964) 0
    state_72965 state_72994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72965
  · exact cover_72994
#print axioms cover_72964

def state_72958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 4)))
theorem cover_72958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72958 := by
  apply coveredState_split_literal (state := state_72958) 4
    state_72959 state_72964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72959
  · exact cover_72964
#print axioms cover_72958

def state_72957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
theorem cover_72957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72957 := by
  apply coveredState_split_literal (state := state_72957) 3
    state_72958 state_73057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72958
  · exact cover_73057
#print axioms cover_72957

def state_72956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_72956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72956 := by
  apply coveredState_split_literal (state := state_72956) 2
    state_72957 state_73058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72957
  · exact cover_73058
#print axioms cover_72956

def state_72955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_72955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72955 := by
  apply coveredState_split_literal (state := state_72955) 1
    state_72956 state_73065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72956
  · exact cover_73065
#print axioms cover_72955

def state_72954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_72954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72954 := by
  apply coveredState_split_literal (state := state_72954) 0
    state_72955 state_73086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72955
  · exact cover_73086
#print axioms cover_72954

def state_73200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 20)))
theorem cover_73200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73200 := by
  apply coveredState_split_literal (state := state_73200) 4
    state_73201 state_73224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73201
  · exact cover_73224
#print axioms cover_73200

def state_73168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_73168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73168 := by
  apply coveredState_split_literal (state := state_73168) 2
    state_73169 state_73200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73169
  · exact cover_73200
#print axioms cover_73168

def state_73167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73167 := by
  apply coveredState_split_literal (state := state_73167) 3
    state_73168 state_73273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73168
  · exact cover_73273
#print axioms cover_73167

def state_73157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73157 := by
  apply coveredState_split_literal (state := state_73157) 1
    state_73158 state_73167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73158
  · exact cover_73167
#print axioms cover_73157

def state_73145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73145 := by
  apply coveredState_split_literal (state := state_73145) 0
    state_73146 state_73157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73146
  · exact cover_73157
#print axioms cover_73145

def state_73144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
theorem cover_73144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73144 := by
  apply coveredState_split_literal (state := state_73144) 4
    state_73145 state_73280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73145
  · exact cover_73280
#print axioms cover_73144

def state_73331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_73331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73331 := by
  apply coveredState_split_literal (state := state_73331) 4
    state_73332 state_73381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73332
  · exact cover_73381
#print axioms cover_73331

def state_73143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_73143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73143 := by
  apply coveredState_split_literal (state := state_73143) 2
    state_73144 state_73331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73144
  · exact cover_73331
#print axioms cover_73143

def state_73142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73142 := by
  apply coveredState_split_literal (state := state_73142) 3
    state_73143 state_73410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73143
  · exact cover_73410
#print axioms cover_73142

def state_73462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 41)))
theorem cover_73462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73462 := by
  apply coveredState_split_literal (state := state_73462) 3
    state_73463 state_73514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73463
  · exact cover_73514
#print axioms cover_73462

def state_73460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 20)))
theorem cover_73460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73460 := by
  apply coveredState_split_literal (state := state_73460) 4
    state_73461 state_73462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73461
  · exact cover_73462
#print axioms cover_73460

def state_73430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_73430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73430 := by
  apply coveredState_split_literal (state := state_73430) 2
    state_73431 state_73460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73431
  · exact cover_73460
#print axioms cover_73430

def state_73429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_73429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73429 := by
  apply coveredState_split_literal (state := state_73429) 1
    state_73430 state_73529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73430
  · exact cover_73529
#print axioms cover_73429

def state_73428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73428 := by
  apply coveredState_split_literal (state := state_73428) 3
    state_73429 state_73538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73429
  · exact cover_73538
#print axioms cover_73428

def state_73420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73420 := by
  apply coveredState_split_literal (state := state_73420) 0
    state_73421 state_73428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73421
  · exact cover_73428
#print axioms cover_73420

def state_73419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
theorem cover_73419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73419 := by
  apply coveredState_split_literal (state := state_73419) 4
    state_73420 state_73547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73420
  · exact cover_73547
#print axioms cover_73419

def state_73608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
theorem cover_73608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73608 := by
  apply coveredState_split_literal (state := state_73608) 0
    state_73609 state_73628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73609
  · exact cover_73628
#print axioms cover_73608

def state_73580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_73580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73580 := by
  apply coveredState_split_literal (state := state_73580) 4
    state_73581 state_73608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73581
  · exact cover_73608
#print axioms cover_73580

def state_73418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_73418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73418 := by
  apply coveredState_split_literal (state := state_73418) 2
    state_73419 state_73580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73419
  · exact cover_73580
#print axioms cover_73418

def state_73417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73417 := by
  apply coveredState_split_literal (state := state_73417) 3
    state_73418 state_73689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73418
  · exact cover_73689
#print axioms cover_73417

def state_73141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73141 := by
  apply coveredState_split_literal (state := state_73141) 1
    state_73142 state_73417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73142
  · exact cover_73417
#print axioms cover_73141
end Mub6.Numerical.CircleFullPrototype.Forest
