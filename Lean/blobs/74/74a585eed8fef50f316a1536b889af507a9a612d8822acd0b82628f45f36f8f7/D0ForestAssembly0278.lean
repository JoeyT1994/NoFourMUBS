import D0FullInterface
import D0ForestAssembly0275
import D0ForestAssembly0277
import D0ForestChunk1064
import D0ForestChunk1065
import D0ForestChunk1066
import D0ForestChunk1067
import D0ForestChunk1068
import D0ForestChunk1069
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1555917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 10)))
theorem cover_1555917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555917 := by
  apply coveredState_split_literal (state := state_1555917) 4
    state_1555918 state_1555993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555918
  · exact cover_1555993
#print axioms cover_1555917

def state_1555867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 10)))
theorem cover_1555867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555867 := by
  apply coveredState_split_literal (state := state_1555867) 3
    state_1555868 state_1555917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555868
  · exact cover_1555917
#print axioms cover_1555867

def state_1553585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1553585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553585 := by
  apply coveredState_split_literal (state := state_1553585) 2
    state_1553586 state_1555867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553586
  · exact cover_1555867
#print axioms cover_1553585

def state_1551003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1551003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551003 := by
  apply coveredState_split_literal (state := state_1551003) 0
    state_1551004 state_1553585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551004
  · exact cover_1553585
#print axioms cover_1551003

def state_1556203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 43)))
theorem cover_1556203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556203 := by
  apply coveredState_split_literal (state := state_1556203) 4
    state_1556204 state_1556249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556204
  · exact cover_1556249
#print axioms cover_1556203

def state_1556330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 87)))
theorem cover_1556330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556330 := by
  apply coveredState_split_literal (state := state_1556330) 3
    state_1556331 state_1556342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556331
  · exact cover_1556342
#print axioms cover_1556330

def state_1556294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 43)))
theorem cover_1556294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556294 := by
  apply coveredState_split_literal (state := state_1556294) 4
    state_1556295 state_1556330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556295
  · exact cover_1556330
#print axioms cover_1556294

def state_1556202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1556202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556202 := by
  apply coveredState_split_literal (state := state_1556202) 2
    state_1556203 state_1556294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556203
  · exact cover_1556294
#print axioms cover_1556202

def state_1556174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1556174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556174 := by
  apply coveredState_split_literal (state := state_1556174) 0
    state_1556175 state_1556202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556175
  · exact cover_1556202
#print axioms cover_1556174

def state_1556173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1556173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556173 := by
  apply coveredState_split_literal (state := state_1556173) 1
    state_1556174 state_1556399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556174
  · exact cover_1556399
#print axioms cover_1556173

def state_1556141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
theorem cover_1556141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556141 := by
  apply coveredState_split_literal (state := state_1556141) 3
    state_1556142 state_1556173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556142
  · exact cover_1556173
#print axioms cover_1556141

def state_1556119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 21)))
theorem cover_1556119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556119 := by
  apply coveredState_split_literal (state := state_1556119) 4
    state_1556120 state_1556141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556120
  · exact cover_1556141
#print axioms cover_1556119

def state_1556118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1556118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556118 := by
  apply coveredState_split_literal (state := state_1556118) 2
    state_1556119 state_1556428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556119
  · exact cover_1556428
#print axioms cover_1556118

def state_1556102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1556102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556102 := by
  apply coveredState_split_literal (state := state_1556102) 0
    state_1556103 state_1556118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556103
  · exact cover_1556118
#print axioms cover_1556102

def state_1556101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1556101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556101 := by
  apply coveredState_split_literal (state := state_1556101) 1
    state_1556102 state_1556453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556102
  · exact cover_1556453
#print axioms cover_1556101

def state_1556089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 10)))
theorem cover_1556089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556089 := by
  apply coveredState_split_literal (state := state_1556089) 4
    state_1556090 state_1556101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556090
  · exact cover_1556101
#print axioms cover_1556089

def state_1556523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1556523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556523 := by
  apply coveredState_split_literal (state := state_1556523) 0
    state_1556524 state_1556531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556524
  · exact cover_1556531
#print axioms cover_1556523

def state_1556522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1556522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556522 := by
  apply coveredState_split_literal (state := state_1556522) 1
    state_1556523 state_1556592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556523
  · exact cover_1556592
#print axioms cover_1556522

def state_1556516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 21)))
theorem cover_1556516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556516 := by
  apply coveredState_split_literal (state := state_1556516) 4
    state_1556517 state_1556522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556517
  · exact cover_1556522
#print axioms cover_1556516

def state_1556515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 21)))
theorem cover_1556515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556515 := by
  apply coveredState_split_literal (state := state_1556515) 3
    state_1556516 state_1556601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556516
  · exact cover_1556601
#print axioms cover_1556515

def state_1556475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1556475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556475 := by
  apply coveredState_split_literal (state := state_1556475) 2
    state_1556476 state_1556515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556476
  · exact cover_1556515
#print axioms cover_1556475

def state_1556465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1556465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556465 := by
  apply coveredState_split_literal (state := state_1556465) 0
    state_1556466 state_1556475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556466
  · exact cover_1556475
#print axioms cover_1556465

def state_1556464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1556464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556464 := by
  apply coveredState_split_literal (state := state_1556464) 1
    state_1556465 state_1556614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556465
  · exact cover_1556614
#print axioms cover_1556464

def state_1556462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 10)))
theorem cover_1556462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556462 := by
  apply coveredState_split_literal (state := state_1556462) 4
    state_1556463 state_1556464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556463
  · exact cover_1556464
#print axioms cover_1556462

def state_1556088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1556088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556088 := by
  apply coveredState_split_literal (state := state_1556088) 3
    state_1556089 state_1556462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556089
  · exact cover_1556462
#print axioms cover_1556088

def state_1556087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1556087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556087 := by
  apply coveredState_split_literal (state := state_1556087) 2
    state_1556088 state_1556615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556088
  · exact cover_1556615
#print axioms cover_1556087

def state_1556751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
theorem cover_1556751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556751 := by
  apply coveredState_split_literal (state := state_1556751) 3
    state_1556752 state_1556803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556752
  · exact cover_1556803
#print axioms cover_1556751

def state_1556750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 43)))
theorem cover_1556750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556750 := by
  apply coveredState_split_literal (state := state_1556750) 4
    state_1556751 state_1556834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556751
  · exact cover_1556834
#print axioms cover_1556750

def state_1556855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
theorem cover_1556855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556855 := by
  apply coveredState_split_literal (state := state_1556855) 0
    state_1556856 state_1556917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556856
  · exact cover_1556917
#print axioms cover_1556855

def state_1556854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
theorem cover_1556854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556854 := by
  apply coveredState_split_literal (state := state_1556854) 1
    state_1556855 state_1556944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556855
  · exact cover_1556944
#print axioms cover_1556854

def state_1556836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
theorem cover_1556836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556836 := by
  apply coveredState_split_literal (state := state_1556836) 3
    state_1556837 state_1556854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556837
  · exact cover_1556854
#print axioms cover_1556836

def state_1556992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 174)))
theorem cover_1556992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556992 := by
  apply coveredState_split_literal (state := state_1556992) 3
    state_1556993 state_1557016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556993
  · exact cover_1557016
#print axioms cover_1556992
end Mub6.Numerical.CircleFullD0.Forest
