import D0FullInterface
import D0ForestAssembly0300
import D0ForestChunk1153
import D0ForestChunk1154
import D0ForestChunk1155
import D0ForestChunk1156
import D0ForestChunk1157
import D0ForestChunk1158
import D0ForestChunk1159
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1577369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 51)))
theorem cover_1577369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577369 := by
  apply coveredState_split_literal (state := state_1577369) 3
    state_1577370 state_1577545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577370
  · exact cover_1577545
#print axioms cover_1577369

def state_1577325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
theorem cover_1577325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577325 := by
  apply coveredState_split_literal (state := state_1577325) 4
    state_1577326 state_1577369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577326
  · exact cover_1577369
#print axioms cover_1577325

def state_1577324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577324 := by
  apply coveredState_split_literal (state := state_1577324) 2
    state_1577325 state_1577562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577325
  · exact cover_1577562
#print axioms cover_1577324

def state_1577579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577579 := by
  apply coveredState_split_literal (state := state_1577579) 2
    state_1577580 state_1577635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577580
  · exact cover_1577635
#print axioms cover_1577579

def state_1577323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577323 := by
  apply coveredState_split_literal (state := state_1577323) 1
    state_1577324 state_1577579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577324
  · exact cover_1577579
#print axioms cover_1577323

def state_1577659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 50)))
theorem cover_1577659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577659 := by
  apply coveredState_split_literal (state := state_1577659) 3
    state_1577660 state_1577705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577660
  · exact cover_1577705
#print axioms cover_1577659

def state_1577756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 102)))
theorem cover_1577756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577756 := by
  apply coveredState_split_literal (state := state_1577756) 0
    state_1577757 state_1577800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577757
  · exact cover_1577800
#print axioms cover_1577756

def state_1577755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 102)))
theorem cover_1577755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577755 := by
  apply coveredState_split_literal (state := state_1577755) 3
    state_1577756 state_1577821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577756
  · exact cover_1577821
#print axioms cover_1577755

def state_1577863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 208 else 206)))
theorem cover_1577863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577863 := by
  apply coveredState_split_literal (state := state_1577863) 0
    state_1577864 state_1577889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577864
  · exact cover_1577889
#print axioms cover_1577863

def state_1577940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
theorem cover_1577940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577940 := by
  apply coveredState_split_literal (state := state_1577940) 0
    state_1577941 state_1577962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577941
  · exact cover_1577962
#print axioms cover_1577940

def state_1577862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 206)))
theorem cover_1577862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577862 := by
  apply coveredState_split_literal (state := state_1577862) 3
    state_1577863 state_1577940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577863
  · exact cover_1577940
#print axioms cover_1577862

def state_1578015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 207)))
theorem cover_1578015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578015 := by
  apply coveredState_split_literal (state := state_1578015) 3
    state_1578016 state_1578061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578016
  · exact cover_1578061
#print axioms cover_1578015

def state_1577861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 103)))
theorem cover_1577861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577861 := by
  apply coveredState_split_literal (state := state_1577861) 4
    state_1577862 state_1578015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577862
  · exact cover_1578015
#print axioms cover_1577861

def state_1578123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 206)))
theorem cover_1578123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578123 := by
  apply coveredState_split_literal (state := state_1578123) 3
    state_1578124 state_1578159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578124
  · exact cover_1578159
#print axioms cover_1578123

def state_1578204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 207)))
theorem cover_1578204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578204 := by
  apply coveredState_split_literal (state := state_1578204) 3
    state_1578205 state_1578226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578205
  · exact cover_1578226
#print axioms cover_1578204

def state_1578122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 103)))
theorem cover_1578122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578122 := by
  apply coveredState_split_literal (state := state_1578122) 4
    state_1578123 state_1578204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578123
  · exact cover_1578204
#print axioms cover_1578122

def state_1577860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1577860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577860 := by
  apply coveredState_split_literal (state := state_1577860) 2
    state_1577861 state_1578122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577861
  · exact cover_1578122
#print axioms cover_1577860

def state_1577858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1577858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577858 := by
  apply coveredState_split_literal (state := state_1577858) 1
    state_1577859 state_1577860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577859
  · exact cover_1577860
#print axioms cover_1577858

def state_1578272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 103)))
theorem cover_1578272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578272 := by
  apply coveredState_split_literal (state := state_1578272) 4
    state_1578273 state_1578316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578273
  · exact cover_1578316
#print axioms cover_1578272

def state_1578346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 206)))
theorem cover_1578346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578346 := by
  apply coveredState_split_literal (state := state_1578346) 3
    state_1578347 state_1578368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578347
  · exact cover_1578368
#print axioms cover_1578346

def state_1578447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
theorem cover_1578447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578447 := by
  apply coveredState_split_literal (state := state_1578447) 0
    state_1578448 state_1578511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578448
  · exact cover_1578511
#print axioms cover_1578447

def state_1578415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 207)))
theorem cover_1578415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578415 := by
  apply coveredState_split_literal (state := state_1578415) 3
    state_1578416 state_1578447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578416
  · exact cover_1578447
#print axioms cover_1578415

def state_1578345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 103)))
theorem cover_1578345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578345 := by
  apply coveredState_split_literal (state := state_1578345) 4
    state_1578346 state_1578415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578346
  · exact cover_1578415
#print axioms cover_1578345

def state_1578271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1578271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578271 := by
  apply coveredState_split_literal (state := state_1578271) 2
    state_1578272 state_1578345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578272
  · exact cover_1578345
#print axioms cover_1578271

def state_1578269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1578269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578269 := by
  apply coveredState_split_literal (state := state_1578269) 1
    state_1578270 state_1578271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578270
  · exact cover_1578271
#print axioms cover_1578269

def state_1577857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1577857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577857 := by
  apply coveredState_split_literal (state := state_1577857) 0
    state_1577858 state_1578269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577858
  · exact cover_1578269
#print axioms cover_1577857

def state_1578544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1578544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578544 := by
  apply coveredState_split_literal (state := state_1578544) 1
    state_1578545 state_1578556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578545
  · exact cover_1578556
#print axioms cover_1578544

def state_1578518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1578518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578518 := by
  apply coveredState_split_literal (state := state_1578518) 0
    state_1578519 state_1578544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578519
  · exact cover_1578544
#print axioms cover_1578518

def state_1577856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 103)))
theorem cover_1577856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577856 := by
  apply coveredState_split_literal (state := state_1577856) 3
    state_1577857 state_1578518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577857
  · exact cover_1578518
#print axioms cover_1577856

def state_1577754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
theorem cover_1577754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577754 := by
  apply coveredState_split_literal (state := state_1577754) 4
    state_1577755 state_1577856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577755
  · exact cover_1577856
#print axioms cover_1577754

def state_1577753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577753 := by
  apply coveredState_split_literal (state := state_1577753) 2
    state_1577754 state_1578615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577754
  · exact cover_1578615
#print axioms cover_1577753

def state_1578675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 102)))
theorem cover_1578675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578675 := by
  apply coveredState_split_literal (state := state_1578675) 0
    state_1578676 state_1578737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578676
  · exact cover_1578737
#print axioms cover_1578675
end Mub6.Numerical.CircleFullD0.Forest
