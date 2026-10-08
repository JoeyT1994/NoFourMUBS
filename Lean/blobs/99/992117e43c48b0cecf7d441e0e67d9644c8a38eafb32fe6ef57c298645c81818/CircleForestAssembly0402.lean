import CircleFullInterface
import CircleForestAssembly0401
import CircleForestChunk1564
import CircleForestChunk1565
import CircleForestChunk1566
import CircleForestChunk1567
import CircleForestChunk1568
import CircleForestChunk1569
import CircleForestChunk1570
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2248973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
theorem cover_2248973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248973 := by
  apply coveredState_split_literal (state := state_2248973) 2
    state_2248974 state_2249053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248974
  · exact cover_2249053
#print axioms cover_2248973

def state_2249066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
theorem cover_2249066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249066 := by
  apply coveredState_split_literal (state := state_2249066) 0
    state_2249067 state_2249114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249067
  · exact cover_2249114
#print axioms cover_2249066

def state_2249065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
theorem cover_2249065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249065 := by
  apply coveredState_split_literal (state := state_2249065) 4
    state_2249066 state_2249135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249066
  · exact cover_2249135
#print axioms cover_2249065

def state_2249057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
theorem cover_2249057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249057 := by
  apply coveredState_split_literal (state := state_2249057) 1
    state_2249058 state_2249065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249058
  · exact cover_2249065
#print axioms cover_2249057

def state_2249184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
theorem cover_2249184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249184 := by
  apply coveredState_split_literal (state := state_2249184) 4
    state_2249185 state_2249224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249185
  · exact cover_2249224
#print axioms cover_2249184

def state_2249180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
theorem cover_2249180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249180 := by
  apply coveredState_split_literal (state := state_2249180) 1
    state_2249181 state_2249184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249181
  · exact cover_2249184
#print axioms cover_2249180

def state_2249056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2249056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249056 := by
  apply coveredState_split_literal (state := state_2249056) 3
    state_2249057 state_2249180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249057
  · exact cover_2249180
#print axioms cover_2249056

def state_2249055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
theorem cover_2249055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249055 := by
  apply coveredState_split_literal (state := state_2249055) 0
    state_2249056 state_2249249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249056
  · exact cover_2249249
#print axioms cover_2249055

def state_2249054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
theorem cover_2249054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249054 := by
  apply coveredState_split_literal (state := state_2249054) 2
    state_2249055 state_2249256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249055
  · exact cover_2249256
#print axioms cover_2249054

def state_2248972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
theorem cover_2248972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248972 := by
  apply coveredState_split_literal (state := state_2248972) 4
    state_2248973 state_2249054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248973
  · exact cover_2249054
#print axioms cover_2248972

def state_2248846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2248846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248846 := by
  apply coveredState_split_literal (state := state_2248846) 3
    state_2248847 state_2248972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248847
  · exact cover_2248972
#print axioms cover_2248846

def state_2248832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2248832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248832 := by
  apply coveredState_split_literal (state := state_2248832) 1
    state_2248833 state_2248846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248833
  · exact cover_2248846
#print axioms cover_2248832

def state_2248582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2248582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248582 := by
  apply coveredState_split_literal (state := state_2248582) 0
    state_2248583 state_2248832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248583
  · exact cover_2248832
#print axioms cover_2248582

def state_2249271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249271 := by
  apply coveredState_split_literal (state := state_2249271) 3
    state_2249272 state_2249309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249272
  · exact cover_2249309
#print axioms cover_2249271

def state_2249417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
theorem cover_2249417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249417 := by
  apply coveredState_split_literal (state := state_2249417) 3
    state_2249418 state_2249441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249418
  · exact cover_2249441
#print axioms cover_2249417

def state_2249399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
theorem cover_2249399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249399 := by
  apply coveredState_split_literal (state := state_2249399) 1
    state_2249400 state_2249417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249400
  · exact cover_2249417
#print axioms cover_2249399

def state_2249359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
theorem cover_2249359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249359 := by
  apply coveredState_split_literal (state := state_2249359) 0
    state_2249360 state_2249399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249360
  · exact cover_2249399
#print axioms cover_2249359

def state_2249358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 13)))
theorem cover_2249358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249358 := by
  apply coveredState_split_literal (state := state_2249358) 4
    state_2249359 state_2249488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249359
  · exact cover_2249488
#print axioms cover_2249358

def state_2249633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
theorem cover_2249633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249633 := by
  apply coveredState_split_literal (state := state_2249633) 3
    state_2249634 state_2249665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249634
  · exact cover_2249665
#print axioms cover_2249633

def state_2249587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
theorem cover_2249587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249587 := by
  apply coveredState_split_literal (state := state_2249587) 0
    state_2249588 state_2249633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249588
  · exact cover_2249633
#print axioms cover_2249587

def state_2249571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 26)))
theorem cover_2249571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249571 := by
  apply coveredState_split_literal (state := state_2249571) 4
    state_2249572 state_2249587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249572
  · exact cover_2249587
#print axioms cover_2249571

def state_2249570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2249570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249570 := by
  apply coveredState_split_literal (state := state_2249570) 2
    state_2249571 state_2249702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249571
  · exact cover_2249702
#print axioms cover_2249570

def state_2249544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2249544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249544 := by
  apply coveredState_split_literal (state := state_2249544) 3
    state_2249545 state_2249570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249545
  · exact cover_2249570
#print axioms cover_2249544

def state_2249524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2249524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249524 := by
  apply coveredState_split_literal (state := state_2249524) 1
    state_2249525 state_2249544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249525
  · exact cover_2249544
#print axioms cover_2249524

def state_2249498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2249498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249498 := by
  apply coveredState_split_literal (state := state_2249498) 0
    state_2249499 state_2249524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249499
  · exact cover_2249524
#print axioms cover_2249498

def state_2249808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2249808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249808 := by
  apply coveredState_split_literal (state := state_2249808) 4
    state_2249809 state_2249862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249809
  · exact cover_2249862
#print axioms cover_2249808

def state_2249788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2249788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249788 := by
  apply coveredState_split_literal (state := state_2249788) 2
    state_2249789 state_2249808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249789
  · exact cover_2249808
#print axioms cover_2249788

def state_2249778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2249778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249778 := by
  apply coveredState_split_literal (state := state_2249778) 3
    state_2249779 state_2249788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249779
  · exact cover_2249788
#print axioms cover_2249778

def state_2249726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2249726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249726 := by
  apply coveredState_split_literal (state := state_2249726) 1
    state_2249727 state_2249778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249727
  · exact cover_2249778
#print axioms cover_2249726

def state_2250090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
theorem cover_2250090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250090 := by
  apply coveredState_split_literal (state := state_2250090) 4
    state_2250091 state_2250134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250091
  · exact cover_2250134
#print axioms cover_2250090

def state_2250241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 87 else (if j.val < 4 then 183 else 109)))
theorem cover_2250241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250241 := by
  apply coveredState_split_literal (state := state_2250241) 2
    state_2250242 state_2250291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250242
  · exact cover_2250291
#print axioms cover_2250241

def state_2250231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 183 else 109)))
theorem cover_2250231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250231 := by
  apply coveredState_split_literal (state := state_2250231) 1
    state_2250232 state_2250241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250232
  · exact cover_2250241
#print axioms cover_2250231
end Mub6.Numerical.CircleFullD0.Forest
