import CircleFullInterface
import CircleForestAssembly0184
import CircleForestAssembly0185
import CircleForestChunk0690
import CircleForestChunk0692
import CircleForestChunk0696
import CircleForestChunk0697
import CircleForestChunk0698
import CircleForestChunk0699
import CircleForestChunk0700
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1468183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1468183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468183 := by
  apply coveredState_split_literal (state := state_1468183) 1
    state_1468184 state_1468347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468184
  · exact cover_1468347
#print axioms cover_1468183

def state_1468182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1468182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468182 := by
  apply coveredState_split_literal (state := state_1468182) 4
    state_1468183 state_1468356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468183
  · exact cover_1468356
#print axioms cover_1468182

def state_1468181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1468181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468181 := by
  apply coveredState_split_literal (state := state_1468181) 2
    state_1468182 state_1468359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468182
  · exact cover_1468359
#print axioms cover_1468181

def state_1468173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1468173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468173 := by
  apply coveredState_split_literal (state := state_1468173) 0
    state_1468174 state_1468181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468174
  · exact cover_1468181
#print axioms cover_1468173

def state_1468172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1468172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468172 := by
  apply coveredState_split_literal (state := state_1468172) 3
    state_1468173 state_1468402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468173
  · exact cover_1468402
#print axioms cover_1468172

def state_1468018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1468018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468018 := by
  apply coveredState_split_literal (state := state_1468018) 1
    state_1468019 state_1468172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468019
  · exact cover_1468172
#print axioms cover_1468018

def state_1468017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1468017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468017 := by
  apply coveredState_split_literal (state := state_1468017) 4
    state_1468018 state_1468443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468018
  · exact cover_1468443
#print axioms cover_1468017

def state_1468016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1468016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468016 := by
  apply coveredState_split_literal (state := state_1468016) 2
    state_1468017 state_1468444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468017
  · exact cover_1468444
#print axioms cover_1468016

def state_1468012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1468012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468012 := by
  apply coveredState_split_literal (state := state_1468012) 0
    state_1468013 state_1468016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468013
  · exact cover_1468016
#print axioms cover_1468012

def state_1468011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1468011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468011 := by
  apply coveredState_split_literal (state := state_1468011) 3
    state_1468012 state_1468479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468012
  · exact cover_1468479
#print axioms cover_1468011

def state_1468010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1468010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468010 := by
  apply coveredState_split_literal (state := state_1468010) 1
    state_1468011 state_1468498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468011
  · exact cover_1468498
#print axioms cover_1468010

def state_1467442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1467442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467442 := by
  apply coveredState_split_literal (state := state_1467442) 4
    state_1467443 state_1468010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467443
  · exact cover_1468010
#print axioms cover_1467442

def state_1467140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1467140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467140 := by
  apply coveredState_split_literal (state := state_1467140) 2
    state_1467141 state_1467442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467141
  · exact cover_1467442
#print axioms cover_1467140

def state_1467126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1467126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467126 := by
  apply coveredState_split_literal (state := state_1467126) 0
    state_1467127 state_1467140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467127
  · exact cover_1467140
#print axioms cover_1467126

def state_1467104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1467104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467104 := by
  apply coveredState_split_literal (state := state_1467104) 4
    state_1467105 state_1467126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467105
  · exact cover_1467126
#print axioms cover_1467104

def state_1467103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1467103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467103 := by
  apply coveredState_split_literal (state := state_1467103) 3
    state_1467104 state_1468551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467104
  · exact cover_1468551
#print axioms cover_1467103

def state_1467083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1467083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467083 := by
  apply coveredState_split_literal (state := state_1467083) 2
    state_1467084 state_1467103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467084
  · exact cover_1467103
#print axioms cover_1467083

def state_1466615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1466615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466615 := by
  apply coveredState_split_literal (state := state_1466615) 1
    state_1466616 state_1467083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466616
  · exact cover_1467083
#print axioms cover_1466615

def state_1466587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1466587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466587 := by
  apply coveredState_split_literal (state := state_1466587) 0
    state_1466588 state_1466615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466588
  · exact cover_1466615
#print axioms cover_1466587

def state_1468595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1468595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468595 := by
  apply coveredState_split_literal (state := state_1468595) 2
    state_1468596 state_1468643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468596
  · exact cover_1468643
#print axioms cover_1468595

def state_1468594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1468594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468594 := by
  apply coveredState_split_literal (state := state_1468594) 1
    state_1468595 state_1468670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468595
  · exact cover_1468670
#print axioms cover_1468594

def state_1468568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1468568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468568 := by
  apply coveredState_split_literal (state := state_1468568) 0
    state_1468569 state_1468594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468569
  · exact cover_1468594
#print axioms cover_1468568

def state_1466586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1466586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466586 := by
  apply coveredState_split_literal (state := state_1466586) 4
    state_1466587 state_1468568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466587
  · exact cover_1468568
#print axioms cover_1466586

def state_1468779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1468779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468779 := by
  apply coveredState_split_literal (state := state_1468779) 4
    state_1468780 state_1468829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468780
  · exact cover_1468829
#print axioms cover_1468779

def state_1468767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1468767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468767 := by
  apply coveredState_split_literal (state := state_1468767) 3
    state_1468768 state_1468779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468768
  · exact cover_1468779
#print axioms cover_1468767

def state_1468751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1468751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468751 := by
  apply coveredState_split_literal (state := state_1468751) 2
    state_1468752 state_1468767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468752
  · exact cover_1468767
#print axioms cover_1468751

def state_1468750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1468750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468750 := by
  apply coveredState_split_literal (state := state_1468750) 1
    state_1468751 state_1468844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468751
  · exact cover_1468844
#print axioms cover_1468750

def state_1468698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1468698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468698 := by
  apply coveredState_split_literal (state := state_1468698) 0
    state_1468699 state_1468750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468699
  · exact cover_1468750
#print axioms cover_1468698

def state_1468918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1468918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468918 := by
  apply coveredState_split_literal (state := state_1468918) 3
    state_1468919 state_1468938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468919
  · exact cover_1468938
#print axioms cover_1468918

def state_1468902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1468902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468902 := by
  apply coveredState_split_literal (state := state_1468902) 2
    state_1468903 state_1468918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468903
  · exact cover_1468918
#print axioms cover_1468902

def state_1468901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1468901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468901 := by
  apply coveredState_split_literal (state := state_1468901) 1
    state_1468902 state_1468987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468902
  · exact cover_1468987
#print axioms cover_1468901

def state_1468865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1468865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468865 := by
  apply coveredState_split_literal (state := state_1468865) 0
    state_1468866 state_1468901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468866
  · exact cover_1468901
#print axioms cover_1468865
end Mub6.Numerical.CircleFullD0.Forest
