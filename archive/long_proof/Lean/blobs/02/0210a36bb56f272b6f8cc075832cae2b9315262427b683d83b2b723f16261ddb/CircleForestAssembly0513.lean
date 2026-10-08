import CircleFullInterface
import CircleForestAssembly0512
import CircleForestChunk2010
import CircleForestChunk2017
import CircleForestChunk2018
import CircleForestChunk2019
import CircleForestChunk2020
import CircleForestChunk2021
import CircleForestChunk2022
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2565017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
theorem cover_2565017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565017 := by
  apply coveredState_split_literal (state := state_2565017) 1
    state_2565018 state_2565113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565018
  · exact cover_2565113
#print axioms cover_2565017

def state_2565016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
theorem cover_2565016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565016 := by
  apply coveredState_split_literal (state := state_2565016) 0
    state_2565017 state_2565150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565017
  · exact cover_2565150
#print axioms cover_2565016

def state_2565015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 23)))
theorem cover_2565015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565015 := by
  apply coveredState_split_literal (state := state_2565015) 4
    state_2565016 state_2565153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565016
  · exact cover_2565153
#print axioms cover_2565015

def state_2564939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 23)))
theorem cover_2564939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564939 := by
  apply coveredState_split_literal (state := state_2564939) 2
    state_2564940 state_2565015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564940
  · exact cover_2565015
#print axioms cover_2564939

def state_2564937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
theorem cover_2564937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564937 := by
  apply coveredState_split_literal (state := state_2564937) 3
    state_2564938 state_2564939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564938
  · exact cover_2564939
#print axioms cover_2564937

def state_2564863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2564863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564863 := by
  apply coveredState_split_literal (state := state_2564863) 4
    state_2564864 state_2564937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564864
  · exact cover_2564937
#print axioms cover_2564863

def state_2564795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2564795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564795 := by
  apply coveredState_split_literal (state := state_2564795) 1
    state_2564796 state_2564863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564796
  · exact cover_2564863
#print axioms cover_2564795

def state_2564794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2564794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564794 := by
  apply coveredState_split_literal (state := state_2564794) 0
    state_2564795 state_2565194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564795
  · exact cover_2565194
#print axioms cover_2564794

def state_2564630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_2564630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564630 := by
  apply coveredState_split_literal (state := state_2564630) 2
    state_2564631 state_2564794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564631
  · exact cover_2564794
#print axioms cover_2564630

def state_2564602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_2564602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564602 := by
  apply coveredState_split_literal (state := state_2564602) 4
    state_2564603 state_2564630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564603
  · exact cover_2564630
#print axioms cover_2564602

def state_2564596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2564596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564596 := by
  apply coveredState_split_literal (state := state_2564596) 3
    state_2564597 state_2564602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564597
  · exact cover_2564602
#print axioms cover_2564596

def state_2564595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2564595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564595 := by
  apply coveredState_split_literal (state := state_2564595) 1
    state_2564596 state_2565203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564596
  · exact cover_2565203
#print axioms cover_2564595

def state_2563063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2563063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563063 := by
  apply coveredState_split_literal (state := state_2563063) 0
    state_2563064 state_2564595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563064
  · exact cover_2564595
#print axioms cover_2563063

def state_2563051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_2563051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563051 := by
  apply coveredState_split_literal (state := state_2563051) 4
    state_2563052 state_2563063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563052
  · exact cover_2563063
#print axioms cover_2563051

def state_2565344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
theorem cover_2565344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565344 := by
  apply coveredState_split_literal (state := state_2565344) 3
    state_2565345 state_2565398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565345
  · exact cover_2565398
#print axioms cover_2565344

def state_2565320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2565320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565320 := by
  apply coveredState_split_literal (state := state_2565320) 2
    state_2565321 state_2565344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565321
  · exact cover_2565344
#print axioms cover_2565320

def state_2565314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2565314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565314 := by
  apply coveredState_split_literal (state := state_2565314) 0
    state_2565315 state_2565320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565315
  · exact cover_2565320
#print axioms cover_2565314

def state_2565294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2565294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565294 := by
  apply coveredState_split_literal (state := state_2565294) 4
    state_2565295 state_2565314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565295
  · exact cover_2565314
#print axioms cover_2565294

def state_2565293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2565293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565293 := by
  apply coveredState_split_literal (state := state_2565293) 1
    state_2565294 state_2565421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565294
  · exact cover_2565421
#print axioms cover_2565293

def state_2565292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_2565292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565292 := by
  apply coveredState_split_literal (state := state_2565292) 3
    state_2565293 state_2565438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565293
  · exact cover_2565438
#print axioms cover_2565292

def state_2565477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 46)))
theorem cover_2565477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565477 := by
  apply coveredState_split_literal (state := state_2565477) 2
    state_2565478 state_2565511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565478
  · exact cover_2565511
#print axioms cover_2565477

def state_2565476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_2565476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565476 := by
  apply coveredState_split_literal (state := state_2565476) 3
    state_2565477 state_2565550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565477
  · exact cover_2565550
#print axioms cover_2565476

def state_2565470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_2565470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565470 := by
  apply coveredState_split_literal (state := state_2565470) 0
    state_2565471 state_2565476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565471
  · exact cover_2565476
#print axioms cover_2565470

def state_2565586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
theorem cover_2565586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565586 := by
  apply coveredState_split_literal (state := state_2565586) 4
    state_2565587 state_2565642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565587
  · exact cover_2565642
#print axioms cover_2565586

def state_2565585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
theorem cover_2565585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565585 := by
  apply coveredState_split_literal (state := state_2565585) 1
    state_2565586 state_2565661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565586
  · exact cover_2565661
#print axioms cover_2565585

def state_2565751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
theorem cover_2565751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565751 := by
  apply coveredState_split_literal (state := state_2565751) 0
    state_2565752 state_2565765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565752
  · exact cover_2565765
#print axioms cover_2565751

def state_2565750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
theorem cover_2565750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565750 := by
  apply coveredState_split_literal (state := state_2565750) 4
    state_2565751 state_2565820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565751
  · exact cover_2565820
#print axioms cover_2565750

def state_2565716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
theorem cover_2565716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565716 := by
  apply coveredState_split_literal (state := state_2565716) 1
    state_2565717 state_2565750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565717
  · exact cover_2565750
#print axioms cover_2565716

def state_2565584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
theorem cover_2565584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565584 := by
  apply coveredState_split_literal (state := state_2565584) 2
    state_2565585 state_2565716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565585
  · exact cover_2565716
#print axioms cover_2565584

def state_2565841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_2565841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565841 := by
  apply coveredState_split_literal (state := state_2565841) 4
    state_2565842 state_2565873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565842
  · exact cover_2565873
#print axioms cover_2565841

def state_2565840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_2565840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565840 := by
  apply coveredState_split_literal (state := state_2565840) 1
    state_2565841 state_2565936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565841
  · exact cover_2565936
#print axioms cover_2565840

def state_2565839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
theorem cover_2565839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565839 := by
  apply coveredState_split_literal (state := state_2565839) 2
    state_2565840 state_2565967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565840
  · exact cover_2565967
#print axioms cover_2565839
end Mub6.Numerical.CircleFullD0.Forest
