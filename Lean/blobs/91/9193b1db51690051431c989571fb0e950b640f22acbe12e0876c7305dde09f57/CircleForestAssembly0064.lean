import CircleFullInterface
import CircleForestAssembly0061
import CircleForestAssembly0062
import CircleForestAssembly0063
import CircleForestChunk0254
import CircleForestChunk0255
import CircleForestChunk0256
import CircleForestChunk0257
import CircleForestChunk0258
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_136613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_136613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136613 := by
  apply coveredState_split_literal (state := state_136613) 1
    state_136614 state_136723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136614
  · exact cover_136723
#print axioms cover_136613

def state_136599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_136599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136599 := by
  apply coveredState_split_literal (state := state_136599) 0
    state_136600 state_136613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136600
  · exact cover_136613
#print axioms cover_136599

def state_136565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 13)))
theorem cover_136565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136565 := by
  apply coveredState_split_literal (state := state_136565) 4
    state_136566 state_136599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136566
  · exact cover_136599
#print axioms cover_136565

def state_136457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_136457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136457 := by
  apply coveredState_split_literal (state := state_136457) 3
    state_136458 state_136565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136458
  · exact cover_136565
#print axioms cover_136457

def state_136729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 13)))
theorem cover_136729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136729 := by
  apply coveredState_split_literal (state := state_136729) 4
    state_136730 state_136759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136730
  · exact cover_136759
#print axioms cover_136729

def state_136875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 27)))
theorem cover_136875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136875 := by
  apply coveredState_split_literal (state := state_136875) 4
    state_136876 state_136925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136876
  · exact cover_136925
#print axioms cover_136875

def state_136874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_136874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136874 := by
  apply coveredState_split_literal (state := state_136874) 3
    state_136875 state_136948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136875
  · exact cover_136948
#print axioms cover_136874

def state_136873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_136873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136873 := by
  apply coveredState_split_literal (state := state_136873) 2
    state_136874 state_136979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136874
  · exact cover_136979
#print axioms cover_136873

def state_136872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_136872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136872 := by
  apply coveredState_split_literal (state := state_136872) 1
    state_136873 state_136986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136873
  · exact cover_136986
#print axioms cover_136872

def state_136860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_136860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136860 := by
  apply coveredState_split_literal (state := state_136860) 0
    state_136861 state_136872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136861
  · exact cover_136872
#print axioms cover_136860

def state_136808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 13)))
theorem cover_136808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136808 := by
  apply coveredState_split_literal (state := state_136808) 4
    state_136809 state_136860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136809
  · exact cover_136860
#print axioms cover_136808

def state_136728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
theorem cover_136728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136728 := by
  apply coveredState_split_literal (state := state_136728) 3
    state_136729 state_136808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136729
  · exact cover_136808
#print axioms cover_136728

def state_136456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_136456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136456 := by
  apply coveredState_split_literal (state := state_136456) 2
    state_136457 state_136728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136457
  · exact cover_136728
#print axioms cover_136456

def state_134846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134846 := by
  apply coveredState_split_literal (state := state_134846) 1
    state_134847 state_136456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134847
  · exact cover_136456
#print axioms cover_134846

def state_134700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134700 := by
  apply coveredState_split_literal (state := state_134700) 0
    state_134701 state_134846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134701
  · exact cover_134846
#print axioms cover_134700

def state_134628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_134628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134628 := by
  apply coveredState_split_literal (state := state_134628) 4
    state_134629 state_134700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134629
  · exact cover_134700
#print axioms cover_134628

def state_134502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_134502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134502 := by
  apply coveredState_split_literal (state := state_134502) 3
    state_134503 state_134628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134503
  · exact cover_134628
#print axioms cover_134502

def state_134314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_134314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134314 := by
  apply coveredState_split_literal (state := state_134314) 2
    state_134315 state_134502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134315
  · exact cover_134502
#print axioms cover_134314

def state_133876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133876 := by
  apply coveredState_split_literal (state := state_133876) 1
    state_133877 state_134314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133877
  · exact cover_134314
#print axioms cover_133876

def state_133638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133638 := by
  apply coveredState_split_literal (state := state_133638) 0
    state_133639 state_133876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133639
  · exact cover_133876
#print axioms cover_133638

def state_137084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_137084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137084 := by
  apply coveredState_split_literal (state := state_137084) 1
    state_137085 state_137144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137085
  · exact cover_137144
#print axioms cover_137084

def state_137076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_137076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137076 := by
  apply coveredState_split_literal (state := state_137076) 0
    state_137077 state_137084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137077
  · exact cover_137084
#print axioms cover_137076

def state_137075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 7)))
theorem cover_137075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137075 := by
  apply coveredState_split_literal (state := state_137075) 4
    state_137076 state_137173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137076
  · exact cover_137173
#print axioms cover_137075

def state_137067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
theorem cover_137067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137067 := by
  apply coveredState_split_literal (state := state_137067) 3
    state_137068 state_137075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137068
  · exact cover_137075
#print axioms cover_137067

def state_137047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_137047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137047 := by
  apply coveredState_split_literal (state := state_137047) 2
    state_137048 state_137067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137048
  · exact cover_137067
#print axioms cover_137047

def state_137005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_137005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137005 := by
  apply coveredState_split_literal (state := state_137005) 1
    state_137006 state_137047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137006
  · exact cover_137047
#print axioms cover_137005

def state_136995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_136995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136995 := by
  apply coveredState_split_literal (state := state_136995) 0
    state_136996 state_137005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136996
  · exact cover_137005
#print axioms cover_136995

def state_133637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_133637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133637 := by
  apply coveredState_split_literal (state := state_133637) 4
    state_133638 state_136995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133638
  · exact cover_136995
#print axioms cover_133637

def state_137272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
theorem cover_137272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137272 := by
  apply coveredState_split_literal (state := state_137272) 1
    state_137273 state_137316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137273
  · exact cover_137316
#print axioms cover_137272

def state_137264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
theorem cover_137264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137264 := by
  apply coveredState_split_literal (state := state_137264) 0
    state_137265 state_137272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137265
  · exact cover_137272
#print axioms cover_137264

def state_137263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 13)))
theorem cover_137263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137263 := by
  apply coveredState_split_literal (state := state_137263) 3
    state_137264 state_137359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137264
  · exact cover_137359
#print axioms cover_137263

def state_137255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
theorem cover_137255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137255 := by
  apply coveredState_split_literal (state := state_137255) 4
    state_137256 state_137263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137256
  · exact cover_137263
#print axioms cover_137255
end Mub6.Numerical.CircleFullPrototype.Forest
