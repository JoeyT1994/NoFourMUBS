import CircleFullInterface
import CircleForestAssembly0014
import CircleForestAssembly0016
import CircleForestAssembly0024
import CircleForestChunk0098
import CircleForestChunk0099
import CircleForestChunk0100
import CircleForestChunk0101
import CircleForestChunk0102
import CircleForestChunk0103
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_23472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_23472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23472 := by
  apply coveredState_split_literal (state := state_23472) 1
    state_23473 state_23536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23473
  · exact cover_23536
#print axioms cover_23472

def state_23617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_23617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23617 := by
  apply coveredState_split_literal (state := state_23617) 4
    state_23618 state_23659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23618
  · exact cover_23659
#print axioms cover_23617

def state_23616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_23616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23616 := by
  apply coveredState_split_literal (state := state_23616) 3
    state_23617 state_23718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23617
  · exact cover_23718
#print axioms cover_23616

def state_23615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_23615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23615 := by
  apply coveredState_split_literal (state := state_23615) 2
    state_23616 state_23735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23616
  · exact cover_23735
#print axioms cover_23615

def state_23585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_23585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23585 := by
  apply coveredState_split_literal (state := state_23585) 1
    state_23586 state_23615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23586
  · exact cover_23615
#print axioms cover_23585

def state_23471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_23471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23471 := by
  apply coveredState_split_literal (state := state_23471) 0
    state_23472 state_23585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23472
  · exact cover_23585
#print axioms cover_23471

def state_15943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_15943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15943 := by
  apply coveredState_split_literal (state := state_15943) 4
    state_15944 state_23471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15944
  · exact cover_23471
#print axioms cover_15943

def state_23766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_23766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23766 := by
  apply coveredState_split_literal (state := state_23766) 1
    state_23767 state_23812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23767
  · exact cover_23812
#print axioms cover_23766

def state_23936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_23936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23936 := by
  apply coveredState_split_literal (state := state_23936) 4
    state_23937 state_23998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23937
  · exact cover_23998
#print axioms cover_23936

def state_23886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_23886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23886 := by
  apply coveredState_split_literal (state := state_23886) 3
    state_23887 state_23936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23887
  · exact cover_23936
#print axioms cover_23886

def state_23868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_23868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23868 := by
  apply coveredState_split_literal (state := state_23868) 2
    state_23869 state_23886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23869
  · exact cover_23886
#print axioms cover_23868

def state_23867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_23867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23867 := by
  apply coveredState_split_literal (state := state_23867) 1
    state_23868 state_24007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23868
  · exact cover_24007
#print axioms cover_23867

def state_23765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_23765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23765 := by
  apply coveredState_split_literal (state := state_23765) 0
    state_23766 state_23867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23766
  · exact cover_23867
#print axioms cover_23765

def state_24046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_24046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24046 := by
  apply coveredState_split_literal (state := state_24046) 2
    state_24047 state_24092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_24047
  · exact cover_24092
#print axioms cover_24046

def state_24045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_24045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24045 := by
  apply coveredState_split_literal (state := state_24045) 1
    state_24046 state_24115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_24046
  · exact cover_24115
#print axioms cover_24045

def state_24154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_24154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24154 := by
  apply coveredState_split_literal (state := state_24154) 1
    state_24155 state_24182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_24155
  · exact cover_24182
#print axioms cover_24154

def state_24044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_24044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24044 := by
  apply coveredState_split_literal (state := state_24044) 0
    state_24045 state_24154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_24045
  · exact cover_24154
#print axioms cover_24044

def state_23764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_23764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23764 := by
  apply coveredState_split_literal (state := state_23764) 4
    state_23765 state_24044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23765
  · exact cover_24044
#print axioms cover_23764

def state_15942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_15942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15942 := by
  apply coveredState_split_literal (state := state_15942) 3
    state_15943 state_23764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15943
  · exact cover_23764
#print axioms cover_15942

def state_15244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_15244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15244 := by
  apply coveredState_split_literal (state := state_15244) 2
    state_15245 state_15942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15245
  · exact cover_15942
#print axioms cover_15244

def state_13666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_13666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13666 := by
  apply coveredState_split_literal (state := state_13666) 1
    state_13667 state_15244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13667
  · exact cover_15244
#print axioms cover_13666

def state_2932 : State := rootState
theorem cover_2932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2932 := by
  apply coveredState_split_literal (state := state_2932) 0
    state_2933 state_13666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2933
  · exact cover_13666
#print axioms cover_2932

def state_45573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
theorem cover_45573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45573 := by
  apply coveredState_split_literal (state := state_45573) 3
    state_45574 state_45603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45574
  · exact cover_45603
#print axioms cover_45573

def state_45569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 4)))
theorem cover_45569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45569 := by
  apply coveredState_split_literal (state := state_45569) 4
    state_45570 state_45573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45570
  · exact cover_45573
#print axioms cover_45569

def state_45563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
theorem cover_45563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45563 := by
  apply coveredState_split_literal (state := state_45563) 2
    state_45564 state_45569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45564
  · exact cover_45569
#print axioms cover_45563

def state_45562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
theorem cover_45562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45562 := by
  apply coveredState_split_literal (state := state_45562) 1
    state_45563 state_45640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45563
  · exact cover_45640
#print axioms cover_45562

def state_45711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
theorem cover_45711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45711 := by
  apply coveredState_split_literal (state := state_45711) 2
    state_45712 state_45717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45712
  · exact cover_45717
#print axioms cover_45711

def state_45677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
theorem cover_45677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45677 := by
  apply coveredState_split_literal (state := state_45677) 1
    state_45678 state_45711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45678
  · exact cover_45711
#print axioms cover_45677

def state_45561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
theorem cover_45561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45561 := by
  apply coveredState_split_literal (state := state_45561) 0
    state_45562 state_45677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45562
  · exact cover_45677
#print axioms cover_45561

def state_45513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_45513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45513 := by
  apply coveredState_split_literal (state := state_45513) 3
    state_45514 state_45561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45514
  · exact cover_45561
#print axioms cover_45513

def state_45908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 20)))
theorem cover_45908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45908 := by
  apply coveredState_split_literal (state := state_45908) 0
    state_45909 state_45954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45909
  · exact cover_45954
#print axioms cover_45908

def state_45907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 10)))
theorem cover_45907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45907 := by
  apply coveredState_split_literal (state := state_45907) 4
    state_45908 state_46011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45908
  · exact cover_46011
#print axioms cover_45907
end Mub6.Numerical.CircleFullPrototype.Forest
