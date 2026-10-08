import CircleFullInterface
import CircleForestAssembly0012
import CircleForestChunk0048
import CircleForestChunk0050
import CircleForestChunk0051
import CircleForestChunk0052
import CircleForestChunk0053
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_11875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 9)))
theorem cover_11875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11875 := by
  apply coveredState_split_literal (state := state_11875) 3
    state_11876 state_12013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11876
  · exact cover_12013
#print axioms cover_11875

def state_11869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_11869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11869 := by
  apply coveredState_split_literal (state := state_11869) 2
    state_11870 state_11875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11870
  · exact cover_11875
#print axioms cover_11869

def state_11861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_11861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11861 := by
  apply coveredState_split_literal (state := state_11861) 1
    state_11862 state_11869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11862
  · exact cover_11869
#print axioms cover_11861

def state_11860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_11860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11860 := by
  apply coveredState_split_literal (state := state_11860) 0
    state_11861 state_12032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11861
  · exact cover_12032
#print axioms cover_11860

def state_11720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_11720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11720 := by
  apply coveredState_split_literal (state := state_11720) 4
    state_11721 state_11860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11721
  · exact cover_11860
#print axioms cover_11720

def state_11480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_11480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11480 := by
  apply coveredState_split_literal (state := state_11480) 3
    state_11481 state_11720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11481
  · exact cover_11720
#print axioms cover_11480

def state_11466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_11466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11466 := by
  apply coveredState_split_literal (state := state_11466) 2
    state_11467 state_11480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11467
  · exact cover_11480
#print axioms cover_11466

def state_11450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_11450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11450 := by
  apply coveredState_split_literal (state := state_11450) 1
    state_11451 state_11466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11451
  · exact cover_11466
#print axioms cover_11450

def state_11449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_11449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11449 := by
  apply coveredState_split_literal (state := state_11449) 0
    state_11450 state_12047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11450
  · exact cover_12047
#print axioms cover_11449

def state_11448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_11448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11448 := by
  apply coveredState_split_literal (state := state_11448) 4
    state_11449 state_12090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11449
  · exact cover_12090
#print axioms cover_11448

def state_11447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_11447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11447 := by
  apply coveredState_split_literal (state := state_11447) 3
    state_11448 state_12105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11448
  · exact cover_12105
#print axioms cover_11447

def state_12166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
theorem cover_12166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12166 := by
  apply coveredState_split_literal (state := state_12166) 1
    state_12167 state_12180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12167
  · exact cover_12180
#print axioms cover_12166

def state_12165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
theorem cover_12165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12165 := by
  apply coveredState_split_literal (state := state_12165) 0
    state_12166 state_12241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12166
  · exact cover_12241
#print axioms cover_12165

def state_12151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 4)))
theorem cover_12151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12151 := by
  apply coveredState_split_literal (state := state_12151) 4
    state_12152 state_12165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12152
  · exact cover_12165
#print axioms cover_12151

def state_12257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
theorem cover_12257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12257 := by
  apply coveredState_split_literal (state := state_12257) 1
    state_12258 state_12269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12258
  · exact cover_12269
#print axioms cover_12257

def state_12256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
theorem cover_12256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12256 := by
  apply coveredState_split_literal (state := state_12256) 0
    state_12257 state_12326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12257
  · exact cover_12326
#print axioms cover_12256

def state_12254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 4)))
theorem cover_12254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12254 := by
  apply coveredState_split_literal (state := state_12254) 4
    state_12255 state_12256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12255
  · exact cover_12256
#print axioms cover_12254

def state_12150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 4)))
theorem cover_12150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12150 := by
  apply coveredState_split_literal (state := state_12150) 3
    state_12151 state_12254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12151
  · exact cover_12254
#print axioms cover_12150

def state_12149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_12149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12149 := by
  apply coveredState_split_literal (state := state_12149) 2
    state_12150 state_12351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12150
  · exact cover_12351
#print axioms cover_12149

def state_12127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_12127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12127 := by
  apply coveredState_split_literal (state := state_12127) 1
    state_12128 state_12149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12128
  · exact cover_12149
#print axioms cover_12127

def state_12126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_12126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12126 := by
  apply coveredState_split_literal (state := state_12126) 0
    state_12127 state_12364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12127
  · exact cover_12364
#print axioms cover_12126

def state_12428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_12428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12428 := by
  apply coveredState_split_literal (state := state_12428) 4
    state_12429 state_12490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12429
  · exact cover_12490
#print axioms cover_12428

def state_12410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_12410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12410 := by
  apply coveredState_split_literal (state := state_12410) 1
    state_12411 state_12428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12411
  · exact cover_12428
#print axioms cover_12410

def state_12409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_12409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12409 := by
  apply coveredState_split_literal (state := state_12409) 0
    state_12410 state_12507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12410
  · exact cover_12507
#print axioms cover_12409

def state_12125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_12125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12125 := by
  apply coveredState_split_literal (state := state_12125) 4
    state_12126 state_12409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12126
  · exact cover_12409
#print axioms cover_12125

def state_12124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_12124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12124 := by
  apply coveredState_split_literal (state := state_12124) 3
    state_12125 state_12524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12125
  · exact cover_12524
#print axioms cover_12124

def state_11446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_11446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11446 := by
  apply coveredState_split_literal (state := state_11446) 2
    state_11447 state_12124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11447
  · exact cover_12124
#print axioms cover_11446

def state_12594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_12594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12594 := by
  apply coveredState_split_literal (state := state_12594) 2
    state_12595 state_12608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12595
  · exact cover_12608
#print axioms cover_12594

def state_12593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_12593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12593 := by
  apply coveredState_split_literal (state := state_12593) 0
    state_12594 state_12669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12594
  · exact cover_12669
#print axioms cover_12593

def state_12683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_12683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12683 := by
  apply coveredState_split_literal (state := state_12683) 2
    state_12684 state_12695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12684
  · exact cover_12695
#print axioms cover_12683

def state_12682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_12682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12682 := by
  apply coveredState_split_literal (state := state_12682) 0
    state_12683 state_12754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12683
  · exact cover_12754
#print axioms cover_12682

def state_12592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_12592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12592 := by
  apply coveredState_split_literal (state := state_12592) 4
    state_12593 state_12682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12593
  · exact cover_12682
#print axioms cover_12592
end Mub6.Numerical.CircleFullPrototype.Forest
