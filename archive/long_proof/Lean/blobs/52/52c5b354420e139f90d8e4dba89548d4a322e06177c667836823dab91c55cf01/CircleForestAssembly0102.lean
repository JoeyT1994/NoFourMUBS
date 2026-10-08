import CircleFullInterface
import CircleForestAssembly0101
import CircleForestChunk0405
import CircleForestChunk0407
import CircleForestChunk0408
import CircleForestChunk0409
import CircleForestChunk0410
import CircleForestChunk0411
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_173309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
theorem cover_173309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173309 := by
  apply coveredState_split_literal (state := state_173309) 1
    state_173310 state_173329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173310
  · exact cover_173329
#print axioms cover_173309

def state_173305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
theorem cover_173305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173305 := by
  apply coveredState_split_literal (state := state_173305) 3
    state_173306 state_173309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173306
  · exact cover_173309
#print axioms cover_173305

def state_173105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_173105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173105 := by
  apply coveredState_split_literal (state := state_173105) 2
    state_173106 state_173305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173106
  · exact cover_173305
#print axioms cover_173105

def state_172915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_172915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172915 := by
  apply coveredState_split_literal (state := state_172915) 0
    state_172916 state_173105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172916
  · exact cover_173105
#print axioms cover_172915

def state_172865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_172865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172865 := by
  apply coveredState_split_literal (state := state_172865) 4
    state_172866 state_172915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172866
  · exact cover_172915
#print axioms cover_172865

def state_173634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
theorem cover_173634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173634 := by
  apply coveredState_split_literal (state := state_173634) 0
    state_173635 state_173680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173635
  · exact cover_173680
#print axioms cover_173634

def state_173633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
theorem cover_173633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173633 := by
  apply coveredState_split_literal (state := state_173633) 1
    state_173634 state_173705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173634
  · exact cover_173705
#print axioms cover_173633

def state_173611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
theorem cover_173611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173611 := by
  apply coveredState_split_literal (state := state_173611) 4
    state_173612 state_173633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173612
  · exact cover_173633
#print axioms cover_173611

def state_173579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
theorem cover_173579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173579 := by
  apply coveredState_split_literal (state := state_173579) 3
    state_173580 state_173611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173580
  · exact cover_173611
#print axioms cover_173579

def state_173782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 100) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
theorem cover_173782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173782 := by
  apply coveredState_split_literal (state := state_173782) 2
    state_173783 state_173842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173783
  · exact cover_173842
#print axioms cover_173782

def state_173756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
theorem cover_173756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173756 := by
  apply coveredState_split_literal (state := state_173756) 0
    state_173757 state_173782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173757
  · exact cover_173782
#print axioms cover_173756

def state_173755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
theorem cover_173755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173755 := by
  apply coveredState_split_literal (state := state_173755) 1
    state_173756 state_173867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173756
  · exact cover_173867
#print axioms cover_173755

def state_173735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 47)))
theorem cover_173735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173735 := by
  apply coveredState_split_literal (state := state_173735) 4
    state_173736 state_173755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173736
  · exact cover_173755
#print axioms cover_173735

def state_173733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 47)))
theorem cover_173733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173733 := by
  apply coveredState_split_literal (state := state_173733) 3
    state_173734 state_173735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173734
  · exact cover_173735
#print axioms cover_173733

def state_173732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
theorem cover_173732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173732 := by
  apply coveredState_split_literal (state := state_173732) 2
    state_173733 state_173882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173733
  · exact cover_173882
#print axioms cover_173732

def state_173731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
theorem cover_173731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173731 := by
  apply coveredState_split_literal (state := state_173731) 0
    state_173732 state_173883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173732
  · exact cover_173883
#print axioms cover_173731

def state_173730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
theorem cover_173730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173730 := by
  apply coveredState_split_literal (state := state_173730) 1
    state_173731 state_173936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173731
  · exact cover_173936
#print axioms cover_173730

def state_173720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
theorem cover_173720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173720 := by
  apply coveredState_split_literal (state := state_173720) 4
    state_173721 state_173730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173721
  · exact cover_173730
#print axioms cover_173720

def state_173718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
theorem cover_173718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173718 := by
  apply coveredState_split_literal (state := state_173718) 3
    state_173719 state_173720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173719
  · exact cover_173720
#print axioms cover_173718

def state_173578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_173578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173578 := by
  apply coveredState_split_literal (state := state_173578) 2
    state_173579 state_173718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173579
  · exact cover_173718
#print axioms cover_173578

def state_173526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_173526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173526 := by
  apply coveredState_split_literal (state := state_173526) 0
    state_173527 state_173578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173527
  · exact cover_173578
#print axioms cover_173526

def state_173512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_173512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173512 := by
  apply coveredState_split_literal (state := state_173512) 4
    state_173513 state_173526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173513
  · exact cover_173526
#print axioms cover_173512

def state_172864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_172864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172864 := by
  apply coveredState_split_literal (state := state_172864) 1
    state_172865 state_173512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172865
  · exact cover_173512
#print axioms cover_172864

def state_173961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
theorem cover_173961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173961 := by
  apply coveredState_split_literal (state := state_173961) 2
    state_173962 state_174005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173962
  · exact cover_174005
#print axioms cover_173961

def state_174034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 30 else 23)))
theorem cover_174034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174034 := by
  apply coveredState_split_literal (state := state_174034) 1
    state_174035 state_174060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174035
  · exact cover_174060
#print axioms cover_174034

def state_174033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 23)))
theorem cover_174033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174033 := by
  apply coveredState_split_literal (state := state_174033) 3
    state_174034 state_174121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174034
  · exact cover_174121
#print axioms cover_174033

def state_174216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 95)))
theorem cover_174216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174216 := by
  apply coveredState_split_literal (state := state_174216) 0
    state_174217 state_174242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174217
  · exact cover_174242
#print axioms cover_174216

def state_174208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 95)))
theorem cover_174208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174208 := by
  apply coveredState_split_literal (state := state_174208) 1
    state_174209 state_174216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174209
  · exact cover_174216
#print axioms cover_174208

def state_174168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 47)))
theorem cover_174168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174168 := by
  apply coveredState_split_literal (state := state_174168) 4
    state_174169 state_174208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174169
  · exact cover_174208
#print axioms cover_174168

def state_174167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 30 else 47)))
theorem cover_174167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174167 := by
  apply coveredState_split_literal (state := state_174167) 3
    state_174168 state_174299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174168
  · exact cover_174299
#print axioms cover_174167

def state_174166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
theorem cover_174166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174166 := by
  apply coveredState_split_literal (state := state_174166) 2
    state_174167 state_174328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174167
  · exact cover_174328
#print axioms cover_174166

def state_174165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
theorem cover_174165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174165 := by
  apply coveredState_split_literal (state := state_174165) 0
    state_174166 state_174361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174166
  · exact cover_174361
#print axioms cover_174165
end Mub6.Numerical.CircleFullPrototype.Forest
