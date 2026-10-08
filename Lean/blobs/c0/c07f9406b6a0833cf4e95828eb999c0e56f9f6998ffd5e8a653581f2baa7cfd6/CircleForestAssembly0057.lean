import CircleFullInterface
import CircleForestAssembly0054
import CircleForestAssembly0056
import CircleForestChunk0226
import CircleForestChunk0227
import CircleForestChunk0228
import CircleForestChunk0229
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_75523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_75523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75523 := by
  apply coveredState_split_literal (state := state_75523) 3
    state_75524 state_75659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75524
  · exact cover_75659
#print axioms cover_75523

def state_73137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_73137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73137 := by
  apply coveredState_split_literal (state := state_73137) 2
    state_73138 state_75523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73138
  · exact cover_75523
#print axioms cover_73137

def state_75707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_75707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75707 := by
  apply coveredState_split_literal (state := state_75707) 2
    state_75708 state_75739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75708
  · exact cover_75739
#print axioms cover_75707

def state_75706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_75706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75706 := by
  apply coveredState_split_literal (state := state_75706) 1
    state_75707 state_75784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75707
  · exact cover_75784
#print axioms cover_75706

def state_75705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_75705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75705 := by
  apply coveredState_split_literal (state := state_75705) 3
    state_75706 state_75789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75706
  · exact cover_75789
#print axioms cover_75705

def state_75685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_75685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75685 := by
  apply coveredState_split_literal (state := state_75685) 0
    state_75686 state_75705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75686
  · exact cover_75705
#print axioms cover_75685

def state_75684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_75684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75684 := by
  apply coveredState_split_literal (state := state_75684) 4
    state_75685 state_75816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75685
  · exact cover_75816
#print axioms cover_75684

def state_75683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_75683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75683 := by
  apply coveredState_split_literal (state := state_75683) 3
    state_75684 state_75817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75684
  · exact cover_75817
#print axioms cover_75683

def state_75830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_75830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75830 := by
  apply coveredState_split_literal (state := state_75830) 3
    state_75831 state_75886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75831
  · exact cover_75886
#print axioms cover_75830

def state_75682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_75682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75682 := by
  apply coveredState_split_literal (state := state_75682) 2
    state_75683 state_75830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75683
  · exact cover_75830
#print axioms cover_75682

def state_73136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_73136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73136 := by
  apply coveredState_split_literal (state := state_73136) 1
    state_73137 state_75682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73137
  · exact cover_75682
#print axioms cover_73136

def state_75921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_75921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75921 := by
  apply coveredState_split_literal (state := state_75921) 2
    state_75922 state_75971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75922
  · exact cover_75971
#print axioms cover_75921

def state_75920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_75920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75920 := by
  apply coveredState_split_literal (state := state_75920) 0
    state_75921 state_75996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75921
  · exact cover_75996
#print axioms cover_75920

def state_75919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_75919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75919 := by
  apply coveredState_split_literal (state := state_75919) 3
    state_75920 state_76001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75920
  · exact cover_76001
#print axioms cover_75919

def state_75901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_75901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75901 := by
  apply coveredState_split_literal (state := state_75901) 1
    state_75902 state_75919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75902
  · exact cover_75919
#print axioms cover_75901

def state_75900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_75900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75900 := by
  apply coveredState_split_literal (state := state_75900) 4
    state_75901 state_76026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75901
  · exact cover_76026
#print axioms cover_75900

def state_75899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_75899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75899 := by
  apply coveredState_split_literal (state := state_75899) 3
    state_75900 state_76047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75900
  · exact cover_76047
#print axioms cover_75899

def state_75898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_75898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75898 := by
  apply coveredState_split_literal (state := state_75898) 2
    state_75899 state_76060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75899
  · exact cover_76060
#print axioms cover_75898

def state_76148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
theorem cover_76148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76148 := by
  apply coveredState_split_literal (state := state_76148) 2
    state_76149 state_76162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76149
  · exact cover_76162
#print axioms cover_76148

def state_76147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
theorem cover_76147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76147 := by
  apply coveredState_split_literal (state := state_76147) 1
    state_76148 state_76219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76148
  · exact cover_76219
#print axioms cover_76147

def state_76146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
theorem cover_76146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76146 := by
  apply coveredState_split_literal (state := state_76146) 0
    state_76147 state_76230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76147
  · exact cover_76230
#print axioms cover_76146

def state_76106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_76106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76106 := by
  apply coveredState_split_literal (state := state_76106) 3
    state_76107 state_76146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76107
  · exact cover_76146
#print axioms cover_76106

def state_76105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_76105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76105 := by
  apply coveredState_split_literal (state := state_76105) 4
    state_76106 state_76245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76106
  · exact cover_76245
#print axioms cover_76105

def state_76104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_76104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76104 := by
  apply coveredState_split_literal (state := state_76104) 3
    state_76105 state_76276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76105
  · exact cover_76276
#print axioms cover_76104

def state_76326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
theorem cover_76326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76326 := by
  apply coveredState_split_literal (state := state_76326) 4
    state_76327 state_76360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76327
  · exact cover_76360
#print axioms cover_76326

def state_76419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 11)))
theorem cover_76419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76419 := by
  apply coveredState_split_literal (state := state_76419) 2
    state_76420 state_76469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76420
  · exact cover_76469
#print axioms cover_76419

def state_76413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
theorem cover_76413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76413 := by
  apply coveredState_split_literal (state := state_76413) 4
    state_76414 state_76419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76414
  · exact cover_76419
#print axioms cover_76413

def state_76325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_76325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76325 := by
  apply coveredState_split_literal (state := state_76325) 3
    state_76326 state_76413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76326
  · exact cover_76413
#print axioms cover_76325

def state_76103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_76103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76103 := by
  apply coveredState_split_literal (state := state_76103) 2
    state_76104 state_76325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76104
  · exact cover_76325
#print axioms cover_76103

def state_75897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_75897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75897 := by
  apply coveredState_split_literal (state := state_75897) 1
    state_75898 state_76103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_75898
  · exact cover_76103
#print axioms cover_75897

def state_73135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_73135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73135 := by
  apply coveredState_split_literal (state := state_73135) 0
    state_73136 state_75897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73136
  · exact cover_75897
#print axioms cover_73135

def state_72953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_72953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72953 := by
  apply coveredState_split_literal (state := state_72953) 4
    state_72954 state_73135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72954
  · exact cover_73135
#print axioms cover_72953
end Mub6.Numerical.CircleFullPrototype.Forest
