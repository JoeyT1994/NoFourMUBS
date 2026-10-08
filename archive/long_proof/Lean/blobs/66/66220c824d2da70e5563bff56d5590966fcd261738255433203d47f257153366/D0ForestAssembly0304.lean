import D0FullInterface
import D0ForestAssembly0301
import D0ForestAssembly0303
import D0ForestChunk1168
import D0ForestChunk1169
import D0ForestChunk1170
import D0ForestChunk1171
import D0ForestChunk1172
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1580996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1580996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580996 := by
  apply coveredState_split_literal (state := state_1580996) 1
    state_1580997 state_1581006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580997
  · exact cover_1581006
#print axioms cover_1580996

def state_1580995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1580995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580995 := by
  apply coveredState_split_literal (state := state_1580995) 0
    state_1580996 state_1581067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580996
  · exact cover_1581067
#print axioms cover_1580995

def state_1580994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 103)))
theorem cover_1580994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580994 := by
  apply coveredState_split_literal (state := state_1580994) 3
    state_1580995 state_1581074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580995
  · exact cover_1581074
#print axioms cover_1580994

def state_1580962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 51)))
theorem cover_1580962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580962 := by
  apply coveredState_split_literal (state := state_1580962) 4
    state_1580963 state_1580994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580963
  · exact cover_1580994
#print axioms cover_1580962

def state_1580912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1580912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580912 := by
  apply coveredState_split_literal (state := state_1580912) 2
    state_1580913 state_1580962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580913
  · exact cover_1580962
#print axioms cover_1580912

def state_1580894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1580894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580894 := by
  apply coveredState_split_literal (state := state_1580894) 1
    state_1580895 state_1580912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580895
  · exact cover_1580912
#print axioms cover_1580894

def state_1580740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
theorem cover_1580740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580740 := by
  apply coveredState_split_literal (state := state_1580740) 0
    state_1580741 state_1580894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1580741
  · exact cover_1580894
#print axioms cover_1580740

def state_1577750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 51)))
theorem cover_1577750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577750 := by
  apply coveredState_split_literal (state := state_1577750) 3
    state_1577751 state_1580740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577751
  · exact cover_1580740
#print axioms cover_1577750

def state_1577658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
theorem cover_1577658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577658 := by
  apply coveredState_split_literal (state := state_1577658) 4
    state_1577659 state_1577750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577659
  · exact cover_1577750
#print axioms cover_1577658

def state_1581097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 51)))
theorem cover_1581097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581097 := by
  apply coveredState_split_literal (state := state_1581097) 3
    state_1581098 state_1581143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581098
  · exact cover_1581143
#print axioms cover_1581097

def state_1581093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 25)))
theorem cover_1581093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581093 := by
  apply coveredState_split_literal (state := state_1581093) 4
    state_1581094 state_1581097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581094
  · exact cover_1581097
#print axioms cover_1581093

def state_1577657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577657 := by
  apply coveredState_split_literal (state := state_1577657) 2
    state_1577658 state_1581093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577658
  · exact cover_1581093
#print axioms cover_1577657

def state_1581188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 50)))
theorem cover_1581188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581188 := by
  apply coveredState_split_literal (state := state_1581188) 0
    state_1581189 state_1581232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581189
  · exact cover_1581232
#print axioms cover_1581188

def state_1581168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 50)))
theorem cover_1581168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581168 := by
  apply coveredState_split_literal (state := state_1581168) 3
    state_1581169 state_1581188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581169
  · exact cover_1581188
#print axioms cover_1581168

def state_1581299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 103)))
theorem cover_1581299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581299 := by
  apply coveredState_split_literal (state := state_1581299) 3
    state_1581300 state_1581313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581300
  · exact cover_1581313
#print axioms cover_1581299

def state_1581267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
theorem cover_1581267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581267 := by
  apply coveredState_split_literal (state := state_1581267) 4
    state_1581268 state_1581299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581268
  · exact cover_1581299
#print axioms cover_1581267

def state_1581420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 103)))
theorem cover_1581420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581420 := by
  apply coveredState_split_literal (state := state_1581420) 3
    state_1581421 state_1581432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581421
  · exact cover_1581432
#print axioms cover_1581420

def state_1581370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
theorem cover_1581370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581370 := by
  apply coveredState_split_literal (state := state_1581370) 4
    state_1581371 state_1581420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581371
  · exact cover_1581420
#print axioms cover_1581370

def state_1581266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1581266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581266 := by
  apply coveredState_split_literal (state := state_1581266) 2
    state_1581267 state_1581370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581267
  · exact cover_1581370
#print axioms cover_1581266

def state_1581265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1581265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581265 := by
  apply coveredState_split_literal (state := state_1581265) 1
    state_1581266 state_1581487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581266
  · exact cover_1581487
#print axioms cover_1581265

def state_1581529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 103)))
theorem cover_1581529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581529 := by
  apply coveredState_split_literal (state := state_1581529) 3
    state_1581530 state_1581537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581530
  · exact cover_1581537
#print axioms cover_1581529

def state_1581515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
theorem cover_1581515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581515 := by
  apply coveredState_split_literal (state := state_1581515) 4
    state_1581516 state_1581529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581516
  · exact cover_1581529
#print axioms cover_1581515

def state_1581509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1581509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581509 := by
  apply coveredState_split_literal (state := state_1581509) 2
    state_1581510 state_1581515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581510
  · exact cover_1581515
#print axioms cover_1581509

def state_1581508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1581508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581508 := by
  apply coveredState_split_literal (state := state_1581508) 1
    state_1581509 state_1581598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581509
  · exact cover_1581598
#print axioms cover_1581508

def state_1581264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1581264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581264 := by
  apply coveredState_split_literal (state := state_1581264) 0
    state_1581265 state_1581508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581265
  · exact cover_1581508
#print axioms cover_1581264

def state_1581614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 51)))
theorem cover_1581614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581614 := by
  apply coveredState_split_literal (state := state_1581614) 4
    state_1581615 state_1581642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581615
  · exact cover_1581642
#print axioms cover_1581614

def state_1581681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 102)))
theorem cover_1581681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581681 := by
  apply coveredState_split_literal (state := state_1581681) 0
    state_1581682 state_1581695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581682
  · exact cover_1581695
#print axioms cover_1581681

def state_1581680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 102)))
theorem cover_1581680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581680 := by
  apply coveredState_split_literal (state := state_1581680) 3
    state_1581681 state_1581752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581681
  · exact cover_1581752
#print axioms cover_1581680

def state_1581786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 68) else (if j.val < 3 then 194 else (if j.val < 4 then 106 else 103)))
theorem cover_1581786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581786 := by
  apply coveredState_split_literal (state := state_1581786) 4
    state_1581787 state_1581836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581787
  · exact cover_1581836
#print axioms cover_1581786

def state_1581785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 68) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1581785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581785 := by
  apply coveredState_split_literal (state := state_1581785) 2
    state_1581786 state_1581855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581786
  · exact cover_1581855
#print axioms cover_1581785

def state_1581784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1581784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581784 := by
  apply coveredState_split_literal (state := state_1581784) 1
    state_1581785 state_1581870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581785
  · exact cover_1581870
#print axioms cover_1581784

def state_1581776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
theorem cover_1581776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581776 := by
  apply coveredState_split_literal (state := state_1581776) 0
    state_1581777 state_1581784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581777
  · exact cover_1581784
#print axioms cover_1581776
end Mub6.Numerical.CircleFullD0.Forest
