import CircleFullInterface
import CircleForestAssembly0416
import CircleForestAssembly0417
import CircleForestChunk1624
import CircleForestChunk1632
import CircleForestChunk1633
import CircleForestChunk1634
import CircleForestChunk1635
import CircleForestChunk1636
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2264726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2264726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264726 := by
  apply coveredState_split_literal (state := state_2264726) 2
    state_2264727 state_2264842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264727
  · exact cover_2264842
#print axioms cover_2264726

def state_2264552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2264552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264552 := by
  apply coveredState_split_literal (state := state_2264552) 3
    state_2264553 state_2264726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264553
  · exact cover_2264726
#print axioms cover_2264552

def state_2264452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2264452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264452 := by
  apply coveredState_split_literal (state := state_2264452) 4
    state_2264453 state_2264552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264453
  · exact cover_2264552
#print axioms cover_2264452

def state_2264170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2264170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264170 := by
  apply coveredState_split_literal (state := state_2264170) 0
    state_2264171 state_2264452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264171
  · exact cover_2264452
#print axioms cover_2264170

def state_2263286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2263286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263286 := by
  apply coveredState_split_literal (state := state_2263286) 1
    state_2263287 state_2264170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263287
  · exact cover_2264170
#print axioms cover_2263286

def state_2263206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2263206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263206 := by
  apply coveredState_split_literal (state := state_2263206) 3
    state_2263207 state_2263286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263207
  · exact cover_2263286
#print axioms cover_2263206

def state_2263205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2263205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263205 := by
  apply coveredState_split_literal (state := state_2263205) 2
    state_2263206 state_2264947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263206
  · exact cover_2264947
#print axioms cover_2263205

def state_2265051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
theorem cover_2265051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265051 := by
  apply coveredState_split_literal (state := state_2265051) 2
    state_2265052 state_2265099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265052
  · exact cover_2265099
#print axioms cover_2265051

def state_2265050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2265050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265050 := by
  apply coveredState_split_literal (state := state_2265050) 3
    state_2265051 state_2265120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265051
  · exact cover_2265120
#print axioms cover_2265050

def state_2265022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2265022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265022 := by
  apply coveredState_split_literal (state := state_2265022) 4
    state_2265023 state_2265050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265023
  · exact cover_2265050
#print axioms cover_2265022

def state_2265021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2265021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265021 := by
  apply coveredState_split_literal (state := state_2265021) 0
    state_2265022 state_2265171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265022
  · exact cover_2265171
#print axioms cover_2265021

def state_2265013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2265013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265013 := by
  apply coveredState_split_literal (state := state_2265013) 1
    state_2265014 state_2265021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265014
  · exact cover_2265021
#print axioms cover_2265013

def state_2264995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2264995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264995 := by
  apply coveredState_split_literal (state := state_2264995) 3
    state_2264996 state_2265013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264996
  · exact cover_2265013
#print axioms cover_2264995

def state_2264994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2264994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264994 := by
  apply coveredState_split_literal (state := state_2264994) 2
    state_2264995 state_2265188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264995
  · exact cover_2265188
#print axioms cover_2264994

def state_2263204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2263204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263204 := by
  apply coveredState_split_literal (state := state_2263204) 0
    state_2263205 state_2264994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263205
  · exact cover_2264994
#print axioms cover_2263204

def state_2263166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2263166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263166 := by
  apply coveredState_split_literal (state := state_2263166) 4
    state_2263167 state_2263204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263167
  · exact cover_2263204
#print axioms cover_2263166

def state_2265225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2265225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265225 := by
  apply coveredState_split_literal (state := state_2265225) 3
    state_2265226 state_2265241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265226
  · exact cover_2265241
#print axioms cover_2265225

def state_2265224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2265224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265224 := by
  apply coveredState_split_literal (state := state_2265224) 2
    state_2265225 state_2265292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265225
  · exact cover_2265292
#print axioms cover_2265224

def state_2265334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2265334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265334 := by
  apply coveredState_split_literal (state := state_2265334) 0
    state_2265335 state_2265392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265335
  · exact cover_2265392
#print axioms cover_2265334

def state_2265308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2265308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265308 := by
  apply coveredState_split_literal (state := state_2265308) 3
    state_2265309 state_2265334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265309
  · exact cover_2265334
#print axioms cover_2265308

def state_2265307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2265307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265307 := by
  apply coveredState_split_literal (state := state_2265307) 2
    state_2265308 state_2265447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265308
  · exact cover_2265447
#print axioms cover_2265307

def state_2265223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2265223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265223 := by
  apply coveredState_split_literal (state := state_2265223) 0
    state_2265224 state_2265307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265224
  · exact cover_2265307
#print axioms cover_2265223

def state_2265207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2265207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265207 := by
  apply coveredState_split_literal (state := state_2265207) 4
    state_2265208 state_2265223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265208
  · exact cover_2265223
#print axioms cover_2265207

def state_2263165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2263165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263165 := by
  apply coveredState_split_literal (state := state_2263165) 1
    state_2263166 state_2265207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263166
  · exact cover_2265207
#print axioms cover_2263165

def state_2265596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
theorem cover_2265596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265596 := by
  apply coveredState_split_literal (state := state_2265596) 1
    state_2265597 state_2265628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265597
  · exact cover_2265628
#print axioms cover_2265596

def state_2265595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
theorem cover_2265595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265595 := by
  apply coveredState_split_literal (state := state_2265595) 2
    state_2265596 state_2265681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265596
  · exact cover_2265681
#print axioms cover_2265595

def state_2265594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2265594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265594 := by
  apply coveredState_split_literal (state := state_2265594) 3
    state_2265595 state_2265726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265595
  · exact cover_2265726
#print axioms cover_2265594

def state_2265536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2265536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265536 := by
  apply coveredState_split_literal (state := state_2265536) 4
    state_2265537 state_2265594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265537
  · exact cover_2265594
#print axioms cover_2265536

def state_2265535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2265535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265535 := by
  apply coveredState_split_literal (state := state_2265535) 0
    state_2265536 state_2265757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265536
  · exact cover_2265757
#print axioms cover_2265535

def state_2265826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2265826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265826 := by
  apply coveredState_split_literal (state := state_2265826) 4
    state_2265827 state_2265858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265827
  · exact cover_2265858
#print axioms cover_2265826

def state_2265770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2265770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265770 := by
  apply coveredState_split_literal (state := state_2265770) 0
    state_2265771 state_2265826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265771
  · exact cover_2265826
#print axioms cover_2265770

def state_2265534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2265534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265534 := by
  apply coveredState_split_literal (state := state_2265534) 1
    state_2265535 state_2265770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265535
  · exact cover_2265770
#print axioms cover_2265534
end Mub6.Numerical.CircleFullD0.Forest
