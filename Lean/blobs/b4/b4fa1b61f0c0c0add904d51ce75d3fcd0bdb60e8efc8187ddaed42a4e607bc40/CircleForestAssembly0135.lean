import CircleFullInterface
import CircleForestAssembly0132
import CircleForestAssembly0133
import CircleForestAssembly0134
import CircleForestChunk0523
import CircleForestChunk0525
import CircleForestChunk0530
import CircleForestChunk0531
import CircleForestChunk0532
import CircleForestChunk0533
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_287610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_287610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287610 := by
  apply coveredState_split_literal (state := state_287610) 0
    state_287611 state_288732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287611
  · exact cover_288732
#print axioms cover_287610

def state_287600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_287600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287600 := by
  apply coveredState_split_literal (state := state_287600) 2
    state_287601 state_287610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287601
  · exact cover_287610
#print axioms cover_287600

def state_287502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_287502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287502 := by
  apply coveredState_split_literal (state := state_287502) 1
    state_287503 state_287600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287503
  · exact cover_287600
#print axioms cover_287502

def state_287501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_287501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287501 := by
  apply coveredState_split_literal (state := state_287501) 4
    state_287502 state_288763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287502
  · exact cover_288763
#print axioms cover_287501

def state_287307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_287307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287307 := by
  apply coveredState_split_literal (state := state_287307) 3
    state_287308 state_287501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287308
  · exact cover_287501
#print axioms cover_287307

def state_287297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_287297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287297 := by
  apply coveredState_split_literal (state := state_287297) 2
    state_287298 state_287307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287298
  · exact cover_287307
#print axioms cover_287297

def state_287123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_287123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287123 := by
  apply coveredState_split_literal (state := state_287123) 1
    state_287124 state_287297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287124
  · exact cover_287297
#print axioms cover_287123

def state_285999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_285999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285999 := by
  apply coveredState_split_literal (state := state_285999) 0
    state_286000 state_287123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286000
  · exact cover_287123
#print axioms cover_285999

def state_288814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_288814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288814 := by
  apply coveredState_split_literal (state := state_288814) 0
    state_288815 state_288848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288815
  · exact cover_288848
#print axioms cover_288814

def state_285998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_285998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285998 := by
  apply coveredState_split_literal (state := state_285998) 4
    state_285999 state_288814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285999
  · exact cover_288814
#print axioms cover_285998

def state_285918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_285918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285918 := by
  apply coveredState_split_literal (state := state_285918) 3
    state_285919 state_285998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285919
  · exact cover_285998
#print axioms cover_285918

def state_288886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_288886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288886 := by
  apply coveredState_split_literal (state := state_288886) 1
    state_288887 state_288918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288887
  · exact cover_288918
#print axioms cover_288886

def state_288885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_288885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288885 := by
  apply coveredState_split_literal (state := state_288885) 0
    state_288886 state_288969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288886
  · exact cover_288969
#print axioms cover_288885

def state_288995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_288995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288995 := by
  apply coveredState_split_literal (state := state_288995) 1
    state_288996 state_289029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288996
  · exact cover_289029
#print axioms cover_288995

def state_288994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_288994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288994 := by
  apply coveredState_split_literal (state := state_288994) 0
    state_288995 state_289060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288995
  · exact cover_289060
#print axioms cover_288994

def state_288884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_288884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288884 := by
  apply coveredState_split_literal (state := state_288884) 4
    state_288885 state_288994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288885
  · exact cover_288994
#print axioms cover_288884

def state_289224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_289224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289224 := by
  apply coveredState_split_literal (state := state_289224) 3
    state_289225 state_289286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289225
  · exact cover_289286
#print axioms cover_289224

def state_289223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_289223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289223 := by
  apply coveredState_split_literal (state := state_289223) 2
    state_289224 state_289289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289224
  · exact cover_289289
#print axioms cover_289223

def state_289213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_289213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289213 := by
  apply coveredState_split_literal (state := state_289213) 1
    state_289214 state_289223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289214
  · exact cover_289223
#print axioms cover_289213

def state_289211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_289211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289211 := by
  apply coveredState_split_literal (state := state_289211) 0
    state_289212 state_289213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289212
  · exact cover_289213
#print axioms cover_289211

def state_289210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_289210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289210 := by
  apply coveredState_split_literal (state := state_289210) 4
    state_289211 state_289294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289211
  · exact cover_289294
#print axioms cover_289210

def state_289156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_289156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289156 := by
  apply coveredState_split_literal (state := state_289156) 3
    state_289157 state_289210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289157
  · exact cover_289210
#print axioms cover_289156

def state_289155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289155 := by
  apply coveredState_split_literal (state := state_289155) 2
    state_289156 state_289295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289156
  · exact cover_289295
#print axioms cover_289155

def state_289099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289099 := by
  apply coveredState_split_literal (state := state_289099) 1
    state_289100 state_289155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289100
  · exact cover_289155
#print axioms cover_289099

def state_289445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 10)))
theorem cover_289445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289445 := by
  apply coveredState_split_literal (state := state_289445) 2
    state_289446 state_289497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289446
  · exact cover_289497
#print axioms cover_289445

def state_289444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_289444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289444 := by
  apply coveredState_split_literal (state := state_289444) 3
    state_289445 state_289522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289445
  · exact cover_289522
#print axioms cover_289444

def state_289443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_289443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289443 := by
  apply coveredState_split_literal (state := state_289443) 1
    state_289444 state_289533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289444
  · exact cover_289533
#print axioms cover_289443

def state_289442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_289442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289442 := by
  apply coveredState_split_literal (state := state_289442) 0
    state_289443 state_289554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289443
  · exact cover_289554
#print axioms cover_289442

def state_289441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_289441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289441 := by
  apply coveredState_split_literal (state := state_289441) 4
    state_289442 state_289591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289442
  · exact cover_289591
#print axioms cover_289441

def state_289440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_289440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289440 := by
  apply coveredState_split_literal (state := state_289440) 2
    state_289441 state_289608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289441
  · exact cover_289608
#print axioms cover_289440

def state_289382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_289382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289382 := by
  apply coveredState_split_literal (state := state_289382) 4
    state_289383 state_289440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289383
  · exact cover_289440
#print axioms cover_289382

def state_289320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_289320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289320 := by
  apply coveredState_split_literal (state := state_289320) 3
    state_289321 state_289382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289321
  · exact cover_289382
#print axioms cover_289320
end Mub6.Numerical.CircleFullPrototype.Forest
