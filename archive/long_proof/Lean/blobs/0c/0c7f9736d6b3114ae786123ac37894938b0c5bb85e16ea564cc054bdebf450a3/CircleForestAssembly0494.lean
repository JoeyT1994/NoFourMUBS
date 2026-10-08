import CircleFullInterface
import CircleForestAssembly0488
import CircleForestAssembly0490
import CircleForestAssembly0493
import CircleForestChunk1940
import CircleForestChunk1941
import CircleForestChunk1942
import CircleForestChunk1943
import CircleForestChunk1944
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2335747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2335747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335747 := by
  apply coveredState_split_literal (state := state_2335747) 2
    state_2335748 state_2338081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335748
  · exact cover_2338081
#print axioms cover_2335747

def state_2334075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2334075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334075 := by
  apply coveredState_split_literal (state := state_2334075) 1
    state_2334076 state_2335747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334076
  · exact cover_2335747
#print axioms cover_2334075

def state_2240851 : State := rootState
theorem cover_2240851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240851 := by
  apply coveredState_split_literal (state := state_2240851) 0
    state_2240852 state_2334075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240852
  · exact cover_2334075
#print axioms cover_2240851

def state_2546319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546319 := by
  apply coveredState_split_literal (state := state_2546319) 2
    state_2546320 state_2546361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546320
  · exact cover_2546361
#print axioms cover_2546319

def state_2546297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546297 := by
  apply coveredState_split_literal (state := state_2546297) 1
    state_2546298 state_2546319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546298
  · exact cover_2546319
#print axioms cover_2546297

def state_2546412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2546412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546412 := by
  apply coveredState_split_literal (state := state_2546412) 0
    state_2546413 state_2546428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546413
  · exact cover_2546428
#print axioms cover_2546412

def state_2546411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2546411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546411 := by
  apply coveredState_split_literal (state := state_2546411) 4
    state_2546412 state_2546479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546412
  · exact cover_2546479
#print axioms cover_2546411

def state_2546409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2546409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546409 := by
  apply coveredState_split_literal (state := state_2546409) 3
    state_2546410 state_2546411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546410
  · exact cover_2546411
#print axioms cover_2546409

def state_2546399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546399 := by
  apply coveredState_split_literal (state := state_2546399) 2
    state_2546400 state_2546409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546400
  · exact cover_2546409
#print axioms cover_2546399

def state_2546494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546494 := by
  apply coveredState_split_literal (state := state_2546494) 4
    state_2546495 state_2546558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546495
  · exact cover_2546558
#print axioms cover_2546494

def state_2546617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
theorem cover_2546617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546617 := by
  apply coveredState_split_literal (state := state_2546617) 1
    state_2546618 state_2546681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546618
  · exact cover_2546681
#print axioms cover_2546617

def state_2546616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 11)))
theorem cover_2546616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546616 := by
  apply coveredState_split_literal (state := state_2546616) 3
    state_2546617 state_2546682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546617
  · exact cover_2546682
#print axioms cover_2546616

def state_2546615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 11)))
theorem cover_2546615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546615 := by
  apply coveredState_split_literal (state := state_2546615) 2
    state_2546616 state_2546691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546616
  · exact cover_2546691
#print axioms cover_2546615

def state_2546585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546585 := by
  apply coveredState_split_literal (state := state_2546585) 4
    state_2546586 state_2546615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546586
  · exact cover_2546615
#print axioms cover_2546585

def state_2546493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546493 := by
  apply coveredState_split_literal (state := state_2546493) 1
    state_2546494 state_2546585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546494
  · exact cover_2546585
#print axioms cover_2546493

def state_2546731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
theorem cover_2546731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546731 := by
  apply coveredState_split_literal (state := state_2546731) 0
    state_2546732 state_2546793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546732
  · exact cover_2546793
#print axioms cover_2546731

def state_2546730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 11)))
theorem cover_2546730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546730 := by
  apply coveredState_split_literal (state := state_2546730) 3
    state_2546731 state_2546802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546731
  · exact cover_2546802
#print axioms cover_2546730

def state_2546729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 11)))
theorem cover_2546729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546729 := by
  apply coveredState_split_literal (state := state_2546729) 2
    state_2546730 state_2546807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546730
  · exact cover_2546807
#print axioms cover_2546729

def state_2546713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546713 := by
  apply coveredState_split_literal (state := state_2546713) 4
    state_2546714 state_2546729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546714
  · exact cover_2546729
#print axioms cover_2546713

def state_2546815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 10)))
theorem cover_2546815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546815 := by
  apply coveredState_split_literal (state := state_2546815) 0
    state_2546816 state_2546877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546816
  · exact cover_2546877
#print axioms cover_2546815

def state_2546814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 10)))
theorem cover_2546814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546814 := by
  apply coveredState_split_literal (state := state_2546814) 3
    state_2546815 state_2546884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546815
  · exact cover_2546884
#print axioms cover_2546814

def state_2546813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 10)))
theorem cover_2546813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546813 := by
  apply coveredState_split_literal (state := state_2546813) 2
    state_2546814 state_2546887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546814
  · exact cover_2546887
#print axioms cover_2546813

def state_2546908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
theorem cover_2546908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546908 := by
  apply coveredState_split_literal (state := state_2546908) 4
    state_2546909 state_2546968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546909
  · exact cover_2546968
#print axioms cover_2546908

def state_2546907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
theorem cover_2546907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546907 := by
  apply coveredState_split_literal (state := state_2546907) 1
    state_2546908 state_2546995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546908
  · exact cover_2546995
#print axioms cover_2546907

def state_2547024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
theorem cover_2547024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547024 := by
  apply coveredState_split_literal (state := state_2547024) 1
    state_2547025 state_2547072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547025
  · exact cover_2547072
#print axioms cover_2547024

def state_2546906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 32 else 44)))
theorem cover_2546906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546906 := by
  apply coveredState_split_literal (state := state_2546906) 0
    state_2546907 state_2547024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546907
  · exact cover_2547024
#print axioms cover_2546906

def state_2546905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 16 else 44)))
theorem cover_2546905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546905 := by
  apply coveredState_split_literal (state := state_2546905) 3
    state_2546906 state_2547121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546906
  · exact cover_2547121
#print axioms cover_2546905

def state_2546904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 44)))
theorem cover_2546904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546904 := by
  apply coveredState_split_literal (state := state_2546904) 2
    state_2546905 state_2547160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546905
  · exact cover_2547160
#print axioms cover_2546904

def state_2546903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
theorem cover_2546903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546903 := by
  apply coveredState_split_literal (state := state_2546903) 4
    state_2546904 state_2547219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546904
  · exact cover_2547219
#print axioms cover_2546903

def state_2546902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
theorem cover_2546902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546902 := by
  apply coveredState_split_literal (state := state_2546902) 1
    state_2546903 state_2547248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546903
  · exact cover_2547248
#print axioms cover_2546902

def state_2547279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
theorem cover_2547279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547279 := by
  apply coveredState_split_literal (state := state_2547279) 1
    state_2547280 state_2547333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547280
  · exact cover_2547333
#print axioms cover_2547279

def state_2546901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
theorem cover_2546901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546901 := by
  apply coveredState_split_literal (state := state_2546901) 0
    state_2546902 state_2547279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546902
  · exact cover_2547279
#print axioms cover_2546901
end Mub6.Numerical.CircleFullD0.Forest
