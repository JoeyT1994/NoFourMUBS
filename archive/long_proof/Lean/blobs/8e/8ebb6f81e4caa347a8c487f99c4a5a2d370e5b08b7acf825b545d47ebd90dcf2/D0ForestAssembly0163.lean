import D0FullInterface
import D0ForestAssembly0162
import D0ForestChunk0621
import D0ForestChunk0622
import D0ForestChunk0623
import D0ForestChunk0624
import D0ForestChunk0625
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1338014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1338014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338014 := by
  apply coveredState_split_literal (state := state_1338014) 4
    state_1338015 state_1338132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338015
  · exact cover_1338132
#print axioms cover_1338014

def state_1338013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1338013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338013 := by
  apply coveredState_split_literal (state := state_1338013) 2
    state_1338014 state_1338153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338014
  · exact cover_1338153
#print axioms cover_1338013

def state_1338012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1338012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338012 := by
  apply coveredState_split_literal (state := state_1338012) 1
    state_1338013 state_1338166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338013
  · exact cover_1338166
#print axioms cover_1338012

def state_1338011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1338011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338011 := by
  apply coveredState_split_literal (state := state_1338011) 3
    state_1338012 state_1338181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338012
  · exact cover_1338181
#print axioms cover_1338011

def state_1338249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 178)))
theorem cover_1338249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338249 := by
  apply coveredState_split_literal (state := state_1338249) 2
    state_1338250 state_1338307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338250
  · exact cover_1338307
#print axioms cover_1338249

def state_1338248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 89)))
theorem cover_1338248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338248 := by
  apply coveredState_split_literal (state := state_1338248) 4
    state_1338249 state_1338332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338249
  · exact cover_1338332
#print axioms cover_1338248

def state_1338362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 178)))
theorem cover_1338362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338362 := by
  apply coveredState_split_literal (state := state_1338362) 2
    state_1338363 state_1338396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338363
  · exact cover_1338396
#print axioms cover_1338362

def state_1338361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 89)))
theorem cover_1338361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338361 := by
  apply coveredState_split_literal (state := state_1338361) 4
    state_1338362 state_1338429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338362
  · exact cover_1338429
#print axioms cover_1338361

def state_1338247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 89)))
theorem cover_1338247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338247 := by
  apply coveredState_split_literal (state := state_1338247) 1
    state_1338248 state_1338361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338248
  · exact cover_1338361
#print axioms cover_1338247

def state_1338233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 89)))
theorem cover_1338233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338233 := by
  apply coveredState_split_literal (state := state_1338233) 3
    state_1338234 state_1338247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338234
  · exact cover_1338247
#print axioms cover_1338233

def state_1338232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 89)))
theorem cover_1338232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338232 := by
  apply coveredState_split_literal (state := state_1338232) 0
    state_1338233 state_1338476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338233
  · exact cover_1338476
#print axioms cover_1338232

def state_1338190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 44)))
theorem cover_1338190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338190 := by
  apply coveredState_split_literal (state := state_1338190) 4
    state_1338191 state_1338232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338191
  · exact cover_1338232
#print axioms cover_1338190

def state_1338189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1338189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338189 := by
  apply coveredState_split_literal (state := state_1338189) 2
    state_1338190 state_1338487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338190
  · exact cover_1338487
#print axioms cover_1338189

def state_1338188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1338188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338188 := by
  apply coveredState_split_literal (state := state_1338188) 1
    state_1338189 state_1338516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338189
  · exact cover_1338516
#print axioms cover_1338188

def state_1338580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 89)))
theorem cover_1338580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338580 := by
  apply coveredState_split_literal (state := state_1338580) 4
    state_1338581 state_1338610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338581
  · exact cover_1338610
#print axioms cover_1338580

def state_1338687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 179)))
theorem cover_1338687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338687 := by
  apply coveredState_split_literal (state := state_1338687) 2
    state_1338688 state_1338735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338688
  · exact cover_1338735
#print axioms cover_1338687

def state_1338653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 89)))
theorem cover_1338653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338653 := by
  apply coveredState_split_literal (state := state_1338653) 4
    state_1338654 state_1338687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338654
  · exact cover_1338687
#print axioms cover_1338653

def state_1338579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 89)))
theorem cover_1338579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338579 := by
  apply coveredState_split_literal (state := state_1338579) 1
    state_1338580 state_1338653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338580
  · exact cover_1338653
#print axioms cover_1338579

def state_1338578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 89)))
theorem cover_1338578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338578 := by
  apply coveredState_split_literal (state := state_1338578) 3
    state_1338579 state_1338782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338579
  · exact cover_1338782
#print axioms cover_1338578

def state_1338577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 89)))
theorem cover_1338577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338577 := by
  apply coveredState_split_literal (state := state_1338577) 0
    state_1338578 state_1338809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338578
  · exact cover_1338809
#print axioms cover_1338577

def state_1338557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 44)))
theorem cover_1338557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338557 := by
  apply coveredState_split_literal (state := state_1338557) 4
    state_1338558 state_1338577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338558
  · exact cover_1338577
#print axioms cover_1338557

def state_1338556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1338556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338556 := by
  apply coveredState_split_literal (state := state_1338556) 2
    state_1338557 state_1338850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338557
  · exact cover_1338850
#print axioms cover_1338556

def state_1338874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 89)))
theorem cover_1338874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338874 := by
  apply coveredState_split_literal (state := state_1338874) 0
    state_1338875 state_1338926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338875
  · exact cover_1338926
#print axioms cover_1338874

def state_1338872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 44)))
theorem cover_1338872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338872 := by
  apply coveredState_split_literal (state := state_1338872) 4
    state_1338873 state_1338874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338873
  · exact cover_1338874
#print axioms cover_1338872

def state_1338871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1338871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338871 := by
  apply coveredState_split_literal (state := state_1338871) 2
    state_1338872 state_1338941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338872
  · exact cover_1338941
#print axioms cover_1338871

def state_1338555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1338555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338555 := by
  apply coveredState_split_literal (state := state_1338555) 1
    state_1338556 state_1338871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338556
  · exact cover_1338871
#print axioms cover_1338555

def state_1338187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1338187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338187 := by
  apply coveredState_split_literal (state := state_1338187) 3
    state_1338188 state_1338555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338188
  · exact cover_1338555
#print axioms cover_1338187

def state_1338186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1338186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338186 := by
  apply coveredState_split_literal (state := state_1338186) 0
    state_1338187 state_1338956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338187
  · exact cover_1338956
#print axioms cover_1338186

def state_1339002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 90)))
theorem cover_1339002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339002 := by
  apply coveredState_split_literal (state := state_1339002) 3
    state_1339003 state_1339050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339003
  · exact cover_1339050
#print axioms cover_1339002

def state_1339001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 90)))
theorem cover_1339001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339001 := by
  apply coveredState_split_literal (state := state_1339001) 0
    state_1339002 state_1339081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339002
  · exact cover_1339081
#print axioms cover_1339001

def state_1339000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 90)))
theorem cover_1339000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339000 := by
  apply coveredState_split_literal (state := state_1339000) 2
    state_1339001 state_1339130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339001
  · exact cover_1339130
#print axioms cover_1339000

def state_1338999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 45)))
theorem cover_1338999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338999 := by
  apply coveredState_split_literal (state := state_1338999) 4
    state_1339000 state_1339135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339000
  · exact cover_1339135
#print axioms cover_1338999
end Mub6.Numerical.CircleFullD0.Forest
