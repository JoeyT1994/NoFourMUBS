import D0FullInterface
import D0ForestAssembly0544
import D0ForestChunk2147
import D0ForestChunk2148
import D0ForestChunk2149
import D0ForestChunk2150
import D0ForestChunk2151
import D0ForestChunk2152
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2595699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2595699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595699 := by
  apply coveredState_split_literal (state := state_2595699) 1
    state_2595700 state_2596143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595700
  · exact cover_2596143
#print axioms cover_2595699

def state_2595617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2595617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595617 := by
  apply coveredState_split_literal (state := state_2595617) 0
    state_2595618 state_2595699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595618
  · exact cover_2595699
#print axioms cover_2595617

def state_2596185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2596185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596185 := by
  apply coveredState_split_literal (state := state_2596185) 1
    state_2596186 state_2596237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596186
  · exact cover_2596237
#print axioms cover_2596185

def state_2596262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 10)))
theorem cover_2596262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596262 := by
  apply coveredState_split_literal (state := state_2596262) 0
    state_2596263 state_2596324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596263
  · exact cover_2596324
#print axioms cover_2596262

def state_2596373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 10)))
theorem cover_2596373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596373 := by
  apply coveredState_split_literal (state := state_2596373) 0
    state_2596374 state_2596419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596374
  · exact cover_2596419
#print axioms cover_2596373

def state_2596261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 10)))
theorem cover_2596261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596261 := by
  apply coveredState_split_literal (state := state_2596261) 3
    state_2596262 state_2596373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596262
  · exact cover_2596373
#print axioms cover_2596261

def state_2596443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 10)))
theorem cover_2596443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596443 := by
  apply coveredState_split_literal (state := state_2596443) 0
    state_2596444 state_2596489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596444
  · exact cover_2596489
#print axioms cover_2596443

def state_2596442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 10)))
theorem cover_2596442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596442 := by
  apply coveredState_split_literal (state := state_2596442) 3
    state_2596443 state_2596512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596443
  · exact cover_2596512
#print axioms cover_2596442

def state_2596260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
theorem cover_2596260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596260 := by
  apply coveredState_split_literal (state := state_2596260) 2
    state_2596261 state_2596442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596261
  · exact cover_2596442
#print axioms cover_2596260

def state_2596259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 5)))
theorem cover_2596259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596259 := by
  apply coveredState_split_literal (state := state_2596259) 4
    state_2596260 state_2596575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596260
  · exact cover_2596575
#print axioms cover_2596259

def state_2596258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_2596258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596258 := by
  apply coveredState_split_literal (state := state_2596258) 3
    state_2596259 state_2596608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596259
  · exact cover_2596608
#print axioms cover_2596258

def state_2596257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2596257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596257 := by
  apply coveredState_split_literal (state := state_2596257) 2
    state_2596258 state_2596653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596258
  · exact cover_2596653
#print axioms cover_2596257

def state_2596707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_2596707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596707 := by
  apply coveredState_split_literal (state := state_2596707) 3
    state_2596708 state_2596751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596708
  · exact cover_2596751
#print axioms cover_2596707

def state_2596706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2596706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596706 := by
  apply coveredState_split_literal (state := state_2596706) 2
    state_2596707 state_2596780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596707
  · exact cover_2596780
#print axioms cover_2596706

def state_2596256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2596256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596256 := by
  apply coveredState_split_literal (state := state_2596256) 1
    state_2596257 state_2596706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596257
  · exact cover_2596706
#print axioms cover_2596256

def state_2596184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2596184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596184 := by
  apply coveredState_split_literal (state := state_2596184) 0
    state_2596185 state_2596256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596185
  · exact cover_2596256
#print axioms cover_2596184

def state_2595616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2595616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595616 := by
  apply coveredState_split_literal (state := state_2595616) 4
    state_2595617 state_2596184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595617
  · exact cover_2596184
#print axioms cover_2595616

def state_2595615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2595615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595615 := by
  apply coveredState_split_literal (state := state_2595615) 3
    state_2595616 state_2596803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595616
  · exact cover_2596803
#print axioms cover_2595615

def state_2595614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2595614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595614 := by
  apply coveredState_split_literal (state := state_2595614) 2
    state_2595615 state_2596818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595615
  · exact cover_2596818
#print axioms cover_2595614

def state_2593368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2593368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593368 := by
  apply coveredState_split_literal (state := state_2593368) 1
    state_2593369 state_2595614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593369
  · exact cover_2595614
#print axioms cover_2593368

def state_2596858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 5)))
theorem cover_2596858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596858 := by
  apply coveredState_split_literal (state := state_2596858) 4
    state_2596859 state_2596882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596859
  · exact cover_2596882
#print axioms cover_2596858

def state_2596857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_2596857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596857 := by
  apply coveredState_split_literal (state := state_2596857) 3
    state_2596858 state_2596923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596858
  · exact cover_2596923
#print axioms cover_2596857

def state_2596856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2596856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596856 := by
  apply coveredState_split_literal (state := state_2596856) 2
    state_2596857 state_2596926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596857
  · exact cover_2596926
#print axioms cover_2596856

def state_2596842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2596842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596842 := by
  apply coveredState_split_literal (state := state_2596842) 4
    state_2596843 state_2596856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596843
  · exact cover_2596856
#print axioms cover_2596842

def state_2596841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2596841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596841 := by
  apply coveredState_split_literal (state := state_2596841) 3
    state_2596842 state_2596989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596842
  · exact cover_2596989
#print axioms cover_2596841

def state_2596840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2596840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596840 := by
  apply coveredState_split_literal (state := state_2596840) 2
    state_2596841 state_2596992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2596841
  · exact cover_2596992
#print axioms cover_2596840

def state_2597053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_2597053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597053 := by
  apply coveredState_split_literal (state := state_2597053) 3
    state_2597054 state_2597085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597054
  · exact cover_2597085
#print axioms cover_2597053

def state_2597052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2597052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597052 := by
  apply coveredState_split_literal (state := state_2597052) 2
    state_2597053 state_2597132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597053
  · exact cover_2597132
#print axioms cover_2597052

def state_2597014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2597014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597014 := by
  apply coveredState_split_literal (state := state_2597014) 1
    state_2597015 state_2597052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597015
  · exact cover_2597052
#print axioms cover_2597014

def state_2597142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2597142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597142 := by
  apply coveredState_split_literal (state := state_2597142) 2
    state_2597143 state_2597204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597143
  · exact cover_2597204
#print axioms cover_2597142

def state_2597247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2597247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597247 := by
  apply coveredState_split_literal (state := state_2597247) 2
    state_2597248 state_2597287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597248
  · exact cover_2597287
#print axioms cover_2597247

def state_2597141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2597141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597141 := by
  apply coveredState_split_literal (state := state_2597141) 1
    state_2597142 state_2597247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597142
  · exact cover_2597247
#print axioms cover_2597141
end Mub6.Numerical.CircleFullD0.Forest
