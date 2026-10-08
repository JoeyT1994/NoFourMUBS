import D0FullInterface
import D0ForestAssembly0401
import D0ForestAssembly0402
import D0ForestAssembly0405
import D0ForestChunk1580
import D0ForestChunk1581
import D0ForestChunk1582
import D0ForestChunk1583
import D0ForestChunk1584
import D0ForestChunk1585
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2253029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2253029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253029 := by
  apply coveredState_split_literal (state := state_2253029) 0
    state_2253030 state_2253105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253030
  · exact cover_2253105
#print axioms cover_2253029

def state_2252967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2252967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252967 := by
  apply coveredState_split_literal (state := state_2252967) 4
    state_2252968 state_2253029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252968
  · exact cover_2253029
#print axioms cover_2252967

def state_2252955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2252955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252955 := by
  apply coveredState_split_literal (state := state_2252955) 2
    state_2252956 state_2252967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252956
  · exact cover_2252967
#print axioms cover_2252955

def state_2252733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2252733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252733 := by
  apply coveredState_split_literal (state := state_2252733) 3
    state_2252734 state_2252955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252734
  · exact cover_2252955
#print axioms cover_2252733

def state_2252719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2252719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252719 := by
  apply coveredState_split_literal (state := state_2252719) 1
    state_2252720 state_2252733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252720
  · exact cover_2252733
#print axioms cover_2252719

def state_2249269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249269 := by
  apply coveredState_split_literal (state := state_2249269) 0
    state_2249270 state_2252719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249270
  · exact cover_2252719
#print axioms cover_2249269

def state_2248581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_2248581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248581 := by
  apply coveredState_split_literal (state := state_2248581) 4
    state_2248582 state_2249269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248582
  · exact cover_2249269
#print axioms cover_2248581

def state_2248447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_2248447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248447 := by
  apply coveredState_split_literal (state := state_2248447) 3
    state_2248448 state_2248581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248448
  · exact cover_2248581
#print axioms cover_2248447

def state_2253217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2253217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253217 := by
  apply coveredState_split_literal (state := state_2253217) 3
    state_2253218 state_2253239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253218
  · exact cover_2253239
#print axioms cover_2253217

def state_2253195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2253195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253195 := by
  apply coveredState_split_literal (state := state_2253195) 0
    state_2253196 state_2253217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253196
  · exact cover_2253217
#print axioms cover_2253195

def state_2253193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2253193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253193 := by
  apply coveredState_split_literal (state := state_2253193) 4
    state_2253194 state_2253195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253194
  · exact cover_2253195
#print axioms cover_2253193

def state_2253183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2253183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253183 := by
  apply coveredState_split_literal (state := state_2253183) 3
    state_2253184 state_2253193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253184
  · exact cover_2253193
#print axioms cover_2253183

def state_2253182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2253182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253182 := by
  apply coveredState_split_literal (state := state_2253182) 2
    state_2253183 state_2253290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253183
  · exact cover_2253290
#print axioms cover_2253182

def state_2253142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2253142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253142 := by
  apply coveredState_split_literal (state := state_2253142) 1
    state_2253143 state_2253182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253143
  · exact cover_2253182
#print axioms cover_2253142

def state_2253381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
theorem cover_2253381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253381 := by
  apply coveredState_split_literal (state := state_2253381) 0
    state_2253382 state_2253405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253382
  · exact cover_2253405
#print axioms cover_2253381

def state_2253380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2253380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253380 := by
  apply coveredState_split_literal (state := state_2253380) 4
    state_2253381 state_2253450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253381
  · exact cover_2253450
#print axioms cover_2253380

def state_2253379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2253379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253379 := by
  apply coveredState_split_literal (state := state_2253379) 2
    state_2253380 state_2253497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253380
  · exact cover_2253497
#print axioms cover_2253379

def state_2253359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2253359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253359 := by
  apply coveredState_split_literal (state := state_2253359) 1
    state_2253360 state_2253379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253360
  · exact cover_2253379
#print axioms cover_2253359

def state_2253331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2253331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253331 := by
  apply coveredState_split_literal (state := state_2253331) 3
    state_2253332 state_2253359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253332
  · exact cover_2253359
#print axioms cover_2253331

def state_2253330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2253330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253330 := by
  apply coveredState_split_literal (state := state_2253330) 0
    state_2253331 state_2253504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253331
  · exact cover_2253504
#print axioms cover_2253330

def state_2253310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2253310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253310 := by
  apply coveredState_split_literal (state := state_2253310) 4
    state_2253311 state_2253330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253311
  · exact cover_2253330
#print axioms cover_2253310

def state_2253308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2253308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253308 := by
  apply coveredState_split_literal (state := state_2253308) 3
    state_2253309 state_2253310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253309
  · exact cover_2253310
#print axioms cover_2253308

def state_2253307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2253307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253307 := by
  apply coveredState_split_literal (state := state_2253307) 2
    state_2253308 state_2253567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253308
  · exact cover_2253567
#print axioms cover_2253307

def state_2253295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2253295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253295 := by
  apply coveredState_split_literal (state := state_2253295) 1
    state_2253296 state_2253307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253296
  · exact cover_2253307
#print axioms cover_2253295

def state_2253141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2253141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253141 := by
  apply coveredState_split_literal (state := state_2253141) 0
    state_2253142 state_2253295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253142
  · exact cover_2253295
#print axioms cover_2253141

def state_2253139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2253139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253139 := by
  apply coveredState_split_literal (state := state_2253139) 4
    state_2253140 state_2253141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253140
  · exact cover_2253141
#print axioms cover_2253139

def state_2253624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2253624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253624 := by
  apply coveredState_split_literal (state := state_2253624) 3
    state_2253625 state_2253660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253625
  · exact cover_2253660
#print axioms cover_2253624

def state_2253702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
theorem cover_2253702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253702 := by
  apply coveredState_split_literal (state := state_2253702) 1
    state_2253703 state_2253742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253703
  · exact cover_2253742
#print axioms cover_2253702

def state_2253701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2253701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253701 := by
  apply coveredState_split_literal (state := state_2253701) 3
    state_2253702 state_2253793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253702
  · exact cover_2253793
#print axioms cover_2253701

def state_2253623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
theorem cover_2253623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253623 := by
  apply coveredState_split_literal (state := state_2253623) 0
    state_2253624 state_2253701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253624
  · exact cover_2253701
#print axioms cover_2253623

def state_2253613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
theorem cover_2253613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253613 := by
  apply coveredState_split_literal (state := state_2253613) 4
    state_2253614 state_2253623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253614
  · exact cover_2253623
#print axioms cover_2253613

def state_2253612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
theorem cover_2253612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253612 := by
  apply coveredState_split_literal (state := state_2253612) 2
    state_2253613 state_2253826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253613
  · exact cover_2253826
#print axioms cover_2253612
end Mub6.Numerical.CircleFullD0.Forest
