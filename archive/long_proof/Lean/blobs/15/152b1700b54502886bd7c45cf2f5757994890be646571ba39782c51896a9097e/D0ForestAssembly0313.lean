import D0FullInterface
import D0ForestAssembly0310
import D0ForestAssembly0312
import D0ForestChunk1207
import D0ForestChunk1208
import D0ForestChunk1209
import D0ForestChunk1210
import D0ForestChunk1211
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1590173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 26)))
theorem cover_1590173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590173 := by
  apply coveredState_split_literal (state := state_1590173) 2
    state_1590174 state_1590263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590174
  · exact cover_1590263
#print axioms cover_1590173

def state_1590172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 26)))
theorem cover_1590172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590172 := by
  apply coveredState_split_literal (state := state_1590172) 1
    state_1590173 state_1590286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590173
  · exact cover_1590286
#print axioms cover_1590172

def state_1590171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 13)))
theorem cover_1590171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590171 := by
  apply coveredState_split_literal (state := state_1590171) 4
    state_1590172 state_1590335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590172
  · exact cover_1590335
#print axioms cover_1590171

def state_1590113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
theorem cover_1590113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590113 := by
  apply coveredState_split_literal (state := state_1590113) 3
    state_1590114 state_1590171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590114
  · exact cover_1590171
#print axioms cover_1590113

def state_1590112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
theorem cover_1590112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590112 := by
  apply coveredState_split_literal (state := state_1590112) 0
    state_1590113 state_1590358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590113
  · exact cover_1590358
#print axioms cover_1590112

def state_1589992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1589992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589992 := by
  apply coveredState_split_literal (state := state_1589992) 2
    state_1589993 state_1590112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589993
  · exact cover_1590112
#print axioms cover_1589992

def state_1589612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1589612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589612 := by
  apply coveredState_split_literal (state := state_1589612) 1
    state_1589613 state_1589992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589613
  · exact cover_1589992
#print axioms cover_1589612

def state_1587240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_1587240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587240 := by
  apply coveredState_split_literal (state := state_1587240) 4
    state_1587241 state_1589612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587241
  · exact cover_1589612
#print axioms cover_1587240

def state_1587132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_1587132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587132 := by
  apply coveredState_split_literal (state := state_1587132) 3
    state_1587133 state_1587240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587133
  · exact cover_1587240
#print axioms cover_1587132

def state_1590397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 6)))
theorem cover_1590397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590397 := by
  apply coveredState_split_literal (state := state_1590397) 4
    state_1590398 state_1590451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590398
  · exact cover_1590451
#print axioms cover_1590397

def state_1590391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
theorem cover_1590391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590391 := by
  apply coveredState_split_literal (state := state_1590391) 3
    state_1590392 state_1590397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590392
  · exact cover_1590397
#print axioms cover_1590391

def state_1587131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1587131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587131 := by
  apply coveredState_split_literal (state := state_1587131) 2
    state_1587132 state_1590391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587132
  · exact cover_1590391
#print axioms cover_1587131

def state_1590510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1590510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590510 := by
  apply coveredState_split_literal (state := state_1590510) 2
    state_1590511 state_1590558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590511
  · exact cover_1590558
#print axioms cover_1590510

def state_1587130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1587130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587130 := by
  apply coveredState_split_literal (state := state_1587130) 0
    state_1587131 state_1590510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587131
  · exact cover_1590510
#print axioms cover_1587130

def state_1590635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
theorem cover_1590635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590635 := by
  apply coveredState_split_literal (state := state_1590635) 1
    state_1590636 state_1590669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590636
  · exact cover_1590669
#print axioms cover_1590635

def state_1590581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_1590581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590581 := by
  apply coveredState_split_literal (state := state_1590581) 3
    state_1590582 state_1590635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590582
  · exact cover_1590635
#print axioms cover_1590581

def state_1590580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1590580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590580 := by
  apply coveredState_split_literal (state := state_1590580) 2
    state_1590581 state_1590710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590581
  · exact cover_1590710
#print axioms cover_1590580

def state_1590579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1590579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590579 := by
  apply coveredState_split_literal (state := state_1590579) 0
    state_1590580 state_1590737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590580
  · exact cover_1590737
#print axioms cover_1590579

def state_1587129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1587129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587129 := by
  apply coveredState_split_literal (state := state_1587129) 4
    state_1587130 state_1590579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587130
  · exact cover_1590579
#print axioms cover_1587129

def state_1590817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1590817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590817 := by
  apply coveredState_split_literal (state := state_1590817) 0
    state_1590818 state_1590869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590818
  · exact cover_1590869
#print axioms cover_1590817

def state_1590783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
theorem cover_1590783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590783 := by
  apply coveredState_split_literal (state := state_1590783) 4
    state_1590784 state_1590817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590784
  · exact cover_1590817
#print axioms cover_1590783

def state_1590782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1590782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590782 := by
  apply coveredState_split_literal (state := state_1590782) 2
    state_1590783 state_1590906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590783
  · exact cover_1590906
#print axioms cover_1590782

def state_1590781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1590781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590781 := by
  apply coveredState_split_literal (state := state_1590781) 3
    state_1590782 state_1590945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590782
  · exact cover_1590945
#print axioms cover_1590781

def state_1590972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
theorem cover_1590972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590972 := by
  apply coveredState_split_literal (state := state_1590972) 1
    state_1590973 state_1591024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590973
  · exact cover_1591024
#print axioms cover_1590972

def state_1590971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
theorem cover_1590971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590971 := by
  apply coveredState_split_literal (state := state_1590971) 0
    state_1590972 state_1591063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590972
  · exact cover_1591063
#print axioms cover_1590971

def state_1591133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 50)))
theorem cover_1591133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591133 := by
  apply coveredState_split_literal (state := state_1591133) 1
    state_1591134 state_1591159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591134
  · exact cover_1591159
#print axioms cover_1591133

def state_1591132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 50)))
theorem cover_1591132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591132 := by
  apply coveredState_split_literal (state := state_1591132) 3
    state_1591133 state_1591210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591133
  · exact cover_1591210
#print axioms cover_1591132

def state_1591218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 51)))
theorem cover_1591218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591218 := by
  apply coveredState_split_literal (state := state_1591218) 1
    state_1591219 state_1591252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591219
  · exact cover_1591252
#print axioms cover_1591218

def state_1591217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 51)))
theorem cover_1591217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591217 := by
  apply coveredState_split_literal (state := state_1591217) 3
    state_1591218 state_1591291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591218
  · exact cover_1591291
#print axioms cover_1591217

def state_1591131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 25)))
theorem cover_1591131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591131 := by
  apply coveredState_split_literal (state := state_1591131) 4
    state_1591132 state_1591217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591132
  · exact cover_1591217
#print axioms cover_1591131

def state_1591119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 25)))
theorem cover_1591119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591119 := by
  apply coveredState_split_literal (state := state_1591119) 2
    state_1591120 state_1591131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591120
  · exact cover_1591131
#print axioms cover_1591119

def state_1591118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1591118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591118 := by
  apply coveredState_split_literal (state := state_1591118) 3
    state_1591119 state_1591298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591119
  · exact cover_1591298
#print axioms cover_1591118
end Mub6.Numerical.CircleFullD0.Forest
