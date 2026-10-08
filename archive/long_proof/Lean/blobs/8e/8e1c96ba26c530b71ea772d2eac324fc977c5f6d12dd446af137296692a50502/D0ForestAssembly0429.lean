import D0FullInterface
import D0ForestAssembly0425
import D0ForestAssembly0426
import D0ForestAssembly0427
import D0ForestAssembly0428
import D0ForestChunk1666
import D0ForestChunk1677
import D0ForestChunk1678
import D0ForestChunk1679
import D0ForestChunk1680
import D0ForestChunk1681
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2275898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 60)))
theorem cover_2275898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275898 := by
  apply coveredState_split_literal (state := state_2275898) 2
    state_2275899 state_2275926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275899
  · exact cover_2275926
#print axioms cover_2275898

def state_2275897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2275897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275897 := by
  apply coveredState_split_literal (state := state_2275897) 4
    state_2275898 state_2276021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275898
  · exact cover_2276021
#print axioms cover_2275897

def state_2275889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2275889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275889 := by
  apply coveredState_split_literal (state := state_2275889) 1
    state_2275890 state_2275897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275890
  · exact cover_2275897
#print axioms cover_2275889

def state_2275823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2275823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275823 := by
  apply coveredState_split_literal (state := state_2275823) 0
    state_2275824 state_2275889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275824
  · exact cover_2275889
#print axioms cover_2275823

def state_2275822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 30)))
theorem cover_2275822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275822 := by
  apply coveredState_split_literal (state := state_2275822) 3
    state_2275823 state_2276036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275823
  · exact cover_2276036
#print axioms cover_2275822

def state_2276092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2276092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276092 := by
  apply coveredState_split_literal (state := state_2276092) 1
    state_2276093 state_2276096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276093
  · exact cover_2276096
#print axioms cover_2276092

def state_2276080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2276080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276080 := by
  apply coveredState_split_literal (state := state_2276080) 0
    state_2276081 state_2276092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276081
  · exact cover_2276092
#print axioms cover_2276080

def state_2276079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 30)))
theorem cover_2276079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276079 := by
  apply coveredState_split_literal (state := state_2276079) 3
    state_2276080 state_2276159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276080
  · exact cover_2276159
#print axioms cover_2276079

def state_2275821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
theorem cover_2275821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275821 := by
  apply coveredState_split_literal (state := state_2275821) 2
    state_2275822 state_2276079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275822
  · exact cover_2276079
#print axioms cover_2275821

def state_2275820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2275820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275820 := by
  apply coveredState_split_literal (state := state_2275820) 4
    state_2275821 state_2276186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275821
  · exact cover_2276186
#print axioms cover_2275820

def state_2275808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2275808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275808 := by
  apply coveredState_split_literal (state := state_2275808) 1
    state_2275809 state_2275820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275809
  · exact cover_2275820
#print axioms cover_2275808

def state_2276228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
theorem cover_2276228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276228 := by
  apply coveredState_split_literal (state := state_2276228) 2
    state_2276229 state_2276286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276229
  · exact cover_2276286
#print axioms cover_2276228

def state_2276227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2276227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276227 := by
  apply coveredState_split_literal (state := state_2276227) 4
    state_2276228 state_2276321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276228
  · exact cover_2276321
#print axioms cover_2276227

def state_2276223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2276223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276223 := by
  apply coveredState_split_literal (state := state_2276223) 1
    state_2276224 state_2276227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276224
  · exact cover_2276227
#print axioms cover_2276223

def state_2275807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2275807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275807 := by
  apply coveredState_split_literal (state := state_2275807) 0
    state_2275808 state_2276223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275808
  · exact cover_2276223
#print axioms cover_2275807

def state_2275806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 15)))
theorem cover_2275806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275806 := by
  apply coveredState_split_literal (state := state_2275806) 3
    state_2275807 state_2276360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275807
  · exact cover_2276360
#print axioms cover_2275806

def state_2275746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
theorem cover_2275746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275746 := by
  apply coveredState_split_literal (state := state_2275746) 2
    state_2275747 state_2275806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2275747
  · exact cover_2275806
#print axioms cover_2275746

def state_2274026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2274026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274026 := by
  apply coveredState_split_literal (state := state_2274026) 4
    state_2274027 state_2275746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274027
  · exact cover_2275746
#print axioms cover_2274026

def state_2273256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2273256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273256 := by
  apply coveredState_split_literal (state := state_2273256) 3
    state_2273257 state_2274026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273257
  · exact cover_2274026
#print axioms cover_2273256

def state_2273144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2273144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273144 := by
  apply coveredState_split_literal (state := state_2273144) 2
    state_2273145 state_2273256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273145
  · exact cover_2273256
#print axioms cover_2273144

def state_2273090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2273090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273090 := by
  apply coveredState_split_literal (state := state_2273090) 1
    state_2273091 state_2273144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273091
  · exact cover_2273144
#print axioms cover_2273090

def state_2276410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2276410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276410 := by
  apply coveredState_split_literal (state := state_2276410) 4
    state_2276411 state_2276428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276411
  · exact cover_2276428
#print axioms cover_2276410

def state_2276409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2276409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276409 := by
  apply coveredState_split_literal (state := state_2276409) 3
    state_2276410 state_2276487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276410
  · exact cover_2276487
#print axioms cover_2276409

def state_2276403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2276403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276403 := by
  apply coveredState_split_literal (state := state_2276403) 2
    state_2276404 state_2276409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276404
  · exact cover_2276409
#print axioms cover_2276403

def state_2276391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2276391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276391 := by
  apply coveredState_split_literal (state := state_2276391) 1
    state_2276392 state_2276403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276392
  · exact cover_2276403
#print axioms cover_2276391

def state_2273089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2273089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273089 := by
  apply coveredState_split_literal (state := state_2273089) 0
    state_2273090 state_2276391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273090
  · exact cover_2276391
#print axioms cover_2273089

def state_2272669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2272669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272669 := by
  apply coveredState_split_literal (state := state_2272669) 4
    state_2272670 state_2273089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272670
  · exact cover_2273089
#print axioms cover_2272669

def state_2272447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2272447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272447 := by
  apply coveredState_split_literal (state := state_2272447) 3
    state_2272448 state_2272669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272448
  · exact cover_2272669
#print axioms cover_2272447

def state_2272363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2272363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272363 := by
  apply coveredState_split_literal (state := state_2272363) 2
    state_2272364 state_2272447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272364
  · exact cover_2272447
#print axioms cover_2272363

def state_2276535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_2276535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276535 := by
  apply coveredState_split_literal (state := state_2276535) 4
    state_2276536 state_2276551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276536
  · exact cover_2276551
#print axioms cover_2276535

def state_2276644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_2276644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276644 := by
  apply coveredState_split_literal (state := state_2276644) 3
    state_2276645 state_2276666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276645
  · exact cover_2276666
#print axioms cover_2276644

def state_2276602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2276602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276602 := by
  apply coveredState_split_literal (state := state_2276602) 2
    state_2276603 state_2276644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276603
  · exact cover_2276644
#print axioms cover_2276602
end Mub6.Numerical.CircleFullD0.Forest
