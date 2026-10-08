import CircleFullInterface
import CircleForestAssembly0039
import CircleForestAssembly0041
import CircleForestAssembly0044
import CircleForestChunk0174
import CircleForestChunk0175
import CircleForestChunk0176
import CircleForestChunk0177
import CircleForestChunk0178
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_63341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_63341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63341 := by
  apply coveredState_split_literal (state := state_63341) 3
    state_63342 state_63405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63342
  · exact cover_63405
#print axioms cover_63341

def state_63327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_63327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63327 := by
  apply coveredState_split_literal (state := state_63327) 4
    state_63328 state_63341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63328
  · exact cover_63341
#print axioms cover_63327

def state_63326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_63326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63326 := by
  apply coveredState_split_literal (state := state_63326) 3
    state_63327 state_63430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63327
  · exact cover_63430
#print axioms cover_63326

def state_63304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_63304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63304 := by
  apply coveredState_split_literal (state := state_63304) 2
    state_63305 state_63326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63305
  · exact cover_63326
#print axioms cover_63304

def state_63303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_63303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63303 := by
  apply coveredState_split_literal (state := state_63303) 1
    state_63304 state_63435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63304
  · exact cover_63435
#print axioms cover_63303

def state_63302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_63302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63302 := by
  apply coveredState_split_literal (state := state_63302) 0
    state_63303 state_63448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63303
  · exact cover_63448
#print axioms cover_63302

def state_63465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_63465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63465 := by
  apply coveredState_split_literal (state := state_63465) 0
    state_63466 state_63515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63466
  · exact cover_63515
#print axioms cover_63465

def state_63301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_63301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63301 := by
  apply coveredState_split_literal (state := state_63301) 4
    state_63302 state_63465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63302
  · exact cover_63465
#print axioms cover_63301

def state_63300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_63300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63300 := by
  apply coveredState_split_literal (state := state_63300) 3
    state_63301 state_63536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63301
  · exact cover_63536
#print axioms cover_63300

def state_63633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_63633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63633 := by
  apply coveredState_split_literal (state := state_63633) 0
    state_63634 state_63691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63634
  · exact cover_63691
#print axioms cover_63633

def state_63571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_63571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63571 := by
  apply coveredState_split_literal (state := state_63571) 3
    state_63572 state_63633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63572
  · exact cover_63633
#print axioms cover_63571

def state_63545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_63545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63545 := by
  apply coveredState_split_literal (state := state_63545) 4
    state_63546 state_63571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63546
  · exact cover_63571
#print axioms cover_63545

def state_63544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_63544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63544 := by
  apply coveredState_split_literal (state := state_63544) 2
    state_63545 state_63708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63545
  · exact cover_63708
#print axioms cover_63544

def state_63543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_63543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63543 := by
  apply coveredState_split_literal (state := state_63543) 3
    state_63544 state_63721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63544
  · exact cover_63721
#print axioms cover_63543

def state_63542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_63542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63542 := by
  apply coveredState_split_literal (state := state_63542) 1
    state_63543 state_63756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63543
  · exact cover_63756
#print axioms cover_63542

def state_63541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_63541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63541 := by
  apply coveredState_split_literal (state := state_63541) 0
    state_63542 state_63779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63542
  · exact cover_63779
#print axioms cover_63541

def state_63799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_63799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63799 := by
  apply coveredState_split_literal (state := state_63799) 1
    state_63800 state_63855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63800
  · exact cover_63855
#print axioms cover_63799

def state_63798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_63798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63798 := by
  apply coveredState_split_literal (state := state_63798) 0
    state_63799 state_63894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63799
  · exact cover_63894
#print axioms cover_63798

def state_63540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_63540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63540 := by
  apply coveredState_split_literal (state := state_63540) 4
    state_63541 state_63798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63541
  · exact cover_63798
#print axioms cover_63540

def state_63539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_63539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63539 := by
  apply coveredState_split_literal (state := state_63539) 3
    state_63540 state_63945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63540
  · exact cover_63945
#print axioms cover_63539

def state_63299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_63299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63299 := by
  apply coveredState_split_literal (state := state_63299) 2
    state_63300 state_63539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63300
  · exact cover_63539
#print axioms cover_63299

def state_63045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_63045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63045 := by
  apply coveredState_split_literal (state := state_63045) 1
    state_63046 state_63299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63046
  · exact cover_63299
#print axioms cover_63045

def state_60381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_60381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60381 := by
  apply coveredState_split_literal (state := state_60381) 0
    state_60382 state_63045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60382
  · exact cover_63045
#print axioms cover_60381

def state_63990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_63990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63990 := by
  apply coveredState_split_literal (state := state_63990) 0
    state_63991 state_64032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63991
  · exact cover_64032
#print axioms cover_63990

def state_60380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_60380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60380 := by
  apply coveredState_split_literal (state := state_60380) 4
    state_60381 state_63990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60381
  · exact cover_63990
#print axioms cover_60380

def state_57914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_57914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57914 := by
  apply coveredState_split_literal (state := state_57914) 3
    state_57915 state_60380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57915
  · exact cover_60380
#print axioms cover_57914

def state_45480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_45480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45480 := by
  apply coveredState_split_literal (state := state_45480) 2
    state_45481 state_57914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45481
  · exact cover_57914
#print axioms cover_45480

def state_64119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
theorem cover_64119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64119 := by
  apply coveredState_split_literal (state := state_64119) 4
    state_64120 state_64151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64120
  · exact cover_64151
#print axioms cover_64119

def state_64217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_64217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64217 := by
  apply coveredState_split_literal (state := state_64217) 1
    state_64218 state_64281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64218
  · exact cover_64281
#print axioms cover_64217

def state_64215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_64215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64215 := by
  apply coveredState_split_literal (state := state_64215) 0
    state_64216 state_64217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64216
  · exact cover_64217
#print axioms cover_64215

def state_64214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_64214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64214 := by
  apply coveredState_split_literal (state := state_64214) 4
    state_64215 state_64294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64215
  · exact cover_64294
#print axioms cover_64214

def state_64118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_64118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64118 := by
  apply coveredState_split_literal (state := state_64118) 3
    state_64119 state_64214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64119
  · exact cover_64214
#print axioms cover_64118
end Mub6.Numerical.CircleFullPrototype.Forest
