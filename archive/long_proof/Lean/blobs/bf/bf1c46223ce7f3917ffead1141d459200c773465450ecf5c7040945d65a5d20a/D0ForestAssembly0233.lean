import D0FullInterface
import D0ForestChunk0885
import D0ForestChunk0886
import D0ForestChunk0887
import D0ForestChunk0888
import D0ForestChunk0889
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1513020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 121)))
theorem cover_1513020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513020 := by
  apply coveredState_split_literal (state := state_1513020) 0
    state_1513021 state_1513066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513021
  · exact cover_1513066
#print axioms cover_1513020

def state_1513004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 60)))
theorem cover_1513004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513004 := by
  apply coveredState_split_literal (state := state_1513004) 4
    state_1513005 state_1513020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513005
  · exact cover_1513020
#print axioms cover_1513004

def state_1513003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 105 else 60)))
theorem cover_1513003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513003 := by
  apply coveredState_split_literal (state := state_1513003) 2
    state_1513004 state_1513117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513004
  · exact cover_1513117
#print axioms cover_1513003

def state_1512993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
theorem cover_1512993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512993 := by
  apply coveredState_split_literal (state := state_1512993) 3
    state_1512994 state_1513003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512994
  · exact cover_1513003
#print axioms cover_1512993

def state_1512992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
theorem cover_1512992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512992 := by
  apply coveredState_split_literal (state := state_1512992) 1
    state_1512993 state_1513122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512993
  · exact cover_1513122
#print axioms cover_1512992

def state_1512991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
theorem cover_1512991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512991 := by
  apply coveredState_split_literal (state := state_1512991) 0
    state_1512992 state_1513147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512992
  · exact cover_1513147
#print axioms cover_1512991

def state_1513172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 122)))
theorem cover_1513172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513172 := by
  apply coveredState_split_literal (state := state_1513172) 0
    state_1513173 state_1513186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513173
  · exact cover_1513186
#print axioms cover_1513172

def state_1513171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 61)))
theorem cover_1513171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513171 := by
  apply coveredState_split_literal (state := state_1513171) 4
    state_1513172 state_1513249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513172
  · exact cover_1513249
#print axioms cover_1513171

def state_1513170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 105 else 61)))
theorem cover_1513170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513170 := by
  apply coveredState_split_literal (state := state_1513170) 2
    state_1513171 state_1513250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513171
  · exact cover_1513250
#print axioms cover_1513170

def state_1513168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
theorem cover_1513168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513168 := by
  apply coveredState_split_literal (state := state_1513168) 3
    state_1513169 state_1513170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513169
  · exact cover_1513170
#print axioms cover_1513168

def state_1513261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 122)))
theorem cover_1513261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513261 := by
  apply coveredState_split_literal (state := state_1513261) 0
    state_1513262 state_1513273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513262
  · exact cover_1513273
#print axioms cover_1513261

def state_1513260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 61)))
theorem cover_1513260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513260 := by
  apply coveredState_split_literal (state := state_1513260) 4
    state_1513261 state_1513330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513261
  · exact cover_1513330
#print axioms cover_1513260

def state_1513259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 105 else 61)))
theorem cover_1513259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513259 := by
  apply coveredState_split_literal (state := state_1513259) 2
    state_1513260 state_1513335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513260
  · exact cover_1513335
#print axioms cover_1513259

def state_1513251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
theorem cover_1513251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513251 := by
  apply coveredState_split_literal (state := state_1513251) 3
    state_1513252 state_1513259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513252
  · exact cover_1513259
#print axioms cover_1513251

def state_1513167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
theorem cover_1513167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513167 := by
  apply coveredState_split_literal (state := state_1513167) 1
    state_1513168 state_1513251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513168
  · exact cover_1513251
#print axioms cover_1513167

def state_1513340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
theorem cover_1513340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513340 := by
  apply coveredState_split_literal (state := state_1513340) 1
    state_1513341 state_1513380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513341
  · exact cover_1513380
#print axioms cover_1513340

def state_1513166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
theorem cover_1513166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513166 := by
  apply coveredState_split_literal (state := state_1513166) 0
    state_1513167 state_1513340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513167
  · exact cover_1513340
#print axioms cover_1513166

def state_1512990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 30)))
theorem cover_1512990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512990 := by
  apply coveredState_split_literal (state := state_1512990) 4
    state_1512991 state_1513166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512991
  · exact cover_1513166
#print axioms cover_1512990

def state_1513491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
theorem cover_1513491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513491 := by
  apply coveredState_split_literal (state := state_1513491) 3
    state_1513492 state_1513541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513492
  · exact cover_1513541
#print axioms cover_1513491

def state_1513490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
theorem cover_1513490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513490 := by
  apply coveredState_split_literal (state := state_1513490) 1
    state_1513491 state_1513576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513491
  · exact cover_1513576
#print axioms cover_1513490

def state_1513454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
theorem cover_1513454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513454 := by
  apply coveredState_split_literal (state := state_1513454) 0
    state_1513455 state_1513490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513455
  · exact cover_1513490
#print axioms cover_1513454

def state_1513428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 60)))
theorem cover_1513428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513428 := by
  apply coveredState_split_literal (state := state_1513428) 4
    state_1513429 state_1513454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513429
  · exact cover_1513454
#print axioms cover_1513428

def state_1513427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 60)))
theorem cover_1513427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513427 := by
  apply coveredState_split_literal (state := state_1513427) 3
    state_1513428 state_1513627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513428
  · exact cover_1513627
#print axioms cover_1513427

def state_1513426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1513426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513426 := by
  apply coveredState_split_literal (state := state_1513426) 2
    state_1513427 state_1513668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513427
  · exact cover_1513668
#print axioms cover_1513426

def state_1513425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1513425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513425 := by
  apply coveredState_split_literal (state := state_1513425) 1
    state_1513426 state_1513697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513426
  · exact cover_1513697
#print axioms cover_1513425

def state_1513746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1513746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513746 := by
  apply coveredState_split_literal (state := state_1513746) 1
    state_1513747 state_1513810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513747
  · exact cover_1513810
#print axioms cover_1513746

def state_1513424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1513424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513424 := by
  apply coveredState_split_literal (state := state_1513424) 0
    state_1513425 state_1513746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513425
  · exact cover_1513746
#print axioms cover_1513424

def state_1513841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1513841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513841 := by
  apply coveredState_split_literal (state := state_1513841) 1
    state_1513842 state_1513875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513842
  · exact cover_1513875
#print axioms cover_1513841

def state_1513955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 84 else (if j.val < 4 then 212 else 122)))
theorem cover_1513955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513955 := by
  apply coveredState_split_literal (state := state_1513955) 2
    state_1513956 state_1514017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513956
  · exact cover_1514017
#print axioms cover_1513955

def state_1513954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1513954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513954 := by
  apply coveredState_split_literal (state := state_1513954) 3
    state_1513955 state_1514028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513955
  · exact cover_1514028
#print axioms cover_1513954

def state_1513910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1513910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513910 := by
  apply coveredState_split_literal (state := state_1513910) 1
    state_1513911 state_1513954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513911
  · exact cover_1513954
#print axioms cover_1513910

def state_1513840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
theorem cover_1513840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513840 := by
  apply coveredState_split_literal (state := state_1513840) 0
    state_1513841 state_1513910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513841
  · exact cover_1513910
#print axioms cover_1513840
end Mub6.Numerical.CircleFullD0.Forest
