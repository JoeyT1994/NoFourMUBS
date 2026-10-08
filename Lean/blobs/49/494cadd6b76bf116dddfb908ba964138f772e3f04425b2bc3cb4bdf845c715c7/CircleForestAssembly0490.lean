import CircleFullInterface
import CircleForestAssembly0489
import CircleForestChunk1924
import CircleForestChunk1925
import CircleForestChunk1926
import CircleForestChunk1927
import CircleForestChunk1928
import CircleForestChunk1929
import CircleForestChunk1930
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2334995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2334995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334995 := by
  apply coveredState_split_literal (state := state_2334995) 1
    state_2334996 state_2335017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334996
  · exact cover_2335017
#print axioms cover_2334995

def state_2334994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2334994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334994 := by
  apply coveredState_split_literal (state := state_2334994) 0
    state_2334995 state_2335070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334995
  · exact cover_2335070
#print axioms cover_2334994

def state_2334078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2334078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334078 := by
  apply coveredState_split_literal (state := state_2334078) 4
    state_2334079 state_2334994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334079
  · exact cover_2334994
#print axioms cover_2334078

def state_2335124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2335124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335124 := by
  apply coveredState_split_literal (state := state_2335124) 0
    state_2335125 state_2335188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335125
  · exact cover_2335188
#print axioms cover_2335124

def state_2335238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2335238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335238 := by
  apply coveredState_split_literal (state := state_2335238) 1
    state_2335239 state_2335260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335239
  · exact cover_2335260
#print axioms cover_2335238

def state_2335237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2335237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335237 := by
  apply coveredState_split_literal (state := state_2335237) 0
    state_2335238 state_2335307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335238
  · exact cover_2335307
#print axioms cover_2335237

def state_2335123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2335123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335123 := by
  apply coveredState_split_literal (state := state_2335123) 4
    state_2335124 state_2335237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335124
  · exact cover_2335237
#print axioms cover_2335123

def state_2334077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2334077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334077 := by
  apply coveredState_split_literal (state := state_2334077) 3
    state_2334078 state_2335123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334078
  · exact cover_2335123
#print axioms cover_2334077

def state_2335359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2335359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335359 := by
  apply coveredState_split_literal (state := state_2335359) 2
    state_2335360 state_2335411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335360
  · exact cover_2335411
#print axioms cover_2335359

def state_2335341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2335341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335341 := by
  apply coveredState_split_literal (state := state_2335341) 1
    state_2335342 state_2335359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335342
  · exact cover_2335359
#print axioms cover_2335341

def state_2335340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2335340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335340 := by
  apply coveredState_split_literal (state := state_2335340) 0
    state_2335341 state_2335452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335341
  · exact cover_2335452
#print axioms cover_2335340

def state_2335510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2335510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335510 := by
  apply coveredState_split_literal (state := state_2335510) 1
    state_2335511 state_2335526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335511
  · exact cover_2335526
#print axioms cover_2335510

def state_2335509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2335509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335509 := by
  apply coveredState_split_literal (state := state_2335509) 0
    state_2335510 state_2335579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335510
  · exact cover_2335579
#print axioms cover_2335509

def state_2335339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2335339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335339 := by
  apply coveredState_split_literal (state := state_2335339) 4
    state_2335340 state_2335509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335340
  · exact cover_2335509
#print axioms cover_2335339

def state_2335616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2335616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335616 := by
  apply coveredState_split_literal (state := state_2335616) 1
    state_2335617 state_2335632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335617
  · exact cover_2335632
#print axioms cover_2335616

def state_2335615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2335615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335615 := by
  apply coveredState_split_literal (state := state_2335615) 0
    state_2335616 state_2335683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335616
  · exact cover_2335683
#print axioms cover_2335615

def state_2335614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2335614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335614 := by
  apply coveredState_split_literal (state := state_2335614) 4
    state_2335615 state_2335722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335615
  · exact cover_2335722
#print axioms cover_2335614

def state_2335338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2335338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335338 := by
  apply coveredState_split_literal (state := state_2335338) 3
    state_2335339 state_2335614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335339
  · exact cover_2335614
#print axioms cover_2335338

def state_2334076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2334076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334076 := by
  apply coveredState_split_literal (state := state_2334076) 2
    state_2334077 state_2335338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334077
  · exact cover_2335338
#print axioms cover_2334076

def state_2335751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2335751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335751 := by
  apply coveredState_split_literal (state := state_2335751) 1
    state_2335752 state_2335813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335752
  · exact cover_2335813
#print axioms cover_2335751

def state_2335750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2335750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335750 := by
  apply coveredState_split_literal (state := state_2335750) 0
    state_2335751 state_2335824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335751
  · exact cover_2335824
#print axioms cover_2335750

def state_2335866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2335866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335866 := by
  apply coveredState_split_literal (state := state_2335866) 1
    state_2335867 state_2335926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335867
  · exact cover_2335926
#print axioms cover_2335866

def state_2335865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2335865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335865 := by
  apply coveredState_split_literal (state := state_2335865) 0
    state_2335866 state_2335959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335866
  · exact cover_2335959
#print axioms cover_2335865

def state_2335749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2335749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335749 := by
  apply coveredState_split_literal (state := state_2335749) 4
    state_2335750 state_2335865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335750
  · exact cover_2335865
#print axioms cover_2335749

def state_2336021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2336021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336021 := by
  apply coveredState_split_literal (state := state_2336021) 1
    state_2336022 state_2336049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336022
  · exact cover_2336049
#print axioms cover_2336021

def state_2336020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2336020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336020 := by
  apply coveredState_split_literal (state := state_2336020) 0
    state_2336021 state_2336104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336021
  · exact cover_2336104
#print axioms cover_2336020

def state_2336000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_2336000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336000 := by
  apply coveredState_split_literal (state := state_2336000) 4
    state_2336001 state_2336020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336001
  · exact cover_2336020
#print axioms cover_2336000

def state_2335970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2335970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335970 := by
  apply coveredState_split_literal (state := state_2335970) 3
    state_2335971 state_2336000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335971
  · exact cover_2336000
#print axioms cover_2335970

def state_2336253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2336253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336253 := by
  apply coveredState_split_literal (state := state_2336253) 3
    state_2336254 state_2336281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336254
  · exact cover_2336281
#print axioms cover_2336253

def state_2336193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2336193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336193 := by
  apply coveredState_split_literal (state := state_2336193) 4
    state_2336194 state_2336253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336194
  · exact cover_2336253
#print axioms cover_2336193

def state_2336192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336192 := by
  apply coveredState_split_literal (state := state_2336192) 2
    state_2336193 state_2336332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336193
  · exact cover_2336332
#print axioms cover_2336192

def state_2336182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336182 := by
  apply coveredState_split_literal (state := state_2336182) 1
    state_2336183 state_2336192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336183
  · exact cover_2336192
#print axioms cover_2336182
end Mub6.Numerical.CircleFullD0.Forest
